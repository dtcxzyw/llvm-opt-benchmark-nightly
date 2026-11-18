Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.11?download=true
inline.NumInlined: 6091
inline.NumDeleted: 2657
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN5prost7message7Message6encode17h25654d723870a517E:bb.a
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17ha8ab5466cfab7c0eE.exit.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17ha8ab5466cfab7c0eE.exit.i": ; preds = %bb.b, %bb.a
  %.sroa.02.0.i.i = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !14618, !nonnull !12, !noundef !12 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !14618, !noundef !12 ; 10 uses
  %i.o = icmp eq i64 %i.n, 0                      ; 2 uses
  br i1 %i.o, label %"_ZN79_$LT$anki_proto..notes..AddNotesResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h05ba03104e510090E.exit", label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17ha8ab5466cfab7c0eE.exit.i"
  %xtraiter = and i64 %i.n, 1
  %i.p = icmp eq i64 %i.n, 1
  br i1 %i.p, label %.preheader.i.i.epil.preheader, label %.preheader.i.i.preheader.new

.preheader.i.i.preheader.new:                     ; preds = %.preheader.i.i.preheader
  %unroll_iter = and i64 %i.n, -2
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.i.preheader.new
  %.sroa.04.0.i.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.ah, %.preheader.i.i ] ; 3 uses
  %.sroa.02.0.i.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.ag, %.preheader.i.i ]
  %niter = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.04.0.i.i.i
  %.val.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !14620, !noalias !14618, !noundef !12
  %i.r = or i64 %.val.i.i.i, 1
  %i.s = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = xor i64 %i.s, 63
  %i.u = mul nuw nsw i64 %i.t, 9
  %i.v = add nuw nsw i64 %i.u, 73
  %i.w = lshr i64 %i.v, 6
  %i.x = add i64 %i.w, %.sroa.02.0.i.i.i
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.04.0.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.val.i.i.i.1 = load i64, ptr %i.z, align 8, !alias.scope !14620, !noalias !14618, !noundef !12
  %i.aa = or i64 %.val.i.i.i.1, 1
  %i.ab = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ac = xor i64 %i.ab, 63
  %i.ad = mul nuw nsw i64 %i.ac, 9
  %i.ae = add nuw nsw i64 %i.ad, 73
  %i.af = lshr i64 %i.ae, 6
  %i.ag = add i64 %i.af, %i.x                     ; 3 uses
  %i.ah = add nuw i64 %.sroa.04.0.i.i.i, 2        ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h240c0c458a446805E.exit.i.i.unr-lcssa", label %.preheader.i.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h240c0c458a446805E.exit.i.i.unr-lcssa": ; preds = %.preheader.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h240c0c458a446805E.exit.i.i", label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h240c0c458a446805E.exit.i.i.unr-lcssa", %.preheader.i.i.preheader
  %.sroa.04.0.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.ah, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h240c0c458a446805E.exit.i.i.unr-lcssa" ]
  %.sroa.02.0.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.ag, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h240c0c458a446805E.exit.i.i.unr-lcssa" ]
  %lcmp.mod19 = trunc i64 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod19)
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.04.0.i.i.i.epil.init
  %.val.i.i.i.epil = load i64, ptr %i.ai, align 8, !alias.scope !14620, !noalias !14618, !noundef !12
  %i.aj = or i64 %.val.i.i.i.epil, 1
  %i.ak = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aj, i1 true)
  %i.al = xor i64 %i.ak, 63
  %i.am = mul nuw nsw i64 %i.al, 9
  %i.an = add nuw nsw i64 %i.am, 73
  %i.ao = lshr i64 %i.an, 6
  %i.ap = add i64 %i.ao, %.sroa.02.0.i.i.i.epil.init
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h240c0c458a446805E.exit.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h240c0c458a446805E.exit.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h240c0c458a446805E.exit.i.i.unr-lcssa", %.preheader.i.i.epil.preheader
  %.lcssa17 = phi i64 [ %i.ag, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h240c0c458a446805E.exit.i.i.unr-lcssa" ], [ %i.ap, %.preheader.i.i.epil.preheader ] ; 2 uses
  %i.aq = or i64 %.lcssa17, 1
  %i.ar = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aq, i1 true)
  %i.as = xor i64 %i.ar, 63
  %i.at = mul nuw nsw i64 %i.as, 9
  %i.au = add nuw nsw i64 %i.at, 73
  %i.av = lshr i64 %i.au, 6
  %i.aw = add i64 %.lcssa17, 1
  %i.ax = add i64 %i.aw, %i.av
  br label %"_ZN79_$LT$anki_proto..notes..AddNotesResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h05ba03104e510090E.exit"

"_ZN79_$LT$anki_proto..notes..AddNotesResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h05ba03104e510090E.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17ha8ab5466cfab7c0eE.exit.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h240c0c458a446805E.exit.i.i"
  %.sroa.0.0.i.i = phi i64 [ %i.ax, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h240c0c458a446805E.exit.i.i" ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17ha8ab5466cfab7c0eE.exit.i" ]
  %i.ay = add i64 %.sroa.0.0.i.i, %.sroa.02.0.i.i ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.az, align 8, !noundef !12 ; 2 uses
  %i.ba = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = xor i64 %.val, 9223372036854775807      ; 2 uses
  %i.bc = icmp ugt i64 %i.ay, %i.bb
  br i1 %i.bc, label %bb.h, label %bb.c

bb.c:                                             ; preds = %"_ZN79_$LT$anki_proto..notes..AddNotesResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h05ba03104e510090E.exit"
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5prost8encoding7message6encode17hfc75eb04b62dc0bdE(i32 noundef 1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(12) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14621)
  br i1 %i.o, label %"_ZN79_$LT$anki_proto..notes..AddNotesResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17hbc078eabca4f6b0dE.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14622
  store i8 18, ptr %i.a, align 1, !noalias !14622
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !14621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14622
  %xtraiter20 = and i64 %i.n, 1
  %i.bd = icmp eq i64 %i.n, 1
  br i1 %i.bd, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.f
  %unroll_iter24 = and i64 %i.n, -2
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.new
  %.sroa.04.0.i.i.i3 = phi i64 [ 0, %.new ], [ %i.bv, %bb.g ] ; 3 uses
  %.sroa.02.0.i.i.i4 = phi i64 [ 0, %.new ], [ %i.bu, %bb.g ]
  %niter25 = phi i64 [ 0, %.new ], [ %niter25.next.1, %bb.g ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.04.0.i.i.i3
  %.val.i.i.i5 = load i64, ptr %i.be, align 8, !alias.scope !14621, !noundef !12
  %i.bf = or i64 %.val.i.i.i5, 1
  %i.bg = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bf, i1 true)
  %i.bh = xor i64 %i.bg, 63
  %i.bi = mul nuw nsw i64 %i.bh, 9
  %i.bj = add nuw nsw i64 %i.bi, 73
  %i.bk = lshr i64 %i.bj, 6
  %i.bl = add i64 %i.bk, %.sroa.02.0.i.i.i4
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.04.0.i.i.i3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.val.i.i.i5.1 = load i64, ptr %i.bn, align 8, !alias.scope !14621, !noundef !12
  %i.bo = or i64 %.val.i.i.i5.1, 1
  %i.bp = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bo, i1 true)
  %i.bq = xor i64 %i.bp, 63
  %i.br = mul nuw nsw i64 %i.bq, 9
  %i.bs = add nuw nsw i64 %i.br, 73
  %i.bt = lshr i64 %i.bs, 6
  %i.bu = add i64 %i.bt, %i.bl                    ; 3 uses
  %i.bv = add nuw i64 %.sroa.04.0.i.i.i3, 2       ; 2 uses
  %niter25.next.1 = add nuw i64 %niter25, 2       ; 2 uses
  %niter25.ncmp.1 = icmp eq i64 %niter25.next.1, %unroll_iter24
  br i1 %niter25.ncmp.1, label %.lr.ph.preheader.i.i.unr-lcssa, label %bb.g

.lr.ph.preheader.i.i.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod21.not = icmp eq i64 %xtraiter20, 0
  br i1 %lcmp.mod21.not, label %.lr.ph.preheader.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.preheader.i.i.unr-lcssa, %bb.f
  %.sroa.04.0.i.i.i3.epil.init = phi i64 [ 0, %bb.f ], [ %i.bv, %.lr.ph.preheader.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i4.epil.init = phi i64 [ 0, %bb.f ], [ %i.bu, %.lr.ph.preheader.i.i.unr-lcssa ]
  %lcmp.mod23 = trunc i64 %i.n to i1
  call void @llvm.assume(i1 %lcmp.mod23)
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.04.0.i.i.i3.epil.init
  %.val.i.i.i5.epil = load i64, ptr %i.bw, align 8, !alias.scope !14621, !noundef !12
  %i.bx = or i64 %.val.i.i.i5.epil, 1
  %i.by = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bx, i1 true)
  %i.bz = xor i64 %i.by, 63
  %i.ca = mul nuw nsw i64 %i.bz, 9
  %i.cb = add nuw nsw i64 %i.ca, 73
  %i.cc = lshr i64 %i.cb, 6
  %i.cd = add i64 %i.cc, %.sroa.02.0.i.i.i4.epil.init
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.preheader.i.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.bu, %.lr.ph.preheader.i.i.unr-lcssa ], [ %i.cd, %.epil.preheader ]
  %.idx.i.i = shl nuw nsw i64 %i.n, 3
  %i.ce = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %.lcssa, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !14621
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.02.i.i = phi ptr [ %i.cf, %.lr.ph.i.i ], [ %i.l, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 8 ; 2 uses
  %i.cg = load i64, ptr %.sroa.0.02.i.i, align 8, !alias.scope !14621, !noundef !12
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %i.cg, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !14621
  %i.ch = icmp eq ptr %i.cf, %i.ce
  br i1 %i.ch, label %"_ZN79_$LT$anki_proto..notes..AddNotesResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17hbc078eabca4f6b0dE.exit", label %.lr.ph.i.i

bb.h:                                             ; preds = %"_ZN79_$LT$anki_proto..notes..AddNotesResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h05ba03104e510090E.exit"
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ay, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bb, ptr %i.cj, align 8
  br label %"_ZN79_$LT$anki_proto..notes..AddNotesResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17hbc078eabca4f6b0dE.exit"

"_ZN79_$LT$anki_proto..notes..AddNotesResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17hbc078eabca4f6b0dE.exit": ; preds = %.lr.ph.i.i, %bb.e, %bb.h
  %storemerge = phi i64 [ 1, %bb.h ], [ 0, %bb.e ], [ 0, %.lr.ph.i.i ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17h2fdd42d3db2fdad1E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !14633 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.c, align 8, !noundef !12 ; 9 uses
  %i.d = icmp eq i64 %.val3, 0
  br i1 %i.d, label %"_ZN89_$LT$anki_proto..notes..ClozeNumbersInNoteResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h9e1a07389c433b8dE.exit", label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.a
  %i.e = add i64 %.val3, -1                       ; 2 uses
  %xtraiter = and i64 %.val3, 1
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.preheader.i.i.epil.preheader, label %.preheader.i.i.preheader.new

.preheader.i.i.preheader.new:                     ; preds = %.preheader.i.i.preheader
  %unroll_iter = and i64 %.val3, -2
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.i.preheader.new
  %.sroa.04.0.i.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.z, %.preheader.i.i ] ; 3 uses
  %.sroa.02.0.i.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.y, %.preheader.i.i ]
  %niter = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %.val2, i64 %.sroa.04.0.i.i.i
  %.val.i.i.i = load i32, ptr %i.g, align 4, !alias.scope !14634, !noundef !12
  %i.h = or i32 %.val.i.i.i, 1
  %i.i = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.h, i1 true)
  %i.j = xor i32 %i.i, 31
  %i.k = mul nuw nsw i32 %i.j, 9
  %i.l = add nuw nsw i32 %i.k, 73
  %i.m = lshr i32 %i.l, 6
  %i.n = zext nneg i32 %i.m to i64
  %i.o = add i64 %.sroa.02.0.i.i.i, %i.n
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.val2, i64 %.sroa.04.0.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.val.i.i.i.1 = load i32, ptr %i.q, align 4, !alias.scope !14634, !noundef !12
  %i.r = or i32 %.val.i.i.i.1, 1
  %i.s = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.r, i1 true)
  %i.t = xor i32 %i.s, 31
  %i.u = mul nuw nsw i32 %i.t, 9
  %i.v = add nuw nsw i32 %i.u, 73
  %i.w = lshr i32 %i.v, 6
  %i.x = zext nneg i32 %i.w to i64
  %i.y = add i64 %i.o, %i.x                       ; 3 uses
  %i.z = add nuw i64 %.sroa.04.0.i.i.i, 2         ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN89_$LT$anki_proto..notes..ClozeNumbersInNoteResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h75afc54605a4bf2bE.exit.unr-lcssa", label %.preheader.i.i

"_ZN89_$LT$anki_proto..notes..ClozeNumbersInNoteResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h75afc54605a4bf2bE.exit.unr-lcssa": ; preds = %.preheader.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN89_$LT$anki_proto..notes..ClozeNumbersInNoteResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h75afc54605a4bf2bE.exit", label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %"_ZN89_$LT$anki_proto..notes..ClozeNumbersInNoteResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h75afc54605a4bf2bE.exit.unr-lcssa", %.preheader.i.i.preheader
  %.sroa.04.0.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.z, %"_ZN89_$LT$anki_proto..notes..ClozeNumbersInNoteResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h75afc54605a4bf2bE.exit.unr-lcssa" ]
  %.sroa.02.0.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.y, %"_ZN89_$LT$anki_proto..notes..ClozeNumbersInNoteResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h75afc54605a4bf2bE.exit.unr-lcssa" ]
  %lcmp.mod18 = trunc i64 %.val3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod18)
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.val2, i64 %.sroa.04.0.i.i.i.epil.init
  %.val.i.i.i.epil = load i32, ptr %i.aa, align 4, !alias.scope !14634, !noundef !12
  %i.ab = or i32 %.val.i.i.i.epil, 1
  %i.ac = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ab, i1 true)
  %i.ad = xor i32 %i.ac, 31
  %i.ae = mul nuw nsw i32 %i.ad, 9
  %i.af = add nuw nsw i32 %i.ae, 73
  %i.ag = lshr i32 %i.af, 6
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = add i64 %.sroa.02.0.i.i.i.epil.init, %i.ah
  br label %"_ZN89_$LT$anki_proto..notes..ClozeNumbersInNoteResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h75afc54605a4bf2bE.exit"

"_ZN89_$LT$anki_proto..notes..ClozeNumbersInNoteResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h75afc54605a4bf2bE.exit": ; preds = %"_ZN89_$LT$anki_proto..notes..ClozeNumbersInNoteResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h75afc54605a4bf2bE.exit.unr-lcssa", %.preheader.i.i.epil.preheader
  %.lcssa16 = phi i64 [ %i.y, %"_ZN89_$LT$anki_proto..notes..ClozeNumbersInNoteResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h75afc54605a4bf2bE.exit.unr-lcssa" ], [ %i.ai, %.preheader.i.i.epil.preheader ] ; 2 uses
  %i.aj = or i64 %.lcssa16, 1
  %i.ak = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aj, i1 true)
  %i.al = xor i64 %i.ak, 63
  %i.am = mul nuw nsw i64 %i.al, 9
  %i.an = add nuw nsw i64 %i.am, 73
  %i.ao = lshr i64 %i.an, 6
  %i.ap = add i64 %.lcssa16, 1
  %i.aq = add i64 %i.ap, %i.ao                    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.ar, align 8, !noundef !12 ; 2 uses
  %i.as = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.as)
  %i.at = xor i64 %.val, 9223372036854775807      ; 2 uses
  %i.au = icmp ugt i64 %i.aq, %i.at
  br i1 %i.au, label %bb.d, label %bb.b

bb.b:                                             ; preds = %"_ZN89_$LT$anki_proto..notes..ClozeNumbersInNoteResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h75afc54605a4bf2bE.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14635)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14636
  store i8 10, ptr %i.a, align 1, !noalias !14636
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !14635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14636
  %xtraiter19 = and i64 %.val3, 1
  %i.av = icmp eq i64 %i.e, 0
  br i1 %i.av, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter23 = and i64 %.val3, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.04.0.i.i.i6 = phi i64 [ 0, %.new ], [ %i.bp, %bb.c ] ; 3 uses
  %.sroa.02.0.i.i.i7 = phi i64 [ 0, %.new ], [ %i.bo, %bb.c ]
  %niter24 = phi i64 [ 0, %.new ], [ %niter24.next.1, %bb.c ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.val2, i64 %.sroa.04.0.i.i.i6
  %.val.i.i.i8 = load i32, ptr %i.aw, align 4, !alias.scope !14635, !noalias !14637, !noundef !12
  %i.ax = or i32 %.val.i.i.i8, 1
  %i.ay = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ax, i1 true)
  %i.az = xor i32 %i.ay, 31
  %i.ba = mul nuw nsw i32 %i.az, 9
  %i.bb = add nuw nsw i32 %i.ba, 73
  %i.bc = lshr i32 %i.bb, 6
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = add i64 %.sroa.02.0.i.i.i7, %i.bd
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.val2, i64 %.sroa.04.0.i.i.i6
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %.val.i.i.i8.1 = load i32, ptr %i.bg, align 4, !alias.scope !14635, !noalias !14637, !noundef !12
  %i.bh = or i32 %.val.i.i.i8.1, 1
  %i.bi = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bh, i1 true)
  %i.bj = xor i32 %i.bi, 31
  %i.bk = mul nuw nsw i32 %i.bj, 9
  %i.bl = add nuw nsw i32 %i.bk, 73
  %i.bm = lshr i32 %i.bl, 6
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = add i64 %i.be, %i.bn                    ; 3 uses
  %i.bp = add nuw i64 %.sroa.04.0.i.i.i6, 2       ; 2 uses
  %niter24.next.1 = add nuw i64 %niter24, 2       ; 2 uses
  %niter24.ncmp.1 = icmp eq i64 %niter24.next.1, %unroll_iter23
  br i1 %niter24.ncmp.1, label %.lr.ph.preheader.i.i.unr-lcssa, label %bb.c

.lr.ph.preheader.i.i.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod20.not = icmp eq i64 %xtraiter19, 0
  br i1 %lcmp.mod20.not, label %.lr.ph.preheader.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.preheader.i.i.unr-lcssa, %bb.b
  %.sroa.04.0.i.i.i6.epil.init = phi i64 [ 0, %bb.b ], [ %i.bp, %.lr.ph.preheader.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i7.epil.init = phi i64 [ 0, %bb.b ], [ %i.bo, %.lr.ph.preheader.i.i.unr-lcssa ]
  %lcmp.mod22 = trunc i64 %.val3 to i1
  call void @llvm.assume(i1 %lcmp.mod22)
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.val2, i64 %.sroa.04.0.i.i.i6.epil.init
  %.val.i.i.i8.epil = load i32, ptr %i.bq, align 4, !alias.scope !14635, !noalias !14637, !noundef !12
  %i.br = or i32 %.val.i.i.i8.epil, 1
  %i.bs = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.br, i1 true)
  %i.bt = xor i32 %i.bs, 31
  %i.bu = mul nuw nsw i32 %i.bt, 9
  %i.bv = add nuw nsw i32 %i.bu, 73
  %i.bw = lshr i32 %i.bv, 6
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = add i64 %.sroa.02.0.i.i.i7.epil.init, %i.bx
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.preheader.i.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.bo, %.lr.ph.preheader.i.i.unr-lcssa ], [ %i.by, %.epil.preheader ]
  %.idx.i.i = shl nuw nsw i64 %.val3, 2
  %i.bz = getelementptr inbounds nuw i8, ptr %.val2, i64 %.idx.i.i
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %.lcssa, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !14635
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.02.i.i = phi ptr [ %i.ca, %.lr.ph.i.i ], [ %.val2, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 4 ; 2 uses
  %i.cb = load i32, ptr %.sroa.0.02.i.i, align 4, !alias.scope !14635, !noalias !14637, !noundef !12
  %i.cc = zext i32 %i.cb to i64
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %i.cc, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !14635
  %i.cd = icmp eq ptr %i.ca, %i.bz
  br i1 %i.cd, label %"_ZN89_$LT$anki_proto..notes..ClozeNumbersInNoteResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h9e1a07389c433b8dE.exit", label %.lr.ph.i.i

bb.d:                                             ; preds = %"_ZN89_$LT$anki_proto..notes..ClozeNumbersInNoteResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h75afc54605a4bf2bE.exit"
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aq, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.at, ptr %i.cf, align 8
  br label %"_ZN89_$LT$anki_proto..notes..ClozeNumbersInNoteResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h9e1a07389c433b8dE.exit"

"_ZN89_$LT$anki_proto..notes..ClozeNumbersInNoteResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h9e1a07389c433b8dE.exit": ; preds = %.lr.ph.i.i, %bb.a, %bb.d
  %storemerge = phi i64 [ 1, %bb.d ], [ 0, %bb.a ], [ 0, %.lr.ph.i.i ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17h333d777f9cd8484dE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !14687 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14688)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !14688, !nonnull !12, !noundef !12 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !14688, !noundef !12 ; 7 uses
  %i.k = icmp eq i64 %i.j, 0                      ; 2 uses
  br i1 %i.k, label %_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.a
  %xtraiter = and i64 %i.j, 1
  %i.l = icmp eq i64 %i.j, 1
  br i1 %i.l, label %.preheader.i.i.epil.preheader, label %.preheader.i.i.preheader.new

.preheader.i.i.preheader.new:                     ; preds = %.preheader.i.i.preheader
  %unroll_iter = and i64 %i.j, -2
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.i.preheader.new
  %.sroa.04.0.i.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.ai, %.preheader.i.i ] ; 3 uses
  %.sroa.02.0.i.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.ah, %.preheader.i.i ]
  %niter = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i ]
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.sroa.04.0.i.i.i
  %i.n = getelementptr i8, ptr %i.m, i64 16
  %.val.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !14689, !noalias !14688, !noundef !12 ; 3 uses
  %i.o = icmp sgt i64 %.val.i.i.i, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = or i64 %.val.i.i.i, 1
  %i.q = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.r = xor i64 %i.q, 63
  %i.s = mul nuw nsw i64 %i.r, 9
  %i.t = add nuw nsw i64 %i.s, 73
  %i.u = lshr i64 %i.t, 6
  %i.v = add i64 %.val.i.i.i, %.sroa.02.0.i.i.i
  %i.w = add i64 %i.v, %i.u
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.sroa.04.0.i.i.i
  %i.y = getelementptr i8, ptr %i.x, i64 40
  %.val.i.i.i.1 = load i64, ptr %i.y, align 8, !alias.scope !14689, !noalias !14688, !noundef !12 ; 3 uses
  %i.z = icmp sgt i64 %.val.i.i.i.1, -1
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = or i64 %.val.i.i.i.1, 1
  %i.ab = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ac = xor i64 %i.ab, 63
  %i.ad = mul nuw nsw i64 %i.ac, 9
  %i.ae = add nuw nsw i64 %i.ad, 73
  %i.af = lshr i64 %i.ae, 6
  %i.ag = add i64 %.val.i.i.i.1, %i.w
  %i.ah = add i64 %i.ag, %i.af                    ; 3 uses
  %i.ai = add nuw i64 %.sroa.04.0.i.i.i, 2        ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit.i.loopexit.unr-lcssa, label %.preheader.i.i

_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit.i.loopexit.unr-lcssa: ; preds = %.preheader.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit.i, label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit.i.loopexit.unr-lcssa, %.preheader.i.i.preheader
  %.sroa.04.0.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.ai, %_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit.i.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.ah, %_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod27 = trunc i64 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.sroa.04.0.i.i.i.epil.init
  %i.ak = getelementptr i8, ptr %i.aj, i64 16
  %.val.i.i.i.epil = load i64, ptr %i.ak, align 8, !alias.scope !14689, !noalias !14688, !noundef !12 ; 3 uses
  %i.al = icmp sgt i64 %.val.i.i.i.epil, -1
  tail call void @llvm.assume(i1 %i.al)
  %i.am = or i64 %.val.i.i.i.epil, 1
  %i.an = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.am, i1 true)
  %i.ao = xor i64 %i.an, 63
  %i.ap = mul nuw nsw i64 %i.ao, 9
  %i.aq = add nuw nsw i64 %i.ap, 73
  %i.ar = lshr i64 %i.aq, 6
  %i.as = add i64 %.val.i.i.i.epil, %.sroa.02.0.i.i.i.epil.init
  %i.at = add i64 %i.as, %i.ar
  br label %_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit.i

_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit.i: ; preds = %.preheader.i.i.epil.preheader, %_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit.i.loopexit.unr-lcssa, %bb.a
  %.sroa.0.0.i.i.i = phi i64 [ 0, %bb.a ], [ %i.ah, %_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit.i.loopexit.unr-lcssa ], [ %i.at, %.preheader.i.i.epil.preheader ]
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !14688, !nonnull !12, !noundef !12 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !14688, !noundef !12 ; 7 uses
  %i.ay = icmp eq i64 %i.ax, 0                    ; 2 uses
  br i1 %i.ay, label %_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit8.i, label %.preheader.i3.i.preheader

.preheader.i3.i.preheader:                        ; preds = %_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit.i
  %xtraiter28 = and i64 %i.ax, 1
  %i.az = icmp eq i64 %i.ax, 1
  br i1 %i.az, label %.preheader.i3.i.epil.preheader, label %.preheader.i3.i.preheader.new

.preheader.i3.i.preheader.new:                    ; preds = %.preheader.i3.i.preheader
  %unroll_iter32 = and i64 %i.ax, -2
  br label %.preheader.i3.i

.preheader.i3.i:                                  ; preds = %.preheader.i3.i, %.preheader.i3.i.preheader.new
  %.sroa.04.0.i.i4.i = phi i64 [ 0, %.preheader.i3.i.preheader.new ], [ %i.bw, %.preheader.i3.i ] ; 3 uses
  %.sroa.02.0.i.i5.i = phi i64 [ 0, %.preheader.i3.i.preheader.new ], [ %i.bv, %.preheader.i3.i ]
  %niter33 = phi i64 [ 0, %.preheader.i3.i.preheader.new ], [ %niter33.next.1, %.preheader.i3.i ]
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %.sroa.04.0.i.i4.i
  %i.bb = getelementptr i8, ptr %i.ba, i64 16
  %.val.i.i6.i = load i64, ptr %i.bb, align 8, !alias.scope !14690, !noalias !14688, !noundef !12 ; 3 uses
  %i.bc = icmp sgt i64 %.val.i.i6.i, -1
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = or i64 %.val.i.i6.i, 1
  %i.be = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.bd, i1 true)
  %i.bf = xor i64 %i.be, 63
  %i.bg = mul nuw nsw i64 %i.bf, 9
  %i.bh = add nuw nsw i64 %i.bg, 73
  %i.bi = lshr i64 %i.bh, 6
  %i.bj = add i64 %.val.i.i6.i, %.sroa.02.0.i.i5.i
  %i.bk = add i64 %i.bj, %i.bi
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %.sroa.04.0.i.i4.i
  %i.bm = getelementptr i8, ptr %i.bl, i64 40
  %.val.i.i6.i.1 = load i64, ptr %i.bm, align 8, !alias.scope !14690, !noalias !14688, !noundef !12 ; 3 uses
  %i.bn = icmp sgt i64 %.val.i.i6.i.1, -1
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = or i64 %.val.i.i6.i.1, 1
  %i.bp = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.bo, i1 true)
  %i.bq = xor i64 %i.bp, 63
  %i.br = mul nuw nsw i64 %i.bq, 9
  %i.bs = add nuw nsw i64 %i.br, 73
  %i.bt = lshr i64 %i.bs, 6
  %i.bu = add i64 %.val.i.i6.i.1, %i.bk
  %i.bv = add i64 %i.bu, %i.bt                    ; 3 uses
  %i.bw = add nuw i64 %.sroa.04.0.i.i4.i, 2       ; 2 uses
  %niter33.next.1 = add nuw i64 %niter33, 2       ; 2 uses
  %niter33.ncmp.1 = icmp eq i64 %niter33.next.1, %unroll_iter32
  br i1 %niter33.ncmp.1, label %_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit8.i.loopexit.unr-lcssa, label %.preheader.i3.i

_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit8.i.loopexit.unr-lcssa: ; preds = %.preheader.i3.i
  %lcmp.mod29.not = icmp eq i64 %xtraiter28, 0
  br i1 %lcmp.mod29.not, label %_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit8.i, label %.preheader.i3.i.epil.preheader

.preheader.i3.i.epil.preheader:                   ; preds = %_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit8.i.loopexit.unr-lcssa, %.preheader.i3.i.preheader
  %.sroa.04.0.i.i4.i.epil.init = phi i64 [ 0, %.preheader.i3.i.preheader ], [ %i.bw, %_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit8.i.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i5.i.epil.init = phi i64 [ 0, %.preheader.i3.i.preheader ], [ %i.bv, %_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit8.i.loopexit.unr-lcssa ]
  %lcmp.mod31 = trunc i64 %i.ax to i1
  tail call void @llvm.assume(i1 %lcmp.mod31)
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %.sroa.04.0.i.i4.i.epil.init
  %i.by = getelementptr i8, ptr %i.bx, i64 16
  %.val.i.i6.i.epil = load i64, ptr %i.by, align 8, !alias.scope !14690, !noalias !14688, !noundef !12 ; 3 uses
  %i.bz = icmp sgt i64 %.val.i.i6.i.epil, -1
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = or i64 %.val.i.i6.i.epil, 1
  %i.cb = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.ca, i1 true)
  %i.cc = xor i64 %i.cb, 63
  %i.cd = mul nuw nsw i64 %i.cc, 9
  %i.ce = add nuw nsw i64 %i.cd, 73
  %i.cf = lshr i64 %i.ce, 6
  %i.cg = add i64 %.val.i.i6.i.epil, %.sroa.02.0.i.i5.i.epil.init
  %i.ch = add i64 %i.cg, %i.cf
  br label %_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit8.i

_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit8.i: ; preds = %.preheader.i3.i.epil.preheader, %_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit8.i.loopexit.unr-lcssa, %_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit.i
  %.sroa.0.0.i.i7.i = phi i64 [ 0, %_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit.i ], [ %i.bv, %_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit8.i.loopexit.unr-lcssa ], [ %i.ch, %.preheader.i3.i.epil.preheader ]
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cj = load ptr, ptr %i.ci, align 8, !alias.scope !14688, !nonnull !12, !noundef !12 ; 8 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cl = load i64, ptr %i.ck, align 8, !alias.scope !14688, !noundef !12 ; 10 uses
  %i.cm = icmp eq i64 %i.cl, 0                    ; 2 uses
  br i1 %i.cm, label %_ZN5prost8encoding5int6418encoded_len_packed17hbb7a30423ae696ddE.exit.i, label %.preheader.i9.i.preheader

.preheader.i9.i.preheader:                        ; preds = %_ZN5prost8encoding6string20encoded_len_repeated17h476e33356feff050E.exit8.i
  %xtraiter34 = and i64 %i.cl, 1
  %i.cn = icmp eq i64 %i.cl, 1
  br i1 %i.cn, label %.preheader.i9.i.epil.preheader, label %.preheader.i9.i.preheader.new

.preheader.i9.i.preheader.new:                    ; preds = %.preheader.i9.i.preheader
  %unroll_iter38 = and i64 %i.cl, -2
  br label %.preheader.i9.i

.preheader.i9.i:                                  ; preds = %.preheader.i9.i, %.preheader.i9.i.preheader.new
  %.sroa.04.0.i.i10.i = phi i64 [ 0, %.preheader.i9.i.preheader.new ], [ %i.df, %.preheader.i9.i ] ; 3 uses
  %.sroa.02.0.i.i11.i = phi i64 [ 0, %.preheader.i9.i.preheader.new ], [ %i.de, %.preheader.i9.i ]
  %niter39 = phi i64 [ 0, %.preheader.i9.i.preheader.new ], [ %niter39.next.1, %.preheader.i9.i ]
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.sroa.04.0.i.i10.i
  %.val.i.i12.i = load i64, ptr %i.co, align 8, !alias.scope !14691, !noalias !14688, !noundef !12
  %i.cp = or i64 %.val.i.i12.i, 1
  %i.cq = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true)
  %i.cr = xor i64 %i.cq, 63
  %i.cs = mul nuw nsw i64 %i.cr, 9
  %i.ct = add nuw nsw i64 %i.cs, 73
  %i.cu = lshr i64 %i.ct, 6
  %i.cv = add i64 %i.cu, %.sroa.02.0.i.i11.i
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.sroa.04.0.i.i10.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %.val.i.i12.i.1 = load i64, ptr %i.cx, align 8, !alias.scope !14691, !noalias !14688, !noundef !12
end_hunk_0
begin_hunk_1_@_ZN5prost7message7Message6encode17h53c465595d0c3787E:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.b, align 8, !noundef !12 ; 4 uses
  %i.c = getelementptr inbounds nuw [40 x i8], ptr %.val2, i64 %.val3
  %i.d = tail call noundef i64 @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he52aa0f918b63d57E"(ptr noundef nonnull readonly align 8 %.val2, ptr noundef nonnull readonly %i.c, i64 noundef 0)
  %i.e = add i64 %i.d, %.val3                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.f, align 8, !noundef !12 ; 2 uses
  %i.g = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = xor i64 %.val, 9223372036854775807       ; 2 uses
  %i.i = icmp ugt i64 %i.e, %i.h
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.idx.i = mul nuw nsw i64 %.val3, 40
  %i.j = getelementptr inbounds nuw i8, ptr %.val2, i64 %.idx.i
  %i.k = icmp eq i64 %.val3, 0
  br i1 %i.k, label %"_ZN84_$LT$anki_proto..notetypes..NotetypeUseCounts$u20$as$u20$prost..message..Message$GT$10encode_raw17h56e7291914536d51E.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.0.01.i = phi ptr [ %i.l, %.lr.ph.i ], [ %.val2, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i, i64 40 ; 2 uses
  tail call void @_ZN5prost8encoding7message6encode17he91d8dc3471a101eE(i32 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.0.01.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  %i.m = icmp eq ptr %i.l, %i.j
  br i1 %i.m, label %"_ZN84_$LT$anki_proto..notetypes..NotetypeUseCounts$u20$as$u20$prost..message..Message$GT$10encode_raw17h56e7291914536d51E.exit", label %.lr.ph.i

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.h, ptr %i.o, align 8
  br label %"_ZN84_$LT$anki_proto..notetypes..NotetypeUseCounts$u20$as$u20$prost..message..Message$GT$10encode_raw17h56e7291914536d51E.exit"

"_ZN84_$LT$anki_proto..notetypes..NotetypeUseCounts$u20$as$u20$prost..message..Message$GT$10encode_raw17h56e7291914536d51E.exit": ; preds = %.lr.ph.i, %bb.b, %bb.c
  %storemerge = phi i64 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %.lr.ph.i ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17h5520a1727bab7d61E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(12) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !guid !14779 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [1 x i8], align 1                 ; 4 uses
  %i.h = alloca [1 x i8], align 1                 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i8, ptr %i.i, align 4, !range !21, !alias.scope !14780, !noundef !12 ; 2 uses
  %i.k = load i32, ptr %1, align 4, !alias.scope !14780, !noundef !12 ; 3 uses
  %i.l = icmp eq i32 %i.k, 0                      ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = or i32 %i.k, 1
  %i.n = sext i32 %i.m to i64
  %i.o = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.p = xor i64 %i.o, 63
  %i.q = mul nuw nsw i64 %i.p, 9
  %i.r = add nuw nsw i64 %i.q, 73
  %i.s = lshr i64 %i.r, 6
  %i.t = add nuw nsw i64 %i.s, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.01.0.i = phi i64 [ %i.t, %bb.b ], [ 0, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i32, ptr %i.u, align 4, !alias.scope !14780, !noundef !12 ; 3 uses
  %i.w = icmp eq i32 %i.v, 0                      ; 2 uses
  br i1 %i.w, label %"_ZN95_$LT$anki_proto..import_export..ImportAnkiPackageOptions$u20$as$u20$prost..message..Message$GT$11encoded_len17h42e4a300a70f0544E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = or i32 %i.v, 1
  %i.y = sext i32 %i.x to i64
  %i.z = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.y, i1 true)
  %i.aa = xor i64 %i.z, 63
  %i.ab = mul nuw nsw i64 %i.aa, 9
  %i.ac = add nuw nsw i64 %i.ab, 73
  %i.ad = lshr i64 %i.ac, 6
  %i.ae = add nuw nsw i64 %i.ad, 1
  br label %"_ZN95_$LT$anki_proto..import_export..ImportAnkiPackageOptions$u20$as$u20$prost..message..Message$GT$11encoded_len17h42e4a300a70f0544E.exit"

"_ZN95_$LT$anki_proto..import_export..ImportAnkiPackageOptions$u20$as$u20$prost..message..Message$GT$11encoded_len17h42e4a300a70f0544E.exit": ; preds = %bb.c, %bb.d
  %.sroa.02.0.i = phi i64 [ %i.ae, %bb.d ], [ 0, %bb.c ]
  %i.af = shl nuw nsw i8 %i.j, 1
  %spec.select.i = zext nneg i8 %i.af to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ah = load i8, ptr %i.ag, align 1, !range !21, !alias.scope !14780, !noundef !12 ; 2 uses
  %i.ai = shl nuw nsw i8 %i.ah, 1
  %spec.select6.i = zext nneg i8 %i.ai to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ak = load i8, ptr %i.aj, align 2, !range !21, !alias.scope !14780, !noundef !12 ; 2 uses
  %i.al = shl nuw nsw i8 %i.ak, 1
  %.sroa.04.0.i = zext nneg i8 %i.al to i64
  %i.am = add nuw nsw i64 %.sroa.01.0.i, %spec.select.i
  %i.an = add nuw nsw i64 %i.am, %.sroa.02.0.i
  %i.ao = add nuw nsw i64 %i.an, %spec.select6.i
  %i.ap = add nuw nsw i64 %i.ao, %.sroa.04.0.i    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.aq, align 8, !noundef !12 ; 2 uses
  %i.ar = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = xor i64 %.val, 9223372036854775807      ; 2 uses
  %i.at = icmp samesign ugt i64 %i.ap, %i.as
  br i1 %i.at, label %bb.o, label %bb.e

bb.e:                                             ; preds = %"_ZN95_$LT$anki_proto..import_export..ImportAnkiPackageOptions$u20$as$u20$prost..message..Message$GT$11encoded_len17h42e4a300a70f0544E.exit"
  %i.au = trunc nuw i8 %i.j to i1
  br i1 %i.au, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  br i1 %i.l, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !14781
  store i8 8, ptr %i.h, align 1, !noalias !14781
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.h, i64 noundef 1), !noalias !14782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !14781
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14783
  store i8 1, ptr %i.a, align 1, !noalias !14783
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !14782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14783
  br label %bb.f

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !14784
  store i8 16, ptr %i.g, align 1, !noalias !14784
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.g, i64 noundef 1), !noalias !14785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !14784
  %i.av = sext i32 %i.k to i64
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %i.av, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !14785
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  br i1 %i.w, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !14786
  store i8 24, ptr %i.f, align 1, !noalias !14786
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.f, i64 noundef 1), !noalias !14787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !14786
  %i.aw = sext i32 %i.v to i64
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %i.aw, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !14787
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ax = trunc nuw i8 %i.ah to i1
  br i1 %i.ax, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.ay = trunc nuw i8 %i.ak to i1
  br i1 %i.ay, label %bb.n, label %"_ZN95_$LT$anki_proto..import_export..ImportAnkiPackageOptions$u20$as$u20$prost..message..Message$GT$10encode_raw17hddfceb05d12d0919E.exit"

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !14788
  store i8 32, ptr %i.e, align 1, !noalias !14788
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.e, i64 noundef 1), !noalias !14789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !14788
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14790
  store i8 1, ptr %i.b, align 1, !noalias !14790
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef 1), !noalias !14789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14790
  br label %bb.l

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14791
  store i8 40, ptr %i.d, align 1, !noalias !14791
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.d, i64 noundef 1), !noalias !14792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14793
  store i8 1, ptr %i.c, align 1, !noalias !14793
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.c, i64 noundef 1), !noalias !14792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14793
  br label %"_ZN95_$LT$anki_proto..import_export..ImportAnkiPackageOptions$u20$as$u20$prost..message..Message$GT$10encode_raw17hddfceb05d12d0919E.exit"

bb.o:                                             ; preds = %"_ZN95_$LT$anki_proto..import_export..ImportAnkiPackageOptions$u20$as$u20$prost..message..Message$GT$11encoded_len17h42e4a300a70f0544E.exit"
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ap, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.as, ptr %i.ba, align 8
  br label %"_ZN95_$LT$anki_proto..import_export..ImportAnkiPackageOptions$u20$as$u20$prost..message..Message$GT$10encode_raw17hddfceb05d12d0919E.exit"

"_ZN95_$LT$anki_proto..import_export..ImportAnkiPackageOptions$u20$as$u20$prost..message..Message$GT$10encode_raw17hddfceb05d12d0919E.exit": ; preds = %bb.n, %bb.l, %bb.o
  %storemerge = phi i64 [ 1, %bb.o ], [ 0, %bb.l ], [ 0, %bb.n ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17h5918cf1406f38424E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !14804 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.c, align 8, !noundef !12 ; 9 uses
  %i.d = icmp eq i64 %.val3, 0
  br i1 %i.d, label %"_ZN92_$LT$anki_proto..notetypes..GetClozeFieldOrdsResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h3ee00674ec665f11E.exit", label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.a
  %i.e = add i64 %.val3, -1                       ; 2 uses
  %xtraiter = and i64 %.val3, 1
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.preheader.i.i.epil.preheader, label %.preheader.i.i.preheader.new

.preheader.i.i.preheader.new:                     ; preds = %.preheader.i.i.preheader
  %unroll_iter = and i64 %.val3, -2
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.i.preheader.new
  %.sroa.04.0.i.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.z, %.preheader.i.i ] ; 3 uses
  %.sroa.02.0.i.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.y, %.preheader.i.i ]
  %niter = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %.val2, i64 %.sroa.04.0.i.i.i
  %.val.i.i.i = load i32, ptr %i.g, align 4, !alias.scope !14805, !noundef !12
  %i.h = or i32 %.val.i.i.i, 1
  %i.i = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.h, i1 true)
  %i.j = xor i32 %i.i, 31
  %i.k = mul nuw nsw i32 %i.j, 9
  %i.l = add nuw nsw i32 %i.k, 73
  %i.m = lshr i32 %i.l, 6
  %i.n = zext nneg i32 %i.m to i64
  %i.o = add i64 %.sroa.02.0.i.i.i, %i.n
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.val2, i64 %.sroa.04.0.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.val.i.i.i.1 = load i32, ptr %i.q, align 4, !alias.scope !14805, !noundef !12
  %i.r = or i32 %.val.i.i.i.1, 1
  %i.s = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.r, i1 true)
  %i.t = xor i32 %i.s, 31
  %i.u = mul nuw nsw i32 %i.t, 9
  %i.v = add nuw nsw i32 %i.u, 73
  %i.w = lshr i32 %i.v, 6
  %i.x = zext nneg i32 %i.w to i64
  %i.y = add i64 %i.o, %i.x                       ; 3 uses
  %i.z = add nuw i64 %.sroa.04.0.i.i.i, 2         ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN92_$LT$anki_proto..notetypes..GetClozeFieldOrdsResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h5d68063b8778408fE.exit.unr-lcssa", label %.preheader.i.i

"_ZN92_$LT$anki_proto..notetypes..GetClozeFieldOrdsResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h5d68063b8778408fE.exit.unr-lcssa": ; preds = %.preheader.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN92_$LT$anki_proto..notetypes..GetClozeFieldOrdsResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h5d68063b8778408fE.exit", label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %"_ZN92_$LT$anki_proto..notetypes..GetClozeFieldOrdsResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h5d68063b8778408fE.exit.unr-lcssa", %.preheader.i.i.preheader
  %.sroa.04.0.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.z, %"_ZN92_$LT$anki_proto..notetypes..GetClozeFieldOrdsResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h5d68063b8778408fE.exit.unr-lcssa" ]
  %.sroa.02.0.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.y, %"_ZN92_$LT$anki_proto..notetypes..GetClozeFieldOrdsResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h5d68063b8778408fE.exit.unr-lcssa" ]
  %lcmp.mod18 = trunc i64 %.val3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod18)
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.val2, i64 %.sroa.04.0.i.i.i.epil.init
  %.val.i.i.i.epil = load i32, ptr %i.aa, align 4, !alias.scope !14805, !noundef !12
  %i.ab = or i32 %.val.i.i.i.epil, 1
  %i.ac = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ab, i1 true)
  %i.ad = xor i32 %i.ac, 31
  %i.ae = mul nuw nsw i32 %i.ad, 9
  %i.af = add nuw nsw i32 %i.ae, 73
  %i.ag = lshr i32 %i.af, 6
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = add i64 %.sroa.02.0.i.i.i.epil.init, %i.ah
  br label %"_ZN92_$LT$anki_proto..notetypes..GetClozeFieldOrdsResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h5d68063b8778408fE.exit"

"_ZN92_$LT$anki_proto..notetypes..GetClozeFieldOrdsResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h5d68063b8778408fE.exit": ; preds = %"_ZN92_$LT$anki_proto..notetypes..GetClozeFieldOrdsResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h5d68063b8778408fE.exit.unr-lcssa", %.preheader.i.i.epil.preheader
  %.lcssa16 = phi i64 [ %i.y, %"_ZN92_$LT$anki_proto..notetypes..GetClozeFieldOrdsResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h5d68063b8778408fE.exit.unr-lcssa" ], [ %i.ai, %.preheader.i.i.epil.preheader ] ; 2 uses
  %i.aj = or i64 %.lcssa16, 1
  %i.ak = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aj, i1 true)
  %i.al = xor i64 %i.ak, 63
  %i.am = mul nuw nsw i64 %i.al, 9
  %i.an = add nuw nsw i64 %i.am, 73
  %i.ao = lshr i64 %i.an, 6
  %i.ap = add i64 %.lcssa16, 1
  %i.aq = add i64 %i.ap, %i.ao                    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.ar, align 8, !noundef !12 ; 2 uses
  %i.as = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.as)
  %i.at = xor i64 %.val, 9223372036854775807      ; 2 uses
  %i.au = icmp ugt i64 %i.aq, %i.at
  br i1 %i.au, label %bb.d, label %bb.b

bb.b:                                             ; preds = %"_ZN92_$LT$anki_proto..notetypes..GetClozeFieldOrdsResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h5d68063b8778408fE.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14806)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14807
  store i8 10, ptr %i.a, align 1, !noalias !14807
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !14806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14807
  %xtraiter19 = and i64 %.val3, 1
  %i.av = icmp eq i64 %i.e, 0
  br i1 %i.av, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter23 = and i64 %.val3, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.04.0.i.i.i6 = phi i64 [ 0, %.new ], [ %i.bp, %bb.c ] ; 3 uses
  %.sroa.02.0.i.i.i7 = phi i64 [ 0, %.new ], [ %i.bo, %bb.c ]
  %niter24 = phi i64 [ 0, %.new ], [ %niter24.next.1, %bb.c ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.val2, i64 %.sroa.04.0.i.i.i6
  %.val.i.i.i8 = load i32, ptr %i.aw, align 4, !alias.scope !14806, !noalias !14808, !noundef !12
  %i.ax = or i32 %.val.i.i.i8, 1
  %i.ay = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ax, i1 true)
  %i.az = xor i32 %i.ay, 31
  %i.ba = mul nuw nsw i32 %i.az, 9
  %i.bb = add nuw nsw i32 %i.ba, 73
  %i.bc = lshr i32 %i.bb, 6
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = add i64 %.sroa.02.0.i.i.i7, %i.bd
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.val2, i64 %.sroa.04.0.i.i.i6
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %.val.i.i.i8.1 = load i32, ptr %i.bg, align 4, !alias.scope !14806, !noalias !14808, !noundef !12
  %i.bh = or i32 %.val.i.i.i8.1, 1
  %i.bi = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bh, i1 true)
  %i.bj = xor i32 %i.bi, 31
  %i.bk = mul nuw nsw i32 %i.bj, 9
  %i.bl = add nuw nsw i32 %i.bk, 73
  %i.bm = lshr i32 %i.bl, 6
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = add i64 %i.be, %i.bn                    ; 3 uses
  %i.bp = add nuw i64 %.sroa.04.0.i.i.i6, 2       ; 2 uses
  %niter24.next.1 = add nuw i64 %niter24, 2       ; 2 uses
  %niter24.ncmp.1 = icmp eq i64 %niter24.next.1, %unroll_iter23
  br i1 %niter24.ncmp.1, label %.lr.ph.preheader.i.i.unr-lcssa, label %bb.c

.lr.ph.preheader.i.i.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod20.not = icmp eq i64 %xtraiter19, 0
  br i1 %lcmp.mod20.not, label %.lr.ph.preheader.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.preheader.i.i.unr-lcssa, %bb.b
  %.sroa.04.0.i.i.i6.epil.init = phi i64 [ 0, %bb.b ], [ %i.bp, %.lr.ph.preheader.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i7.epil.init = phi i64 [ 0, %bb.b ], [ %i.bo, %.lr.ph.preheader.i.i.unr-lcssa ]
  %lcmp.mod22 = trunc i64 %.val3 to i1
  call void @llvm.assume(i1 %lcmp.mod22)
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.val2, i64 %.sroa.04.0.i.i.i6.epil.init
  %.val.i.i.i8.epil = load i32, ptr %i.bq, align 4, !alias.scope !14806, !noalias !14808, !noundef !12
  %i.br = or i32 %.val.i.i.i8.epil, 1
  %i.bs = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.br, i1 true)
  %i.bt = xor i32 %i.bs, 31
  %i.bu = mul nuw nsw i32 %i.bt, 9
  %i.bv = add nuw nsw i32 %i.bu, 73
  %i.bw = lshr i32 %i.bv, 6
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = add i64 %.sroa.02.0.i.i.i7.epil.init, %i.bx
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.preheader.i.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.bo, %.lr.ph.preheader.i.i.unr-lcssa ], [ %i.by, %.epil.preheader ]
  %.idx.i.i = shl nuw nsw i64 %.val3, 2
  %i.bz = getelementptr inbounds nuw i8, ptr %.val2, i64 %.idx.i.i
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %.lcssa, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !14806
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.02.i.i = phi ptr [ %i.ca, %.lr.ph.i.i ], [ %.val2, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 4 ; 2 uses
  %i.cb = load i32, ptr %.sroa.0.02.i.i, align 4, !alias.scope !14806, !noalias !14808, !noundef !12
  %i.cc = zext i32 %i.cb to i64
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %i.cc, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !14806
  %i.cd = icmp eq ptr %i.ca, %i.bz
  br i1 %i.cd, label %"_ZN92_$LT$anki_proto..notetypes..GetClozeFieldOrdsResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h3ee00674ec665f11E.exit", label %.lr.ph.i.i

bb.d:                                             ; preds = %"_ZN92_$LT$anki_proto..notetypes..GetClozeFieldOrdsResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h5d68063b8778408fE.exit"
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aq, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.at, ptr %i.cf, align 8
  br label %"_ZN92_$LT$anki_proto..notetypes..GetClozeFieldOrdsResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h3ee00674ec665f11E.exit"

"_ZN92_$LT$anki_proto..notetypes..GetClozeFieldOrdsResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h3ee00674ec665f11E.exit": ; preds = %.lr.ph.i.i, %bb.a, %bb.d
  %storemerge = phi i64 [ 1, %bb.d ], [ 0, %bb.a ], [ 0, %.lr.ph.i.i ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17h5bad96ce2e9edaefE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !14817 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !14818, !noundef !12 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = or i64 %i.b, 1
  %i.e = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = xor i64 %i.e, 63
  %i.g = mul nuw nsw i64 %i.f, 9
  %i.h = add nuw nsw i64 %i.g, 73
  %i.i = lshr i64 %i.h, 6
  %i.j = add nuw nsw i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !14818, !noundef !12 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = or i64 %i.l, 1
  %i.o = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.p = xor i64 %i.o, 63
  %i.q = mul nuw nsw i64 %i.p, 9
  %i.r = add nuw nsw i64 %i.q, 73
  %i.s = lshr i64 %i.r, 6
  %i.t = add nuw nsw i64 %i.s, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0.i = phi i64 [ %i.t, %bb.d ], [ 0, %bb.c ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !14818, !noundef !12 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = or i64 %i.v, 1
  %i.y = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = xor i64 %i.y, 63
  %i.aa = mul nuw nsw i64 %i.z, 9
  %i.ab = add nuw nsw i64 %i.aa, 73
  %i.ac = lshr i64 %i.ab, 6
  %i.ad = add nuw nsw i64 %i.ac, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.02.0.i = phi i64 [ %i.ad, %bb.f ], [ 0, %bb.e ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.af = load i32, ptr %i.ae, align 4, !alias.scope !14818, !noundef !12 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = or i32 %i.af, 1
  %i.ai = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ah, i1 true)
  %i.aj = xor i32 %i.ai, 31
  %i.ak = mul nuw nsw i32 %i.aj, 9
  %i.al = add nuw nsw i32 %i.ak, 73
  %i.am = lshr i32 %i.al, 6
  %narrow.i.i = add nuw nsw i32 %i.am, 1
  %i.an = zext nneg i32 %narrow.i.i to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.03.0.i = phi i64 [ %i.an, %bb.h ], [ 0, %bb.g ]
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !14818, !noundef !12 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = or i64 %i.ap, 1
  %i.as = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ar, i1 true)
  %i.at = xor i64 %i.as, 63
  %i.au = mul nuw nsw i64 %i.at, 9
  %i.av = add nuw nsw i64 %i.au, 73
  %i.aw = lshr i64 %i.av, 6
  %i.ax = add nuw nsw i64 %i.aw, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.04.0.i = phi i64 [ %i.ax, %bb.j ], [ 0, %bb.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.az = load i32, ptr %i.ay, align 8, !alias.scope !14818, !noundef !12 ; 3 uses
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = shl i32 %i.az, 1
  %i.bc = ashr i32 %i.az, 31
  %i.bd = xor i32 %i.bb, %i.bc
  %i.be = or i32 %i.bd, 1
  %i.bf = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.be, i1 true)
  %i.bg = xor i32 %i.bf, 31
  %i.bh = mul nuw nsw i32 %i.bg, 9
  %i.bi = add nuw nsw i32 %i.bh, 73
  %i.bj = lshr i32 %i.bi, 6
  %narrow.i41.i = add nuw nsw i32 %i.bj, 1
  %i.bk = zext nneg i32 %narrow.i41.i to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.05.0.i = phi i64 [ %i.bk, %bb.l ], [ 0, %bb.k ]
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bm = load i32, ptr %i.bl, align 4, !alias.scope !14818, !noundef !12 ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = or i32 %i.bm, 1
  %i.bp = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bo, i1 true)
  %i.bq = xor i32 %i.bp, 31
  %i.br = mul nuw nsw i32 %i.bq, 9
  %i.bs = add nuw nsw i32 %i.br, 73
  %i.bt = lshr i32 %i.bs, 6
  %narrow.i42.i = add nuw nsw i32 %i.bt, 1
  %i.bu = zext nneg i32 %narrow.i42.i to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.06.0.i = phi i64 [ %i.bu, %bb.n ], [ 0, %bb.m ]
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bw = load i32, ptr %i.bv, align 8, !alias.scope !14818, !noundef !12 ; 3 uses
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = shl i32 %i.bw, 1
  %i.bz = ashr i32 %i.bw, 31
  %i.ca = xor i32 %i.by, %i.bz
  %i.cb = or i32 %i.ca, 1
  %i.cc = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cb, i1 true)
  %i.cd = xor i32 %i.cc, 31
  %i.ce = mul nuw nsw i32 %i.cd, 9
  %i.cf = add nuw nsw i32 %i.ce, 73
  %i.cg = lshr i32 %i.cf, 6
  %narrow.i43.i = add nuw nsw i32 %i.cg, 1
  %i.ch = zext nneg i32 %narrow.i43.i to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.07.0.i = phi i64 [ %i.ch, %bb.p ], [ 0, %bb.o ]
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.cj = load i32, ptr %i.ci, align 4, !alias.scope !14818, !noundef !12 ; 3 uses
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cl = shl i32 %i.cj, 1
  %i.cm = ashr i32 %i.cj, 31
  %i.cn = xor i32 %i.cl, %i.cm
  %i.co = or i32 %i.cn, 1
  %i.cp = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.co, i1 true)
  %i.cq = xor i32 %i.cp, 31
  %i.cr = mul nuw nsw i32 %i.cq, 9
  %i.cs = add nuw nsw i32 %i.cr, 73
  %i.ct = lshr i32 %i.cs, 6
  %narrow.i44.i = add nuw nsw i32 %i.ct, 1
  %i.cu = zext nneg i32 %narrow.i44.i to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.08.0.i = phi i64 [ %i.cu, %bb.r ], [ 0, %bb.q ]
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.cw = load i32, ptr %i.cv, align 8, !alias.scope !14818, !noundef !12 ; 2 uses
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cy = or i32 %i.cw, 1
  %i.cz = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cy, i1 true)
  %i.da = xor i32 %i.cz, 31
  %i.db = mul nuw nsw i32 %i.da, 9
  %i.dc = add nuw nsw i32 %i.db, 73
  %i.dd = lshr i32 %i.dc, 6
  %narrow.i45.i = add nuw nsw i32 %i.dd, 1
  %i.de = zext nneg i32 %narrow.i45.i to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.09.0.i = phi i64 [ %i.de, %bb.t ], [ 0, %bb.s ]
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.dg = load i32, ptr %i.df, align 4, !alias.scope !14818, !noundef !12 ; 2 uses
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.di = or i32 %i.dg, 1
  %i.dj = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.di, i1 true)
end_hunk_1
begin_hunk_2_@_ZN5prost7message7Message6encode17h6f365d4a03ac19dfE:bb.a
  %.lcssa = phi i64 [ %i.aa, %"_ZN89_$LT$anki_proto..notes..FieldNamesForNotesResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h0e81c02148226d06E.exit.thread.unr-lcssa" ], [ %i.am, %.preheader.i.i.epil.preheader ]
  %i.an = add i64 %.lcssa, %.val3                 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val8 = load i64, ptr %i.ao, align 8, !noundef !12 ; 2 uses
  %i.ap = icmp sgt i64 %.val8, -1
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = xor i64 %.val8, 9223372036854775807     ; 2 uses
  %i.ar = icmp ugt i64 %i.an, %i.aq
  br i1 %i.ar, label %bb.c, label %.lr.ph.i.i.preheader

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15108)
  br label %"_ZN89_$LT$anki_proto..notes..FieldNamesForNotesResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17hee658324a47b2903E.exit"

.lr.ph.i.i.preheader:                             ; preds = %"_ZN89_$LT$anki_proto..notes..FieldNamesForNotesResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h0e81c02148226d06E.exit.thread"
  %.idx.i.i9 = mul nuw nsw i64 %.val3, 24
  %i.as = getelementptr inbounds nuw i8, ptr %.val2, i64 %.idx.i.i9
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.02.i.i = phi ptr [ %i.at, %.lr.ph.i.i ], [ %.val2, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15109)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15110
  store i8 10, ptr %i.a, align 1, !noalias !15110
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !15111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15110
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 16
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !15111, !noalias !15112, !noundef !12 ; 3 uses
  %i.aw = icmp sgt i64 %i.av, -1
  call void @llvm.assume(i1 %i.aw)
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %i.av, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !15111
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !15111, !noalias !15112, !nonnull !12, !noundef !12
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ay, i64 noundef %i.av), !noalias !15111
  %i.az = icmp eq ptr %i.at, %i.as
  br i1 %i.az, label %"_ZN89_$LT$anki_proto..notes..FieldNamesForNotesResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17hee658324a47b2903E.exit", label %.lr.ph.i.i

bb.c:                                             ; preds = %"_ZN89_$LT$anki_proto..notes..FieldNamesForNotesResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h0e81c02148226d06E.exit.thread"
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.an, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aq, ptr %i.bb, align 8
  br label %"_ZN89_$LT$anki_proto..notes..FieldNamesForNotesResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17hee658324a47b2903E.exit"

"_ZN89_$LT$anki_proto..notes..FieldNamesForNotesResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17hee658324a47b2903E.exit": ; preds = %.lr.ph.i.i, %bb.b, %bb.c
  %storemerge = phi i64 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %.lr.ph.i.i ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17h7a8ca51ad05da467E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !15132 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !range !23, !alias.scope !15133, !noundef !12
  %.not.i = icmp eq i8 %i.c, 2                    ; 2 uses
  br i1 %.not.i, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd9d3b601e686f41aE.exit.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load <4 x i8>, ptr %i.b, align 8, !alias.scope !15133
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.f = load <8 x i8>, ptr %i.e, align 4, !alias.scope !15134
  %i.g = tail call i8 @llvm.vector.reduce.add.v8i8(<8 x i8> %i.f)
  %i.h = tail call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %i.d)
  %op.rdx9 = add i8 %i.h, %i.g
  %i.i = shl nuw nsw i8 %op.rdx9, 1
  %narrow.i.i.i.i = add nuw nsw i8 %i.i, 2
  %i.j = zext nneg i8 %narrow.i.i.i.i to i64
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd9d3b601e686f41aE.exit.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17hd9d3b601e686f41aE.exit.i": ; preds = %bb.b, %bb.a
  %.sroa.02.0.i.i = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  %i.k = load i64, ptr %1, align 8, !alias.scope !15133, !noundef !12 ; 3 uses
  %i.l = icmp eq i64 %i.k, 0                      ; 2 uses
  br i1 %i.l, label %"_ZN83_$LT$anki_proto..collection..OpChangesWithId$u20$as$u20$prost..message..Message$GT$11encoded_len17h3fbd5b708560a983E.exit", label %bb.c

bb.c:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hd9d3b601e686f41aE.exit.i"
  %i.m = or i64 %i.k, 1
  %i.n = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.m, i1 true)
  %i.o = xor i64 %i.n, 63
  %i.p = mul nuw nsw i64 %i.o, 9
  %i.q = add nuw nsw i64 %i.p, 73
  %i.r = lshr i64 %i.q, 6
  %i.s = add nuw nsw i64 %i.r, 1
  br label %"_ZN83_$LT$anki_proto..collection..OpChangesWithId$u20$as$u20$prost..message..Message$GT$11encoded_len17h3fbd5b708560a983E.exit"

"_ZN83_$LT$anki_proto..collection..OpChangesWithId$u20$as$u20$prost..message..Message$GT$11encoded_len17h3fbd5b708560a983E.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hd9d3b601e686f41aE.exit.i", %bb.c
  %.sroa.01.0.i = phi i64 [ %i.s, %bb.c ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17hd9d3b601e686f41aE.exit.i" ]
  %i.t = add nuw nsw i64 %.sroa.01.0.i, %.sroa.02.0.i.i ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.u, align 8, !noundef !12 ; 2 uses
  %i.v = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = xor i64 %.val, 9223372036854775807       ; 2 uses
  %i.x = icmp samesign ugt i64 %i.t, %i.w
  br i1 %i.x, label %bb.h, label %bb.d

bb.d:                                             ; preds = %"_ZN83_$LT$anki_proto..collection..OpChangesWithId$u20$as$u20$prost..message..Message$GT$11encoded_len17h3fbd5b708560a983E.exit"
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5prost8encoding7message6encode17hfc75eb04b62dc0bdE(i32 noundef 1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(12) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %i.l, label %"_ZN83_$LT$anki_proto..collection..OpChangesWithId$u20$as$u20$prost..message..Message$GT$10encode_raw17h5adc73fed1768263E.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15135
  store i8 16, ptr %i.a, align 1, !noalias !15135
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !15136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15135
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %i.k, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !15136
  br label %"_ZN83_$LT$anki_proto..collection..OpChangesWithId$u20$as$u20$prost..message..Message$GT$10encode_raw17h5adc73fed1768263E.exit"

bb.h:                                             ; preds = %"_ZN83_$LT$anki_proto..collection..OpChangesWithId$u20$as$u20$prost..message..Message$GT$11encoded_len17h3fbd5b708560a983E.exit"
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.w, ptr %i.z, align 8
  br label %"_ZN83_$LT$anki_proto..collection..OpChangesWithId$u20$as$u20$prost..message..Message$GT$10encode_raw17h5adc73fed1768263E.exit"

"_ZN83_$LT$anki_proto..collection..OpChangesWithId$u20$as$u20$prost..message..Message$GT$10encode_raw17h5adc73fed1768263E.exit": ; preds = %bb.g, %bb.f, %bb.h
  %storemerge = phi i64 [ 1, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17h7fb2179c14e60f60E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 1 captures(none) dereferenceable(12) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !guid !15139 {
bb.a:
  %i.a = load <4 x i8>, ptr %1, align 1, !alias.scope !15140
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load <8 x i8>, ptr %i.b, align 1, !alias.scope !15140
  %i.d = tail call i8 @llvm.vector.reduce.add.v8i8(<8 x i8> %i.c)
  %i.e = tail call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %i.a)
  %op.rdx10 = add i8 %i.e, %i.d
  %narrow = shl nuw i8 %op.rdx10, 1
  %i.f = zext i8 %narrow to i64                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.g, align 8, !noundef !12 ; 2 uses
  %i.h = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.h)
  %i.i = xor i64 %.val, 9223372036854775807       ; 2 uses
  %i.j = icmp samesign ult i64 %i.i, %i.f
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @"_ZN77_$LT$anki_proto..collection..OpChanges$u20$as$u20$prost..message..Message$GT$10encode_raw17h365f58b6965d44a6E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(12) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %i.l, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i64 [ 0, %bb.b ], [ 1, %bb.c ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17h8ead0ebd4f341029E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !guid !15141 {
bb.a:
  %i.a = tail call fastcc noundef i64 @"_ZN83_$LT$anki_proto..notetypes..notetype..Config$u20$as$u20$prost..message..Message$GT$11encoded_len17h3ed7ae0b92204aebE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %1) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.b, align 8, !noundef !12 ; 2 uses
  %i.c = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = xor i64 %.val, 9223372036854775807       ; 2 uses
  %i.e = icmp ugt i64 %i.a, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @"_ZN83_$LT$anki_proto..notetypes..notetype..Config$u20$as$u20$prost..message..Message$GT$10encode_raw17haa33f0140de932a0E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.a, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %i.g, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i64 [ 0, %bb.b ], [ 1, %bb.c ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17h909bf47623c3a774E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !15170 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !range !47, !alias.scope !15171, !noundef !12
  switch i32 %i.a, label %default.unreachable [
    i32 12, label %"_ZN76_$LT$anki_proto..collection..Progress$u20$as$u20$prost..message..Message$GT$10encode_raw17hcf37cf6d645d2925E.exit"
    i32 0, label %"_ZN76_$LT$anki_proto..collection..Progress$u20$as$u20$prost..message..Message$GT$11encoded_len17hca7883f9f7131ac6E.exit"
    i32 1, label %bb.b
    i32 2, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.m
    i32 5, label %bb.s
    i32 6, label %bb.y
    i32 7, label %bb.z
    i32 8, label %bb.aa
    i32 9, label %bb.ak
    i32 10, label %bb.ao
    i32 11, label %bb.au
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val4.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !15172, !noundef !12 ; 4 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i64 %.val4.i.i.i.i.i.i, 0
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp sgt i64 %.val4.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = or i64 %.val4.i.i.i.i.i.i, 1
  %i.e = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = xor i64 %i.e, 63
  %i.g = mul nuw nsw i64 %i.f, 9
  %i.h = add nuw nsw i64 %i.g, 73
  %i.i = lshr i64 %i.h, 6
  %i.j = add nuw i64 %.val4.i.i.i.i.i.i, 1
  %i.k = add nuw i64 %i.j, %i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.k, %bb.c ], [ 0, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val3.i.i.i.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !15172, !noundef !12 ; 4 uses
  %.not.i8.not.i.i.i.i.i.i = icmp eq i64 %.val3.i.i.i.i.i.i, 0
  br i1 %.not.i8.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = icmp sgt i64 %.val3.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = or i64 %.val3.i.i.i.i.i.i, 1
  %i.o = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.p = xor i64 %i.o, 63
  %i.q = mul nuw nsw i64 %i.p, 9
  %i.r = add nuw nsw i64 %i.q, 73
  %i.s = lshr i64 %i.r, 6
  %i.t = add nuw i64 %.val3.i.i.i.i.i.i, 1
  %i.u = add nuw i64 %i.t, %i.s
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.01.0.i.i.i.i.i.i = phi i64 [ %i.u, %bb.e ], [ 0, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i.i.i.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !15172, !noundef !12 ; 4 uses
  %.not.i9.not.i.i.i.i.i.i = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %.not.i9.not.i.i.i.i.i.i, label %_ZN5prost8encoding7message11encoded_len17h3ddb59118f5d1074E.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = icmp sgt i64 %.val.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = or i64 %.val.i.i.i.i.i.i, 1
  %i.y = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = xor i64 %i.y, 63
  %i.aa = mul nuw nsw i64 %i.z, 9
  %i.ab = add nuw nsw i64 %i.aa, 73
  %i.ac = lshr i64 %i.ab, 6
  %i.ad = add nuw i64 %.val.i.i.i.i.i.i, 1
  %i.ae = add nuw i64 %i.ad, %i.ac
  br label %_ZN5prost8encoding7message11encoded_len17h3ddb59118f5d1074E.exit.i.i.i.i

_ZN5prost8encoding7message11encoded_len17h3ddb59118f5d1074E.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.sroa.02.0.i.i.i.i.i.i = phi i64 [ %i.ae, %bb.g ], [ 0, %bb.f ]
  %i.af = add i64 %.sroa.01.0.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i
  %i.ag = add i64 %i.af, %.sroa.02.0.i.i.i.i.i.i  ; 2 uses
  %i.ah = or i64 %i.ag, 1
  %i.ai = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ah, i1 true)
  %i.aj = xor i64 %i.ai, 63
  %i.ak = mul nuw nsw i64 %i.aj, 9
  %i.al = add nuw nsw i64 %i.ak, 73
  %i.am = lshr i64 %i.al, 6
  %i.an = add i64 %i.ag, 1
  %i.ao = add i64 %i.an, %i.am
  br label %"_ZN76_$LT$anki_proto..collection..Progress$u20$as$u20$prost..message..Message$GT$11encoded_len17hca7883f9f7131ac6E.exit"

bb.h:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val2.i.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !15173, !noundef !12 ; 3 uses
  %i.aq = icmp sgt i64 %.val2.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = or i64 %.val2.i.i.i.i, 1
  %i.as = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.ar, i1 true)
  %i.at = xor i64 %i.as, 63
  %i.au = mul nuw nsw i64 %i.at, 9
  %i.av = add nuw nsw i64 %i.au, 73
  %i.aw = lshr i64 %i.av, 6
  %i.ax = add nuw i64 %.val2.i.i.i.i, 1
  %i.ay = add nuw i64 %i.ax, %i.aw
  br label %"_ZN76_$LT$anki_proto..collection..Progress$u20$as$u20$prost..message..Message$GT$11encoded_len17hca7883f9f7131ac6E.exit"

bb.i:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val3.i.i.i.i = load i32, ptr %i.az, align 4, !alias.scope !15173, !noundef !12 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4.i.i.i.i = load i32, ptr %i.ba, align 8, !alias.scope !15173 ; 2 uses
  %i.bb = icmp eq i32 %.val3.i.i.i.i, 0
  br i1 %i.bb, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = or i32 %.val3.i.i.i.i, 1
  %i.bd = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bc, i1 true)
  %i.be = xor i32 %i.bd, 31
  %i.bf = mul nuw nsw i32 %i.be, 9
  %i.bg = add nuw nsw i32 %i.bf, 73
  %i.bh = lshr i32 %i.bg, 6
  %narrow.i.i.i.i.i = add nuw nsw i32 %i.bh, 3
  %i.bi = zext nneg i32 %narrow.i.i.i.i.i to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.0.0.i.i9.i.i.i.i = phi i64 [ %i.bi, %bb.j ], [ 2, %bb.i ]
  %i.bj = icmp eq i32 %.val4.i.i.i.i, 0
  br i1 %i.bj, label %_ZN5prost8encoding7message11encoded_len17h66ee5295ae109eb7E.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = or i32 %.val4.i.i.i.i, 1
  %i.bl = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bk, i1 true)
  %i.bm = xor i32 %i.bl, 31
  %i.bn = mul nuw nsw i32 %i.bm, 9
  %i.bo = add nuw nsw i32 %i.bn, 73
  %i.bp = lshr i32 %i.bo, 6
  %narrow.i3.i.i.i.i.i.i = add nuw nsw i32 %i.bp, 1
  %i.bq = zext nneg i32 %narrow.i3.i.i.i.i.i.i to i64
  br label %_ZN5prost8encoding7message11encoded_len17h66ee5295ae109eb7E.exit.i.i.i.i

_ZN5prost8encoding7message11encoded_len17h66ee5295ae109eb7E.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.sroa.01.0.i.i10.i.i.i.i = phi i64 [ %i.bq, %bb.l ], [ 0, %bb.k ]
  %i.br = add nuw nsw i64 %.sroa.01.0.i.i10.i.i.i.i, %.sroa.0.0.i.i9.i.i.i.i
  br label %"_ZN76_$LT$anki_proto..collection..Progress$u20$as$u20$prost..message..Message$GT$11encoded_len17hca7883f9f7131ac6E.exit"

bb.m:                                             ; preds = %bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val4.i.i11.i.i.i.i = load i64, ptr %i.bs, align 8, !alias.scope !15174, !noundef !12 ; 4 uses
  %.not.i.not.i.i12.i.i.i.i = icmp eq i64 %.val4.i.i11.i.i.i.i, 0
  br i1 %.not.i.not.i.i12.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = icmp sgt i64 %.val4.i.i11.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = or i64 %.val4.i.i11.i.i.i.i, 1
  %i.bv = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.bu, i1 true)
  %i.bw = xor i64 %i.bv, 63
  %i.bx = mul nuw nsw i64 %i.bw, 9
  %i.by = add nuw nsw i64 %i.bx, 73
  %i.bz = lshr i64 %i.by, 6
  %i.ca = add nuw i64 %.val4.i.i11.i.i.i.i, 1
  %i.cb = add nuw i64 %i.ca, %i.bz
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.0.0.i.i13.i.i.i.i = phi i64 [ %i.cb, %bb.n ], [ 0, %bb.m ]
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val3.i.i14.i.i.i.i = load i64, ptr %i.cc, align 8, !alias.scope !15174, !noundef !12 ; 4 uses
  %.not.i8.not.i.i15.i.i.i.i = icmp eq i64 %.val3.i.i14.i.i.i.i, 0
  br i1 %.not.i8.not.i.i15.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cd = icmp sgt i64 %.val3.i.i14.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = or i64 %.val3.i.i14.i.i.i.i, 1
  %i.cf = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.cg = xor i64 %i.cf, 63
  %i.ch = mul nuw nsw i64 %i.cg, 9
  %i.ci = add nuw nsw i64 %i.ch, 73
  %i.cj = lshr i64 %i.ci, 6
  %i.ck = add nuw i64 %.val3.i.i14.i.i.i.i, 1
  %i.cl = add nuw i64 %i.ck, %i.cj
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.01.0.i.i16.i.i.i.i = phi i64 [ %i.cl, %bb.p ], [ 0, %bb.o ]
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i.i17.i.i.i.i = load i64, ptr %i.cm, align 8, !alias.scope !15174, !noundef !12 ; 4 uses
  %.not.i9.not.i.i18.i.i.i.i = icmp eq i64 %.val.i.i17.i.i.i.i, 0
  br i1 %.not.i9.not.i.i18.i.i.i.i, label %_ZN5prost8encoding7message11encoded_len17he6047467d76a93c5E.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cn = icmp sgt i64 %.val.i.i17.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.cn)
  %i.co = or i64 %.val.i.i17.i.i.i.i, 1
  %i.cp = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.co, i1 true)
  %i.cq = xor i64 %i.cp, 63
  %i.cr = mul nuw nsw i64 %i.cq, 9
  %i.cs = add nuw nsw i64 %i.cr, 73
  %i.ct = lshr i64 %i.cs, 6
  %i.cu = add nuw i64 %.val.i.i17.i.i.i.i, 1
  %i.cv = add nuw i64 %i.cu, %i.ct
  br label %_ZN5prost8encoding7message11encoded_len17he6047467d76a93c5E.exit.i.i.i.i

_ZN5prost8encoding7message11encoded_len17he6047467d76a93c5E.exit.i.i.i.i: ; preds = %bb.r, %bb.q
  %.sroa.02.0.i.i19.i.i.i.i = phi i64 [ %i.cv, %bb.r ], [ 0, %bb.q ]
  %i.cw = add i64 %.sroa.01.0.i.i16.i.i.i.i, %.sroa.0.0.i.i13.i.i.i.i
  %i.cx = add i64 %i.cw, %.sroa.02.0.i.i19.i.i.i.i ; 2 uses
  %i.cy = or i64 %i.cx, 1
  %i.cz = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cy, i1 true)
  %i.da = xor i64 %i.cz, 63
  %i.db = mul nuw nsw i64 %i.da, 9
  %i.dc = add nuw nsw i64 %i.db, 73
  %i.dd = lshr i64 %i.dc, 6
end_hunk_2
begin_hunk_3_@_ZN5prost7message7Message6encode17h909bf47623c3a774E:bb.a
  %narrow.i11.i.i.i.i.i.i = add nuw nsw i32 %i.ha, 1
  %i.hb = zext nneg i32 %narrow.i11.i.i.i.i.i.i to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.sroa.03.0.i.i.i.i.i.i = phi i64 [ %i.hb, %bb.ah ], [ 0, %bb.ag ]
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.hd = load i32, ptr %i.hc, align 4, !alias.scope !15176, !noundef !12 ; 2 uses
  %i.he = icmp eq i32 %i.hd, 0
  br i1 %i.he, label %_ZN5prost8encoding7message11encoded_len17h803ebcb10635b915E.exit.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hf = or i32 %i.hd, 1
  %i.hg = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.hf, i1 true)
  %i.hh = xor i32 %i.hg, 31
  %i.hi = mul nuw nsw i32 %i.hh, 9
  %i.hj = add nuw nsw i32 %i.hi, 73
  %i.hk = lshr i32 %i.hj, 6
  %narrow.i12.i.i.i.i.i.i = add nuw nsw i32 %i.hk, 1
  %i.hl = zext nneg i32 %narrow.i12.i.i.i.i.i.i to i64
  br label %_ZN5prost8encoding7message11encoded_len17h803ebcb10635b915E.exit.i.i.i.i

_ZN5prost8encoding7message11encoded_len17h803ebcb10635b915E.exit.i.i.i.i: ; preds = %bb.aj, %bb.ai
  %.sroa.04.0.i.i.i.i.i.i = phi i64 [ %i.hl, %bb.aj ], [ 0, %bb.ai ]
  %i.hm = add nuw nsw i64 %.sroa.01.0.i.i27.i.i.i.i, %.sroa.0.0.i.i26.i.i.i.i
  %i.hn = add nuw nsw i64 %i.hm, %.sroa.02.0.i.i28.i.i.i.i
  %i.ho = add nuw nsw i64 %i.hn, %.sroa.03.0.i.i.i.i.i.i
  %i.hp = add nuw nsw i64 %i.ho, %.sroa.04.0.i.i.i.i.i.i
  br label %"_ZN76_$LT$anki_proto..collection..Progress$u20$as$u20$prost..message..Message$GT$11encoded_len17hca7883f9f7131ac6E.exit"

bb.ak:                                            ; preds = %bb.a
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val5.i.i.i.i = load i32, ptr %i.hq, align 4, !alias.scope !15173, !noundef !12 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6.i.i.i.i = load i32, ptr %i.hr, align 8, !alias.scope !15173 ; 2 uses
  %i.hs = icmp eq i32 %.val5.i.i.i.i, 0
  br i1 %i.hs, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ht = or i32 %.val5.i.i.i.i, 1
  %i.hu = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ht, i1 true)
  %i.hv = xor i32 %i.hu, 31
  %i.hw = mul nuw nsw i32 %i.hv, 9
  %i.hx = add nuw nsw i32 %i.hw, 73
  %i.hy = lshr i32 %i.hx, 6
  %narrow.i29.i.i.i.i = add nuw nsw i32 %i.hy, 3
  %i.hz = zext nneg i32 %narrow.i29.i.i.i.i to i64
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.sroa.0.0.i.i30.i.i.i.i = phi i64 [ %i.hz, %bb.al ], [ 2, %bb.ak ]
  %i.ia = icmp eq i32 %.val6.i.i.i.i, 0
  br i1 %i.ia, label %_ZN5prost8encoding7message11encoded_len17h306258283b55f060E.exit.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ib = or i32 %.val6.i.i.i.i, 1
  %i.ic = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ib, i1 true)
  %i.id = xor i32 %i.ic, 31
  %i.ie = mul nuw nsw i32 %i.id, 9
  %i.if = add nuw nsw i32 %i.ie, 73
  %i.ig = lshr i32 %i.if, 6
  %narrow.i3.i.i31.i.i.i.i = add nuw nsw i32 %i.ig, 1
  %i.ih = zext nneg i32 %narrow.i3.i.i31.i.i.i.i to i64
  br label %_ZN5prost8encoding7message11encoded_len17h306258283b55f060E.exit.i.i.i.i

_ZN5prost8encoding7message11encoded_len17h306258283b55f060E.exit.i.i.i.i: ; preds = %bb.an, %bb.am
  %.sroa.01.0.i.i32.i.i.i.i = phi i64 [ %i.ih, %bb.an ], [ 0, %bb.am ]
  %i.ii = add nuw nsw i64 %.sroa.01.0.i.i32.i.i.i.i, %.sroa.0.0.i.i30.i.i.i.i
  br label %"_ZN76_$LT$anki_proto..collection..Progress$u20$as$u20$prost..message..Message$GT$11encoded_len17hca7883f9f7131ac6E.exit"

bb.ao:                                            ; preds = %bb.a
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ik = load i32, ptr %i.ij, align 8, !alias.scope !15177, !noundef !12 ; 2 uses
  %i.il = icmp eq i32 %i.ik, 0
  br i1 %i.il, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.im = or i32 %i.ik, 1
  %i.in = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.im, i1 true)
  %i.io = xor i32 %i.in, 31
  %i.ip = mul nuw nsw i32 %i.io, 9
  %i.iq = add nuw nsw i32 %i.ip, 73
  %i.ir = lshr i32 %i.iq, 6
  %narrow.i.i.i33.i.i.i.i = add nuw nsw i32 %i.ir, 1
  %i.is = zext nneg i32 %narrow.i.i.i33.i.i.i.i to i64
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.sroa.0.0.i.i34.i.i.i.i = phi i64 [ %i.is, %bb.ap ], [ 0, %bb.ao ]
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.iu = load i32, ptr %i.it, align 4, !alias.scope !15177, !noundef !12 ; 2 uses
  %i.iv = icmp eq i32 %i.iu, 0
  br i1 %i.iv, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.iw = or i32 %i.iu, 1
  %i.ix = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.iw, i1 true)
  %i.iy = xor i32 %i.ix, 31
  %i.iz = mul nuw nsw i32 %i.iy, 9
  %i.ja = add nuw nsw i32 %i.iz, 73
  %i.jb = lshr i32 %i.ja, 6
  %narrow.i6.i.i35.i.i.i.i = add nuw nsw i32 %i.jb, 1
  %i.jc = zext nneg i32 %narrow.i6.i.i35.i.i.i.i to i64
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.sroa.01.0.i.i36.i.i.i.i = phi i64 [ %i.jc, %bb.ar ], [ 0, %bb.aq ]
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i37.i.i.i.i = load i64, ptr %i.jd, align 8, !alias.scope !15177, !noundef !12 ; 4 uses
  %.not.i.not.i.i38.i.i.i.i = icmp eq i64 %.val.i.i37.i.i.i.i, 0
  br i1 %.not.i.not.i.i38.i.i.i.i, label %_ZN5prost8encoding7message11encoded_len17h36f6f21da951b563E.exit.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.je = icmp sgt i64 %.val.i.i37.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.je)
  %i.jf = or i64 %.val.i.i37.i.i.i.i, 1
  %i.jg = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.jf, i1 true)
  %i.jh = xor i64 %i.jg, 63
  %i.ji = mul nuw nsw i64 %i.jh, 9
  %i.jj = add nuw nsw i64 %i.ji, 73
  %i.jk = lshr i64 %i.jj, 6
  %i.jl = add nuw i64 %.val.i.i37.i.i.i.i, 1
  %i.jm = add nuw i64 %i.jl, %i.jk
  br label %_ZN5prost8encoding7message11encoded_len17h36f6f21da951b563E.exit.i.i.i.i

_ZN5prost8encoding7message11encoded_len17h36f6f21da951b563E.exit.i.i.i.i: ; preds = %bb.at, %bb.as
  %.sroa.02.0.i.i39.i.i.i.i = phi i64 [ %i.jm, %bb.at ], [ 0, %bb.as ]
  %i.jn = add nuw nsw i64 %.sroa.01.0.i.i36.i.i.i.i, %.sroa.0.0.i.i34.i.i.i.i
  %i.jo = add nuw i64 %i.jn, %.sroa.02.0.i.i39.i.i.i.i ; 2 uses
  %i.jp = or i64 %i.jo, 1
  %i.jq = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.jp, i1 true)
  %i.jr = xor i64 %i.jq, 63
  %i.js = mul nuw nsw i64 %i.jr, 9
  %i.jt = add nuw nsw i64 %i.js, 73
  %i.ju = lshr i64 %i.jt, 6
  %i.jv = add nuw i64 %i.jo, 1
  %i.jw = add nuw i64 %i.jv, %i.ju
  br label %"_ZN76_$LT$anki_proto..collection..Progress$u20$as$u20$prost..message..Message$GT$11encoded_len17hca7883f9f7131ac6E.exit"

bb.au:                                            ; preds = %bb.a
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val7.i.i.i.i = load i32, ptr %i.jx, align 4, !alias.scope !15173, !noundef !12 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8.i.i.i.i = load i32, ptr %i.jy, align 8, !alias.scope !15173 ; 2 uses
  %i.jz = icmp eq i32 %.val7.i.i.i.i, 0
  br i1 %i.jz, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ka = or i32 %.val7.i.i.i.i, 1
  %i.kb = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ka, i1 true)
  %i.kc = xor i32 %i.kb, 31
  %i.kd = mul nuw nsw i32 %i.kc, 9
  %i.ke = add nuw nsw i32 %i.kd, 73
  %i.kf = lshr i32 %i.ke, 6
  %narrow.i40.i.i.i.i = add nuw nsw i32 %i.kf, 3
  %i.kg = zext nneg i32 %narrow.i40.i.i.i.i to i64
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.sroa.0.0.i.i41.i.i.i.i = phi i64 [ %i.kg, %bb.av ], [ 2, %bb.au ]
  %i.kh = icmp eq i32 %.val8.i.i.i.i, 0
  br i1 %i.kh, label %_ZN5prost8encoding7message11encoded_len17hf07d3330d5bac6b2E.exit.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ki = or i32 %.val8.i.i.i.i, 1
  %i.kj = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ki, i1 true)
  %i.kk = xor i32 %i.kj, 31
  %i.kl = mul nuw nsw i32 %i.kk, 9
  %i.km = add nuw nsw i32 %i.kl, 73
  %i.kn = lshr i32 %i.km, 6
  %narrow.i3.i.i42.i.i.i.i = add nuw nsw i32 %i.kn, 1
  %i.ko = zext nneg i32 %narrow.i3.i.i42.i.i.i.i to i64
  br label %_ZN5prost8encoding7message11encoded_len17hf07d3330d5bac6b2E.exit.i.i.i.i

_ZN5prost8encoding7message11encoded_len17hf07d3330d5bac6b2E.exit.i.i.i.i: ; preds = %bb.ax, %bb.aw
  %.sroa.01.0.i.i43.i.i.i.i = phi i64 [ %i.ko, %bb.ax ], [ 0, %bb.aw ]
  %i.kp = add nuw nsw i64 %.sroa.01.0.i.i43.i.i.i.i, %.sroa.0.0.i.i41.i.i.i.i
  br label %"_ZN76_$LT$anki_proto..collection..Progress$u20$as$u20$prost..message..Message$GT$11encoded_len17hca7883f9f7131ac6E.exit"

"_ZN76_$LT$anki_proto..collection..Progress$u20$as$u20$prost..message..Message$GT$11encoded_len17hca7883f9f7131ac6E.exit": ; preds = %bb.a, %_ZN5prost8encoding7message11encoded_len17h3ddb59118f5d1074E.exit.i.i.i.i, %bb.h, %_ZN5prost8encoding7message11encoded_len17h66ee5295ae109eb7E.exit.i.i.i.i, %_ZN5prost8encoding7message11encoded_len17he6047467d76a93c5E.exit.i.i.i.i, %_ZN5prost8encoding7message11encoded_len17he68a6155b8d3af91E.exit.i.i.i.i, %bb.y, %bb.z, %_ZN5prost8encoding7message11encoded_len17h803ebcb10635b915E.exit.i.i.i.i, %_ZN5prost8encoding7message11encoded_len17h306258283b55f060E.exit.i.i.i.i, %_ZN5prost8encoding7message11encoded_len17h36f6f21da951b563E.exit.i.i.i.i, %_ZN5prost8encoding7message11encoded_len17hf07d3330d5bac6b2E.exit.i.i.i.i
  %.sroa.02.0.i.i = phi i64 [ %i.jw, %_ZN5prost8encoding7message11encoded_len17h36f6f21da951b563E.exit.i.i.i.i ], [ %i.kp, %_ZN5prost8encoding7message11encoded_len17hf07d3330d5bac6b2E.exit.i.i.i.i ], [ %i.ao, %_ZN5prost8encoding7message11encoded_len17h3ddb59118f5d1074E.exit.i.i.i.i ], [ %i.ay, %bb.h ], [ %i.br, %_ZN5prost8encoding7message11encoded_len17h66ee5295ae109eb7E.exit.i.i.i.i ], [ %i.df, %_ZN5prost8encoding7message11encoded_len17he6047467d76a93c5E.exit.i.i.i.i ], [ %i.et, %_ZN5prost8encoding7message11encoded_len17he68a6155b8d3af91E.exit.i.i.i.i ], [ %i.fd, %bb.y ], [ %i.fn, %bb.z ], [ %i.hp, %_ZN5prost8encoding7message11encoded_len17h803ebcb10635b915E.exit.i.i.i.i ], [ %i.ii, %_ZN5prost8encoding7message11encoded_len17h306258283b55f060E.exit.i.i.i.i ], [ 2, %bb.a ] ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.kq, align 8, !noundef !12 ; 2 uses
  %i.kr = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.kr)
  %i.ks = xor i64 %.val, 9223372036854775807      ; 2 uses
  %i.kt = icmp ugt i64 %.sroa.02.0.i.i, %i.ks
  br i1 %i.kt, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %"_ZN76_$LT$anki_proto..collection..Progress$u20$as$u20$prost..message..Message$GT$11encoded_len17hca7883f9f7131ac6E.exit"
  tail call void @_ZN10anki_proto10collection8progress5Value6encode17h7ccb2c0041101191E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %"_ZN76_$LT$anki_proto..collection..Progress$u20$as$u20$prost..message..Message$GT$10encode_raw17hcf37cf6d645d2925E.exit"

bb.az:                                            ; preds = %"_ZN76_$LT$anki_proto..collection..Progress$u20$as$u20$prost..message..Message$GT$11encoded_len17hca7883f9f7131ac6E.exit"
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.02.0.i.i, ptr %i.ku, align 8
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ks, ptr %i.kv, align 8
  br label %"_ZN76_$LT$anki_proto..collection..Progress$u20$as$u20$prost..message..Message$GT$10encode_raw17hcf37cf6d645d2925E.exit"

"_ZN76_$LT$anki_proto..collection..Progress$u20$as$u20$prost..message..Message$GT$10encode_raw17hcf37cf6d645d2925E.exit": ; preds = %bb.a, %bb.ay, %bb.az
  %storemerge = phi i64 [ 1, %bb.az ], [ 0, %bb.ay ], [ 0, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17h95110908e683b2b1E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !15190 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.c, align 8, !noundef !12 ; 7 uses
  %i.d = icmp eq i64 %.val3, 0
  br i1 %i.d, label %bb.b, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.a
  %xtraiter = and i64 %.val3, 1
  %i.e = icmp eq i64 %.val3, 1
  br i1 %i.e, label %.preheader.i.i.epil.preheader, label %.preheader.i.i.preheader.new

.preheader.i.i.preheader.new:                     ; preds = %.preheader.i.i.preheader
  %unroll_iter = and i64 %.val3, -2
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.i.preheader.new
  %.sroa.04.0.i.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.ab, %.preheader.i.i ] ; 3 uses
  %.sroa.02.0.i.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.aa, %.preheader.i.i ]
  %niter = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i ]
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %.val2, i64 %.sroa.04.0.i.i.i
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %.val.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !15191, !noundef !12 ; 3 uses
  %i.h = icmp sgt i64 %.val.i.i.i, -1
  tail call void @llvm.assume(i1 %i.h)
  %i.i = or i64 %.val.i.i.i, 1
  %i.j = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.i, i1 true)
  %i.k = xor i64 %i.j, 63
  %i.l = mul nuw nsw i64 %i.k, 9
  %i.m = add nuw nsw i64 %i.l, 73
  %i.n = lshr i64 %i.m, 6
  %i.o = add i64 %.val.i.i.i, %.sroa.02.0.i.i.i
  %i.p = add i64 %i.o, %i.n
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %.val2, i64 %.sroa.04.0.i.i.i
  %i.r = getelementptr i8, ptr %i.q, i64 40
  %.val.i.i.i.1 = load i64, ptr %i.r, align 8, !alias.scope !15191, !noundef !12 ; 3 uses
  %i.s = icmp sgt i64 %.val.i.i.i.1, -1
  tail call void @llvm.assume(i1 %i.s)
  %i.t = or i64 %.val.i.i.i.1, 1
  %i.u = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.t, i1 true)
  %i.v = xor i64 %i.u, 63
  %i.w = mul nuw nsw i64 %i.v, 9
  %i.x = add nuw nsw i64 %i.w, 73
  %i.y = lshr i64 %i.x, 6
  %i.z = add i64 %.val.i.i.i.1, %i.p
  %i.aa = add i64 %i.z, %i.y                      ; 3 uses
  %i.ab = add nuw i64 %.sroa.04.0.i.i.i, 2        ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN92_$LT$anki_proto..collection..GetCustomColoursResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h3ba8d23e6e179f5bE.exit.thread.unr-lcssa", label %.preheader.i.i

"_ZN92_$LT$anki_proto..collection..GetCustomColoursResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h3ba8d23e6e179f5bE.exit.thread.unr-lcssa": ; preds = %.preheader.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN92_$LT$anki_proto..collection..GetCustomColoursResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h3ba8d23e6e179f5bE.exit.thread", label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %"_ZN92_$LT$anki_proto..collection..GetCustomColoursResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h3ba8d23e6e179f5bE.exit.thread.unr-lcssa", %.preheader.i.i.preheader
  %.sroa.04.0.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.ab, %"_ZN92_$LT$anki_proto..collection..GetCustomColoursResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h3ba8d23e6e179f5bE.exit.thread.unr-lcssa" ]
  %.sroa.02.0.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.aa, %"_ZN92_$LT$anki_proto..collection..GetCustomColoursResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h3ba8d23e6e179f5bE.exit.thread.unr-lcssa" ]
  %lcmp.mod11 = trunc i64 %.val3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %.val2, i64 %.sroa.04.0.i.i.i.epil.init
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %.val.i.i.i.epil = load i64, ptr %i.ad, align 8, !alias.scope !15191, !noundef !12 ; 3 uses
  %i.ae = icmp sgt i64 %.val.i.i.i.epil, -1
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = or i64 %.val.i.i.i.epil, 1
  %i.ag = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.af, i1 true)
  %i.ah = xor i64 %i.ag, 63
  %i.ai = mul nuw nsw i64 %i.ah, 9
  %i.aj = add nuw nsw i64 %i.ai, 73
  %i.ak = lshr i64 %i.aj, 6
  %i.al = add i64 %.val.i.i.i.epil, %.sroa.02.0.i.i.i.epil.init
  %i.am = add i64 %i.al, %i.ak
  br label %"_ZN92_$LT$anki_proto..collection..GetCustomColoursResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h3ba8d23e6e179f5bE.exit.thread"

"_ZN92_$LT$anki_proto..collection..GetCustomColoursResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h3ba8d23e6e179f5bE.exit.thread": ; preds = %"_ZN92_$LT$anki_proto..collection..GetCustomColoursResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h3ba8d23e6e179f5bE.exit.thread.unr-lcssa", %.preheader.i.i.epil.preheader
  %.lcssa = phi i64 [ %i.aa, %"_ZN92_$LT$anki_proto..collection..GetCustomColoursResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h3ba8d23e6e179f5bE.exit.thread.unr-lcssa" ], [ %i.am, %.preheader.i.i.epil.preheader ]
  %i.an = add i64 %.lcssa, %.val3                 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val8 = load i64, ptr %i.ao, align 8, !noundef !12 ; 2 uses
  %i.ap = icmp sgt i64 %.val8, -1
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = xor i64 %.val8, 9223372036854775807     ; 2 uses
  %i.ar = icmp ugt i64 %i.an, %i.aq
  br i1 %i.ar, label %bb.c, label %.lr.ph.i.i.preheader

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15192)
  br label %"_ZN92_$LT$anki_proto..collection..GetCustomColoursResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17hb300cfa064e3dfe7E.exit"

.lr.ph.i.i.preheader:                             ; preds = %"_ZN92_$LT$anki_proto..collection..GetCustomColoursResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h3ba8d23e6e179f5bE.exit.thread"
  %.idx.i.i9 = mul nuw nsw i64 %.val3, 24
  %i.as = getelementptr inbounds nuw i8, ptr %.val2, i64 %.idx.i.i9
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.02.i.i = phi ptr [ %i.at, %.lr.ph.i.i ], [ %.val2, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15193)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15194
  store i8 10, ptr %i.a, align 1, !noalias !15194
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !15195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15194
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 16
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !15195, !noalias !15196, !noundef !12 ; 3 uses
  %i.aw = icmp sgt i64 %i.av, -1
  call void @llvm.assume(i1 %i.aw)
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %i.av, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !15195
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !15195, !noalias !15196, !nonnull !12, !noundef !12
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ay, i64 noundef %i.av), !noalias !15195
  %i.az = icmp eq ptr %i.at, %i.as
  br i1 %i.az, label %"_ZN92_$LT$anki_proto..collection..GetCustomColoursResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17hb300cfa064e3dfe7E.exit", label %.lr.ph.i.i

bb.c:                                             ; preds = %"_ZN92_$LT$anki_proto..collection..GetCustomColoursResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h3ba8d23e6e179f5bE.exit.thread"
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.an, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aq, ptr %i.bb, align 8
  br label %"_ZN92_$LT$anki_proto..collection..GetCustomColoursResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17hb300cfa064e3dfe7E.exit"

"_ZN92_$LT$anki_proto..collection..GetCustomColoursResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17hb300cfa064e3dfe7E.exit": ; preds = %.lr.ph.i.i, %bb.b, %bb.c
  %storemerge = phi i64 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %.lr.ph.i.i ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17ha48b3d56f7f15448E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !15207 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.c, align 8, !noundef !12 ; 9 uses
  %i.d = icmp eq i64 %.val3, 0
  br i1 %i.d, label %"_ZN78_$LT$anki_proto..search..SearchResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h4c7aa4be97874e64E.exit", label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.a
  %i.e = add i64 %.val3, -1                       ; 2 uses
  %xtraiter = and i64 %.val3, 1
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.preheader.i.i.epil.preheader, label %.preheader.i.i.preheader.new

.preheader.i.i.preheader.new:                     ; preds = %.preheader.i.i.preheader
  %unroll_iter = and i64 %.val3, -2
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.i.preheader.new
  %.sroa.04.0.i.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.x, %.preheader.i.i ] ; 3 uses
  %.sroa.02.0.i.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.w, %.preheader.i.i ]
  %niter = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.val2, i64 %.sroa.04.0.i.i.i
  %.val.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !15208, !noundef !12
  %i.h = or i64 %.val.i.i.i, 1
  %i.i = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.j = xor i64 %i.i, 63
  %i.k = mul nuw nsw i64 %i.j, 9
  %i.l = add nuw nsw i64 %i.k, 73
  %i.m = lshr i64 %i.l, 6
  %i.n = add i64 %i.m, %.sroa.02.0.i.i.i
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.val2, i64 %.sroa.04.0.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val.i.i.i.1 = load i64, ptr %i.p, align 8, !alias.scope !15208, !noundef !12
  %i.q = or i64 %.val.i.i.i.1, 1
  %i.r = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.q, i1 true)
  %i.s = xor i64 %i.r, 63
  %i.t = mul nuw nsw i64 %i.s, 9
  %i.u = add nuw nsw i64 %i.t, 73
  %i.v = lshr i64 %i.u, 6
  %i.w = add i64 %i.v, %i.n                       ; 3 uses
  %i.x = add nuw i64 %.sroa.04.0.i.i.i, 2         ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN78_$LT$anki_proto..search..SearchResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h054f00b9c2816df8E.exit.unr-lcssa", label %.preheader.i.i

"_ZN78_$LT$anki_proto..search..SearchResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h054f00b9c2816df8E.exit.unr-lcssa": ; preds = %.preheader.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN78_$LT$anki_proto..search..SearchResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h054f00b9c2816df8E.exit", label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %"_ZN78_$LT$anki_proto..search..SearchResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h054f00b9c2816df8E.exit.unr-lcssa", %.preheader.i.i.preheader
  %.sroa.04.0.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.x, %"_ZN78_$LT$anki_proto..search..SearchResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h054f00b9c2816df8E.exit.unr-lcssa" ]
  %.sroa.02.0.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.w, %"_ZN78_$LT$anki_proto..search..SearchResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h054f00b9c2816df8E.exit.unr-lcssa" ]
  %lcmp.mod18 = trunc i64 %.val3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod18)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.val2, i64 %.sroa.04.0.i.i.i.epil.init
  %.val.i.i.i.epil = load i64, ptr %i.y, align 8, !alias.scope !15208, !noundef !12
  %i.z = or i64 %.val.i.i.i.epil, 1
  %i.aa = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.z, i1 true)
  %i.ab = xor i64 %i.aa, 63
  %i.ac = mul nuw nsw i64 %i.ab, 9
  %i.ad = add nuw nsw i64 %i.ac, 73
  %i.ae = lshr i64 %i.ad, 6
  %i.af = add i64 %i.ae, %.sroa.02.0.i.i.i.epil.init
  br label %"_ZN78_$LT$anki_proto..search..SearchResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h054f00b9c2816df8E.exit"

"_ZN78_$LT$anki_proto..search..SearchResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h054f00b9c2816df8E.exit": ; preds = %"_ZN78_$LT$anki_proto..search..SearchResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h054f00b9c2816df8E.exit.unr-lcssa", %.preheader.i.i.epil.preheader
  %.lcssa16 = phi i64 [ %i.w, %"_ZN78_$LT$anki_proto..search..SearchResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h054f00b9c2816df8E.exit.unr-lcssa" ], [ %i.af, %.preheader.i.i.epil.preheader ] ; 2 uses
  %i.ag = or i64 %.lcssa16, 1
  %i.ah = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ag, i1 true)
  %i.ai = xor i64 %i.ah, 63
  %i.aj = mul nuw nsw i64 %i.ai, 9
  %i.ak = add nuw nsw i64 %i.aj, 73
  %i.al = lshr i64 %i.ak, 6
  %i.am = add i64 %.lcssa16, 1
  %i.an = add i64 %i.am, %i.al                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.ao, align 8, !noundef !12 ; 2 uses
  %i.ap = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = xor i64 %.val, 9223372036854775807      ; 2 uses
  %i.ar = icmp ugt i64 %i.an, %i.aq
  br i1 %i.ar, label %bb.d, label %bb.b

bb.b:                                             ; preds = %"_ZN78_$LT$anki_proto..search..SearchResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h054f00b9c2816df8E.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15209)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15210
  store i8 10, ptr %i.a, align 1, !noalias !15210
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !15209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15210
  %xtraiter19 = and i64 %.val3, 1
  %i.as = icmp eq i64 %i.e, 0
  br i1 %i.as, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter23 = and i64 %.val3, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.04.0.i.i.i6 = phi i64 [ 0, %.new ], [ %i.bk, %bb.c ] ; 3 uses
  %.sroa.02.0.i.i.i7 = phi i64 [ 0, %.new ], [ %i.bj, %bb.c ]
  %niter24 = phi i64 [ 0, %.new ], [ %niter24.next.1, %bb.c ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.val2, i64 %.sroa.04.0.i.i.i6
  %.val.i.i.i8 = load i64, ptr %i.at, align 8, !alias.scope !15209, !noalias !15211, !noundef !12
  %i.au = or i64 %.val.i.i.i8, 1
  %i.av = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.au, i1 true)
  %i.aw = xor i64 %i.av, 63
  %i.ax = mul nuw nsw i64 %i.aw, 9
  %i.ay = add nuw nsw i64 %i.ax, 73
  %i.az = lshr i64 %i.ay, 6
  %i.ba = add i64 %i.az, %.sroa.02.0.i.i.i7
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.val2, i64 %.sroa.04.0.i.i.i6
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.val.i.i.i8.1 = load i64, ptr %i.bc, align 8, !alias.scope !15209, !noalias !15211, !noundef !12
  %i.bd = or i64 %.val.i.i.i8.1, 1
  %i.be = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bd, i1 true)
  %i.bf = xor i64 %i.be, 63
  %i.bg = mul nuw nsw i64 %i.bf, 9
  %i.bh = add nuw nsw i64 %i.bg, 73
  %i.bi = lshr i64 %i.bh, 6
  %i.bj = add i64 %i.bi, %i.ba                    ; 3 uses
  %i.bk = add nuw i64 %.sroa.04.0.i.i.i6, 2       ; 2 uses
  %niter24.next.1 = add nuw i64 %niter24, 2       ; 2 uses
  %niter24.ncmp.1 = icmp eq i64 %niter24.next.1, %unroll_iter23
  br i1 %niter24.ncmp.1, label %.lr.ph.preheader.i.i.unr-lcssa, label %bb.c

.lr.ph.preheader.i.i.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod20.not = icmp eq i64 %xtraiter19, 0
  br i1 %lcmp.mod20.not, label %.lr.ph.preheader.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.preheader.i.i.unr-lcssa, %bb.b
  %.sroa.04.0.i.i.i6.epil.init = phi i64 [ 0, %bb.b ], [ %i.bk, %.lr.ph.preheader.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i7.epil.init = phi i64 [ 0, %bb.b ], [ %i.bj, %.lr.ph.preheader.i.i.unr-lcssa ]
  %lcmp.mod22 = trunc i64 %.val3 to i1
  call void @llvm.assume(i1 %lcmp.mod22)
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.val2, i64 %.sroa.04.0.i.i.i6.epil.init
  %.val.i.i.i8.epil = load i64, ptr %i.bl, align 8, !alias.scope !15209, !noalias !15211, !noundef !12
  %i.bm = or i64 %.val.i.i.i8.epil, 1
  %i.bn = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bm, i1 true)
  %i.bo = xor i64 %i.bn, 63
  %i.bp = mul nuw nsw i64 %i.bo, 9
  %i.bq = add nuw nsw i64 %i.bp, 73
  %i.br = lshr i64 %i.bq, 6
  %i.bs = add i64 %i.br, %.sroa.02.0.i.i.i7.epil.init
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.preheader.i.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.bj, %.lr.ph.preheader.i.i.unr-lcssa ], [ %i.bs, %.epil.preheader ]
  %.idx.i.i = shl nuw nsw i64 %.val3, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %.val2, i64 %.idx.i.i
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %.lcssa, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !15209
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.02.i.i = phi ptr [ %i.bu, %.lr.ph.i.i ], [ %.val2, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 8 ; 2 uses
  %i.bv = load i64, ptr %.sroa.0.02.i.i, align 8, !alias.scope !15209, !noalias !15211, !noundef !12
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %i.bv, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !15209
  %i.bw = icmp eq ptr %i.bu, %i.bt
  br i1 %i.bw, label %"_ZN78_$LT$anki_proto..search..SearchResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h4c7aa4be97874e64E.exit", label %.lr.ph.i.i

bb.d:                                             ; preds = %"_ZN78_$LT$anki_proto..search..SearchResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h054f00b9c2816df8E.exit"
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.an, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aq, ptr %i.by, align 8
  br label %"_ZN78_$LT$anki_proto..search..SearchResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h4c7aa4be97874e64E.exit"

"_ZN78_$LT$anki_proto..search..SearchResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h4c7aa4be97874e64E.exit": ; preds = %.lr.ph.i.i, %bb.a, %bb.d
  %storemerge = phi i64 [ 1, %bb.d ], [ 0, %bb.a ], [ 0, %.lr.ph.i.i ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17ha76565cd55784230E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !guid !15226 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %.val2 = load i64, ptr %1, align 8, !noundef !12 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load i64, ptr %i.c, align 8            ; 3 uses
  %i.d = icmp eq i64 %.val2, 0                    ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = or i64 %.val2, 1
  %i.f = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = xor i64 %i.f, 63
  %i.h = mul nuw nsw i64 %i.g, 9
  %i.i = add nuw nsw i64 %i.h, 73
  %i.j = lshr i64 %i.i, 6
  %i.k = add nuw nsw i64 %i.j, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ]
  %i.l = icmp eq i64 %.val3, 0                    ; 2 uses
  br i1 %i.l, label %"_ZN78_$LT$anki_proto..notes..DeckAndNotetype$u20$as$u20$prost..message..Message$GT$11encoded_len17he0653fda8dddc32eE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = or i64 %.val3, 1
  %i.n = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.m, i1 true)
  %i.o = xor i64 %i.n, 63
  %i.p = mul nuw nsw i64 %i.o, 9
  %i.q = add nuw nsw i64 %i.p, 73
  %i.r = lshr i64 %i.q, 6
  %i.s = add nuw nsw i64 %i.r, 1
  br label %"_ZN78_$LT$anki_proto..notes..DeckAndNotetype$u20$as$u20$prost..message..Message$GT$11encoded_len17he0653fda8dddc32eE.exit"

"_ZN78_$LT$anki_proto..notes..DeckAndNotetype$u20$as$u20$prost..message..Message$GT$11encoded_len17he0653fda8dddc32eE.exit": ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.s, %bb.d ], [ 0, %bb.c ]
  %i.t = add nuw nsw i64 %.sroa.01.0.i, %.sroa.0.0.i ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.u, align 8, !noundef !12 ; 2 uses
  %i.v = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = xor i64 %.val, 9223372036854775807       ; 2 uses
  %i.x = icmp samesign ugt i64 %i.t, %i.w
  br i1 %i.x, label %bb.i, label %bb.e

bb.e:                                             ; preds = %"_ZN78_$LT$anki_proto..notes..DeckAndNotetype$u20$as$u20$prost..message..Message$GT$11encoded_len17he0653fda8dddc32eE.exit"
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15227
  store i8 8, ptr %i.b, align 1, !noalias !15227
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef 1), !noalias !15228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15227
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %.val2, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !15228
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br i1 %i.l, label %"_ZN78_$LT$anki_proto..notes..DeckAndNotetype$u20$as$u20$prost..message..Message$GT$10encode_raw17hf69b3daff86f3abeE.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15229
  store i8 16, ptr %i.a, align 1, !noalias !15229
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !15230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15229
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %.val3, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !15230
  br label %"_ZN78_$LT$anki_proto..notes..DeckAndNotetype$u20$as$u20$prost..message..Message$GT$10encode_raw17hf69b3daff86f3abeE.exit"

bb.i:                                             ; preds = %"_ZN78_$LT$anki_proto..notes..DeckAndNotetype$u20$as$u20$prost..message..Message$GT$11encoded_len17he0653fda8dddc32eE.exit"
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.w, ptr %i.z, align 8
  br label %"_ZN78_$LT$anki_proto..notes..DeckAndNotetype$u20$as$u20$prost..message..Message$GT$10encode_raw17hf69b3daff86f3abeE.exit"

"_ZN78_$LT$anki_proto..notes..DeckAndNotetype$u20$as$u20$prost..message..Message$GT$10encode_raw17hf69b3daff86f3abeE.exit": ; preds = %bb.h, %bb.g, %bb.i
  %storemerge = phi i64 [ 1, %bb.i ], [ 0, %bb.g ], [ 0, %bb.h ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17ha9f709287cf78bbcE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !15250 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = load i8, ptr %1, align 4, !range !23, !alias.scope !15251, !noundef !12
  %.not.i = icmp eq i8 %i.b, 2                    ; 2 uses
  br i1 %.not.i, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h7d8c1d86d287f31fE.exit.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load <4 x i8>, ptr %1, align 4, !alias.scope !15251
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load <8 x i8>, ptr %i.d, align 4, !alias.scope !15252
  %i.f = tail call i8 @llvm.vector.reduce.add.v8i8(<8 x i8> %i.e)
  %i.g = tail call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %i.c)
  %op.rdx9 = add i8 %i.g, %i.f
  %i.h = shl nuw nsw i8 %op.rdx9, 1
  %narrow.i.i.i.i = add nuw nsw i8 %i.h, 2
  %i.i = zext nneg i8 %narrow.i.i.i.i to i64
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h7d8c1d86d287f31fE.exit.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17h7d8c1d86d287f31fE.exit.i": ; preds = %bb.b, %bb.a
  %.sroa.02.0.i.i = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.k = load i32, ptr %i.j, align 4, !alias.scope !15251, !noundef !12 ; 3 uses
  %i.l = icmp eq i32 %i.k, 0                      ; 2 uses
  br i1 %i.l, label %"_ZN86_$LT$anki_proto..collection..OpChangesWithCount$u20$as$u20$prost..message..Message$GT$11encoded_len17h6425bdf82b1fd550E.exit", label %bb.c

bb.c:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h7d8c1d86d287f31fE.exit.i"
  %i.m = or i32 %i.k, 1
  %i.n = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.m, i1 true)
  %i.o = xor i32 %i.n, 31
  %i.p = mul nuw nsw i32 %i.o, 9
  %i.q = add nuw nsw i32 %i.p, 73
  %i.r = lshr i32 %i.q, 6
  %narrow.i.i = add nuw nsw i32 %i.r, 1
  %i.s = zext nneg i32 %narrow.i.i to i64
  br label %"_ZN86_$LT$anki_proto..collection..OpChangesWithCount$u20$as$u20$prost..message..Message$GT$11encoded_len17h6425bdf82b1fd550E.exit"

"_ZN86_$LT$anki_proto..collection..OpChangesWithCount$u20$as$u20$prost..message..Message$GT$11encoded_len17h6425bdf82b1fd550E.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h7d8c1d86d287f31fE.exit.i", %bb.c
  %.sroa.01.0.i = phi i64 [ %i.s, %bb.c ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17h7d8c1d86d287f31fE.exit.i" ]
  %i.t = add nuw nsw i64 %.sroa.01.0.i, %.sroa.02.0.i.i ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.u, align 8, !noundef !12 ; 2 uses
  %i.v = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = xor i64 %.val, 9223372036854775807       ; 2 uses
  %i.x = icmp samesign ugt i64 %i.t, %i.w
  br i1 %i.x, label %bb.h, label %bb.d

bb.d:                                             ; preds = %"_ZN86_$LT$anki_proto..collection..OpChangesWithCount$u20$as$u20$prost..message..Message$GT$11encoded_len17h6425bdf82b1fd550E.exit"
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5prost8encoding7message6encode17hfc75eb04b62dc0bdE(i32 noundef 1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %i.l, label %"_ZN86_$LT$anki_proto..collection..OpChangesWithCount$u20$as$u20$prost..message..Message$GT$10encode_raw17hb98a2a320f5577adE.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15253
  store i8 16, ptr %i.a, align 1, !noalias !15253
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !15254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15253
  %i.y = zext i32 %i.k to i64
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %i.y, ptr noalias noundef align 8 dereferenceable(24) %2), !noalias !15254
  br label %"_ZN86_$LT$anki_proto..collection..OpChangesWithCount$u20$as$u20$prost..message..Message$GT$10encode_raw17hb98a2a320f5577adE.exit"

bb.h:                                             ; preds = %"_ZN86_$LT$anki_proto..collection..OpChangesWithCount$u20$as$u20$prost..message..Message$GT$11encoded_len17h6425bdf82b1fd550E.exit"
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.w, ptr %i.aa, align 8
  br label %"_ZN86_$LT$anki_proto..collection..OpChangesWithCount$u20$as$u20$prost..message..Message$GT$10encode_raw17hb98a2a320f5577adE.exit"

"_ZN86_$LT$anki_proto..collection..OpChangesWithCount$u20$as$u20$prost..message..Message$GT$10encode_raw17hb98a2a320f5577adE.exit": ; preds = %bb.g, %bb.f, %bb.h
  %storemerge = phi i64 [ 1, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17haa24e0fa039da985E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !15310 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [1 x i8], align 1                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15311)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !15311, !noundef !12 ; 3 uses
  %i.j = icmp eq i64 %i.i, 0                      ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = or i64 %i.i, 1
  %i.l = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = xor i64 %i.l, 63
  %i.n = mul nuw nsw i64 %i.m, 9
  %i.o = add nuw nsw i64 %i.n, 73
  %i.p = lshr i64 %i.o, 6
  %i.q = add nuw nsw i64 %i.p, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.b ], [ 0, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val5.i = load i64, ptr %i.r, align 8, !alias.scope !15311, !noundef !12 ; 6 uses
  %.not.i.not.i = icmp eq i64 %.val5.i, 0         ; 2 uses
  br i1 %.not.i.not.i, label %bb.e, label %bb.d

end_hunk_3
begin_hunk_4_@_ZN5prost7message7Message6encode17hae980b2bee91e3acE:bb.a

bb.d:                                             ; preds = %bb.c, %"_ZN4core6option15Option$LT$T$GT$6map_or17h972ecd4e6f63c05dE.exit.i"
  %.sroa.01.0.i = phi i64 [ %i.v, %bb.c ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17h972ecd4e6f63c05dE.exit.i" ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !15376, !noundef !12 ; 3 uses
  %i.y = icmp eq i64 %i.x, 0                      ; 2 uses
  br i1 %i.y, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = or i64 %i.x, 1
  %i.aa = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.z, i1 true)
  %i.ab = xor i64 %i.aa, 63
  %i.ac = mul nuw nsw i64 %i.ab, 9
  %i.ad = add nuw nsw i64 %i.ac, 73
  %i.ae = lshr i64 %i.ad, 6
  %i.af = add nuw nsw i64 %i.ae, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.02.0.i = phi i64 [ %i.af, %bb.e ], [ 0, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !range !27, !alias.scope !15376, !noundef !12
  %.not5.i = icmp eq i64 %i.ah, -9223372036854775808 ; 2 uses
  br i1 %.not5.i, label %"_ZN4core6option15Option$LT$T$GT$6map_or17he0e909863a8c2a9dE.exit.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val3.i.i.i.i.i = load i64, ptr %i.ai, align 8, !alias.scope !15378, !noundef !12 ; 4 uses
  %.not.i.not.i.i.i.i.i = icmp eq i64 %.val3.i.i.i.i.i, 0
  br i1 %.not.i.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = icmp sgt i64 %.val3.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = or i64 %.val3.i.i.i.i.i, 1
  %i.al = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.ak, i1 true)
  %i.am = xor i64 %i.al, 63
  %i.an = mul nuw nsw i64 %i.am, 9
  %i.ao = add nuw nsw i64 %i.an, 73
  %i.ap = lshr i64 %i.ao, 6
  %i.aq = add nuw i64 %.val3.i.i.i.i.i, 1
  %i.ar = add nuw i64 %i.aq, %i.ap
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %i.ar, %bb.h ], [ 0, %bb.g ]
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i.i.i.i = load i64, ptr %i.as, align 8, !alias.scope !15378, !noundef !12 ; 4 uses
  %.not.i7.not.i.i.i.i.i = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %.not.i7.not.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = icmp sgt i64 %.val.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.at)
  %i.au = or i64 %.val.i.i.i.i.i, 1
  %i.av = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.au, i1 true)
  %i.aw = xor i64 %i.av, 63
  %i.ax = mul nuw nsw i64 %i.aw, 9
  %i.ay = add nuw nsw i64 %i.ax, 73
  %i.az = lshr i64 %i.ay, 6
  %i.ba = add nuw i64 %.val.i.i.i.i.i, 1
  %i.bb = add nuw i64 %i.ba, %i.az
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.01.0.i.i.i.i.i = phi i64 [ %i.bb, %bb.j ], [ 0, %bb.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bd = load i32, ptr %i.bc, align 8, !alias.scope !15378, !noundef !12 ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %"_ZN86_$LT$anki_proto..collection..OpChangesAfterUndo$u20$as$u20$prost..message..Message$GT$11encoded_len28_$u7b$$u7b$closure$u7d$$u7d$17h3e11794f2c167e95E.exit.i.i", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = or i32 %i.bd, 1
  %i.bg = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bf, i1 true)
  %i.bh = xor i32 %i.bg, 31
  %i.bi = mul nuw nsw i32 %i.bh, 9
  %i.bj = add nuw nsw i32 %i.bi, 73
  %i.bk = lshr i32 %i.bj, 6
  %narrow.i.i.i.i.i.i = add nuw nsw i32 %i.bk, 1
  %i.bl = zext nneg i32 %narrow.i.i.i.i.i.i to i64
  br label %"_ZN86_$LT$anki_proto..collection..OpChangesAfterUndo$u20$as$u20$prost..message..Message$GT$11encoded_len28_$u7b$$u7b$closure$u7d$$u7d$17h3e11794f2c167e95E.exit.i.i"

"_ZN86_$LT$anki_proto..collection..OpChangesAfterUndo$u20$as$u20$prost..message..Message$GT$11encoded_len28_$u7b$$u7b$closure$u7d$$u7d$17h3e11794f2c167e95E.exit.i.i": ; preds = %bb.l, %bb.k
  %.sroa.02.0.i.i.i.i.i = phi i64 [ %i.bl, %bb.l ], [ 0, %bb.k ]
  %i.bm = add i64 %.sroa.01.0.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i
  %i.bn = add i64 %i.bm, %.sroa.02.0.i.i.i.i.i    ; 2 uses
  %i.bo = or i64 %i.bn, 1
  %i.bp = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bo, i1 true)
  %i.bq = xor i64 %i.bp, 63
  %i.br = mul nuw nsw i64 %i.bq, 9
  %i.bs = add nuw nsw i64 %i.br, 73
  %i.bt = lshr i64 %i.bs, 6
  %i.bu = add i64 %i.bn, 1
  %i.bv = add i64 %i.bu, %i.bt
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17he0e909863a8c2a9dE.exit.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17he0e909863a8c2a9dE.exit.i": ; preds = %"_ZN86_$LT$anki_proto..collection..OpChangesAfterUndo$u20$as$u20$prost..message..Message$GT$11encoded_len28_$u7b$$u7b$closure$u7d$$u7d$17h3e11794f2c167e95E.exit.i.i", %bb.f
  %.sroa.02.0.i11.i = phi i64 [ %i.bv, %"_ZN86_$LT$anki_proto..collection..OpChangesAfterUndo$u20$as$u20$prost..message..Message$GT$11encoded_len28_$u7b$$u7b$closure$u7d$$u7d$17h3e11794f2c167e95E.exit.i.i" ], [ 0, %bb.f ]
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.bx = load i32, ptr %i.bw, align 4, !alias.scope !15376, !noundef !12 ; 3 uses
  %i.by = icmp eq i32 %i.bx, 0                    ; 2 uses
  br i1 %i.by, label %"_ZN86_$LT$anki_proto..collection..OpChangesAfterUndo$u20$as$u20$prost..message..Message$GT$11encoded_len17h12664637c40694bbE.exit", label %bb.m

bb.m:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17he0e909863a8c2a9dE.exit.i"
  %i.bz = or i32 %i.bx, 1
  %i.ca = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bz, i1 true)
  %i.cb = xor i32 %i.ca, 31
  %i.cc = mul nuw nsw i32 %i.cb, 9
  %i.cd = add nuw nsw i32 %i.cc, 73
  %i.ce = lshr i32 %i.cd, 6
  %narrow.i.i = add nuw nsw i32 %i.ce, 1
  %i.cf = zext nneg i32 %narrow.i.i to i64
  br label %"_ZN86_$LT$anki_proto..collection..OpChangesAfterUndo$u20$as$u20$prost..message..Message$GT$11encoded_len17h12664637c40694bbE.exit"

"_ZN86_$LT$anki_proto..collection..OpChangesAfterUndo$u20$as$u20$prost..message..Message$GT$11encoded_len17h12664637c40694bbE.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17he0e909863a8c2a9dE.exit.i", %bb.m
  %.sroa.04.0.i = phi i64 [ %i.cf, %bb.m ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17he0e909863a8c2a9dE.exit.i" ]
  %i.cg = add nuw i64 %.sroa.01.0.i, %.sroa.02.0.i.i
  %i.ch = add nuw i64 %i.cg, %.sroa.02.0.i
  %i.ci = add i64 %i.ch, %.sroa.02.0.i11.i
  %i.cj = add i64 %i.ci, %.sroa.04.0.i            ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.ck, align 8, !noundef !12 ; 2 uses
  %i.cl = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.cl)
  %i.cm = xor i64 %.val, 9223372036854775807      ; 2 uses
  %i.cn = icmp ugt i64 %i.cj, %i.cm
  br i1 %i.cn, label %bb.x, label %bb.n

bb.n:                                             ; preds = %"_ZN86_$LT$anki_proto..collection..OpChangesAfterUndo$u20$as$u20$prost..message..Message$GT$11encoded_len17h12664637c40694bbE.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15379)
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN5prost8encoding7message6encode17hfc75eb04b62dc0bdE(i32 noundef 1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(12) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  br i1 %.not.i.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15380)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15381
  store i8 18, ptr %i.c, align 1, !noalias !15381
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.c, i64 noundef 1), !noalias !15380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15381
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %.val.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !15380
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !15382, !nonnull !12, !noundef !12
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cp, i64 noundef %.val.i), !noalias !15380
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  br i1 %i.y, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15383
  store i8 24, ptr %i.b, align 1, !noalias !15383
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef 1), !noalias !15384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15383
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %i.x, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !15384
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  br i1 %.not5.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZN5prost8encoding7message6encode17hc2efc7560e77d266E(i32 noundef 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ag, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  br i1 %i.by, label %"_ZN86_$LT$anki_proto..collection..OpChangesAfterUndo$u20$as$u20$prost..message..Message$GT$10encode_raw17h93e35d6179d01962E.exit", label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15385
  store i8 40, ptr %i.a, align 1, !noalias !15385
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !15386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15385
  %i.cq = zext i32 %i.bx to i64
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %i.cq, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !15386
  br label %"_ZN86_$LT$anki_proto..collection..OpChangesAfterUndo$u20$as$u20$prost..message..Message$GT$10encode_raw17h93e35d6179d01962E.exit"

bb.x:                                             ; preds = %"_ZN86_$LT$anki_proto..collection..OpChangesAfterUndo$u20$as$u20$prost..message..Message$GT$11encoded_len17h12664637c40694bbE.exit"
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cj, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cm, ptr %i.cs, align 8
  br label %"_ZN86_$LT$anki_proto..collection..OpChangesAfterUndo$u20$as$u20$prost..message..Message$GT$10encode_raw17h93e35d6179d01962E.exit"

"_ZN86_$LT$anki_proto..collection..OpChangesAfterUndo$u20$as$u20$prost..message..Message$GT$10encode_raw17h93e35d6179d01962E.exit": ; preds = %bb.w, %bb.v, %bb.x
  %storemerge = phi i64 [ 1, %bb.x ], [ 0, %bb.v ], [ 0, %bb.w ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17hb6f241f130c39336E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !guid !15395 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %.val2 = load i64, ptr %1, align 8, !noundef !12 ; 3 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %"_ZN77_$LT$anki_proto..notetypes..NotetypeId$u20$as$u20$prost..message..Message$GT$10encode_raw17h0a3d097156db7f2fE.exit", label %"_ZN77_$LT$anki_proto..notetypes..NotetypeId$u20$as$u20$prost..message..Message$GT$11encoded_len17hfd50ed785e8e275dE.exit"

"_ZN77_$LT$anki_proto..notetypes..NotetypeId$u20$as$u20$prost..message..Message$GT$11encoded_len17hfd50ed785e8e275dE.exit": ; preds = %bb.a
  %i.c = or i64 %.val2, 1
  %i.d = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.c, i1 true)
  %i.e = xor i64 %i.d, 63
  %i.f = mul nuw nsw i64 %i.e, 9
  %i.g = add nuw nsw i64 %i.f, 73
  %i.h = lshr i64 %i.g, 6                         ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.i, align 8, !noundef !12 ; 2 uses
  %i.j = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = xor i64 %.val, 9223372036854775807       ; 2 uses
  %.not = icmp samesign ult i64 %i.h, %i.k
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %"_ZN77_$LT$anki_proto..notetypes..NotetypeId$u20$as$u20$prost..message..Message$GT$11encoded_len17hfd50ed785e8e275dE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15396
  store i8 8, ptr %i.a, align 1, !noalias !15396
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !15397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15396
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %.val2, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !15397
  br label %"_ZN77_$LT$anki_proto..notetypes..NotetypeId$u20$as$u20$prost..message..Message$GT$10encode_raw17h0a3d097156db7f2fE.exit"

bb.c:                                             ; preds = %"_ZN77_$LT$anki_proto..notetypes..NotetypeId$u20$as$u20$prost..message..Message$GT$11encoded_len17hfd50ed785e8e275dE.exit"
  %i.l = add nuw nsw i64 %i.h, 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.k, ptr %i.n, align 8
  br label %"_ZN77_$LT$anki_proto..notetypes..NotetypeId$u20$as$u20$prost..message..Message$GT$10encode_raw17h0a3d097156db7f2fE.exit"

"_ZN77_$LT$anki_proto..notetypes..NotetypeId$u20$as$u20$prost..message..Message$GT$10encode_raw17h0a3d097156db7f2fE.exit": ; preds = %bb.a, %bb.b, %bb.c
  %storemerge = phi i64 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17hc1afacac398d1b6bE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !guid !15400 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i = load i64, ptr %i.a, align 8, !alias.scope !15401, !noundef !12 ; 4 uses
  %.not.i.not.i = icmp eq i64 %.val3.i, 0
  br i1 %.not.i.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i64 %.val3.i, -1
  tail call void @llvm.assume(i1 %i.b)
  %i.c = or i64 %.val3.i, 1
  %i.d = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.c, i1 true)
  %i.e = xor i64 %i.d, 63
  %i.f = mul nuw nsw i64 %i.e, 9
  %i.g = add nuw nsw i64 %i.f, 73
  %i.h = lshr i64 %i.g, 6
  %i.i = add nuw i64 %.val3.i, 1
  %i.j = add nuw i64 %i.i, %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i = load i64, ptr %i.k, align 8, !alias.scope !15401, !noundef !12 ; 4 uses
  %.not.i7.not.i = icmp eq i64 %.val.i, 0
  br i1 %.not.i7.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp sgt i64 %.val.i, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = or i64 %.val.i, 1
  %i.n = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.m, i1 true)
  %i.o = xor i64 %i.n, 63
  %i.p = mul nuw nsw i64 %i.o, 9
  %i.q = add nuw nsw i64 %i.p, 73
  %i.r = lshr i64 %i.q, 6
  %i.s = add nuw i64 %.val.i, 1
  %i.t = add nuw i64 %i.s, %i.r
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0.i = phi i64 [ %i.t, %bb.d ], [ 0, %bb.c ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.v = load i32, ptr %i.u, align 8, !alias.scope !15401, !noundef !12 ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %"_ZN78_$LT$anki_proto..collection..UndoStatus$u20$as$u20$prost..message..Message$GT$11encoded_len17h720c9c95b3576162E.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = or i32 %i.v, 1
  %i.y = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.x, i1 true)
  %i.z = xor i32 %i.y, 31
  %i.aa = mul nuw nsw i32 %i.z, 9
  %i.ab = add nuw nsw i32 %i.aa, 73
  %i.ac = lshr i32 %i.ab, 6
  %narrow.i.i = add nuw nsw i32 %i.ac, 1
  %i.ad = zext nneg i32 %narrow.i.i to i64
  br label %"_ZN78_$LT$anki_proto..collection..UndoStatus$u20$as$u20$prost..message..Message$GT$11encoded_len17h720c9c95b3576162E.exit"

"_ZN78_$LT$anki_proto..collection..UndoStatus$u20$as$u20$prost..message..Message$GT$11encoded_len17h720c9c95b3576162E.exit": ; preds = %bb.e, %bb.f
  %.sroa.02.0.i = phi i64 [ %i.ad, %bb.f ], [ 0, %bb.e ]
  %i.ae = add i64 %.sroa.01.0.i, %.sroa.0.0.i
  %i.af = add i64 %i.ae, %.sroa.02.0.i            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.ag, align 8, !noundef !12 ; 2 uses
  %i.ah = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = xor i64 %.val, 9223372036854775807      ; 2 uses
  %i.aj = icmp ugt i64 %i.af, %i.ai
  br i1 %i.aj, label %bb.h, label %bb.g

bb.g:                                             ; preds = %"_ZN78_$LT$anki_proto..collection..UndoStatus$u20$as$u20$prost..message..Message$GT$11encoded_len17h720c9c95b3576162E.exit"
  tail call void @"_ZN78_$LT$anki_proto..collection..UndoStatus$u20$as$u20$prost..message..Message$GT$10encode_raw17h04a1ffe9bea2e0ebE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.i

bb.h:                                             ; preds = %"_ZN78_$LT$anki_proto..collection..UndoStatus$u20$as$u20$prost..message..Message$GT$11encoded_len17h720c9c95b3576162E.exit"
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.af, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ai, ptr %i.al, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %storemerge = phi i64 [ 0, %bb.g ], [ 1, %bb.h ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17hc69fe12574addca0E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !15426 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15427)
  %i.a = load i64, ptr %1, align 8, !range !26, !alias.scope !15427, !noundef !12 ; 2 uses
  %.not.i = icmp eq i64 %i.a, -9223372036854775807
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15428)
  br i1 %.not.i, label %"_ZN82_$LT$anki_proto..decks..deck..KindContainer$u20$as$u20$prost..message..Message$GT$10encode_raw17h207839069bc3251cE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15430)
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15432)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load i8, ptr %i.c, align 8, !range !21, !alias.scope !15433, !noundef !12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !15433, !nonnull !12, !noundef !12 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !15433, !noundef !12 ; 2 uses
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.h
  %i.j = tail call noundef i64 @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7a2993217f57fcf2E"(ptr noundef nonnull readonly align 8 %i.f, ptr noundef nonnull readonly %i.i, i64 noundef 0), !noalias !15433
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !15433, !noundef !12 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = shl i64 %i.l, 2
  %i.o = or disjoint i64 %i.n, 1                  ; 2 uses
  %i.p = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.q = xor i64 %i.p, 63
  %i.r = mul nuw nsw i64 %i.q, 9
  %i.s = add nuw nsw i64 %i.r, 73
  %i.t = lshr i64 %i.s, 6
  %i.u = add i64 %i.t, %i.o
  br label %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit.i.i.i.i.i.i

_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %i.u, %bb.d ], [ 0, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.w = load i32, ptr %i.v, align 8, !alias.scope !15433, !noundef !12 ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit.i.i.i.i.i.i
  %i.y = or i32 %i.w, 1
  %i.z = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.y, i1 true)
  %i.aa = xor i32 %i.z, 31
  %i.ab = mul nuw nsw i32 %i.aa, 9
  %i.ac = add nuw nsw i32 %i.ab, 73
  %i.ad = lshr i32 %i.ac, 6
  %narrow.i.i.i.i.i.i.i = add nuw nsw i32 %i.ad, 1
  %i.ae = zext nneg i32 %narrow.i.i.i.i.i.i.i to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit.i.i.i.i.i.i
  %.sroa.01.0.i.i.i.i.i.i = phi i64 [ %i.ae, %bb.e ], [ 0, %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit.i.i.i.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ag = load i32, ptr %i.af, align 8, !alias.scope !15433, !noundef !12 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = or i32 %i.ag, 1
  %i.aj = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ai, i1 true)
  %i.ak = xor i32 %i.aj, 31
  %i.al = mul nuw nsw i32 %i.ak, 9
  %i.am = add nuw nsw i32 %i.al, 73
  %i.an = lshr i32 %i.am, 6
  %narrow.i8.i.i.i.i.i.i = add nuw nsw i32 %i.an, 1
  %i.ao = zext nneg i32 %narrow.i8.i.i.i.i.i.i to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.02.0.i.i.i.i.i.i = phi i64 [ %i.ao, %bb.g ], [ 0, %bb.f ]
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.aq = load i32, ptr %i.ap, align 4, !alias.scope !15433, !noundef !12 ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = or i32 %i.aq, 1
  %i.at = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.as, i1 true)
  %i.au = xor i32 %i.at, 31
  %i.av = mul nuw nsw i32 %i.au, 9
  %i.aw = add nuw nsw i32 %i.av, 73
  %i.ax = lshr i32 %i.aw, 6
  %narrow.i9.i.i.i.i.i.i = add nuw nsw i32 %i.ax, 1
  %i.ay = zext nneg i32 %narrow.i9.i.i.i.i.i.i to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.03.0.i.i.i.i.i.i = phi i64 [ %i.ay, %bb.i ], [ 0, %bb.h ]
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ba = load i32, ptr %i.az, align 4, !alias.scope !15433, !noundef !12 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %_ZN5prost8encoding7message11encoded_len17ha7bb9f92115a60b6E.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = or i32 %i.ba, 1
  %i.bd = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bc, i1 true)
  %i.be = xor i32 %i.bd, 31
  %i.bf = mul nuw nsw i32 %i.be, 9
  %i.bg = add nuw nsw i32 %i.bf, 73
  %i.bh = lshr i32 %i.bg, 6
  %narrow.i10.i.i.i.i.i.i = add nuw nsw i32 %i.bh, 1
  %i.bi = zext nneg i32 %narrow.i10.i.i.i.i.i.i to i64
  br label %_ZN5prost8encoding7message11encoded_len17ha7bb9f92115a60b6E.exit.i.i.i.i

_ZN5prost8encoding7message11encoded_len17ha7bb9f92115a60b6E.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.sroa.04.0.i.i.i.i.i.i = phi i64 [ %i.bi, %bb.k ], [ 0, %bb.j ]
  %i.bj = shl nuw nsw i8 %i.d, 1
  %spec.select.i.i.i.i.i.i = zext nneg i8 %i.bj to i64
  %i.bk = add i64 %i.h, %spec.select.i.i.i.i.i.i
  %i.bl = add i64 %i.bk, %i.j
  %i.bm = add i64 %i.bl, %.sroa.0.0.i.i.i.i.i.i.i
  %i.bn = add i64 %i.bm, %.sroa.01.0.i.i.i.i.i.i
  %i.bo = add i64 %i.bn, %.sroa.02.0.i.i.i.i.i.i
  %i.bp = add i64 %i.bo, %.sroa.03.0.i.i.i.i.i.i
  %i.bq = add i64 %i.bp, %.sroa.04.0.i.i.i.i.i.i
  br label %"_ZN82_$LT$anki_proto..decks..deck..KindContainer$u20$as$u20$prost..message..Message$GT$11encoded_len17hbd48a3dbf964a7c7E.exit"

bb.l:                                             ; preds = %bb.b
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !15434, !noundef !12 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = or i64 %i.bs, 1
  %i.bv = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bu, i1 true)
  %i.bw = xor i64 %i.bv, 63
  %i.bx = mul nuw nsw i64 %i.bw, 9
  %i.by = add nuw nsw i64 %i.bx, 73
  %i.bz = lshr i64 %i.by, 6
  %i.ca = add nuw nsw i64 %i.bz, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.ca, %bb.m ], [ 0, %bb.l ]
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cc = load i32, ptr %i.cb, align 8, !alias.scope !15434, !noundef !12 ; 2 uses
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ce = or i32 %i.cc, 1
  %i.cf = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ce, i1 true)
  %i.cg = xor i32 %i.cf, 31
  %i.ch = mul nuw nsw i32 %i.cg, 9
  %i.ci = add nuw nsw i32 %i.ch, 73
  %i.cj = lshr i32 %i.ci, 6
  %narrow.i.i.i1.i.i.i.i = add nuw nsw i32 %i.cj, 1
  %i.ck = zext nneg i32 %narrow.i.i.i1.i.i.i.i to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.01.0.i.i2.i.i.i.i = phi i64 [ %i.ck, %bb.o ], [ 0, %bb.n ]
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cm = load i32, ptr %i.cl, align 4, !alias.scope !15434, !noundef !12 ; 2 uses
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.co = or i32 %i.cm, 1
  %i.cp = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.co, i1 true)
  %i.cq = xor i32 %i.cp, 31
  %i.cr = mul nuw nsw i32 %i.cq, 9
  %i.cs = add nuw nsw i32 %i.cr, 73
  %i.ct = lshr i32 %i.cs, 6
  %narrow.i14.i.i.i.i.i.i = add nuw nsw i32 %i.ct, 1
  %i.cu = zext nneg i32 %narrow.i14.i.i.i.i.i.i to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.02.0.i.i3.i.i.i.i = phi i64 [ %i.cu, %bb.q ], [ 0, %bb.p ]
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i.i.i.i = load i64, ptr %i.cv, align 8, !alias.scope !15434, !noundef !12 ; 4 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = icmp sgt i64 %.val.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.cw)
  %i.cx = or i64 %.val.i.i.i.i.i.i, 1
  %i.cy = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.cx, i1 true)
  %i.cz = xor i64 %i.cy, 63
  %i.da = mul nuw nsw i64 %i.cz, 9
  %i.db = add nuw nsw i64 %i.da, 73
  %i.dc = lshr i64 %i.db, 6
  %i.dd = add nuw i64 %.val.i.i.i.i.i.i, 1
  %i.de = add nuw i64 %i.dd, %i.dc
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.03.0.i.i4.i.i.i.i = phi i64 [ %i.de, %bb.s ], [ 0, %bb.r ]
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.dg = load i8, ptr %i.df, align 8, !range !21, !alias.scope !15434, !noundef !12
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.di = load i32, ptr %i.dh, align 8, !range !28, !alias.scope !15434, !noundef !12
  %i.dj = trunc nuw i32 %i.di to i1
  br i1 %i.dj, label %bb.u, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h1be7f17236e9ba11E.exit.i.i.i.i.i.i"

bb.u:                                             ; preds = %bb.t
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val.i.i.i.i.i.i.i = load i32, ptr %i.dk, align 4, !alias.scope !15435, !noundef !12
  %i.dl = or i32 %.val.i.i.i.i.i.i.i, 1
  %i.dm = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.dl, i1 true)
  %i.dn = xor i32 %i.dm, 31
  %i.do = mul nuw nsw i32 %i.dn, 9
  %i.dp = add nuw nsw i32 %i.do, 73
  %i.dq = lshr i32 %i.dp, 6
  %narrow.i.i.i.i.i.i.i.i.i = add nuw nsw i32 %i.dq, 1
  %i.dr = zext nneg i32 %narrow.i.i.i.i.i.i.i.i.i to i64
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h1be7f17236e9ba11E.exit.i.i.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17h1be7f17236e9ba11E.exit.i.i.i.i.i.i": ; preds = %bb.u, %bb.t
  %.sroa.02.0.i.i.i.i.i.i.i = phi i64 [ %i.dr, %bb.u ], [ 0, %bb.t ]
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dt = load i32, ptr %i.ds, align 8, !range !28, !alias.scope !15434, !noundef !12
  %i.du = trunc nuw i32 %i.dt to i1
  br i1 %i.du, label %bb.v, label %"_ZN4core6option15Option$LT$T$GT$6map_or17he2caed403cfc3877E.exit.i.i.i.i.i.i"

bb.v:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h1be7f17236e9ba11E.exit.i.i.i.i.i.i"
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.val.i17.i.i.i.i.i.i = load i32, ptr %i.dv, align 4, !alias.scope !15436, !noundef !12
  %i.dw = or i32 %.val.i17.i.i.i.i.i.i, 1
  %i.dx = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.dw, i1 true)
  %i.dy = xor i32 %i.dx, 31
  %i.dz = mul nuw nsw i32 %i.dy, 9
  %i.ea = add nuw nsw i32 %i.dz, 73
  %i.eb = lshr i32 %i.ea, 6
  %narrow.i.i.i18.i.i.i.i.i.i = add nuw nsw i32 %i.eb, 1
  %i.ec = zext nneg i32 %narrow.i.i.i18.i.i.i.i.i.i to i64
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17he2caed403cfc3877E.exit.i.i.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17he2caed403cfc3877E.exit.i.i.i.i.i.i": ; preds = %bb.v, %"_ZN4core6option15Option$LT$T$GT$6map_or17h1be7f17236e9ba11E.exit.i.i.i.i.i.i"
  %.sroa.02.0.i19.i.i.i.i.i.i = phi i64 [ %i.ec, %bb.v ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17h1be7f17236e9ba11E.exit.i.i.i.i.i.i" ]
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ee = load i32, ptr %i.ed, align 8, !range !28, !alias.scope !15434, !noundef !12
  %i.ef = trunc nuw i32 %i.ee to i1
  br i1 %i.ef, label %bb.w, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h702e11ac3ca93715E.exit.i.i.i.i.i.i"

bb.w:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17he2caed403cfc3877E.exit.i.i.i.i.i.i"
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.val.i21.i.i.i.i.i.i = load i32, ptr %i.eg, align 4, !alias.scope !15437, !noundef !12 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val5.i.i.i.i.i.i.i = load i32, ptr %i.eh, align 8, !alias.scope !15437 ; 2 uses
  %i.ei = icmp eq i32 %.val.i21.i.i.i.i.i.i, 0
  br i1 %i.ei, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ej = or i32 %.val.i21.i.i.i.i.i.i, 1
  %i.ek = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ej, i1 true)
  %i.el = xor i32 %i.ek, 31
  %i.em = mul nuw nsw i32 %i.el, 9
  %i.en = add nuw nsw i32 %i.em, 73
  %i.eo = lshr i32 %i.en, 6
  %narrow.i.i.i22.i.i.i.i.i.i = add nuw nsw i32 %i.eo, 3
  %i.ep = zext nneg i32 %narrow.i.i.i22.i.i.i.i.i.i to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ep, %bb.x ], [ 2, %bb.w ]
  %i.eq = icmp eq i32 %.val5.i.i.i.i.i.i.i, 0
  br i1 %i.eq, label %"_ZN75_$LT$anki_proto..decks..deck..Normal$u20$as$u20$prost..message..Message$GT$11encoded_len28_$u7b$$u7b$closure$u7d$$u7d$17h2a7e398bf28b182dE.exit.i.i.i.i.i.i.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.er = or i32 %.val5.i.i.i.i.i.i.i, 1
  %i.es = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.er, i1 true)
  %i.et = xor i32 %i.es, 31
  %i.eu = mul nuw nsw i32 %i.et, 9
  %i.ev = add nuw nsw i32 %i.eu, 73
  %i.ew = lshr i32 %i.ev, 6
  %narrow.i3.i.i.i.i.i.i.i.i.i.i = add nuw nsw i32 %i.ew, 1
  %i.ex = zext nneg i32 %narrow.i3.i.i.i.i.i.i.i.i.i.i to i64
  br label %"_ZN75_$LT$anki_proto..decks..deck..Normal$u20$as$u20$prost..message..Message$GT$11encoded_len28_$u7b$$u7b$closure$u7d$$u7d$17h2a7e398bf28b182dE.exit.i.i.i.i.i.i.i"

"_ZN75_$LT$anki_proto..decks..deck..Normal$u20$as$u20$prost..message..Message$GT$11encoded_len28_$u7b$$u7b$closure$u7d$$u7d$17h2a7e398bf28b182dE.exit.i.i.i.i.i.i.i": ; preds = %bb.z, %bb.y
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ex, %bb.z ], [ 0, %bb.y ]
  %i.ey = add nuw nsw i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i.i.i.i.i
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h702e11ac3ca93715E.exit.i.i.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17h702e11ac3ca93715E.exit.i.i.i.i.i.i": ; preds = %"_ZN75_$LT$anki_proto..decks..deck..Normal$u20$as$u20$prost..message..Message$GT$11encoded_len28_$u7b$$u7b$closure$u7d$$u7d$17h2a7e398bf28b182dE.exit.i.i.i.i.i.i.i", %"_ZN4core6option15Option$LT$T$GT$6map_or17he2caed403cfc3877E.exit.i.i.i.i.i.i"
  %.sroa.02.0.i23.i.i.i.i.i.i = phi i64 [ %i.ey, %"_ZN75_$LT$anki_proto..decks..deck..Normal$u20$as$u20$prost..message..Message$GT$11encoded_len28_$u7b$$u7b$closure$u7d$$u7d$17h2a7e398bf28b182dE.exit.i.i.i.i.i.i.i" ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17he2caed403cfc3877E.exit.i.i.i.i.i.i" ]
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.fa = load i32, ptr %i.ez, align 4, !range !28, !alias.scope !15434, !noundef !12
  %i.fb = trunc nuw i32 %i.fa to i1
  br i1 %i.fb, label %bb.aa, label %_ZN5prost8encoding7message11encoded_len17h6ee01e4cd2206380E.exit.i.i.i.i

bb.aa:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h702e11ac3ca93715E.exit.i.i.i.i.i.i"
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i25.i.i.i.i.i.i = load i32, ptr %i.fc, align 8, !alias.scope !15438, !noundef !12 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 76
  %.val5.i26.i.i.i.i.i.i = load i32, ptr %i.fd, align 4, !alias.scope !15438 ; 2 uses
  %i.fe = icmp eq i32 %.val.i25.i.i.i.i.i.i, 0
  br i1 %i.fe, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ff = or i32 %.val.i25.i.i.i.i.i.i, 1
  %i.fg = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ff, i1 true)
  %i.fh = xor i32 %i.fg, 31
  %i.fi = mul nuw nsw i32 %i.fh, 9
  %i.fj = add nuw nsw i32 %i.fi, 73
  %i.fk = lshr i32 %i.fj, 6
  %narrow.i.i.i27.i.i.i.i.i.i = add nuw nsw i32 %i.fk, 3
  %i.fl = zext nneg i32 %narrow.i.i.i27.i.i.i.i.i.i to i64
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.0.0.i.i.i.i28.i.i.i.i.i.i = phi i64 [ %i.fl, %bb.ab ], [ 2, %bb.aa ]
  %i.fm = icmp eq i32 %.val5.i26.i.i.i.i.i.i, 0
  br i1 %i.fm, label %"_ZN75_$LT$anki_proto..decks..deck..Normal$u20$as$u20$prost..message..Message$GT$11encoded_len28_$u7b$$u7b$closure$u7d$$u7d$17h681d040a686ecaa7E.exit.i.i.i.i.i.i.i", label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fn = or i32 %.val5.i26.i.i.i.i.i.i, 1
  %i.fo = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.fn, i1 true)
  %i.fp = xor i32 %i.fo, 31
  %i.fq = mul nuw nsw i32 %i.fp, 9
  %i.fr = add nuw nsw i32 %i.fq, 73
  %i.fs = lshr i32 %i.fr, 6
  %narrow.i3.i.i.i.i29.i.i.i.i.i.i = add nuw nsw i32 %i.fs, 1
  %i.ft = zext nneg i32 %narrow.i3.i.i.i.i29.i.i.i.i.i.i to i64
  br label %"_ZN75_$LT$anki_proto..decks..deck..Normal$u20$as$u20$prost..message..Message$GT$11encoded_len28_$u7b$$u7b$closure$u7d$$u7d$17h681d040a686ecaa7E.exit.i.i.i.i.i.i.i"

"_ZN75_$LT$anki_proto..decks..deck..Normal$u20$as$u20$prost..message..Message$GT$11encoded_len28_$u7b$$u7b$closure$u7d$$u7d$17h681d040a686ecaa7E.exit.i.i.i.i.i.i.i": ; preds = %bb.ad, %bb.ac
  %.sroa.01.0.i.i.i.i30.i.i.i.i.i.i = phi i64 [ %i.ft, %bb.ad ], [ 0, %bb.ac ]
  %i.fu = add nuw nsw i64 %.sroa.01.0.i.i.i.i30.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i28.i.i.i.i.i.i
  br label %_ZN5prost8encoding7message11encoded_len17h6ee01e4cd2206380E.exit.i.i.i.i

_ZN5prost8encoding7message11encoded_len17h6ee01e4cd2206380E.exit.i.i.i.i: ; preds = %"_ZN75_$LT$anki_proto..decks..deck..Normal$u20$as$u20$prost..message..Message$GT$11encoded_len28_$u7b$$u7b$closure$u7d$$u7d$17h681d040a686ecaa7E.exit.i.i.i.i.i.i.i", %"_ZN4core6option15Option$LT$T$GT$6map_or17h702e11ac3ca93715E.exit.i.i.i.i.i.i"
  %.sroa.02.0.i31.i.i.i.i.i.i = phi i64 [ %i.fu, %"_ZN75_$LT$anki_proto..decks..deck..Normal$u20$as$u20$prost..message..Message$GT$11encoded_len28_$u7b$$u7b$closure$u7d$$u7d$17h681d040a686ecaa7E.exit.i.i.i.i.i.i.i" ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17h702e11ac3ca93715E.exit.i.i.i.i.i.i" ]
  %i.fv = shl nuw nsw i8 %i.dg, 1
  %spec.select.i.i5.i.i.i.i = zext nneg i8 %i.fv to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fx = load i32, ptr %i.fw, align 8, !range !28, !alias.scope !15434, !noundef !12
  %i.fy = trunc nuw i32 %i.fx to i1
  %i.fz = add nuw nsw i64 %.sroa.01.0.i.i2.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i
  %i.ga = add nuw nsw i64 %i.fz, %.sroa.02.0.i.i3.i.i.i.i
  %i.gb = add nuw i64 %i.ga, %.sroa.03.0.i.i4.i.i.i.i
  %i.gc = add nuw i64 %i.gb, %spec.select.i.i5.i.i.i.i
  %i.gd = add nuw i64 %i.gc, %.sroa.02.0.i.i.i.i.i.i.i
  %i.ge = add nuw i64 %i.gd, %.sroa.02.0.i19.i.i.i.i.i.i
  %i.gf = add nuw i64 %i.ge, %.sroa.02.0.i23.i.i.i.i.i.i
  %i.gg = add nuw i64 %i.gf, %.sroa.02.0.i31.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i = select i1 %i.fy, i64 5, i64 0
  %i.gh = add nuw i64 %i.gg, %spec.select.i.i.i.i.i.i.i
  br label %"_ZN82_$LT$anki_proto..decks..deck..KindContainer$u20$as$u20$prost..message..Message$GT$11encoded_len17hbd48a3dbf964a7c7E.exit"

"_ZN82_$LT$anki_proto..decks..deck..KindContainer$u20$as$u20$prost..message..Message$GT$11encoded_len17hbd48a3dbf964a7c7E.exit": ; preds = %_ZN5prost8encoding7message11encoded_len17ha7bb9f92115a60b6E.exit.i.i.i.i, %_ZN5prost8encoding7message11encoded_len17h6ee01e4cd2206380E.exit.i.i.i.i
  %.sink17.i.i.i.i = phi i64 [ %i.gh, %_ZN5prost8encoding7message11encoded_len17h6ee01e4cd2206380E.exit.i.i.i.i ], [ %i.bq, %_ZN5prost8encoding7message11encoded_len17ha7bb9f92115a60b6E.exit.i.i.i.i ] ; 2 uses
  %i.gi = or i64 %.sink17.i.i.i.i, 1
  %i.gj = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.gi, i1 true)
  %i.gk = xor i64 %i.gj, 63
  %i.gl = mul nuw nsw i64 %i.gk, 9
  %i.gm = add nuw nsw i64 %i.gl, 73
  %i.gn = lshr i64 %i.gm, 6
  %i.go = add i64 %.sink17.i.i.i.i, 1
  %i.gp = add i64 %i.go, %i.gn                    ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.gq, align 8, !noundef !12 ; 2 uses
  %i.gr = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.gr)
  %i.gs = xor i64 %.val, 9223372036854775807      ; 2 uses
  %i.gt = icmp ugt i64 %i.gp, %i.gs
  br i1 %i.gt, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %"_ZN82_$LT$anki_proto..decks..deck..KindContainer$u20$as$u20$prost..message..Message$GT$11encoded_len17hbd48a3dbf964a7c7E.exit"
  tail call void @_ZN10anki_proto5decks4deck14kind_container4Kind6encode17h865502ec8b0b8fc9E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %"_ZN82_$LT$anki_proto..decks..deck..KindContainer$u20$as$u20$prost..message..Message$GT$10encode_raw17h207839069bc3251cE.exit"

bb.af:                                            ; preds = %"_ZN82_$LT$anki_proto..decks..deck..KindContainer$u20$as$u20$prost..message..Message$GT$11encoded_len17hbd48a3dbf964a7c7E.exit"
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.gp, ptr %i.gu, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.gs, ptr %i.gv, align 8
  br label %"_ZN82_$LT$anki_proto..decks..deck..KindContainer$u20$as$u20$prost..message..Message$GT$10encode_raw17h207839069bc3251cE.exit"

"_ZN82_$LT$anki_proto..decks..deck..KindContainer$u20$as$u20$prost..message..Message$GT$10encode_raw17h207839069bc3251cE.exit": ; preds = %bb.a, %bb.ae, %bb.af
  %storemerge = phi i64 [ 1, %bb.af ], [ 0, %bb.ae ], [ 0, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17hcd4eec48d23eb5a7E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !guid !15462 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15463)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !15463, !nonnull !12, !noundef !12 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !15463, !noundef !12 ; 4 uses
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.g
  %i.i = tail call noundef i64 @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h754ffc7615f91c2bE"(ptr noundef nonnull readonly align 8 %i.e, ptr noundef nonnull readonly %i.h, i64 noundef 0), !noalias !15463
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load i32, ptr %i.j, align 8, !alias.scope !15463, !noundef !12 ; 3 uses
  %i.l = icmp eq i32 %i.k, 0                      ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = or i32 %i.k, 1
  %i.n = sext i32 %i.m to i64
  %i.o = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.p = xor i64 %i.o, 63
  %i.q = mul nuw nsw i64 %i.p, 9
  %i.r = add nuw nsw i64 %i.q, 73
  %i.s = lshr i64 %i.r, 6
  %i.t = add nuw nsw i64 %i.s, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ %i.t, %bb.b ], [ 0, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val3.i = load i64, ptr %i.u, align 8, !alias.scope !15463, !noundef !12 ; 6 uses
  %.not.i.not.i = icmp eq i64 %.val3.i, 0         ; 2 uses
  br i1 %.not.i.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = icmp sgt i64 %.val3.i, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = or i64 %.val3.i, 1
  %i.x = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.w, i1 true)
  %i.y = xor i64 %i.x, 63
  %i.z = mul nuw nsw i64 %i.y, 9
  %i.aa = add nuw nsw i64 %i.z, 73
  %i.ab = lshr i64 %i.aa, 6
  %i.ac = add nuw i64 %.val3.i, 1
  %i.ad = add nuw i64 %i.ac, %i.ab
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0.i = phi i64 [ %i.ad, %bb.d ], [ 0, %bb.c ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.af = load i32, ptr %i.ae, align 4, !alias.scope !15463, !noundef !12 ; 3 uses
  %i.ag = icmp eq i32 %i.af, 0                    ; 2 uses
  br i1 %i.ag, label %"_ZN74_$LT$anki_proto..search..BrowserRow$u20$as$u20$prost..message..Message$GT$11encoded_len17hff33a556229d8e48E.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = or i32 %i.af, 1
  %i.ai = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ah, i1 true)
  %i.aj = xor i32 %i.ai, 31
  %i.ak = mul nuw nsw i32 %i.aj, 9
  %i.al = add nuw nsw i32 %i.ak, 73
  %i.am = lshr i32 %i.al, 6
  %narrow.i.i = add nuw nsw i32 %i.am, 1
  %i.an = zext nneg i32 %narrow.i.i to i64
  br label %"_ZN74_$LT$anki_proto..search..BrowserRow$u20$as$u20$prost..message..Message$GT$11encoded_len17hff33a556229d8e48E.exit"

"_ZN74_$LT$anki_proto..search..BrowserRow$u20$as$u20$prost..message..Message$GT$11encoded_len17hff33a556229d8e48E.exit": ; preds = %bb.e, %bb.f
  %.sroa.02.0.i = phi i64 [ %i.an, %bb.f ], [ 0, %bb.e ]
  %i.ao = add i64 %i.i, %i.g
  %i.ap = add i64 %i.ao, %.sroa.0.0.i
  %i.aq = add i64 %i.ap, %.sroa.01.0.i
  %i.ar = add i64 %i.aq, %.sroa.02.0.i            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.as, align 8, !noundef !12 ; 2 uses
  %i.at = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.at)
  %i.au = xor i64 %.val, 9223372036854775807      ; 2 uses
  %i.av = icmp ugt i64 %i.ar, %i.au
  br i1 %i.av, label %bb.m, label %bb.g

bb.g:                                             ; preds = %"_ZN74_$LT$anki_proto..search..BrowserRow$u20$as$u20$prost..message..Message$GT$11encoded_len17hff33a556229d8e48E.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15464)
  %.idx.i = shl nuw nsw i64 %i.g, 5
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i
  %i.ax = icmp eq i64 %i.g, 0
  br i1 %i.ax, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.02.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %i.e, %bb.g ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 32 ; 2 uses
  tail call void @_ZN5prost8encoding7message6encode17h8bab279c1a997d81E(i32 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.02.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !15464
  %i.az = icmp eq ptr %i.ay, %i.aw
  br i1 %i.az, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.g
  br i1 %i.l, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15465
  store i8 16, ptr %i.c, align 1, !noalias !15465
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.c, i64 noundef 1), !noalias !15466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15465
  %i.ba = sext i32 %i.k to i64
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %i.ba, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !15466
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i
  br i1 %.not.i.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !15467)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15468
  store i8 26, ptr %i.b, align 1, !noalias !15468
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef 1), !noalias !15469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15468
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %.val3.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !15469
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !15469, !nonnull !12, !noundef !12
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bc, i64 noundef %.val3.i), !noalias !15469
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %i.ag, label %"_ZN74_$LT$anki_proto..search..BrowserRow$u20$as$u20$prost..message..Message$GT$10encode_raw17hb13a9ae0912a6aabE.exit", label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15470
  store i8 32, ptr %i.a, align 1, !noalias !15470
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !15471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15470
  %i.bd = zext i32 %i.af to i64
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %i.bd, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !15471
  br label %"_ZN74_$LT$anki_proto..search..BrowserRow$u20$as$u20$prost..message..Message$GT$10encode_raw17hb13a9ae0912a6aabE.exit"

bb.m:                                             ; preds = %"_ZN74_$LT$anki_proto..search..BrowserRow$u20$as$u20$prost..message..Message$GT$11encoded_len17hff33a556229d8e48E.exit"
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ar, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.au, ptr %i.bf, align 8
  br label %"_ZN74_$LT$anki_proto..search..BrowserRow$u20$as$u20$prost..message..Message$GT$10encode_raw17hb13a9ae0912a6aabE.exit"

"_ZN74_$LT$anki_proto..search..BrowserRow$u20$as$u20$prost..message..Message$GT$10encode_raw17hb13a9ae0912a6aabE.exit": ; preds = %bb.l, %bb.k, %bb.m
  %storemerge = phi i64 [ 1, %bb.m ], [ 0, %bb.k ], [ 0, %bb.l ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17hd60bbd48977347beE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !guid !15480 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %.val2 = load i32, ptr %1, align 4, !noundef !12 ; 3 uses
  %i.b = icmp eq i32 %.val2, 0
  br i1 %i.b, label %"_ZN86_$LT$anki_proto..notes..NoteFieldsCheckResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17he1d6ec3cf783d0afE.exit", label %"_ZN86_$LT$anki_proto..notes..NoteFieldsCheckResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h4bbbf981831b6e7bE.exit"

"_ZN86_$LT$anki_proto..notes..NoteFieldsCheckResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h4bbbf981831b6e7bE.exit": ; preds = %bb.a
  %i.c = or i32 %.val2, 1
  %i.d = sext i32 %i.c to i64
  %i.e = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = xor i64 %i.e, 63
  %i.g = mul nuw nsw i64 %i.f, 9
  %i.h = add nuw nsw i64 %i.g, 73
  %i.i = lshr i64 %i.h, 6                         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.j, align 8, !noundef !12 ; 2 uses
  %i.k = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = xor i64 %.val, 9223372036854775807       ; 2 uses
  %.not = icmp samesign ult i64 %i.i, %i.l
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %"_ZN86_$LT$anki_proto..notes..NoteFieldsCheckResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h4bbbf981831b6e7bE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15481
  store i8 8, ptr %i.a, align 1, !noalias !15481
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !15482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15481
  %i.m = sext i32 %.val2 to i64
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %i.m, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !15482
  br label %"_ZN86_$LT$anki_proto..notes..NoteFieldsCheckResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17he1d6ec3cf783d0afE.exit"

bb.c:                                             ; preds = %"_ZN86_$LT$anki_proto..notes..NoteFieldsCheckResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h4bbbf981831b6e7bE.exit"
  %i.n = add nuw nsw i64 %i.i, 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.p, align 8
  br label %"_ZN86_$LT$anki_proto..notes..NoteFieldsCheckResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17he1d6ec3cf783d0afE.exit"

"_ZN86_$LT$anki_proto..notes..NoteFieldsCheckResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17he1d6ec3cf783d0afE.exit": ; preds = %bb.a, %bb.b, %bb.c
  %storemerge = phi i64 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17hd9adaf2aa5700935E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !guid !15483 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.b, align 8, !noundef !12 ; 4 uses
  %i.c = getelementptr inbounds nuw [136 x i8], ptr %.val2, i64 %.val3
  %i.d = tail call noundef i64 @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf5155dff0cc01709E"(ptr noundef nonnull readonly align 8 %.val2, ptr noundef nonnull readonly %i.c, i64 noundef 0)
  %i.e = add i64 %i.d, %.val3                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.f, align 8, !noundef !12 ; 2 uses
  %i.g = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = xor i64 %.val, 9223372036854775807       ; 2 uses
  %i.i = icmp ugt i64 %i.e, %i.h
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.idx.i = mul nuw nsw i64 %.val3, 136
  %i.j = getelementptr inbounds nuw i8, ptr %.val2, i64 %.idx.i
  %i.k = icmp eq i64 %.val3, 0
  br i1 %i.k, label %"_ZN78_$LT$anki_proto..search..BrowserColumns$u20$as$u20$prost..message..Message$GT$10encode_raw17h064a3167f845f986E.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.0.01.i = phi ptr [ %i.l, %.lr.ph.i ], [ %.val2, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i, i64 136 ; 2 uses
  tail call void @_ZN5prost8encoding7message6encode17h5ad080802fdf5ff7E(i32 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %.sroa.0.01.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  %i.m = icmp eq ptr %i.l, %i.j
  br i1 %i.m, label %"_ZN78_$LT$anki_proto..search..BrowserColumns$u20$as$u20$prost..message..Message$GT$10encode_raw17h064a3167f845f986E.exit", label %.lr.ph.i

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.h, ptr %i.o, align 8
  br label %"_ZN78_$LT$anki_proto..search..BrowserColumns$u20$as$u20$prost..message..Message$GT$10encode_raw17h064a3167f845f986E.exit"

"_ZN78_$LT$anki_proto..search..BrowserColumns$u20$as$u20$prost..message..Message$GT$10encode_raw17h064a3167f845f986E.exit": ; preds = %.lr.ph.i, %bb.b, %bb.c
  %storemerge = phi i64 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %.lr.ph.i ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17hda63f7806b96912bE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !15511 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = load i8, ptr %1, align 8, !range !24, !alias.scope !15512, !noundef !12 ; 2 uses
  switch i8 %i.b, label %bb.b [
    i8 3, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hfff03f31e725d353E.exit.i"
    i8 2, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h7d8c1d86d287f31fE.exit.i.i.i.i.i"
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load <4 x i8>, ptr %1, align 8, !alias.scope !15512
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load <8 x i8>, ptr %i.d, align 4, !alias.scope !15513
  %i.f = tail call i8 @llvm.vector.reduce.add.v8i8(<8 x i8> %i.e)
  %i.g = tail call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %i.c)
  %op.rdx8 = add i8 %i.g, %i.f
  %i.h = shl nuw nsw i8 %op.rdx8, 1
  %narrow.i.i.i.i = add nuw nsw i8 %i.h, 4
  %i.i = zext nneg i8 %narrow.i.i.i.i to i64
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h7d8c1d86d287f31fE.exit.i.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17h7d8c1d86d287f31fE.exit.i.i.i.i.i": ; preds = %bb.b, %bb.a
  %.sroa.02.0.i.i.i.i.i.i = phi i64 [ %i.i, %bb.b ], [ 2, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.k = load i32, ptr %i.j, align 4, !alias.scope !15514, !noundef !12 ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %"_ZN78_$LT$anki_proto..notes..AddNoteResponse$u20$as$u20$prost..message..Message$GT$11encoded_len28_$u7b$$u7b$closure$u7d$$u7d$17h910db3ec3b396c65E.exit.i.i", label %bb.c

bb.c:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h7d8c1d86d287f31fE.exit.i.i.i.i.i"
  %i.m = or i32 %i.k, 1
  %i.n = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.m, i1 true)
  %i.o = xor i32 %i.n, 31
  %i.p = mul nuw nsw i32 %i.o, 9
  %i.q = add nuw nsw i32 %i.p, 73
  %i.r = lshr i32 %i.q, 6
  %narrow.i.i.i.i.i.i = add nuw nsw i32 %i.r, 1
  %i.s = zext nneg i32 %narrow.i.i.i.i.i.i to i64
  br label %"_ZN78_$LT$anki_proto..notes..AddNoteResponse$u20$as$u20$prost..message..Message$GT$11encoded_len28_$u7b$$u7b$closure$u7d$$u7d$17h910db3ec3b396c65E.exit.i.i"

"_ZN78_$LT$anki_proto..notes..AddNoteResponse$u20$as$u20$prost..message..Message$GT$11encoded_len28_$u7b$$u7b$closure$u7d$$u7d$17h910db3ec3b396c65E.exit.i.i": ; preds = %bb.c, %"_ZN4core6option15Option$LT$T$GT$6map_or17h7d8c1d86d287f31fE.exit.i.i.i.i.i"
  %.sroa.01.0.i.i.i.i.i = phi i64 [ %i.s, %bb.c ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17h7d8c1d86d287f31fE.exit.i.i.i.i.i" ]
  %i.t = add nuw nsw i64 %.sroa.01.0.i.i.i.i.i, %.sroa.02.0.i.i.i.i.i.i
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17hfff03f31e725d353E.exit.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17hfff03f31e725d353E.exit.i": ; preds = %"_ZN78_$LT$anki_proto..notes..AddNoteResponse$u20$as$u20$prost..message..Message$GT$11encoded_len28_$u7b$$u7b$closure$u7d$$u7d$17h910db3ec3b396c65E.exit.i.i", %bb.a
  %.sroa.02.0.i.i = phi i64 [ %i.t, %"_ZN78_$LT$anki_proto..notes..AddNoteResponse$u20$as$u20$prost..message..Message$GT$11encoded_len28_$u7b$$u7b$closure$u7d$$u7d$17h910db3ec3b396c65E.exit.i.i" ], [ 0, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !15512, !noundef !12 ; 3 uses
  %i.w = icmp eq i64 %i.v, 0                      ; 2 uses
  br i1 %i.w, label %"_ZN78_$LT$anki_proto..notes..AddNoteResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17heeeeceb7e4d4c450E.exit", label %bb.d

bb.d:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hfff03f31e725d353E.exit.i"
  %i.x = or i64 %i.v, 1
  %i.y = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = xor i64 %i.y, 63
  %i.aa = mul nuw nsw i64 %i.z, 9
  %i.ab = add nuw nsw i64 %i.aa, 73
  %i.ac = lshr i64 %i.ab, 6
  %i.ad = add nuw nsw i64 %i.ac, 1
  br label %"_ZN78_$LT$anki_proto..notes..AddNoteResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17heeeeceb7e4d4c450E.exit"

"_ZN78_$LT$anki_proto..notes..AddNoteResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17heeeeceb7e4d4c450E.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hfff03f31e725d353E.exit.i", %bb.d
  %.sroa.01.0.i = phi i64 [ %i.ad, %bb.d ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17hfff03f31e725d353E.exit.i" ]
  %i.ae = add nuw nsw i64 %.sroa.01.0.i, %.sroa.02.0.i.i ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.af, align 8, !noundef !12 ; 2 uses
  %i.ag = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = xor i64 %.val, 9223372036854775807      ; 2 uses
  %i.ai = icmp samesign ugt i64 %i.ae, %i.ah
  br i1 %i.ai, label %bb.i, label %bb.e

bb.e:                                             ; preds = %"_ZN78_$LT$anki_proto..notes..AddNoteResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17heeeeceb7e4d4c450E.exit"
  %.not.i = icmp eq i8 %i.b, 3
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5prost8encoding7message6encode17hf6b2e26786d29bc9E(i32 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br i1 %i.w, label %"_ZN78_$LT$anki_proto..notes..AddNoteResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h6cd1576d8bbc14f4E.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15515
  store i8 16, ptr %i.a, align 1, !noalias !15515
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !15516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15515
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %i.v, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !15516
  br label %"_ZN78_$LT$anki_proto..notes..AddNoteResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h6cd1576d8bbc14f4E.exit"

bb.i:                                             ; preds = %"_ZN78_$LT$anki_proto..notes..AddNoteResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17heeeeceb7e4d4c450E.exit"
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ae, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ah, ptr %i.ak, align 8
  br label %"_ZN78_$LT$anki_proto..notes..AddNoteResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h6cd1576d8bbc14f4E.exit"

"_ZN78_$LT$anki_proto..notes..AddNoteResponse$u20$as$u20$prost..message..Message$GT$10encode_raw17h6cd1576d8bbc14f4E.exit": ; preds = %bb.h, %bb.g, %bb.i
  %storemerge = phi i64 [ 1, %bb.i ], [ 0, %bb.g ], [ 0, %bb.h ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17hde9ed915485daa1aE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !15535 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15536)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !range !23, !alias.scope !15536, !noundef !12
  %.not.i = icmp eq i8 %i.b, 2                    ; 2 uses
  br i1 %.not.i, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd2490a12951edb9bE.exit.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load <4 x i8>, ptr %i.a, align 8, !alias.scope !15536
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.e = load <8 x i8>, ptr %i.d, align 4, !alias.scope !15537
  %i.f = tail call i8 @llvm.vector.reduce.add.v8i8(<8 x i8> %i.e)
  %i.g = tail call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %i.c)
  %op.rdx10 = add i8 %i.g, %i.f
  %i.h = shl nuw nsw i8 %op.rdx10, 1
  %narrow.i.i.i.i = add nuw nsw i8 %i.h, 2
  %i.i = zext nneg i8 %narrow.i.i.i.i to i64
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd2490a12951edb9bE.exit.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17hd2490a12951edb9bE.exit.i": ; preds = %bb.b, %bb.a
  %.sroa.02.0.i.i = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ]
  %i.j = load i64, ptr %1, align 8, !range !27, !alias.scope !15536, !noundef !12
  %.not2.i = icmp eq i64 %i.j, -9223372036854775808 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15538)
  br i1 %.not2.i, label %"_ZN85_$LT$anki_proto..import_export..ImportResponse$u20$as$u20$prost..message..Message$GT$11encoded_len17h87f342792301e06dE.exit", label %bb.c

bb.c:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hd2490a12951edb9bE.exit.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15541)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !15542, !nonnull !12, !noundef !12 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !15542, !noundef !12 ; 2 uses
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %i.n
  %i.p = tail call noundef i64 @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h9ad67bb37f95b97bE"(ptr noundef nonnull readonly align 8 %i.l, ptr noundef nonnull readonly %i.o, i64 noundef 0), !noalias !15542
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !15542, !nonnull !12, !noundef !12 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !15542, !noundef !12 ; 2 uses
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.r, i64 %i.t
  %i.v = tail call noundef i64 @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h9ad67bb37f95b97bE"(ptr noundef nonnull readonly align 8 %i.r, ptr noundef nonnull readonly %i.u, i64 noundef 0), !noalias !15542
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !15542, !nonnull !12, !noundef !12 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
end_hunk_4
begin_hunk_5_@_ZN5prost7message7Message6encode17hdf76680d94736cceE:bb.a
  br i1 %.not.i.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15557)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15558
  store i8 10, ptr %i.a, align 1, !noalias !15558
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !15559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15558
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %.val.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !15559
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !15559, !nonnull !12, !noundef !12
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.y, i64 noundef %.val.i), !noalias !15559
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.idx.i = mul nuw nsw i64 %i.o, 40
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i
  %i.aa = icmp eq i64 %i.o, 0
  br i1 %i.aa, label %"_ZN88_$LT$anki_proto..card_rendering..EmptyCardsReport$u20$as$u20$prost..message..Message$GT$10encode_raw17h70c9ca5fb869e1b5E.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.sroa.0.02.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %i.m, %bb.e ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 40 ; 2 uses
  call void @_ZN5prost8encoding7message6encode17h29c9b18724abab3cE(i32 noundef 2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.0.02.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !15556
  %i.ac = icmp eq ptr %i.ab, %i.z
  br i1 %i.ac, label %"_ZN88_$LT$anki_proto..card_rendering..EmptyCardsReport$u20$as$u20$prost..message..Message$GT$10encode_raw17h70c9ca5fb869e1b5E.exit", label %.lr.ph.i

bb.f:                                             ; preds = %"_ZN88_$LT$anki_proto..card_rendering..EmptyCardsReport$u20$as$u20$prost..message..Message$GT$11encoded_len17h2bd86cdd3b980269E.exit"
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.v, ptr %i.ae, align 8
  br label %"_ZN88_$LT$anki_proto..card_rendering..EmptyCardsReport$u20$as$u20$prost..message..Message$GT$10encode_raw17h70c9ca5fb869e1b5E.exit"

"_ZN88_$LT$anki_proto..card_rendering..EmptyCardsReport$u20$as$u20$prost..message..Message$GT$10encode_raw17h70c9ca5fb869e1b5E.exit": ; preds = %.lr.ph.i, %bb.e, %bb.f
  %storemerge = phi i64 [ 1, %bb.f ], [ 0, %bb.e ], [ 0, %.lr.ph.i ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17hdfcde54e04b1921eE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !guid !15562 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i8, ptr %i.a, align 4, !range !21, !alias.scope !15563, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 45
  %i.d = load i8, ptr %i.c, align 1, !range !21, !alias.scope !15563, !noundef !12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !alias.scope !15563, !noundef !12 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = or i32 %i.f, 1
  %i.i = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.h, i1 true)
  %i.j = xor i32 %i.i, 31
  %i.k = mul nuw nsw i32 %i.j, 9
  %i.l = add nuw nsw i32 %i.k, 73
  %i.m = lshr i32 %i.l, 6
  %narrow.i.i = add nuw nsw i32 %i.m, 1
  %i.n = zext nneg i32 %narrow.i.i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.02.0.i = phi i64 [ %i.n, %bb.b ], [ 0, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.p = load i32, ptr %i.o, align 4, !alias.scope !15563, !noundef !12 ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = or i32 %i.p, 1
  %i.s = sext i32 %i.r to i64
  %i.t = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.s, i1 true)
  %i.u = xor i64 %i.t, 63
  %i.v = mul nuw nsw i64 %i.u, 9
  %i.w = add nuw nsw i64 %i.v, 73
  %i.x = lshr i64 %i.w, 6
  %i.y = add nuw nsw i64 %i.x, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.03.0.i = phi i64 [ %i.y, %bb.d ], [ 0, %bb.c ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !alias.scope !15563, !noundef !12 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = or i32 %i.aa, 1
  %i.ad = sext i32 %i.ac to i64
  %i.ae = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ad, i1 true)
  %i.af = xor i64 %i.ae, 63
  %i.ag = mul nuw nsw i64 %i.af, 9
  %i.ah = add nuw nsw i64 %i.ag, 73
  %i.ai = lshr i64 %i.ah, 6
  %i.aj = add nuw nsw i64 %i.ai, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.04.0.i = phi i64 [ %i.aj, %bb.f ], [ 0, %bb.e ]
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.al = load i32, ptr %i.ak, align 8, !alias.scope !15563, !noundef !12 ; 2 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = or i32 %i.al, 1
  %i.ao = sext i32 %i.an to i64
  %i.ap = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ao, i1 true)
  %i.aq = xor i64 %i.ap, 63
  %i.ar = mul nuw nsw i64 %i.aq, 9
  %i.as = add nuw nsw i64 %i.ar, 73
  %i.at = lshr i64 %i.as, 6
  %i.au = add nuw nsw i64 %i.at, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.05.0.i = phi i64 [ %i.au, %bb.h ], [ 0, %bb.g ]
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.aw = load i32, ptr %i.av, align 4, !alias.scope !15563, !noundef !12 ; 2 uses
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = or i32 %i.aw, 1
  %i.az = sext i32 %i.ay to i64
  %i.ba = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.az, i1 true)
  %i.bb = xor i64 %i.ba, 63
  %i.bc = mul nuw nsw i64 %i.bb, 9
  %i.bd = add nuw nsw i64 %i.bc, 73
  %i.be = lshr i64 %i.bd, 6
  %i.bf = add nuw nsw i64 %i.be, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.06.0.i = phi i64 [ %i.bf, %bb.j ], [ 0, %bb.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !15563, !noundef !12 ; 4 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %"_ZN75_$LT$anki_proto..decks..deck..Common$u20$as$u20$prost..message..Message$GT$11encoded_len17h6dd5b4e8bb06781cE.exit", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = or i64 %i.bh, 1
  %i.bk = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.bj, i1 true)
  %i.bl = xor i64 %i.bk, 63
  %i.bm = mul nuw nsw i64 %i.bl, 9
  %i.bn = add nuw nsw i64 %i.bm, 73
  %i.bo = lshr i64 %i.bn, 6
  %i.bp = icmp sgt i64 %i.bh, -1
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = add nuw i64 %i.bh, 2
  %i.br = add nuw i64 %i.bq, %i.bo
  br label %"_ZN75_$LT$anki_proto..decks..deck..Common$u20$as$u20$prost..message..Message$GT$11encoded_len17h6dd5b4e8bb06781cE.exit"

"_ZN75_$LT$anki_proto..decks..deck..Common$u20$as$u20$prost..message..Message$GT$11encoded_len17h6dd5b4e8bb06781cE.exit": ; preds = %bb.k, %bb.l
  %.sroa.07.0.i = phi i64 [ %i.br, %bb.l ], [ 0, %bb.k ]
  %i.bs = add nuw nsw i8 %i.d, %i.b
  %narrow.i = shl nuw nsw i8 %i.bs, 1
  %i.bt = zext nneg i8 %narrow.i to i64
  %i.bu = add nuw nsw i64 %.sroa.02.0.i, %i.bt
  %i.bv = add nuw nsw i64 %i.bu, %.sroa.03.0.i
  %i.bw = add nuw nsw i64 %i.bv, %.sroa.04.0.i
  %i.bx = add nuw nsw i64 %i.bw, %.sroa.05.0.i
  %i.by = add nuw nsw i64 %i.bx, %.sroa.06.0.i
  %i.bz = add nuw i64 %i.by, %.sroa.07.0.i        ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.ca, align 8, !noundef !12 ; 2 uses
  %i.cb = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = xor i64 %.val, 9223372036854775807      ; 2 uses
  %i.cd = icmp ugt i64 %i.bz, %i.cc
  br i1 %i.cd, label %bb.n, label %bb.m

bb.m:                                             ; preds = %"_ZN75_$LT$anki_proto..decks..deck..Common$u20$as$u20$prost..message..Message$GT$11encoded_len17h6dd5b4e8bb06781cE.exit"
  tail call void @"_ZN75_$LT$anki_proto..decks..deck..Common$u20$as$u20$prost..message..Message$GT$10encode_raw17hbb78805109002c53E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.o

bb.n:                                             ; preds = %"_ZN75_$LT$anki_proto..decks..deck..Common$u20$as$u20$prost..message..Message$GT$11encoded_len17h6dd5b4e8bb06781cE.exit"
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bz, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cc, ptr %i.cf, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %storemerge = phi i64 [ 0, %bb.m ], [ 1, %bb.n ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17hedced33e6b5a8895E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !15574 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.c, align 8, !noundef !12 ; 9 uses
  %i.d = icmp eq i64 %.val3, 0
  br i1 %i.d, label %"_ZN70_$LT$anki_proto..cards..CardIds$u20$as$u20$prost..message..Message$GT$10encode_raw17h90e07353b0742ce7E.exit", label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.a
  %i.e = add i64 %.val3, -1                       ; 2 uses
  %xtraiter = and i64 %.val3, 1
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.preheader.i.i.epil.preheader, label %.preheader.i.i.preheader.new

.preheader.i.i.preheader.new:                     ; preds = %.preheader.i.i.preheader
  %unroll_iter = and i64 %.val3, -2
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.i.preheader.new
  %.sroa.04.0.i.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.x, %.preheader.i.i ] ; 3 uses
  %.sroa.02.0.i.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.w, %.preheader.i.i ]
  %niter = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.val2, i64 %.sroa.04.0.i.i.i
  %.val.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !15575, !noundef !12
  %i.h = or i64 %.val.i.i.i, 1
  %i.i = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.j = xor i64 %i.i, 63
  %i.k = mul nuw nsw i64 %i.j, 9
  %i.l = add nuw nsw i64 %i.k, 73
  %i.m = lshr i64 %i.l, 6
  %i.n = add i64 %i.m, %.sroa.02.0.i.i.i
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.val2, i64 %.sroa.04.0.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val.i.i.i.1 = load i64, ptr %i.p, align 8, !alias.scope !15575, !noundef !12
  %i.q = or i64 %.val.i.i.i.1, 1
  %i.r = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.q, i1 true)
  %i.s = xor i64 %i.r, 63
  %i.t = mul nuw nsw i64 %i.s, 9
  %i.u = add nuw nsw i64 %i.t, 73
  %i.v = lshr i64 %i.u, 6
  %i.w = add i64 %i.v, %i.n                       ; 3 uses
  %i.x = add nuw i64 %.sroa.04.0.i.i.i, 2         ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN70_$LT$anki_proto..cards..CardIds$u20$as$u20$prost..message..Message$GT$11encoded_len17h9db089e23f00a5c0E.exit.unr-lcssa", label %.preheader.i.i

"_ZN70_$LT$anki_proto..cards..CardIds$u20$as$u20$prost..message..Message$GT$11encoded_len17h9db089e23f00a5c0E.exit.unr-lcssa": ; preds = %.preheader.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN70_$LT$anki_proto..cards..CardIds$u20$as$u20$prost..message..Message$GT$11encoded_len17h9db089e23f00a5c0E.exit", label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %"_ZN70_$LT$anki_proto..cards..CardIds$u20$as$u20$prost..message..Message$GT$11encoded_len17h9db089e23f00a5c0E.exit.unr-lcssa", %.preheader.i.i.preheader
  %.sroa.04.0.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.x, %"_ZN70_$LT$anki_proto..cards..CardIds$u20$as$u20$prost..message..Message$GT$11encoded_len17h9db089e23f00a5c0E.exit.unr-lcssa" ]
  %.sroa.02.0.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.w, %"_ZN70_$LT$anki_proto..cards..CardIds$u20$as$u20$prost..message..Message$GT$11encoded_len17h9db089e23f00a5c0E.exit.unr-lcssa" ]
  %lcmp.mod18 = trunc i64 %.val3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod18)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.val2, i64 %.sroa.04.0.i.i.i.epil.init
  %.val.i.i.i.epil = load i64, ptr %i.y, align 8, !alias.scope !15575, !noundef !12
  %i.z = or i64 %.val.i.i.i.epil, 1
  %i.aa = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.z, i1 true)
  %i.ab = xor i64 %i.aa, 63
  %i.ac = mul nuw nsw i64 %i.ab, 9
  %i.ad = add nuw nsw i64 %i.ac, 73
  %i.ae = lshr i64 %i.ad, 6
  %i.af = add i64 %i.ae, %.sroa.02.0.i.i.i.epil.init
  br label %"_ZN70_$LT$anki_proto..cards..CardIds$u20$as$u20$prost..message..Message$GT$11encoded_len17h9db089e23f00a5c0E.exit"

"_ZN70_$LT$anki_proto..cards..CardIds$u20$as$u20$prost..message..Message$GT$11encoded_len17h9db089e23f00a5c0E.exit": ; preds = %"_ZN70_$LT$anki_proto..cards..CardIds$u20$as$u20$prost..message..Message$GT$11encoded_len17h9db089e23f00a5c0E.exit.unr-lcssa", %.preheader.i.i.epil.preheader
  %.lcssa16 = phi i64 [ %i.w, %"_ZN70_$LT$anki_proto..cards..CardIds$u20$as$u20$prost..message..Message$GT$11encoded_len17h9db089e23f00a5c0E.exit.unr-lcssa" ], [ %i.af, %.preheader.i.i.epil.preheader ] ; 2 uses
  %i.ag = or i64 %.lcssa16, 1
  %i.ah = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ag, i1 true)
  %i.ai = xor i64 %i.ah, 63
  %i.aj = mul nuw nsw i64 %i.ai, 9
  %i.ak = add nuw nsw i64 %i.aj, 73
  %i.al = lshr i64 %i.ak, 6
  %i.am = add i64 %.lcssa16, 1
  %i.an = add i64 %i.am, %i.al                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.ao, align 8, !noundef !12 ; 2 uses
  %i.ap = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = xor i64 %.val, 9223372036854775807      ; 2 uses
  %i.ar = icmp ugt i64 %i.an, %i.aq
  br i1 %i.ar, label %bb.d, label %bb.b

bb.b:                                             ; preds = %"_ZN70_$LT$anki_proto..cards..CardIds$u20$as$u20$prost..message..Message$GT$11encoded_len17h9db089e23f00a5c0E.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15576)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15577
  store i8 10, ptr %i.a, align 1, !noalias !15577
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !15576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15577
  %xtraiter19 = and i64 %.val3, 1
  %i.as = icmp eq i64 %i.e, 0
  br i1 %i.as, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter23 = and i64 %.val3, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.04.0.i.i.i6 = phi i64 [ 0, %.new ], [ %i.bk, %bb.c ] ; 3 uses
  %.sroa.02.0.i.i.i7 = phi i64 [ 0, %.new ], [ %i.bj, %bb.c ]
  %niter24 = phi i64 [ 0, %.new ], [ %niter24.next.1, %bb.c ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.val2, i64 %.sroa.04.0.i.i.i6
  %.val.i.i.i8 = load i64, ptr %i.at, align 8, !alias.scope !15576, !noalias !15578, !noundef !12
  %i.au = or i64 %.val.i.i.i8, 1
  %i.av = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.au, i1 true)
  %i.aw = xor i64 %i.av, 63
  %i.ax = mul nuw nsw i64 %i.aw, 9
  %i.ay = add nuw nsw i64 %i.ax, 73
  %i.az = lshr i64 %i.ay, 6
  %i.ba = add i64 %i.az, %.sroa.02.0.i.i.i7
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.val2, i64 %.sroa.04.0.i.i.i6
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.val.i.i.i8.1 = load i64, ptr %i.bc, align 8, !alias.scope !15576, !noalias !15578, !noundef !12
  %i.bd = or i64 %.val.i.i.i8.1, 1
  %i.be = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bd, i1 true)
  %i.bf = xor i64 %i.be, 63
  %i.bg = mul nuw nsw i64 %i.bf, 9
  %i.bh = add nuw nsw i64 %i.bg, 73
  %i.bi = lshr i64 %i.bh, 6
  %i.bj = add i64 %i.bi, %i.ba                    ; 3 uses
  %i.bk = add nuw i64 %.sroa.04.0.i.i.i6, 2       ; 2 uses
  %niter24.next.1 = add nuw i64 %niter24, 2       ; 2 uses
  %niter24.ncmp.1 = icmp eq i64 %niter24.next.1, %unroll_iter23
  br i1 %niter24.ncmp.1, label %.lr.ph.preheader.i.i.unr-lcssa, label %bb.c

.lr.ph.preheader.i.i.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod20.not = icmp eq i64 %xtraiter19, 0
  br i1 %lcmp.mod20.not, label %.lr.ph.preheader.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.preheader.i.i.unr-lcssa, %bb.b
  %.sroa.04.0.i.i.i6.epil.init = phi i64 [ 0, %bb.b ], [ %i.bk, %.lr.ph.preheader.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i7.epil.init = phi i64 [ 0, %bb.b ], [ %i.bj, %.lr.ph.preheader.i.i.unr-lcssa ]
  %lcmp.mod22 = trunc i64 %.val3 to i1
  call void @llvm.assume(i1 %lcmp.mod22)
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.val2, i64 %.sroa.04.0.i.i.i6.epil.init
  %.val.i.i.i8.epil = load i64, ptr %i.bl, align 8, !alias.scope !15576, !noalias !15578, !noundef !12
  %i.bm = or i64 %.val.i.i.i8.epil, 1
  %i.bn = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bm, i1 true)
  %i.bo = xor i64 %i.bn, 63
  %i.bp = mul nuw nsw i64 %i.bo, 9
  %i.bq = add nuw nsw i64 %i.bp, 73
  %i.br = lshr i64 %i.bq, 6
  %i.bs = add i64 %i.br, %.sroa.02.0.i.i.i7.epil.init
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.preheader.i.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.bj, %.lr.ph.preheader.i.i.unr-lcssa ], [ %i.bs, %.epil.preheader ]
  %.idx.i.i = shl nuw nsw i64 %.val3, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %.val2, i64 %.idx.i.i
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %.lcssa, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !15576
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.02.i.i = phi ptr [ %i.bu, %.lr.ph.i.i ], [ %.val2, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 8 ; 2 uses
  %i.bv = load i64, ptr %.sroa.0.02.i.i, align 8, !alias.scope !15576, !noalias !15578, !noundef !12
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %i.bv, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !15576
  %i.bw = icmp eq ptr %i.bu, %i.bt
  br i1 %i.bw, label %"_ZN70_$LT$anki_proto..cards..CardIds$u20$as$u20$prost..message..Message$GT$10encode_raw17h90e07353b0742ce7E.exit", label %.lr.ph.i.i

bb.d:                                             ; preds = %"_ZN70_$LT$anki_proto..cards..CardIds$u20$as$u20$prost..message..Message$GT$11encoded_len17h9db089e23f00a5c0E.exit"
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.an, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aq, ptr %i.by, align 8
  br label %"_ZN70_$LT$anki_proto..cards..CardIds$u20$as$u20$prost..message..Message$GT$10encode_raw17h90e07353b0742ce7E.exit"

"_ZN70_$LT$anki_proto..cards..CardIds$u20$as$u20$prost..message..Message$GT$10encode_raw17h90e07353b0742ce7E.exit": ; preds = %.lr.ph.i.i, %bb.a, %bb.d
  %storemerge = phi i64 [ 1, %bb.d ], [ 0, %bb.a ], [ 0, %.lr.ph.i.i ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message6encode17hef62de8653cb7f00E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !15608 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15609)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !15609, !noundef !12 ; 3 uses
  %i.g = icmp eq i64 %i.f, 0                      ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = or i64 %i.f, 1
  %i.i = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.j = xor i64 %i.i, 63
  %i.k = mul nuw nsw i64 %i.j, 9
  %i.l = add nuw nsw i64 %i.k, 73
  %i.m = lshr i64 %i.l, 6
  %i.n = add nuw nsw i64 %i.m, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ %i.n, %bb.b ], [ 0, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.val.i = load i64, ptr %i.o, align 8, !alias.scope !15609, !noundef !12 ; 6 uses
  %.not.i.not.i = icmp eq i64 %.val.i, 0          ; 2 uses
  br i1 %.not.i.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = icmp sgt i64 %.val.i, -1
  tail call void @llvm.assume(i1 %i.p)
  %i.q = or i64 %.val.i, 1
  %i.r = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.q, i1 true)
  %i.s = xor i64 %i.r, 63
  %i.t = mul nuw nsw i64 %i.s, 9
  %i.u = add nuw nsw i64 %i.t, 73
  %i.v = lshr i64 %i.u, 6
  %i.w = add nuw i64 %.val.i, 1
  %i.x = add nuw i64 %i.w, %i.v
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0.i = phi i64 [ %i.x, %bb.d ], [ 0, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !15609, !noundef !12 ; 3 uses
  %i.aa = icmp eq i64 %i.z, 0                     ; 2 uses
  br i1 %i.aa, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = or i64 %i.z, 1
  %i.ac = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ab, i1 true)
  %i.ad = xor i64 %i.ac, 63
  %i.ae = mul nuw nsw i64 %i.ad, 9
  %i.af = add nuw nsw i64 %i.ae, 73
  %i.ag = lshr i64 %i.af, 6
  %i.ah = add nuw nsw i64 %i.ag, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.02.0.i = phi i64 [ %i.ah, %bb.f ], [ 0, %bb.e ]
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.aj = load i32, ptr %i.ai, align 8, !alias.scope !15609, !noundef !12 ; 5 uses
  %i.ak = icmp eq i32 %i.aj, 0                    ; 2 uses
  br i1 %i.ak, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = shl i32 %i.aj, 1
  %i.am = ashr i32 %i.aj, 31
  %i.an = xor i32 %i.al, %i.am
  %i.ao = or i32 %i.an, 1
  %i.ap = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ao, i1 true)
  %i.aq = xor i32 %i.ap, 31
  %i.ar = mul nuw nsw i32 %i.aq, 9
  %i.as = add nuw nsw i32 %i.ar, 73
  %i.at = lshr i32 %i.as, 6
  %narrow.i.i = add nuw nsw i32 %i.at, 1
  %i.au = zext nneg i32 %narrow.i.i to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.03.0.i = phi i64 [ %i.au, %bb.h ], [ 0, %bb.g ]
  %i.av = load i64, ptr %1, align 8, !range !18, !alias.scope !15609, !noundef !12
  %.not.i = icmp eq i64 %i.av, 2                  ; 2 uses
  br i1 %.not.i, label %"_ZN75_$LT$anki_proto..notetypes..Notetype$u20$as$u20$prost..message..Message$GT$11encoded_len17h821d16c127802b11E.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = tail call fastcc noundef i64 @"_ZN83_$LT$anki_proto..notetypes..notetype..Config$u20$as$u20$prost..message..Message$GT$11encoded_len17h3ed7ae0b92204aebE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) dereferenceable_or_null(160) %1) ; 2 uses
  %i.ax = or i64 %i.aw, 1
  %i.ay = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ax, i1 true)
  %i.az = xor i64 %i.ay, 63
  %i.ba = mul nuw nsw i64 %i.az, 9
  %i.bb = add nuw nsw i64 %i.ba, 73
  %i.bc = lshr i64 %i.bb, 6
  %i.bd = add i64 %i.aw, 1
  %i.be = add i64 %i.bd, %i.bc
  br label %"_ZN75_$LT$anki_proto..notetypes..Notetype$u20$as$u20$prost..message..Message$GT$11encoded_len17h821d16c127802b11E.exit"

"_ZN75_$LT$anki_proto..notetypes..Notetype$u20$as$u20$prost..message..Message$GT$11encoded_len17h821d16c127802b11E.exit": ; preds = %bb.i, %bb.j
  %.sroa.02.0.i.i = phi i64 [ %i.be, %bb.j ], [ 0, %bb.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !15609, !nonnull !12, !noundef !12 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !15609, !noundef !12 ; 4 uses
  %i.bj = getelementptr inbounds nuw [144 x i8], ptr %i.bg, i64 %i.bi
  %i.bk = tail call noundef i64 @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h539beb988fd2a865E"(ptr noundef nonnull readonly align 8 %i.bg, ptr noundef nonnull readonly %i.bj, i64 noundef 0), !noalias !15609
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !15609, !nonnull !12, !noundef !12 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !15609, !noundef !12 ; 4 uses
  %i.bp = getelementptr inbounds nuw [224 x i8], ptr %i.bm, i64 %i.bo
  %i.bq = tail call noundef i64 @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h6ba1c0f5f49bc0b0E"(ptr noundef nonnull readonly align 8 %i.bm, ptr noundef nonnull readonly %i.bp, i64 noundef 0), !noalias !15609
  %i.br = add nuw i64 %.sroa.01.0.i, %.sroa.0.0.i
  %i.bs = add nuw i64 %i.br, %.sroa.02.0.i
  %i.bt = add nuw i64 %i.bs, %.sroa.03.0.i
  %i.bu = add i64 %i.bt, %.sroa.02.0.i.i
  %i.bv = add i64 %i.bu, %i.bi
  %i.bw = add i64 %i.bv, %i.bk
  %i.bx = add i64 %i.bw, %i.bo
  %i.by = add i64 %i.bx, %i.bq                    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.bz, align 8, !noundef !12 ; 2 uses
  %i.ca = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = xor i64 %.val, 9223372036854775807      ; 2 uses
  %i.cc = icmp ugt i64 %i.by, %i.cb
  br i1 %i.cc, label %bb.v, label %bb.k

bb.k:                                             ; preds = %"_ZN75_$LT$anki_proto..notetypes..Notetype$u20$as$u20$prost..message..Message$GT$11encoded_len17h821d16c127802b11E.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15610)
  br i1 %i.g, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15611
  store i8 8, ptr %i.d, align 1, !noalias !15611
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.d, i64 noundef 1), !noalias !15612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15611
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !15612
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  br i1 %.not.i.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !15613)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15614
  store i8 18, ptr %i.c, align 1, !noalias !15614
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.c, i64 noundef 1), !noalias !15615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15614
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %.val.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !15615
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ce = load ptr, ptr %i.cd, align 8, !alias.scope !15615, !nonnull !12, !noundef !12
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ce, i64 noundef %.val.i), !noalias !15615
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %i.aa, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15616
  store i8 24, ptr %i.b, align 1, !noalias !15616
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef 1), !noalias !15617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15616
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %i.z, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !15617
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %i.ak, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15618
  store i8 32, ptr %i.a, align 1, !noalias !15618
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !15619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15618
  %i.cf = shl i32 %i.aj, 1
  %i.cg = ashr i32 %i.aj, 31
  %i.ch = xor i32 %i.cf, %i.cg
  %i.ci = zext i32 %i.ch to i64
  call fastcc void @_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E(i64 noundef %i.ci, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !15619
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZN5prost8encoding7message6encode17h5a81f32d139bdfa7E(i32 noundef 7, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.idx.i = mul nuw nsw i64 %i.bi, 144
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx.i
  %i.ck = icmp eq i64 %i.bi, 0
  br i1 %i.ck, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u, %.lr.ph.i
end_hunk_5
