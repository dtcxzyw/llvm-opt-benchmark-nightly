Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/multiaddr-75034a92ec41c6d9.multiaddr.841fa8a9871b4e9a-cgu.0?download=true
inline.NumInlined: 153
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl:bb.a
bb.i:                                             ; preds = %.lr.ph.2
  %i.am = mul nuw i16 %i.ag, 10
  %i.an = trunc nuw nsw i32 %i.ak to i16
  %i.ao = add nuw nsw i16 %i.am, %i.an            ; 2 uses
  %.not54.2 = icmp eq i64 %.sroa.15.0, 3
  br i1 %.not54.2, label %.loopexit, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 3
  %i.aq = load i8, ptr %i.ap, align 1, !noundef !5
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nsw i32 %i.ar, -48                  ; 2 uses
  %i.at = icmp ult i32 %i.as, 10
  br i1 %i.at, label %bb.j, label %.loopexit57

bb.j:                                             ; preds = %.lr.ph.3
  %i.au = mul i16 %i.ao, 10
  %i.av = trunc nuw nsw i32 %i.as to i16
  %i.aw = add i16 %i.au, %i.av
  br label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsbli3iz7XG76_9multiaddr8protocol10read_onion(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph.split.preheader.i.i:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [10 x i8], align 1                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.c, %.lr.ph.split.preheader.i.i
  %i.i = phi i64 [ %i.w, %bb.c ], [ 0, %.lr.ph.split.preheader.i.i ] ; 6 uses
  %i.j = sub nuw i64 %2, %i.i                     ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.i ; 2 uses
  %i.l = icmp samesign ult i64 %i.j, 16
  br i1 %i.l, label %.preheader.i.i.i, label %bb.a

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i.i
  %.not.i.i.i = icmp eq i64 %2, %i.i
  br i1 %.not.i.i.i, label %.loopexit15.i.i, label %.lr.ph.i.i.i

bb.a:                                             ; preds = %.lr.ph.split.i.i
  %i.m = tail call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef 58, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef range(i64 0, -9223372036854775808) %i.j), !noalias !253 ; 2 uses
  %i.n = extractvalue { i64, i64 } %i.m, 0
  %i.o = extractvalue { i64, i64 } %i.m, 1
  %i.p = trunc nuw i64 %i.n to i1
  br i1 %i.p, label %.loopexit.i.i, label %.loopexit15.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.b
  %.sroa.04.011.i.i.i = phi i64 [ %i.t, %bb.b ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.04.011.i.i.i
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !259, !noalias !253, !noundef !5
  %i.s = icmp eq i8 %i.r, 58
  br i1 %i.s, label %.loopexit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.t = add nuw nsw i64 %.sroa.04.011.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.t, %i.j
  br i1 %exitcond.not.i.i.i, label %.loopexit15.i.i, label %.lr.ph.i.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.a
  %.sroa.5.0.i.i.i = phi i64 [ %i.o, %bb.a ], [ %.sroa.04.011.i.i.i, %.lr.ph.i.i.i ] ; 4 uses
  %i.u = icmp ult i64 %.sroa.5.0.i.i.i, %i.j
  tail call void @llvm.assume(i1 %i.u)
  %i.v = add i64 %i.i, 1
  %i.w = add i64 %i.v, %.sroa.5.0.i.i.i           ; 7 uses
  %.not12.i.i = icmp ugt i64 %i.w, %2
  %i.x = add i64 %i.i, %.sroa.5.0.i.i.i
  %or.cond.i.i.not = icmp ult i64 %i.x, %2
  br i1 %or.cond.i.i.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.d, %.loopexit.i.i
  br i1 %.not12.i.i, label %.loopexit15.i.i, label %.lr.ph.split.i.i

bb.d:                                             ; preds = %.loopexit.i.i
  %i.y = add i64 %i.i, %.sroa.5.0.i.i.i           ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.y
  %lhsc = load i8, ptr %i.z, align 1
  %i.aa = icmp eq i8 %lhsc, 58
  br i1 %i.aa, label %.thread, label %bb.c

.loopexit15.i.i:                                  ; preds = %bb.c, %.preheader.i.i.i, %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 -9223372036854775807, ptr %i.h, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbli3iz7XG76_9multiaddr6errors5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ab = icmp eq i64 %2, 16
  br i1 %i.ab, label %bb.q, label %bb.j

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 -9223372036854775807, ptr %i.h, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbli3iz7XG76_9multiaddr6errors5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ac = icmp eq i64 %i.y, 16
  br i1 %i.ac, label %bb.e, label %bb.j

bb.e:                                             ; preds = %.thread
  %i.ad = icmp ult i64 %2, %i.w
  br i1 %i.ad, label %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i198, label %.lr.ph.split.i.i180

.lr.ph.split.i.i180:                              ; preds = %bb.e, %.lr.ph.split.i.i180.backedge
  %i.ae = phi i64 [ %i.as, %.lr.ph.split.i.i180.backedge ], [ %i.w, %bb.e ] ; 6 uses
  %i.af = sub nuw i64 %2, %i.ae                   ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae ; 2 uses
  %i.ah = icmp samesign ult i64 %i.af, 16
  br i1 %i.ah, label %.preheader.i.i.i199, label %bb.f

.preheader.i.i.i199:                              ; preds = %.lr.ph.split.i.i180
  %.not.i.i.i200 = icmp eq i64 %2, %i.ae
  br i1 %.not.i.i.i200, label %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i198, label %.lr.ph.i.i.i201

bb.f:                                             ; preds = %.lr.ph.split.i.i180
  %i.ai = call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef 58, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef range(i64 0, -9223372036854775808) %i.af), !noalias !262 ; 2 uses
  %i.aj = extractvalue { i64, i64 } %i.ai, 0
  %i.ak = extractvalue { i64, i64 } %i.ai, 1
  %i.al = trunc nuw i64 %i.aj to i1
  br i1 %i.al, label %.loopexit.i.i192, label %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i198

.lr.ph.i.i.i201:                                  ; preds = %.preheader.i.i.i199, %bb.g
  %.sroa.04.011.i.i.i202 = phi i64 [ %i.ap, %bb.g ], [ 0, %.preheader.i.i.i199 ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sroa.04.011.i.i.i202
  %i.an = load i8, ptr %i.am, align 1, !alias.scope !268, !noalias !262, !noundef !5
  %i.ao = icmp eq i8 %i.an, 58
  br i1 %i.ao, label %.loopexit.i.i192, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i201
  %i.ap = add nuw nsw i64 %.sroa.04.011.i.i.i202, 1 ; 2 uses
  %exitcond.not.i.i.i203 = icmp eq i64 %i.ap, %i.af
  br i1 %exitcond.not.i.i.i203, label %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i198, label %.lr.ph.i.i.i201

.loopexit.i.i192:                                 ; preds = %.lr.ph.i.i.i201, %bb.f
  %.sroa.5.0.i.i.i193 = phi i64 [ %i.ak, %bb.f ], [ %.sroa.04.011.i.i.i202, %.lr.ph.i.i.i201 ] ; 4 uses
  %i.aq = icmp ult i64 %.sroa.5.0.i.i.i193, %i.af
  call void @llvm.assume(i1 %i.aq)
  %i.ar = add i64 %i.ae, 1
  %i.as = add i64 %i.ar, %.sroa.5.0.i.i.i193      ; 4 uses
  %.not12.i.i195 = icmp ugt i64 %i.as, %2         ; 2 uses
  %i.at = add i64 %i.ae, %.sroa.5.0.i.i.i193
  %or.cond.i.i196.not = icmp ult i64 %i.at, %2
  br i1 %or.cond.i.i196.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit.i.i192
  br i1 %.not12.i.i195, label %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i198, label %.lr.ph.split.i.i180.backedge

.lr.ph.split.i.i180.backedge:                     ; preds = %bb.h, %bb.i
  br label %.lr.ph.split.i.i180

bb.i:                                             ; preds = %.loopexit.i.i192
  %i.au = add i64 %i.ae, %.sroa.5.0.i.i.i193      ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %i.au
  %lhsc327 = load i8, ptr %i.av, align 1
  %i.aw = icmp eq i8 %lhsc327, 58                 ; 3 uses
  %brmerge377 = or i1 %i.aw, %.not12.i.i195
  br i1 %brmerge377, label %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i198.loopexit387.split.loop.exit, label %.lr.ph.split.i.i180.backedge

bb.j:                                             ; preds = %.thread, %.loopexit15.i.i
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.al

_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i198.loopexit387.split.loop.exit: ; preds = %bb.i
  %not..le = xor i1 %i.aw, true
  %.mux378.le = select i1 %i.aw, i64 %i.au, i64 %2
  br label %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i198

_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i198: ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i198.loopexit387.split.loop.exit, %bb.h, %.preheader.i.i.i199, %bb.f, %bb.g, %bb.e
  %.promoted.i.i209 = phi i64 [ %i.w, %bb.e ], [ %2, %bb.g ], [ %i.as, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i198.loopexit387.split.loop.exit ], [ %i.as, %bb.h ], [ %2, %.preheader.i.i.i199 ], [ %2, %bb.f ] ; 2 uses
  %i.ax = phi i1 [ true, %bb.e ], [ true, %bb.g ], [ %not..le, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i198.loopexit387.split.loop.exit ], [ true, %bb.h ], [ true, %.preheader.i.i.i199 ], [ true, %bb.f ]
  %.pn329 = phi i64 [ %2, %bb.e ], [ %2, %bb.g ], [ %.mux378.le, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i198.loopexit387.split.loop.exit ], [ %2, %bb.h ], [ %2, %.preheader.i.i.i199 ], [ %2, %bb.f ]
  %.sroa.4.1.i190.ph = sub nuw i64 %.pn329, %i.w  ; 2 uses
  %.sroa.0.1.i191.ph = getelementptr inbounds nuw i8, ptr %1, i64 %i.w ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 -9223372036854775807, ptr %i.g, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbli3iz7XG76_9multiaddr6errors5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  switch i64 %.sroa.4.1.i190.ph, label %thread-pre-split.i [
    i64 0, label %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit.thread
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i198
  %i.ay = load i8, ptr %.sroa.0.1.i191.ph, align 1, !alias.scope !271, !noundef !5 ; 2 uses
  switch i8 %i.ay, label %bb.l [
    i8 43, label %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit.thread
    i8 45, label %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit.thread
  ]

thread-pre-split.i:                               ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i198
  %.pr.i = load i8, ptr %.sroa.0.1.i191.ph, align 1, !alias.scope !271
  br label %bb.l

bb.l:                                             ; preds = %thread-pre-split.i, %bb.k
  %i.az = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.ay, %bb.k ]
  %cond.i = icmp eq i8 %i.az, 43                  ; 2 uses
  %i.ba = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %.sroa.4.1.i190.ph, %i.ba ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i191.ph, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.bb = icmp samesign ult i64 %.sroa.15.0.i, 5
  br i1 %i.bb, label %.preheader.i, label %.preheader58.i.preheader

.preheader.i:                                     ; preds = %bb.l
  %.not5466.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5466.i, label %.loopexit.i, label %.lr.ph.i.a

.preheader58.i:                                   ; preds = %bb.o
  %.not53.i = icmp eq i64 %i.bf, 0
  br i1 %.not53.i, label %.loopexit.i, label %.preheader58.i.preheader

.loopexit.i:                                      ; preds = %.preheader58.i, %bb.p, %.preheader.i
  %.sroa.043.1.i = phi i16 [ %i.by, %bb.p ], [ 0, %.preheader.i ], [ %i.bq, %.preheader58.i ]
  %i.bc = zext i16 %.sroa.043.1.i to i32
  %i.bd = shl nuw i32 %i.bc, 16
  br label %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit

.preheader58.i.preheader:                         ; preds = %bb.l, %.preheader58.i
  %.sroa.0.1.i205376 = phi ptr [ %i.be, %.preheader58.i ], [ %.sroa.0.0.i, %bb.l ] ; 2 uses
  %.sroa.15.1.i375 = phi i64 [ %i.bf, %.preheader58.i ], [ %.sroa.15.0.i, %bb.l ]
  %.sroa.043.0.i374 = phi i16 [ %i.bq, %.preheader58.i ], [ 0, %bb.l ]
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i205376, i64 1
  %i.bf = add nsw i64 %.sroa.15.1.i375, -1        ; 2 uses
  %i.bg = call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.043.0.i374, i16 10) ; 2 uses
  %i.bh = extractvalue { i16, i1 } %i.bg, 0       ; 2 uses
  %i.bi = extractvalue { i16, i1 } %i.bg, 1
  %i.bj = load i8, ptr %.sroa.0.1.i205376, align 1, !alias.scope !271, !noundef !5 ; 2 uses
  br i1 %i.bi, label %bb.n, label %bb.m, !prof !144

bb.m:                                             ; preds = %.preheader58.i.preheader
  %i.bk = zext i8 %i.bj to i32
  %i.bl = add nsw i32 %i.bk, -48                  ; 2 uses
  %i.bm = icmp ult i32 %i.bl, 10
  br i1 %i.bm, label %bb.o, label %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.n:                                             ; preds = %.preheader58.i.preheader
  %i.bn = add i8 %i.bj, -48
  %i.bo = icmp ult i8 %i.bn, 10
  %spec.select.i = select i1 %i.bo, i32 513, i32 257
  br label %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit

bb.o:                                             ; preds = %bb.m
  %i.bp = trunc nuw nsw i32 %i.bl to i16
  %i.bq = add i16 %i.bh, %i.bp                    ; 3 uses
  %i.br = icmp ult i16 %i.bq, %i.bh
  br i1 %i.br, label %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit.thread, label %.preheader58.i, !prof !144

.lr.ph.i.a:                                       ; preds = %.preheader.i, %bb.p
  %.sroa.0.269.i = phi ptr [ %4, %bb.p ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %3, %bb.p ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.043.267.i = phi i16 [ %i.by, %bb.p ], [ 0, %.preheader.i ]
  %i.bs = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !271, !noundef !5
  %i.bt = zext i8 %i.bs to i32
  %i.bu = add nsw i32 %i.bt, -48                  ; 2 uses
  %i.bv = icmp ult i32 %i.bu, 10
  br i1 %i.bv, label %bb.p, label %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.p:                                             ; preds = %.lr.ph.i.a
  %i.bw = mul i16 %.sroa.043.267.i, 10
  %3 = add nsw i64 %.sroa.15.268.i, -1            ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1
  %i.bx = trunc nuw nsw i32 %i.bu to i16
  %i.by = add i16 %i.bw, %i.bx                    ; 2 uses
  %.not54.i.a = icmp eq i64 %3, 0
  br i1 %.not54.i.a, label %.loopexit.i, label %.lr.ph.i.a

_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit: ; preds = %.loopexit.i, %bb.n
  %.sroa.8.0.insert.insert.i = phi i32 [ %spec.select.i, %bb.n ], [ %i.bd, %.loopexit.i ] ; 3 uses
  %.sroa.5165.0.extract.shift = lshr i32 %.sroa.8.0.insert.insert.i, 16 ; 2 uses
  %.sroa.5165.0.extract.trunc = trunc nuw i32 %.sroa.5165.0.extract.shift to i16
  %i.bz = trunc i32 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.bz, label %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit.thread, label %bb.s

bb.q:                                             ; preds = %.loopexit15.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.sroa.4117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4117.0.copyload = load ptr, ptr %.sroa.4117.0..sroa_idx, align 8
  %.sroa.5118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.5118.0.copyload = load i64, ptr %.sroa.5118.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ca = ptrtoint ptr %.sroa.4117.0.copyload to i64 ; 2 uses
  %.sroa.4120.0.extract.trunc = trunc i64 %i.ca to i16
  %.sroa.4120.2.extract.shift = lshr i64 %i.ca, 16
  %.sroa.4120.2.extract.trunc = trunc nuw i64 %.sroa.4120.2.extract.shift to i48
  br label %bb.r

bb.r:                                             ; preds = %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit.thread, %bb.q
  %.sroa.9.sroa.0.0 = phi i48 [ %.sroa.9.sroa.0.0.copyload122, %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit.thread ], [ %.sroa.4120.2.extract.trunc, %bb.q ]
  %.sroa.9.sroa.6.0 = phi i64 [ %.sroa.9.sroa.6.0.copyload123, %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit.thread ], [ %.sroa.5118.0.copyload, %bb.q ]
  %.sroa.7.0 = phi i16 [ %.sroa.7.0.copyload34, %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit.thread ], [ %.sroa.4120.0.extract.trunc, %bb.q ]
  %.sroa.028.0 = phi i64 [ %.sroa.028.0.copyload30, %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit.thread ], [ -9223372036854775807, %bb.q ]
  store i64 %.sroa.028.0, ptr %0, align 8
  %.sroa.4136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.7.0, ptr %.sroa.4136.0..sroa_idx, align 8
  %.sroa.5137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i48 %.sroa.9.sroa.0.0, ptr %.sroa.5137.0..sroa_idx, align 2
  %.sroa.6138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.sroa.6.0, ptr %.sroa.6138.0..sroa_idx, align 8
  br label %bb.al

_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit.thread: ; preds = %bb.o, %bb.m, %.lr.ph.i.a, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i198, %bb.k, %bb.k, %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit
  %.sroa.8.0.insert.insert.i246 = phi i32 [ %.sroa.8.0.insert.insert.i, %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit ], [ 257, %bb.k ], [ 257, %.lr.ph.i.a ], [ 257, %bb.k ], [ 1, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i198 ], [ 257, %bb.m ], [ 513, %bb.o ]
  %.sroa.4164.0.extract.shift = lshr i32 %.sroa.8.0.insert.insert.i246, 8
  %.sroa.4164.0.extract.trunc = trunc i32 %.sroa.4164.0.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs4_NtCsbli3iz7XG76_9multiaddr6errorsNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBS_3num5error13ParseIntErrorE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i8 noundef %.sroa.4164.0.extract.trunc)
  %.sroa.028.0.copyload30 = load i64, ptr %i.a, align 8
  %.sroa.7.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.0.copyload34 = load i16, ptr %.sroa.7.0..sroa_idx33, align 8
  %.sroa.9.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %.sroa.9.sroa.0.0.copyload122 = load i48, ptr %.sroa.9.0..sroa_idx36, align 2
  %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx36.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.9.sroa.6.0.copyload123 = load i64, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx36.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.r

bb.s:                                             ; preds = %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit
  %i.cb = icmp eq i32 %.sroa.5165.0.extract.shift, 0
  br i1 %i.cb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.al

bb.u:                                             ; preds = %bb.s
  br i1 %i.ax, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cc = icmp ult i64 %2, %.promoted.i.i209
  br i1 %i.cc, label %select.unfold, label %.lr.ph.split.i.i213

.lr.ph.split.i.i213:                              ; preds = %bb.v, %.lr.ph.split.i.i213.backedge
  %i.cd = phi i64 [ %i.cr, %.lr.ph.split.i.i213.backedge ], [ %.promoted.i.i209, %bb.v ] ; 6 uses
  %i.ce = sub nuw i64 %2, %i.cd                   ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 %i.cd ; 2 uses
  %i.cg = icmp samesign ult i64 %i.ce, 16
  br i1 %i.cg, label %.preheader.i.i.i232, label %bb.w

.preheader.i.i.i232:                              ; preds = %.lr.ph.split.i.i213
  %.not.i.i.i233 = icmp eq i64 %2, %i.cd
  br i1 %.not.i.i.i233, label %select.unfold, label %.lr.ph.i.i.i234

bb.w:                                             ; preds = %.lr.ph.split.i.i213
  %i.ch = call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef 58, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cf, i64 noundef range(i64 0, -9223372036854775808) %i.ce), !noalias !274 ; 2 uses
  %i.ci = extractvalue { i64, i64 } %i.ch, 0
  %i.cj = extractvalue { i64, i64 } %i.ch, 1
  %i.ck = trunc nuw i64 %i.ci to i1
  br i1 %i.ck, label %.loopexit.i.i225, label %select.unfold

.lr.ph.i.i.i234:                                  ; preds = %.preheader.i.i.i232, %bb.x
  %.sroa.04.011.i.i.i235 = phi i64 [ %i.co, %bb.x ], [ 0, %.preheader.i.i.i232 ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.04.011.i.i.i235
  %i.cm = load i8, ptr %i.cl, align 1, !alias.scope !280, !noalias !274, !noundef !5
  %i.cn = icmp eq i8 %i.cm, 58
  br i1 %i.cn, label %.loopexit.i.i225, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i234
  %i.co = add nuw nsw i64 %.sroa.04.011.i.i.i235, 1 ; 2 uses
  %exitcond.not.i.i.i236 = icmp eq i64 %i.co, %i.ce
  br i1 %exitcond.not.i.i.i236, label %select.unfold, label %.lr.ph.i.i.i234

.loopexit.i.i225:                                 ; preds = %.lr.ph.i.i.i234, %bb.w
  %.sroa.5.0.i.i.i226 = phi i64 [ %i.cj, %bb.w ], [ %.sroa.04.011.i.i.i235, %.lr.ph.i.i.i234 ] ; 4 uses
  %i.cp = icmp ult i64 %.sroa.5.0.i.i.i226, %i.ce
  call void @llvm.assume(i1 %i.cp)
  %i.cq = add i64 %i.cd, 1
  %i.cr = add i64 %i.cq, %.sroa.5.0.i.i.i226      ; 2 uses
  %.not12.i.i228 = icmp ugt i64 %i.cr, %2         ; 2 uses
  %i.cs = add i64 %i.cd, %.sroa.5.0.i.i.i226
  %or.cond.i.i229.not = icmp ult i64 %i.cs, %2
  br i1 %or.cond.i.i229.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.loopexit.i.i225
  br i1 %.not12.i.i228, label %select.unfold, label %.lr.ph.split.i.i213.backedge

.lr.ph.split.i.i213.backedge:                     ; preds = %bb.y, %bb.z
  br label %.lr.ph.split.i.i213

bb.z:                                             ; preds = %.loopexit.i.i225
  %i.ct = getelementptr i8, ptr %1, i64 %i.cd
  %i.cu = getelementptr i8, ptr %i.ct, i64 %.sroa.5.0.i.i.i226
  %lhsc330 = load i8, ptr %i.cu, align 1
  %i.cv = icmp eq i8 %lhsc330, 58
  %brmerge = or i1 %i.cv, %.not12.i.i228
  br i1 %brmerge, label %select.unfold, label %.lr.ph.split.i.i213.backedge

bb.aa:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) @49, i64 24, i1 false)
  invoke void @_RNvMs5_CsiDobNdw52yW_13data_encodingNtB5_8Encoding10decode_len(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, i64 noundef 16)
          to label %bb.ac unwind label %bb.ab

select.unfold:                                    ; preds = %bb.z, %bb.w, %.preheader.i.i.i232, %bb.y, %bb.x, %bb.v
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.al

bb.ab:                                            ; preds = %bb.aa
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsiDobNdw52yW_13data_encoding8EncodingECsbli3iz7XG76_9multiaddr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #22
          to label %bb.an unwind label %bb.am

bb.ac:                                            ; preds = %bb.aa
  %i.cx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cy = load i8, ptr %i.cx, align 8, !range !283, !noundef !5
  %.not170 = icmp eq i8 %i.cy, -1
  br i1 %.not170, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 -9223372036854775807, ptr %0, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsiDobNdw52yW_13data_encoding8EncodingECsbli3iz7XG76_9multiaddr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.al

bb.ae:                                            ; preds = %bb.ac
  %i.cz = load i64, ptr %i.f, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.da = icmp eq i64 %i.cz, 10
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsiDobNdw52yW_13data_encoding8EncodingECsbli3iz7XG76_9multiaddr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.da, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.d, i8 0, i64 10, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) @49, i64 24, i1 false)
  invoke void @_RNvMs5_CsiDobNdw52yW_13data_encodingNtB5_8Encoding10decode_mut(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef 16, ptr noalias nofree noundef nonnull %i.d, i64 noundef 10)
          to label %bb.ai unwind label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.al

bb.ah:                                            ; preds = %bb.af
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsiDobNdw52yW_13data_encoding8EncodingECsbli3iz7XG76_9multiaddr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #22
          to label %bb.an unwind label %bb.am

bb.ai:                                            ; preds = %bb.af
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.dd = load i8, ptr %i.dc, align 8, !range !283, !noundef !5
  %.not172 = icmp eq i8 %i.dd, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %.not172, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i64 -9223372036854775807, ptr %0, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsiDobNdw52yW_13data_encoding8EncodingECsbli3iz7XG76_9multiaddr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsiDobNdw52yW_13data_encoding8EncodingECsbli3iz7XG76_9multiaddr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.de, ptr noundef nonnull align 1 dereferenceable(10) %i.d, i64 10, i1 false)
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %.sroa.5165.0.extract.trunc, ptr %.sroa.497.0..sroa_idx, align 2
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.al

bb.al:                                            ; preds = %bb.j, %bb.aj, %select.unfold, %bb.t, %bb.r, %bb.ag, %bb.ad, %bb.ak
  ret void

bb.am:                                            ; preds = %bb.ah, %bb.ab
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.an:                                            ; preds = %bb.ah, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.db, %bb.ah ], [ %i.cw, %bb.ab ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsbli3iz7XG76_9multiaddr8protocol11read_onion3(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph.split.preheader.i.i:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [35 x i8], align 1                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.c, %.lr.ph.split.preheader.i.i
  %i.i = phi i64 [ %i.w, %bb.c ], [ 0, %.lr.ph.split.preheader.i.i ] ; 6 uses
  %i.j = sub nuw i64 %2, %i.i                     ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.i ; 2 uses
  %i.l = icmp samesign ult i64 %i.j, 16
  br i1 %i.l, label %.preheader.i.i.i, label %bb.a

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i.i
  %.not.i.i.i = icmp eq i64 %2, %i.i
  br i1 %.not.i.i.i, label %.loopexit15.i.i, label %.lr.ph.i.i.i

bb.a:                                             ; preds = %.lr.ph.split.i.i
  %i.m = tail call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef 58, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef range(i64 0, -9223372036854775808) %i.j), !noalias !284 ; 2 uses
  %i.n = extractvalue { i64, i64 } %i.m, 0
  %i.o = extractvalue { i64, i64 } %i.m, 1
  %i.p = trunc nuw i64 %i.n to i1
  br i1 %i.p, label %.loopexit.i.i, label %.loopexit15.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.b
  %.sroa.04.011.i.i.i = phi i64 [ %i.t, %bb.b ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.04.011.i.i.i
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !290, !noalias !284, !noundef !5
  %i.s = icmp eq i8 %i.r, 58
  br i1 %i.s, label %.loopexit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.t = add nuw nsw i64 %.sroa.04.011.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.t, %i.j
  br i1 %exitcond.not.i.i.i, label %.loopexit15.i.i, label %.lr.ph.i.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.a
  %.sroa.5.0.i.i.i = phi i64 [ %i.o, %bb.a ], [ %.sroa.04.011.i.i.i, %.lr.ph.i.i.i ] ; 4 uses
  %i.u = icmp ult i64 %.sroa.5.0.i.i.i, %i.j
  tail call void @llvm.assume(i1 %i.u)
  %i.v = add i64 %i.i, 1
  %i.w = add i64 %i.v, %.sroa.5.0.i.i.i           ; 7 uses
  %.not12.i.i = icmp ugt i64 %i.w, %2
  %i.x = add i64 %i.i, %.sroa.5.0.i.i.i
  %or.cond.i.i.not = icmp ult i64 %i.x, %2
  br i1 %or.cond.i.i.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.d, %.loopexit.i.i
  br i1 %.not12.i.i, label %.loopexit15.i.i, label %.lr.ph.split.i.i

bb.d:                                             ; preds = %.loopexit.i.i
  %i.y = add i64 %i.i, %.sroa.5.0.i.i.i           ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.y
  %lhsc = load i8, ptr %i.z, align 1
  %i.aa = icmp eq i8 %lhsc, 58
  br i1 %i.aa, label %.thread, label %bb.c

.loopexit15.i.i:                                  ; preds = %bb.c, %.preheader.i.i.i, %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 -9223372036854775807, ptr %i.h, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbli3iz7XG76_9multiaddr6errors5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ab = icmp eq i64 %2, 56
  br i1 %i.ab, label %bb.q, label %bb.j

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 -9223372036854775807, ptr %i.h, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbli3iz7XG76_9multiaddr6errors5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ac = icmp eq i64 %i.y, 56
  br i1 %i.ac, label %bb.e, label %bb.j

bb.e:                                             ; preds = %.thread
  %i.ad = icmp ult i64 %2, %i.w
  br i1 %i.ad, label %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i198, label %.lr.ph.split.i.i180

.lr.ph.split.i.i180:                              ; preds = %bb.e, %.lr.ph.split.i.i180.backedge
  %i.ae = phi i64 [ %i.as, %.lr.ph.split.i.i180.backedge ], [ %i.w, %bb.e ] ; 6 uses
  %i.af = sub nuw i64 %2, %i.ae                   ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae ; 2 uses
  %i.ah = icmp samesign ult i64 %i.af, 16
  br i1 %i.ah, label %.preheader.i.i.i199, label %bb.f

.preheader.i.i.i199:                              ; preds = %.lr.ph.split.i.i180
  %.not.i.i.i200 = icmp eq i64 %2, %i.ae
  br i1 %.not.i.i.i200, label %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i198, label %.lr.ph.i.i.i201

bb.f:                                             ; preds = %.lr.ph.split.i.i180
  %i.ai = call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef 58, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef range(i64 0, -9223372036854775808) %i.af), !noalias !293 ; 2 uses
  %i.aj = extractvalue { i64, i64 } %i.ai, 0
  %i.ak = extractvalue { i64, i64 } %i.ai, 1
  %i.al = trunc nuw i64 %i.aj to i1
  br i1 %i.al, label %.loopexit.i.i192, label %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i198

.lr.ph.i.i.i201:                                  ; preds = %.preheader.i.i.i199, %bb.g
  %.sroa.04.011.i.i.i202 = phi i64 [ %i.ap, %bb.g ], [ 0, %.preheader.i.i.i199 ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sroa.04.011.i.i.i202
  %i.an = load i8, ptr %i.am, align 1, !alias.scope !299, !noalias !293, !noundef !5
  %i.ao = icmp eq i8 %i.an, 58
  br i1 %i.ao, label %.loopexit.i.i192, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i201
  %i.ap = add nuw nsw i64 %.sroa.04.011.i.i.i202, 1 ; 2 uses
  %exitcond.not.i.i.i203 = icmp eq i64 %i.ap, %i.af
  br i1 %exitcond.not.i.i.i203, label %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i198, label %.lr.ph.i.i.i201

.loopexit.i.i192:                                 ; preds = %.lr.ph.i.i.i201, %bb.f
  %.sroa.5.0.i.i.i193 = phi i64 [ %i.ak, %bb.f ], [ %.sroa.04.011.i.i.i202, %.lr.ph.i.i.i201 ] ; 4 uses
  %i.aq = icmp ult i64 %.sroa.5.0.i.i.i193, %i.af
  call void @llvm.assume(i1 %i.aq)
  %i.ar = add i64 %i.ae, 1
  %i.as = add i64 %i.ar, %.sroa.5.0.i.i.i193      ; 4 uses
  %.not12.i.i195 = icmp ugt i64 %i.as, %2         ; 2 uses
  %i.at = add i64 %i.ae, %.sroa.5.0.i.i.i193
  %or.cond.i.i196.not = icmp ult i64 %i.at, %2
  br i1 %or.cond.i.i196.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit.i.i192
  br i1 %.not12.i.i195, label %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i198, label %.lr.ph.split.i.i180.backedge

.lr.ph.split.i.i180.backedge:                     ; preds = %bb.h, %bb.i
  br label %.lr.ph.split.i.i180

bb.i:                                             ; preds = %.loopexit.i.i192
  %i.au = add i64 %i.ae, %.sroa.5.0.i.i.i193      ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %i.au
  %lhsc327 = load i8, ptr %i.av, align 1
  %i.aw = icmp eq i8 %lhsc327, 58                 ; 3 uses
  %brmerge377 = or i1 %i.aw, %.not12.i.i195
  br i1 %brmerge377, label %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i198.loopexit387.split.loop.exit, label %.lr.ph.split.i.i180.backedge

bb.j:                                             ; preds = %.thread, %.loopexit15.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775807, ptr %i.ax, align 8
  store i16 1, ptr %0, align 8
  br label %bb.al

_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i198.loopexit387.split.loop.exit: ; preds = %bb.i
  %not..le = xor i1 %i.aw, true
  %.mux378.le = select i1 %i.aw, i64 %i.au, i64 %2
  br label %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i198

_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i198: ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i198.loopexit387.split.loop.exit, %bb.h, %.preheader.i.i.i199, %bb.f, %bb.g, %bb.e
  %.promoted.i.i209 = phi i64 [ %i.w, %bb.e ], [ %2, %bb.g ], [ %i.as, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i198.loopexit387.split.loop.exit ], [ %i.as, %bb.h ], [ %2, %.preheader.i.i.i199 ], [ %2, %bb.f ] ; 2 uses
  %i.ay = phi i1 [ true, %bb.e ], [ true, %bb.g ], [ %not..le, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i198.loopexit387.split.loop.exit ], [ true, %bb.h ], [ true, %.preheader.i.i.i199 ], [ true, %bb.f ]
  %.pn329 = phi i64 [ %2, %bb.e ], [ %2, %bb.g ], [ %.mux378.le, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i198.loopexit387.split.loop.exit ], [ %2, %bb.h ], [ %2, %.preheader.i.i.i199 ], [ %2, %bb.f ]
  %.sroa.4.1.i190.ph = sub nuw i64 %.pn329, %i.w  ; 2 uses
  %.sroa.0.1.i191.ph = getelementptr inbounds nuw i8, ptr %1, i64 %i.w ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 -9223372036854775807, ptr %i.g, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbli3iz7XG76_9multiaddr6errors5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  switch i64 %.sroa.4.1.i190.ph, label %thread-pre-split.i [
    i64 0, label %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit.thread
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i198
  %i.az = load i8, ptr %.sroa.0.1.i191.ph, align 1, !alias.scope !302, !noundef !5 ; 2 uses
  switch i8 %i.az, label %bb.l [
    i8 43, label %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit.thread
    i8 45, label %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit.thread
  ]

thread-pre-split.i:                               ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i198
  %.pr.i = load i8, ptr %.sroa.0.1.i191.ph, align 1, !alias.scope !302
  br label %bb.l

bb.l:                                             ; preds = %thread-pre-split.i, %bb.k
  %i.ba = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.az, %bb.k ]
  %cond.i = icmp eq i8 %i.ba, 43                  ; 2 uses
  %i.bb = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %.sroa.4.1.i190.ph, %i.bb ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i191.ph, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.bc = icmp samesign ult i64 %.sroa.15.0.i, 5
  br i1 %i.bc, label %.preheader.i, label %.preheader58.i.preheader

.preheader.i:                                     ; preds = %bb.l
  %.not5466.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5466.i, label %.loopexit.i, label %.lr.ph.i.a

.preheader58.i:                                   ; preds = %bb.o
  %.not53.i = icmp eq i64 %i.bg, 0
  br i1 %.not53.i, label %.loopexit.i, label %.preheader58.i.preheader

.loopexit.i:                                      ; preds = %.preheader58.i, %bb.p, %.preheader.i
  %.sroa.043.1.i = phi i16 [ %i.bz, %bb.p ], [ 0, %.preheader.i ], [ %i.br, %.preheader58.i ]
  %i.bd = zext i16 %.sroa.043.1.i to i32
  %i.be = shl nuw i32 %i.bd, 16
  br label %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit

.preheader58.i.preheader:                         ; preds = %bb.l, %.preheader58.i
  %.sroa.0.1.i205376 = phi ptr [ %i.bf, %.preheader58.i ], [ %.sroa.0.0.i, %bb.l ] ; 2 uses
  %.sroa.15.1.i375 = phi i64 [ %i.bg, %.preheader58.i ], [ %.sroa.15.0.i, %bb.l ]
  %.sroa.043.0.i374 = phi i16 [ %i.br, %.preheader58.i ], [ 0, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i205376, i64 1
  %i.bg = add nsw i64 %.sroa.15.1.i375, -1        ; 2 uses
  %i.bh = call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.043.0.i374, i16 10) ; 2 uses
  %i.bi = extractvalue { i16, i1 } %i.bh, 0       ; 2 uses
  %i.bj = extractvalue { i16, i1 } %i.bh, 1
  %i.bk = load i8, ptr %.sroa.0.1.i205376, align 1, !alias.scope !302, !noundef !5 ; 2 uses
  br i1 %i.bj, label %bb.n, label %bb.m, !prof !144

bb.m:                                             ; preds = %.preheader58.i.preheader
  %i.bl = zext i8 %i.bk to i32
  %i.bm = add nsw i32 %i.bl, -48                  ; 2 uses
  %i.bn = icmp ult i32 %i.bm, 10
  br i1 %i.bn, label %bb.o, label %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.n:                                             ; preds = %.preheader58.i.preheader
  %i.bo = add i8 %i.bk, -48
  %i.bp = icmp ult i8 %i.bo, 10
  %spec.select.i = select i1 %i.bp, i32 513, i32 257
  br label %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit

bb.o:                                             ; preds = %bb.m
  %i.bq = trunc nuw nsw i32 %i.bm to i16
  %i.br = add i16 %i.bi, %i.bq                    ; 3 uses
  %i.bs = icmp ult i16 %i.br, %i.bi
  br i1 %i.bs, label %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit.thread, label %.preheader58.i, !prof !144

.lr.ph.i.a:                                       ; preds = %.preheader.i, %bb.p
  %.sroa.0.269.i = phi ptr [ %4, %bb.p ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %3, %bb.p ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.043.267.i = phi i16 [ %i.bz, %bb.p ], [ 0, %.preheader.i ]
  %i.bt = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !302, !noundef !5
  %i.bu = zext i8 %i.bt to i32
  %i.bv = add nsw i32 %i.bu, -48                  ; 2 uses
  %i.bw = icmp ult i32 %i.bv, 10
  br i1 %i.bw, label %bb.p, label %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.p:                                             ; preds = %.lr.ph.i.a
  %i.bx = mul i16 %.sroa.043.267.i, 10
  %3 = add nsw i64 %.sroa.15.268.i, -1            ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1
  %i.by = trunc nuw nsw i32 %i.bv to i16
  %i.bz = add i16 %i.bx, %i.by                    ; 2 uses
  %.not54.i.a = icmp eq i64 %3, 0
  br i1 %.not54.i.a, label %.loopexit.i, label %.lr.ph.i.a

_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit: ; preds = %.loopexit.i, %bb.n
  %.sroa.8.0.insert.insert.i = phi i32 [ %spec.select.i, %bb.n ], [ %i.be, %.loopexit.i ] ; 3 uses
  %.sroa.5165.0.extract.shift = lshr i32 %.sroa.8.0.insert.insert.i, 16 ; 2 uses
  %.sroa.5165.0.extract.trunc = trunc nuw i32 %.sroa.5165.0.extract.shift to i16
  %i.ca = trunc i32 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.ca, label %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit.thread, label %bb.s

bb.q:                                             ; preds = %.loopexit15.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.sroa.4117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4117.0.copyload = load ptr, ptr %.sroa.4117.0..sroa_idx, align 8
  %.sroa.5118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.5118.0.copyload = load i64, ptr %.sroa.5118.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cb = ptrtoint ptr %.sroa.4117.0.copyload to i64 ; 2 uses
  %.sroa.4120.0.extract.trunc = trunc i64 %i.cb to i16
  %.sroa.4120.2.extract.shift = lshr i64 %i.cb, 16
  %.sroa.4120.2.extract.trunc = trunc nuw i64 %.sroa.4120.2.extract.shift to i48
  br label %bb.r

bb.r:                                             ; preds = %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit.thread, %bb.q
  %.sroa.9.sroa.0.0 = phi i48 [ %.sroa.9.sroa.0.0.copyload122, %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit.thread ], [ %.sroa.4120.2.extract.trunc, %bb.q ]
  %.sroa.9.sroa.6.0 = phi i64 [ %.sroa.9.sroa.6.0.copyload123, %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit.thread ], [ %.sroa.5118.0.copyload, %bb.q ]
  %.sroa.7.0 = phi i16 [ %.sroa.7.0.copyload34, %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit.thread ], [ %.sroa.4120.0.extract.trunc, %bb.q ]
  %.sroa.028.0 = phi i64 [ %.sroa.028.0.copyload30, %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit.thread ], [ -9223372036854775807, %bb.q ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.028.0, ptr %i.cc, align 8
  %.sroa.4136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %.sroa.7.0, ptr %.sroa.4136.0..sroa_idx, align 8
  %.sroa.5137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i48 %.sroa.9.sroa.0.0, ptr %.sroa.5137.0..sroa_idx, align 2
  %.sroa.6138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.sroa.6.0, ptr %.sroa.6138.0..sroa_idx, align 8
  store i16 1, ptr %0, align 8
  br label %bb.al

_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit.thread: ; preds = %bb.o, %bb.m, %.lr.ph.i.a, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i198, %bb.k, %bb.k, %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit
  %.sroa.8.0.insert.insert.i246 = phi i32 [ %.sroa.8.0.insert.insert.i, %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit ], [ 257, %bb.k ], [ 257, %.lr.ph.i.a ], [ 257, %bb.k ], [ 1, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i198 ], [ 257, %bb.m ], [ 513, %bb.o ]
  %.sroa.4164.0.extract.shift = lshr i32 %.sroa.8.0.insert.insert.i246, 8
  %.sroa.4164.0.extract.trunc = trunc i32 %.sroa.4164.0.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs4_NtCsbli3iz7XG76_9multiaddr6errorsNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBS_3num5error13ParseIntErrorE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i8 noundef %.sroa.4164.0.extract.trunc)
  %.sroa.028.0.copyload30 = load i64, ptr %i.a, align 8
  %.sroa.7.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.0.copyload34 = load i16, ptr %.sroa.7.0..sroa_idx33, align 8
  %.sroa.9.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %.sroa.9.sroa.0.0.copyload122 = load i48, ptr %.sroa.9.0..sroa_idx36, align 2
  %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx36.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.9.sroa.6.0.copyload123 = load i64, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx36.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.r

bb.s:                                             ; preds = %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit
  %i.cd = icmp eq i32 %.sroa.5165.0.extract.shift, 0
  br i1 %i.cd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775807, ptr %i.ce, align 8
  store i16 1, ptr %0, align 8
  br label %bb.al

bb.u:                                             ; preds = %bb.s
  br i1 %i.ay, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cf = icmp ult i64 %2, %.promoted.i.i209
  br i1 %i.cf, label %select.unfold, label %.lr.ph.split.i.i213

.lr.ph.split.i.i213:                              ; preds = %bb.v, %.lr.ph.split.i.i213.backedge
  %i.cg = phi i64 [ %i.cu, %.lr.ph.split.i.i213.backedge ], [ %.promoted.i.i209, %bb.v ] ; 6 uses
  %i.ch = sub nuw i64 %2, %i.cg                   ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 %i.cg ; 2 uses
  %i.cj = icmp samesign ult i64 %i.ch, 16
  br i1 %i.cj, label %.preheader.i.i.i232, label %bb.w

.preheader.i.i.i232:                              ; preds = %.lr.ph.split.i.i213
  %.not.i.i.i233 = icmp eq i64 %2, %i.cg
  br i1 %.not.i.i.i233, label %select.unfold, label %.lr.ph.i.i.i234

bb.w:                                             ; preds = %.lr.ph.split.i.i213
  %i.ck = call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef 58, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ci, i64 noundef range(i64 0, -9223372036854775808) %i.ch), !noalias !305 ; 2 uses
  %i.cl = extractvalue { i64, i64 } %i.ck, 0
  %i.cm = extractvalue { i64, i64 } %i.ck, 1
  %i.cn = trunc nuw i64 %i.cl to i1
  br i1 %i.cn, label %.loopexit.i.i225, label %select.unfold

.lr.ph.i.i.i234:                                  ; preds = %.preheader.i.i.i232, %bb.x
  %.sroa.04.011.i.i.i235 = phi i64 [ %i.cr, %bb.x ], [ 0, %.preheader.i.i.i232 ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sroa.04.011.i.i.i235
  %i.cp = load i8, ptr %i.co, align 1, !alias.scope !311, !noalias !305, !noundef !5
  %i.cq = icmp eq i8 %i.cp, 58
  br i1 %i.cq, label %.loopexit.i.i225, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i234
  %i.cr = add nuw nsw i64 %.sroa.04.011.i.i.i235, 1 ; 2 uses
  %exitcond.not.i.i.i236 = icmp eq i64 %i.cr, %i.ch
  br i1 %exitcond.not.i.i.i236, label %select.unfold, label %.lr.ph.i.i.i234

.loopexit.i.i225:                                 ; preds = %.lr.ph.i.i.i234, %bb.w
  %.sroa.5.0.i.i.i226 = phi i64 [ %i.cm, %bb.w ], [ %.sroa.04.011.i.i.i235, %.lr.ph.i.i.i234 ] ; 4 uses
  %i.cs = icmp ult i64 %.sroa.5.0.i.i.i226, %i.ch
  call void @llvm.assume(i1 %i.cs)
  %i.ct = add i64 %i.cg, 1
  %i.cu = add i64 %i.ct, %.sroa.5.0.i.i.i226      ; 2 uses
  %.not12.i.i228 = icmp ugt i64 %i.cu, %2         ; 2 uses
  %i.cv = add i64 %i.cg, %.sroa.5.0.i.i.i226
  %or.cond.i.i229.not = icmp ult i64 %i.cv, %2
  br i1 %or.cond.i.i229.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.loopexit.i.i225
  br i1 %.not12.i.i228, label %select.unfold, label %.lr.ph.split.i.i213.backedge

.lr.ph.split.i.i213.backedge:                     ; preds = %bb.y, %bb.z
  br label %.lr.ph.split.i.i213

bb.z:                                             ; preds = %.loopexit.i.i225
  %i.cw = getelementptr i8, ptr %1, i64 %i.cg
  %i.cx = getelementptr i8, ptr %i.cw, i64 %.sroa.5.0.i.i.i226
  %lhsc330 = load i8, ptr %i.cx, align 1
  %i.cy = icmp eq i8 %lhsc330, 58
  %brmerge = or i1 %i.cy, %.not12.i.i228
  br i1 %brmerge, label %select.unfold, label %.lr.ph.split.i.i213.backedge

bb.aa:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) @49, i64 24, i1 false)
  invoke void @_RNvMs5_CsiDobNdw52yW_13data_encodingNtB5_8Encoding10decode_len(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, i64 noundef 56)
          to label %bb.ac unwind label %bb.ab

select.unfold:                                    ; preds = %bb.z, %bb.w, %.preheader.i.i.i232, %bb.y, %bb.x, %bb.v
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775807, ptr %i.cz, align 8
  store i16 1, ptr %0, align 8
  br label %bb.al

bb.ab:                                            ; preds = %bb.aa
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsiDobNdw52yW_13data_encoding8EncodingECsbli3iz7XG76_9multiaddr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #22
          to label %bb.an unwind label %bb.am

bb.ac:                                            ; preds = %bb.aa
  %i.db = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.dc = load i8, ptr %i.db, align 8, !range !283, !noundef !5
  %.not170 = icmp eq i8 %i.dc, -1
  br i1 %.not170, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775807, ptr %i.dd, align 8
  store i16 1, ptr %0, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsiDobNdw52yW_13data_encoding8EncodingECsbli3iz7XG76_9multiaddr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.al

bb.ae:                                            ; preds = %bb.ac
  %i.de = load i64, ptr %i.f, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.df = icmp eq i64 %i.de, 35
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsiDobNdw52yW_13data_encoding8EncodingECsbli3iz7XG76_9multiaddr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.df, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.d, i8 0, i64 35, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) @49, i64 24, i1 false)
  invoke void @_RNvMs5_CsiDobNdw52yW_13data_encodingNtB5_8Encoding10decode_mut(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef 56, ptr noalias nofree noundef nonnull %i.d, i64 noundef 35)
          to label %bb.ai unwind label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775807, ptr %i.dg, align 8
  store i16 1, ptr %0, align 8
  br label %bb.al

bb.ah:                                            ; preds = %bb.af
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsiDobNdw52yW_13data_encoding8EncodingECsbli3iz7XG76_9multiaddr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #22
          to label %bb.an unwind label %bb.am

bb.ai:                                            ; preds = %bb.af
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.dj = load i8, ptr %i.di, align 8, !range !283, !noundef !5
  %.not172 = icmp eq i8 %i.dj, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %.not172, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775807, ptr %i.dk, align 8
  store i16 1, ptr %0, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsiDobNdw52yW_13data_encoding8EncodingECsbli3iz7XG76_9multiaddr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsiDobNdw52yW_13data_encoding8EncodingECsbli3iz7XG76_9multiaddr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(35) %i.dl, ptr noundef nonnull align 1 dereferenceable(35) %i.d, i64 35, i1 false)
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 38
  store i16 %.sroa.5165.0.extract.trunc, ptr %.sroa.497.0..sroa_idx, align 2
  store i16 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.al

bb.al:                                            ; preds = %bb.j, %bb.aj, %select.unfold, %bb.t, %bb.r, %bb.ag, %bb.ad, %bb.ak
  ret void

bb.am:                                            ; preds = %bb.ah, %bb.ab
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.an:                                            ; preds = %bb.ah, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.dh, %bb.ah ], [ %i.da, %bb.ab ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit() unnamed_addr #1 {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.a = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #25 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !144

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #24
end_hunk_0
