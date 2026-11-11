Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19602
inline.NumDeleted: 9840
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_RINvXNtCsloFShupyl5J_6comemo5inputRSNtNtNtCsdxZxvljAjKP_9rustybuzz2hb6common7FeatureNtB3_5Input3keyNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs7tN9tvpkfrg_12typst_layout:bb.a
  %i.ds = shl i64 %i.do, %i.dr
  %i.dt = or i64 %i.ds, %i.dl                     ; 3 uses
  %i.du = icmp ugt i64 %i.dp, 4
  br i1 %i.du, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32.exit2.i.i.i.i
  %i.dv = xor i64 %i.dt, %i.dj                    ; 3 uses
  %i.dw = add i64 %i.dk, %i.di                    ; 3 uses
  %i.dx = tail call noundef i64 @llvm.fshl.i64(i64 %i.di, i64 %i.di, i64 13)
  %i.dy = xor i64 %i.dw, %i.dx                    ; 3 uses
  %i.dz = tail call noundef i64 @llvm.fshl.i64(i64 %i.dw, i64 %i.dw, i64 32)
  %i.ea = add i64 %i.dv, %i.dh                    ; 2 uses
  %i.eb = tail call noundef i64 @llvm.fshl.i64(i64 %i.dv, i64 %i.dv, i64 16)
  %i.ec = xor i64 %i.ea, %i.eb                    ; 3 uses
  %i.ed = add i64 %i.ec, %i.dz                    ; 2 uses
  %i.ee = tail call noundef i64 @llvm.fshl.i64(i64 %i.ec, i64 %i.ec, i64 21)
  %i.ef = xor i64 %i.ee, %i.ed                    ; 2 uses
  store i64 %i.ef, ptr %i.ao, align 8, !alias.scope !13087
  %i.eg = add i64 %i.ea, %i.dy                    ; 3 uses
  %i.eh = tail call noundef i64 @llvm.fshl.i64(i64 %i.dy, i64 %i.dy, i64 17)
  %i.ei = xor i64 %i.eg, %i.eh                    ; 2 uses
  store i64 %i.ei, ptr %i.ap, align 8, !alias.scope !13087
  %i.ej = tail call noundef i64 @llvm.fshl.i64(i64 %i.eg, i64 %i.eg, i64 32) ; 2 uses
  store i64 %i.ej, ptr %i.aq, align 8, !alias.scope !13087
  %i.ek = xor i64 %i.ed, %i.dt                    ; 2 uses
  store i64 %i.ek, ptr %0, align 8, !alias.scope !13088
  %i.el = add i64 %.sink.i.i1.i.i.i.i, -4
  %i.em = shl nuw nsw i64 %i.dp, 3
  %i.en = lshr i64 %i.do, %i.em
  br label %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32.exit4.i.i.i.i

bb.j:                                             ; preds = %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32.exit2.i.i.i.i
  %i.eo = add i64 %.sink.i.i1.i.i.i.i, 4
  br label %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32.exit4.i.i.i.i

_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32.exit4.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.ep = phi i64 [ %i.dh, %bb.j ], [ %i.ej, %bb.i ] ; 2 uses
  %i.eq = phi i64 [ %i.di, %bb.j ], [ %i.ei, %bb.i ] ; 4 uses
  %i.er = phi i64 [ %i.dj, %bb.j ], [ %i.ef, %bb.i ] ; 2 uses
  %i.es = phi i64 [ %i.dk, %bb.j ], [ %i.ek, %bb.i ] ; 2 uses
  %i.et = phi i64 [ %i.dt, %bb.j ], [ %i.en, %bb.i ]
  %.sink.i.i3.i.i.i.i = phi i64 [ %i.eo, %bb.j ], [ %i.el, %bb.i ] ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i, i64 12
  %i.ev = load i32, ptr %i.eu, align 4, !alias.scope !13082, !noalias !13072, !noundef !41
  %i.ew = zext i32 %i.ev to i64                   ; 2 uses
  %i.ex = sub i64 8, %.sink.i.i3.i.i.i.i          ; 2 uses
  %i.ey = shl i64 %.sink.i.i3.i.i.i.i, 3
  %i.ez = and i64 %i.ey, 56
  %i.fa = shl i64 %i.ew, %i.ez
  %i.fb = or i64 %i.fa, %i.et                     ; 3 uses
  %i.fc = icmp ugt i64 %i.ex, 4
  br i1 %i.fc, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32.exit4.i.i.i.i
  %i.fd = xor i64 %i.fb, %i.er                    ; 3 uses
  %i.fe = add i64 %i.es, %i.eq                    ; 3 uses
  %i.ff = tail call noundef i64 @llvm.fshl.i64(i64 %i.eq, i64 %i.eq, i64 13)
  %i.fg = xor i64 %i.fe, %i.ff                    ; 3 uses
  %i.fh = tail call noundef i64 @llvm.fshl.i64(i64 %i.fe, i64 %i.fe, i64 32)
  %i.fi = add i64 %i.fd, %i.ep                    ; 2 uses
  %i.fj = tail call noundef i64 @llvm.fshl.i64(i64 %i.fd, i64 %i.fd, i64 16)
  %i.fk = xor i64 %i.fi, %i.fj                    ; 3 uses
  %i.fl = add i64 %i.fk, %i.fh                    ; 2 uses
  %i.fm = tail call noundef i64 @llvm.fshl.i64(i64 %i.fk, i64 %i.fk, i64 21)
  %i.fn = xor i64 %i.fm, %i.fl                    ; 2 uses
  store i64 %i.fn, ptr %i.ao, align 8, !alias.scope !13089
  %i.fo = add i64 %i.fi, %i.fg                    ; 3 uses
  %i.fp = tail call noundef i64 @llvm.fshl.i64(i64 %i.fg, i64 %i.fg, i64 17)
  %i.fq = xor i64 %i.fo, %i.fp                    ; 2 uses
  store i64 %i.fq, ptr %i.ap, align 8, !alias.scope !13089
  %i.fr = tail call noundef i64 @llvm.fshl.i64(i64 %i.fo, i64 %i.fo, i64 32) ; 2 uses
  store i64 %i.fr, ptr %i.aq, align 8, !alias.scope !13089
  %i.fs = xor i64 %i.fl, %i.fb                    ; 2 uses
  store i64 %i.fs, ptr %0, align 8, !alias.scope !13090
  %i.ft = add i64 %.sink.i.i3.i.i.i.i, -4
  %i.fu = shl nuw nsw i64 %i.ex, 3
  %i.fv = lshr i64 %i.ew, %i.fu
  br label %_RINvXsC_NtNtCsdxZxvljAjKP_9rustybuzz2hb6commonNtB6_7FeatureNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i

bb.l:                                             ; preds = %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32.exit4.i.i.i.i
  %i.fw = add i64 %.sink.i.i3.i.i.i.i, 4
  br label %_RINvXsC_NtNtCsdxZxvljAjKP_9rustybuzz2hb6commonNtB6_7FeatureNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i

_RINvXsC_NtNtCsdxZxvljAjKP_9rustybuzz2hb6commonNtB6_7FeatureNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %bb.l, %bb.k
  %i.fx = phi i64 [ %i.ep, %bb.l ], [ %i.fr, %bb.k ]
  %i.fy = phi i64 [ %i.eq, %bb.l ], [ %i.fq, %bb.k ]
  %i.fz = phi i64 [ %i.er, %bb.l ], [ %i.fn, %bb.k ]
  %i.ga = phi i64 [ %i.fb, %bb.l ], [ %i.fv, %bb.k ] ; 2 uses
  %i.gb = phi i64 [ %i.es, %bb.l ], [ %i.fs, %bb.k ]
  %.sink.i.i5.i.i.i.i = phi i64 [ %i.fw, %bb.l ], [ %i.ft, %bb.k ] ; 2 uses
  %i.gc = icmp eq ptr %i.aw, %i.am
  br i1 %i.gc, label %._crit_edge.i.i.i, label %bb.d

._crit_edge.i.i.i:                                ; preds = %_RINvXsC_NtNtCsdxZxvljAjKP_9rustybuzz2hb6commonNtB6_7FeatureNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %i.gd = add i64 %i.c, %.idx.i.i.i
  store i64 %i.gd, ptr %i.a, align 8, !alias.scope !13091
  store i64 %.sink.i.i5.i.i.i.i, ptr %i.d, align 8, !alias.scope !13091
  store i64 %i.ga, ptr %i.i, align 8, !alias.scope !13091
  br label %_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRSNtNtNtCsdxZxvljAjKP_9rustybuzz2hb6common7FeatureNtB8_4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs7tN9tvpkfrg_12typst_layout.exit

_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRSNtNtNtCsdxZxvljAjKP_9rustybuzz2hb6common7FeatureNtB8_4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs7tN9tvpkfrg_12typst_layout.exit.i.i, %._crit_edge.i.i.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_RINvXNvNtCselBS6QMlFOX_13icu_segmenter8providers_1__NtB5_13RuleBreakDataNtNtCs7PiwjADO7TO_10serde_core2de11Deserialize11deserializeQINtNtNtCsjfJpIPnyD7D_8postcard2de12deserializer12DeserializerNtNtB2b_7flavors5SliceEECs7tN9tvpkfrg_12typst_layout(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13425)
  %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !13426, !noalias !13427 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !13426, !noalias !13427 ; 26 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13428)
  %i.g = icmp eq ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.f
  br i1 %i.g, label %bb.bg, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !13429, !noundef !41 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1 ; 4 uses
  store ptr %i.i, ptr %1, align 8, !alias.scope !13430, !noalias !13427
  %i.j = and i8 %i.h, 127
  %i.k = zext nneg i8 %i.j to i32                 ; 2 uses
  %i.l = icmp sgt i8 %i.h, -1
  br i1 %i.l, label %_RINvYINtNtNtCsjfJpIPnyD7D_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCs7PiwjADO7TO_10serde_core2de9SeqAccess12next_elementmECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13431)
  %i.m = icmp eq ptr %i.i, %i.f
  br i1 %i.m, label %bb.bg, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i8, ptr %i.i, align 1, !noalias !13432, !noundef !41 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 2 ; 4 uses
  store ptr %i.o, ptr %1, align 8, !alias.scope !13433, !noalias !13427
  %i.p = and i8 %i.n, 127
  %i.q = zext nneg i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 7
  %i.s = or disjoint i32 %i.r, %i.k               ; 2 uses
  %i.t = icmp sgt i8 %i.n, -1
  br i1 %i.t, label %_RINvYINtNtNtCsjfJpIPnyD7D_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCs7PiwjADO7TO_10serde_core2de9SeqAccess12next_elementmECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13434)
  %i.u = icmp eq ptr %i.o, %i.f
  br i1 %i.u, label %bb.bg, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.o, align 1, !noalias !13435, !noundef !41 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 3 ; 4 uses
  store ptr %i.w, ptr %1, align 8, !alias.scope !13436, !noalias !13427
  %i.x = and i8 %i.v, 127
  %i.y = zext nneg i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 14
  %i.aa = or disjoint i32 %i.z, %i.s              ; 2 uses
  %i.ab = icmp sgt i8 %i.v, -1
  br i1 %i.ab, label %_RINvYINtNtNtCsjfJpIPnyD7D_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCs7PiwjADO7TO_10serde_core2de9SeqAccess12next_elementmECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13437)
  %i.ac = icmp eq ptr %i.w, %i.f
  br i1 %i.ac, label %bb.bg, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load i8, ptr %i.w, align 1, !noalias !13438, !noundef !41 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 4 uses
  store ptr %i.ae, ptr %1, align 8, !alias.scope !13439, !noalias !13427
  %i.af = and i8 %i.ad, 127
  %i.ag = zext nneg i8 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 21
  %i.ai = or disjoint i32 %i.ah, %i.aa            ; 2 uses
  %i.aj = icmp sgt i8 %i.ad, -1
  br i1 %i.aj, label %_RINvYINtNtNtCsjfJpIPnyD7D_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCs7PiwjADO7TO_10serde_core2de9SeqAccess12next_elementmECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13440)
  %i.ak = icmp eq ptr %i.ae, %i.f
  br i1 %i.ak, label %bb.bg, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = load i8, ptr %i.ae, align 1, !noalias !13441, !noundef !41 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 5 ; 2 uses
  store ptr %i.am, ptr %1, align 8, !alias.scope !13442, !noalias !13427
  %i.an = zext i8 %i.al to i32
  %i.ao = shl nuw i32 %i.an, 28
  %i.ap = or disjoint i32 %i.ao, %i.ai
  %or.cond35.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.al, 16
  br i1 %or.cond35.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCsjfJpIPnyD7D_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCs7PiwjADO7TO_10serde_core2de9SeqAccess12next_elementmECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bg

_RINvYINtNtNtCsjfJpIPnyD7D_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCs7PiwjADO7TO_10serde_core2de9SeqAccess12next_elementmECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.promoted.i.i.i.i.i.i70.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.am, %bb.j ], [ %i.ae, %bb.h ], [ %i.w, %bb.f ], [ %i.o, %bb.d ], [ %i.i, %bb.b ] ; 5 uses
  %.lcssa34.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ap, %bb.j ], [ %i.ai, %bb.h ], [ %i.aa, %bb.f ], [ %i.s, %bb.d ], [ %i.k, %bb.b ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13447)
  %i.aq = icmp eq ptr %.promoted.i.i.i.i.i.i70.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.f
  br i1 %i.aq, label %bb.bg, label %bb.k

bb.k:                                             ; preds = %_RINvYINtNtNtCsjfJpIPnyD7D_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCs7PiwjADO7TO_10serde_core2de9SeqAccess12next_elementmECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ar = load i8, ptr %.promoted.i.i.i.i.i.i70.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !13448, !noundef !41 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i70.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1 ; 4 uses
  store ptr %i.as, ptr %1, align 8, !alias.scope !13449, !noalias !13450
  %i.at = and i8 %i.ar, 127
  %i.au = zext nneg i8 %i.at to i16               ; 2 uses
  %i.av = icmp sgt i8 %i.ar, -1
  br i1 %i.av, label %_RINvYINtNtNtCsjfJpIPnyD7D_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCs7PiwjADO7TO_10serde_core2de9SeqAccess12next_elementtECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13451)
  %i.aw = icmp eq ptr %i.as, %i.f
  br i1 %i.aw, label %bb.bg, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = load i8, ptr %i.as, align 1, !noalias !13452, !noundef !41 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i70.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 2 ; 4 uses
  store ptr %i.ay, ptr %1, align 8, !alias.scope !13453, !noalias !13450
  %i.az = and i8 %i.ax, 127
  %i.ba = zext nneg i8 %i.az to i16
  %i.bb = shl nuw nsw i16 %i.ba, 7
  %i.bc = or disjoint i16 %i.bb, %i.au            ; 2 uses
  %i.bd = icmp sgt i8 %i.ax, -1
  br i1 %i.bd, label %_RINvYINtNtNtCsjfJpIPnyD7D_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCs7PiwjADO7TO_10serde_core2de9SeqAccess12next_elementtECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13454)
  %i.be = icmp eq ptr %i.ay, %i.f
  br i1 %i.be, label %bb.bg, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = load i8, ptr %i.ay, align 1, !noalias !13455, !noundef !41 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i70.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 3 ; 2 uses
  store ptr %i.bg, ptr %1, align 8, !alias.scope !13456, !noalias !13450
  %i.bh = zext i8 %i.bf to i16
  %i.bi = shl nuw i16 %i.bh, 14
  %i.bj = or disjoint i16 %i.bi, %i.bc
  %or.cond30.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.bf, 4
  br i1 %or.cond30.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCsjfJpIPnyD7D_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCs7PiwjADO7TO_10serde_core2de9SeqAccess12next_elementtECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bg

_RINvYINtNtNtCsjfJpIPnyD7D_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCs7PiwjADO7TO_10serde_core2de9SeqAccess12next_elementtECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.m, %bb.k
  %.promoted.i.i.i.i.i.i73.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bg, %bb.o ], [ %i.ay, %bb.m ], [ %i.as, %bb.k ] ; 5 uses
  %.lcssa29.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.bj, %bb.o ], [ %i.bc, %bb.m ], [ %i.au, %bb.k ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13461)
  %i.bk = icmp eq ptr %.promoted.i.i.i.i.i.i73.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.f
  br i1 %i.bk, label %bb.bg, label %bb.p

bb.p:                                             ; preds = %_RINvYINtNtNtCsjfJpIPnyD7D_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCs7PiwjADO7TO_10serde_core2de9SeqAccess12next_elementtECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bl = load i8, ptr %.promoted.i.i.i.i.i.i73.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !13462, !noundef !41 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i73.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1 ; 4 uses
  store ptr %i.bm, ptr %1, align 8, !alias.scope !13463, !noalias !13464
  %i.bn = and i8 %i.bl, 127
  %i.bo = zext nneg i8 %i.bn to i16               ; 2 uses
  %i.bp = icmp sgt i8 %i.bl, -1
  br i1 %i.bp, label %_RINvYINtNtNtCsjfJpIPnyD7D_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCs7PiwjADO7TO_10serde_core2de9SeqAccess12next_elementtECs7tN9tvpkfrg_12typst_layout.exit78.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13465)
  %i.bq = icmp eq ptr %i.bm, %i.f
  br i1 %i.bq, label %bb.bg, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = load i8, ptr %i.bm, align 1, !noalias !13466, !noundef !41 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i73.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 2 ; 4 uses
  store ptr %i.bs, ptr %1, align 8, !alias.scope !13467, !noalias !13464
  %i.bt = and i8 %i.br, 127
  %i.bu = zext nneg i8 %i.bt to i16
  %i.bv = shl nuw nsw i16 %i.bu, 7
  %i.bw = or disjoint i16 %i.bv, %i.bo            ; 2 uses
  %i.bx = icmp sgt i8 %i.br, -1
  br i1 %i.bx, label %_RINvYINtNtNtCsjfJpIPnyD7D_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCs7PiwjADO7TO_10serde_core2de9SeqAccess12next_elementtECs7tN9tvpkfrg_12typst_layout.exit78.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13468)
  %i.by = icmp eq ptr %i.bs, %i.f
  br i1 %i.by, label %bb.bg, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bz = load i8, ptr %i.bs, align 1, !noalias !13469, !noundef !41 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i73.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 3 ; 2 uses
  store ptr %i.ca, ptr %1, align 8, !alias.scope !13470, !noalias !13464
  %i.cb = zext i8 %i.bz to i16
  %i.cc = shl nuw i16 %i.cb, 14
  %i.cd = or disjoint i16 %i.cc, %i.bw
  %or.cond30.not.i.i.i.i.i.i74.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.bz, 4
  br i1 %or.cond30.not.i.i.i.i.i.i74.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCsjfJpIPnyD7D_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCs7PiwjADO7TO_10serde_core2de9SeqAccess12next_elementtECs7tN9tvpkfrg_12typst_layout.exit78.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bg

_RINvYINtNtNtCsjfJpIPnyD7D_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCs7PiwjADO7TO_10serde_core2de9SeqAccess12next_elementtECs7tN9tvpkfrg_12typst_layout.exit78.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.r, %bb.p
  %.promoted.i.i.i.i.i.i80.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ca, %bb.t ], [ %i.bs, %bb.r ], [ %i.bm, %bb.p ] ; 7 uses
  %.lcssa29.i.i.i.i.i.i77.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.cd, %bb.t ], [ %i.bw, %bb.r ], [ %i.bo, %bb.p ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13475)
  %i.ce = icmp eq ptr %.promoted.i.i.i.i.i.i80.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.f
  br i1 %i.ce, label %bb.bg, label %bb.u

bb.u:                                             ; preds = %_RINvYINtNtNtCsjfJpIPnyD7D_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCs7PiwjADO7TO_10serde_core2de9SeqAccess12next_elementtECs7tN9tvpkfrg_12typst_layout.exit78.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cf = load i8, ptr %.promoted.i.i.i.i.i.i80.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !13476, !noundef !41 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i80.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1 ; 4 uses
  store ptr %i.cg, ptr %1, align 8, !alias.scope !13477, !noalias !13478
  %i.ch = and i8 %i.cf, 127
  %i.ci = zext nneg i8 %i.ch to i32               ; 2 uses
  %i.cj = icmp sgt i8 %i.cf, -1
  br i1 %i.cj, label %_RINvYINtNtNtCsjfJpIPnyD7D_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCs7PiwjADO7TO_10serde_core2de9SeqAccess12next_elementmECs7tN9tvpkfrg_12typst_layout.exit85.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13479)
  %i.ck = icmp eq ptr %i.cg, %i.f
  br i1 %i.ck, label %bb.bg, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cl = load i8, ptr %i.cg, align 1, !noalias !13480, !noundef !41 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i80.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 2 ; 4 uses
  store ptr %i.cm, ptr %1, align 8, !alias.scope !13481, !noalias !13478
  %i.cn = and i8 %i.cl, 127
  %i.co = zext nneg i8 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 7
  %i.cq = or disjoint i32 %i.cp, %i.ci            ; 2 uses
  %i.cr = icmp sgt i8 %i.cl, -1
  br i1 %i.cr, label %_RINvYINtNtNtCsjfJpIPnyD7D_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCs7PiwjADO7TO_10serde_core2de9SeqAccess12next_elementmECs7tN9tvpkfrg_12typst_layout.exit85.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13482)
  %i.cs = icmp eq ptr %i.cm, %i.f
  br i1 %i.cs, label %bb.bg, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ct = load i8, ptr %i.cm, align 1, !noalias !13483, !noundef !41 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i80.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 3 ; 4 uses
  store ptr %i.cu, ptr %1, align 8, !alias.scope !13484, !noalias !13478
  %i.cv = and i8 %i.ct, 127
  %i.cw = zext nneg i8 %i.cv to i32
  %i.cx = shl nuw nsw i32 %i.cw, 14
  %i.cy = or disjoint i32 %i.cx, %i.cq            ; 2 uses
  %i.cz = icmp sgt i8 %i.ct, -1
  br i1 %i.cz, label %_RINvYINtNtNtCsjfJpIPnyD7D_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCs7PiwjADO7TO_10serde_core2de9SeqAccess12next_elementmECs7tN9tvpkfrg_12typst_layout.exit85.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13485)
  %i.da = icmp eq ptr %i.cu, %i.f
  br i1 %i.da, label %bb.bg, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.db = load i8, ptr %i.cu, align 1, !noalias !13486, !noundef !41 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i80.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 4 uses
  store ptr %i.dc, ptr %1, align 8, !alias.scope !13487, !noalias !13478
  %i.dd = and i8 %i.db, 127
  %i.de = zext nneg i8 %i.dd to i32
  %i.df = shl nuw nsw i32 %i.de, 21
  %i.dg = or disjoint i32 %i.df, %i.cy            ; 2 uses
  %i.dh = icmp sgt i8 %i.db, -1
  br i1 %i.dh, label %_RINvYINtNtNtCsjfJpIPnyD7D_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCs7PiwjADO7TO_10serde_core2de9SeqAccess12next_elementmECs7tN9tvpkfrg_12typst_layout.exit85.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13488)
  %i.di = icmp eq ptr %i.dc, %i.f
  br i1 %i.di, label %bb.bg, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dj = load i8, ptr %i.dc, align 1, !noalias !13489, !noundef !41 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i80.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 5 ; 2 uses
  store ptr %i.dk, ptr %1, align 8, !alias.scope !13490, !noalias !13478
  %i.dl = zext i8 %i.dj to i32
  %i.dm = shl nuw i32 %i.dl, 28
  %i.dn = or disjoint i32 %i.dm, %i.dg
  %or.cond35.not.i.i.i.i.i.i81.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.dj, 16
  br i1 %or.cond35.not.i.i.i.i.i.i81.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCsjfJpIPnyD7D_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCs7PiwjADO7TO_10serde_core2de9SeqAccess12next_elementmECs7tN9tvpkfrg_12typst_layout.exit85.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bg

_RINvYINtNtNtCsjfJpIPnyD7D_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCs7PiwjADO7TO_10serde_core2de9SeqAccess12next_elementmECs7tN9tvpkfrg_12typst_layout.exit85.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u
  %.promoted.i.i.i.i.i.i87.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dk, %bb.ac ], [ %i.dc, %bb.aa ], [ %i.cu, %bb.y ], [ %i.cm, %bb.w ], [ %i.cg, %bb.u ] ; 7 uses
  %.lcssa34.i.i.i.i.i.i84.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.dn, %bb.ac ], [ %i.dg, %bb.aa ], [ %i.cy, %bb.y ], [ %i.cq, %bb.w ], [ %i.ci, %bb.u ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13493)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13495)
  %i.do = icmp eq ptr %.promoted.i.i.i.i.i.i87.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.f
  br i1 %i.do, label %bb.bg, label %bb.ad

bb.ad:                                            ; preds = %_RINvYINtNtNtCsjfJpIPnyD7D_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCs7PiwjADO7TO_10serde_core2de9SeqAccess12next_elementmECs7tN9tvpkfrg_12typst_layout.exit85.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dp = load i8, ptr %.promoted.i.i.i.i.i.i87.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !13496, !noundef !41 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i87.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1 ; 4 uses
  store ptr %i.dq, ptr %1, align 8, !alias.scope !13497, !noalias !13498
  %i.dr = and i8 %i.dp, 127
  %i.ds = zext nneg i8 %i.dr to i32               ; 2 uses
  %i.dt = icmp sgt i8 %i.dp, -1
  br i1 %i.dt, label %_RINvYINtNtNtCsjfJpIPnyD7D_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCs7PiwjADO7TO_10serde_core2de9SeqAccess12next_elementmECs7tN9tvpkfrg_12typst_layout.exit92.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13499)
  %i.du = icmp eq ptr %i.dq, %i.f
  br i1 %i.du, label %bb.bg, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dv = load i8, ptr %i.dq, align 1, !noalias !13500, !noundef !41 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i87.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 2 ; 4 uses
  store ptr %i.dw, ptr %1, align 8, !alias.scope !13501, !noalias !13498
  %i.dx = and i8 %i.dv, 127
  %i.dy = zext nneg i8 %i.dx to i32
  %i.dz = shl nuw nsw i32 %i.dy, 7
  %i.ea = or disjoint i32 %i.dz, %i.ds            ; 2 uses
  %i.eb = icmp sgt i8 %i.dv, -1
  br i1 %i.eb, label %_RINvYINtNtNtCsjfJpIPnyD7D_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCs7PiwjADO7TO_10serde_core2de9SeqAccess12next_elementmECs7tN9tvpkfrg_12typst_layout.exit92.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13502)
  %i.ec = icmp eq ptr %i.dw, %i.f
  br i1 %i.ec, label %bb.bg, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ed = load i8, ptr %i.dw, align 1, !noalias !13503, !noundef !41 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i87.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 3 ; 4 uses
  store ptr %i.ee, ptr %1, align 8, !alias.scope !13504, !noalias !13498
  %i.ef = and i8 %i.ed, 127
  %i.eg = zext nneg i8 %i.ef to i32
  %i.eh = shl nuw nsw i32 %i.eg, 14
  %i.ei = or disjoint i32 %i.eh, %i.ea            ; 2 uses
  %i.ej = icmp sgt i8 %i.ed, -1
  br i1 %i.ej, label %_RINvYINtNtNtCsjfJpIPnyD7D_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCs7PiwjADO7TO_10serde_core2de9SeqAccess12next_elementmECs7tN9tvpkfrg_12typst_layout.exit92.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13505)
  %i.ek = icmp eq ptr %i.ee, %i.f
  br i1 %i.ek, label %bb.bg, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.el = load i8, ptr %i.ee, align 1, !noalias !13506, !noundef !41 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i87.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 4 uses
  store ptr %i.em, ptr %1, align 8, !alias.scope !13507, !noalias !13498
  %i.en = and i8 %i.el, 127
  %i.eo = zext nneg i8 %i.en to i32
  %i.ep = shl nuw nsw i32 %i.eo, 21
  %i.eq = or disjoint i32 %i.ep, %i.ei            ; 2 uses
  %i.er = icmp sgt i8 %i.el, -1
  br i1 %i.er, label %_RINvYINtNtNtCsjfJpIPnyD7D_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCs7PiwjADO7TO_10serde_core2de9SeqAccess12next_elementmECs7tN9tvpkfrg_12typst_layout.exit92.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13508)
  %i.es = icmp eq ptr %i.em, %i.f
  br i1 %i.es, label %bb.bg, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.et = load i8, ptr %i.em, align 1, !noalias !13509, !noundef !41 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i87.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 5 ; 2 uses
  store ptr %i.eu, ptr %1, align 8, !alias.scope !13510, !noalias !13498
  %i.ev = zext i8 %i.et to i32
  %i.ew = shl nuw i32 %i.ev, 28
  %i.ex = or disjoint i32 %i.ew, %i.eq
  %or.cond35.not.i.i.i.i.i.i88.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.et, 16
  br i1 %or.cond35.not.i.i.i.i.i.i88.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCsjfJpIPnyD7D_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCs7PiwjADO7TO_10serde_core2de9SeqAccess12next_elementmECs7tN9tvpkfrg_12typst_layout.exit92.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bg

_RINvYINtNtNtCsjfJpIPnyD7D_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCs7PiwjADO7TO_10serde_core2de9SeqAccess12next_elementmECs7tN9tvpkfrg_12typst_layout.exit92.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.al, %bb.aj, %bb.ah, %bb.af, %bb.ad
  %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.eu, %bb.al ], [ %i.em, %bb.aj ], [ %i.ee, %bb.ah ], [ %i.dw, %bb.af ], [ %i.dq, %bb.ad ] ; 7 uses
  %.lcssa34.i.i.i.i.i.i91.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ex, %bb.al ], [ %i.eq, %bb.aj ], [ %i.ei, %bb.ah ], [ %i.ea, %bb.af ], [ %i.ds, %bb.ad ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13514)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13515)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13518)
  %i.ey = icmp eq ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.f
  br i1 %i.ey, label %bb.bg, label %bb.am

bb.am:                                            ; preds = %_RINvYINtNtNtCsjfJpIPnyD7D_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCs7PiwjADO7TO_10serde_core2de9SeqAccess12next_elementmECs7tN9tvpkfrg_12typst_layout.exit92.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ez = load i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !13519, !noundef !41 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1 ; 3 uses
  store ptr %i.fa, ptr %1, align 8, !alias.scope !13520, !noalias !13521
  %i.fb = and i8 %i.ez, 127
  %i.fc = zext nneg i8 %i.fb to i32               ; 2 uses
  %i.fd = icmp sgt i8 %i.ez, -1
  br i1 %i.fd, label %_RNvMs0_NtNtCsjfJpIPnyD7D_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13522)
  %i.fe = icmp eq ptr %i.fa, %i.f
  br i1 %i.fe, label %bb.bg, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ff = load i8, ptr %i.fa, align 1, !noalias !13523, !noundef !41 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 2 ; 3 uses
  store ptr %i.fg, ptr %1, align 8, !alias.scope !13524, !noalias !13521
  %i.fh = and i8 %i.ff, 127
  %i.fi = zext nneg i8 %i.fh to i32
  %i.fj = shl nuw nsw i32 %i.fi, 7
  %i.fk = or disjoint i32 %i.fj, %i.fc            ; 2 uses
  %i.fl = icmp sgt i8 %i.ff, -1
  br i1 %i.fl, label %_RNvMs0_NtNtCsjfJpIPnyD7D_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13525)
  %i.fm = icmp eq ptr %i.fg, %i.f
  br i1 %i.fm, label %bb.bg, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fn = load i8, ptr %i.fg, align 1, !noalias !13526, !noundef !41 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 3 ; 3 uses
  store ptr %i.fo, ptr %1, align 8, !alias.scope !13527, !noalias !13521
  %i.fp = and i8 %i.fn, 127
  %i.fq = zext nneg i8 %i.fp to i32
  %i.fr = shl nuw nsw i32 %i.fq, 14
  %i.fs = or disjoint i32 %i.fr, %i.fk            ; 2 uses
  %i.ft = icmp sgt i8 %i.fn, -1
  br i1 %i.ft, label %_RNvMs0_NtNtCsjfJpIPnyD7D_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13528)
  %i.fu = icmp eq ptr %i.fo, %i.f
  br i1 %i.fu, label %bb.bg, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fv = load i8, ptr %i.fo, align 1, !noalias !13529, !noundef !41 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 3 uses
  store ptr %i.fw, ptr %1, align 8, !alias.scope !13530, !noalias !13521
  %i.fx = and i8 %i.fv, 127
  %i.fy = zext nneg i8 %i.fx to i32
  %i.fz = shl nuw nsw i32 %i.fy, 21
  %i.ga = or disjoint i32 %i.fz, %i.fs            ; 2 uses
  %i.gb = icmp sgt i8 %i.fv, -1
  br i1 %i.gb, label %_RNvMs0_NtNtCsjfJpIPnyD7D_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13531)
  %i.gc = icmp eq ptr %i.fw, %i.f
  br i1 %i.gc, label %bb.bg, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gd = load i8, ptr %i.fw, align 1, !noalias !13532, !noundef !41 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 5
  store ptr %i.ge, ptr %1, align 8, !alias.scope !13533, !noalias !13521
  %i.gf = zext i8 %i.gd to i32
  %i.gg = shl nuw i32 %i.gf, 28
  %i.gh = or disjoint i32 %i.gg, %i.ga
  %or.cond35.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.gd, 16
  br i1 %or.cond35.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs0_NtNtCsjfJpIPnyD7D_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bg

_RNvMs0_NtNtCsjfJpIPnyD7D_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.au, %bb.as, %bb.aq, %bb.ao, %bb.am
  %.lcssa34.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.gh, %bb.au ], [ %i.ga, %bb.as ], [ %i.fs, %bb.aq ], [ %i.fk, %bb.ao ], [ %i.fc, %bb.am ]
  switch i32 %.lcssa34.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bg [
    i32 0, label %bb.av
    i32 1, label %_RINvYQINtNtNtCsjfJpIPnyD7D_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCs7PiwjADO7TO_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs9v5mpa3E6Mm_15icu_collections13codepointtrie6cptrie1__NtB2n_8TrieTypeNtB1r_11Deserialize11deserialize7___FieldECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  ], !prof !119

_RINvYQINtNtNtCsjfJpIPnyD7D_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCs7PiwjADO7TO_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs9v5mpa3E6Mm_15icu_collections13codepointtrie6cptrie1__NtB2n_8TrieTypeNtB1r_11Deserialize11deserialize7___FieldECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs0_NtNtCsjfJpIPnyD7D_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %bb.av

bb.av:                                            ; preds = %_RINvYQINtNtNtCsjfJpIPnyD7D_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCs7PiwjADO7TO_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs9v5mpa3E6Mm_15icu_collections13codepointtrie6cptrie1__NtB2n_8TrieTypeNtB1r_11Deserialize11deserialize7___FieldECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs0_NtNtCsjfJpIPnyD7D_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ 1, %_RINvYQINtNtNtCsjfJpIPnyD7D_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCs7PiwjADO7TO_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs9v5mpa3E6Mm_15icu_collections13codepointtrie6cptrie1__NtB2n_8TrieTypeNtB1r_11Deserialize11deserialize7___FieldECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RNvMs0_NtNtCsjfJpIPnyD7D_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13536)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13537
  call fastcc void @_RNvMs0_NtNtCsjfJpIPnyD7D_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u64Cs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1) #58, !noalias !13538
  %i.gi = load i8, ptr %i.d, align 8, !range !54, !noalias !13537, !noundef !41
  %i.gj = trunc nuw i8 %i.gi to i1
  br i1 %i.gj, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.gk = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.gl = load i8, ptr %i.gk, align 1, !range !13539, !noalias !13537, !noundef !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13537
  br label %bb.bg

bb.ax:                                            ; preds = %bb.av
  %i.gm = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.gn = load i64, ptr %i.gm, align 8, !noalias !13537, !noundef !41 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13537
  %i.go = load ptr, ptr %i.e, align 8, !alias.scope !13540, !noalias !13541, !noundef !41
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = load ptr, ptr %1, align 8, !alias.scope !13540, !noalias !13541, !noundef !41 ; 5 uses
  %i.gr = ptrtoint ptr %i.gq to i64               ; 2 uses
  %i.gs = sub i64 %i.gp, %i.gr
  %i.gt = icmp ult i64 %i.gs, %i.gn
  br i1 %i.gt, label %_RNvXs_NtNtCsjfJpIPnyD7D_8postcard2de7flavorsNtB4_5SliceNtB4_6Flavor10try_take_n.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs_NtNtCsjfJpIPnyD7D_8postcard2de7flavorsNtB4_5SliceNtB4_6Flavor10try_take_n.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs_NtNtCsjfJpIPnyD7D_8postcard2de7flavorsNtB4_5SliceNtB4_6Flavor10try_take_n.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ax
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gn
  store ptr %i.gu, ptr %1, align 8, !alias.scope !13540, !noalias !13541
  %i.gv = icmp eq ptr %i.gq, null
  br i1 %i.gv, label %_RNvXs_NtNtCsjfJpIPnyD7D_8postcard2de7flavorsNtB4_5SliceNtB4_6Flavor10try_take_n.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ay

_RNvXs_NtNtCsjfJpIPnyD7D_8postcard2de7flavorsNtB4_5SliceNtB4_6Flavor10try_take_n.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs_NtNtCsjfJpIPnyD7D_8postcard2de7flavorsNtB4_5SliceNtB4_6Flavor10try_take_n.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ax
  %.sroa.5.013.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gn, %_RNvXs_NtNtCsjfJpIPnyD7D_8postcard2de7flavorsNtB4_5SliceNtB4_6Flavor10try_take_n.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 4, %bb.ax ]
  %.sroa.5.8.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc i64 %.sroa.5.013.i.i.i.i.i.i.i.i.i.i.i.i.i to i8
  br label %bb.bg

bb.ay:                                            ; preds = %_RNvXs_NtNtCsjfJpIPnyD7D_8postcard2de7flavorsNtB4_5SliceNtB4_6Flavor10try_take_n.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gw = and i64 %i.gn, 1
  %i.gx = icmp eq i64 %i.gw, 0
  br i1 %i.gx, label %bb.az, label %bb.bg

bb.az:                                            ; preds = %bb.ay
  %i.gy = lshr exact i64 %i.gn, 1                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13544)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13545
  call fastcc void @_RNvMs0_NtNtCsjfJpIPnyD7D_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u64Cs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1) #58, !noalias !13546
  %i.gz = load i8, ptr %i.c, align 8, !range !54, !noalias !13545, !noundef !41
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.hb = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.hc = load i8, ptr %i.hb, align 1, !range !13539, !noalias !13545, !noundef !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13545
  br label %bb.bg

bb.bb:                                            ; preds = %bb.az
  %i.hd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.he = load i64, ptr %i.hd, align 8, !noalias !13545, !noundef !41 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13545
  %i.hf = load ptr, ptr %i.e, align 8, !alias.scope !13547, !noalias !13548, !noundef !41
  %i.hg = ptrtoint ptr %i.hf to i64
  %i.hh = load ptr, ptr %1, align 8, !alias.scope !13547, !noalias !13548, !noundef !41 ; 4 uses
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = sub i64 %i.hg, %i.hi
  %i.hk = icmp ult i64 %i.hj, %i.he
  br i1 %i.hk, label %_RNvXs_NtNtCsjfJpIPnyD7D_8postcard2de7flavorsNtB4_5SliceNtB4_6Flavor10try_take_n.exit.thread.i.i.i.i.i56.i.i.i.i.i.i.i.i, label %_RNvXs_NtNtCsjfJpIPnyD7D_8postcard2de7flavorsNtB4_5SliceNtB4_6Flavor10try_take_n.exit.i.i.i.i.i52.i.i.i.i.i.i.i.i

_RNvXs_NtNtCsjfJpIPnyD7D_8postcard2de7flavorsNtB4_5SliceNtB4_6Flavor10try_take_n.exit.i.i.i.i.i52.i.i.i.i.i.i.i.i: ; preds = %bb.bb
  %i.hl = getelementptr i8, ptr %i.hh, i64 %i.he  ; 2 uses
  store ptr %i.hl, ptr %1, align 8, !alias.scope !13547, !noalias !13548
  %i.hm = icmp eq ptr %i.hh, null
  br i1 %i.hm, label %_RNvXs_NtNtCsjfJpIPnyD7D_8postcard2de7flavorsNtB4_5SliceNtB4_6Flavor10try_take_n.exit.thread.i.i.i.i.i56.i.i.i.i.i.i.i.i, label %_RINvXs3_NtNtCsjfJpIPnyD7D_8postcard2de12deserializerQINtB6_12DeserializerNtNtB8_7flavors5SliceENtNtCs7PiwjADO7TO_10serde_core2de12Deserializer18deserialize_structINtNvXNvNtNtCs9v5mpa3E6Mm_15icu_collections13codepointtrie5serdes_1__INtB2I_18CodePointTrieSerdepENtB1x_11Deserialize11deserialize9___VisitorhEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i

_RNvXs_NtNtCsjfJpIPnyD7D_8postcard2de7flavorsNtB4_5SliceNtB4_6Flavor10try_take_n.exit.thread.i.i.i.i.i56.i.i.i.i.i.i.i.i: ; preds = %_RNvXs_NtNtCsjfJpIPnyD7D_8postcard2de7flavorsNtB4_5SliceNtB4_6Flavor10try_take_n.exit.i.i.i.i.i52.i.i.i.i.i.i.i.i, %bb.bb
  %.sroa.5.012.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.he, %_RNvXs_NtNtCsjfJpIPnyD7D_8postcard2de7flavorsNtB4_5SliceNtB4_6Flavor10try_take_n.exit.i.i.i.i.i52.i.i.i.i.i.i.i.i ], [ 4, %bb.bb ]
  %.sroa.5.8.extract.trunc.i.i.i.i.i57.i.i.i.i.i.i.i.i = trunc i64 %.sroa.5.012.i.i.i.i.i.i.i.i.i.i.i.i.i to i8
  br label %bb.bg

_RINvXs3_NtNtCsjfJpIPnyD7D_8postcard2de12deserializerQINtB6_12DeserializerNtNtB8_7flavors5SliceENtNtCs7PiwjADO7TO_10serde_core2de12Deserializer18deserialize_structINtNvXNvNtNtCs9v5mpa3E6Mm_15icu_collections13codepointtrie5serdes_1__INtB2I_18CodePointTrieSerdepENtB1x_11Deserialize11deserialize9___VisitorhEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i: ; preds = %_RNvXs_NtNtCsjfJpIPnyD7D_8postcard2de7flavorsNtB4_5SliceNtB4_6Flavor10try_take_n.exit.i.i.i.i.i52.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13550)
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.he, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bg, label %bb.bc

bb.bc:                                            ; preds = %_RINvXs3_NtNtCsjfJpIPnyD7D_8postcard2de12deserializerQINtB6_12DeserializerNtNtB8_7flavors5SliceENtNtCs7PiwjADO7TO_10serde_core2de12Deserializer18deserialize_structINtNvXNvNtNtCs9v5mpa3E6Mm_15icu_collections13codepointtrie5serdes_1__INtB2I_18CodePointTrieSerdepENtB1x_11Deserialize11deserialize9___VisitorhEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i
  %i.hn = getelementptr i8, ptr %i.hl, i64 -1
  %i.ho = load i8, ptr %i.hn, align 1, !alias.scope !13550, !noalias !13551, !noundef !41
  %i.hp = trunc nuw i8 %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i1
  %..i.i.i.i.i.i.i = select i1 %i.hp, i64 64, i64 1024 ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %..i.i.i.i.i.i.i, %i.gy
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bg, label %iter.check

iter.check:                                       ; preds = %bb.bc
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gq, i64 2 ; 5 uses
  %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i = load i16, ptr %i.gq, align 1, !alias.scope !13549, !noalias !13552
  %i.hr = add nuw i64 %..i.i.i.i.i.i.i, 9223372036854775806 ; 2 uses
  %i.hs = and i64 %i.hr, 9223372036854775806
  %n.vec = add nsw i64 %i.hs, -14                 ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %iter.check, %vector.body
  %index = phi i64 [ 0, %iter.check ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %broadcast.splat, %iter.check ], [ %i.hv, %vector.body ]
  %vec.phi38 = phi <8 x i16> [ %broadcast.splat, %iter.check ], [ %i.hw, %vector.body ]
  %i.ht = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.hq, i64 %i.ht ; 2 uses
  %i.hu = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 1, !alias.scope !13549, !noalias !13553
  %wide.load39 = load <8 x i16>, ptr %i.hu, align 1, !alias.scope !13549, !noalias !13553
  %i.hv = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load, <8 x i16> %vec.phi) ; 2 uses
  %i.hw = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load39, <8 x i16> %vec.phi38) ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.hx = icmp eq i64 %index.next, %n.vec
  br i1 %i.hx, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !13307

vec.epilog.iter.check:                            ; preds = %vector.body
  %n.vec40 = shl i64 %i.hr, 1
  %i.hy = getelementptr i8, ptr %i.hq, i64 %n.vec40 ; 3 uses
  %i.hz = getelementptr i8, ptr %i.hy, i64 -4
  %index.next47.1 = shl nuw nsw i64 %..i.i.i.i.i.i.i, 1
  %i.ia = getelementptr i8, ptr %i.hq, i64 %index.next47.1
  %next.gep45.2 = getelementptr i8, ptr %i.ia, i64 -16
  %wide.load46.2 = load <4 x i16>, ptr %next.gep45.2, align 1, !alias.scope !13549, !noalias !13553
  %index.next47 = shl nuw nsw i64 %..i.i.i.i.i.i.i, 1
  %i.ib = getelementptr i8, ptr %i.hq, i64 %index.next47
  %next.gep45.1 = getelementptr i8, ptr %i.ib, i64 -24
  %wide.load46.1 = load <4 x i16>, ptr %next.gep45.1, align 1, !alias.scope !13549, !noalias !13553
  %i.ic = shl nuw i64 %n.vec, 1
  %next.gep45 = getelementptr i8, ptr %i.hq, i64 %i.ic
  %wide.load46 = load <4 x i16>, ptr %next.gep45, align 1, !alias.scope !13549, !noalias !13553
  %rdx.minmax = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.hv, <8 x i16> %i.hw)
  %i.id = tail call i16 @llvm.vector.reduce.umax.v8i16(<8 x i16> %rdx.minmax)
  %broadcast.splatinsert42 = insertelement <4 x i16> poison, i16 %i.id, i64 0
  %broadcast.splat43 = shufflevector <4 x i16> %broadcast.splatinsert42, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.ie = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %wide.load46, <4 x i16> %broadcast.splat43)
  %i.if = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %wide.load46.1, <4 x i16> %i.ie)
  %i.ig = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %wide.load46.2, <4 x i16> %i.if)
  %i.ih = tail call i16 @llvm.vector.reduce.umax.v4i16(<4 x i16> %i.ig)
  %i.ii = getelementptr i8, ptr %i.hy, i64 -2
  %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.hz, align 1, !alias.scope !13549, !noalias !13553
  %..i.i.i.i.i.i.i.i.i.i.i = tail call noundef i16 @llvm.umax.i16(i16 %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i, i16 %i.ih)
  %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i.1 = load i16, ptr %i.ii, align 1, !alias.scope !13549, !noalias !13553
  %..i.i.i.i.i.i.i.i.i.i.i.1 = tail call noundef i16 @llvm.umax.i16(i16 %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i.1, i16 %..i.i.i.i.i.i.i.i.i.i.i)
  %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i.2 = load i16, ptr %i.hy, align 1, !alias.scope !13549, !noalias !13553
  %..i.i.i.i.i.i.i.i.i.i.i.2 = tail call noundef i16 @llvm.umax.i16(i16 %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i.2, i16 %..i.i.i.i.i.i.i.i.i.i.i.1)
  %i.ij = zext i16 %..i.i.i.i.i.i.i.i.i.i.i.2 to i64
  %i.ik = add nuw nsw i64 %i.ij, 63
  %i.il = icmp ult i64 %i.ik, %i.he
  br i1 %i.il, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %vec.epilog.iter.check
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13554)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13555)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13556)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13557
  call fastcc void @_RNvMs0_NtNtCsjfJpIPnyD7D_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u64Cs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1) #58, !noalias !13558
  %i.im = load i8, ptr %i.b, align 8, !range !54, !noalias !13557, !noundef !41
  %i.in = trunc nuw i8 %i.im to i1
  br i1 %i.in, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.io = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ip = load i8, ptr %i.io, align 1, !range !13539, !noalias !13557, !noundef !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13557
  br label %bb.bm

bb.bf:                                            ; preds = %bb.bd
  %i.iq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ir = load i64, ptr %i.iq, align 8, !noalias !13557, !noundef !41 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13557
  %i.is = load ptr, ptr %i.e, align 8, !alias.scope !13559, !noalias !13560, !noundef !41
  %i.it = ptrtoint ptr %i.is to i64
  %i.iu = load ptr, ptr %1, align 8, !alias.scope !13559, !noalias !13560, !noundef !41 ; 4 uses
  %i.iv = ptrtoint ptr %i.iu to i64
  %i.iw = sub i64 %i.it, %i.iv
  %i.ix = icmp ult i64 %i.iw, %i.ir
end_hunk_0
