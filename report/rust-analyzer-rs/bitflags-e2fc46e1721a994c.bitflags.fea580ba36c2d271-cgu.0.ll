Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/bitflags-e2fc46e1721a994c.bitflags.fea580ba36c2d271-cgu.0?download=true
inline.NumInlined: 66
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvXs4_NtCslRtAOKA59qD_8bitflags6traitshNtNtB7_6parser8ParseHex9parse_hex:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.166.i, i64 1
  %i.p = add nsw i64 %.sroa.15.165.i, -1          ; 2 uses
  %i.q = shl nuw i8 %.sroa.043.064.i, 4
  %i.r = trunc nuw nsw i32 %.sroa.02.0.i.i to i8
  %i.s = or disjoint i8 %i.q, %i.r                ; 2 uses
  %.not53.i = icmp eq i64 %i.p, 0
  br i1 %.not53.i, label %_RNvMsx_NtCshzWfHUSfYae_4core3numh27from_ascii_bytes_radix_impl.exit, label %.preheader59.i

.preheader59.i:                                   ; preds = %bb.c, %bb.e
  %.sroa.0.166.i = phi ptr [ %i.o, %bb.e ], [ %.sroa.0.0.i, %bb.c ] ; 2 uses
  %.sroa.15.165.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.15.0.i, %bb.c ]
  %.sroa.043.064.i = phi i8 [ %i.s, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %i.t = icmp ugt i8 %.sroa.043.064.i, 15
  br i1 %i.t, label %_RNvMsx_NtCshzWfHUSfYae_4core3numh27from_ascii_bytes_radix_impl.exit, label %bb.f, !prof !5

bb.f:                                             ; preds = %.preheader59.i
  %i.u = load i8, ptr %.sroa.0.166.i, align 1, !alias.scope !8, !noundef !4 ; 2 uses
  %i.v = zext i8 %i.u to i32                      ; 2 uses
  %i.w = icmp ugt i8 %i.u, 57
  %i.x = add nsw i32 %i.v, -65
  %i.y = and i32 %i.x, -33
  %i.z = add nuw nsw i32 %i.y, 10
  %i.aa = add nsw i32 %i.v, -48
  %.sroa.02.0.i.i = select i1 %i.w, i32 %i.z, i32 %i.aa ; 2 uses
  %i.ab = icmp ugt i32 %.sroa.02.0.i.i, 15
  br i1 %i.ab, label %_RNvMsx_NtCshzWfHUSfYae_4core3numh27from_ascii_bytes_radix_impl.exit, label %bb.e

.lr.ph.i:                                         ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1
  %.pre = load i8, ptr %i.ac, align 1, !alias.scope !8 ; 2 uses
  %i.ad = zext i8 %.pre to i32                    ; 2 uses
  %i.ae = icmp ugt i8 %.pre, 57
  %i.af = add nsw i32 %i.ad, -65
  %i.ag = and i32 %i.af, -33
  %i.ah = add nuw nsw i32 %i.ag, 10
  %i.ai = add nsw i32 %i.ad, -48
  %.sroa.02.0.i57.i = select i1 %i.ae, i32 %i.ah, i32 %i.ai ; 2 uses
  %i.aj = icmp ugt i32 %.sroa.02.0.i57.i, 15
  br i1 %i.aj, label %_RNvMsx_NtCshzWfHUSfYae_4core3numh27from_ascii_bytes_radix_impl.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.ak = shl nuw i8 %i.n, 4
  %i.al = trunc nuw nsw i32 %.sroa.02.0.i57.i to i8
  %i.am = or disjoint i8 %i.ak, %i.al
  br label %_RNvMsx_NtCshzWfHUSfYae_4core3numh27from_ascii_bytes_radix_impl.exit

_RNvMsx_NtCshzWfHUSfYae_4core3numh27from_ascii_bytes_radix_impl.exit: ; preds = %bb.f, %.preheader59.i, %bb.e, %.lr.ph.preheader.i, %bb.d, %bb.g, %.lr.ph.i, %bb.a, %bb.b, %bb.b, %.preheader.i
  %.pn = phi { i1, i8 } [ { i1 true, i8 poison }, %bb.b ], [ { i1 false, i8 poison }, %.preheader.i ], [ { i1 true, i8 poison }, %bb.a ], [ { i1 true, i8 poison }, %.lr.ph.i ], [ { i1 true, i8 poison }, %bb.b ], [ { i1 true, i8 poison }, %.lr.ph.preheader.i ], [ { i1 false, i8 poison }, %bb.d ], [ { i1 false, i8 poison }, %bb.g ], [ { i1 false, i8 poison }, %bb.e ], [ { i1 true, i8 poison }, %bb.f ], [ { i1 true, i8 poison }, %.preheader59.i ]
  %i.an = phi i8 [ 2, %bb.b ], [ 0, %.preheader.i ], [ 2, %bb.a ], [ 2, %.lr.ph.i ], [ 2, %bb.b ], [ 2, %.lr.ph.preheader.i ], [ %i.n, %bb.d ], [ %i.am, %bb.g ], [ %i.s, %bb.e ], [ 2, %bb.f ], [ 2, %.preheader59.i ]
  %i.ao = insertvalue { i1, i8 } %.pn, i8 %i.an, 1
  ret { i1, i8 } %i.ao
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define { i1, i8 } @_RNvXs5_NtCslRtAOKA59qD_8bitflags6traitsaNtNtB7_6parser8ParseHex9parse_hex(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  switch i64 %1, label %thread-pre-split.i [
    i64 0, label %_RNvMsl_NtCshzWfHUSfYae_4core3numa27from_ascii_bytes_radix_impl.exit.thread
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !alias.scope !11, !noundef !4 ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %_RNvMsl_NtCshzWfHUSfYae_4core3numa27from_ascii_bytes_radix_impl.exit.thread
    i8 45, label %_RNvMsl_NtCshzWfHUSfYae_4core3numa27from_ascii_bytes_radix_impl.exit.thread
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %0, align 1, !alias.scope !11
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.b = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.a, %bb.b ]
  switch i8 %i.b, label %bb.j [
    i8 43, label %bb.d
    i8 45, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = add nsw i64 %1, -1
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.f = add nsw i64 %1, -1                       ; 2 uses
  %i.g = icmp samesign ult i64 %1, 3
  br i1 %i.g, label %bb.f, label %.lr.ph.i.a

bb.f:                                             ; preds = %bb.e
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %_RNvMsl_NtCshzWfHUSfYae_4core3numa27from_ascii_bytes_radix_impl.exit.thread, label %.lr.ph143.i

.lr.ph.i.a:                                       ; preds = %bb.e, %bb.i
  %.sroa.0.1133.i = phi ptr [ %i.i, %bb.i ], [ %i.e, %bb.e ] ; 2 uses
  %.sroa.26.1132.i = phi i64 [ %i.j, %bb.i ], [ %i.f, %bb.e ]
  %.sroa.085.0131.i = phi i8 [ %i.y, %bb.i ], [ 0, %bb.e ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1133.i, i64 1
  %i.j = add nsw i64 %.sroa.26.1132.i, -1         ; 2 uses
  %i.k = shl nsw i8 %.sroa.085.0131.i, 4
  %i.l = add i8 %.sroa.085.0131.i, -8
  %i.m = icmp ult i8 %i.l, -16
  br i1 %i.m, label %_RNvMsl_NtCshzWfHUSfYae_4core3numa27from_ascii_bytes_radix_impl.exit.thread, label %bb.g, !prof !5

bb.g:                                             ; preds = %.lr.ph.i.a
  %i.n = load i8, ptr %.sroa.0.1133.i, align 1, !alias.scope !11, !noundef !4 ; 2 uses
  %i.o = zext i8 %i.n to i32                      ; 2 uses
  %i.p = icmp ugt i8 %i.n, 57
  %i.q = add nsw i32 %i.o, -65
  %i.r = and i32 %i.q, -33
  %i.s = add nuw nsw i32 %i.r, 10
  %i.t = add nsw i32 %i.o, -48
  %.sroa.02.0.i.i = select i1 %i.p, i32 %i.s, i32 %i.t ; 2 uses
  %i.u = icmp ult i32 %.sroa.02.0.i.i, 16
  br i1 %i.u, label %bb.h, label %_RNvMsl_NtCshzWfHUSfYae_4core3numa27from_ascii_bytes_radix_impl.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.v = trunc nuw nsw i32 %.sroa.02.0.i.i to i8
  %i.w = tail call { i8, i1 } @llvm.ssub.with.overflow.i8(i8 %i.k, i8 %i.v) ; 2 uses
  %i.x = extractvalue { i8, i1 } %i.w, 1
  br i1 %i.x, label %_RNvMsl_NtCshzWfHUSfYae_4core3numa27from_ascii_bytes_radix_impl.exit.thread, label %bb.i, !prof !5

bb.i:                                             ; preds = %bb.h
  %i.y = extractvalue { i8, i1 } %i.w, 0          ; 2 uses
  %.not103.i = icmp eq i64 %i.j, 0
  br i1 %.not103.i, label %_RNvMsl_NtCshzWfHUSfYae_4core3numa27from_ascii_bytes_radix_impl.exit.thread, label %.lr.ph.i.a

.lr.ph143.i:                                      ; preds = %bb.f
  %i.z = load i8, ptr %i.e, align 1, !alias.scope !11, !noundef !4 ; 2 uses
  %i.aa = zext i8 %i.z to i32                     ; 2 uses
  %i.ab = icmp ugt i8 %i.z, 57
  %i.ac = add nsw i32 %i.aa, -65
  %i.ad = and i32 %i.ac, -33
  %i.ae = add nuw nsw i32 %i.ad, 10
  %i.af = add nsw i32 %i.aa, -48
  %.sroa.02.0.i110.i = select i1 %i.ab, i32 %i.ae, i32 %i.af ; 2 uses
  %i.ag = icmp ult i32 %.sroa.02.0.i110.i, 16
  br i1 %i.ag, label %..loopexit121_crit_edge.i, label %_RNvMsl_NtCshzWfHUSfYae_4core3numa27from_ascii_bytes_radix_impl.exit.thread

..loopexit121_crit_edge.i:                        ; preds = %.lr.ph143.i
  %i.ah = trunc nuw nsw i32 %.sroa.02.0.i110.i to i8
  %i.ai = sub nsw i8 0, %i.ah
  br label %_RNvMsl_NtCshzWfHUSfYae_4core3numa27from_ascii_bytes_radix_impl.exit.thread

bb.j:                                             ; preds = %bb.d, %bb.c
  %.sroa.26.0.i = phi i64 [ %i.d, %bb.d ], [ %1, %bb.c ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ %i.c, %bb.d ], [ %0, %bb.c ] ; 2 uses
  %i.aj = icmp samesign ult i64 %.sroa.26.0.i, 2
  br i1 %i.aj, label %bb.k, label %.preheader.i

bb.k:                                             ; preds = %bb.j
  %i.ak = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %i.ak, label %_RNvMsl_NtCshzWfHUSfYae_4core3numa27from_ascii_bytes_radix_impl.exit.thread, label %_RNvMsl_NtCshzWfHUSfYae_4core3numa27from_ascii_bytes_radix_impl.exit

bb.l:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.3151.i, i64 1
  %i.am = add nsw i64 %.sroa.26.3150.i, -1        ; 2 uses
  %i.an = shl nuw nsw i8 %.sroa.085.3149.i, 4
  %i.ao = trunc nuw nsw i32 %.sroa.02.0.i112.i to i8
  %i.ap = or disjoint i8 %i.an, %i.ao             ; 2 uses
  %.not105.i = icmp eq i64 %i.am, 0
  br i1 %.not105.i, label %_RNvMsl_NtCshzWfHUSfYae_4core3numa27from_ascii_bytes_radix_impl.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.j, %bb.l
  %.sroa.0.3151.i = phi ptr [ %i.al, %bb.l ], [ %.sroa.0.0.i, %bb.j ] ; 2 uses
  %.sroa.26.3150.i = phi i64 [ %i.am, %bb.l ], [ %.sroa.26.0.i, %bb.j ]
  %.sroa.085.3149.i = phi i8 [ %i.ap, %bb.l ], [ 0, %bb.j ] ; 2 uses
  %i.aq = icmp sgt i8 %.sroa.085.3149.i, 7
  br i1 %i.aq, label %_RNvMsl_NtCshzWfHUSfYae_4core3numa27from_ascii_bytes_radix_impl.exit.thread, label %bb.m, !prof !5

bb.m:                                             ; preds = %.preheader.i
  %i.ar = load i8, ptr %.sroa.0.3151.i, align 1, !alias.scope !11, !noundef !4 ; 2 uses
  %i.as = zext i8 %i.ar to i32                    ; 2 uses
  %i.at = icmp ugt i8 %i.ar, 57
  %i.au = add nsw i32 %i.as, -65
  %i.av = and i32 %i.au, -33
  %i.aw = add nuw nsw i32 %i.av, 10
  %i.ax = add nsw i32 %i.as, -48
  %.sroa.02.0.i112.i = select i1 %i.at, i32 %i.aw, i32 %i.ax ; 2 uses
  %i.ay = icmp ugt i32 %.sroa.02.0.i112.i, 15
  br i1 %i.ay, label %_RNvMsl_NtCshzWfHUSfYae_4core3numa27from_ascii_bytes_radix_impl.exit.thread, label %bb.l

_RNvMsl_NtCshzWfHUSfYae_4core3numa27from_ascii_bytes_radix_impl.exit: ; preds = %bb.k
  %i.az = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !11, !noundef !4 ; 2 uses
  %i.ba = zext i8 %i.az to i32                    ; 2 uses
  %i.bb = icmp ugt i8 %i.az, 57
  %i.bc = add nsw i32 %i.ba, -65
  %i.bd = and i32 %i.bc, -33
  %i.be = add nuw nsw i32 %i.bd, 10
  %i.bf = add nsw i32 %i.ba, -48
  %.sroa.02.0.i116.i = select i1 %i.bb, i32 %i.be, i32 %i.bf
  %.sroa.02.0.i116.i.fr = freeze i32 %.sroa.02.0.i116.i ; 2 uses
  %i.bg = icmp ugt i32 %.sroa.02.0.i116.i.fr, 15  ; 2 uses
  %i.bh = trunc nuw nsw i32 %.sroa.02.0.i116.i.fr to i8
  %i.bi = insertvalue { i1, i8 } poison, i1 %i.bg, 0
  %spec.select = select i1 %i.bg, i8 2, i8 %i.bh
  br label %_RNvMsl_NtCshzWfHUSfYae_4core3numa27from_ascii_bytes_radix_impl.exit.thread

_RNvMsl_NtCshzWfHUSfYae_4core3numa27from_ascii_bytes_radix_impl.exit.thread: ; preds = %bb.i, %bb.g, %bb.h, %.lr.ph.i.a, %bb.l, %bb.m, %.preheader.i, %..loopexit121_crit_edge.i, %bb.k, %bb.f, %.lr.ph143.i, %bb.a, %bb.b, %bb.b, %_RNvMsl_NtCshzWfHUSfYae_4core3numa27from_ascii_bytes_radix_impl.exit
  %.pn = phi { i1, i8 } [ { i1 true, i8 poison }, %.preheader.i ], [ %i.bi, %_RNvMsl_NtCshzWfHUSfYae_4core3numa27from_ascii_bytes_radix_impl.exit ], [ { i1 false, i8 poison }, %bb.k ], [ { i1 false, i8 poison }, %..loopexit121_crit_edge.i ], [ { i1 true, i8 poison }, %bb.b ], [ { i1 true, i8 poison }, %bb.b ], [ { i1 true, i8 poison }, %bb.a ], [ { i1 true, i8 poison }, %.lr.ph143.i ], [ { i1 false, i8 poison }, %bb.f ], [ { i1 false, i8 poison }, %bb.l ], [ { i1 true, i8 poison }, %bb.m ], [ { i1 false, i8 poison }, %bb.i ], [ { i1 true, i8 poison }, %bb.h ], [ { i1 true, i8 poison }, %.lr.ph.i.a ], [ { i1 true, i8 poison }, %bb.g ]
  %i.bj = phi i8 [ 2, %.preheader.i ], [ %spec.select, %_RNvMsl_NtCshzWfHUSfYae_4core3numa27from_ascii_bytes_radix_impl.exit ], [ 0, %bb.k ], [ %i.ai, %..loopexit121_crit_edge.i ], [ 2, %bb.b ], [ 2, %bb.b ], [ 2, %bb.a ], [ 2, %.lr.ph143.i ], [ 0, %bb.f ], [ %i.ap, %bb.l ], [ 2, %bb.m ], [ %i.y, %bb.i ], [ 2, %bb.h ], [ 2, %.lr.ph.i.a ], [ 2, %bb.g ]
  %i.bk = insertvalue { i1, i8 } %.pn, i8 %i.bj, 1
  ret { i1, i8 } %i.bk
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RNvXsA_NtCslRtAOKA59qD_8bitflags6traitsoNtNtB7_6parser8ParseHex9parse_hex(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 16 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  switch i64 %2, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !alias.scope !15, !noalias !16, !noundef !4 ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %1, align 1, !alias.scope !15, !noalias !16
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.b = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.a, %bb.b ]
  %cond.i = icmp eq i8 %i.b, 43                   ; 2 uses
  %i.c = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %2, %i.c            ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.d = icmp samesign ult i64 %.sroa.15.0.i, 33
  br i1 %i.d, label %.preheader.i, label %.preheader58.i

.preheader.i:                                     ; preds = %bb.c
  %.not5369.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5369.i, label %_RNvMsF_NtCshzWfHUSfYae_4core3numo27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.168.i, i64 1
  %i.f = add nsw i64 %.sroa.15.167.i, -1          ; 2 uses
  %i.g = shl nuw i128 %.sroa.042.066.i, 4
  %i.h = zext nneg i32 %.sroa.02.0.i.i to i128
  %i.i = or disjoint i128 %i.g, %i.h              ; 2 uses
  %.not52.i = icmp eq i64 %i.f, 0
  br i1 %.not52.i, label %_RNvMsF_NtCshzWfHUSfYae_4core3numo27from_ascii_bytes_radix_impl.exit, label %.preheader58.i

.preheader58.i:                                   ; preds = %bb.c, %bb.d
  %.sroa.0.168.i = phi ptr [ %i.e, %bb.d ], [ %.sroa.0.0.i, %bb.c ] ; 2 uses
  %.sroa.15.167.i = phi i64 [ %i.f, %bb.d ], [ %.sroa.15.0.i, %bb.c ]
  %.sroa.042.066.i = phi i128 [ %i.i, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.j = icmp ugt i128 %.sroa.042.066.i, 21267647932558653966460912964485513215
  br i1 %i.j, label %.loopexit, label %bb.e, !prof !5

bb.e:                                             ; preds = %.preheader58.i
  %i.k = load i8, ptr %.sroa.0.168.i, align 1, !alias.scope !15, !noalias !16, !noundef !4 ; 2 uses
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %i.m = icmp ugt i8 %i.k, 57
  %i.n = add nsw i32 %i.l, -65
  %i.o = and i32 %i.n, -33
  %i.p = add nuw nsw i32 %i.o, 10
  %i.q = add nsw i32 %i.l, -48
  %.sroa.02.0.i.i = select i1 %i.m, i32 %i.p, i32 %i.q ; 2 uses
  %i.r = icmp ult i32 %.sroa.02.0.i.i, 16
  br i1 %i.r, label %bb.d, label %.loopexit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.f
  %.sroa.0.272.i = phi ptr [ %i.ac, %bb.f ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.15.271.i = phi i64 [ %i.ab, %bb.f ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.270.i = phi i128 [ %i.ae, %bb.f ], [ 0, %.preheader.i ]
  %i.s = load i8, ptr %.sroa.0.272.i, align 1, !alias.scope !15, !noalias !16, !noundef !4 ; 2 uses
  %i.t = zext i8 %i.s to i32                      ; 2 uses
  %i.u = icmp ugt i8 %i.s, 57
  %i.v = add nsw i32 %i.t, -65
  %i.w = and i32 %i.v, -33
  %i.x = add nuw nsw i32 %i.w, 10
  %i.y = add nsw i32 %i.t, -48
  %.sroa.02.0.i56.i = select i1 %i.u, i32 %i.x, i32 %i.y ; 2 uses
  %i.z = icmp ult i32 %.sroa.02.0.i56.i, 16
  br i1 %i.z, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.lr.ph.i
  %i.aa = shl i128 %.sroa.042.270.i, 4
  %i.ab = add nsw i64 %.sroa.15.271.i, -1         ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.272.i, i64 1
  %i.ad = zext nneg i32 %.sroa.02.0.i56.i to i128
  %i.ae = or disjoint i128 %i.aa, %i.ad           ; 2 uses
  %.not53.i = icmp eq i64 %i.ab, 0
  br i1 %.not53.i, label %_RNvMsF_NtCshzWfHUSfYae_4core3numo27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.loopexit:                                        ; preds = %.preheader58.i, %bb.e, %.lr.ph.i, %bb.a, %bb.b, %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.af, align 1
  br label %bb.g

_RNvMsF_NtCshzWfHUSfYae_4core3numo27from_ascii_bytes_radix_impl.exit: ; preds = %bb.d, %bb.f, %.preheader.i
  %.sroa.91.0 = phi i128 [ %i.ae, %bb.f ], [ 0, %.preheader.i ], [ %i.i, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %.sroa.91.0, ptr %i.ag, align 16
  br label %bb.g

bb.g:                                             ; preds = %_RNvMsF_NtCshzWfHUSfYae_4core3numo27from_ascii_bytes_radix_impl.exit, %.loopexit
  %storemerge = phi i8 [ 0, %_RNvMsF_NtCshzWfHUSfYae_4core3numo27from_ascii_bytes_radix_impl.exit ], [ 1, %.loopexit ]
  store i8 %storemerge, ptr %0, align 16
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RNvXsB_NtCslRtAOKA59qD_8bitflags6traitsnNtNtB7_6parser8ParseHex9parse_hex(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 16 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  switch i64 %2, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !alias.scope !20, !noalias !21, !noundef !4 ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %1, align 1, !alias.scope !20, !noalias !21
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.b = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.a, %bb.b ]
  switch i8 %i.b, label %bb.j [
    i8 43, label %bb.d
    i8 45, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = add nsw i64 %2, -1
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.f = add nsw i64 %2, -1                       ; 3 uses
  %i.g = icmp samesign ult i64 %2, 33
  br i1 %i.g, label %.preheader119.i, label %.lr.ph.i.a

.preheader119.i:                                  ; preds = %bb.e
  %.not103140.i = icmp eq i64 %i.f, 0
  br i1 %.not103140.i, label %_RNvMst_NtCshzWfHUSfYae_4core3numn27from_ascii_bytes_radix_impl.exit, label %.lr.ph144.i

.lr.ph.i.a:                                       ; preds = %bb.e, %bb.h
  %.sroa.0.1139.i = phi ptr [ %i.h, %bb.h ], [ %i.e, %bb.e ] ; 2 uses
  %.sroa.26.1138.i = phi i64 [ %i.i, %bb.h ], [ %i.f, %bb.e ]
  %.sroa.084.0137.i = phi i128 [ %i.x, %bb.h ], [ 0, %bb.e ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.1139.i, i64 1
  %i.i = add nsw i64 %.sroa.26.1138.i, -1         ; 2 uses
  %i.j = shl nsw i128 %.sroa.084.0137.i, 4
  %i.k = add i128 %.sroa.084.0137.i, -10633823966279326983230456482242756608
  %i.l = icmp ult i128 %i.k, -21267647932558653966460912964485513216
  br i1 %i.l, label %.loopexit, label %bb.f, !prof !5

bb.f:                                             ; preds = %.lr.ph.i.a
  %i.m = load i8, ptr %.sroa.0.1139.i, align 1, !alias.scope !20, !noalias !21, !noundef !4 ; 2 uses
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %i.o = icmp ugt i8 %i.m, 57
  %i.p = add nsw i32 %i.n, -65
  %i.q = and i32 %i.p, -33
  %i.r = add nuw nsw i32 %i.q, 10
  %i.s = add nsw i32 %i.n, -48
  %.sroa.02.0.i.i = select i1 %i.o, i32 %i.r, i32 %i.s ; 2 uses
  %i.t = icmp ult i32 %.sroa.02.0.i.i, 16
  br i1 %i.t, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.u = zext nneg i32 %.sroa.02.0.i.i to i128
  %i.v = tail call { i128, i1 } @llvm.ssub.with.overflow.i128(i128 %i.j, i128 %i.u) ; 2 uses
  %i.w = extractvalue { i128, i1 } %i.v, 1
  br i1 %i.w, label %.loopexit, label %bb.h, !prof !5

bb.h:                                             ; preds = %bb.g
  %i.x = extractvalue { i128, i1 } %i.v, 0        ; 2 uses
  %.not102.i = icmp eq i64 %i.i, 0
  br i1 %.not102.i, label %_RNvMst_NtCshzWfHUSfYae_4core3numn27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i.a

.lr.ph144.i:                                      ; preds = %.preheader119.i, %bb.i
  %.sroa.0.2143.i = phi ptr [ %i.ai, %bb.i ], [ %i.e, %.preheader119.i ] ; 2 uses
  %.sroa.26.2142.i = phi i64 [ %i.ah, %bb.i ], [ %i.f, %.preheader119.i ]
  %.sroa.084.2141.i = phi i128 [ %i.ak, %bb.i ], [ 0, %.preheader119.i ]
  %i.y = load i8, ptr %.sroa.0.2143.i, align 1, !alias.scope !20, !noalias !21, !noundef !4 ; 2 uses
  %i.z = zext i8 %i.y to i32                      ; 2 uses
  %i.aa = icmp ugt i8 %i.y, 57
  %i.ab = add nsw i32 %i.z, -65
  %i.ac = and i32 %i.ab, -33
  %i.ad = add nuw nsw i32 %i.ac, 10
  %i.ae = add nsw i32 %i.z, -48
  %.sroa.02.0.i108.i = select i1 %i.aa, i32 %i.ad, i32 %i.ae ; 2 uses
  %i.af = icmp ult i32 %.sroa.02.0.i108.i, 16
  br i1 %i.af, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.lr.ph144.i
  %i.ag = shl i128 %.sroa.084.2141.i, 4
  %i.ah = add nsw i64 %.sroa.26.2142.i, -1        ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.2143.i, i64 1
end_hunk_0
