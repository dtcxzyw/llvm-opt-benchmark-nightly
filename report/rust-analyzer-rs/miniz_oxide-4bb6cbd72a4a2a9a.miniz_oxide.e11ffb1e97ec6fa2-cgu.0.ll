Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/miniz_oxide-4bb6cbd72a4a2a9a.miniz_oxide.e11ffb1e97ec6fa2-cgu.0?download=true
inline.NumInlined: 178
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide14optimize_table:bb.a
  store i16 %i.l, ptr %i.kt, align 2
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 2
  store i16 %i.ks, ptr %i.ku, align 2
  %i.kv = add nuw nsw i64 %.sroa.04.0157, 1
  br label %bb.az

bb.bc:                                            ; preds = %bb.ba
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.04.0157, i64 noundef 288, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #22
  unreachable

.lr.ph169.preheader:                              ; preds = %bb.a
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 3456
  %i.kx = getelementptr inbounds nuw [288 x i8], ptr %i.kw, i64 %1 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 %2
  br label %.lr.ph169

.lr.ph169:                                        ; preds = %.lr.ph169.preheader, %bb.bd
  %.sroa.0.0167 = phi ptr [ %i.lc, %bb.bd ], [ %i.kx, %.lr.ph169.preheader ] ; 2 uses
  %i.kz = load i8, ptr %.sroa.0.0167, align 1, !noundef !4 ; 2 uses
  %i.la = zext i8 %i.kz to i64                    ; 2 uses
  %i.lb = icmp ult i8 %i.kz, 33
  br i1 %i.lb, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.lr.ph169
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.0.0167, i64 1 ; 2 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.la ; 2 uses
  %i.le = load i32, ptr %i.ld, align 4, !noundef !4
  %i.lf = add i32 %i.le, 1
  store i32 %i.lf, ptr %i.ld, align 4
  %i.lg = icmp eq ptr %i.lc, %i.ky
  br i1 %i.lg, label %.loopexit, label %.lr.ph169

bb.be:                                            ; preds = %.lr.ph169
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.la, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #22
  unreachable

.unr-lcssa:                                       ; preds = %bb.bk
  %lcmp.mod353.not = icmp eq i64 %xtraiter351, 0
  br i1 %lcmp.mod353.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa
  %lcmp.mod354 = icmp ne i64 %xtraiter351, 0
  call void @llvm.assume(i1 %lcmp.mod354)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %.epil.preheader
  %.sroa.029.0171.epil = phi i32 [ %i.nh, %.epil.preheader ], [ %i.lm, %bb.bf ]
  %.sroa.0.095170.epil = phi i64 [ %i.nc, %.epil.preheader ], [ %i.lh, %bb.bf ] ; 3 uses
  %epil.iter352 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter352.next, %bb.bf ]
  %i.lh = add nuw nsw i64 %.sroa.0.095170.epil, 1
  %i.li = getelementptr [4 x i8], ptr %i.g, i64 %.sroa.0.095170.epil
  %i.lj = getelementptr i8, ptr %i.li, i64 -4
  %i.lk = load i32, ptr %i.lj, align 4, !noundef !4
  %i.ll = add i32 %i.lk, %.sroa.029.0171.epil
  %i.lm = shl i32 %i.ll, 1                        ; 2 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.0.095170.epil
  store i32 %i.lm, ptr %i.ln, align 4
  %epil.iter352.next = add i64 %epil.iter352, 1   ; 2 uses
  %epil.iter352.cmp.not = icmp eq i64 %epil.iter352.next, %xtraiter351
  br i1 %epil.iter352.cmp.not, label %.epilog-lcssa, label %bb.bf, !llvm.loop !75

.epilog-lcssa:                                    ; preds = %bb.bf, %.unr-lcssa
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 3456
  %i.lp = getelementptr inbounds nuw [288 x i8], ptr %i.lo, i64 %1
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 1728
  %i.lr = getelementptr inbounds nuw [576 x i8], ptr %i.lq, i64 %1
  br label %bb.bg

bb.bg:                                            ; preds = %.backedge, %.epilog-lcssa
  %.sroa.15.0175 = phi i64 [ %2, %.epilog-lcssa ], [ %i.ls, %.backedge ]
  %.sroa.1094.0.idx174 = phi i64 [ 0, %.epilog-lcssa ], [ %.sroa.1094.0.add, %.backedge ] ; 2 uses
  %.sroa.091.0.idx172 = phi i64 [ 0, %.epilog-lcssa ], [ %.sroa.091.0.add, %.backedge ] ; 2 uses
  %.sroa.1094.0.ptr176 = getelementptr inbounds nuw i8, ptr %i.lr, i64 %.sroa.1094.0.idx174
  %.sroa.091.0.ptr177 = getelementptr inbounds nuw i8, ptr %i.lp, i64 %.sroa.091.0.idx172
  %i.ls = add nsw i64 %.sroa.15.0175, -1          ; 2 uses
  %.sroa.091.0.add = add nuw nsw i64 %.sroa.091.0.idx172, 1
  %.sroa.1094.0.add = add nuw nsw i64 %.sroa.1094.0.idx174, 2
  %i.lt = load i8, ptr %.sroa.091.0.ptr177, align 1, !noundef !4 ; 4 uses
  %i.lu = icmp eq i8 %i.lt, 0
  br i1 %i.lu, label %.backedge, label %bb.bh

select.unfold:                                    ; preds = %.backedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.bh:                                            ; preds = %bb.bg
  %i.lv = zext i8 %i.lt to i64                    ; 2 uses
  %i.lw = icmp ult i8 %i.lt, 16
  br i1 %i.lw, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.lv ; 2 uses
  %i.ly = load i32, ptr %i.lx, align 4, !noundef !4 ; 2 uses
  %i.lz = add i32 %i.ly, 1
  store i32 %i.lz, ptr %i.lx, align 4
  %i.ma = trunc i32 %i.ly to i16
  %i.mb = call i16 @llvm.bitreverse.i16(i16 %i.ma)
  %i.mc = sub nsw i8 0, %i.lt
  %i.md = and i8 %i.mc, 15
  %i.me = zext nneg i8 %i.md to i16
  %i.mf = lshr i16 %i.mb, %i.me
  store i16 %i.mf, ptr %.sroa.1094.0.ptr176, align 2
  br label %.backedge

.backedge:                                        ; preds = %bb.bi, %bb.bg
  %i.mg = icmp eq i64 %i.ls, 0
  br i1 %i.mg, label %select.unfold, label %bb.bg

bb.bj:                                            ; preds = %bb.bh
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.lv, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #22
  unreachable

bb.bk:                                            ; preds = %bb.bk, %.loopexit
  %.sroa.029.0171 = phi i32 [ 0, %.loopexit ], [ %i.nh, %bb.bk ]
  %.sroa.0.095170 = phi i64 [ 2, %.loopexit ], [ %i.nc, %bb.bk ] ; 6 uses
  %niter356 = phi i64 [ 0, %.loopexit ], [ %niter356.next.3, %bb.bk ]
  %i.mh = or disjoint i64 %.sroa.0.095170, 1      ; 2 uses
  %i.mi = getelementptr [4 x i8], ptr %i.g, i64 %.sroa.0.095170
  %i.mj = getelementptr i8, ptr %i.mi, i64 -4
  %i.mk = load i32, ptr %i.mj, align 4, !noundef !4
  %i.ml = add i32 %i.mk, %.sroa.029.0171
  %i.mm = shl i32 %i.ml, 1                        ; 2 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.0.095170
  store i32 %i.mm, ptr %i.mn, align 4
  %i.mo = add nuw nsw i64 %.sroa.0.095170, 2      ; 2 uses
  %i.mp = getelementptr [4 x i8], ptr %i.g, i64 %i.mh
  %i.mq = getelementptr i8, ptr %i.mp, i64 -4
  %i.mr = load i32, ptr %i.mq, align 4, !noundef !4
  %i.ms = add i32 %i.mr, %i.mm
  %i.mt = shl i32 %i.ms, 1                        ; 2 uses
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.mh
  store i32 %i.mt, ptr %i.mu, align 4
  %i.mv = add nuw nsw i64 %.sroa.0.095170, 3      ; 2 uses
  %i.mw = getelementptr [4 x i8], ptr %i.g, i64 %i.mo
  %i.mx = getelementptr i8, ptr %i.mw, i64 -4
  %i.my = load i32, ptr %i.mx, align 4, !noundef !4
  %i.mz = add i32 %i.my, %i.mt
  %i.na = shl i32 %i.mz, 1                        ; 2 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.mo
  store i32 %i.na, ptr %i.nb, align 4
  %i.nc = add nuw nsw i64 %.sroa.0.095170, 4      ; 2 uses
  %i.nd = getelementptr [4 x i8], ptr %i.g, i64 %i.mv
  %i.ne = getelementptr i8, ptr %i.nd, i64 -4
  %i.nf = load i32, ptr %i.ne, align 4, !noundef !4
  %i.ng = add i32 %i.nf, %i.na
  %i.nh = shl i32 %i.ng, 1                        ; 3 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.mv
  store i32 %i.nh, ptr %i.ni, align 4
  %niter356.next.3 = add nuw i64 %niter356, 4     ; 2 uses
  %niter356.ncmp.3 = icmp eq i64 %niter356.next.3, %unroll_iter355
  br i1 %niter356.ncmp.3, label %.unr-lcssa, label %bb.bk
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core11flush_block(ptr noalias nofree noundef align 8 captures(none) dereferenceable(65712) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1, i8 noundef range(i8 0, 5) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 65640
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 65656
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 65648 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.g = load i64, ptr %1, align 8, !range !81, !alias.scope !79, !noalias !82, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1                 ; 2 uses
  br i1 %i.h, label %bb.b, label %_RNvMs5_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_11CallbackOut17new_output_buffer.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !79, !noalias !82, !noundef !4 ; 3 uses
  %i.k = sub i64 %i.j, %i.f
  %i.l = icmp ugt i64 %i.k, 85195
  br i1 %i.l, label %bb.c, label %_RNvMs5_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_11CallbackOut17new_output_buffer.exit

bb.c:                                             ; preds = %bb.b
  %i.m = add i64 %i.f, 85180                      ; 2 uses
  %i.n = icmp ugt i64 %i.f, -85181
  %.not.i = icmp ugt i64 %i.m, %i.j
  %or.cond.i = or i1 %i.n, %.not.i
  br i1 %or.cond.i, label %bb.e, label %bb.d, !prof !74

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !79, !noalias !82, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  br label %_RNvMs5_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_11CallbackOut17new_output_buffer.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.f, i64 noundef %i.m, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22, !noalias !84
  unreachable

_RNvMs5_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_11CallbackOut17new_output_buffer.exit: ; preds = %bb.a, %bb.b, %bb.d
  %.sroa.01.0.i = phi ptr [ %i.q, %bb.d ], [ %i.d, %bb.a ], [ %i.d, %bb.b ] ; 3 uses
  %.sroa.0.0.i = phi i8 [ 0, %bb.d ], [ 1, %bb.a ], [ 1, %bb.b ]
  store ptr %.sroa.01.0.i, ptr %i.a, align 8, !alias.scope !76, !noalias !85
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 14 uses
  store i64 85180, ptr %i.r, align 8, !alias.scope !76, !noalias !85
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 23 uses
  store i64 0, ptr %i.s, align 8, !alias.scope !76, !noalias !85
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  store i8 %.sroa.0.0.i, ptr %i.t, align 8, !alias.scope !76, !noalias !85
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 65692 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !noundef !4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 65696 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !noundef !4 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 65664
  %i.ab = load i32, ptr %i.aa, align 8, !noundef !4 ; 6 uses
  %i.ac = and i32 %i.ab, 524288
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMs5_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_11CallbackOut17new_output_buffer.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 65608
  %i.af = load i64, ptr %i.ae, align 8, !noundef !4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 65592
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !4
  %i.ai = sub i64 %i.af, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 65616
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !4
  %i.al = icmp ule i64 %i.ai, %i.ak
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs5_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_11CallbackOut17new_output_buffer.exit, %bb.f
  %.sroa.07.0 = phi i1 [ %i.al, %bb.f ], [ false, %_RNvMs5_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_11CallbackOut17new_output_buffer.exit ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 65684 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !noundef !4
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.h, label %bb.k, !prof !67

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 65680 ; 2 uses
  store i32 0, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 65556 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !alias.scope !86, !noundef !4 ; 2 uses
  %i.as = icmp eq i32 %i.ar, 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 65544 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !86, !noundef !4
  %i.av = and i64 %i.au, 65535
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %i.av ; 2 uses
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 65536 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !86, !noundef !4
  %i.az = add i64 %i.ay, -1
  store i64 %i.az, ptr %i.ax, align 8, !alias.scope !86
  br label %_RNvMse_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_7LZOxide9init_flag.exit

bb.j:                                             ; preds = %bb.h
  %i.ba = load i8, ptr %i.aw, align 1, !alias.scope !86, !noundef !4
  %i.bb = trunc i32 %i.ar to i8
  %i.bc = and i8 %i.bb, 7
  %i.bd = lshr i8 %i.ba, %i.bc
  br label %_RNvMse_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_7LZOxide9init_flag.exit

_RNvMse_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_7LZOxide9init_flag.exit: ; preds = %bb.i, %bb.j
  %.sink = phi i8 [ 0, %bb.i ], [ %i.bd, %bb.j ]
  store i8 %.sink, ptr %i.aw, align 1, !alias.scope !86
  %i.be = and i32 %i.ab, 4096                     ; 2 uses
  %i.bf = icmp ne i32 %i.be, 0
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 65668 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4            ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 0
  %or.cond5 = select i1 %i.bf, i1 %i.bi, i1 false
  br i1 %or.cond5, label %bb.m, label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit45

bb.k:                                             ; preds = %bb.g
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #22
  unreachable

_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit45: ; preds = %bb.m, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit45.loopexit, %_RNvMse_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_7LZOxide9init_flag.exit
  %.promoted6.i = phi i64 [ 0, %_RNvMse_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_7LZOxide9init_flag.exit ], [ 0, %bb.m ], [ %.lcssa433, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit45.loopexit ] ; 4 uses
  %i.bj = phi i32 [ %i.x, %_RNvMse_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_7LZOxide9init_flag.exit ], [ %i.cy, %bb.m ], [ %.lcssa431, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit45.loopexit ]
  %i.bk = phi i32 [ %i.z, %_RNvMse_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_7LZOxide9init_flag.exit ], [ %i.cz, %bb.m ], [ %.lcssa429, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit45.loopexit ] ; 2 uses
  %i.bl = icmp eq i8 %2, 4                        ; 2 uses
  %i.bm = zext i1 %i.bl to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.bn = and i32 %i.bk, 31
  %i.bo = shl nuw i32 %i.bm, %i.bn
  %i.bp = or i32 %i.bo, %i.bj                     ; 3 uses
  store i32 %i.bp, ptr %i.u, align 8, !alias.scope !89
  %i.bq = add i32 %i.bk, 1                        ; 3 uses
  %i.br = icmp ugt i32 %i.bq, 7
  br i1 %i.br, label %.lr.ph.i, label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit

.lr.ph.i:                                         ; preds = %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit45
  %i.bs = load i64, ptr %i.r, align 8, !alias.scope !89, !noundef !4 ; 3 uses
  %i.bt = load ptr, ptr %i.a, align 8, !alias.scope !89, !nonnull !4
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.promoted6.i, i64 %i.bs) ; 2 uses
  %.promoted = load i64, ptr %i.s, align 8
  %.promoted343 = load i32, ptr %i.u, align 8
  %exitcond.not.i389.not = icmp ult i64 %.promoted6.i, %i.bs
  br i1 %exitcond.not.i389.not, label %.lr.ph, label %._crit_edge

bb.l:                                             ; preds = %.lr.ph
  %exitcond.not.i = icmp eq i64 %i.by, %umax.i
  br i1 %exitcond.not.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i, %bb.l
  %i.bu = phi i32 [ %i.bz, %bb.l ], [ %i.bp, %.lr.ph.i ] ; 2 uses
  %storemerge5.i390 = phi i32 [ %i.ca, %bb.l ], [ %i.bq, %.lr.ph.i ]
  %i.bv = phi i64 [ %i.by, %bb.l ], [ %.promoted6.i, %.lr.ph.i ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bv
  %i.bx = trunc i32 %i.bu to i8
  store i8 %i.bx, ptr %i.bw, align 1, !noalias !89
  %i.by = add i64 %i.bv, 1                        ; 5 uses
  %i.bz = lshr i32 %i.bu, 8                       ; 4 uses
  %i.ca = add i32 %storemerge5.i390, -8           ; 3 uses
  %i.cb = icmp ugt i32 %i.ca, 7
  br i1 %i.cb, label %bb.l, label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit.loopexit

._crit_edge:                                      ; preds = %bb.l, %.lr.ph.i
  %.lcssa378 = phi i32 [ %.promoted343, %.lr.ph.i ], [ %i.bz, %bb.l ]
  %.lcssa376 = phi i64 [ %.promoted, %.lr.ph.i ], [ %i.by, %bb.l ]
  store i64 %.lcssa376, ptr %i.s, align 8
  store i32 %.lcssa378, ptr %i.u, align 8
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %umax.i, i64 noundef %i.bs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22, !noalias !89
  unreachable

_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit.loopexit: ; preds = %.lr.ph
  store i64 %i.by, ptr %i.s, align 8
  store i32 %i.bz, ptr %i.u, align 8
  br label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit

_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit: ; preds = %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit.loopexit, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit45
  %i.cc = phi i32 [ %i.bp, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit45 ], [ %i.bz, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit.loopexit ] ; 2 uses
  %i.cd = phi i64 [ %.promoted6.i, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit45 ], [ %i.by, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit.loopexit ] ; 5 uses
  %storemerge.lcssa.i = phi i32 [ %i.bq, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit45 ], [ %i.ca, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit.loopexit ] ; 3 uses
  store i32 %storemerge.lcssa.i, ptr %i.v, align 4, !alias.scope !89
  %i.ce = load i8, ptr %i.t, align 8, !range !92, !noundef !4
  br i1 %.sroa.07.0, label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit._crit_edge, label %bb.o

_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit._crit_edge: ; preds = %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 65552
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  br label %bb.p

bb.m:                                             ; preds = %_RNvMse_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_7LZOxide9init_flag.exit
  %i.cf = and i32 %i.ab, 4095                     ; 2 uses
  %i.cg = and i32 %i.ab, 81920
  %or.cond.i36 = icmp eq i32 %i.cg, 0
  %i.ch = icmp samesign ult i32 %i.cf, 2
  %.8.i = select i1 %i.ch, i8 0, i8 64
  %i.ci = icmp samesign ugt i32 %i.cf, 767
  %..i = select i1 %i.ci, i8 -64, i8 -128
  %.sroa.04.0.i = select i1 %or.cond.i36, i8 %..i, i8 %.8.i ; 2 uses
  %i.cj = and i32 %i.ab, 589824
  %or.cond3.i = icmp eq i32 %i.cj, 0
  %.7.i = select i1 %or.cond3.i, i16 120, i16 8   ; 2 uses
  %i.ck = shl nuw nsw i16 %.7.i, 8
  %i.cl = zext i8 %.sroa.04.0.i to i16
  %i.cm = or disjoint i16 %i.ck, %i.cl
  %i.cn = urem i16 %i.cm, 31
  %i.co = trunc nuw nsw i16 %i.cn to i8
  %i.cp = or disjoint i8 %.sroa.04.0.i, %i.co
  %i.cq = xor i8 %i.cp, 31
  %.sroa.426.0.extract.trunc = zext i8 %i.cq to i32
  %i.cr = zext nneg i16 %.7.i to i32
  %i.cs = and i32 %i.z, 31
  %i.ct = shl i32 %i.cr, %i.cs
  %i.cu = add i32 %i.z, 8                         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.cv = and i32 %i.cu, 31
  %i.cw = shl i32 %.sroa.426.0.extract.trunc, %i.cv
  %i.cx = or i32 %i.ct, %i.cw
  %i.cy = or i32 %i.cx, %i.x                      ; 2 uses
  %i.cz = add i32 %i.z, 16                        ; 3 uses
  %i.da = icmp ugt i32 %i.cz, 7
  br i1 %i.da, label %.lr.ph.i40.preheader.preheader, label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit45

.lr.ph.i40.preheader.preheader:                   ; preds = %bb.m
  %i.db = lshr i32 %i.cu, 3
  %wide.trip.count = zext nneg i32 %i.db to i64   ; 2 uses
  br label %.lr.ph.i40.preheader

.lr.ph.i40:                                       ; preds = %.lr.ph.i40.preheader
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 %i.dl
  %i.dd = trunc i32 %i.dm to i8
  store i8 %i.dd, ptr %i.dc, align 1, !noalias !93
  %i.de = add nuw nsw i64 %i.di, 2                ; 3 uses
  %i.df = lshr i32 %i.dh, 16                      ; 2 uses
  %i.dg = add i32 %storemerge5.i43177, -16        ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dl, %wide.trip.count
  br i1 %exitcond.not.1, label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit45.loopexit, label %.lr.ph.i40.1

.lr.ph.i40.1:                                     ; preds = %.lr.ph.i40
  %exitcond.not.i44.1 = icmp eq i64 %i.de, 85180
  br i1 %exitcond.not.i44.1, label %bb.n, label %.lr.ph.i40.preheader

.lr.ph.i40.preheader:                             ; preds = %.lr.ph.i40.1, %.lr.ph.i40.preheader.preheader
  %i.dh = phi i32 [ %i.cy, %.lr.ph.i40.preheader.preheader ], [ %i.df, %.lr.ph.i40.1 ] ; 3 uses
  %storemerge5.i43177 = phi i32 [ %i.cz, %.lr.ph.i40.preheader.preheader ], [ %i.dg, %.lr.ph.i40.1 ] ; 2 uses
  %i.di = phi i64 [ 0, %.lr.ph.i40.preheader.preheader ], [ %i.de, %.lr.ph.i40.1 ] ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 %i.di
  %i.dk = trunc i32 %i.dh to i8
  store i8 %i.dk, ptr %i.dj, align 1, !noalias !93
end_hunk_0
begin_hunk_1_@_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core11flush_block:bb.a
  %i.hj = load ptr, ptr %i.hi, align 8, !nonnull !4, !noundef !4
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 65536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(640) %i.hj, i8 0, i64 640, i1 false)
  store i64 1, ptr %i.hk, align 8
  store i64 0, ptr %i.at, align 8
  store i32 8, ptr %i.aq, align 4
  %i.hl = zext i32 %i.dx to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 65592 ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 8, !noundef !4
  %i.ho = add i64 %i.hn, %i.hl
  store i64 %i.ho, ptr %i.hm, align 8
  store i32 0, ptr %i.dy, align 8
  %i.hp = add i32 %i.bh, 1
  store i32 %i.hp, ptr %i.bg, align 4
  %i.hq = load i64, ptr %i.s, align 8, !noundef !4 ; 8 uses
  %i.hr = load i8, ptr %i.t, align 8, !range !92, !noundef !4
  store i32 %i.hh, ptr %i.w, align 4
  store i32 %i.hg, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.hs = icmp eq i64 %i.hq, 0
  br i1 %i.hs, label %_RNvMs6_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_13CallbackOxide12flush_output.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i = load ptr, ptr %i.ht, align 8, !alias.scope !125, !noalias !128, !align !130, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %_RNvMs6_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_13CallbackOxide11update_size.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hu = load i64, ptr %i.b, align 8, !alias.scope !128, !noalias !125, !noundef !4
  store i64 %i.hu, ptr %.val.i, align 8, !noalias !131
  br label %_RNvMs6_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_13CallbackOxide11update_size.exit.i

_RNvMs6_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_13CallbackOxide11update_size.exit.i: ; preds = %bb.aj, %bb.ai
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load ptr, ptr %i.hv, align 8, !alias.scope !125, !noalias !128 ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.h, label %bb.ak, label %bb.as

bb.ak:                                            ; preds = %_RNvMs6_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_13CallbackOxide11update_size.exit.i
  %.val2.i = load i64, ptr %i.hw, align 8, !alias.scope !125, !noalias !128 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.hx = trunc nuw i8 %i.hr to i1
  br i1 %i.hx, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hy = add i64 %i.f, %i.hq
  store i64 %i.hy, ptr %i.e, align 8, !alias.scope !135, !noalias !125
  br label %_RNvMs6_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_13CallbackOxide12flush_output.exit

bb.am:                                            ; preds = %bb.ak
  %i.hz = sub i64 %.val2.i, %i.f                  ; 2 uses
  %..i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.hz, i64 %i.hq) ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.ia = add i64 %..i.i.i, %i.f                  ; 4 uses
  %i.ib = icmp ult i64 %i.ia, %i.f
  %.not.i8.i = icmp ugt i64 %i.ia, %.val2.i
  %or.cond.i.i = or i1 %i.ib, %.not.i8.i
  br i1 %or.cond.i.i, label %bb.ao, label %bb.an, !prof !74

bb.an:                                            ; preds = %bb.am
  %i.ic = icmp ult i64 %..i.i.i, 85197
  br i1 %i.ic, label %bb.aq, label %bb.ap, !prof !46

bb.ao:                                            ; preds = %bb.am
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.f, i64 noundef %i.ia, i64 noundef %.val2.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #22, !noalias !136
  unreachable

bb.ap:                                            ; preds = %bb.an
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %..i.i.i, i64 noundef 85196, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #22, !noalias !136
  unreachable

bb.aq:                                            ; preds = %bb.an
  %i.id = getelementptr inbounds nuw i8, ptr %.val1.i, i64 %i.f
  tail call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull %i.id, i64 noundef %..i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %..i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2), !noalias !136
  store i64 %i.ia, ptr %i.e, align 8, !alias.scope !135, !noalias !125
  %.not4.not.i.i = icmp ugt i64 %i.hq, %i.hz
  br i1 %.not4.not.i.i, label %bb.ar, label %_RNvMs6_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_13CallbackOxide12flush_output.exit

bb.ar:                                            ; preds = %bb.aq
  %i.ie = trunc nuw nsw i64 %..i.i.i to i32
  store i32 %i.ie, ptr %i.ap, align 8, !alias.scope !135, !noalias !125
  %i.if = sub i64 %i.hq, %..i.i.i
  %i.ig = trunc i64 %i.if to i32                  ; 2 uses
  store i32 %i.ig, ptr %i.am, align 4, !alias.scope !135, !noalias !125
  br label %_RNvMs6_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_13CallbackOxide12flush_output.exit

bb.as:                                            ; preds = %_RNvMs6_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_13CallbackOxide11update_size.exit.i
  %.val6.i = load ptr, ptr %i.hw, align 8, !alias.scope !125, !noalias !128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.ih = icmp ult i64 %i.hq, 85197
  br i1 %i.ih, label %bb.au, label %bb.at, !prof !46

bb.at:                                            ; preds = %bb.as
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hq, i64 noundef 85196, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #22, !noalias !140
  unreachable

bb.au:                                            ; preds = %bb.as
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.ii = getelementptr inbounds nuw i8, ptr %.val6.i, i64 32
  %i.ij = load ptr, ptr %i.ii, align 8, !invariant.load !4, !noalias !140, !nonnull !4
  %i.ik = tail call noundef zeroext i1 %i.ij(ptr noundef nonnull %.val1.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.hq) #23, !noalias !140, !inline_history !141
  br i1 %i.ik, label %_RNvMs6_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_13CallbackOxide12flush_output.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 65700
  store i32 -1, ptr %i.il, align 4, !alias.scope !142, !noalias !125
  br label %_RNvMs6_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_13CallbackOxide12flush_output.exit

bb.aw:                                            ; preds = %.critedge
  br i1 %i.bl, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.im = load i32, ptr %i.v, align 4, !noundef !4
  %i.in = icmp eq i32 %i.im, 0
  %.pre247.pre = load i32, ptr %i.u, align 8      ; 3 uses
  br i1 %i.in, label %bb.bd, label %.lr.ph.i99

bb.ay:                                            ; preds = %bb.aw
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.io = load i32, ptr %i.v, align 4, !alias.scope !143, !noundef !4
  %i.ip = add i32 %i.io, 3                        ; 3 uses
  %i.iq = icmp ugt i32 %i.ip, 7
  %.pre239.pre.pre = load i32, ptr %i.u, align 8  ; 2 uses
  %.pre241.pre250.pre257 = load i64, ptr %i.r, align 8 ; 3 uses
  %.pre243.pre252.pre259 = load ptr, ptr %i.a, align 8 ; 2 uses
  %.promoted6.i132.pre.pre.pre = load i64, ptr %i.s, align 8 ; 3 uses
  br i1 %i.iq, label %.lr.ph.i90, label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit95

.lr.ph.i90:                                       ; preds = %bb.ay
  %umax.i92 = tail call i64 @llvm.umax.i64(i64 %.promoted6.i132.pre.pre.pre, i64 %.pre241.pre250.pre257) ; 2 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.ba, %.lr.ph.i90
  %i.ir = phi i64 [ %.promoted6.i132.pre.pre.pre, %.lr.ph.i90 ], [ %i.iv, %bb.ba ] ; 3 uses
  %storemerge5.i93 = phi i32 [ %i.ip, %.lr.ph.i90 ], [ %i.ix, %bb.ba ]
  %i.is = phi i32 [ %.pre239.pre.pre, %.lr.ph.i90 ], [ %i.iw, %bb.ba ] ; 2 uses
  %exitcond.not.i94 = icmp eq i64 %i.ir, %umax.i92
  br i1 %exitcond.not.i94, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.it = getelementptr inbounds nuw i8, ptr %.pre243.pre252.pre259, i64 %i.ir
  %i.iu = trunc i32 %i.is to i8
  store i8 %i.iu, ptr %i.it, align 1, !noalias !143
  %i.iv = add i64 %i.ir, 1                        ; 2 uses
  %i.iw = lshr i32 %i.is, 8                       ; 2 uses
  %i.ix = add i32 %storemerge5.i93, -8            ; 3 uses
  %i.iy = icmp ugt i32 %i.ix, 7
  br i1 %i.iy, label %bb.az, label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit95.loopexit

bb.bb:                                            ; preds = %bb.az
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %umax.i92, i64 noundef %.pre241.pre250.pre257, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22, !noalias !143
  unreachable

_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit95.loopexit: ; preds = %bb.ba
  %.pre241.pre250.pre = load i64, ptr %i.r, align 8
  %.pre243.pre252.pre = load ptr, ptr %i.a, align 8
  br label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit95

_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit95: ; preds = %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit95.loopexit, %bb.ay
  %.promoted6.i132.pre.pre = phi i64 [ %.promoted6.i132.pre.pre.pre, %bb.ay ], [ %i.iv, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit95.loopexit ] ; 5 uses
  %.pre243.pre252 = phi ptr [ %.pre243.pre252.pre259, %bb.ay ], [ %.pre243.pre252.pre, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit95.loopexit ] ; 2 uses
  %.pre241.pre250 = phi i64 [ %.pre241.pre250.pre257, %bb.ay ], [ %.pre241.pre250.pre, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit95.loopexit ] ; 3 uses
  %.pre239.pre = phi i32 [ %.pre239.pre.pre, %bb.ay ], [ %i.iw, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit95.loopexit ] ; 3 uses
  %storemerge.lcssa.i89 = phi i32 [ %i.ip, %bb.ay ], [ %i.ix, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit95.loopexit ]
  %i.iz = icmp eq i32 %storemerge.lcssa.i89, 0
  br i1 %i.iz, label %.lr.ph.i124, label %.lr.ph.i117

.lr.ph.i99:                                       ; preds = %bb.ax
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %i.ja = load i64, ptr %i.r, align 8, !alias.scope !146, !noundef !4 ; 2 uses
  %.promoted6.i100 = load i64, ptr %i.s, align 8, !alias.scope !146 ; 4 uses
  %exitcond.not.i103.not = icmp ult i64 %.promoted6.i100, %i.ja
  br i1 %exitcond.not.i103.not, label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit104, label %bb.bc

_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit104: ; preds = %.lr.ph.i99
  %i.jb = load ptr, ptr %i.a, align 8, !alias.scope !146, !nonnull !4
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 %.promoted6.i100
  %i.jd = trunc i32 %.pre247.pre to i8
  store i8 %i.jd, ptr %i.jc, align 1, !noalias !146
  %i.je = add nuw i64 %.promoted6.i100, 1
  store i64 %i.je, ptr %i.s, align 8, !alias.scope !146
  %i.jf = lshr i32 %.pre247.pre, 8
  br label %bb.bd

bb.bc:                                            ; preds = %.lr.ph.i99
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.promoted6.i100, i64 noundef %i.ja, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22, !noalias !146
  unreachable

bb.bd:                                            ; preds = %bb.ax, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit104
  %.pre247 = phi i32 [ %.pre247.pre, %bb.ax ], [ %i.jf, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit104 ] ; 5 uses
  %i.jg = icmp eq i32 %i.be, 0
  br i1 %i.jg, label %bb.ah, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 65688
  %i.ji = load i32, ptr %i.jh, align 8, !noundef !4 ; 4 uses
  %i.jj = load i64, ptr %i.r, align 8             ; 9 uses
  %i.jk = load ptr, ptr %i.a, align 8, !nonnull !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %.promoted6.i109 = load i64, ptr %i.s, align 8, !alias.scope !149 ; 7 uses
  %umax.i110 = tail call i64 @llvm.umax.i64(i64 %.promoted6.i109, i64 %i.jj)
  %exitcond.not.i112.not = icmp ult i64 %.promoted6.i109, %i.jj
  br i1 %exitcond.not.i112.not, label %bb.bf, label %.loopexit

.loopexit:                                        ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.be
  %umax.i110.lcssa = phi i64 [ %umax.i110.1, %bb.bf ], [ %umax.i110.2, %bb.bg ], [ %umax.i110, %bb.be ], [ %umax.i110.3, %bb.bh ]
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %umax.i110.lcssa, i64 noundef %i.jj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22, !noalias !149
  unreachable

bb.bf:                                            ; preds = %bb.be
  %i.jl = lshr i32 %i.ji, 24
  %i.jm = or i32 %i.jl, %.pre247
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 %.promoted6.i109
  %i.jo = trunc i32 %i.jm to i8
  store i8 %i.jo, ptr %i.jn, align 1, !noalias !149
  %i.jp = add nuw i64 %.promoted6.i109, 1         ; 4 uses
  store i64 %i.jp, ptr %i.s, align 8, !alias.scope !149
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %umax.i110.1 = tail call i64 @llvm.umax.i64(i64 %i.jp, i64 %i.jj)
  %exitcond.not.i112.1.not = icmp ult i64 %i.jp, %i.jj
  br i1 %exitcond.not.i112.1.not, label %bb.bg, label %.loopexit

bb.bg:                                            ; preds = %bb.bf
  %i.jq = lshr i32 %i.ji, 16
  %i.jr = lshr i32 %.pre247, 8
  %i.js = or i32 %i.jq, %i.jr
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jp
  %i.ju = trunc i32 %i.js to i8
  store i8 %i.ju, ptr %i.jt, align 1, !noalias !152
  %i.jv = add nuw i64 %.promoted6.i109, 2         ; 4 uses
  store i64 %i.jv, ptr %i.s, align 8, !alias.scope !152
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %umax.i110.2 = tail call i64 @llvm.umax.i64(i64 %i.jv, i64 %i.jj)
  %exitcond.not.i112.2.not = icmp ult i64 %i.jv, %i.jj
  br i1 %exitcond.not.i112.2.not, label %bb.bh, label %.loopexit

bb.bh:                                            ; preds = %bb.bg
  %i.jw = lshr i32 %i.ji, 8
  %i.jx = lshr i32 %.pre247, 16
  %i.jy = or i32 %i.jw, %i.jx
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jv
  %i.ka = trunc i32 %i.jy to i8
  store i8 %i.ka, ptr %i.jz, align 1, !noalias !154
  %i.kb = add nuw i64 %.promoted6.i109, 3         ; 4 uses
  store i64 %i.kb, ptr %i.s, align 8, !alias.scope !154
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %umax.i110.3 = tail call i64 @llvm.umax.i64(i64 %i.kb, i64 %i.jj)
  %exitcond.not.i112.3.not = icmp ult i64 %i.kb, %i.jj
  br i1 %exitcond.not.i112.3.not, label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit113.3, label %.loopexit

_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit113.3: ; preds = %bb.bh
  %i.kc = lshr i32 %.pre247, 24
  %i.kd = or i32 %i.ji, %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.kb
  %i.kf = trunc i32 %i.kd to i8
  store i8 %i.kf, ptr %i.ke, align 1, !noalias !156
  %i.kg = add nuw i64 %.promoted6.i109, 4
  store i64 %i.kg, ptr %i.s, align 8, !alias.scope !156
  br label %bb.ah

.lr.ph.i117:                                      ; preds = %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit95
  %exitcond.not.i121.not = icmp ult i64 %.promoted6.i132.pre.pre, %.pre241.pre250
  br i1 %exitcond.not.i121.not, label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit122, label %bb.bi

_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit122: ; preds = %.lr.ph.i117
  %i.kh = getelementptr inbounds nuw i8, ptr %.pre243.pre252, i64 %.promoted6.i132.pre.pre
  %i.ki = trunc i32 %.pre239.pre to i8
  store i8 %i.ki, ptr %i.kh, align 1, !noalias !158
  %i.kj = add nuw i64 %.promoted6.i132.pre.pre, 1
  %i.kk = lshr i32 %.pre239.pre, 8
  %.pre241.pre = load i64, ptr %i.r, align 8
  %.pre243.pre = load ptr, ptr %i.a, align 8
  br label %.lr.ph.i124

bb.bi:                                            ; preds = %.lr.ph.i117
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.promoted6.i132.pre.pre, i64 noundef %.pre241.pre250, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22, !noalias !158
  unreachable

.lr.ph.i124:                                      ; preds = %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit122, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit95
  %.promoted6.i132.pre = phi i64 [ %.promoted6.i132.pre.pre, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit95 ], [ %i.kj, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit122 ] ; 7 uses
  %.pre243 = phi ptr [ %.pre243.pre252, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit95 ], [ %.pre243.pre, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit122 ] ; 2 uses
  %.pre241 = phi i64 [ %.pre241.pre250, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit95 ], [ %.pre241.pre, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit122 ] ; 3 uses
  %.pre239 = phi i32 [ %.pre239.pre, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit95 ], [ %i.kk, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit122 ] ; 2 uses
  %umax.i126 = tail call i64 @llvm.umax.i64(i64 %.promoted6.i132.pre, i64 %.pre241) ; 2 uses
  %exitcond.not.i128.not = icmp ult i64 %.promoted6.i132.pre, %.pre241
  br i1 %exitcond.not.i128.not, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.lr.ph.i124
  %i.kl = getelementptr inbounds nuw i8, ptr %.pre243, i64 %.promoted6.i132.pre
  %i.km = trunc i32 %.pre239 to i8
  store i8 %i.km, ptr %i.kl, align 1, !noalias !161
  %i.kn = add i64 %.promoted6.i132.pre, 1         ; 2 uses
  %exitcond.not.i128.1 = icmp eq i64 %i.kn, %umax.i126
  br i1 %exitcond.not.i128.1, label %bb.bk, label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit129

_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit129: ; preds = %bb.bj
  %i.ko = lshr i32 %.pre239, 8
  %i.kp = getelementptr inbounds nuw i8, ptr %.pre243, i64 %i.kn
  %i.kq = trunc i32 %i.ko to i8
  store i8 %i.kq, ptr %i.kp, align 1, !noalias !161
  %i.kr = add i64 %.promoted6.i132.pre, 2         ; 3 uses
  %.pre240 = load i64, ptr %i.r, align 8, !alias.scope !164 ; 3 uses
  %.pre242 = load ptr, ptr %i.a, align 8, !alias.scope !164 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %umax.i133 = tail call i64 @llvm.umax.i64(i64 %i.kr, i64 %.pre240) ; 2 uses
  %.promoted352 = load i64, ptr %i.s, align 8
  %exitcond.not.i135398.not = icmp ult i64 %i.kr, %.pre240
  br i1 %exitcond.not.i135398.not, label %.lr.ph400, label %._crit_edge401

bb.bk:                                            ; preds = %bb.bj, %.lr.ph.i124
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %umax.i126, i64 noundef %.pre241, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22, !noalias !161
  unreachable

_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit136: ; preds = %.lr.ph400
  %i.ks = getelementptr inbounds nuw i8, ptr %.pre242, i64 %i.kv
  store i8 -1, ptr %i.ks, align 1, !noalias !164
  %i.kt = add i64 %.promoted6.i132.pre, 4
  store i64 %i.kt, ptr %i.s, align 8
  br label %bb.ah

.lr.ph400:                                        ; preds = %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit129
  %i.ku = getelementptr inbounds nuw i8, ptr %.pre242, i64 %i.kr
  store i8 -1, ptr %i.ku, align 1, !noalias !164
  %i.kv = add i64 %.promoted6.i132.pre, 3         ; 3 uses
  %exitcond.not.i135 = icmp eq i64 %i.kv, %umax.i133
  br i1 %exitcond.not.i135, label %._crit_edge401, label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit136

._crit_edge401:                                   ; preds = %.lr.ph400, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit129
  %.lcssa = phi i64 [ %.promoted352, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit129 ], [ %i.kv, %.lr.ph400 ]
  store i64 %.lcssa, ptr %i.s, align 8
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %umax.i133, i64 noundef %.pre240, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22, !noalias !164
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 1, 3) i8 @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core14compress_block(ptr noalias nofree noundef nonnull align 2 dereferenceable(4320) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(65560) %2, i1 noundef zeroext %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [2 x i8], align 1                 ; 6 uses
  %i.c = alloca [3 x i8], align 1                 ; 7 uses
  %i.d = alloca [2 x i8], align 1                 ; 6 uses
  %i.e = alloca [2 x i8], align 1                 ; 6 uses
  %i.f = alloca [3 x i8], align 1                 ; 7 uses
  %i.g = alloca [2 x i8], align 1                 ; 6 uses
  %i.h = alloca [3 x i8], align 1                 ; 7 uses
  %i.i = alloca [12 x i8], align 4                ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [1 x i8], align 1                 ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 22 uses
  %i.m = alloca [8 x i8], align 8                 ; 11 uses
  %i.n = alloca [320 x i8], align 1               ; 17 uses
  %i.o = alloca [320 x i8], align 1               ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  br i1 %3, label %bb.bv, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i16 1, ptr %i.r, align 2, !alias.scope !167, !noalias !170
  tail call fastcc void @_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide14optimize_table(ptr noalias nofree noundef nonnull align 2 dereferenceable(4320) %0, i64 noundef 0, i64 noundef 288, i64 noundef 15, i1 noundef zeroext false), !noalias !170
  tail call fastcc void @_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide14optimize_table(ptr noalias nofree noundef nonnull align 2 dereferenceable(4320) %0, i64 noundef 1, i64 noundef 32, i64 noundef 15, i1 noundef zeroext false), !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !172
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3456 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3713
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3742
  store ptr %i.t, ptr %i.q, align 8, !noalias !172
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.u, ptr %i.v, align 8, !noalias !172
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  store i8 0, ptr %i.w, align 8, !noalias !172
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 17
  %i.y = call { i64, i64 } @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3revINtB5_3RevINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB7_10take_whileINtB2i_9TakeWhileppEB1p_8try_fold5checkRhjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB46_12HuffmanOxide19start_dynamic_block0NCINvMB3i_B3f_10wrap_mut_2jB3c_NCNvYIB2A_BM_B3Y_EB1p_5count0E0E0INtNtB3k_12control_flow11ControlFlowB3f_jEEB4a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef 0, ptr noalias nofree noundef nonnull %i.x, ptr noalias nofree noundef nonnull dereferenceable(1) %i.w), !noalias !170
  %i.z = extractvalue { i64, i64 } %i.y, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !172
  %i.aa = sub i64 286, %i.z                       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !172
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3744
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3745
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 3774
  store ptr %i.ac, ptr %i.p, align 8, !noalias !172
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !noalias !172
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store i8 0, ptr %i.af, align 8, !noalias !172
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 17
  %i.ah = call { i64, i64 } @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3revINtB5_3RevINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB7_10take_whileINtB2i_9TakeWhileppEB1p_8try_fold5checkRhjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB46_12HuffmanOxide19start_dynamic_blocks_0NCINvMB3i_B3f_10wrap_mut_2jB3c_NCNvYIB2A_BM_B3Y_EB1p_5count0E0E0INtNtB3k_12control_flow11ControlFlowB3f_jEEB4a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef 0, ptr noalias nofree noundef nonnull %i.ag, ptr noalias nofree noundef nonnull dereferenceable(1) %i.af), !noalias !170
  %i.ai = extractvalue { i64, i64 } %i.ah, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !172
  %i.aj = sub i64 30, %i.ai                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !172
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(320) %i.o, i8 0, i64 320, i1 false), !noalias !172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !172
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(320) %i.n, i8 0, i64 320, i1 false), !noalias !172
  %i.ak = add i64 %i.aj, %i.aa                    ; 5 uses
  %i.al = icmp ult i64 %i.aa, 321
  br i1 %i.al, label %bb.d, label %bb.c, !prof !46

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.aa, i64 noundef 320, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #22, !noalias !170
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.am = icmp samesign ult i64 %i.aa, 289
  br i1 %i.am, label %bb.f, label %bb.e, !prof !67

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.aa, i64 noundef 288, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #22, !noalias !170
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull %i.o, i64 noundef %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23), !noalias !170
  %i.an = icmp uge i64 %i.ak, %i.aa
  %i.ao = icmp ult i64 %i.ak, 321
  %or.cond.i = and i1 %i.an, %i.ao
  br i1 %or.cond.i, label %bb.h, label %bb.g, !prof !46

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.aa, i64 noundef %i.ak, i64 noundef 320, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #22, !noalias !170
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ap = icmp ult i64 %i.aj, 289
  br i1 %i.ap, label %bb.j, label %bb.i, !prof !46

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.aj, i64 noundef 288, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #22, !noalias !170
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.aa
  call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull %i.aq, i64 noundef %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24), !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !172
  store i64 71776119061217280, ptr %i.m, align 8, !noalias !172
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(38) %i.ar, i8 0, i64 38, i1 false), !alias.scope !173, !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !172
  store i64 0, ptr %i.l, align 8, !noalias !172
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ak
  %i.at = icmp samesign eq i64 %i.ak, 0
  br i1 %i.at, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 6 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  br label %bb.k

bb.k:                                             ; preds = %bb.w, %.lr.ph.i
end_hunk_1
