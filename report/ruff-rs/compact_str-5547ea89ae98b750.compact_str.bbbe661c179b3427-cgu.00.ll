Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/compact_str-5547ea89ae98b750.compact_str.bbbe661c179b3427-cgu.00?download=true
inline.NumInlined: 220
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMCsg7m2K3K1Fzf_11compact_strNtB2_13CompactString15from_utf8_lossy:bb.a
  %i.dl = icmp eq i8 %i.dk, -40
  %i.dm = load ptr, ptr %i.b, align 8, !nonnull !4
  %spec.select54 = select i1 %i.dl, ptr %i.dm, ptr %i.b
  %i.dn = getelementptr inbounds nuw i8, ptr %spec.select54, i64 %spec.store.select.i27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.dn, ptr noundef nonnull align 1 dereferenceable(3) @11, i64 3, i1 false)
  %i.do = add i64 %spec.store.select.i27, 3       ; 4 uses
  %i.dp = load i8, ptr %i.q, align 1, !range !3, !alias.scope !77, !noalias !78, !noundef !4
  switch i8 %i.dp, label %bb.av [
    i8 -39, label %bb.at
    i8 -40, label %bb.au
  ]

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr10static_strNtB2_9StaticStr7set_len(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.do)
          to label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8push_str.exit39 unwind label %.loopexit

bb.au:                                            ; preds = %bb.as
  store i64 %i.do, ptr %.sroa.419.0..sroa_idx.i, align 8, !alias.scope !77, !noalias !78
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8push_str.exit39

bb.av:                                            ; preds = %bb.as
  %i.dq = icmp ult i64 %i.do, 24
  br i1 %i.dq, label %bb.aw, label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8push_str.exit39

bb.aw:                                            ; preds = %bb.av
  %i.dr = trunc nuw nsw i64 %i.do to i8
  %i.ds = or disjoint i8 %i.dr, -64
  store i8 %i.ds, ptr %i.q, align 1, !alias.scope !77, !noalias !78
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8push_str.exit39

_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8push_str.exit39: ; preds = %bb.aw, %bb.av, %bb.au, %bb.at
  %i.dt = trunc nuw i8 %.sroa.018.075 to i1
  br i1 %i.dt, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8push_str.exit39
  %i.du = zext i8 %.sroa.3.074 to i64
  %i.dv = add nuw i64 %.sroa.013.076, %i.du       ; 4 uses
  %i.dw = icmp ugt i64 %i.dv, %.sroa.8.077
  br i1 %i.dw, label %._crit_edge.invoke, label %bb.ba, !prof !6

bb.ay:                                            ; preds = %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8push_str.exit39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.az

bb.az:                                            ; preds = %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8push_str.exit53, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.w

bb.ba:                                            ; preds = %bb.ax
  %i.dx = sub nuw nsw i64 %.sroa.8.077, %i.dv     ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.078, i64 %i.dv ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dy, i64 noundef %i.dx)
          to label %bb.bb unwind label %.loopexit

bb.bb:                                            ; preds = %bb.ba
  %i.dz = load i64, ptr %i.a, align 8, !range !8, !noundef !4
  %i.ea = trunc nuw i64 %i.dz to i1
  br i1 %i.ea, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.eb = load i64, ptr %i.r, align 8, !noundef !4 ; 3 uses
  %i.ec = load i8, ptr %i.s, align 8, !range !9, !noundef !4
  %i.ed = load i8, ptr %i.t, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp ugt i64 %i.eb, %i.dx
  br i1 %.not, label %._crit_edge.invoke, label %bb.x, !prof !79

bb.bd:                                            ; preds = %bb.bb
  %i.ee = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4
  %i.ef = load i64, ptr %i.s, align 8, !noundef !4 ; 5 uses
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8push_str.exit53, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.eh = load i64, ptr %.sroa.419.0..sroa_idx.i, align 8, !alias.scope !80, !noalias !81, !noundef !4 ; 2 uses
  call void asm sideeffect inteldialect "/* ${0:q} */", "r,~{dirflag},~{fpsr},~{flags}"(i64 %i.eh) #21, !srcloc !5
  %i.ei = load i8, ptr %i.q, align 1, !range !3, !alias.scope !80, !noalias !81, !noundef !4 ; 5 uses
  %i.ej = zext i8 %i.ei to i64
  %i.ek = add nsw i64 %i.ej, -192
  %.sroa.0.0.i.i40 = call noundef range(i64 0, 25) i64 @llvm.umin.i64(i64 range(i64 -192, 256) %i.ek, i64 24)
  %i.el = icmp ugt i8 %i.ei, -41
  %spec.store.select.i41 = select i1 %i.el, i64 %i.eh, i64 %.sroa.0.0.i.i40 ; 3 uses
  %i.em = icmp eq i8 %i.ei, -39
  br i1 %i.em, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.en = add i64 %spec.store.select.i41, %i.ef
  %cond.i42 = icmp eq i8 %i.ei, -40
  br i1 %cond.i42, label %bb.bi, label %bb.bh, !prof !10

bb.bg:                                            ; preds = %bb.bh, %bb.be
  %i.eo = invoke fastcc noundef zeroext i1 @_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr7reserve(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ef)
          to label %.noexc49 unwind label %.loopexit.split-lp

.noexc49:                                         ; preds = %bb.bg
  br i1 %i.eo, label %.invoke, label %._crit_edge.i46, !prof !6

._crit_edge.i46:                                  ; preds = %.noexc49
  %.pre.i47 = load i8, ptr %i.q, align 1, !range !3, !alias.scope !80, !noalias !81
  br label %bb.bj

bb.bh:                                            ; preds = %bb.bi, %bb.bf
  %i.ep = phi i8 [ %i.et, %bb.bi ], [ %i.ei, %bb.bf ]
  %.sroa.03.0.i43 = phi i64 [ %i.er, %bb.bi ], [ 24, %bb.bf ]
  %i.eq = icmp ugt i64 %i.en, %.sroa.03.0.i43
  br i1 %i.eq, label %bb.bg, label %bb.bj

bb.bi:                                            ; preds = %bb.bf
  %.val.i48 = load i64, ptr %.sroa.520.0..sroa_idx.i, align 8, !alias.scope !80, !noalias !81, !noundef !4 ; 2 uses
  %i.er = and i64 %.val.i48, 72057594037927935
  %i.es = lshr i64 %.val.i48, 56
  %i.et = trunc nuw i64 %i.es to i8
  br label %bb.bh

bb.bj:                                            ; preds = %bb.bh, %._crit_edge.i46
  %i.eu = phi i8 [ %.pre.i47, %._crit_edge.i46 ], [ %i.ep, %bb.bh ] ; 2 uses
  %i.ev = icmp eq i8 %i.eu, -39
  br i1 %i.ev, label %bb.bk, label %bb.bl, !prof !6

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB7_4Repr10as_mut_ptr17inline_static_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc51 unwind label %.loopexit.split-lp

.noexc51:                                         ; preds = %bb.bk
  %.pr.i45 = load i8, ptr %i.q, align 1, !alias.scope !80, !noalias !81
  br label %bb.bl

bb.bl:                                            ; preds = %.noexc51, %bb.bj
  %i.ew = phi i8 [ %i.eu, %bb.bj ], [ %.pr.i45, %.noexc51 ]
  %i.ex = icmp eq i8 %i.ew, -40
  %i.ey = load ptr, ptr %i.b, align 8, !nonnull !4
  %spec.select55 = select i1 %i.ex, ptr %i.ey, ptr %i.b
  %i.ez = getelementptr inbounds nuw i8, ptr %spec.select55, i64 %spec.store.select.i41
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ez, ptr nonnull readonly align 1 %i.ee, i64 %i.ef, i1 false)
  %i.fa = add i64 %spec.store.select.i41, %i.ef   ; 4 uses
  %i.fb = load i8, ptr %i.q, align 1, !range !3, !alias.scope !80, !noalias !81, !noundef !4
  switch i8 %i.fb, label %bb.bo [
    i8 -39, label %bb.bm
    i8 -40, label %bb.bn
  ]

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr10static_strNtB2_9StaticStr7set_len(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.fa)
          to label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8push_str.exit53 unwind label %.loopexit.split-lp

bb.bn:                                            ; preds = %bb.bl
  store i64 %i.fa, ptr %.sroa.419.0..sroa_idx.i, align 8, !alias.scope !80, !noalias !81
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8push_str.exit53

bb.bo:                                            ; preds = %bb.bl
  %i.fc = icmp ult i64 %i.fa, 24
  br i1 %i.fc, label %bb.bp, label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8push_str.exit53

bb.bp:                                            ; preds = %bb.bo
  %i.fd = trunc nuw nsw i64 %i.fa to i8
  %i.fe = or disjoint i8 %i.fd, -64
  store i8 %i.fe, ptr %i.q, align 1, !alias.scope !80, !noalias !81
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8push_str.exit53

_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8push_str.exit53: ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bd, %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.az

bb.bq:                                            ; preds = %bb.al
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsg7m2K3K1Fzf_11compact_str13CompactStringEBD_.exit: ; preds = %bb.ak, %bb.al
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMCsg7m2K3K1Fzf_11compact_strNtB2_13CompactString18replace_range_grow(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(none) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.neg = sub i64 %1, %2
  %i.a = add i64 %4, %.neg                        ; 2 uses
  %i.b = tail call fastcc noundef zeroext i1 @_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr7reserve(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %i.a)
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvCsg7m2K3K1Fzf_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  tail call void asm sideeffect inteldialect "/* ${0:q} */", "r,~{dirflag},~{fpsr},~{flags}"(i64 %i.d) #21, !srcloc !5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 23 ; 4 uses
  %i.f = load i8, ptr %i.e, align 1, !range !3, !noundef !4 ; 3 uses
  %i.g = zext i8 %i.f to i64
  %i.h = add nsw i64 %i.g, -192
  %.sroa.0.0.i = tail call noundef range(i64 0, 25) i64 @llvm.umin.i64(i64 range(i64 -192, 256) %i.h, i64 24)
  %i.i = icmp ugt i8 %i.f, -41
  %spec.store.select = select i1 %i.i, i64 %i.d, i64 %.sroa.0.0.i ; 2 uses
  %i.j = add i64 %spec.store.select, %i.a         ; 5 uses
  switch i8 %i.f, label %bb.d [
    i8 -39, label %thread-pre-split
    i8 -40, label %thread-pre-split.thread.thread
  ]

thread-pre-split:                                 ; preds = %bb.c
  tail call void @_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr10static_strNtB2_9StaticStr7set_len(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.j)
  %.pr.pre = load i8, ptr %i.e, align 1           ; 2 uses
  %i.k = icmp eq i8 %.pr.pre, -39
  br i1 %i.k, label %bb.f, label %thread-pre-split.thread, !prof !82

thread-pre-split.thread.thread:                   ; preds = %bb.c
  store i64 %i.j, ptr %i.c, align 8
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ult i64 %i.j, 24
  br i1 %i.l, label %bb.e, label %thread-pre-split.thread.thread9

bb.e:                                             ; preds = %bb.d
  %i.m = trunc nuw nsw i64 %i.j to i8
  %i.n = or disjoint i8 %i.m, -64
  store i8 %i.n, ptr %i.e, align 1
  br label %thread-pre-split.thread.thread9

bb.f:                                             ; preds = %thread-pre-split
  tail call void @_RNvNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB7_4Repr10as_mut_ptr17inline_static_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  %.pre = load i8, ptr %i.e, align 1
  br label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %thread-pre-split, %bb.f
  %i.o = phi i8 [ %.pre, %bb.f ], [ %.pr.pre, %thread-pre-split ]
  %i.p = icmp eq i8 %i.o, -40
  br i1 %i.p, label %bb.g, label %thread-pre-split.thread.thread9

bb.g:                                             ; preds = %thread-pre-split.thread.thread, %thread-pre-split.thread
  %i.q = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  br label %thread-pre-split.thread.thread9

thread-pre-split.thread.thread9:                  ; preds = %bb.d, %bb.e, %thread-pre-split.thread, %bb.g
  %.sroa.03.0 = phi ptr [ %i.q, %bb.g ], [ %0, %thread-pre-split.thread ], [ %0, %bb.e ], [ %0, %bb.d ] ; 3 uses
  %i.r = sub i64 %spec.store.select, %2           ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.03.0, i64 %2
  %i.t = sub i64 %i.j, %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.03.0, i64 %i.t
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull align 1 %i.s, i64 %i.r, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.03.0, i64 %1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull align 1 %3, i64 %4, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMCsg7m2K3K1Fzf_11compact_strNtB2_13CompactString20replace_range_shrink(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(none) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  tail call void asm sideeffect inteldialect "/* ${0:q} */", "r,~{dirflag},~{fpsr},~{flags}"(i64 %i.b) #21, !srcloc !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 23 ; 4 uses
  %i.d = load i8, ptr %i.c, align 1, !range !3, !noundef !4 ; 4 uses
  %i.e = zext i8 %i.d to i64
  %i.f = add nsw i64 %i.e, -192
  %.sroa.0.0.i = tail call noundef range(i64 0, 25) i64 @llvm.umin.i64(i64 range(i64 -192, 256) %i.f, i64 24)
  %i.g = icmp ugt i8 %i.d, -41
  %spec.store.select = select i1 %i.g, i64 %i.b, i64 %.sroa.0.0.i ; 2 uses
  %i.h = add i64 %4, %1                           ; 2 uses
  %.neg = sub i64 %i.h, %2
  %i.i = add i64 %spec.store.select, %.neg        ; 4 uses
  %i.j = sub i64 %spec.store.select, %2
  %i.k = icmp eq i8 %i.d, -39
  br i1 %i.k, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB7_4Repr10as_mut_ptr17inline_static_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  %.pre = load i8, ptr %i.c, align 1, !range !3
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.l = phi i8 [ %i.d, %bb.a ], [ %.pre, %bb.b ]
  %i.m = icmp eq i8 %i.l, -40
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.03.0 = phi ptr [ %i.n, %bb.d ], [ %0, %bb.c ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.03.0, i64 %1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %3, i64 %4, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.03.0, i64 %2
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.03.0, i64 %i.h
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 1 %i.p, i64 %i.j, i1 false)
  %i.r = load i8, ptr %i.c, align 1, !range !3, !noundef !4
  switch i8 %i.r, label %bb.i [
    i8 -39, label %bb.f
    i8 -40, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr10static_strNtB2_9StaticStr7set_len(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i)
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.j, %bb.h, %bb.f
  ret void

bb.h:                                             ; preds = %bb.e
  store i64 %i.i, ptr %i.a, align 8
  br label %bb.g

bb.i:                                             ; preds = %bb.e
  %i.s = icmp ult i64 %i.i, 24
  br i1 %i.s, label %bb.j, label %bb.g

bb.j:                                             ; preds = %bb.i
  %i.t = trunc nuw nsw i64 %i.i to i8
  %i.u = or disjoint i8 %i.t, -64
  store i8 %i.u, ptr %i.c, align 1
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMCsg7m2K3K1Fzf_11compact_strNtB2_13CompactString21from_str_to_lowercase(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i = alloca i32, align 4                ; 16 uses
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 16 uses
  %i.c = alloca [12 x i8], align 4                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !165
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.e = icmp samesign ult i64 %2, 25
  br i1 %i.e, label %_RNvMCsg7m2K3K1Fzf_11compact_strNtB2_13CompactString13with_capacity.exit.i, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.f = tail call { ptr, i64 } @_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr4heapNtB2_10HeapBuffer5alloc(i64 noundef range(i64 0, -9223372036854775808) %2), !noalias !167 ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0        ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %_RNvMCsg7m2K3K1Fzf_11compact_strNtB2_13CompactString13with_capacity.exit.thread.i, !prof !6

bb.c:                                             ; preds = %bb.b
  tail call void @_RINvCsg7m2K3K1Fzf_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #20, !noalias !168
  unreachable

_RNvMCsg7m2K3K1Fzf_11compact_strNtB2_13CompactString13with_capacity.exit.thread.i: ; preds = %bb.b
  %i.i = extractvalue { ptr, i64 } %i.f, 1
  store ptr %i.g, ptr %i.b, align 8, !alias.scope !166, !noalias !169
  %.sroa.419.0..sroa_idx.i44.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 0, ptr %.sroa.419.0..sroa_idx.i44.i, align 8, !alias.scope !166, !noalias !169
  %.sroa.520.0..sroa_idx.i45.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %i.i, ptr %.sroa.520.0..sroa_idx.i45.i, align 8, !alias.scope !166, !noalias !169
  br label %.lr.ph.i

_RNvMCsg7m2K3K1Fzf_11compact_strNtB2_13CompactString13with_capacity.exit.i: ; preds = %bb.a
  %.sroa.419.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.520.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !noalias !165
  store i64 -4611686018427387904, ptr %.sroa.520.0..sroa_idx.i.i, align 8, !alias.scope !166, !noalias !169
  %.not34.i = icmp samesign ult i64 %2, 16
  br i1 %.not34.i, label %.thread.i, label %.lr.ph.i

.thread.i:                                        ; preds = %_RNvMCsg7m2K3K1Fzf_11compact_strNtB2_13CompactString13with_capacity.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  br label %bb.j

.lr.ph.i:                                         ; preds = %_RNvMCsg7m2K3K1Fzf_11compact_strNtB2_13CompactString13with_capacity.exit.i, %_RNvMCsg7m2K3K1Fzf_11compact_strNtB2_13CompactString13with_capacity.exit.thread.i
  %.sroa.520.0..sroa_idx.i50.i = phi ptr [ %.sroa.520.0..sroa_idx.i45.i, %_RNvMCsg7m2K3K1Fzf_11compact_strNtB2_13CompactString13with_capacity.exit.thread.i ], [ %.sroa.520.0..sroa_idx.i.i, %_RNvMCsg7m2K3K1Fzf_11compact_strNtB2_13CompactString13with_capacity.exit.i ]
  %.sroa.419.0..sroa_idx.i47.i = phi ptr [ %.sroa.419.0..sroa_idx.i44.i, %_RNvMCsg7m2K3K1Fzf_11compact_strNtB2_13CompactString13with_capacity.exit.thread.i ], [ %.sroa.419.0..sroa_idx.i.i, %_RNvMCsg7m2K3K1Fzf_11compact_strNtB2_13CompactString13with_capacity.exit.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 23 ; 5 uses
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %i.l = phi i64 [ 16, %.lr.ph.i ], [ %i.ck, %.loopexit.i ] ; 3 uses
  %.sroa.0.035.i = phi i64 [ 0, %.lr.ph.i ], [ %i.l, %.loopexit.i ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.035.i ; 3 uses
  %i.n = load i64, ptr %.sroa.419.0..sroa_idx.i47.i, align 8, !alias.scope !170, !noalias !165, !noundef !4 ; 2 uses
  call void asm sideeffect inteldialect "/* ${0:q} */", "r,~{dirflag},~{fpsr},~{flags}"(i64 %i.n) #21, !srcloc !5
  %i.o = load i8, ptr %i.k, align 1, !range !3, !alias.scope !170, !noalias !165, !noundef !4 ; 4 uses
  %i.p = icmp eq i8 %i.o, -39
  br i1 %i.p, label %bb.e, label %.thread.i.i, !prof !6

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB7_4Repr10as_mut_ptr17inline_static_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !171

.noexc.i:                                         ; preds = %bb.e
  %.pr.i.i = load i8, ptr %i.k, align 1, !alias.scope !170, !noalias !165
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.noexc.i, %bb.d
  %i.q = phi i8 [ %i.o, %bb.d ], [ %.pr.i.i, %.noexc.i ] ; 2 uses
  %i.r = load <2 x i64>, ptr %i.m, align 1, !alias.scope !164, !noalias !171 ; 8 uses
  %i.s = extractelement <2 x i64> %i.r, i64 1     ; 2 uses
  %i.t = extractelement <2 x i64> %i.r, i64 0
  %i.u = or i64 %i.s, %i.t
  %i.v = and i64 %i.u, -9187201950435737472
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %.loopexit.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.thread.i.i, %.loopexit.._crit_edge.loopexit_crit_edge.i
  %i.x = phi i8 [ %.pre.pre.i, %.loopexit.._crit_edge.loopexit_crit_edge.i ], [ %i.q, %.thread.i.i ]
  %.sroa.0.0.lcssa.i = phi i64 [ %i.l, %.loopexit.._crit_edge.loopexit_crit_edge.i ], [ %.sroa.0.035.i, %.thread.i.i ] ; 4 uses
  switch i8 %i.x, label %bb.i [
    i8 -39, label %bb.g
    i8 -40, label %bb.h
  ]

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.e
  %lpad.loopexit26.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.g
  %lpad.loopexit.split-lp27.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp27.i, %.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit26.i, %.loopexit.split-lp.loopexit.i ] ; 2 uses
  %i.y = load i8, ptr %i.k, align 1, !range !3, !alias.scope !172, !noalias !165, !noundef !4
  %i.z = icmp eq i8 %i.y, -40
  br i1 %i.z, label %bb.f, label %common.resume, !prof !6

bb.f:                                             ; preds = %.loopexit.split-lp.i
  %i.aa = load ptr, ptr %i.b, align 8, !alias.scope !172, !noalias !165, !nonnull !4, !noundef !4
  %i.ab = load i64, ptr %.sroa.520.0..sroa_idx.i50.i, align 8, !alias.scope !172, !noalias !165, !noundef !4
  invoke void @_RNvNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB7_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop13outlined_drop(ptr noundef nonnull %i.aa, i64 noundef %i.ab)
          to label %common.resume unwind label %bb.k, !noalias !171

.loopexit.i:                                      ; preds = %.thread.i.i
  %i.ac = bitcast <2 x i64> %i.r to <16 x i8>
  %i.ad = extractelement <16 x i8> %i.ac, i64 13  ; 2 uses
  %i.ae = bitcast <2 x i64> %i.r to <16 x i8>
  %i.af = extractelement <16 x i8> %i.ae, i64 12  ; 2 uses
  %i.ag = bitcast <2 x i64> %i.r to <16 x i8>
  %i.ah = extractelement <16 x i8> %i.ag, i64 11  ; 2 uses
  %i.ai = bitcast <2 x i64> %i.r to <16 x i8>
  %i.aj = extractelement <16 x i8> %i.ai, i64 10  ; 2 uses
  %i.ak = bitcast <2 x i64> %i.r to <16 x i8>
  %i.al = extractelement <16 x i8> %i.ak, i64 9   ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr4heapNtB2_10HeapBuffer5alloc

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtNtCs4NRVxsYgnAr_4core7unicode12unicode_data11conversions8to_lower(ptr dead_on_unwind noalias noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), i32 noundef range(i32 0, 1114112)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtNtCs4NRVxsYgnAr_4core7unicode12unicode_data11conversions8to_upper(ptr dead_on_unwind noalias noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), i32 noundef range(i32 0, 1114112)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #15

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsg7m2K3K1Fzf_11compact_str(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #15

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr4heapNtB2_10HeapBuffer7realloc(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare { ptr, i64 } @_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr4heapNtB2_10HeapBuffer16alloc_copy_extra(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #14

; Function Attrs: cold noinline nonlazybind uwtable
declare { ptr, i64 } @_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr4heapNtB2_10HeapBuffer10alloc_copy(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter11debug_tuple(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtReNtB6_5Debug3fmtCsg7m2K3K1Fzf_11compact_str(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsc_NtCs4NRVxsYgnAr_4core3fmtNtB5_5ErrorNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB7_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop13outlined_drop(ptr noundef nonnull, i64 noundef) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCs4NRVxsYgnAr_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

attributes #0 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #18 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { noreturn }
attributes #21 = { nounwind memory(inaccessiblemem: readwrite) }
attributes #22 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{i8 0, i8 -38}
!4 = !{}
!5 = !{i64 594170070834264}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!8 = !{i64 0, i64 2}
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 -2147483648, i32 -2147483648}
!12 = !{i32 0, i32 1114112}
!13 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!14 = !{i64 8}
!15 = distinct !{!15, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice"}
!16 = distinct !{!16, !15, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice: argument 0"}
!17 = !{!16}
!18 = distinct !{!18, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr11into_string"}
!19 = distinct !{!19, !18, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr11into_string: argument 0"}
!20 = distinct !{!20, !18, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr11into_string: argument 1"}
!21 = distinct !{!21, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice"}
!22 = distinct !{!22, !21, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice: argument 0"}
!23 = !{!19}
!24 = !{!20}
!25 = !{!22, !20}
!26 = !{!19, !20}
!27 = !{i64 0, i64 -9223372036854775807}
!28 = distinct !{!28, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice"}
!29 = distinct !{!29, !28, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice: argument 0"}
!30 = !{!29}
!31 = distinct !{!31, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice"}
!32 = distinct !{!32, !31, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice: argument 0"}
!33 = !{!32}
!34 = distinct !{!34, !"_RNvMCsg7m2K3K1Fzf_11compact_strNtB2_13CompactString13with_capacity"}
!35 = distinct !{!35, !34, !"_RNvMCsg7m2K3K1Fzf_11compact_strNtB2_13CompactString13with_capacity: argument 0"}
!36 = distinct !{!36, !34, !"_RNvMCsg7m2K3K1Fzf_11compact_strNtB2_13CompactString13with_capacity: argument 1"}
!37 = distinct !{!37, !"_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReEB3_"}
!38 = distinct !{!38, !37, !"_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReEB3_: argument 0"}
!39 = distinct !{!39, !37, !"_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReEB3_: argument 1"}
!40 = distinct !{!40, !37, !"_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReEB3_: argument 2"}
!41 = distinct !{!41, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic"}
!42 = distinct !{!42, !41, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic: argument 2"}
!43 = distinct !{!43, !41, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic: argument 0"}
!44 = distinct !{!44, !41, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic: argument 1"}
!45 = distinct !{!45, !"_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new"}
!46 = distinct !{!46, !45, !"_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new: argument 1"}
!47 = distinct !{!47, !45, !"_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new: argument 0"}
!48 = distinct !{!48, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8push_str"}
!49 = distinct !{!49, !48, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8push_str: argument 0"}
!50 = distinct !{!50, !48, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8push_str: argument 1"}
!51 = distinct !{!51, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsg7m2K3K1Fzf_11compact_str13CompactStringEBD_"}
!52 = distinct !{!52, !51, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsg7m2K3K1Fzf_11compact_str13CompactStringEBD_: argument 0"}
!53 = distinct !{!53, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsg7m2K3K1Fzf_11compact_str4repr4ReprEBF_"}
!54 = distinct !{!54, !53, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsg7m2K3K1Fzf_11compact_str4repr4ReprEBF_: argument 0"}
!55 = distinct !{!55, !"_RNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop"}
!56 = distinct !{!56, !55, !"_RNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop: argument 0"}
!57 = distinct !{!57, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8push_str"}
!58 = distinct !{!58, !57, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8push_str: argument 0"}
!59 = distinct !{!59, !57, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8push_str: argument 1"}
!60 = distinct !{!60, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8push_str"}
!61 = distinct !{!61, !60, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8push_str: argument 0"}
!62 = distinct !{!62, !60, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8push_str: argument 1"}
!63 = !{!35}
!64 = !{!35, !36}
!65 = !{!36}
!66 = !{!"branch_weights", i32 1, i32 4000}
!67 = !{!38}
!68 = !{!39}
!69 = !{!43, !42, !38, !40}
!70 = !{!46, !44, !39}
!71 = !{!47, !43, !42, !38, !40}
!72 = !{!43, !38}
!73 = !{!39, !40}
!74 = !{!49}
!75 = !{!50}
!76 = !{!56, !54, !52}
!77 = !{!58}
!78 = !{!59}
!79 = !{!"branch_weights", i32 4000, i32 3996000}
!80 = !{!61}
!81 = !{!62}
!82 = !{!"branch_weights", !"expected", i32 3219615, i32 2144264033}
!83 = distinct !{!83, !"_RNvCsg7m2K3K1Fzf_11compact_str19convert_while_ascii"}
!84 = distinct !{!84, !83, !"_RNvCsg7m2K3K1Fzf_11compact_str19convert_while_ascii: argument 1"}
!85 = distinct !{!85, !83, !"_RNvCsg7m2K3K1Fzf_11compact_str19convert_while_ascii: argument 0"}
!86 = distinct !{!86, !"_RNvMCsg7m2K3K1Fzf_11compact_strNtB2_13CompactString13with_capacity"}
!87 = distinct !{!87, !86, !"_RNvMCsg7m2K3K1Fzf_11compact_strNtB2_13CompactString13with_capacity: argument 0"}
!88 = distinct !{!88, !86, !"_RNvMCsg7m2K3K1Fzf_11compact_strNtB2_13CompactString13with_capacity: argument 1"}
!89 = distinct !{!89, !"_RNvMCsg7m2K3K1Fzf_11compact_strNtB2_13CompactString18spare_capacity_mut"}
!90 = distinct !{!90, !89, !"_RNvMCsg7m2K3K1Fzf_11compact_strNtB2_13CompactString18spare_capacity_mut: argument 0"}
!91 = distinct !{!91, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsg7m2K3K1Fzf_11compact_str13CompactStringEBD_"}
!92 = distinct !{!92, !91, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsg7m2K3K1Fzf_11compact_str13CompactStringEBD_: argument 0"}
!93 = distinct !{!93, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsg7m2K3K1Fzf_11compact_str4repr4ReprEBF_"}
!94 = distinct !{!94, !93, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsg7m2K3K1Fzf_11compact_str4repr4ReprEBF_: argument 0"}
!95 = distinct !{!95, !"_RNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop"}
!96 = distinct !{!96, !95, !"_RNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop: argument 0"}
!97 = distinct !{!97, !"_RNvMs4_NtCs4NRVxsYgnAr_4core3numh18to_ascii_lowercase"}
!98 = distinct !{!98, !97, !"_RNvMs4_NtCs4NRVxsYgnAr_4core3numh18to_ascii_lowercase: argument 0"}
!99 = distinct !{!99, !"_RNvMs4_NtCs4NRVxsYgnAr_4core3numh18to_ascii_lowercase"}
!100 = distinct !{!100, !99, !"_RNvMs4_NtCs4NRVxsYgnAr_4core3numh18to_ascii_lowercase: argument 0"}
!101 = distinct !{!101, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsg7m2K3K1Fzf_11compact_str13CompactStringEBD_"}
!102 = distinct !{!102, !101, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsg7m2K3K1Fzf_11compact_str13CompactStringEBD_: argument 0"}
!103 = distinct !{!103, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsg7m2K3K1Fzf_11compact_str4repr4ReprEBF_"}
!104 = distinct !{!104, !103, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsg7m2K3K1Fzf_11compact_str4repr4ReprEBF_: argument 0"}
!105 = distinct !{!105, !"_RNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop"}
!106 = distinct !{!106, !105, !"_RNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop: argument 0"}
!107 = distinct !{!107, !"_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!108 = distinct !{!108, !107, !"_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!109 = distinct !{!109, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsg7m2K3K1Fzf_11compact_str"}
!110 = distinct !{!110, !109, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsg7m2K3K1Fzf_11compact_str: argument 0"}
!111 = distinct !{!111, !"_RNvNvMCsg7m2K3K1Fzf_11compact_strNtB4_13CompactString21from_str_to_lowercase19map_uppercase_sigma"}
!112 = distinct !{!112, !111, !"_RNvNvMCsg7m2K3K1Fzf_11compact_strNtB4_13CompactString21from_str_to_lowercase19map_uppercase_sigma: argument 0"}
!113 = distinct !{!113, !111, !"_RNvNvMCsg7m2K3K1Fzf_11compact_strNtB4_13CompactString21from_str_to_lowercase19map_uppercase_sigma: argument 1"}
!114 = distinct !{!114, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!115 = distinct !{!115, !114, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!116 = distinct !{!116, !"_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB5_3RevNtNtNtBb_3str4iter5CharsENtNtNtB9_6traits8iterator8Iterator4findNCINvNvMCsg7m2K3K1Fzf_11compact_strNtB26_13CompactString21from_str_to_lowercase25case_ignorable_then_casedBM_E0EB26_"}
!117 = distinct !{!117, !116, !"_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB5_3RevNtNtNtBb_3str4iter5CharsENtNtNtB9_6traits8iterator8Iterator4findNCINvNvMCsg7m2K3K1Fzf_11compact_strNtB26_13CompactString21from_str_to_lowercase25case_ignorable_then_casedBM_E0EB26_: argument 0"}
!118 = distinct !{!118, !"_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator5rfindNCINvNvMCsg7m2K3K1Fzf_11compact_strNtB1R_13CompactString21from_str_to_lowercase25case_ignorable_then_casedINtNtNtBN_8adapters3rev3RevB3_EE0EB1R_"}
!119 = distinct !{!119, !118, !"_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator5rfindNCINvNvMCsg7m2K3K1Fzf_11compact_strNtB1R_13CompactString21from_str_to_lowercase25case_ignorable_then_casedINtNtNtBN_8adapters3rev3RevB3_EE0EB1R_: argument 0"}
!120 = distinct !{!120, !"_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBH_5rfind5checkcNCINvNvMCsg7m2K3K1Fzf_11compact_strNtB2j_13CompactString21from_str_to_lowercase25case_ignorable_then_casedINtNtNtBN_8adapters3rev3RevB3_EE0E0INtNtNtB9_3ops12control_flow11ControlFlowcEEB2j_"}
!121 = distinct !{!121, !120, !"_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBH_5rfind5checkcNCINvNvMCsg7m2K3K1Fzf_11compact_strNtB2j_13CompactString21from_str_to_lowercase25case_ignorable_then_casedINtNtNtBN_8adapters3rev3RevB3_EE0E0INtNtNtB9_3ops12control_flow11ControlFlowcEEB2j_: argument 0"}
!122 = distinct !{!122, !"_RNvXs0_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back"}
!123 = distinct !{!123, !122, !"_RNvXs0_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back: argument 0"}
!124 = distinct !{!124, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsg7m2K3K1Fzf_11compact_str"}
!125 = distinct !{!125, !124, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsg7m2K3K1Fzf_11compact_str: argument 0"}
!126 = distinct !{!126, !"_RINvMNtCs4NRVxsYgnAr_4core5sliceSm16binary_search_byNCINvB2_20binary_search_by_keymNCINvNtCsg7m2K3K1Fzf_11compact_str12unicode_data11skip_searchKj23_Kj36b_E0E0EB1q_"}
!127 = distinct !{!127, !126, !"_RINvMNtCs4NRVxsYgnAr_4core5sliceSm16binary_search_byNCINvB2_20binary_search_by_keymNCINvNtCsg7m2K3K1Fzf_11compact_str12unicode_data11skip_searchKj23_Kj36b_E0E0EB1q_: argument 0"}
!128 = distinct !{!128, !"_RINvMNtCs4NRVxsYgnAr_4core5sliceSm16binary_search_byNCINvB2_20binary_search_by_keymNCINvNtCsg7m2K3K1Fzf_11compact_str12unicode_data11skip_searchKj16_Kj13b_E0E0EB1q_"}
!129 = distinct !{!129, !128, !"_RINvMNtCs4NRVxsYgnAr_4core5sliceSm16binary_search_byNCINvB2_20binary_search_by_keymNCINvNtCsg7m2K3K1Fzf_11compact_str12unicode_data11skip_searchKj16_Kj13b_E0E0EB1q_: argument 0"}
!130 = distinct !{!130, !"_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!131 = distinct !{!131, !130, !"_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!132 = distinct !{!132, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8push_str"}
!133 = distinct !{!133, !132, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8push_str: argument 0"}
!134 = distinct !{!134, !132, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8push_str: argument 1"}
!135 = distinct !{!135, !"_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator4findNCINvNvMCsg7m2K3K1Fzf_11compact_strNtB1z_13CompactString21from_str_to_lowercase25case_ignorable_then_casedB3_E0EB1z_"}
!136 = distinct !{!136, !135, !"_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator4findNCINvNvMCsg7m2K3K1Fzf_11compact_strNtB1z_13CompactString21from_str_to_lowercase25case_ignorable_then_casedB3_E0EB1z_: argument 0"}
!137 = distinct !{!137, !"_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_4find5checkcNCINvNvMCsg7m2K3K1Fzf_11compact_strNtB20_13CompactString21from_str_to_lowercase25case_ignorable_then_casedB3_E0E0INtNtNtB9_3ops12control_flow11ControlFlowcEEB20_"}
!138 = distinct !{!138, !137, !"_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_4find5checkcNCINvNvMCsg7m2K3K1Fzf_11compact_strNtB20_13CompactString21from_str_to_lowercase25case_ignorable_then_casedB3_E0E0INtNtNtB9_3ops12control_flow11ControlFlowcEEB20_: argument 0"}
!139 = distinct !{!139, !"_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next"}
!140 = distinct !{!140, !139, !"_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next: argument 0"}
!141 = distinct !{!141, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsg7m2K3K1Fzf_11compact_str"}
!142 = distinct !{!142, !141, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsg7m2K3K1Fzf_11compact_str: argument 0"}
!143 = distinct !{!143, !"_RINvMNtCs4NRVxsYgnAr_4core5sliceSm16binary_search_byNCINvB2_20binary_search_by_keymNCINvNtCsg7m2K3K1Fzf_11compact_str12unicode_data11skip_searchKj23_Kj36b_E0E0EB1q_"}
!144 = distinct !{!144, !143, !"_RINvMNtCs4NRVxsYgnAr_4core5sliceSm16binary_search_byNCINvB2_20binary_search_by_keymNCINvNtCsg7m2K3K1Fzf_11compact_str12unicode_data11skip_searchKj23_Kj36b_E0E0EB1q_: argument 0"}
!145 = distinct !{!145, !"_RINvMNtCs4NRVxsYgnAr_4core5sliceSm16binary_search_byNCINvB2_20binary_search_by_keymNCINvNtCsg7m2K3K1Fzf_11compact_str12unicode_data11skip_searchKj16_Kj13b_E0E0EB1q_"}
!146 = distinct !{!146, !145, !"_RINvMNtCs4NRVxsYgnAr_4core5sliceSm16binary_search_byNCINvB2_20binary_search_by_keymNCINvNtCsg7m2K3K1Fzf_11compact_str12unicode_data11skip_searchKj16_Kj13b_E0E0EB1q_: argument 0"}
!147 = distinct !{!147, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8push_str"}
!148 = distinct !{!148, !147, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8push_str: argument 0"}
!149 = distinct !{!149, !147, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8push_str: argument 1"}
!150 = distinct !{!150, !"_RNvMsd_NtCs4NRVxsYgnAr_4core4charNtB5_15CaseMappingIter3new"}
!151 = distinct !{!151, !150, !"_RNvMsd_NtCs4NRVxsYgnAr_4core4charNtB5_15CaseMappingIter3new: argument 1"}
!152 = distinct !{!152, !150, !"_RNvMsd_NtCs4NRVxsYgnAr_4core4charNtB5_15CaseMappingIter3new: argument 0"}
!153 = distinct !{!153, !"_RINvXs3_NtCsg7m2K3K1Fzf_11compact_str4reprNtB6_4ReprINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendcE6extendNtNtBX_4char11ToLowercaseEB8_"}
!154 = distinct !{!154, !153, !"_RINvXs3_NtCsg7m2K3K1Fzf_11compact_str4reprNtB6_4ReprINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendcE6extendNtNtBX_4char11ToLowercaseEB8_: argument 1"}
!155 = distinct !{!155, !153, !"_RINvXs3_NtCsg7m2K3K1Fzf_11compact_str4reprNtB6_4ReprINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendcE6extendNtNtBX_4char11ToLowercaseEB8_: argument 0"}
!156 = distinct !{!156, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectNtNtB8_4char11ToLowercaseNtB2_12IntoIterator9into_iterCsg7m2K3K1Fzf_11compact_str"}
!157 = distinct !{!157, !156, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectNtNtB8_4char11ToLowercaseNtB2_12IntoIterator9into_iterCsg7m2K3K1Fzf_11compact_str: argument 1"}
!158 = distinct !{!158, !156, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectNtNtB8_4char11ToLowercaseNtB2_12IntoIterator9into_iterCsg7m2K3K1Fzf_11compact_str: argument 0"}
!159 = distinct !{!159, !"_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw"}
!160 = distinct !{!160, !159, !"_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw: argument 0"}
!161 = distinct !{!161, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8push_str"}
!162 = distinct !{!162, !161, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8push_str: argument 0"}
!163 = distinct !{!163, !161, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8push_str: argument 1"}
!164 = !{!84}
!165 = !{!85, !84}
!166 = !{!87}
!167 = !{!87, !88, !85}
!168 = !{!87, !85}
!169 = !{!88, !85, !84}
!170 = !{!90}
!171 = !{!85}
!172 = !{!96, !94, !92}
!173 = !{!98}
!174 = !{!100}
!175 = !{!106, !104, !102}
!176 = !{!110, !108}
!177 = !{!112}
!178 = !{!113}
!179 = !{!115, !112}
!180 = !{!121, !119, !117, !112, !113}
!181 = !{!125, !123, !121, !119, !117, !113}
!182 = !{!127, !121, !119, !117, !112, !113}
!183 = !{!129, !112, !113}
!184 = !{!112, !113}
!185 = !{!131, !112}
!186 = !{!133, !113}
!187 = !{!134, !112}
!188 = !{!142, !140, !138, !136, !113}
!189 = !{!144, !138, !136, !112, !113}
!190 = !{!138, !136, !112, !113}
!191 = !{!146, !112, !113}
!192 = !{!148, !113}
!193 = !{!149, !112}
!194 = !{!151}
!195 = !{!152}
!196 = !{!155, !154}
!197 = !{!155}
!198 = !{!158, !157}
!199 = !{!154}
!200 = !{!160}
!201 = !{!162, !155}
!202 = !{!163, !154}
!203 = distinct !{!203, !"_RNvCsg7m2K3K1Fzf_11compact_str19convert_while_ascii"}
!204 = distinct !{!204, !203, !"_RNvCsg7m2K3K1Fzf_11compact_str19convert_while_ascii: argument 1"}
!205 = distinct !{!205, !203, !"_RNvCsg7m2K3K1Fzf_11compact_str19convert_while_ascii: argument 0"}
!206 = distinct !{!206, !"_RNvMCsg7m2K3K1Fzf_11compact_strNtB2_13CompactString13with_capacity"}
!207 = distinct !{!207, !206, !"_RNvMCsg7m2K3K1Fzf_11compact_strNtB2_13CompactString13with_capacity: argument 0"}
!208 = distinct !{!208, !206, !"_RNvMCsg7m2K3K1Fzf_11compact_strNtB2_13CompactString13with_capacity: argument 1"}
!209 = distinct !{!209, !"_RNvMCsg7m2K3K1Fzf_11compact_strNtB2_13CompactString18spare_capacity_mut"}
!210 = distinct !{!210, !209, !"_RNvMCsg7m2K3K1Fzf_11compact_strNtB2_13CompactString18spare_capacity_mut: argument 0"}
!211 = distinct !{!211, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsg7m2K3K1Fzf_11compact_str13CompactStringEBD_"}
!212 = distinct !{!212, !211, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsg7m2K3K1Fzf_11compact_str13CompactStringEBD_: argument 0"}
!213 = distinct !{!213, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsg7m2K3K1Fzf_11compact_str4repr4ReprEBF_"}
!214 = distinct !{!214, !213, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsg7m2K3K1Fzf_11compact_str4repr4ReprEBF_: argument 0"}
!215 = distinct !{!215, !"_RNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop"}
!216 = distinct !{!216, !215, !"_RNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop: argument 0"}
!217 = distinct !{!217, !"_RNvMs4_NtCs4NRVxsYgnAr_4core3numh18to_ascii_uppercase"}
!218 = distinct !{!218, !217, !"_RNvMs4_NtCs4NRVxsYgnAr_4core3numh18to_ascii_uppercase: argument 0"}
!219 = distinct !{!219, !"_RNvMs4_NtCs4NRVxsYgnAr_4core3numh18to_ascii_uppercase"}
!220 = distinct !{!220, !219, !"_RNvMs4_NtCs4NRVxsYgnAr_4core3numh18to_ascii_uppercase: argument 0"}
!221 = distinct !{!221, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsg7m2K3K1Fzf_11compact_str13CompactStringEBD_"}
!222 = distinct !{!222, !221, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsg7m2K3K1Fzf_11compact_str13CompactStringEBD_: argument 0"}
!223 = distinct !{!223, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsg7m2K3K1Fzf_11compact_str4repr4ReprEBF_"}
!224 = distinct !{!224, !223, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsg7m2K3K1Fzf_11compact_str4repr4ReprEBF_: argument 0"}
!225 = distinct !{!225, !"_RNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop"}
!226 = distinct !{!226, !225, !"_RNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop: argument 0"}
!227 = distinct !{!227, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsg7m2K3K1Fzf_11compact_str"}
!228 = distinct !{!228, !227, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsg7m2K3K1Fzf_11compact_str: argument 0"}
!229 = distinct !{!229, !"_RNvMsd_NtCs4NRVxsYgnAr_4core4charNtB5_15CaseMappingIter3new"}
!230 = distinct !{!230, !229, !"_RNvMsd_NtCs4NRVxsYgnAr_4core4charNtB5_15CaseMappingIter3new: argument 1"}
!231 = distinct !{!231, !229, !"_RNvMsd_NtCs4NRVxsYgnAr_4core4charNtB5_15CaseMappingIter3new: argument 0"}
!232 = distinct !{!232, !"_RINvXs3_NtCsg7m2K3K1Fzf_11compact_str4reprNtB6_4ReprINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendcE6extendNtNtBX_4char11ToUppercaseEB8_"}
!233 = distinct !{!233, !232, !"_RINvXs3_NtCsg7m2K3K1Fzf_11compact_str4reprNtB6_4ReprINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendcE6extendNtNtBX_4char11ToUppercaseEB8_: argument 1"}
!234 = distinct !{!234, !232, !"_RINvXs3_NtCsg7m2K3K1Fzf_11compact_str4reprNtB6_4ReprINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendcE6extendNtNtBX_4char11ToUppercaseEB8_: argument 0"}
!235 = distinct !{!235, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectNtNtB8_4char11ToUppercaseNtB2_12IntoIterator9into_iterCsg7m2K3K1Fzf_11compact_str"}
!236 = distinct !{!236, !235, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectNtNtB8_4char11ToUppercaseNtB2_12IntoIterator9into_iterCsg7m2K3K1Fzf_11compact_str: argument 1"}
!237 = distinct !{!237, !235, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectNtNtB8_4char11ToUppercaseNtB2_12IntoIterator9into_iterCsg7m2K3K1Fzf_11compact_str: argument 0"}
!238 = distinct !{!238, !"_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw"}
!239 = distinct !{!239, !238, !"_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw: argument 0"}
!240 = distinct !{!240, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8push_str"}
!241 = distinct !{!241, !240, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8push_str: argument 0"}
!242 = distinct !{!242, !240, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8push_str: argument 1"}
!243 = !{!204}
!244 = !{!205, !204}
!245 = !{!207}
!246 = !{!207, !208, !205}
!247 = !{!207, !205}
!248 = !{!208, !205, !204}
!249 = !{!210}
!250 = !{!205}
!251 = !{!216, !214, !212}
!252 = !{!218}
!253 = !{!220}
!254 = !{!226, !224, !222}
!255 = !{!228}
!256 = !{!230}
!257 = !{!231}
!258 = !{!234, !233}
!259 = !{!234}
!260 = !{!237, !236}
!261 = !{!233}
!262 = !{!239}
!263 = !{!241, !234}
!264 = !{!242, !233}
!265 = distinct !{!265, !"_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw"}
!266 = distinct !{!266, !265, !"_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw: argument 0"}
!267 = distinct !{!267, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8push_str"}
!268 = distinct !{!268, !267, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8push_str: argument 0"}
!269 = distinct !{!269, !267, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8push_str: argument 1"}
!270 = !{!266}
!271 = !{!268}
!272 = !{!269}
!273 = distinct !{!273, !"_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw"}
!274 = distinct !{!274, !273, !"_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw: argument 0"}
!275 = !{!274}
!276 = distinct !{!276, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic"}
!277 = distinct !{!277, !276, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic: argument 2"}
!278 = distinct !{!278, !276, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic: argument 0"}
!279 = distinct !{!279, !276, !"_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic: argument 1"}
!280 = distinct !{!280, !"_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new"}
!281 = distinct !{!281, !280, !"_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new: argument 1"}
!282 = distinct !{!282, !280, !"_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new: argument 0"}
end_hunk_1
