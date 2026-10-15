Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_row-eb434ee3abd1b8b8.polars_row.38394b63a722f67c-cgu.09?download=true
inline.NumInlined: 311
inline.NumDeleted: 166
begin_hunk_0_@_RINvNtNtCs4PheDXcg4wa_10polars_row8variable4utf810encode_strINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRtINtNtNtB15_5slice4iter4ItertENtNtB1P_8iterator10BitmapIterENCINvNtB6_6encode16encode_cat_arraytE0EEB6_:bb.a

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.11.083, i64 2, !dbg !2816
  br label %bb.g, !dbg !2817

._crit_edge88:                                    ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i, %bb.e, %bb.i, %bb.a
  ret void, !dbg !2818

bb.g:                                             ; preds = %bb.f, %bb.d
  %.sroa.23.4 = phi i64 [ %.sroa.23.078, %bb.f ], [ %.sroa.23.2, %bb.d ], !dbg !2801
  %.sroa.21.3 = phi i64 [ %.sroa.21.079, %bb.f ], [ %.sroa.21.1, %bb.d ], !dbg !2801
  %.sroa.19.3 = phi i64 [ %.sroa.19.080, %bb.f ], [ %.sroa.19.1, %bb.d ], !dbg !2801
  %.sroa.14.4 = phi ptr [ %.sroa.14.082, %bb.f ], [ %.sroa.14.2, %bb.d ], !dbg !2801
  %.sroa.11.2 = phi ptr [ %i.w, %bb.f ], [ %.sroa.11.083, %bb.d ], !dbg !2801
  %.sroa.9.3 = phi ptr [ null, %bb.f ], [ %spec.select, %bb.d ], !dbg !2801
  %.sroa.3.0.i.pn.i.ph.ph.i.i = phi ptr [ %.sroa.11.083, %bb.f ], [ %i.t, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.sroa.0.0.copyload) ]
  %.val.i.i.i = load ptr, ptr %.sroa.3.sroa.0.0.copyload, align 8, !dbg !2819, !noalias !2767, !nonnull !112, !noundef !112
  %.val3.i.i.i = load i16, ptr %.sroa.3.0.i.pn.i.ph.ph.i.i, align 2, !dbg !2819, !alias.scope !2768, !noalias !2769, !noundef !112
  %i.x = zext i16 %.val3.i.i.i to i64, !dbg !2820
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 256, !dbg !2821
  %i.z = tail call noundef i64 @_RNvMs8_NtCsaIrsFcbE0XP_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCs4PheDXcg4wa_10polars_row(i64 noundef %i.x), !dbg !2822, !noalias !2767
  %i.aa = tail call noundef nonnull align 8 ptr @_RNvMs2_NtCsaIrsFcbE0XP_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryTReyEEKj3a_E13get_uncheckedCs4PheDXcg4wa_10polars_row(ptr noundef nonnull align 8 %i.y, i64 noundef %i.z), !dbg !2823, !noalias !2767 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !2824, !noalias !2767, !nonnull !112, !noundef !112 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !2824
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !2824, !noalias !2767, !noundef !112 ; 11 uses
  %i.ae = load i64, ptr %.sroa.018.085, align 8, !dbg !2825, !noundef !112 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae, !dbg !2826 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ad, !dbg !2827
  %i.ah = icmp samesign eq i64 %i.ad, 0, !dbg !2828
  br i1 %i.ah, label %._crit_edge, label %iter.check, !dbg !2829

iter.check:                                       ; preds = %bb.g
  %min.iters.check = icmp ult i64 %i.ad, 4, !dbg !2829
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !2829

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check93 = icmp ult i64 %i.ad, 32, !dbg !2829
  br i1 %min.iters.check93, label %vec.epilog.ph, label %vector.ph, !dbg !2829

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ai = and i64 %i.ad, 28
  %n.vec = and i64 %i.ad, -32                     ; 5 uses
  %i.aj = getelementptr i8, ptr %i.ab, i64 %n.vec
  br label %vector.body, !dbg !2829

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !2830 ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ab, i64 %index ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep, i64 16, !dbg !2831
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !dbg !2831
  %wide.load94 = load <16 x i8>, ptr %i.ak, align 1, !dbg !2831
  %i.al = add <16 x i8> %wide.load, splat (i8 2), !dbg !2832
  %i.am = add <16 x i8> %wide.load94, splat (i8 2), !dbg !2832
  %i.an = xor <16 x i8> %i.al, %broadcast.splat, !dbg !2833
  %i.ao = xor <16 x i8> %i.am, %broadcast.splat, !dbg !2833
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 %index, !dbg !2834 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16, !dbg !2835
  store <16 x i8> %i.an, ptr %i.ap, align 1, !dbg !2835
  store <16 x i8> %i.ao, ptr %i.aq, align 1, !dbg !2835
  %index.next = add nuw i64 %index, 32, !dbg !2830 ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec, !dbg !2829
  br i1 %i.ar, label %middle.block, label %vector.body, !dbg !2829, !llvm.loop !2754

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec, !dbg !2829
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !2829

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !244

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec95 = and i64 %i.ad, -4                    ; 4 uses
  %i.as = getelementptr i8, ptr %i.ab, i64 %n.vec95
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index98 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next101, %vec.epilog.vector.body ], !dbg !2830 ; 3 uses
  %next.gep99 = getelementptr i8, ptr %i.ab, i64 %index98
  %wide.load100 = load <4 x i8>, ptr %next.gep99, align 1, !dbg !2831
  %i.at = add <4 x i8> %wide.load100, splat (i8 2), !dbg !2832
  %i.au = xor <4 x i8> %i.at, %broadcast.splat97, !dbg !2833
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 %index98, !dbg !2834
  store <4 x i8> %i.au, ptr %i.av, align 1, !dbg !2835
  %index.next101 = add nuw i64 %index98, 4, !dbg !2830 ; 2 uses
  %i.aw = icmp eq i64 %index.next101, %n.vec95, !dbg !2829
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !2829, !llvm.loop !2755

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n102 = icmp eq i64 %i.ad, %n.vec95, !dbg !2829
  br i1 %cmp.n102, label %._crit_edge, label %.lr.ph.preheader, !dbg !2829

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.726.077.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec95, %vec.epilog.middle.block ]
  %.sroa.024.076.ph = phi ptr [ %i.ab, %iter.check ], [ %i.aj, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ]
  br label %.lr.ph, !dbg !2829

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2768), !dbg !2836
  %i.ax = load i64, ptr %.sroa.018.085, align 8, !dbg !2825, !noundef !112 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %i.ax, !dbg !2826
  store i8 %sext, ptr %i.ay, align 1, !dbg !2837
  %i.az = add i64 %i.ax, 1, !dbg !2838
  br label %bb.i, !dbg !2839

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %.sroa.9.566 = phi ptr [ %spec.select, %bb.h ], [ %.sroa.9.3, %._crit_edge ]
  %.sroa.11.364 = phi ptr [ %.sroa.11.083, %bb.h ], [ %.sroa.11.2, %._crit_edge ]
  %.sroa.14.662 = phi ptr [ %.sroa.14.2, %bb.h ], [ %.sroa.14.4, %._crit_edge ]
  %.sroa.19.558 = phi i64 [ %.sroa.19.1, %bb.h ], [ %.sroa.19.3, %._crit_edge ]
  %.sroa.21.556 = phi i64 [ %.sroa.21.1, %bb.h ], [ %.sroa.21.3, %._crit_edge ]
  %.sroa.23.654 = phi i64 [ %.sroa.23.2, %bb.h ], [ %.sroa.23.4, %._crit_edge ]
  %storemerge = phi i64 [ %i.az, %bb.h ], [ %i.bk, %._crit_edge ], !dbg !2840
  store i64 %storemerge, ptr %.sroa.018.085, align 8, !dbg !2840
  %i.ba = icmp eq ptr %i.f, %i.c, !dbg !2787
  br i1 %i.ba, label %._crit_edge88, label %bb.b, !dbg !2788

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.726.077 = phi i64 [ %i.bc, %.lr.ph ], [ %.sroa.726.077.ph, %.lr.ph.preheader ] ; 2 uses
  %.sroa.024.076 = phi ptr [ %i.bb, %.lr.ph ], [ %.sroa.024.076.ph, %.lr.ph.preheader ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.024.076, i64 1, !dbg !2841 ; 2 uses
  %i.bc = add nuw i64 %.sroa.726.077, 1, !dbg !2830
  %i.bd = load i8, ptr %.sroa.024.076, align 1, !dbg !2831, !noundef !112
  %i.be = add i8 %i.bd, 2, !dbg !2832
  %i.bf = xor i8 %i.be, %.sroa.01.0, !dbg !2833
  %i.bg = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.726.077, !dbg !2834
  store i8 %i.bf, ptr %i.bg, align 1, !dbg !2835
  %i.bh = icmp eq ptr %i.bb, %i.ag, !dbg !2828
  br i1 %i.bh, label %._crit_edge, label %.lr.ph, !dbg !2829, !llvm.loop !2757

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad, !dbg !2842
  store i8 %i.e, ptr %i.bi, align 1, !dbg !2843
  %i.bj = add i64 %i.ad, 1, !dbg !2844
  %i.bk = add i64 %i.bj, %i.ae, !dbg !2845
  br label %bb.i, !dbg !2846
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs4PheDXcg4wa_10polars_row8variable4utf817decode_str_as_cathEB6_(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef nonnull align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2, i8 noundef %3, ptr noundef nonnull align 128 %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2847 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 11 uses
  %i.b = alloca [16 x i8], align 8                ; 10 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [56 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [88 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [56 x i8], align 8                ; 18 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 15 uses
  %i.s = alloca [24 x i8], align 8                ; 18 uses
  %i.t = shl i8 %3, 6, !dbg !3230
  %sext = ashr i8 %i.t, 7, !dbg !3230             ; 3 uses
  %i.u = and i8 %3, 1, !dbg !3231
  %.not27 = icmp eq i8 %i.u, 0, !dbg !3231        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !3232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !3233
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !3233
  %i.v = load i64, ptr %i.g, align 8, !dbg !3233, !range !165, !noundef !112
  %i.w = trunc nuw i64 %i.v to i1, !dbg !3234
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !3235
  %i.y = load i64, ptr %i.x, align 8, !dbg !3235, !range !114, !noundef !112 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !3235 ; 2 uses
  br i1 %i.w, label %bb.b, label %bb.c, !dbg !3234, !prof !173

bb.b:                                             ; preds = %bb.a
  %i.aa = load i64, ptr %i.z, align 8, !dbg !3236
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.y, i64 %i.aa) #20, !dbg !3237
  unreachable, !dbg !3237

bb.c:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %i.z, align 8, !dbg !3238, !nonnull !112, !noundef !112
  %i.ac = icmp samesign ule i64 %2, %i.y, !dbg !3239
  tail call void @llvm.assume(i1 %i.ac), !dbg !3240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !3241
  store i64 %i.y, ptr %i.s, align 8, !dbg !3242
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !3242 ; 5 uses
  store ptr %i.ab, ptr %i.ad, align 8, !dbg !3242
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !3242 ; 12 uses
  store i64 0, ptr %i.ae, align 8, !dbg !3242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !3243
  store i64 0, ptr %i.r, align 8, !dbg !3244
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !3244 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.af, align 8, !dbg !3244
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !3244 ; 7 uses
  store i64 0, ptr %i.ag, align 8, !dbg !3244
  %.idx = shl nuw nsw i64 %2, 4, !dbg !3245       ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.idx, !dbg !3245 ; 3 uses
  %i.ai = icmp eq i64 %2, 0, !dbg !3246
  br i1 %i.ai, label %.loopexit99, label %.lr.ph, !dbg !3090

.lr.ph:                                           ; preds = %bb.c
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 624 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  br i1 %.not27, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit.us
  %.sroa.03.0118.us = phi ptr [ %i.am, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit.us ], [ %1, %.lr.ph ] ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.03.0118.us, i64 16, !dbg !3247 ; 2 uses
  %i.an = load ptr, ptr %.sroa.03.0118.us, align 8, !dbg !3248, !nonnull !112, !noundef !112 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.03.0118.us, i64 8, !dbg !3248 ; 4 uses
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !3248, !noundef !112 ; 3 uses
  %i.aq = icmp ne i64 %i.ap, 0, !dbg !3249
  call void @llvm.assume(i1 %i.aq), !dbg !3250
  %i.ar = load i8, ptr %i.an, align 1, !dbg !3251, !noundef !112
  %i.as = icmp eq i8 %i.ar, %sext, !dbg !3252
  br i1 %i.as, label %.split.us, label %bb.d, !dbg !3252

bb.d:                                             ; preds = %.lr.ph.split.us
  store i64 0, ptr %i.ag, align 8, !dbg !3253
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ap, !dbg !3254
  store ptr %i.an, ptr %i.p, align 8, !dbg !3255
  store ptr %i.at, ptr %.sroa.47.0..sroa_idx, align 8, !dbg !3255
  store i8 0, ptr %.sroa.58.0..sroa_idx, align 8, !dbg !3255
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1h_10take_while9TakeWhileINtNtNtB1l_5slice4iter4IterhENCINvNtNtCs4PheDXcg4wa_10polars_row8variable4utf817decode_str_as_cathEs0_0ENCB30_s1_0EE11spec_extendB37_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.p)
          to label %bb.e unwind label %.loopexit100.split.us, !dbg !3256

bb.e:                                             ; preds = %bb.d
  %i.au = load ptr, ptr %.sroa.03.0118.us, align 8, !dbg !3257, !nonnull !112, !noundef !112
  %i.av = load i64, ptr %i.ao, align 8, !dbg !3257, !noundef !112
  %i.aw = load i64, ptr %i.ag, align 8, !dbg !3258, !noundef !112 ; 5 uses
  %i.ax = icmp sgt i64 %i.aw, -1, !dbg !3259
  call void @llvm.assume(i1 %i.ax), !dbg !3260
  %i.ay = add nuw i64 %i.aw, 1, !dbg !3261        ; 2 uses
  %i.az = sub nuw i64 %i.av, %i.ay, !dbg !3262
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ay, !dbg !3263
  store ptr %i.ba, ptr %.sroa.03.0118.us, align 8, !dbg !3264
  store i64 %i.az, ptr %i.ao, align 8, !dbg !3264
  %i.bb = load ptr, ptr %i.af, align 8, !dbg !3265, !nonnull !112, !noundef !112 ; 3 uses
  %i.bc = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aj, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bb, i64 noundef %i.aw)
          to label %.noexc40.us unwind label %.loopexit100.split.us, !dbg !3266

.noexc40.us:                                      ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !3267, !noalias !3120
  store ptr %i.bb, ptr %i.b, align 8, !dbg !3267, !noalias !3120
  store i64 %i.aw, ptr %i.ak, align 8, !dbg !3267, !noalias !3120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3268, !noalias !3120
  invoke void @_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE22try_get_or_insert_withNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2e_18CategoricalMapping20insert_cat_with_hash0NCB2b_s_0ECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noundef nonnull align 128 %4, i64 noundef %i.bc, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bb, i64 noundef %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noundef nonnull align 128 %4)
          to label %.noexc41.us unwind label %.loopexit100.split.us, !dbg !3269

.noexc41.us:                                      ; preds = %.noexc40.us
  %i.bd = load i64, ptr %i.a, align 8, !dbg !3270, !range !304, !noalias !3120, !noundef !112 ; 2 uses
  %.not.i39.us = icmp eq i64 %i.bd, 18, !dbg !3270
  br i1 %.not.i39.us, label %bb.f, label %.split124.us, !dbg !3271

bb.f:                                             ; preds = %.noexc41.us
  %i.be = load ptr, ptr %i.al, align 8, !dbg !3272, !noalias !3120, !nonnull !112, !align !305, !noundef !112
  %i.bf = load i32, ptr %i.be, align 4, !dbg !3272, !noalias !3121, !noundef !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3273, !noalias !3120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3274, !noalias !3120
  %i.bg = trunc i32 %i.bf to i8, !dbg !3275
  %i.bh = load i64, ptr %i.ae, align 8, !dbg !3276, !alias.scope !3123, !noundef !112 ; 3 uses
  %i.bi = load i64, ptr %i.s, align 8, !dbg !3277, !range !166, !alias.scope !3123, !noundef !112
  %i.bj = icmp eq i64 %i.bh, %i.bi, !dbg !3278
  br i1 %i.bj, label %bb.g, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit.us, !dbg !3278

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit.us unwind label %.loopexit100.split.us, !dbg !3279

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit.us: ; preds = %bb.g, %bb.f
  %i.bk = load ptr, ptr %i.ad, align 8, !dbg !3280, !alias.scope !3123, !nonnull !112, !noundef !112
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bh, !dbg !3281
  store i8 %i.bg, ptr %i.bl, align 1, !dbg !3282
  %i.bm = add i64 %i.bh, 1, !dbg !3283            ; 2 uses
  store i64 %i.bm, ptr %i.ae, align 8, !dbg !3283, !alias.scope !3123
  %i.bn = icmp eq ptr %i.am, %i.ah, !dbg !3246
  br i1 %i.bn, label %.loopexit99, label %.lr.ph.split.us, !dbg !3090

.loopexit100.split.us:                            ; preds = %bb.g, %.noexc40.us, %bb.e, %bb.d
  %lpad.loopexit102.us = landingpad { ptr, i32 }
          cleanup
  br label %.body34

.lr.ph.split:                                     ; preds = %.lr.ph, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit
  %.sroa.03.0118 = phi ptr [ %i.bo, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit ], [ %1, %.lr.ph ] ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.03.0118, i64 16, !dbg !3247 ; 2 uses
  %i.bp = load ptr, ptr %.sroa.03.0118, align 8, !dbg !3248, !nonnull !112, !noundef !112 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.03.0118, i64 8, !dbg !3248 ; 4 uses
  %i.br = load i64, ptr %i.bq, align 8, !dbg !3248, !noundef !112 ; 3 uses
  %i.bs = icmp ne i64 %i.br, 0, !dbg !3249
  call void @llvm.assume(i1 %i.bs), !dbg !3250
  %i.bt = load i8, ptr %i.bp, align 1, !dbg !3251, !noundef !112
  %i.bu = icmp eq i8 %i.bt, %sext, !dbg !3252
  br i1 %i.bu, label %.split.us, label %bb.h, !dbg !3252

bb.h:                                             ; preds = %.lr.ph.split
  store i64 0, ptr %i.ag, align 8, !dbg !3253
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.br, !dbg !3284
  store ptr %i.bp, ptr %i.q, align 8, !dbg !3285
  store ptr %i.bv, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !3285
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !3285
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1h_10take_while9TakeWhileINtNtNtB1l_5slice4iter4IterhENCINvNtNtCs4PheDXcg4wa_10polars_row8variable4utf817decode_str_as_cathE0ENCB30_s_0EE11spec_extendB37_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.q)
          to label %bb.i unwind label %.loopexit100.split, !dbg !3286

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi ptr [ %i.an, %.lr.ph.split.us ], [ %i.bp, %.lr.ph.split ], !dbg !3287
  %.us-phi119 = phi ptr [ %i.ao, %.lr.ph.split.us ], [ %i.bq, %.lr.ph.split ], !dbg !3287
  %.us-phi120 = phi i64 [ %i.ap, %.lr.ph.split.us ], [ %i.br, %.lr.ph.split ], !dbg !3287
  %.us-phi121 = phi ptr [ %.sroa.03.0118.us, %.lr.ph.split.us ], [ %.sroa.03.0118, %.lr.ph.split ], !dbg !3287
  %i.bw = add i64 %.us-phi120, -1, !dbg !3287
  %i.bx = getelementptr inbounds nuw i8, ptr %.us-phi, i64 1, !dbg !3288
  store ptr %i.bx, ptr %.us-phi121, align 8, !dbg !3289
  store i64 %i.bw, ptr %.us-phi119, align 8, !dbg !3289
  %.pre = load i64, ptr %i.ae, align 8, !dbg !3290
  br label %.loopexit99, !dbg !3291

.body34:                                          ; preds = %.loopexit.split-lp101, %.loopexit100.split.us, %.loopexit100.split, %.body.i, %bb.bg, %bb.j, %bb.bj
  %.sroa.023.0 = phi i1 [ true, %bb.j ], [ %.sroa.023.3.lpad-body, %bb.bj ], [ false, %.body.i ], [ false, %bb.bg ], [ %6, %.loopexit.split-lp101 ], [ true, %.loopexit100.split.us ], [ true, %.loopexit100.split ], !dbg !3292
  %.pn29 = phi { ptr, i32 } [ %i.ci, %bb.j ], [ %eh.lpad-body, %bb.bj ], [ %eh.lpad-body.i, %.body.i ], [ %i.hj, %bb.bg ], [ %lpad.loopexit.split-lp103, %.loopexit.split-lp101 ], [ %lpad.loopexit102.us, %.loopexit100.split.us ], [ %lpad.loopexit102, %.loopexit100.split ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(24) %i.r) #19
          to label %bb.bf unwind label %bb.bh, !dbg !3228

.loopexit100.split:                               ; preds = %bb.h, %bb.i, %.noexc40, %bb.n
  %lpad.loopexit102 = landingpad { ptr, i32 }
          cleanup
  br label %.body34

.loopexit.split-lp101:                            ; preds = %bb.o, %bb.p
  %lpad.loopexit.split-lp103 = landingpad { ptr, i32 }
          cleanup
  br label %.body34

bb.i:                                             ; preds = %bb.h
  %i.by = load ptr, ptr %.sroa.03.0118, align 8, !dbg !3257, !nonnull !112, !noundef !112
  %i.bz = load i64, ptr %i.bq, align 8, !dbg !3257, !noundef !112
  %i.ca = load i64, ptr %i.ag, align 8, !dbg !3258, !noundef !112 ; 5 uses
  %i.cb = icmp sgt i64 %i.ca, -1, !dbg !3259
  call void @llvm.assume(i1 %i.cb), !dbg !3260
  %i.cc = add nuw i64 %i.ca, 1, !dbg !3261        ; 2 uses
  %i.cd = sub nuw i64 %i.bz, %i.cc, !dbg !3262
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cc, !dbg !3263
  store ptr %i.ce, ptr %.sroa.03.0118, align 8, !dbg !3264
  store i64 %i.cd, ptr %i.bq, align 8, !dbg !3264
  %i.cf = load ptr, ptr %i.af, align 8, !dbg !3265, !nonnull !112, !noundef !112 ; 3 uses
  %i.cg = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aj, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cf, i64 noundef %i.ca)
          to label %.noexc40 unwind label %.loopexit100.split, !dbg !3266

.noexc40:                                         ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !3267, !noalias !3120
  store ptr %i.cf, ptr %i.b, align 8, !dbg !3267, !noalias !3120
  store i64 %i.ca, ptr %i.ak, align 8, !dbg !3267, !noalias !3120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3268, !noalias !3120
  invoke void @_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE22try_get_or_insert_withNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2e_18CategoricalMapping20insert_cat_with_hash0NCB2b_s_0ECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noundef nonnull align 128 %4, i64 noundef %i.cg, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cf, i64 noundef %i.ca, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noundef nonnull align 128 %4)
          to label %.noexc41 unwind label %.loopexit100.split, !dbg !3269

.noexc41:                                         ; preds = %.noexc40
  %i.ch = load i64, ptr %i.a, align 8, !dbg !3270, !range !304, !noalias !3120, !noundef !112 ; 2 uses
  %.not.i39 = icmp eq i64 %i.ch, 18, !dbg !3270
  br i1 %.not.i39, label %bb.m, label %.split124.us, !dbg !3271

.split124.us:                                     ; preds = %.noexc41, %.noexc41.us
  %.us-phi125 = phi i64 [ %i.bd, %.noexc41.us ], [ %i.ch, %.noexc41 ], !dbg !3293
  %.sroa.476.0.copyload = load i32, ptr %i.al, align 8, !dbg !3293, !noalias !3120
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12, !dbg !3293
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 12, !dbg !3294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !3294, !noalias !3138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.577.0..sroa_idx, i64 60, i1 false), !dbg !3293, !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3273, !noalias !3120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3274, !noalias !3120
  store i64 %.us-phi125, ptr %i.e, align 8, !dbg !3294, !noalias !3139
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !3294
  store i32 %.sroa.476.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !3294, !noalias !3139
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #20
          to label %bb.k unwind label %bb.j, !dbg !3295, !noalias !3140

bb.j:                                             ; preds = %.split124.us
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e) #19
          to label %.body34 unwind label %bb.l, !dbg !3296, !noalias !3140

bb.k:                                             ; preds = %.split124.us
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !3297, !noalias !3140
  unreachable, !dbg !3297

bb.m:                                             ; preds = %.noexc41
  %i.ck = load ptr, ptr %i.al, align 8, !dbg !3272, !noalias !3120, !nonnull !112, !align !305, !noundef !112
  %i.cl = load i32, ptr %i.ck, align 4, !dbg !3272, !noalias !3121, !noundef !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3273, !noalias !3120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3274, !noalias !3120
  %i.cm = trunc i32 %i.cl to i8, !dbg !3275
  %i.cn = load i64, ptr %i.ae, align 8, !dbg !3276, !alias.scope !3123, !noundef !112 ; 3 uses
  %i.co = load i64, ptr %i.s, align 8, !dbg !3277, !range !166, !alias.scope !3123, !noundef !112
  %i.cp = icmp eq i64 %i.cn, %i.co, !dbg !3278
  br i1 %i.cp, label %bb.n, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit, !dbg !3278

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit unwind label %.loopexit100.split, !dbg !3279

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit: ; preds = %bb.n, %bb.m
  %i.cq = load ptr, ptr %i.ad, align 8, !dbg !3280, !alias.scope !3123, !nonnull !112, !noundef !112
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cn, !dbg !3281
  store i8 %i.cm, ptr %i.cr, align 1, !dbg !3282
  %i.cs = add i64 %i.cn, 1, !dbg !3283            ; 2 uses
  store i64 %i.cs, ptr %i.ae, align 8, !dbg !3283, !alias.scope !3123
  %i.ct = icmp eq ptr %i.bo, %i.ah, !dbg !3246
  br i1 %i.ct, label %.loopexit99, label %.lr.ph.split, !dbg !3090

.loopexit99:                                      ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit.us, %bb.c, %.split.us
  %5 = phi i64 [ %i.bm, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit.us ], [ %.pre, %.split.us ], [ 0, %bb.c ], [ %i.cs, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit ], !dbg !3290 ; 2 uses
  %i.cu = icmp sgt i64 %5, -1, !dbg !3298
  call void @llvm.assume(i1 %i.cu), !dbg !3299
  %6 = icmp ne i64 %5, %2, !dbg !3300             ; 2 uses
  br i1 %6, label %bb.o, label %bb.p, !dbg !3300

bb.o:                                             ; preds = %.loopexit99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !3301
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder13with_capacity(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.n, i64 noundef %2)
          to label %bb.q unwind label %.loopexit.split-lp101, !dbg !3302

bb.p:                                             ; preds = %.loopexit99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !3303
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !3303
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB2_14PrimitiveArrayhE8from_vecCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
          to label %bb.bk unwind label %.loopexit.split-lp101, !dbg !3304

bb.q:                                             ; preds = %bb.o
  %i.cv = load i64, ptr %i.ae, align 8, !dbg !3305, !noundef !112 ; 5 uses
  %i.cw = icmp sgt i64 %i.cv, -1, !dbg !3306
  call void @llvm.assume(i1 %i.cw), !dbg !3307
  %i.cx = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !3308 ; 8 uses
  %i.cy = load i64, ptr %i.cx, align 8, !dbg !3308, !noundef !112 ; 2 uses
  %i.cz = and i64 %i.cy, 63, !dbg !3308           ; 2 uses
  %i.da = add nuw i64 %i.cz, %i.cv, !dbg !3309
  %i.db = icmp ult i64 %i.da, 64, !dbg !3309
  br i1 %i.db, label %bb.s, label %bb.r, !dbg !3309, !prof !312

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder20extend_constant_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.n, i64 noundef %i.cv, i1 noundef zeroext true)
          to label %._crit_edge166 unwind label %.loopexit.split-lp, !dbg !3310

._crit_edge166:                                   ; preds = %bb.r
  %.pre167 = load i64, ptr %i.cx, align 8, !dbg !3311
  br label %bb.t, !dbg !3310

bb.s:                                             ; preds = %bb.q
  %notmask = shl nsw i64 -1, %i.cv, !dbg !3312
  %i.dc = xor i64 %notmask, -1, !dbg !3312
  %i.dd = shl i64 %i.dc, %i.cz, !dbg !3313
  %i.de = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !3314 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !dbg !3314, !noundef !112
  %i.dg = or i64 %i.df, %i.dd, !dbg !3314
  store i64 %i.dg, ptr %i.de, align 8, !dbg !3314
  %i.dh = add i64 %i.cy, %i.cv, !dbg !3315        ; 2 uses
  store i64 %i.dh, ptr %i.cx, align 8, !dbg !3315
  br label %bb.t, !dbg !3316

.loopexit:                                        ; preds = %bb.ac, %bb.ag, %bb.ah, %bb.ai, %.noexc, %bb.ao, %bb.aq
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

.loopexit.split-lp:                               ; preds = %bb.r, %bb.u, %bb.aa, %._crit_edge, %bb.x
  %.sroa.023.3.ph = phi i1 [ true, %bb.r ], [ true, %bb.u ], [ true, %bb.x ], [ false, %._crit_edge ], [ true, %bb.aa ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.t:                                             ; preds = %._crit_edge166, %bb.s
  %i.di = phi i64 [ %.pre167, %._crit_edge166 ], [ %i.dh, %bb.s ], !dbg !3311
  %i.dj = add i64 %i.di, 1, !dbg !3311            ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.n, i64 40, !dbg !3317 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !dbg !3317, !noundef !112
  %i.dm = icmp ugt i64 %i.dj, %i.dl, !dbg !3311
  br i1 %i.dm, label %bb.u, label %bb.v, !dbg !3311, !prof !173

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.n, i64 noundef 1)
          to label %._crit_edge168 unwind label %.loopexit.split-lp, !dbg !3318

._crit_edge168:                                   ; preds = %bb.u
  %.pre169 = load i64, ptr %i.cx, align 8, !dbg !3319, !alias.scope !3145
  %.pre172 = add i64 %.pre169, 1, !dbg !3320
  br label %bb.v, !dbg !3318

bb.v:                                             ; preds = %._crit_edge168, %bb.t
  %.pre-phi = phi i64 [ %.pre172, %._crit_edge168 ], [ %i.dj, %bb.t ], !dbg !3320 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3145), !dbg !3321
  %i.dn = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !3322 ; 5 uses
  %i.do = load i64, ptr %i.dn, align 8, !dbg !3322, !alias.scope !3145, !noundef !112 ; 2 uses
  store i64 %.pre-phi, ptr %i.cx, align 8, !dbg !3320, !alias.scope !3145
  %i.dp = and i64 %.pre-phi, 63, !dbg !3323
  %i.dq = icmp eq i64 %i.dp, 0, !dbg !3323
  br i1 %i.dq, label %bb.w, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit43, !dbg !3324

bb.w:                                             ; preds = %bb.v
  %i.dr = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !3325 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !dbg !3325, !alias.scope !3145, !noundef !112 ; 3 uses
  %i.dt = icmp sgt i64 %i.ds, -1, !dbg !3326
  call void @llvm.assume(i1 %i.dt), !dbg !3327
  %i.du = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !3328
  %i.dv = load ptr, ptr %i.du, align 8, !dbg !3328, !alias.scope !3145, !nonnull !112, !noundef !112
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.ds, !dbg !3329
  store i64 %i.do, ptr %i.dw, align 1, !dbg !3330, !noalias !3145
  %i.dx = add nuw i64 %i.ds, 8, !dbg !3331
  store i64 %i.dx, ptr %i.dr, align 8, !dbg !3332, !alias.scope !3145
  %i.dy = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.do), !dbg !3333
  %i.dz = getelementptr inbounds nuw i8, ptr %i.n, i64 48, !dbg !3334 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !dbg !3334, !alias.scope !3145, !noundef !112
  %i.eb = add i64 %i.ea, %i.dy, !dbg !3334
  store i64 %i.eb, ptr %i.dz, align 8, !dbg !3334, !alias.scope !3145
  store i64 0, ptr %i.dn, align 8, !dbg !3335, !alias.scope !3145
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit43, !dbg !3336

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit43: ; preds = %bb.v, %bb.w
  %i.ec = load i64, ptr %i.ae, align 8, !dbg !3337, !alias.scope !3146, !noundef !112 ; 3 uses
  %i.ed = load i64, ptr %i.s, align 8, !dbg !3338, !range !166, !alias.scope !3146, !noundef !112
  %i.ee = icmp eq i64 %i.ec, %i.ed, !dbg !3339
  br i1 %i.ee, label %bb.x, label %bb.y, !dbg !3339

bb.x:                                             ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit43
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.y unwind label %.loopexit.split-lp, !dbg !3340

bb.y:                                             ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit43, %bb.x
  %i.ef = load ptr, ptr %i.ad, align 8, !dbg !3341, !alias.scope !3146, !nonnull !112, !noundef !112
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ec, !dbg !3342
  store i8 0, ptr %i.eg, align 1, !dbg !3343
  %i.eh = add nsw i64 %i.ec, 1, !dbg !3344        ; 4 uses
  store i64 %i.eh, ptr %i.ae, align 8, !dbg !3344, !alias.scope !3146
  %i.ei = icmp samesign ugt i64 %i.eh, %2, !dbg !3345
  br i1 %i.ei, label %bb.aa, label %bb.z, !dbg !3345, !prof !173

bb.z:                                             ; preds = %bb.y
  %.idx128 = shl nuw nsw i64 %i.eh, 4, !dbg !3346 ; 2 uses
  %i.ej = icmp samesign eq i64 %.idx128, %.idx, !dbg !3347
  br i1 %i.ej, label %._crit_edge, label %.lr.ph127, !dbg !3348

.lr.ph127:                                        ; preds = %bb.z
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 %.idx128, !dbg !3346
  %i.el = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 624
  %i.ep = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br label %bb.ab, !dbg !3348

bb.aa:                                            ; preds = %bb.y
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.eh, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #20
          to label %bb.bi unwind label %.loopexit.split-lp, !dbg !3349

bb.ab:                                            ; preds = %.lr.ph127, %.backedge
  %.sroa.010.0126 = phi ptr [ %i.ek, %.lr.ph127 ], [ %i.er, %.backedge ] ; 8 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.010.0126, i64 16, !dbg !3350 ; 2 uses
  %i.es = load ptr, ptr %.sroa.010.0126, align 8, !dbg !3351, !nonnull !112, !noundef !112
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.010.0126, i64 8, !dbg !3351 ; 5 uses
  %i.eu = load i8, ptr %i.es, align 1, !dbg !3352, !noundef !112
  %i.ev = icmp ne i8 %i.eu, %sext, !dbg !3353     ; 2 uses
  %i.ew = load i64, ptr %i.cx, align 8, !dbg !3354, !noundef !112 ; 2 uses
  %i.ex = add i64 %i.ew, 1, !dbg !3354            ; 2 uses
  %i.ey = load i64, ptr %i.dk, align 8, !dbg !3355, !noundef !112
  %i.ez = icmp ugt i64 %i.ex, %i.ey, !dbg !3354
  br i1 %i.ez, label %bb.ac, label %bb.ad, !dbg !3354, !prof !173

._crit_edge:                                      ; preds = %.backedge, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !3356
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !3357
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !3357
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB2_14PrimitiveArrayhE8from_vecCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.ar unwind label %.loopexit.split-lp, !dbg !3356

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.n, i64 noundef 1)
          to label %._crit_edge170 unwind label %.loopexit, !dbg !3358

._crit_edge170:                                   ; preds = %bb.ac
  %.pre171 = load i64, ptr %i.cx, align 8, !dbg !3359, !alias.scope !3159 ; 2 uses
  %.pre173 = add i64 %.pre171, 1, !dbg !3360
  br label %bb.ad, !dbg !3358

bb.ad:                                            ; preds = %._crit_edge170, %bb.ab
  %.pre-phi174 = phi i64 [ %.pre173, %._crit_edge170 ], [ %i.ex, %bb.ab ], !dbg !3360 ; 2 uses
  %i.fa = phi i64 [ %.pre171, %._crit_edge170 ], [ %i.ew, %bb.ab ], !dbg !3359
  call void @llvm.experimental.noalias.scope.decl(metadata !3159), !dbg !3361
  %i.fb = zext i1 %i.ev to i64, !dbg !3362
  %i.fc = and i64 %i.fa, 63, !dbg !3363
  %i.fd = shl nuw i64 %i.fb, %i.fc, !dbg !3362
  %i.fe = load i64, ptr %i.dn, align 8, !dbg !3364, !alias.scope !3159, !noundef !112
  %i.ff = or i64 %i.fd, %i.fe, !dbg !3364         ; 3 uses
  store i64 %i.ff, ptr %i.dn, align 8, !dbg !3364, !alias.scope !3159
  store i64 %.pre-phi174, ptr %i.cx, align 8, !dbg !3360, !alias.scope !3159
  %i.fg = and i64 %.pre-phi174, 63, !dbg !3365
  %i.fh = icmp eq i64 %i.fg, 0, !dbg !3365
  br i1 %i.fh, label %bb.ae, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, !dbg !3366

bb.ae:                                            ; preds = %bb.ad
  %i.fi = load i64, ptr %i.el, align 8, !dbg !3367, !alias.scope !3159, !noundef !112 ; 3 uses
  %i.fj = icmp sgt i64 %i.fi, -1, !dbg !3368
  call void @llvm.assume(i1 %i.fj), !dbg !3369
  %i.fk = load ptr, ptr %i.em, align 8, !dbg !3370, !alias.scope !3159, !nonnull !112, !noundef !112
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fi, !dbg !3371
  store i64 %i.ff, ptr %i.fl, align 1, !dbg !3372, !noalias !3159
  %i.fm = add nuw i64 %i.fi, 8, !dbg !3373
  store i64 %i.fm, ptr %i.el, align 8, !dbg !3374, !alias.scope !3159
  %i.fn = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ff), !dbg !3375
  %i.fo = load i64, ptr %i.en, align 8, !dbg !3376, !alias.scope !3159, !noundef !112
  %i.fp = add i64 %i.fo, %i.fn, !dbg !3376
  store i64 %i.fp, ptr %i.en, align 8, !dbg !3376, !alias.scope !3159
  store i64 0, ptr %i.dn, align 8, !dbg !3377, !alias.scope !3159
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, !dbg !3378

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit: ; preds = %bb.ae, %bb.ad
  br i1 %i.ev, label %bb.af, label %bb.ap, !dbg !3379

bb.af:                                            ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit
  store i64 0, ptr %i.ag, align 8, !dbg !3380
end_hunk_0
begin_hunk_1_@_RINvNtNtCs4PheDXcg4wa_10polars_row8variable4utf817decode_str_as_cathEB6_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !3214), !dbg !3431
  call void @llvm.experimental.noalias.scope.decl(metadata !3215), !dbg !3431
  call void @llvm.experimental.noalias.scope.decl(metadata !3216), !dbg !3431
  call void @llvm.experimental.noalias.scope.decl(metadata !3217), !dbg !3432
  call void @llvm.experimental.noalias.scope.decl(metadata !3218), !dbg !3432
  %i.gv = load ptr, ptr %i.i, align 8, !dbg !3433, !alias.scope !3219, !noalias !3220, !noundef !112
  %.not.i.i = icmp eq ptr %i.gv, null, !dbg !3433
  br i1 %.not.i.i, label %bb.au, label %bb.at, !dbg !3434

bb.at:                                            ; preds = %bb.as
  %i.gw = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !3435
  %i.gx = load i64, ptr %i.gw, align 8, !dbg !3435, !alias.scope !3219, !noalias !3220, !noundef !112
  %i.gy = getelementptr inbounds nuw i8, ptr %i.k, i64 48, !dbg !3436
  %i.gz = load i64, ptr %i.gy, align 8, !dbg !3436, !alias.scope !3222, !noalias !3223, !noundef !112
  %.not2.i.i = icmp eq i64 %i.gx, %i.gz, !dbg !3437
  br i1 %.not2.i.i, label %bb.au, label %bb.aw, !dbg !3437, !prof !312

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ha = getelementptr inbounds nuw i8, ptr %i.k, i64 56, !dbg !3438 ; 4 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !dbg !3439, !alias.scope !3224, !noalias !3223, !noundef !112
  %i.hc = icmp eq ptr %i.hb, null, !dbg !3439
  br i1 %i.hc, label %bb.bc, label %bb.av, !dbg !3439

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ha)
          to label %bb.bc unwind label %bb.ax, !dbg !3440, !noalias !3223

bb.aw:                                            ; preds = %bb.at
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 89 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #20
          to label %bb.ay unwind label %bb.az, !dbg !3441, !noalias !3225

bb.ax:                                            ; preds = %bb.av
  %i.hd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ha, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !dbg !3438, !alias.scope !3226, !noalias !3214
  br label %.body.i, !dbg !3442

bb.ay:                                            ; preds = %bb.aw
  unreachable

bb.az:                                            ; preds = %bb.aw
  %i.he = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %.body.i unwind label %bb.ba, !dbg !3443, !noalias !3220

bb.ba:                                            ; preds = %bb.az
  %i.hf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !3444, !noalias !3220
  unreachable, !dbg !3444

.body.i:                                          ; preds = %bb.az, %bb.ax
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.he, %bb.az ], [ %i.hd, %bb.ax ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhEECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.k) #19
          to label %.body34 unwind label %bb.bb, !dbg !3445, !noalias !3214

bb.bb:                                            ; preds = %.body.i
  %i.hg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !3446, !noalias !3214
  unreachable, !dbg !3446

bb.bc:                                            ; preds = %bb.av, %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ha, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !dbg !3438, !alias.scope !3226, !noalias !3214
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.k, i64 88, i1 false), !dbg !3447, !alias.scope !3227, !noalias !3216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !3448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !3448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !3449
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs4PheDXcg4wa_10polars_row.exit60 unwind label %bb.bd, !dbg !3450

bb.bd:                                            ; preds = %bb.bc
  %i.hh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.thread95 unwind label %bb.be, !dbg !3451

bb.be:                                            ; preds = %bb.bd
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !3450
  unreachable, !dbg !3450

bb.bf:                                            ; preds = %.body34
  br i1 %.sroa.023.0, label %bb.bn, label %.thread95, !dbg !3452

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs4PheDXcg4wa_10polars_row.exit60: ; preds = %bb.bc, %bb.bk
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r), !dbg !3453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !3228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !3452
  ret void, !dbg !3454

bb.bg:                                            ; preds = %bb.ar
  %i.hj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhEECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(88) %i.k) #19
          to label %.body34 unwind label %bb.bh, !dbg !3448

bb.bh:                                            ; preds = %bb.bn, %bb.bj, %bb.bg, %.body34
  %i.hk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !3455
  unreachable, !dbg !3455

bb.bi:                                            ; preds = %bb.aa
  unreachable

bb.bj:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ak
  %.sroa.023.3.lpad-body = phi i1 [ true, %bb.ak ], [ true, %.loopexit ], [ %.sroa.023.3.ph, %.loopexit.split-lp ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.gd, %bb.ak ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builder13BitmapBuilderECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(56) %i.n) #19
          to label %.body34 unwind label %bb.bh, !dbg !3449

bb.bk:                                            ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !3456
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs4PheDXcg4wa_10polars_row.exit60 unwind label %bb.bl, !dbg !3457

bb.bl:                                            ; preds = %bb.bk
  %i.hl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.thread95 unwind label %bb.bm, !dbg !3458

bb.bm:                                            ; preds = %bb.bl
  %i.hm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !3457
  unreachable, !dbg !3457

.thread95:                                        ; preds = %bb.bl, %bb.bd, %bb.bn, %bb.bf
  %.pn3198 = phi { ptr, i32 } [ %.pn29, %bb.bf ], [ %.pn29, %bb.bn ], [ %i.hh, %bb.bd ], [ %i.hl, %bb.bl ]
  resume { ptr, i32 } %.pn3198, !dbg !3455

bb.bn:                                            ; preds = %bb.bf
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(24) %i.s) #19
          to label %.thread95 unwind label %bb.bh, !dbg !3452
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs4PheDXcg4wa_10polars_row8variable4utf817decode_str_as_catmEB6_(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef nonnull align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2, i8 noundef %3, ptr noundef nonnull align 128 %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3459 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 11 uses
  %i.b = alloca [16 x i8], align 8                ; 10 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [56 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [88 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [56 x i8], align 8                ; 18 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 15 uses
  %i.s = alloca [24 x i8], align 8                ; 18 uses
  %i.t = shl i8 %3, 6, !dbg !3841
  %sext = ashr i8 %i.t, 7, !dbg !3841             ; 3 uses
  %i.u = and i8 %3, 1, !dbg !3842
  %.not27 = icmp eq i8 %i.u, 0, !dbg !3842        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !3843
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !3844
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !dbg !3844
  %i.v = load i64, ptr %i.g, align 8, !dbg !3844, !range !165, !noundef !112
  %i.w = trunc nuw i64 %i.v to i1, !dbg !3845
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !3846
  %i.y = load i64, ptr %i.x, align 8, !dbg !3846, !range !114, !noundef !112 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !3846 ; 2 uses
  br i1 %i.w, label %bb.b, label %bb.c, !dbg !3845, !prof !173

bb.b:                                             ; preds = %bb.a
  %i.aa = load i64, ptr %i.z, align 8, !dbg !3847
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.y, i64 %i.aa) #20, !dbg !3848
  unreachable, !dbg !3848

bb.c:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %i.z, align 8, !dbg !3849, !nonnull !112, !noundef !112
  %i.ac = icmp samesign ule i64 %2, %i.y, !dbg !3850
  tail call void @llvm.assume(i1 %i.ac), !dbg !3851
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !3852
  store i64 %i.y, ptr %i.s, align 8, !dbg !3853
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !3853 ; 5 uses
  store ptr %i.ab, ptr %i.ad, align 8, !dbg !3853
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !3853 ; 12 uses
  store i64 0, ptr %i.ae, align 8, !dbg !3853
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !3854
  store i64 0, ptr %i.r, align 8, !dbg !3855
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !3855 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.af, align 8, !dbg !3855
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !3855 ; 7 uses
  store i64 0, ptr %i.ag, align 8, !dbg !3855
  %.idx = shl nuw nsw i64 %2, 4, !dbg !3856       ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.idx, !dbg !3856 ; 3 uses
  %i.ai = icmp eq i64 %2, 0, !dbg !3857
  br i1 %i.ai, label %.loopexit99, label %.lr.ph, !dbg !3701

.lr.ph:                                           ; preds = %bb.c
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 624 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  br i1 %.not27, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCs4PheDXcg4wa_10polars_row.exit.us
  %.sroa.03.0118.us = phi ptr [ %i.am, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCs4PheDXcg4wa_10polars_row.exit.us ], [ %1, %.lr.ph ] ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.03.0118.us, i64 16, !dbg !3858 ; 2 uses
  %i.an = load ptr, ptr %.sroa.03.0118.us, align 8, !dbg !3859, !nonnull !112, !noundef !112 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.03.0118.us, i64 8, !dbg !3859 ; 4 uses
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !3859, !noundef !112 ; 3 uses
  %i.aq = icmp ne i64 %i.ap, 0, !dbg !3860
  call void @llvm.assume(i1 %i.aq), !dbg !3861
  %i.ar = load i8, ptr %i.an, align 1, !dbg !3862, !noundef !112
  %i.as = icmp eq i8 %i.ar, %sext, !dbg !3863
  br i1 %i.as, label %.split.us, label %bb.d, !dbg !3863

bb.d:                                             ; preds = %.lr.ph.split.us
  store i64 0, ptr %i.ag, align 8, !dbg !3864
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ap, !dbg !3865
  store ptr %i.an, ptr %i.p, align 8, !dbg !3866
  store ptr %i.at, ptr %.sroa.47.0..sroa_idx, align 8, !dbg !3866
  store i8 0, ptr %.sroa.58.0..sroa_idx, align 8, !dbg !3866
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1h_10take_while9TakeWhileINtNtNtB1l_5slice4iter4IterhENCINvNtNtCs4PheDXcg4wa_10polars_row8variable4utf817decode_str_as_catmEs0_0ENCB30_s1_0EE11spec_extendB37_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.p)
          to label %bb.e unwind label %.loopexit100.split.us, !dbg !3867

bb.e:                                             ; preds = %bb.d
  %i.au = load ptr, ptr %.sroa.03.0118.us, align 8, !dbg !3868, !nonnull !112, !noundef !112
  %i.av = load i64, ptr %i.ao, align 8, !dbg !3868, !noundef !112
  %i.aw = load i64, ptr %i.ag, align 8, !dbg !3869, !noundef !112 ; 5 uses
  %i.ax = icmp sgt i64 %i.aw, -1, !dbg !3870
  call void @llvm.assume(i1 %i.ax), !dbg !3871
  %i.ay = add nuw i64 %i.aw, 1, !dbg !3872        ; 2 uses
  %i.az = sub nuw i64 %i.av, %i.ay, !dbg !3873
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ay, !dbg !3874
  store ptr %i.ba, ptr %.sroa.03.0118.us, align 8, !dbg !3875
  store i64 %i.az, ptr %i.ao, align 8, !dbg !3875
  %i.bb = load ptr, ptr %i.af, align 8, !dbg !3876, !nonnull !112, !noundef !112 ; 3 uses
  %i.bc = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aj, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bb, i64 noundef %i.aw)
          to label %.noexc40.us unwind label %.loopexit100.split.us, !dbg !3877

.noexc40.us:                                      ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !3878, !noalias !3731
  store ptr %i.bb, ptr %i.b, align 8, !dbg !3878, !noalias !3731
  store i64 %i.aw, ptr %i.ak, align 8, !dbg !3878, !noalias !3731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3879, !noalias !3731
  invoke void @_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE22try_get_or_insert_withNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2e_18CategoricalMapping20insert_cat_with_hash0NCB2b_s_0ECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noundef nonnull align 128 %4, i64 noundef %i.bc, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bb, i64 noundef %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noundef nonnull align 128 %4)
          to label %.noexc41.us unwind label %.loopexit100.split.us, !dbg !3880

.noexc41.us:                                      ; preds = %.noexc40.us
  %i.bd = load i64, ptr %i.a, align 8, !dbg !3881, !range !304, !noalias !3731, !noundef !112 ; 2 uses
  %.not.i39.us = icmp eq i64 %i.bd, 18, !dbg !3881
  br i1 %.not.i39.us, label %bb.f, label %.split124.us, !dbg !3882

bb.f:                                             ; preds = %.noexc41.us
  %i.be = load ptr, ptr %i.al, align 8, !dbg !3883, !noalias !3731, !nonnull !112, !align !305, !noundef !112
  %i.bf = load i32, ptr %i.be, align 4, !dbg !3883, !noalias !3732, !noundef !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3884, !noalias !3731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3885, !noalias !3731
  %i.bg = load i64, ptr %i.ae, align 8, !dbg !3886, !alias.scope !3733, !noundef !112 ; 3 uses
  %i.bh = load i64, ptr %i.s, align 8, !dbg !3887, !range !166, !alias.scope !3733, !noundef !112
  %i.bi = icmp eq i64 %i.bg, %i.bh, !dbg !3888
  br i1 %i.bi, label %bb.g, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCs4PheDXcg4wa_10polars_row.exit.us, !dbg !3888

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs41c1ljAzdbX_12aho_corasick(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCs4PheDXcg4wa_10polars_row.exit.us unwind label %.loopexit100.split.us, !dbg !3889

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCs4PheDXcg4wa_10polars_row.exit.us: ; preds = %bb.g, %bb.f
  %i.bj = load ptr, ptr %i.ad, align 8, !dbg !3890, !alias.scope !3733, !nonnull !112, !noundef !112
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bg, !dbg !3891
  store i32 %i.bf, ptr %i.bk, align 4, !dbg !3892
  %i.bl = add i64 %i.bg, 1, !dbg !3893            ; 2 uses
  store i64 %i.bl, ptr %i.ae, align 8, !dbg !3893, !alias.scope !3733
  %i.bm = icmp eq ptr %i.am, %i.ah, !dbg !3857
  br i1 %i.bm, label %.loopexit99, label %.lr.ph.split.us, !dbg !3701

.loopexit100.split.us:                            ; preds = %bb.g, %.noexc40.us, %bb.e, %bb.d
  %lpad.loopexit102.us = landingpad { ptr, i32 }
          cleanup
  br label %.body34

.lr.ph.split:                                     ; preds = %.lr.ph, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCs4PheDXcg4wa_10polars_row.exit
  %.sroa.03.0118 = phi ptr [ %i.bn, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCs4PheDXcg4wa_10polars_row.exit ], [ %1, %.lr.ph ] ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.03.0118, i64 16, !dbg !3858 ; 2 uses
  %i.bo = load ptr, ptr %.sroa.03.0118, align 8, !dbg !3859, !nonnull !112, !noundef !112 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.03.0118, i64 8, !dbg !3859 ; 4 uses
  %i.bq = load i64, ptr %i.bp, align 8, !dbg !3859, !noundef !112 ; 3 uses
  %i.br = icmp ne i64 %i.bq, 0, !dbg !3860
  call void @llvm.assume(i1 %i.br), !dbg !3861
  %i.bs = load i8, ptr %i.bo, align 1, !dbg !3862, !noundef !112
  %i.bt = icmp eq i8 %i.bs, %sext, !dbg !3863
  br i1 %i.bt, label %.split.us, label %bb.h, !dbg !3863

bb.h:                                             ; preds = %.lr.ph.split
  store i64 0, ptr %i.ag, align 8, !dbg !3864
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bq, !dbg !3894
  store ptr %i.bo, ptr %i.q, align 8, !dbg !3895
  store ptr %i.bu, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !3895
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !3895
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1h_10take_while9TakeWhileINtNtNtB1l_5slice4iter4IterhENCINvNtNtCs4PheDXcg4wa_10polars_row8variable4utf817decode_str_as_catmE0ENCB30_s_0EE11spec_extendB37_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.q)
          to label %bb.i unwind label %.loopexit100.split, !dbg !3896

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi ptr [ %i.an, %.lr.ph.split.us ], [ %i.bo, %.lr.ph.split ], !dbg !3897
  %.us-phi119 = phi ptr [ %i.ao, %.lr.ph.split.us ], [ %i.bp, %.lr.ph.split ], !dbg !3897
  %.us-phi120 = phi i64 [ %i.ap, %.lr.ph.split.us ], [ %i.bq, %.lr.ph.split ], !dbg !3897
  %.us-phi121 = phi ptr [ %.sroa.03.0118.us, %.lr.ph.split.us ], [ %.sroa.03.0118, %.lr.ph.split ], !dbg !3897
  %i.bv = add i64 %.us-phi120, -1, !dbg !3897
  %i.bw = getelementptr inbounds nuw i8, ptr %.us-phi, i64 1, !dbg !3898
  store ptr %i.bw, ptr %.us-phi121, align 8, !dbg !3899
  store i64 %i.bv, ptr %.us-phi119, align 8, !dbg !3899
  %.pre = load i64, ptr %i.ae, align 8, !dbg !3900
  br label %.loopexit99, !dbg !3901

.body34:                                          ; preds = %.loopexit.split-lp101, %.loopexit100.split.us, %.loopexit100.split, %.body.i, %bb.bg, %bb.j, %bb.bj
  %.sroa.023.0 = phi i1 [ true, %bb.j ], [ %.sroa.023.3.lpad-body, %bb.bj ], [ false, %.body.i ], [ false, %bb.bg ], [ %6, %.loopexit.split-lp101 ], [ true, %.loopexit100.split.us ], [ true, %.loopexit100.split ], !dbg !3902
  %.pn29 = phi { ptr, i32 } [ %i.ch, %bb.j ], [ %eh.lpad-body, %bb.bj ], [ %eh.lpad-body.i, %.body.i ], [ %i.hh, %bb.bg ], [ %lpad.loopexit.split-lp103, %.loopexit.split-lp101 ], [ %lpad.loopexit102.us, %.loopexit100.split.us ], [ %lpad.loopexit102, %.loopexit100.split ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(24) %i.r) #19
          to label %bb.bf unwind label %bb.bh, !dbg !3839

.loopexit100.split:                               ; preds = %bb.h, %bb.i, %.noexc40, %bb.n
  %lpad.loopexit102 = landingpad { ptr, i32 }
          cleanup
  br label %.body34

.loopexit.split-lp101:                            ; preds = %bb.o, %bb.p
  %lpad.loopexit.split-lp103 = landingpad { ptr, i32 }
          cleanup
  br label %.body34

bb.i:                                             ; preds = %bb.h
  %i.bx = load ptr, ptr %.sroa.03.0118, align 8, !dbg !3868, !nonnull !112, !noundef !112
  %i.by = load i64, ptr %i.bp, align 8, !dbg !3868, !noundef !112
  %i.bz = load i64, ptr %i.ag, align 8, !dbg !3869, !noundef !112 ; 5 uses
  %i.ca = icmp sgt i64 %i.bz, -1, !dbg !3870
  call void @llvm.assume(i1 %i.ca), !dbg !3871
  %i.cb = add nuw i64 %i.bz, 1, !dbg !3872        ; 2 uses
  %i.cc = sub nuw i64 %i.by, %i.cb, !dbg !3873
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.cb, !dbg !3874
  store ptr %i.cd, ptr %.sroa.03.0118, align 8, !dbg !3875
  store i64 %i.cc, ptr %i.bp, align 8, !dbg !3875
  %i.ce = load ptr, ptr %i.af, align 8, !dbg !3876, !nonnull !112, !noundef !112 ; 3 uses
  %i.cf = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aj, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ce, i64 noundef %i.bz)
          to label %.noexc40 unwind label %.loopexit100.split, !dbg !3877

.noexc40:                                         ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !3878, !noalias !3731
  store ptr %i.ce, ptr %i.b, align 8, !dbg !3878, !noalias !3731
  store i64 %i.bz, ptr %i.ak, align 8, !dbg !3878, !noalias !3731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3879, !noalias !3731
  invoke void @_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE22try_get_or_insert_withNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2e_18CategoricalMapping20insert_cat_with_hash0NCB2b_s_0ECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noundef nonnull align 128 %4, i64 noundef %i.cf, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ce, i64 noundef %i.bz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noundef nonnull align 128 %4)
          to label %.noexc41 unwind label %.loopexit100.split, !dbg !3880

.noexc41:                                         ; preds = %.noexc40
  %i.cg = load i64, ptr %i.a, align 8, !dbg !3881, !range !304, !noalias !3731, !noundef !112 ; 2 uses
  %.not.i39 = icmp eq i64 %i.cg, 18, !dbg !3881
  br i1 %.not.i39, label %bb.m, label %.split124.us, !dbg !3882

.split124.us:                                     ; preds = %.noexc41, %.noexc41.us
  %.us-phi125 = phi i64 [ %i.bd, %.noexc41.us ], [ %i.cg, %.noexc41 ], !dbg !3903
  %.sroa.476.0.copyload = load i32, ptr %i.al, align 8, !dbg !3903, !noalias !3731
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12, !dbg !3903
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 12, !dbg !3904
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !3904, !noalias !3748
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.577.0..sroa_idx, i64 60, i1 false), !dbg !3903, !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3884, !noalias !3731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3885, !noalias !3731
  store i64 %.us-phi125, ptr %i.e, align 8, !dbg !3904, !noalias !3749
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !3904
  store i32 %.sroa.476.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !3904, !noalias !3749
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #20
          to label %bb.k unwind label %bb.j, !dbg !3905, !noalias !3750

bb.j:                                             ; preds = %.split124.us
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e) #19
          to label %.body34 unwind label %bb.l, !dbg !3906, !noalias !3750

bb.k:                                             ; preds = %.split124.us
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !3907, !noalias !3750
  unreachable, !dbg !3907

bb.m:                                             ; preds = %.noexc41
  %i.cj = load ptr, ptr %i.al, align 8, !dbg !3883, !noalias !3731, !nonnull !112, !align !305, !noundef !112
  %i.ck = load i32, ptr %i.cj, align 4, !dbg !3883, !noalias !3732, !noundef !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3884, !noalias !3731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3885, !noalias !3731
  %i.cl = load i64, ptr %i.ae, align 8, !dbg !3886, !alias.scope !3733, !noundef !112 ; 3 uses
  %i.cm = load i64, ptr %i.s, align 8, !dbg !3887, !range !166, !alias.scope !3733, !noundef !112
  %i.cn = icmp eq i64 %i.cl, %i.cm, !dbg !3888
  br i1 %i.cn, label %bb.n, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCs4PheDXcg4wa_10polars_row.exit, !dbg !3888

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs41c1ljAzdbX_12aho_corasick(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCs4PheDXcg4wa_10polars_row.exit unwind label %.loopexit100.split, !dbg !3889

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCs4PheDXcg4wa_10polars_row.exit: ; preds = %bb.n, %bb.m
  %i.co = load ptr, ptr %i.ad, align 8, !dbg !3890, !alias.scope !3733, !nonnull !112, !noundef !112
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cl, !dbg !3891
  store i32 %i.ck, ptr %i.cp, align 4, !dbg !3892
  %i.cq = add i64 %i.cl, 1, !dbg !3893            ; 2 uses
  store i64 %i.cq, ptr %i.ae, align 8, !dbg !3893, !alias.scope !3733
  %i.cr = icmp eq ptr %i.bn, %i.ah, !dbg !3857
  br i1 %i.cr, label %.loopexit99, label %.lr.ph.split, !dbg !3701

.loopexit99:                                      ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCs4PheDXcg4wa_10polars_row.exit, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCs4PheDXcg4wa_10polars_row.exit.us, %bb.c, %.split.us
  %5 = phi i64 [ %i.bl, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCs4PheDXcg4wa_10polars_row.exit.us ], [ %.pre, %.split.us ], [ 0, %bb.c ], [ %i.cq, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCs4PheDXcg4wa_10polars_row.exit ], !dbg !3900 ; 2 uses
  %i.cs = icmp ult i64 %5, 2305843009213693952, !dbg !3908
  call void @llvm.assume(i1 %i.cs), !dbg !3909
  %6 = icmp ne i64 %5, %2, !dbg !3910             ; 2 uses
  br i1 %6, label %bb.o, label %bb.p, !dbg !3910

bb.o:                                             ; preds = %.loopexit99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !3911
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder13with_capacity(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.n, i64 noundef %2)
          to label %bb.q unwind label %.loopexit.split-lp101, !dbg !3912

bb.p:                                             ; preds = %.loopexit99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !3913
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !3913
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB2_14PrimitiveArraymE8from_vecCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
          to label %bb.bk unwind label %.loopexit.split-lp101, !dbg !3914

bb.q:                                             ; preds = %bb.o
  %i.ct = load i64, ptr %i.ae, align 8, !dbg !3915, !noundef !112 ; 5 uses
  %i.cu = icmp ult i64 %i.ct, 2305843009213693952, !dbg !3916
  call void @llvm.assume(i1 %i.cu), !dbg !3917
  %i.cv = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !3918 ; 8 uses
  %i.cw = load i64, ptr %i.cv, align 8, !dbg !3918, !noundef !112 ; 2 uses
  %i.cx = and i64 %i.cw, 63, !dbg !3918           ; 2 uses
  %i.cy = add nuw nsw i64 %i.cx, %i.ct, !dbg !3919
  %i.cz = icmp samesign ult i64 %i.cy, 64, !dbg !3919
  br i1 %i.cz, label %bb.s, label %bb.r, !dbg !3919, !prof !312

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder20extend_constant_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.n, i64 noundef %i.ct, i1 noundef zeroext true)
          to label %._crit_edge166 unwind label %.loopexit.split-lp, !dbg !3920

._crit_edge166:                                   ; preds = %bb.r
  %.pre167 = load i64, ptr %i.cv, align 8, !dbg !3921
  br label %bb.t, !dbg !3920

bb.s:                                             ; preds = %bb.q
  %notmask = shl nsw i64 -1, %i.ct, !dbg !3922
  %i.da = xor i64 %notmask, -1, !dbg !3922
  %i.db = shl i64 %i.da, %i.cx, !dbg !3923
  %i.dc = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !3924 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !dbg !3924, !noundef !112
  %i.de = or i64 %i.dd, %i.db, !dbg !3924
  store i64 %i.de, ptr %i.dc, align 8, !dbg !3924
  %i.df = add i64 %i.cw, %i.ct, !dbg !3925        ; 2 uses
  store i64 %i.df, ptr %i.cv, align 8, !dbg !3925
  br label %bb.t, !dbg !3926

.loopexit:                                        ; preds = %bb.ac, %bb.ag, %bb.ah, %bb.ai, %.noexc, %bb.ao, %bb.aq
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

.loopexit.split-lp:                               ; preds = %bb.r, %bb.u, %bb.aa, %._crit_edge, %bb.x
  %.sroa.023.3.ph = phi i1 [ true, %bb.r ], [ true, %bb.u ], [ true, %bb.x ], [ false, %._crit_edge ], [ true, %bb.aa ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.t:                                             ; preds = %._crit_edge166, %bb.s
  %i.dg = phi i64 [ %.pre167, %._crit_edge166 ], [ %i.df, %bb.s ], !dbg !3921
  %i.dh = add i64 %i.dg, 1, !dbg !3921            ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.n, i64 40, !dbg !3927 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !dbg !3927, !noundef !112
  %i.dk = icmp ugt i64 %i.dh, %i.dj, !dbg !3921
  br i1 %i.dk, label %bb.u, label %bb.v, !dbg !3921, !prof !173

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.n, i64 noundef 1)
          to label %._crit_edge168 unwind label %.loopexit.split-lp, !dbg !3928

._crit_edge168:                                   ; preds = %bb.u
  %.pre169 = load i64, ptr %i.cv, align 8, !dbg !3929, !alias.scope !3755
  %.pre172 = add i64 %.pre169, 1, !dbg !3930
  br label %bb.v, !dbg !3928

bb.v:                                             ; preds = %._crit_edge168, %bb.t
  %.pre-phi = phi i64 [ %.pre172, %._crit_edge168 ], [ %i.dh, %bb.t ], !dbg !3930 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3755), !dbg !3931
  %i.dl = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !3932 ; 5 uses
  %i.dm = load i64, ptr %i.dl, align 8, !dbg !3932, !alias.scope !3755, !noundef !112 ; 2 uses
  store i64 %.pre-phi, ptr %i.cv, align 8, !dbg !3930, !alias.scope !3755
  %i.dn = and i64 %.pre-phi, 63, !dbg !3933
  %i.do = icmp eq i64 %i.dn, 0, !dbg !3933
  br i1 %i.do, label %bb.w, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit43, !dbg !3934

bb.w:                                             ; preds = %bb.v
  %i.dp = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !3935 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !dbg !3935, !alias.scope !3755, !noundef !112 ; 3 uses
  %i.dr = icmp sgt i64 %i.dq, -1, !dbg !3936
  call void @llvm.assume(i1 %i.dr), !dbg !3937
  %i.ds = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !3938
  %i.dt = load ptr, ptr %i.ds, align 8, !dbg !3938, !alias.scope !3755, !nonnull !112, !noundef !112
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dq, !dbg !3939
  store i64 %i.dm, ptr %i.du, align 1, !dbg !3940, !noalias !3755
  %i.dv = add nuw i64 %i.dq, 8, !dbg !3941
  store i64 %i.dv, ptr %i.dp, align 8, !dbg !3942, !alias.scope !3755
  %i.dw = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dm), !dbg !3943
  %i.dx = getelementptr inbounds nuw i8, ptr %i.n, i64 48, !dbg !3944 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !dbg !3944, !alias.scope !3755, !noundef !112
  %i.dz = add i64 %i.dy, %i.dw, !dbg !3944
  store i64 %i.dz, ptr %i.dx, align 8, !dbg !3944, !alias.scope !3755
  store i64 0, ptr %i.dl, align 8, !dbg !3945, !alias.scope !3755
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit43, !dbg !3946

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit43: ; preds = %bb.v, %bb.w
  %i.ea = load i64, ptr %i.ae, align 8, !dbg !3947, !alias.scope !3756, !noundef !112 ; 4 uses
  %i.eb = load i64, ptr %i.s, align 8, !dbg !3948, !range !166, !alias.scope !3756, !noundef !112
  %i.ec = icmp eq i64 %i.ea, %i.eb, !dbg !3949
  br i1 %i.ec, label %bb.x, label %bb.y, !dbg !3949

bb.x:                                             ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit43
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs41c1ljAzdbX_12aho_corasick(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.y unwind label %.loopexit.split-lp, !dbg !3950

bb.y:                                             ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit43, %bb.x
  %i.ed = load ptr, ptr %i.ad, align 8, !dbg !3951, !alias.scope !3756, !nonnull !112, !noundef !112
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.ea, !dbg !3952
  store i32 0, ptr %i.ee, align 4, !dbg !3953
  %i.ef = add nsw i64 %i.ea, 1, !dbg !3954        ; 4 uses
  store i64 %i.ef, ptr %i.ae, align 8, !dbg !3954, !alias.scope !3756
  %i.eg = icmp slt i64 %i.ea, 2305843009213693951, !dbg !3955
  call void @llvm.assume(i1 %i.eg), !dbg !3956
  %i.eh = icmp samesign ugt i64 %i.ef, %2, !dbg !3957
  br i1 %i.eh, label %bb.aa, label %bb.z, !dbg !3957, !prof !173

bb.z:                                             ; preds = %bb.y
  %.idx128 = shl nuw nsw i64 %i.ef, 4, !dbg !3958 ; 2 uses
  %i.ei = icmp samesign eq i64 %.idx128, %.idx, !dbg !3959
  br i1 %i.ei, label %._crit_edge, label %.lr.ph127, !dbg !3960

.lr.ph127:                                        ; preds = %bb.z
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 %.idx128, !dbg !3958
  %i.ek = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 624
  %i.eo = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br label %bb.ab, !dbg !3960

bb.aa:                                            ; preds = %bb.y
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ef, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #20
          to label %bb.bi unwind label %.loopexit.split-lp, !dbg !3961

bb.ab:                                            ; preds = %.lr.ph127, %.backedge
  %.sroa.010.0126 = phi ptr [ %i.ej, %.lr.ph127 ], [ %i.eq, %.backedge ] ; 8 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.010.0126, i64 16, !dbg !3962 ; 2 uses
  %i.er = load ptr, ptr %.sroa.010.0126, align 8, !dbg !3963, !nonnull !112, !noundef !112
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.010.0126, i64 8, !dbg !3963 ; 5 uses
  %i.et = load i8, ptr %i.er, align 1, !dbg !3964, !noundef !112
  %i.eu = icmp ne i8 %i.et, %sext, !dbg !3965     ; 2 uses
  %i.ev = load i64, ptr %i.cv, align 8, !dbg !3966, !noundef !112 ; 2 uses
  %i.ew = add i64 %i.ev, 1, !dbg !3966            ; 2 uses
  %i.ex = load i64, ptr %i.di, align 8, !dbg !3967, !noundef !112
  %i.ey = icmp ugt i64 %i.ew, %i.ex, !dbg !3966
  br i1 %i.ey, label %bb.ac, label %bb.ad, !dbg !3966, !prof !173

._crit_edge:                                      ; preds = %.backedge, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !3968
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !3969
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !3969
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB2_14PrimitiveArraymE8from_vecCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.ar unwind label %.loopexit.split-lp, !dbg !3968

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.n, i64 noundef 1)
          to label %._crit_edge170 unwind label %.loopexit, !dbg !3970

._crit_edge170:                                   ; preds = %bb.ac
  %.pre171 = load i64, ptr %i.cv, align 8, !dbg !3971, !alias.scope !3770 ; 2 uses
  %.pre173 = add i64 %.pre171, 1, !dbg !3972
  br label %bb.ad, !dbg !3970

bb.ad:                                            ; preds = %._crit_edge170, %bb.ab
  %.pre-phi174 = phi i64 [ %.pre173, %._crit_edge170 ], [ %i.ew, %bb.ab ], !dbg !3972 ; 2 uses
  %i.ez = phi i64 [ %.pre171, %._crit_edge170 ], [ %i.ev, %bb.ab ], !dbg !3971
  call void @llvm.experimental.noalias.scope.decl(metadata !3770), !dbg !3973
  %i.fa = zext i1 %i.eu to i64, !dbg !3974
  %i.fb = and i64 %i.ez, 63, !dbg !3975
  %i.fc = shl nuw i64 %i.fa, %i.fb, !dbg !3974
  %i.fd = load i64, ptr %i.dl, align 8, !dbg !3976, !alias.scope !3770, !noundef !112
  %i.fe = or i64 %i.fc, %i.fd, !dbg !3976         ; 3 uses
  store i64 %i.fe, ptr %i.dl, align 8, !dbg !3976, !alias.scope !3770
  store i64 %.pre-phi174, ptr %i.cv, align 8, !dbg !3972, !alias.scope !3770
  %i.ff = and i64 %.pre-phi174, 63, !dbg !3977
  %i.fg = icmp eq i64 %i.ff, 0, !dbg !3977
  br i1 %i.fg, label %bb.ae, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, !dbg !3978

bb.ae:                                            ; preds = %bb.ad
  %i.fh = load i64, ptr %i.ek, align 8, !dbg !3979, !alias.scope !3770, !noundef !112 ; 3 uses
  %i.fi = icmp sgt i64 %i.fh, -1, !dbg !3980
  call void @llvm.assume(i1 %i.fi), !dbg !3981
  %i.fj = load ptr, ptr %i.el, align 8, !dbg !3982, !alias.scope !3770, !nonnull !112, !noundef !112
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fh, !dbg !3983
  store i64 %i.fe, ptr %i.fk, align 1, !dbg !3984, !noalias !3770
  %i.fl = add nuw i64 %i.fh, 8, !dbg !3985
  store i64 %i.fl, ptr %i.ek, align 8, !dbg !3986, !alias.scope !3770
  %i.fm = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fe), !dbg !3987
  %i.fn = load i64, ptr %i.em, align 8, !dbg !3988, !alias.scope !3770, !noundef !112
  %i.fo = add i64 %i.fn, %i.fm, !dbg !3988
  store i64 %i.fo, ptr %i.em, align 8, !dbg !3988, !alias.scope !3770
  store i64 0, ptr %i.dl, align 8, !dbg !3989, !alias.scope !3770
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, !dbg !3990

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit: ; preds = %bb.ae, %bb.ad
  br i1 %i.eu, label %bb.af, label %bb.ap, !dbg !3991

end_hunk_1
begin_hunk_2_@_RINvNtNtCs4PheDXcg4wa_10polars_row8variable4utf817decode_str_as_catmEB6_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !3825), !dbg !4042
  call void @llvm.experimental.noalias.scope.decl(metadata !3826), !dbg !4042
  call void @llvm.experimental.noalias.scope.decl(metadata !3827), !dbg !4042
  call void @llvm.experimental.noalias.scope.decl(metadata !3828), !dbg !4043
  call void @llvm.experimental.noalias.scope.decl(metadata !3829), !dbg !4043
  %i.gt = load ptr, ptr %i.i, align 8, !dbg !4044, !alias.scope !3830, !noalias !3831, !noundef !112
  %.not.i.i = icmp eq ptr %i.gt, null, !dbg !4044
  br i1 %.not.i.i, label %bb.au, label %bb.at, !dbg !4045

bb.at:                                            ; preds = %bb.as
  %i.gu = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !4046
  %i.gv = load i64, ptr %i.gu, align 8, !dbg !4046, !alias.scope !3830, !noalias !3831, !noundef !112
  %i.gw = getelementptr inbounds nuw i8, ptr %i.k, i64 48, !dbg !4047
  %i.gx = load i64, ptr %i.gw, align 8, !dbg !4047, !alias.scope !3833, !noalias !3834, !noundef !112
  %.not2.i.i = icmp eq i64 %i.gv, %i.gx, !dbg !4048
  br i1 %.not2.i.i, label %bb.au, label %bb.aw, !dbg !4048, !prof !312

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.gy = getelementptr inbounds nuw i8, ptr %i.k, i64 56, !dbg !4049 ; 4 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !dbg !4050, !alias.scope !3835, !noalias !3834, !noundef !112
  %i.ha = icmp eq ptr %i.gz, null, !dbg !4050
  br i1 %i.ha, label %bb.bc, label %bb.av, !dbg !4050

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.gy)
          to label %bb.bc unwind label %bb.ax, !dbg !4051, !noalias !3834

bb.aw:                                            ; preds = %bb.at
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 89 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #20
          to label %bb.ay unwind label %bb.az, !dbg !4052, !noalias !3836

bb.ax:                                            ; preds = %bb.av
  %i.hb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gy, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !dbg !4049, !alias.scope !3837, !noalias !3825
  br label %.body.i, !dbg !4053

bb.ay:                                            ; preds = %bb.aw
  unreachable

bb.az:                                            ; preds = %bb.aw
  %i.hc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %.body.i unwind label %bb.ba, !dbg !4054, !noalias !3831

bb.ba:                                            ; preds = %bb.az
  %i.hd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !4055, !noalias !3831
  unreachable, !dbg !4055

.body.i:                                          ; preds = %bb.az, %bb.ax
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.hc, %bb.az ], [ %i.hb, %bb.ax ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymEECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.k) #19
          to label %.body34 unwind label %bb.bb, !dbg !4056, !noalias !3825

bb.bb:                                            ; preds = %.body.i
  %i.he = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !4057, !noalias !3825
  unreachable, !dbg !4057

bb.bc:                                            ; preds = %bb.av, %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gy, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !dbg !4049, !alias.scope !3837, !noalias !3825
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.k, i64 88, i1 false), !dbg !4058, !alias.scope !3838, !noalias !3827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !4059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !4059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !4060
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs4PheDXcg4wa_10polars_row.exit60 unwind label %bb.bd, !dbg !4061

bb.bd:                                            ; preds = %bb.bc
  %i.hf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.thread95 unwind label %bb.be, !dbg !4062

bb.be:                                            ; preds = %bb.bd
  %i.hg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !4061
  unreachable, !dbg !4061

bb.bf:                                            ; preds = %.body34
  br i1 %.sroa.023.0, label %bb.bn, label %.thread95, !dbg !4063

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs4PheDXcg4wa_10polars_row.exit60: ; preds = %bb.bc, %bb.bk
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r), !dbg !4064
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !3839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !4063
  ret void, !dbg !4065

bb.bg:                                            ; preds = %bb.ar
  %i.hh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymEECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(88) %i.k) #19
          to label %.body34 unwind label %bb.bh, !dbg !4059

bb.bh:                                            ; preds = %bb.bn, %bb.bj, %bb.bg, %.body34
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !4066
  unreachable, !dbg !4066

bb.bi:                                            ; preds = %bb.aa
  unreachable

bb.bj:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ak
  %.sroa.023.3.lpad-body = phi i1 [ true, %bb.ak ], [ true, %.loopexit ], [ %.sroa.023.3.ph, %.loopexit.split-lp ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.gc, %bb.ak ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builder13BitmapBuilderECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(56) %i.n) #19
          to label %.body34 unwind label %bb.bh, !dbg !4060

bb.bk:                                            ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !4067
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs4PheDXcg4wa_10polars_row.exit60 unwind label %bb.bl, !dbg !4068

bb.bl:                                            ; preds = %bb.bk
  %i.hj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.thread95 unwind label %bb.bm, !dbg !4069

bb.bm:                                            ; preds = %bb.bl
  %i.hk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !4068
  unreachable, !dbg !4068

.thread95:                                        ; preds = %bb.bl, %bb.bd, %bb.bn, %bb.bf
  %.pn3198 = phi { ptr, i32 } [ %.pn29, %bb.bf ], [ %.pn29, %bb.bn ], [ %i.hf, %bb.bd ], [ %i.hj, %bb.bl ]
  resume { ptr, i32 } %.pn3198, !dbg !4066

bb.bn:                                            ; preds = %bb.bf
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(24) %i.s) #19
          to label %.thread95 unwind label %bb.bh, !dbg !4063
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs4PheDXcg4wa_10polars_row8variable4utf817decode_str_as_cattEB6_(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef nonnull align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2, i8 noundef %3, ptr noundef nonnull align 128 %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4070 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 11 uses
  %i.b = alloca [16 x i8], align 8                ; 10 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [56 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [88 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [56 x i8], align 8                ; 18 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 15 uses
  %i.s = alloca [24 x i8], align 8                ; 18 uses
  %i.t = shl i8 %3, 6, !dbg !4456
  %sext = ashr i8 %i.t, 7, !dbg !4456             ; 3 uses
  %i.u = and i8 %3, 1, !dbg !4457
  %.not27 = icmp eq i8 %i.u, 0, !dbg !4457        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !4458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !4459
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext false, i64 noundef 2, i64 noundef 2), !dbg !4459
  %i.v = load i64, ptr %i.g, align 8, !dbg !4459, !range !165, !noundef !112
  %i.w = trunc nuw i64 %i.v to i1, !dbg !4460
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !4461
  %i.y = load i64, ptr %i.x, align 8, !dbg !4461, !range !114, !noundef !112 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !4461 ; 2 uses
  br i1 %i.w, label %bb.b, label %bb.c, !dbg !4460, !prof !173

bb.b:                                             ; preds = %bb.a
  %i.aa = load i64, ptr %i.z, align 8, !dbg !4462
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.y, i64 %i.aa) #20, !dbg !4463
  unreachable, !dbg !4463

bb.c:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %i.z, align 8, !dbg !4464, !nonnull !112, !noundef !112
  %i.ac = icmp samesign ule i64 %2, %i.y, !dbg !4465
  tail call void @llvm.assume(i1 %i.ac), !dbg !4466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !4467
  store i64 %i.y, ptr %i.s, align 8, !dbg !4468
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !4468 ; 5 uses
  store ptr %i.ab, ptr %i.ad, align 8, !dbg !4468
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !4468 ; 12 uses
  store i64 0, ptr %i.ae, align 8, !dbg !4468
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !4469
  store i64 0, ptr %i.r, align 8, !dbg !4470
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !4470 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.af, align 8, !dbg !4470
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !4470 ; 7 uses
  store i64 0, ptr %i.ag, align 8, !dbg !4470
  %.idx = shl nuw nsw i64 %2, 4, !dbg !4471       ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.idx, !dbg !4471 ; 3 uses
  %i.ai = icmp eq i64 %2, 0, !dbg !4472
  br i1 %i.ai, label %.loopexit99, label %.lr.ph, !dbg !4315

.lr.ph:                                           ; preds = %bb.c
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 624 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  br i1 %.not27, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCs4PheDXcg4wa_10polars_row.exit.us
  %.sroa.03.0118.us = phi ptr [ %i.am, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCs4PheDXcg4wa_10polars_row.exit.us ], [ %1, %.lr.ph ] ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.03.0118.us, i64 16, !dbg !4473 ; 2 uses
  %i.an = load ptr, ptr %.sroa.03.0118.us, align 8, !dbg !4474, !nonnull !112, !noundef !112 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.03.0118.us, i64 8, !dbg !4474 ; 4 uses
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !4474, !noundef !112 ; 3 uses
  %i.aq = icmp ne i64 %i.ap, 0, !dbg !4475
  call void @llvm.assume(i1 %i.aq), !dbg !4476
  %i.ar = load i8, ptr %i.an, align 1, !dbg !4477, !noundef !112
  %i.as = icmp eq i8 %i.ar, %sext, !dbg !4478
  br i1 %i.as, label %.split.us, label %bb.d, !dbg !4478

bb.d:                                             ; preds = %.lr.ph.split.us
  store i64 0, ptr %i.ag, align 8, !dbg !4479
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ap, !dbg !4480
  store ptr %i.an, ptr %i.p, align 8, !dbg !4481
  store ptr %i.at, ptr %.sroa.47.0..sroa_idx, align 8, !dbg !4481
  store i8 0, ptr %.sroa.58.0..sroa_idx, align 8, !dbg !4481
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1h_10take_while9TakeWhileINtNtNtB1l_5slice4iter4IterhENCINvNtNtCs4PheDXcg4wa_10polars_row8variable4utf817decode_str_as_cattEs0_0ENCB30_s1_0EE11spec_extendB37_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.p)
          to label %bb.e unwind label %.loopexit100.split.us, !dbg !4482

bb.e:                                             ; preds = %bb.d
  %i.au = load ptr, ptr %.sroa.03.0118.us, align 8, !dbg !4483, !nonnull !112, !noundef !112
  %i.av = load i64, ptr %i.ao, align 8, !dbg !4483, !noundef !112
  %i.aw = load i64, ptr %i.ag, align 8, !dbg !4484, !noundef !112 ; 5 uses
  %i.ax = icmp sgt i64 %i.aw, -1, !dbg !4485
  call void @llvm.assume(i1 %i.ax), !dbg !4486
  %i.ay = add nuw i64 %i.aw, 1, !dbg !4487        ; 2 uses
  %i.az = sub nuw i64 %i.av, %i.ay, !dbg !4488
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ay, !dbg !4489
  store ptr %i.ba, ptr %.sroa.03.0118.us, align 8, !dbg !4490
  store i64 %i.az, ptr %i.ao, align 8, !dbg !4490
  %i.bb = load ptr, ptr %i.af, align 8, !dbg !4491, !nonnull !112, !noundef !112 ; 3 uses
  %i.bc = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aj, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bb, i64 noundef %i.aw)
          to label %.noexc40.us unwind label %.loopexit100.split.us, !dbg !4492

.noexc40.us:                                      ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4493, !noalias !4345
  store ptr %i.bb, ptr %i.b, align 8, !dbg !4493, !noalias !4345
  store i64 %i.aw, ptr %i.ak, align 8, !dbg !4493, !noalias !4345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4494, !noalias !4345
  invoke void @_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE22try_get_or_insert_withNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2e_18CategoricalMapping20insert_cat_with_hash0NCB2b_s_0ECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noundef nonnull align 128 %4, i64 noundef %i.bc, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bb, i64 noundef %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noundef nonnull align 128 %4)
          to label %.noexc41.us unwind label %.loopexit100.split.us, !dbg !4495

.noexc41.us:                                      ; preds = %.noexc40.us
  %i.bd = load i64, ptr %i.a, align 8, !dbg !4496, !range !304, !noalias !4345, !noundef !112 ; 2 uses
  %.not.i39.us = icmp eq i64 %i.bd, 18, !dbg !4496
  br i1 %.not.i39.us, label %bb.f, label %.split124.us, !dbg !4497

bb.f:                                             ; preds = %.noexc41.us
  %i.be = load ptr, ptr %i.al, align 8, !dbg !4498, !noalias !4345, !nonnull !112, !align !305, !noundef !112
  %i.bf = load i32, ptr %i.be, align 4, !dbg !4498, !noalias !4346, !noundef !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4499, !noalias !4345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4500, !noalias !4345
  %i.bg = trunc i32 %i.bf to i16, !dbg !4501
  %i.bh = load i64, ptr %i.ae, align 8, !dbg !4502, !alias.scope !4348, !noundef !112 ; 3 uses
  %i.bi = load i64, ptr %i.s, align 8, !dbg !4503, !range !166, !alias.scope !4348, !noundef !112
  %i.bj = icmp eq i64 %i.bh, %i.bi, !dbg !4504
  br i1 %i.bj, label %bb.g, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCs4PheDXcg4wa_10polars_row.exit.us, !dbg !4504

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVectE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCs4PheDXcg4wa_10polars_row.exit.us unwind label %.loopexit100.split.us, !dbg !4505

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCs4PheDXcg4wa_10polars_row.exit.us: ; preds = %bb.g, %bb.f
  %i.bk = load ptr, ptr %i.ad, align 8, !dbg !4506, !alias.scope !4348, !nonnull !112, !noundef !112
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.bh, !dbg !4507
  store i16 %i.bg, ptr %i.bl, align 2, !dbg !4508
  %i.bm = add i64 %i.bh, 1, !dbg !4509            ; 2 uses
  store i64 %i.bm, ptr %i.ae, align 8, !dbg !4509, !alias.scope !4348
  %i.bn = icmp eq ptr %i.am, %i.ah, !dbg !4472
  br i1 %i.bn, label %.loopexit99, label %.lr.ph.split.us, !dbg !4315

.loopexit100.split.us:                            ; preds = %bb.g, %.noexc40.us, %bb.e, %bb.d
  %lpad.loopexit102.us = landingpad { ptr, i32 }
          cleanup
  br label %.body34

.lr.ph.split:                                     ; preds = %.lr.ph, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCs4PheDXcg4wa_10polars_row.exit
  %.sroa.03.0118 = phi ptr [ %i.bo, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCs4PheDXcg4wa_10polars_row.exit ], [ %1, %.lr.ph ] ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.03.0118, i64 16, !dbg !4473 ; 2 uses
  %i.bp = load ptr, ptr %.sroa.03.0118, align 8, !dbg !4474, !nonnull !112, !noundef !112 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.03.0118, i64 8, !dbg !4474 ; 4 uses
  %i.br = load i64, ptr %i.bq, align 8, !dbg !4474, !noundef !112 ; 3 uses
  %i.bs = icmp ne i64 %i.br, 0, !dbg !4475
  call void @llvm.assume(i1 %i.bs), !dbg !4476
  %i.bt = load i8, ptr %i.bp, align 1, !dbg !4477, !noundef !112
  %i.bu = icmp eq i8 %i.bt, %sext, !dbg !4478
  br i1 %i.bu, label %.split.us, label %bb.h, !dbg !4478

bb.h:                                             ; preds = %.lr.ph.split
  store i64 0, ptr %i.ag, align 8, !dbg !4479
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.br, !dbg !4510
  store ptr %i.bp, ptr %i.q, align 8, !dbg !4511
  store ptr %i.bv, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !4511
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !4511
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1h_10take_while9TakeWhileINtNtNtB1l_5slice4iter4IterhENCINvNtNtCs4PheDXcg4wa_10polars_row8variable4utf817decode_str_as_cattE0ENCB30_s_0EE11spec_extendB37_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.q)
          to label %bb.i unwind label %.loopexit100.split, !dbg !4512

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi ptr [ %i.an, %.lr.ph.split.us ], [ %i.bp, %.lr.ph.split ], !dbg !4513
  %.us-phi119 = phi ptr [ %i.ao, %.lr.ph.split.us ], [ %i.bq, %.lr.ph.split ], !dbg !4513
  %.us-phi120 = phi i64 [ %i.ap, %.lr.ph.split.us ], [ %i.br, %.lr.ph.split ], !dbg !4513
  %.us-phi121 = phi ptr [ %.sroa.03.0118.us, %.lr.ph.split.us ], [ %.sroa.03.0118, %.lr.ph.split ], !dbg !4513
  %i.bw = add i64 %.us-phi120, -1, !dbg !4513
  %i.bx = getelementptr inbounds nuw i8, ptr %.us-phi, i64 1, !dbg !4514
  store ptr %i.bx, ptr %.us-phi121, align 8, !dbg !4515
  store i64 %i.bw, ptr %.us-phi119, align 8, !dbg !4515
  %.pre = load i64, ptr %i.ae, align 8, !dbg !4516
  br label %.loopexit99, !dbg !4517

.body34:                                          ; preds = %.loopexit.split-lp101, %.loopexit100.split.us, %.loopexit100.split, %.body.i, %bb.bg, %bb.j, %bb.bj
  %.sroa.023.0 = phi i1 [ true, %bb.j ], [ %.sroa.023.3.lpad-body, %bb.bj ], [ false, %.body.i ], [ false, %bb.bg ], [ %6, %.loopexit.split-lp101 ], [ true, %.loopexit100.split.us ], [ true, %.loopexit100.split ], !dbg !4518
  %.pn29 = phi { ptr, i32 } [ %i.ci, %bb.j ], [ %eh.lpad-body, %bb.bj ], [ %eh.lpad-body.i, %.body.i ], [ %i.hk, %bb.bg ], [ %lpad.loopexit.split-lp103, %.loopexit.split-lp101 ], [ %lpad.loopexit102.us, %.loopexit100.split.us ], [ %lpad.loopexit102, %.loopexit100.split ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(24) %i.r) #19
          to label %bb.bf unwind label %bb.bh, !dbg !4454

.loopexit100.split:                               ; preds = %bb.h, %bb.i, %.noexc40, %bb.n
  %lpad.loopexit102 = landingpad { ptr, i32 }
          cleanup
  br label %.body34

.loopexit.split-lp101:                            ; preds = %bb.o, %bb.p
  %lpad.loopexit.split-lp103 = landingpad { ptr, i32 }
          cleanup
  br label %.body34

bb.i:                                             ; preds = %bb.h
  %i.by = load ptr, ptr %.sroa.03.0118, align 8, !dbg !4483, !nonnull !112, !noundef !112
  %i.bz = load i64, ptr %i.bq, align 8, !dbg !4483, !noundef !112
  %i.ca = load i64, ptr %i.ag, align 8, !dbg !4484, !noundef !112 ; 5 uses
  %i.cb = icmp sgt i64 %i.ca, -1, !dbg !4485
  call void @llvm.assume(i1 %i.cb), !dbg !4486
  %i.cc = add nuw i64 %i.ca, 1, !dbg !4487        ; 2 uses
  %i.cd = sub nuw i64 %i.bz, %i.cc, !dbg !4488
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cc, !dbg !4489
  store ptr %i.ce, ptr %.sroa.03.0118, align 8, !dbg !4490
  store i64 %i.cd, ptr %i.bq, align 8, !dbg !4490
  %i.cf = load ptr, ptr %i.af, align 8, !dbg !4491, !nonnull !112, !noundef !112 ; 3 uses
  %i.cg = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aj, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cf, i64 noundef %i.ca)
          to label %.noexc40 unwind label %.loopexit100.split, !dbg !4492

.noexc40:                                         ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4493, !noalias !4345
  store ptr %i.cf, ptr %i.b, align 8, !dbg !4493, !noalias !4345
  store i64 %i.ca, ptr %i.ak, align 8, !dbg !4493, !noalias !4345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4494, !noalias !4345
  invoke void @_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE22try_get_or_insert_withNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2e_18CategoricalMapping20insert_cat_with_hash0NCB2b_s_0ECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noundef nonnull align 128 %4, i64 noundef %i.cg, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cf, i64 noundef %i.ca, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noundef nonnull align 128 %4)
          to label %.noexc41 unwind label %.loopexit100.split, !dbg !4495

.noexc41:                                         ; preds = %.noexc40
  %i.ch = load i64, ptr %i.a, align 8, !dbg !4496, !range !304, !noalias !4345, !noundef !112 ; 2 uses
  %.not.i39 = icmp eq i64 %i.ch, 18, !dbg !4496
  br i1 %.not.i39, label %bb.m, label %.split124.us, !dbg !4497

.split124.us:                                     ; preds = %.noexc41, %.noexc41.us
  %.us-phi125 = phi i64 [ %i.bd, %.noexc41.us ], [ %i.ch, %.noexc41 ], !dbg !4519
  %.sroa.476.0.copyload = load i32, ptr %i.al, align 8, !dbg !4519, !noalias !4345
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12, !dbg !4519
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 12, !dbg !4520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !4520, !noalias !4363
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.577.0..sroa_idx, i64 60, i1 false), !dbg !4519, !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4499, !noalias !4345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4500, !noalias !4345
  store i64 %.us-phi125, ptr %i.e, align 8, !dbg !4520, !noalias !4364
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !4520
  store i32 %.sroa.476.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !4520, !noalias !4364
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #20
          to label %bb.k unwind label %bb.j, !dbg !4521, !noalias !4365

bb.j:                                             ; preds = %.split124.us
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e) #19
          to label %.body34 unwind label %bb.l, !dbg !4522, !noalias !4365

bb.k:                                             ; preds = %.split124.us
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !4523, !noalias !4365
  unreachable, !dbg !4523

bb.m:                                             ; preds = %.noexc41
  %i.ck = load ptr, ptr %i.al, align 8, !dbg !4498, !noalias !4345, !nonnull !112, !align !305, !noundef !112
  %i.cl = load i32, ptr %i.ck, align 4, !dbg !4498, !noalias !4346, !noundef !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4499, !noalias !4345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4500, !noalias !4345
  %i.cm = trunc i32 %i.cl to i16, !dbg !4501
  %i.cn = load i64, ptr %i.ae, align 8, !dbg !4502, !alias.scope !4348, !noundef !112 ; 3 uses
  %i.co = load i64, ptr %i.s, align 8, !dbg !4503, !range !166, !alias.scope !4348, !noundef !112
  %i.cp = icmp eq i64 %i.cn, %i.co, !dbg !4504
  br i1 %i.cp, label %bb.n, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCs4PheDXcg4wa_10polars_row.exit, !dbg !4504

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVectE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCs4PheDXcg4wa_10polars_row.exit unwind label %.loopexit100.split, !dbg !4505

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCs4PheDXcg4wa_10polars_row.exit: ; preds = %bb.n, %bb.m
  %i.cq = load ptr, ptr %i.ad, align 8, !dbg !4506, !alias.scope !4348, !nonnull !112, !noundef !112
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %i.cn, !dbg !4507
  store i16 %i.cm, ptr %i.cr, align 2, !dbg !4508
  %i.cs = add i64 %i.cn, 1, !dbg !4509            ; 2 uses
  store i64 %i.cs, ptr %i.ae, align 8, !dbg !4509, !alias.scope !4348
  %i.ct = icmp eq ptr %i.bo, %i.ah, !dbg !4472
  br i1 %i.ct, label %.loopexit99, label %.lr.ph.split, !dbg !4315

.loopexit99:                                      ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCs4PheDXcg4wa_10polars_row.exit, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCs4PheDXcg4wa_10polars_row.exit.us, %bb.c, %.split.us
  %5 = phi i64 [ %i.bm, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCs4PheDXcg4wa_10polars_row.exit.us ], [ %.pre, %.split.us ], [ 0, %bb.c ], [ %i.cs, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCs4PheDXcg4wa_10polars_row.exit ], !dbg !4516 ; 2 uses
  %i.cu = icmp ult i64 %5, 4611686018427387904, !dbg !4524
  call void @llvm.assume(i1 %i.cu), !dbg !4525
  %6 = icmp ne i64 %5, %2, !dbg !4526             ; 2 uses
  br i1 %6, label %bb.o, label %bb.p, !dbg !4526

bb.o:                                             ; preds = %.loopexit99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !4527
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder13with_capacity(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.n, i64 noundef %2)
          to label %bb.q unwind label %.loopexit.split-lp101, !dbg !4528

bb.p:                                             ; preds = %.loopexit99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !4529
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !4529
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB2_14PrimitiveArraytE8from_vecCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
          to label %bb.bk unwind label %.loopexit.split-lp101, !dbg !4530

bb.q:                                             ; preds = %bb.o
  %i.cv = load i64, ptr %i.ae, align 8, !dbg !4531, !noundef !112 ; 5 uses
  %i.cw = icmp ult i64 %i.cv, 4611686018427387904, !dbg !4532
  call void @llvm.assume(i1 %i.cw), !dbg !4533
  %i.cx = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !4534 ; 8 uses
  %i.cy = load i64, ptr %i.cx, align 8, !dbg !4534, !noundef !112 ; 2 uses
  %i.cz = and i64 %i.cy, 63, !dbg !4534           ; 2 uses
  %i.da = add nuw nsw i64 %i.cz, %i.cv, !dbg !4535
  %i.db = icmp samesign ult i64 %i.da, 64, !dbg !4535
  br i1 %i.db, label %bb.s, label %bb.r, !dbg !4535, !prof !312

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder20extend_constant_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.n, i64 noundef %i.cv, i1 noundef zeroext true)
          to label %._crit_edge166 unwind label %.loopexit.split-lp, !dbg !4536

._crit_edge166:                                   ; preds = %bb.r
  %.pre167 = load i64, ptr %i.cx, align 8, !dbg !4537
  br label %bb.t, !dbg !4536

bb.s:                                             ; preds = %bb.q
  %notmask = shl nsw i64 -1, %i.cv, !dbg !4538
  %i.dc = xor i64 %notmask, -1, !dbg !4538
  %i.dd = shl i64 %i.dc, %i.cz, !dbg !4539
  %i.de = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !4540 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !dbg !4540, !noundef !112
  %i.dg = or i64 %i.df, %i.dd, !dbg !4540
  store i64 %i.dg, ptr %i.de, align 8, !dbg !4540
  %i.dh = add i64 %i.cy, %i.cv, !dbg !4541        ; 2 uses
  store i64 %i.dh, ptr %i.cx, align 8, !dbg !4541
  br label %bb.t, !dbg !4542

.loopexit:                                        ; preds = %bb.ac, %bb.ag, %bb.ah, %bb.ai, %.noexc, %bb.ao, %bb.aq
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

.loopexit.split-lp:                               ; preds = %bb.r, %bb.u, %bb.aa, %._crit_edge, %bb.x
  %.sroa.023.3.ph = phi i1 [ true, %bb.r ], [ true, %bb.u ], [ true, %bb.x ], [ false, %._crit_edge ], [ true, %bb.aa ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.t:                                             ; preds = %._crit_edge166, %bb.s
  %i.di = phi i64 [ %.pre167, %._crit_edge166 ], [ %i.dh, %bb.s ], !dbg !4537
  %i.dj = add i64 %i.di, 1, !dbg !4537            ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.n, i64 40, !dbg !4543 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !dbg !4543, !noundef !112
  %i.dm = icmp ugt i64 %i.dj, %i.dl, !dbg !4537
  br i1 %i.dm, label %bb.u, label %bb.v, !dbg !4537, !prof !173

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.n, i64 noundef 1)
          to label %._crit_edge168 unwind label %.loopexit.split-lp, !dbg !4544

._crit_edge168:                                   ; preds = %bb.u
  %.pre169 = load i64, ptr %i.cx, align 8, !dbg !4545, !alias.scope !4370
  %.pre172 = add i64 %.pre169, 1, !dbg !4546
  br label %bb.v, !dbg !4544

bb.v:                                             ; preds = %._crit_edge168, %bb.t
  %.pre-phi = phi i64 [ %.pre172, %._crit_edge168 ], [ %i.dj, %bb.t ], !dbg !4546 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4370), !dbg !4547
  %i.dn = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !4548 ; 5 uses
  %i.do = load i64, ptr %i.dn, align 8, !dbg !4548, !alias.scope !4370, !noundef !112 ; 2 uses
  store i64 %.pre-phi, ptr %i.cx, align 8, !dbg !4546, !alias.scope !4370
  %i.dp = and i64 %.pre-phi, 63, !dbg !4549
  %i.dq = icmp eq i64 %i.dp, 0, !dbg !4549
  br i1 %i.dq, label %bb.w, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit43, !dbg !4550

bb.w:                                             ; preds = %bb.v
  %i.dr = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !4551 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !dbg !4551, !alias.scope !4370, !noundef !112 ; 3 uses
  %i.dt = icmp sgt i64 %i.ds, -1, !dbg !4552
  call void @llvm.assume(i1 %i.dt), !dbg !4553
  %i.du = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !4554
  %i.dv = load ptr, ptr %i.du, align 8, !dbg !4554, !alias.scope !4370, !nonnull !112, !noundef !112
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.ds, !dbg !4555
  store i64 %i.do, ptr %i.dw, align 1, !dbg !4556, !noalias !4370
  %i.dx = add nuw i64 %i.ds, 8, !dbg !4557
  store i64 %i.dx, ptr %i.dr, align 8, !dbg !4558, !alias.scope !4370
  %i.dy = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.do), !dbg !4559
  %i.dz = getelementptr inbounds nuw i8, ptr %i.n, i64 48, !dbg !4560 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !dbg !4560, !alias.scope !4370, !noundef !112
  %i.eb = add i64 %i.ea, %i.dy, !dbg !4560
  store i64 %i.eb, ptr %i.dz, align 8, !dbg !4560, !alias.scope !4370
  store i64 0, ptr %i.dn, align 8, !dbg !4561, !alias.scope !4370
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit43, !dbg !4562

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit43: ; preds = %bb.v, %bb.w
  %i.ec = load i64, ptr %i.ae, align 8, !dbg !4563, !alias.scope !4371, !noundef !112 ; 4 uses
  %i.ed = load i64, ptr %i.s, align 8, !dbg !4564, !range !166, !alias.scope !4371, !noundef !112
  %i.ee = icmp eq i64 %i.ec, %i.ed, !dbg !4565
  br i1 %i.ee, label %bb.x, label %bb.y, !dbg !4565

bb.x:                                             ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit43
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVectE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.y unwind label %.loopexit.split-lp, !dbg !4566

bb.y:                                             ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit43, %bb.x
  %i.ef = load ptr, ptr %i.ad, align 8, !dbg !4567, !alias.scope !4371, !nonnull !112, !noundef !112
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.ef, i64 %i.ec, !dbg !4568
  store i16 0, ptr %i.eg, align 2, !dbg !4569
  %i.eh = add nsw i64 %i.ec, 1, !dbg !4570        ; 4 uses
  store i64 %i.eh, ptr %i.ae, align 8, !dbg !4570, !alias.scope !4371
  %i.ei = icmp slt i64 %i.ec, 4611686018427387903, !dbg !4571
  call void @llvm.assume(i1 %i.ei), !dbg !4572
  %i.ej = icmp samesign ugt i64 %i.eh, %2, !dbg !4573
  br i1 %i.ej, label %bb.aa, label %bb.z, !dbg !4573, !prof !173

bb.z:                                             ; preds = %bb.y
  %.idx128 = shl nuw nsw i64 %i.eh, 4, !dbg !4574 ; 2 uses
  %i.ek = icmp samesign eq i64 %.idx128, %.idx, !dbg !4575
  br i1 %i.ek, label %._crit_edge, label %.lr.ph127, !dbg !4576

.lr.ph127:                                        ; preds = %bb.z
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 %.idx128, !dbg !4574
  %i.em = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 624
  %i.eq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br label %bb.ab, !dbg !4576

bb.aa:                                            ; preds = %bb.y
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.eh, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #20
          to label %bb.bi unwind label %.loopexit.split-lp, !dbg !4577

bb.ab:                                            ; preds = %.lr.ph127, %.backedge
  %.sroa.010.0126 = phi ptr [ %i.el, %.lr.ph127 ], [ %i.es, %.backedge ] ; 8 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.010.0126, i64 16, !dbg !4578 ; 2 uses
  %i.et = load ptr, ptr %.sroa.010.0126, align 8, !dbg !4579, !nonnull !112, !noundef !112
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.010.0126, i64 8, !dbg !4579 ; 5 uses
  %i.ev = load i8, ptr %i.et, align 1, !dbg !4580, !noundef !112
  %i.ew = icmp ne i8 %i.ev, %sext, !dbg !4581     ; 2 uses
  %i.ex = load i64, ptr %i.cx, align 8, !dbg !4582, !noundef !112 ; 2 uses
  %i.ey = add i64 %i.ex, 1, !dbg !4582            ; 2 uses
  %i.ez = load i64, ptr %i.dk, align 8, !dbg !4583, !noundef !112
  %i.fa = icmp ugt i64 %i.ey, %i.ez, !dbg !4582
  br i1 %i.fa, label %bb.ac, label %bb.ad, !dbg !4582, !prof !173

._crit_edge:                                      ; preds = %.backedge, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !4584
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !4585
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !4585
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB2_14PrimitiveArraytE8from_vecCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.ar unwind label %.loopexit.split-lp, !dbg !4584

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.n, i64 noundef 1)
          to label %._crit_edge170 unwind label %.loopexit, !dbg !4586

._crit_edge170:                                   ; preds = %bb.ac
  %.pre171 = load i64, ptr %i.cx, align 8, !dbg !4587, !alias.scope !4385 ; 2 uses
  %.pre173 = add i64 %.pre171, 1, !dbg !4588
  br label %bb.ad, !dbg !4586

bb.ad:                                            ; preds = %._crit_edge170, %bb.ab
  %.pre-phi174 = phi i64 [ %.pre173, %._crit_edge170 ], [ %i.ey, %bb.ab ], !dbg !4588 ; 2 uses
  %i.fb = phi i64 [ %.pre171, %._crit_edge170 ], [ %i.ex, %bb.ab ], !dbg !4587
  call void @llvm.experimental.noalias.scope.decl(metadata !4385), !dbg !4589
  %i.fc = zext i1 %i.ew to i64, !dbg !4590
  %i.fd = and i64 %i.fb, 63, !dbg !4591
  %i.fe = shl nuw i64 %i.fc, %i.fd, !dbg !4590
  %i.ff = load i64, ptr %i.dn, align 8, !dbg !4592, !alias.scope !4385, !noundef !112
  %i.fg = or i64 %i.fe, %i.ff, !dbg !4592         ; 3 uses
  store i64 %i.fg, ptr %i.dn, align 8, !dbg !4592, !alias.scope !4385
  store i64 %.pre-phi174, ptr %i.cx, align 8, !dbg !4588, !alias.scope !4385
  %i.fh = and i64 %.pre-phi174, 63, !dbg !4593
  %i.fi = icmp eq i64 %i.fh, 0, !dbg !4593
  br i1 %i.fi, label %bb.ae, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, !dbg !4594

bb.ae:                                            ; preds = %bb.ad
  %i.fj = load i64, ptr %i.em, align 8, !dbg !4595, !alias.scope !4385, !noundef !112 ; 3 uses
  %i.fk = icmp sgt i64 %i.fj, -1, !dbg !4596
  call void @llvm.assume(i1 %i.fk), !dbg !4597
  %i.fl = load ptr, ptr %i.en, align 8, !dbg !4598, !alias.scope !4385, !nonnull !112, !noundef !112
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fj, !dbg !4599
  store i64 %i.fg, ptr %i.fm, align 1, !dbg !4600, !noalias !4385
  %i.fn = add nuw i64 %i.fj, 8, !dbg !4601
  store i64 %i.fn, ptr %i.em, align 8, !dbg !4602, !alias.scope !4385
  %i.fo = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fg), !dbg !4603
  %i.fp = load i64, ptr %i.eo, align 8, !dbg !4604, !alias.scope !4385, !noundef !112
  %i.fq = add i64 %i.fp, %i.fo, !dbg !4604
  store i64 %i.fq, ptr %i.eo, align 8, !dbg !4604, !alias.scope !4385
  store i64 0, ptr %i.dn, align 8, !dbg !4605, !alias.scope !4385
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, !dbg !4606

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit: ; preds = %bb.ae, %bb.ad
  br i1 %i.ew, label %bb.af, label %bb.ap, !dbg !4607

end_hunk_2
