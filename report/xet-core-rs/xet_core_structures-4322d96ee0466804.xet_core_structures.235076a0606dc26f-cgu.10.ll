Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_core_structures-4322d96ee0466804.xet_core_structures.235076a0606dc26f-cgu.10?download=true
inline.NumInlined: 445
inline.NumDeleted: 138
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe19decompress_internalKb0_NtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures:bb.a
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 18)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.val157 = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %.val157, i64 34)
  %.not174 = icmp eq i64 %2, 0
  br i1 %.not174, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.backedge, %bb.a
  store i64 2, ptr %0, align 8
  br label %bb.ap

.lr.ph:                                           ; preds = %bb.a, %.backedge
  %.val156 = phi i64 [ %i.dn, %.backedge ], [ %.val157, %bb.a ] ; 13 uses
  %.val166 = phi i64 [ %.sink, %.backedge ], [ %.val168, %bb.a ] ; 10 uses
  %.sroa.0.0173 = phi i64 [ %.sroa.0.0.be, %.backedge ], [ 0, %bb.a ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0173
  %i.f = load i8, ptr %i.e, align 1, !noundef !6  ; 5 uses
  %i.g = add nuw nsw i64 %.sroa.0.0173, 1         ; 6 uses
  %i.h = and i8 %i.f, 15                          ; 3 uses
  %i.i = icmp eq i8 %i.h, 15
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = icmp ult i8 %i.f, -16
  %i.k = icmp ult i64 %.sroa.0.0173, %i.b
  %or.cond = and i1 %i.k, %i.j
  %i.l = icmp ult i64 %.val166, %i.d
  %or.cond422 = select i1 %or.cond, i1 %i.l, i1 false
  br i1 %or.cond422, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.m = lshr i8 %i.f, 4                          ; 3 uses
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = lshr i8 %i.f, 4
  %i.p = zext nneg i8 %i.o to i64                 ; 6 uses
  %i.q = add nuw nsw i64 %.sroa.0.0173, 17        ; 2 uses
  %.not = icmp ugt i64 %i.q, %2
  br i1 %.not, label %bb.aq, label %bb.ar, !prof !9

bb.e:                                             ; preds = %bb.c
  %i.r = zext nneg i8 %i.m to i64
  %i.s = icmp eq i8 %i.m, 15
  br i1 %i.s, label %.preheader175.preheader, label %bb.h

.preheader175.preheader:                          ; preds = %bb.e
  %exitcond.not.i129 = icmp eq i64 %i.g, %2
  br i1 %exitcond.not.i129, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit, label %.lr.ph132

bb.f:                                             ; preds = %bb.c, %bb.n
  %.sroa.0.1 = phi i64 [ %i.g, %bb.c ], [ %i.ae, %bb.n ] ; 3 uses
  %.not145 = icmp ult i64 %.sroa.0.1, %2
  br i1 %.not145, label %bb.o, label %bb.p

.preheader175:                                    ; preds = %.lr.ph132
  %exitcond.not.i = icmp eq i64 %i.v, %2
  br i1 %exitcond.not.i, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit, label %.lr.ph132

.lr.ph132:                                        ; preds = %.preheader175.preheader, %.preheader175
  %.sroa.0.0.i131 = phi i64 [ %i.x, %.preheader175 ], [ 0, %.preheader175.preheader ]
  %.sroa.0.2130 = phi i64 [ %i.v, %.preheader175 ], [ %i.g, %.preheader175.preheader ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.2130
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !97, !noalias !98, !noundef !6 ; 2 uses
  %i.v = add i64 %.sroa.0.2130, 1                 ; 3 uses
  %i.w = zext i8 %i.u to i64
  %i.x = add i64 %.sroa.0.0.i131, %i.w            ; 2 uses
  %i.y = icmp eq i8 %i.u, -1
  br i1 %i.y, label %.preheader175, label %bb.g

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit: ; preds = %.preheader175.preheader, %.preheader175
  store i64 2, ptr %0, align 8
  br label %bb.ap

bb.g:                                             ; preds = %.lr.ph132
  %i.z = add i64 %i.x, 15
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.sroa.0.4 = phi i64 [ %i.v, %bb.g ], [ %i.g, %bb.e ] ; 5 uses
  %.sroa.032.0 = phi i64 [ %i.z, %bb.g ], [ %i.r, %bb.e ] ; 6 uses
  %i.aa = sub i64 %2, %.sroa.0.4
  %i.ab = icmp ugt i64 %.sroa.032.0, %i.aa
  br i1 %i.ab, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = sub i64 %.val156, %.val166
  %i.ad = icmp ugt i64 %.sroa.032.0, %i.ac
  br i1 %i.ad, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.h
  store i64 1, ptr %0, align 8
  br label %bb.ap

bb.k:                                             ; preds = %bb.i
  %i.ae = add i64 %.sroa.032.0, %.sroa.0.4        ; 4 uses
  %i.af = icmp ult i64 %i.ae, %.sroa.0.4
  %.not144 = icmp ugt i64 %i.ae, %2
  %or.cond150 = or i1 %i.af, %.not144
  br i1 %or.cond150, label %bb.m, label %bb.n, !prof !9

bb.l:                                             ; preds = %bb.i
  %i.ag = add i64 %.val166, %.sroa.032.0
  store i64 0, ptr %0, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ag, ptr %.sroa.454.0..sroa_idx, align 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val156, ptr %.sroa.555.0..sroa_idx, align 8
  br label %bb.ap

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.4, i64 noundef %i.ae, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #19
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.4
  tail call fastcc void @_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef range(i64 0, -9223372036854775808) %.sroa.032.0, i64 noundef range(i64 0, -9223372036854775808) %.sroa.032.0) #20
  br label %bb.f

bb.o:                                             ; preds = %bb.f
  %i.ai = add nuw nsw i64 %.sroa.0.1, 2           ; 4 uses
  %.not.i169 = icmp ugt i64 %i.ai, %2
  br i1 %.not.i169, label %bb.q, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i: ; preds = %bb.o
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1
  %.sroa.030.0.copyload.i = load i16, ptr %i.aj, align 1, !alias.scope !99, !noalias !100 ; 4 uses
  %i.ak = icmp eq i16 %.sroa.030.0.copyload.i, 0
  br i1 %i.ak, label %bb.q, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit

bb.p:                                             ; preds = %bb.f
  %.val164 = load i64, ptr %i.a, align 8, !noundef !6
  %i.al = sub i64 %.val164, %.val168
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.al, ptr %i.am, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ap

bb.q:                                             ; preds = %bb.o, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i
  %.sink.i.ph = phi i64 [ 3, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i ], [ 2, %bb.o ]
  store i64 %.sink.i.ph, ptr %0, align 8
  br label %bb.ap

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i
  %i.an = zext i16 %.sroa.030.0.copyload.i to i64 ; 9 uses
  %narrow147 = add nuw nsw i8 %i.h, 4             ; 2 uses
  %i.ao = zext nneg i8 %narrow147 to i64
  %i.ap = icmp eq i8 %narrow147, 19
  br i1 %i.ap, label %.preheader.preheader, label %bb.s

.preheader.preheader:                             ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit
  %exitcond.not.i173133 = icmp eq i64 %i.ai, %2
  br i1 %exitcond.not.i173133, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit175, label %.lr.ph136

.preheader:                                       ; preds = %.lr.ph136
  %exitcond.not.i173 = icmp eq i64 %i.as, %2
  br i1 %exitcond.not.i173, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit175, label %.lr.ph136

.lr.ph136:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i172135 = phi i64 [ %i.au, %.preheader ], [ 0, %.preheader.preheader ]
  %.sroa.0.6134 = phi i64 [ %i.as, %.preheader ], [ %i.ai, %.preheader.preheader ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.6134
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !101, !noalias !102, !noundef !6 ; 2 uses
  %i.as = add i64 %.sroa.0.6134, 1                ; 3 uses
  %i.at = zext i8 %i.ar to i64
  %i.au = add i64 %.sroa.0.0.i172135, %i.at       ; 2 uses
  %i.av = icmp eq i8 %i.ar, -1
  br i1 %i.av, label %.preheader, label %bb.r

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit175: ; preds = %.preheader.preheader, %.preheader
  store i64 2, ptr %0, align 8
  br label %bb.ap

bb.r:                                             ; preds = %.lr.ph136
  %i.aw = add i64 %i.au, 19
  br label %bb.s

bb.s:                                             ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit, %bb.r
  %.sroa.0.8 = phi i64 [ %i.as, %bb.r ], [ %i.ai, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit ] ; 6 uses
  %.sroa.066.0 = phi i64 [ %i.aw, %bb.r ], [ %i.ao, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit ] ; 7 uses
  %.val163 = load i64, ptr %i.a, align 8, !noundef !6 ; 23 uses
  %i.ax = add i64 %.val163, %.sroa.066.0          ; 12 uses
  %.val154 = load i64, ptr %i.c, align 8, !noundef !6 ; 26 uses
  %i.ay = icmp ugt i64 %i.ax, %.val154
  br i1 %i.ay, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i64 0, ptr %0, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ax, ptr %.sroa.483.0..sroa_idx, align 8
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val154, ptr %.sroa.584.0..sroa_idx, align 8
  br label %bb.ap

bb.u:                                             ; preds = %bb.s
  %i.az = icmp ugt i64 %.sroa.066.0, %i.an
  br i1 %i.az, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ba = sub i64 %.val163, %i.an                 ; 6 uses
  %i.bb = icmp ult i64 %.val163, %i.an
  br i1 %i.bb, label %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe15duplicate_sliceNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit, label %bb.ag

bb.w:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.bc = sub i64 %.val163, %i.an                 ; 3 uses
  %i.bd = icmp ult i64 %.val163, %i.an
  br i1 %i.bd, label %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe15duplicate_sliceNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.be = icmp eq i16 %.sroa.030.0.copyload.i, 1
  br i1 %i.be, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %.val1.i = load ptr, ptr %3, align 8, !alias.scope !103, !noalias !104 ; 3 uses
  %i.bf = icmp ult i64 %i.bc, %.val154
  br i1 %i.bf, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink7byte_at.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bc, i64 noundef %.val154, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #19, !noalias !105
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink7byte_at.exit.i: ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ], !noalias !106
  %i.bg = icmp ult i64 %i.ax, %.val163
  br i1 %i.bg, label %bb.aa, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i, !prof !9

bb.aa:                                            ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink7byte_at.exit.i
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.val163, i64 noundef %i.ax, i64 noundef %.val154, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #19, !noalias !107
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i: ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink7byte_at.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.val1.i, i64 %i.bc
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !105, !noundef !6
  %i.bj = getelementptr inbounds nuw i8, ptr %.val1.i, i64 %.val163
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bj, i8 %i.bi, i64 range(i64 1, 0) %.sroa.066.0, i1 false), !noalias !107
  br label %.backedge

bb.ab:                                            ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108), !noalias !106
  %i.bk = icmp ult i64 %.val163, %i.ax
  br i1 %i.bk, label %.lr.ph.i.i, label %.backedge

.lr.ph.i.i:                                       ; preds = %bb.ab
  %i.bl = load ptr, ptr %3, align 8, !alias.scope !109, !noalias !104, !nonnull !6 ; 4 uses
  %i.bm = sub i64 %.val163, %i.an
  %i.bn = tail call i64 @llvm.umax.i64(i64 %.val154, i64 %i.bm)
  %i.bo = add i64 %i.bn, %i.an
  %i.bp = sub i64 %i.bo, %.val163
  %i.bq = sub i64 %.val154, %.val163
  %i.br = add i64 %.sroa.066.0, -1
  %i.bs = tail call i64 @llvm.umin.i64(i64 %i.bp, i64 %i.bq)
  %i.bt = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 %i.br)
  %i.bu = add i64 %i.bt, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.bu, 17
  %diff.check = icmp ult i16 %.sroa.030.0.copyload.i, 16
  %or.cond151 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond151, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %i.bv = and i64 %i.bu, 15                       ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0
  %i.bx = select i1 %i.bw, i64 16, i64 %i.bv
  %n.vec = sub i64 %i.bu, %i.bx                   ; 2 uses
  %i.by = add i64 %.val163, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bz = add i64 %.val163, %index                ; 2 uses
  %i.ca = sub i64 %i.bz, %i.an
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.ca
  %wide.load = load <16 x i8>, ptr %i.cb, align 1, !noalias !110
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bz
  store <16 x i8> %wide.load, ptr %i.cc, align 1, !noalias !110
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %scalar.ph.preheader, label %vector.body, !llvm.loop !68

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph.i.i
  %.sroa.01.010.i.i.ph = phi i64 [ %.val163, %.lr.ph.i.i ], [ %i.by, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.ae
  %.sroa.01.010.i.i = phi i64 [ %i.ce, %bb.ae ], [ %.sroa.01.010.i.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ce = add i64 %.sroa.01.010.i.i, 1            ; 2 uses
  %i.cf = sub i64 %.sroa.01.010.i.i, %i.an        ; 3 uses
  %i.cg = icmp ult i64 %i.cf, %.val154
  br i1 %i.cg, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %scalar.ph
  %exitcond.not.i.i = icmp eq i64 %.sroa.01.010.i.i, %.val154
  br i1 %exitcond.not.i.i, label %bb.af, label %bb.ae

bb.ad:                                            ; preds = %scalar.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cf, i64 noundef %.val154, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #19, !noalias !110
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.cf
  %i.ci = load i8, ptr %i.ch, align 1, !noalias !110, !noundef !6
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.sroa.01.010.i.i
  store i8 %i.ci, ptr %i.cj, align 1, !noalias !110
  %exitcond15.not.i.i = icmp eq i64 %i.ce, %i.ax
  br i1 %exitcond15.not.i.i, label %.backedge, label %scalar.ph, !llvm.loop !69

bb.af:                                            ; preds = %bb.ac
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.val154, i64 noundef %.val154, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #19, !noalias !110
  unreachable

bb.ag:                                            ; preds = %bb.v
  %i.ck = icmp ult i64 %.sroa.066.0, 33
  br i1 %i.ck, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cl = icmp ugt i64 %.sroa.066.0, 64
  %i.cm = add i64 %.val163, 64
  %.not.i = icmp ugt i64 %i.cm, %.val154
  %or.cond78 = or i1 %i.cl, %.not.i
  %.pre273 = load ptr, ptr %3, align 8, !noalias !106 ; 3 uses
  br i1 %or.cond78, label %bb.aj, label %bb.al

bb.ai:                                            ; preds = %bb.ag
  %i.cn = add i64 %.val163, 32
  %.not4.i = icmp ugt i64 %i.cn, %.val154
  %.pre = load ptr, ptr %3, align 8, !noalias !106 ; 3 uses
  br i1 %.not4.i, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.co = phi ptr [ %.pre, %bb.ai ], [ %.pre273, %bb.ah ] ; 2 uses
  %i.cp = add i64 %i.ba, %.sroa.066.0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111), !noalias !106
  %i.cq = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs31YAwBA1AlL_19xet_core_structures(i64 noundef %i.ba, i64 noundef %i.cp, i64 noundef range(i64 0, -9223372036854775808) %.val154, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72), !noalias !112 ; 2 uses
  %i.cr = extractvalue { i64, i64 } %i.cq, 0      ; 2 uses
  %i.cs = extractvalue { i64, i64 } %i.cq, 1
  %i.ct = sub i64 %i.cs, %i.cr                    ; 2 uses
  %i.cu = sub i64 %.val154, %i.ct
  %.not.i.i178 = icmp ugt i64 %.val163, %i.cu
  br i1 %.not.i.i178, label %bb.ak, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit, !prof !7

bb.ak:                                            ; preds = %bb.aj
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #19, !noalias !112
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit: ; preds = %bb.aj
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cr
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 %.val163
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cw, ptr nonnull align 1 %i.cv, i64 %i.ct, i1 false), !alias.scope !111, !noalias !113
  br label %.backedge

bb.al:                                            ; preds = %bb.ah
  %i.cx = add i64 %i.ba, 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114), !noalias !106
  %i.cy = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs31YAwBA1AlL_19xet_core_structures(i64 noundef %i.ba, i64 noundef %i.cx, i64 noundef range(i64 0, -9223372036854775808) %.val154, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72), !noalias !115 ; 2 uses
  %i.cz = extractvalue { i64, i64 } %i.cy, 0      ; 2 uses
  %i.da = extractvalue { i64, i64 } %i.cy, 1
  %i.db = sub i64 %i.da, %i.cz                    ; 2 uses
  %i.dc = sub i64 %.val154, %i.db
  %.not.i.i179 = icmp ugt i64 %.val163, %i.dc
  br i1 %.not.i.i179, label %bb.am, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit180, !prof !7

bb.am:                                            ; preds = %bb.al
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #19, !noalias !115
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit180: ; preds = %bb.al
  %i.dd = getelementptr inbounds nuw i8, ptr %.pre273, i64 %i.cz
  %i.de = getelementptr inbounds nuw i8, ptr %.pre273, i64 %.val163
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.de, ptr nonnull align 1 %i.dd, i64 %i.db, i1 false), !alias.scope !114, !noalias !116
  br label %.backedge

bb.an:                                            ; preds = %bb.ai
  %i.df = add i64 %i.ba, 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117), !noalias !106
  %i.dg = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs31YAwBA1AlL_19xet_core_structures(i64 noundef %i.ba, i64 noundef %i.df, i64 noundef range(i64 0, -9223372036854775808) %.val154, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72), !noalias !118 ; 2 uses
  %i.dh = extractvalue { i64, i64 } %i.dg, 0      ; 2 uses
  %i.di = extractvalue { i64, i64 } %i.dg, 1
  %i.dj = sub i64 %i.di, %i.dh                    ; 2 uses
  %i.dk = sub i64 %.val154, %i.dj
  %.not.i.i181 = icmp ugt i64 %.val163, %i.dk
  br i1 %.not.i.i181, label %bb.ao, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit182, !prof !7

bb.ao:                                            ; preds = %bb.an
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #19, !noalias !118
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit182: ; preds = %bb.an
  %i.dl = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.dh
  %i.dm = getelementptr inbounds nuw i8, ptr %.pre, i64 %.val163
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dm, ptr nonnull align 1 %i.dl, i64 %i.dj, i1 false), !alias.scope !117, !noalias !119
  br label %.backedge

_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe15duplicate_sliceNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.w, %bb.v
  store i64 4, ptr %0, align 8
  br label %bb.ap

.backedge:                                        ; preds = %bb.ay, %bb.ae, %bb.ab, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit195, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit180, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit182
  %.sink = phi i64 [ %i.ax, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit ], [ %i.ax, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit180 ], [ %i.ax, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit182 ], [ %i.ax, %bb.ae ], [ %i.fp, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit195 ], [ %i.ax, %bb.ab ], [ %i.ax, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i ], [ %i.ee, %bb.ay ] ; 2 uses
  %i.dn = phi i64 [ %.val154, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit ], [ %.val154, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit180 ], [ %.val154, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit182 ], [ %.val154, %bb.ae ], [ %.val156, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit195 ], [ %.val154, %bb.ab ], [ %.val154, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i ], [ %.val156, %bb.ay ]
  %.sroa.0.0.be = phi i64 [ %.sroa.0.8, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit ], [ %.sroa.0.8, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit180 ], [ %.sroa.0.8, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit182 ], [ %.sroa.0.8, %bb.ae ], [ %i.ea, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit195 ], [ %.sroa.0.8, %bb.ab ], [ %.sroa.0.8, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i ], [ %i.ea, %bb.ay ] ; 2 uses
  store i64 %.sink, ptr %i.a, align 8
  %i.do = icmp ult i64 %.sroa.0.0.be, %2
  br i1 %i.do, label %.lr.ph, label %._crit_edge

bb.ap:                                            ; preds = %._crit_edge, %bb.q, %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe15duplicate_sliceNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit, %bb.t, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit175, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit, %bb.j, %bb.l, %bb.av, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit191, %bb.p
  ret void

bb.aq:                                            ; preds = %bb.d
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.g, i64 noundef %i.q, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #19
  unreachable

bb.ar:                                            ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.dp = add nuw i64 %.val166, 16                ; 2 uses
  %.not4.i184 = icmp ugt i64 %i.dp, %.val156
  br i1 %.not4.i184, label %bb.as, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i188, !prof !9

bb.as:                                            ; preds = %bb.ar
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.val166, i64 noundef %i.dp, i64 noundef %.val156, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #19, !noalias !121
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i188: ; preds = %bb.ar
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 %i.g ; 3 uses
  %i.dr = load ptr, ptr %3, align 8, !alias.scope !120, !noalias !122, !nonnull !6, !noundef !6 ; 7 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.val166 ; 2 uses
  tail call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull %i.ds, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dq, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5), !noalias !120
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  tail call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull %i.dt, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.du, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6), !noalias !120
  %i.dv = add i64 %.val166, %i.p                  ; 11 uses
  store i64 %i.dv, ptr %i.a, align 8, !alias.scope !120, !noalias !122
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.p
  %.sroa.030.0.copyload.i189 = load i16, ptr %i.dw, align 1, !alias.scope !123, !noalias !124 ; 3 uses
  %i.dx = icmp eq i16 %.sroa.030.0.copyload.i189, 0
  br i1 %i.dx, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit191, label %bb.at

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit191: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i188
  store i64 3, ptr %0, align 8
  br label %bb.ap

bb.at:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i188
  %i.dy = zext i16 %.sroa.030.0.copyload.i189 to i64 ; 7 uses
  %i.dz = add nuw nsw i64 %.sroa.0.0173, 3
  %i.ea = add nuw nsw i64 %i.dz, %i.p             ; 2 uses
  %narrow = add nuw nsw i8 %i.h, 4
  %i.eb = zext nneg i8 %narrow to i64             ; 3 uses
  %i.ec = sub i64 %i.dv, %i.dy                    ; 2 uses
  %i.ed = icmp ult i64 %i.dv, %i.dy
  br i1 %i.ed, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.not142 = icmp samesign ult i64 %i.dy, %i.eb
  br i1 %.not142, label %.lr.ph.i, label %bb.ba

bb.av:                                            ; preds = %bb.at
  store i64 4, ptr %0, align 8
  br label %bb.ap

.lr.ph.i:                                         ; preds = %bb.au
  %i.ee = add nuw i64 %i.dv, %i.eb                ; 2 uses
  %umax.i192 = tail call i64 @llvm.umax.i64(i64 %i.dv, i64 %.val156) ; 3 uses
  %i.ef = add i64 %.val166, %i.p
  %i.eg = sub i64 %i.ef, %i.dy
  %i.eh = tail call i64 @llvm.umax.i64(i64 %.val156, i64 %i.eg)
  %i.ei = add i64 %i.eh, %i.dy
  %i.ej = add i64 %.val166, %i.p
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = add i64 %.val166, %i.p
  %i.em = sub i64 %umax.i192, %i.el
  %i.en = and i8 %i.f, 15
  %narrow149 = add nuw nsw i8 %i.en, 3
  %i.eo = zext nneg i8 %narrow149 to i64
  %i.ep = tail call i64 @llvm.umin.i64(i64 %i.ek, i64 %i.em)
  %i.eq = tail call i64 @llvm.umin.i64(i64 %i.ep, i64 %i.eo) ; 2 uses
  %min.iters.check140 = icmp samesign ult i64 %i.eq, 16
  %diff.check138 = icmp ult i16 %.sroa.030.0.copyload.i189, 16
  %or.cond152 = or i1 %min.iters.check140, %diff.check138
  br i1 %or.cond152, label %scalar.ph139.preheader, label %vector.ph141

vector.ph141:                                     ; preds = %.lr.ph.i
  %i.er = add nuw nsw i64 %i.eq, 1                ; 2 uses
  %i.es = and i64 %i.er, 15                       ; 2 uses
  %i.et = icmp eq i64 %i.es, 0
  %i.eu = select i1 %i.et, i64 16, i64 %i.es
  %n.vec142 = sub nsw i64 %i.er, %i.eu            ; 2 uses
  %i.ev = add i64 %i.dv, %n.vec142
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph141
  %index144 = phi i64 [ 0, %vector.ph141 ], [ %index.next146, %vector.body143 ] ; 2 uses
  %i.ew = add i64 %i.dv, %index144                ; 2 uses
  %i.ex = sub i64 %i.ew, %i.dy
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.ex
  %wide.load145 = load <16 x i8>, ptr %i.ey, align 1, !noalias !125
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.ew
  store <16 x i8> %wide.load145, ptr %i.ez, align 1, !noalias !125
  %index.next146 = add nuw i64 %index144, 16      ; 2 uses
  %i.fa = icmp eq i64 %index.next146, %n.vec142
  br i1 %i.fa, label %scalar.ph139.preheader, label %vector.body143, !llvm.loop !91

scalar.ph139.preheader:                           ; preds = %vector.body143, %.lr.ph.i
  %.sroa.01.010.i.ph = phi i64 [ %i.dv, %.lr.ph.i ], [ %i.ev, %vector.body143 ]
  br label %scalar.ph139

scalar.ph139:                                     ; preds = %scalar.ph139.preheader, %bb.ay
  %.sroa.01.010.i = phi i64 [ %i.fb, %bb.ay ], [ %.sroa.01.010.i.ph, %scalar.ph139.preheader ] ; 4 uses
  %i.fb = add i64 %.sroa.01.010.i, 1              ; 2 uses
  %i.fc = sub i64 %.sroa.01.010.i, %i.dy          ; 3 uses
  %i.fd = icmp ult i64 %i.fc, %.val156
  br i1 %i.fd, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %scalar.ph139
  %exitcond.not.i193 = icmp eq i64 %.sroa.01.010.i, %umax.i192
  br i1 %exitcond.not.i193, label %bb.az, label %bb.ay

bb.ax:                                            ; preds = %scalar.ph139
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.fc, i64 noundef %.val156, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #19, !noalias !125
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.fc
  %i.ff = load i8, ptr %i.fe, align 1, !noalias !125, !noundef !6
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sroa.01.010.i
  store i8 %i.ff, ptr %i.fg, align 1, !noalias !125
  %exitcond15.not.i = icmp eq i64 %i.fb, %i.ee
  br i1 %exitcond15.not.i, label %.backedge, label %scalar.ph139, !llvm.loop !92

bb.az:                                            ; preds = %bb.aw
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax.i192, i64 noundef %.val156, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #19, !noalias !125
  unreachable

bb.ba:                                            ; preds = %bb.au
  %i.fh = add i64 %i.ec, 18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.fi = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs31YAwBA1AlL_19xet_core_structures(i64 noundef %i.ec, i64 noundef %i.fh, i64 noundef range(i64 0, -9223372036854775808) %.val156, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72), !noalias !127 ; 2 uses
  %i.fj = extractvalue { i64, i64 } %i.fi, 0      ; 2 uses
  %i.fk = extractvalue { i64, i64 } %i.fi, 1
  %i.fl = sub i64 %i.fk, %i.fj                    ; 2 uses
  %i.fm = sub i64 %.val156, %i.fl
  %.not.i.i194 = icmp ugt i64 %i.dv, %i.fm
  br i1 %.not.i.i194, label %bb.bb, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit195, !prof !7

bb.bb:                                            ; preds = %bb.ba
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #19, !noalias !127
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit195: ; preds = %bb.ba
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.fj
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dv
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fo, ptr nonnull align 1 %i.fn, i64 %i.fl, i1 false), !alias.scope !126, !noalias !128
  %i.fp = add nuw i64 %i.dv, %i.eb
  br label %.backedge
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe19decompress_internalKb1_NtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, 4294967296) %2, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
.split:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  %.val226 = load i64, ptr %i.a, align 8, !noundef !6
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 18)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  %.val213 = load i64, ptr %i.c, align 8, !noundef !6
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %.val213, i64 51)
  %.not477 = icmp eq i64 %2, 0
  br i1 %.not477, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.backedge, %.split
  store i64 2, ptr %0, align 8
  br label %bb.au

.lr.ph:                                           ; preds = %.split, %.backedge
  %.sroa.0.0476 = phi i64 [ %.sroa.0.0.be, %.backedge ], [ 0, %.split ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0476
  %i.f = load i8, ptr %i.e, align 1, !noundef !6  ; 4 uses
  %i.g = add nuw nsw i64 %.sroa.0.0476, 1         ; 6 uses
  %i.h = and i8 %i.f, 15                          ; 3 uses
  %i.i = icmp eq i8 %i.h, 15
  br i1 %i.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.lr.ph
  %i.j = icmp ult i8 %i.f, -16
  %i.k = icmp ult i64 %.sroa.0.0476, %i.b
  %or.cond = and i1 %i.k, %i.j
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph, %bb.a
  %i.l = lshr i8 %i.f, 4                          ; 3 uses
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  %.val225 = load i64, ptr %i.a, align 8, !noundef !6 ; 5 uses
  %i.n = icmp ult i64 %.val225, %i.d
  br i1 %i.n, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.o = lshr i8 %i.f, 4
  %i.p = zext nneg i8 %i.o to i64                 ; 3 uses
  %i.q = add nuw nsw i64 %.sroa.0.0476, 17        ; 2 uses
  %.not = icmp ugt i64 %i.q, %2
  br i1 %.not, label %bb.av, label %bb.aw, !prof !9

bb.e:                                             ; preds = %bb.b
  %i.r = zext nneg i8 %i.l to i64
  %i.s = icmp eq i8 %i.l, 15
  br i1 %i.s, label %.preheader478.preheader, label %bb.h

.preheader478.preheader:                          ; preds = %bb.e
  %exitcond.not.i832 = icmp eq i64 %i.g, %2
  br i1 %exitcond.not.i832, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit, label %.lr.ph835

bb.f:                                             ; preds = %bb.b, %bb.n
  %.sroa.0.1 = phi i64 [ %i.g, %bb.b ], [ %i.ae, %bb.n ] ; 3 uses
  %.not200 = icmp ult i64 %.sroa.0.1, %2
  br i1 %.not200, label %bb.o, label %bb.p

.preheader478:                                    ; preds = %.lr.ph835
  %exitcond.not.i = icmp eq i64 %i.v, %2
  br i1 %exitcond.not.i, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit, label %.lr.ph835

.lr.ph835:                                        ; preds = %.preheader478.preheader, %.preheader478
  %.sroa.0.0.i834 = phi i64 [ %i.x, %.preheader478 ], [ 0, %.preheader478.preheader ]
  %.sroa.0.5833 = phi i64 [ %i.v, %.preheader478 ], [ %i.g, %.preheader478.preheader ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.5833
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !183, !noalias !184, !noundef !6 ; 2 uses
  %i.v = add i64 %.sroa.0.5833, 1                 ; 3 uses
  %i.w = zext i8 %i.u to i64
  %i.x = add i64 %.sroa.0.0.i834, %i.w            ; 2 uses
  %i.y = icmp eq i8 %i.u, -1
  br i1 %i.y, label %.preheader478, label %bb.g

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit: ; preds = %.preheader478.preheader, %.preheader478
  store i64 2, ptr %0, align 8
  br label %bb.au

bb.g:                                             ; preds = %.lr.ph835
  %i.z = add i64 %i.x, 15
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.sroa.0.2 = phi i64 [ %i.v, %bb.g ], [ %i.g, %bb.e ] ; 5 uses
  %.sroa.051.0 = phi i64 [ %i.z, %bb.g ], [ %i.r, %bb.e ] ; 6 uses
  %i.aa = sub i64 %2, %.sroa.0.2
  %i.ab = icmp ugt i64 %.sroa.051.0, %i.aa
  br i1 %i.ab, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val212 = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %.val224 = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.ac = sub i64 %.val212, %.val224
  %i.ad = icmp ugt i64 %.sroa.051.0, %i.ac
  br i1 %i.ad, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.h
  store i64 1, ptr %0, align 8
  br label %bb.au

bb.k:                                             ; preds = %bb.i
  %i.ae = add i64 %.sroa.051.0, %.sroa.0.2        ; 4 uses
  %i.af = icmp ult i64 %i.ae, %.sroa.0.2
  %.not199 = icmp ugt i64 %i.ae, %2
  %or.cond206 = or i1 %i.af, %.not199
  br i1 %or.cond206, label %bb.m, label %bb.n, !prof !9

bb.l:                                             ; preds = %bb.i
  %i.ag = add i64 %.val224, %.sroa.051.0
  store i64 0, ptr %0, align 8
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ag, ptr %.sroa.473.0..sroa_idx, align 8
  %.sroa.574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val212, ptr %.sroa.574.0..sroa_idx, align 8
  br label %bb.au

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.2, i64 noundef %i.ae, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #19
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.2
  tail call fastcc void @_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef range(i64 0, -9223372036854775808) %.sroa.051.0, i64 noundef range(i64 0, -9223372036854775808) %.sroa.051.0) #20
  br label %bb.f

bb.o:                                             ; preds = %bb.f
  %i.ai = add nuw nsw i64 %.sroa.0.1, 2           ; 4 uses
  %.not.i227 = icmp ugt i64 %i.ai, %2
  br i1 %.not.i227, label %bb.q, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i: ; preds = %bb.o
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1
  %.sroa.030.0.copyload.i = load i16, ptr %i.aj, align 1, !alias.scope !185, !noalias !186 ; 4 uses
  %i.ak = icmp eq i16 %.sroa.030.0.copyload.i, 0
  br i1 %i.ak, label %bb.q, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit

bb.p:                                             ; preds = %bb.f
  %.val222 = load i64, ptr %i.a, align 8, !noundef !6
  %i.al = sub i64 %.val222, %.val226
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.al, ptr %i.am, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.au

bb.q:                                             ; preds = %bb.o, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i
  %.sink.i.ph = phi i64 [ 3, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i ], [ 2, %bb.o ]
  store i64 %.sink.i.ph, ptr %0, align 8
  br label %bb.au

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i
  %i.an = zext i16 %.sroa.030.0.copyload.i to i64 ; 11 uses
  %narrow202 = add nuw nsw i8 %i.h, 4             ; 2 uses
  %i.ao = zext nneg i8 %narrow202 to i64
  %i.ap = icmp eq i8 %narrow202, 19
  br i1 %i.ap, label %.preheader.preheader, label %bb.s

.preheader.preheader:                             ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit
  %exitcond.not.i231836 = icmp eq i64 %i.ai, %2
  br i1 %exitcond.not.i231836, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit233, label %.lr.ph839

.preheader:                                       ; preds = %.lr.ph839
  %exitcond.not.i231 = icmp eq i64 %i.as, %2
  br i1 %exitcond.not.i231, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit233, label %.lr.ph839

.lr.ph839:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i230838 = phi i64 [ %i.au, %.preheader ], [ 0, %.preheader.preheader ]
  %.sroa.0.8837 = phi i64 [ %i.as, %.preheader ], [ %i.ai, %.preheader.preheader ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.8837
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !187, !noalias !188, !noundef !6 ; 2 uses
  %i.as = add i64 %.sroa.0.8837, 1                ; 3 uses
  %i.at = zext i8 %i.ar to i64
  %i.au = add i64 %.sroa.0.0.i230838, %i.at       ; 2 uses
  %i.av = icmp eq i8 %i.ar, -1
  br i1 %i.av, label %.preheader, label %bb.r

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit233: ; preds = %.preheader.preheader, %.preheader
  store i64 2, ptr %0, align 8
  br label %bb.au

bb.r:                                             ; preds = %.lr.ph839
  %i.aw = add i64 %i.au, 19
  br label %bb.s

bb.s:                                             ; preds = %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit, %bb.r
  %.sroa.0.3 = phi i64 [ %i.as, %bb.r ], [ %i.ai, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit ] ; 7 uses
  %.sroa.085.0 = phi i64 [ %i.aw, %bb.r ], [ %i.ao, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit ] ; 5 uses
  %.val221 = load i64, ptr %i.a, align 8, !noundef !6 ; 3 uses
  %i.ax = add i64 %.val221, %.sroa.085.0          ; 2 uses
  %.val210 = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %i.ay = icmp ugt i64 %i.ax, %.val210
  br i1 %i.ay, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i64 0, ptr %0, align 8
  %.sroa.4105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ax, ptr %.sroa.4105.0..sroa_idx, align 8
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val210, ptr %.sroa.5106.0..sroa_idx, align 8
  br label %bb.au

bb.u:                                             ; preds = %bb.s
  %i.az = icmp ult i64 %.val221, %i.an
  br i1 %i.az, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.ba = sub nuw nsw i64 %i.an, %.val221         ; 4 uses
  %i.bb = icmp samesign ult i64 %5, %i.ba
  br i1 %i.bb, label %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe14copy_from_dictNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bc = sub nuw nsw i64 %5, %i.ba
  %..i.i = tail call noundef range(i64 0, -65536) i64 @llvm.umin.i64(i64 range(i64 0, -65536) %i.ba, i64 %.sroa.085.0) ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 %i.bc
  tail call fastcc void @_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bd, i64 noundef range(i64 0, -9223372036854775808) %..i.i, i64 noundef range(i64 0, -9223372036854775808) %..i.i) #20, !noalias !189
  %.not357 = icmp ugt i64 %.sroa.085.0, %i.ba
  br i1 %.not357, label %bb.at, label %.backedge

bb.x:                                             ; preds = %bb.u, %bb.at
  %.sroa.085.1 = phi i64 [ %i.dy, %bb.at ], [ %.sroa.085.0, %bb.u ] ; 11 uses
  %i.be = icmp ugt i64 %.sroa.085.1, %i.an
  br i1 %i.be, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.val216 = load i64, ptr %i.a, align 8, !noundef !6 ; 13 uses
  %i.bf = sub i64 %.val216, %i.an                 ; 6 uses
  %i.bg = icmp ult i64 %.val216, %i.an
  br i1 %i.bg, label %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe15duplicate_sliceNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit, label %bb.aj

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %.val.i237 = load i64, ptr %i.a, align 8, !alias.scope !190, !noalias !191, !noundef !6 ; 15 uses
  %i.bh = sub i64 %.val.i237, %i.an               ; 3 uses
  %i.bi = icmp ult i64 %.val.i237, %i.an
  br i1 %i.bi, label %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe15duplicate_sliceNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bj = icmp eq i16 %.sroa.030.0.copyload.i, 1
  br i1 %i.bj, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %.val1.i = load ptr, ptr %3, align 8, !alias.scope !190, !noalias !191 ; 3 uses
  %.val2.i = load i64, ptr %i.c, align 8, !alias.scope !190, !noalias !191, !noundef !6 ; 4 uses
  %i.bk = icmp ult i64 %i.bh, %.val2.i
  br i1 %i.bk, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink7byte_at.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bh, i64 noundef %.val2.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #19, !noalias !192
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink7byte_at.exit.i: ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ], !noalias !193
  %i.bl = add i64 %.val.i237, %.sroa.085.1        ; 4 uses
  %i.bm = icmp ult i64 %i.bl, %.val.i237
  %.not.i.i = icmp ugt i64 %i.bl, %.val2.i
  %or.cond.i.i = or i1 %i.bm, %.not.i.i
  br i1 %or.cond.i.i, label %bb.ad, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i, !prof !9

bb.ad:                                            ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink7byte_at.exit.i
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.val.i237, i64 noundef %i.bl, i64 noundef %.val2.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #19, !noalias !194
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i: ; preds = %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink7byte_at.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.val1.i, i64 %i.bh
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !192, !noundef !6
  %i.bp = getelementptr inbounds nuw i8, ptr %.val1.i, i64 %.val.i237
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bp, i8 %i.bo, i64 range(i64 1, 0) %.sroa.085.1, i1 false), !noalias !194
  br label %.backedge.sink.split

bb.ae:                                            ; preds = %bb.aa
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195), !noalias !193
  %i.bq = add i64 %.val.i237, %.sroa.085.1        ; 4 uses
  %i.br = icmp ult i64 %.val.i237, %i.bq
  br i1 %i.br, label %.lr.ph.i.i, label %.backedge.sink.split

.lr.ph.i.i:                                       ; preds = %bb.ae
  %i.bs = load i64, ptr %i.c, align 8, !alias.scope !196, !noalias !191, !noundef !6 ; 5 uses
  %i.bt = load ptr, ptr %3, align 8, !alias.scope !196, !noalias !191, !nonnull !6 ; 4 uses
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.val.i237, i64 %i.bs) ; 3 uses
  %i.bu = sub i64 %.val.i237, %i.an
  %i.bv = tail call i64 @llvm.umax.i64(i64 %i.bs, i64 %i.bu)
  %i.bw = add i64 %i.bv, %i.an
  %i.bx = sub i64 %i.bw, %.val.i237
  %i.by = sub i64 %umax.i.i, %.val.i237
  %i.bz = add i64 %.sroa.085.1, -1
  %i.ca = tail call i64 @llvm.umin.i64(i64 %i.bx, i64 %i.by)
  %i.cb = tail call i64 @llvm.umin.i64(i64 %i.ca, i64 %i.bz)
  %i.cc = add i64 %i.cb, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.cc, 17
  %diff.check = icmp ult i16 %.sroa.030.0.copyload.i, 16
  %or.cond852 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond852, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %i.cd = and i64 %i.cc, 15                       ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 0
  %i.cf = select i1 %i.ce, i64 16, i64 %i.cd
  %n.vec = sub i64 %i.cc, %i.cf                   ; 2 uses
  %i.cg = add i64 %.val.i237, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ch = add i64 %.val.i237, %index              ; 2 uses
  %i.ci = sub i64 %i.ch, %i.an
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.ci
  %wide.load = load <16 x i8>, ptr %i.cj, align 1, !noalias !197
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.ch
  store <16 x i8> %wide.load, ptr %i.ck, align 1, !noalias !197
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %scalar.ph.preheader, label %vector.body, !llvm.loop !152

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph.i.i
  %.sroa.01.010.i.i.ph = phi i64 [ %.val.i237, %.lr.ph.i.i ], [ %i.cg, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.ah
  %.sroa.01.010.i.i = phi i64 [ %i.cm, %bb.ah ], [ %.sroa.01.010.i.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.cm = add i64 %.sroa.01.010.i.i, 1            ; 2 uses
  %i.cn = sub i64 %.sroa.01.010.i.i, %i.an        ; 3 uses
  %i.co = icmp ult i64 %i.cn, %i.bs
  br i1 %i.co, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %scalar.ph
  %exitcond.not.i.i = icmp eq i64 %.sroa.01.010.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %bb.ai, label %bb.ah

bb.ag:                                            ; preds = %scalar.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cn, i64 noundef %i.bs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #19, !noalias !197
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.cn
  %i.cq = load i8, ptr %i.cp, align 1, !noalias !197, !noundef !6
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.01.010.i.i
  store i8 %i.cq, ptr %i.cr, align 1, !noalias !197
  %exitcond15.not.i.i = icmp eq i64 %i.cm, %i.bq
  br i1 %exitcond15.not.i.i, label %.backedge.sink.split, label %scalar.ph, !llvm.loop !153

bb.ai:                                            ; preds = %bb.af
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax.i.i, i64 noundef %i.bs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #19, !noalias !197
  unreachable

bb.aj:                                            ; preds = %bb.y
  %i.cs = icmp ult i64 %.sroa.085.1, 33
  %.val = load i64, ptr %i.c, align 8             ; 8 uses
  br i1 %i.cs, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ct = icmp ult i64 %.sroa.085.1, 65
  br i1 %i.ct, label %bb.ao, label %._crit_edge585

._crit_edge585:                                   ; preds = %bb.ak
  %.pre = load ptr, ptr %3, align 8, !alias.scope !198, !noalias !193
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.cu = add i64 %.val216, 32
  %.not4.i = icmp ugt i64 %i.cu, %.val
  %.pre587 = load ptr, ptr %3, align 8, !noalias !193 ; 3 uses
  br i1 %.not4.i, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %._crit_edge585, %bb.ao, %bb.al
  %i.cv = phi ptr [ %.pre, %._crit_edge585 ], [ %.pre586, %bb.ao ], [ %.pre587, %bb.al ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  %i.cw = add i64 %i.bf, %.sroa.085.1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199), !noalias !193
  %i.cx = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs31YAwBA1AlL_19xet_core_structures(i64 noundef %i.bf, i64 noundef %i.cw, i64 noundef range(i64 0, -9223372036854775808) %.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72), !noalias !200 ; 2 uses
  %i.cy = extractvalue { i64, i64 } %i.cx, 0      ; 2 uses
  %i.cz = extractvalue { i64, i64 } %i.cx, 1
  %i.da = sub i64 %i.cz, %i.cy                    ; 2 uses
  %i.db = sub i64 %.val, %i.da
  %.not.i.i240.a = icmp ugt i64 %.val216, %i.db
  br i1 %.not.i.i240.a, label %bb.an, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit, !prof !7

bb.an:                                            ; preds = %bb.am
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #19, !noalias !200
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit: ; preds = %bb.am
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cy
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.val216
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dd, ptr nonnull align 1 %i.dc, i64 %i.da, i1 false), !alias.scope !199, !noalias !201
  %i.de = add i64 %.val216, %.sroa.085.1
  br label %.backedge.sink.split

bb.ao:                                            ; preds = %bb.ak
  %i.df = add i64 %.val216, 64
  %.not.i = icmp ugt i64 %i.df, %.val
  %.pre586 = load ptr, ptr %3, align 8, !noalias !193 ; 3 uses
  br i1 %.not.i, label %bb.am, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dg = add i64 %i.bf, 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202), !noalias !193
  %i.dh = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs31YAwBA1AlL_19xet_core_structures(i64 noundef %i.bf, i64 noundef %i.dg, i64 noundef range(i64 0, -9223372036854775808) %.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72), !noalias !203 ; 2 uses
  %i.di = extractvalue { i64, i64 } %i.dh, 0      ; 2 uses
  %i.dj = extractvalue { i64, i64 } %i.dh, 1
  %i.dk = sub i64 %i.dj, %i.di                    ; 2 uses
  %i.dl = sub i64 %.val, %i.dk
  %.not.i.i241 = icmp ugt i64 %.val216, %i.dl
  br i1 %.not.i.i241, label %bb.aq, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit242, !prof !7

bb.aq:                                            ; preds = %bb.ap
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #19, !noalias !203
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit242: ; preds = %bb.ap
  %i.dm = getelementptr inbounds nuw i8, ptr %.pre586, i64 %i.di
  %i.dn = getelementptr inbounds nuw i8, ptr %.pre586, i64 %.val216
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dn, ptr nonnull align 1 %i.dm, i64 %i.dk, i1 false), !alias.scope !202, !noalias !204
  %i.do = add i64 %.val216, %.sroa.085.1
  br label %.backedge.sink.split

bb.ar:                                            ; preds = %bb.al
  %i.dp = add i64 %i.bf, 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205), !noalias !193
  %i.dq = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs31YAwBA1AlL_19xet_core_structures(i64 noundef %i.bf, i64 noundef %i.dp, i64 noundef range(i64 0, -9223372036854775808) %.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72), !noalias !206 ; 2 uses
  %i.dr = extractvalue { i64, i64 } %i.dq, 0      ; 2 uses
  %i.ds = extractvalue { i64, i64 } %i.dq, 1
  %i.dt = sub i64 %i.ds, %i.dr                    ; 2 uses
  %i.du = sub i64 %.val, %i.dt
  %.not.i.i243 = icmp ugt i64 %.val216, %i.du
  br i1 %.not.i.i243, label %bb.as, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit244, !prof !7

bb.as:                                            ; preds = %bb.ar
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #19, !noalias !206
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit244: ; preds = %bb.ar
  %i.dv = getelementptr inbounds nuw i8, ptr %.pre587, i64 %i.dr
  %i.dw = getelementptr inbounds nuw i8, ptr %.pre587, i64 %.val216
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dw, ptr nonnull align 1 %i.dv, i64 %i.dt, i1 false), !alias.scope !205, !noalias !207
  %i.dx = add i64 %.val216, %.sroa.085.1
  br label %.backedge.sink.split

_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe14copy_from_dictNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.v
  store i64 4, ptr %0, align 8
  br label %bb.au

bb.at:                                            ; preds = %bb.w
  %i.dy = sub nuw i64 %.sroa.085.0, %..i.i
  br label %bb.x

_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe15duplicate_sliceNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.z, %bb.y
  store i64 4, ptr %0, align 8
  br label %bb.au

.backedge.sink.split:                             ; preds = %bb.bi, %bb.ah, %bb.ae, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i, %bb.bf, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit244, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit242, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit263
  %.sink = phi i64 [ %i.ew, %bb.bf ], [ %i.gi, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit263 ], [ %i.de, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit ], [ %i.do, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit242 ], [ %i.dx, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit244 ], [ %i.bq, %bb.ah ], [ %i.bl, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i ], [ %i.bq, %bb.ae ], [ %i.ew, %bb.bi ]
  %.sroa.0.0.be.ph = phi i64 [ %i.em, %bb.bf ], [ %i.em, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit263 ], [ %.sroa.0.3, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit ], [ %.sroa.0.3, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit242 ], [ %.sroa.0.3, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit244 ], [ %.sroa.0.3, %bb.ah ], [ %.sroa.0.3, %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink16extend_with_fill.exit.i ], [ %.sroa.0.3, %bb.ae ], [ %i.em, %bb.bi ]
  store i64 %.sink, ptr %i.a, align 8
  br label %.backedge

.backedge:                                        ; preds = %.backedge.sink.split, %bb.w, %bb.ba
  %.sroa.0.0.be = phi i64 [ %.sroa.0.3, %bb.w ], [ %i.em, %bb.ba ], [ %.sroa.0.0.be.ph, %.backedge.sink.split ] ; 2 uses
  %i.dz = icmp ult i64 %.sroa.0.0.be, %2
  br i1 %i.dz, label %.lr.ph, label %._crit_edge

bb.au:                                            ; preds = %._crit_edge, %bb.q, %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe15duplicate_sliceNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit, %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe14copy_from_dictNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit, %bb.t, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit233, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe12read_integer.exit, %bb.j, %bb.l, %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe14copy_from_dictNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit259, %bb.be, %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit253, %bb.p
  ret void

bb.av:                                            ; preds = %bb.d
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.g, i64 noundef %i.q, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #19
  unreachable

bb.aw:                                            ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %i.ea = load i64, ptr %i.c, align 8, !alias.scope !208, !noalias !209, !noundef !6 ; 2 uses
  %i.eb = add nuw i64 %.val225, 16                ; 2 uses
  %.not4.i246 = icmp ugt i64 %i.eb, %i.ea
  br i1 %.not4.i246, label %bb.ax, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i250, !prof !9

bb.ax:                                            ; preds = %bb.aw
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.val225, i64 noundef %i.eb, i64 noundef %i.ea, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #19, !noalias !210
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i250: ; preds = %bb.aw
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 %i.g ; 3 uses
  %i.ed = load ptr, ptr %3, align 8, !alias.scope !208, !noalias !209, !nonnull !6, !noundef !6
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.val225 ; 2 uses
  tail call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull %i.ee, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ec, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5), !noalias !208
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  tail call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull %i.ef, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eg, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6), !noalias !208
  %i.eh = add nuw i64 %.val225, %i.p              ; 4 uses
  store i64 %i.eh, ptr %i.a, align 8, !alias.scope !208, !noalias !209
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.p
  %.sroa.030.0.copyload.i251 = load i16, ptr %i.ei, align 1, !alias.scope !211, !noalias !212 ; 3 uses
  %i.ej = icmp eq i16 %.sroa.030.0.copyload.i251, 0
  br i1 %i.ej, label %_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit253, label %bb.ay

_RNvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe17read_match_offset.exit253: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i250
  store i64 3, ptr %0, align 8
  br label %bb.au

bb.ay:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit.i250
  %i.ek = zext i16 %.sroa.030.0.copyload.i251 to i64 ; 9 uses
  %i.el = add nuw nsw i64 %.sroa.0.0476, 3
  %i.em = add nuw nsw i64 %i.el, %i.p             ; 4 uses
  %narrow = add nuw nsw i8 %i.h, 4
  %i.en = zext nneg i8 %narrow to i64             ; 4 uses
  %i.eo = icmp ult i64 %i.eh, %i.ek
  br i1 %i.eo, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.ep = sub nuw nsw i64 %i.ek, %i.eh            ; 4 uses
  %i.eq = icmp samesign ult i64 %5, %i.ep
  br i1 %i.eq, label %_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe14copy_from_dictNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit259, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.er = sub nuw nsw i64 %5, %i.ep
  %..i.i255 = tail call noundef range(i64 0, -65536) i64 @llvm.umin.i64(i64 range(i64 0, -65536) %i.ep, i64 %i.en) ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 %i.er
  tail call fastcc void @_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink22extend_from_slice_wild(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.es, i64 noundef range(i64 0, -9223372036854775808) %..i.i255, i64 noundef range(i64 0, -9223372036854775808) %..i.i255) #20, !noalias !213
  %.not356 = icmp samesign ult i64 %i.ep, %i.en
  br i1 %.not356, label %bb.bc, label %.backedge

bb.bb:                                            ; preds = %bb.ay, %bb.bc
  %.val217 = phi i64 [ %.val217.pre, %bb.bc ], [ %i.eh, %bb.ay ] ; 14 uses
  %.sroa.032.0 = phi i64 [ %i.ev, %bb.bc ], [ %i.en, %bb.ay ]
  %.sroa.032.0.fr = freeze i64 %.sroa.032.0       ; 4 uses
  %i.et = sub i64 %.val217, %i.ek                 ; 2 uses
  %i.eu = icmp ult i64 %.val217, %i.ek
  br i1 %i.eu, label %bb.be, label %bb.bd

_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block15decompress_safe14copy_from_dictNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures.exit259: ; preds = %bb.az
  store i64 4, ptr %0, align 8
  br label %bb.au

bb.bc:                                            ; preds = %bb.ba
  %i.ev = sub nuw nsw i64 %i.en, %..i.i255
  %.val217.pre = load i64, ptr %i.a, align 8
  br label %bb.bb

bb.bd:                                            ; preds = %bb.bb
  %.not197 = icmp samesign ugt i64 %.sroa.032.0.fr, %i.ek
  br i1 %.not197, label %bb.bf, label %bb.bk

bb.be:                                            ; preds = %bb.bb
  store i64 4, ptr %0, align 8
  br label %bb.au

bb.bf:                                            ; preds = %bb.bd
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.ew = add i64 %.val217, %.sroa.032.0.fr       ; 4 uses
  %i.ex = icmp ult i64 %.val217, %i.ew
  br i1 %i.ex, label %.lr.ph.i, label %.backedge.sink.split

.lr.ph.i:                                         ; preds = %bb.bf
  %i.ey = load i64, ptr %i.c, align 8, !alias.scope !214, !noundef !6 ; 5 uses
  %i.ez = load ptr, ptr %3, align 8, !alias.scope !214, !nonnull !6 ; 4 uses
  %umax.i260 = tail call i64 @llvm.umax.i64(i64 %.val217, i64 %i.ey) ; 3 uses
  %i.fa = add i64 %.sroa.032.0.fr, -1
  %i.fb = sub i64 %.val217, %i.ek
  %i.fc = tail call i64 @llvm.umax.i64(i64 %i.ey, i64 %i.fb)
  %i.fd = add i64 %i.fc, %i.ek
  %i.fe = sub i64 %i.fd, %.val217
  %i.ff = sub i64 %umax.i260, %.val217
  %i.fg = tail call i64 @llvm.umin.i64(i64 %i.fe, i64 %i.ff)
  %i.fh = tail call i64 @llvm.umin.i64(i64 %i.fa, i64 %i.fg)
  %i.fi = add i64 %i.fh, 1                        ; 3 uses
  %min.iters.check843 = icmp ult i64 %i.fi, 17
  %diff.check841 = icmp ult i16 %.sroa.030.0.copyload.i251, 16
  %or.cond853 = or i1 %min.iters.check843, %diff.check841
  br i1 %or.cond853, label %scalar.ph842.preheader, label %vector.ph844

vector.ph844:                                     ; preds = %.lr.ph.i
  %i.fj = and i64 %i.fi, 15                       ; 2 uses
  %i.fk = icmp eq i64 %i.fj, 0
  %i.fl = select i1 %i.fk, i64 16, i64 %i.fj
  %n.vec845 = sub i64 %i.fi, %i.fl                ; 2 uses
  %i.fm = add i64 %.val217, %n.vec845
  br label %vector.body846

vector.body846:                                   ; preds = %vector.body846, %vector.ph844
  %index847 = phi i64 [ 0, %vector.ph844 ], [ %index.next849, %vector.body846 ] ; 2 uses
  %i.fn = add i64 %.val217, %index847             ; 2 uses
  %i.fo = sub i64 %i.fn, %i.ek
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fo
  %wide.load848 = load <16 x i8>, ptr %i.fp, align 1, !noalias !214
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fn
  store <16 x i8> %wide.load848, ptr %i.fq, align 1, !noalias !214
  %index.next849 = add nuw i64 %index847, 16      ; 2 uses
  %i.fr = icmp eq i64 %index.next849, %n.vec845
  br i1 %i.fr, label %scalar.ph842.preheader, label %vector.body846, !llvm.loop !177

scalar.ph842.preheader:                           ; preds = %vector.body846, %.lr.ph.i
  %.sroa.01.010.i.ph = phi i64 [ %.val217, %.lr.ph.i ], [ %i.fm, %vector.body846 ]
  br label %scalar.ph842

scalar.ph842:                                     ; preds = %scalar.ph842.preheader, %bb.bi
  %.sroa.01.010.i = phi i64 [ %i.fs, %bb.bi ], [ %.sroa.01.010.i.ph, %scalar.ph842.preheader ] ; 4 uses
  %i.fs = add i64 %.sroa.01.010.i, 1              ; 2 uses
  %i.ft = sub i64 %.sroa.01.010.i, %i.ek          ; 3 uses
  %i.fu = icmp ult i64 %i.ft, %i.ey
  br i1 %i.fu, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %scalar.ph842
  %exitcond.not.i261 = icmp eq i64 %.sroa.01.010.i, %umax.i260
  br i1 %exitcond.not.i261, label %bb.bj, label %bb.bi

bb.bh:                                            ; preds = %scalar.ph842
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ft, i64 noundef %i.ey, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #19, !noalias !214
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.ft
  %i.fw = load i8, ptr %i.fv, align 1, !noalias !214, !noundef !6
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.sroa.01.010.i
  store i8 %i.fw, ptr %i.fx, align 1, !noalias !214
  %exitcond15.not.i = icmp eq i64 %i.fs, %i.ew
  br i1 %exitcond15.not.i, label %.backedge.sink.split, label %scalar.ph842, !llvm.loop !178

bb.bj:                                            ; preds = %bb.bg
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax.i260, i64 noundef %i.ey, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #19, !noalias !214
  unreachable

bb.bk:                                            ; preds = %bb.bd
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %i.fy = load ptr, ptr %3, align 8, !alias.scope !215, !nonnull !6, !noundef !6 ; 2 uses
  %i.fz = load i64, ptr %i.c, align 8, !alias.scope !215, !noundef !6 ; 2 uses
  %i.ga = add i64 %i.et, 18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %i.gb = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs31YAwBA1AlL_19xet_core_structures(i64 noundef %i.et, i64 noundef %i.ga, i64 noundef range(i64 0, -9223372036854775808) %i.fz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72), !noalias !217 ; 2 uses
  %i.gc = extractvalue { i64, i64 } %i.gb, 0      ; 2 uses
  %i.gd = extractvalue { i64, i64 } %i.gb, 1
  %i.ge = sub i64 %i.gd, %i.gc                    ; 2 uses
  %i.gf = sub i64 %i.fz, %i.ge
  %.not.i.i262 = icmp ugt i64 %.val217, %i.gf
  br i1 %.not.i.i262, label %bb.bl, label %_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit263, !prof !7

bb.bl:                                            ; preds = %bb.bk
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #19, !noalias !217
  unreachable

_RNvXs_NtCs6f1wo00zwKs_8lz4_flex4sinkNtB4_9SliceSinkNtB4_4Sink18extend_from_within.exit263: ; preds = %bb.bk
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.gc
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.val217
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gh, ptr nonnull align 1 %i.gg, i64 %i.ge, i1 false), !alias.scope !216, !noalias !215
  %i.gi = add i64 %.val217, %.sroa.032.0.fr
  br label %.backedge.sink.split
}

; Function Attrs: noinline nonlazybind uwtable
define { i64, i64 } @_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress17compress_internalNtNtB4_9hashtable11HashTable4KKb0_NtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %4, ptr noalias nofree noundef nonnull readonly captures(none) %5, i64 noundef range(i64 0, -9223372036854775808) %6, i64 noundef %7) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %.not = icmp ugt i64 %2, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %6, 0
  br i1 %i.c, label %bb.e, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.val = load i64, ptr %i.d, align 8, !noundef !6 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  %.val37 = load i64, ptr %i.e, align 8, !noundef !6 ; 4 uses
  %i.f = sub i64 %.val, %.val37
  %i.g = sub nuw nsw i64 %1, %2                   ; 2 uses
  %i.h = mul i64 %i.g, 110
  %i.i = udiv i64 %i.h, 100
  %i.j = add nuw nsw i64 %i.i, 20
  %i.k = icmp ult i64 %i.f, %i.j
  br i1 %i.k, label %bb.ab, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = icmp samesign ult i64 %i.g, 13
  br i1 %i.l, label %bb.h, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.m = add nsw i64 %1, -12                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.n = or i64 %7, %2
  %or.cond = icmp eq i64 %i.n, 0
  %.val41.pre = load ptr, ptr %4, align 8         ; 3 uses
  br i1 %or.cond, label %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit, label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call fastcc void @_RINvNtNtCs6f1wo00zwKs_8lz4_flex5block8compress20handle_last_literalsNtNtB6_4sink9SliceSinkECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %2)
  %.val35 = load i64, ptr %i.e, align 8, !noundef !6
  %i.o = sub i64 %.val35, %.val37
  br label %bb.ab

_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.g
  %.sroa.01.0.copyload.i.i = load i64, ptr %0, align 1, !alias.scope !259
  %i.p = mul i64 %.sroa.01.0.copyload.i.i, -3523014627271114752
  %i.q = lshr i64 %i.p, 52
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.val41.pre, i64 %i.q
  store i32 0, ptr %i.r, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit
  %i.s = phi i64 [ %2, %bb.g ], [ 1, %_RNvYNtNtNtCs6f1wo00zwKs_8lz4_flex5block9hashtable11HashTable4KNtB4_9HashTable11get_hash_atCs31YAwBA1AlL_19xet_core_structures.exit ] ; 2 uses
  %i.t = icmp ugt i64 %i.s, %i.m
  br i1 %i.t, label %.split._crit_edge, label %.lr.ph.preheader, !prof !13

.lr.ph.preheader:                                 ; preds = %bb.i, %.split
  %.sroa.022.0507 = phi i64 [ %i.bq, %.split ], [ %2, %bb.i ] ; 7 uses
  %i.u = phi i64 [ %i.bq, %.split ], [ %i.s, %bb.i ] ; 2 uses
  %i.v = phi i64 [ %i.df, %.split ], [ %.val37, %bb.i ] ; 4 uses
  %i.w = phi i64 [ %i.cl, %.split ], [ %.val, %bb.i ] ; 6 uses
  %i.x = add i64 %i.u, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.backedge
  %i.y = phi i64 [ %i.av, %.backedge ], [ %i.x, %.lr.ph.preheader ] ; 3 uses
  %i.z = phi i64 [ %i.au, %.backedge ], [ 33, %.lr.ph.preheader ] ; 2 uses
  %.promoted = phi i64 [ %i.y, %.backedge ], [ %i.u, %.lr.ph.preheader ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !260)
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.aa = add i64 %.promoted, 8                   ; 2 uses
end_hunk_0
