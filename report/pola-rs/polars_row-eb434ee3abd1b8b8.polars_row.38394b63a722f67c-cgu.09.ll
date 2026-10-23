Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_row-eb434ee3abd1b8b8.polars_row.38394b63a722f67c-cgu.09?download=true
inline.NumInlined: 311
inline.NumDeleted: 166
begin_hunk_0_@_RINvNtNtCs4PheDXcg4wa_10polars_row8variable4utf810encode_strINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRtINtNtNtB15_5slice4iter4ItertENtNtB1P_8iterator10BitmapIterENCINvNtB6_6encode16encode_cat_arraytE0EEB6_:bb.a

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.11.083, i64 2, !dbg !2812
  br label %bb.g, !dbg !2813

._crit_edge88:                                    ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i, %bb.e, %bb.i, %bb.a
  ret void, !dbg !2814

bb.g:                                             ; preds = %bb.f, %bb.d
  %.sroa.23.4 = phi i64 [ %.sroa.23.078, %bb.f ], [ %.sroa.23.2, %bb.d ], !dbg !2797
  %.sroa.21.3 = phi i64 [ %.sroa.21.079, %bb.f ], [ %.sroa.21.1, %bb.d ], !dbg !2797
  %.sroa.19.3 = phi i64 [ %.sroa.19.080, %bb.f ], [ %.sroa.19.1, %bb.d ], !dbg !2797
  %.sroa.14.4 = phi ptr [ %.sroa.14.082, %bb.f ], [ %.sroa.14.2, %bb.d ], !dbg !2797
  %.sroa.11.2 = phi ptr [ %i.w, %bb.f ], [ %.sroa.11.083, %bb.d ], !dbg !2797
  %.sroa.9.3 = phi ptr [ null, %bb.f ], [ %spec.select, %bb.d ], !dbg !2797
  %.sroa.3.0.i.pn.i.ph.ph.i.i = phi ptr [ %.sroa.11.083, %bb.f ], [ %i.t, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.sroa.0.0.copyload) ]
  %.val.i.i.i = load ptr, ptr %.sroa.3.sroa.0.0.copyload, align 8, !dbg !2815, !noalias !2763, !nonnull !112, !noundef !112
  %.val3.i.i.i = load i16, ptr %.sroa.3.0.i.pn.i.ph.ph.i.i, align 2, !dbg !2815, !alias.scope !2764, !noalias !2765, !noundef !112
  %i.x = zext i16 %.val3.i.i.i to i64, !dbg !2816
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 256, !dbg !2817
  %i.z = tail call noundef i64 @_RNvMs8_NtCsaIrsFcbE0XP_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCs4PheDXcg4wa_10polars_row(i64 noundef %i.x), !dbg !2818, !noalias !2763
  %i.aa = tail call noundef nonnull align 8 ptr @_RNvMs2_NtCsaIrsFcbE0XP_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryTReyEEKj3a_E13get_uncheckedCs4PheDXcg4wa_10polars_row(ptr noundef nonnull align 8 %i.y, i64 noundef %i.z), !dbg !2819, !noalias !2763 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !2820, !noalias !2763, !nonnull !112, !noundef !112 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !2820
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !2820, !noalias !2763, !noundef !112 ; 11 uses
  %i.ae = load i64, ptr %.sroa.018.085, align 8, !dbg !2821, !noundef !112 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae, !dbg !2822 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ad, !dbg !2823
  %i.ah = icmp samesign eq i64 %i.ad, 0, !dbg !2824
  br i1 %i.ah, label %._crit_edge, label %iter.check, !dbg !2825

iter.check:                                       ; preds = %bb.g
  %min.iters.check = icmp ult i64 %i.ad, 4, !dbg !2825
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !2825

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check93 = icmp ult i64 %i.ad, 32, !dbg !2825
  br i1 %min.iters.check93, label %vec.epilog.ph, label %vector.ph, !dbg !2825

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ai = and i64 %i.ad, 28
  %n.vec = and i64 %i.ad, -32                     ; 5 uses
  %i.aj = getelementptr i8, ptr %i.ab, i64 %n.vec
  br label %vector.body, !dbg !2825

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !2826 ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ab, i64 %index ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep, i64 16, !dbg !2827
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !dbg !2827
  %wide.load94 = load <16 x i8>, ptr %i.ak, align 1, !dbg !2827
  %i.al = add <16 x i8> %wide.load, splat (i8 2), !dbg !2828
  %i.am = add <16 x i8> %wide.load94, splat (i8 2), !dbg !2828
  %i.an = xor <16 x i8> %i.al, %broadcast.splat, !dbg !2829
  %i.ao = xor <16 x i8> %i.am, %broadcast.splat, !dbg !2829
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 %index, !dbg !2830 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16, !dbg !2831
  store <16 x i8> %i.an, ptr %i.ap, align 1, !dbg !2831
  store <16 x i8> %i.ao, ptr %i.aq, align 1, !dbg !2831
  %index.next = add nuw i64 %index, 32, !dbg !2826 ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec, !dbg !2825
  br i1 %i.ar, label %middle.block, label %vector.body, !dbg !2825, !llvm.loop !2750

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec, !dbg !2825
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !2825

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !244

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec95 = and i64 %i.ad, -4                    ; 4 uses
  %i.as = getelementptr i8, ptr %i.ab, i64 %n.vec95
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index98 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next101, %vec.epilog.vector.body ], !dbg !2826 ; 3 uses
  %next.gep99 = getelementptr i8, ptr %i.ab, i64 %index98
  %wide.load100 = load <4 x i8>, ptr %next.gep99, align 1, !dbg !2827
  %i.at = add <4 x i8> %wide.load100, splat (i8 2), !dbg !2828
  %i.au = xor <4 x i8> %i.at, %broadcast.splat97, !dbg !2829
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 %index98, !dbg !2830
  store <4 x i8> %i.au, ptr %i.av, align 1, !dbg !2831
  %index.next101 = add nuw i64 %index98, 4, !dbg !2826 ; 2 uses
  %i.aw = icmp eq i64 %index.next101, %n.vec95, !dbg !2825
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !2825, !llvm.loop !2751

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n102 = icmp eq i64 %i.ad, %n.vec95, !dbg !2825
  br i1 %cmp.n102, label %._crit_edge, label %.lr.ph.preheader, !dbg !2825

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.726.077.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec95, %vec.epilog.middle.block ]
  %.sroa.024.076.ph = phi ptr [ %i.ab, %iter.check ], [ %i.aj, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ]
  br label %.lr.ph, !dbg !2825

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2764), !dbg !2832
  %i.ax = load i64, ptr %.sroa.018.085, align 8, !dbg !2821, !noundef !112 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %i.ax, !dbg !2822
  store i8 %sext, ptr %i.ay, align 1, !dbg !2833
  %i.az = add i64 %i.ax, 1, !dbg !2834
  br label %bb.i, !dbg !2835

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %.sroa.9.566 = phi ptr [ %spec.select, %bb.h ], [ %.sroa.9.3, %._crit_edge ]
  %.sroa.11.364 = phi ptr [ %.sroa.11.083, %bb.h ], [ %.sroa.11.2, %._crit_edge ]
  %.sroa.14.662 = phi ptr [ %.sroa.14.2, %bb.h ], [ %.sroa.14.4, %._crit_edge ]
  %.sroa.19.558 = phi i64 [ %.sroa.19.1, %bb.h ], [ %.sroa.19.3, %._crit_edge ]
  %.sroa.21.556 = phi i64 [ %.sroa.21.1, %bb.h ], [ %.sroa.21.3, %._crit_edge ]
  %.sroa.23.654 = phi i64 [ %.sroa.23.2, %bb.h ], [ %.sroa.23.4, %._crit_edge ]
  %storemerge = phi i64 [ %i.az, %bb.h ], [ %i.bk, %._crit_edge ], !dbg !2836
  store i64 %storemerge, ptr %.sroa.018.085, align 8, !dbg !2836
  %i.ba = icmp eq ptr %i.f, %i.c, !dbg !2783
  br i1 %i.ba, label %._crit_edge88, label %bb.b, !dbg !2784

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.726.077 = phi i64 [ %i.bc, %.lr.ph ], [ %.sroa.726.077.ph, %.lr.ph.preheader ] ; 2 uses
  %.sroa.024.076 = phi ptr [ %i.bb, %.lr.ph ], [ %.sroa.024.076.ph, %.lr.ph.preheader ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.024.076, i64 1, !dbg !2837 ; 2 uses
  %i.bc = add nuw i64 %.sroa.726.077, 1, !dbg !2826
  %i.bd = load i8, ptr %.sroa.024.076, align 1, !dbg !2827, !noundef !112
  %i.be = add i8 %i.bd, 2, !dbg !2828
  %i.bf = xor i8 %i.be, %.sroa.01.0, !dbg !2829
  %i.bg = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.726.077, !dbg !2830
  store i8 %i.bf, ptr %i.bg, align 1, !dbg !2831
  %i.bh = icmp eq ptr %i.bb, %i.ag, !dbg !2824
  br i1 %i.bh, label %._crit_edge, label %.lr.ph, !dbg !2825, !llvm.loop !2753

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad, !dbg !2838
  store i8 %i.e, ptr %i.bi, align 1, !dbg !2839
  %i.bj = add i64 %i.ad, 1, !dbg !2840
  %i.bk = add i64 %i.bj, %i.ae, !dbg !2841
  br label %bb.i, !dbg !2842
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs4PheDXcg4wa_10polars_row8variable4utf817decode_str_as_cathEB6_(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef nonnull align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2, i8 noundef %3, ptr noundef nonnull align 128 %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2843 {
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
  %i.t = shl i8 %3, 6, !dbg !3226
  %sext = ashr i8 %i.t, 7, !dbg !3226             ; 3 uses
  %i.u = and i8 %3, 1, !dbg !3227
  %.not27 = icmp eq i8 %i.u, 0, !dbg !3227        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !3228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !3229
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !3229
  %i.v = load i64, ptr %i.g, align 8, !dbg !3229, !range !165, !noundef !112
  %i.w = trunc nuw i64 %i.v to i1, !dbg !3230
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !3231
  %i.y = load i64, ptr %i.x, align 8, !dbg !3231, !range !114, !noundef !112 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !3231 ; 2 uses
  br i1 %i.w, label %bb.b, label %bb.c, !dbg !3230, !prof !173

bb.b:                                             ; preds = %bb.a
  %i.aa = load i64, ptr %i.z, align 8, !dbg !3232
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.y, i64 %i.aa) #20, !dbg !3233
  unreachable, !dbg !3233

bb.c:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %i.z, align 8, !dbg !3234, !nonnull !112, !noundef !112
  %i.ac = icmp samesign ule i64 %2, %i.y, !dbg !3235
  tail call void @llvm.assume(i1 %i.ac), !dbg !3236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !3237
  store i64 %i.y, ptr %i.s, align 8, !dbg !3238
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !3238 ; 5 uses
  store ptr %i.ab, ptr %i.ad, align 8, !dbg !3238
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !3238 ; 12 uses
  store i64 0, ptr %i.ae, align 8, !dbg !3238
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !3239
  store i64 0, ptr %i.r, align 8, !dbg !3240
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !3240 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.af, align 8, !dbg !3240
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !3240 ; 7 uses
  store i64 0, ptr %i.ag, align 8, !dbg !3240
  %.idx = shl nuw nsw i64 %2, 4, !dbg !3241       ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.idx, !dbg !3241 ; 3 uses
  %i.ai = icmp eq i64 %2, 0, !dbg !3242
  br i1 %i.ai, label %bb.p, label %.lr.ph, !dbg !3086

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
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.03.0118.us, i64 16, !dbg !3243 ; 2 uses
  %i.an = load ptr, ptr %.sroa.03.0118.us, align 8, !dbg !3244, !nonnull !112, !noundef !112 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.03.0118.us, i64 8, !dbg !3244 ; 4 uses
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !3244, !noundef !112 ; 3 uses
  %i.aq = icmp ne i64 %i.ap, 0, !dbg !3245
  call void @llvm.assume(i1 %i.aq), !dbg !3246
  %i.ar = load i8, ptr %i.an, align 1, !dbg !3247, !noundef !112
  %i.as = icmp eq i8 %i.ar, %sext, !dbg !3248
  br i1 %i.as, label %.split.us, label %bb.d, !dbg !3248

bb.d:                                             ; preds = %.lr.ph.split.us
  store i64 0, ptr %i.ag, align 8, !dbg !3249
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ap, !dbg !3250
  store ptr %i.an, ptr %i.p, align 8, !dbg !3251
  store ptr %i.at, ptr %.sroa.47.0..sroa_idx, align 8, !dbg !3251
  store i8 0, ptr %.sroa.58.0..sroa_idx, align 8, !dbg !3251
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1h_10take_while9TakeWhileINtNtNtB1l_5slice4iter4IterhENCINvNtNtCs4PheDXcg4wa_10polars_row8variable4utf817decode_str_as_cathEs0_0ENCB30_s1_0EE11spec_extendB37_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.p)
          to label %bb.e unwind label %.loopexit100.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !3252

bb.e:                                             ; preds = %bb.d
  %i.au = load ptr, ptr %.sroa.03.0118.us, align 8, !dbg !3253, !nonnull !112, !noundef !112
  %i.av = load i64, ptr %i.ao, align 8, !dbg !3253, !noundef !112
  %i.aw = load i64, ptr %i.ag, align 8, !dbg !3254, !noundef !112 ; 5 uses
  %i.ax = icmp sgt i64 %i.aw, -1, !dbg !3255
  call void @llvm.assume(i1 %i.ax), !dbg !3256
  %i.ay = add nuw i64 %i.aw, 1, !dbg !3257        ; 2 uses
  %i.az = sub nuw i64 %i.av, %i.ay, !dbg !3258
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ay, !dbg !3259
  store ptr %i.ba, ptr %.sroa.03.0118.us, align 8, !dbg !3260
  store i64 %i.az, ptr %i.ao, align 8, !dbg !3260
  %i.bb = load ptr, ptr %i.af, align 8, !dbg !3261, !nonnull !112, !noundef !112 ; 3 uses
  %i.bc = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aj, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bb, i64 noundef %i.aw)
          to label %.noexc40.us unwind label %.loopexit100.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !3262

.noexc40.us:                                      ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !3263, !noalias !3116
  store ptr %i.bb, ptr %i.b, align 8, !dbg !3263, !noalias !3116
  store i64 %i.aw, ptr %i.ak, align 8, !dbg !3263, !noalias !3116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3264, !noalias !3116
  invoke void @_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE22try_get_or_insert_withNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2e_18CategoricalMapping20insert_cat_with_hash0NCB2b_s_0ECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noundef nonnull align 128 %4, i64 noundef %i.bc, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bb, i64 noundef %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noundef nonnull align 128 %4)
          to label %.noexc41.us unwind label %.loopexit100.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !3265

.noexc41.us:                                      ; preds = %.noexc40.us
  %i.bd = load i64, ptr %i.a, align 8, !dbg !3266, !range !304, !noalias !3116, !noundef !112 ; 2 uses
  %.not.i39.us = icmp eq i64 %i.bd, 18, !dbg !3266
  br i1 %.not.i39.us, label %bb.f, label %.split124.us, !dbg !3267

bb.f:                                             ; preds = %.noexc41.us
  %i.be = load ptr, ptr %i.al, align 8, !dbg !3268, !noalias !3116, !nonnull !112, !align !305, !noundef !112
  %i.bf = load i32, ptr %i.be, align 4, !dbg !3268, !noalias !3117, !noundef !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3269, !noalias !3116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3270, !noalias !3116
  %i.bg = trunc i32 %i.bf to i8, !dbg !3271
  %i.bh = load i64, ptr %i.ae, align 8, !dbg !3272, !alias.scope !3119, !noundef !112 ; 3 uses
  %i.bi = load i64, ptr %i.s, align 8, !dbg !3273, !range !166, !alias.scope !3119, !noundef !112
  %i.bj = icmp eq i64 %i.bh, %i.bi, !dbg !3274
  br i1 %i.bj, label %bb.g, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit.us, !dbg !3274

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit.us unwind label %.loopexit100.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !3275

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit.us: ; preds = %bb.g, %bb.f
  %i.bk = load ptr, ptr %i.ad, align 8, !dbg !3276, !alias.scope !3119, !nonnull !112, !noundef !112
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bh, !dbg !3277
  store i8 %i.bg, ptr %i.bl, align 1, !dbg !3278
  %i.bm = add i64 %i.bh, 1, !dbg !3279            ; 2 uses
  store i64 %i.bm, ptr %i.ae, align 8, !dbg !3279, !alias.scope !3119
  %i.bn = icmp eq ptr %i.am, %i.ah, !dbg !3242
  br i1 %i.bn, label %.loopexit99, label %.lr.ph.split.us, !dbg !3086

.lr.ph.split:                                     ; preds = %.lr.ph, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit
  %.sroa.03.0118 = phi ptr [ %i.bo, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit ], [ %1, %.lr.ph ] ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.03.0118, i64 16, !dbg !3243 ; 2 uses
  %i.bp = load ptr, ptr %.sroa.03.0118, align 8, !dbg !3244, !nonnull !112, !noundef !112 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.03.0118, i64 8, !dbg !3244 ; 4 uses
  %i.br = load i64, ptr %i.bq, align 8, !dbg !3244, !noundef !112 ; 3 uses
  %i.bs = icmp ne i64 %i.br, 0, !dbg !3245
  call void @llvm.assume(i1 %i.bs), !dbg !3246
  %i.bt = load i8, ptr %i.bp, align 1, !dbg !3247, !noundef !112
  %i.bu = icmp eq i8 %i.bt, %sext, !dbg !3248
  br i1 %i.bu, label %.split.us, label %bb.h, !dbg !3248

bb.h:                                             ; preds = %.lr.ph.split
  store i64 0, ptr %i.ag, align 8, !dbg !3249
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.br, !dbg !3280
  store ptr %i.bp, ptr %i.q, align 8, !dbg !3281
  store ptr %i.bv, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !3281
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !3281
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1h_10take_while9TakeWhileINtNtNtB1l_5slice4iter4IterhENCINvNtNtCs4PheDXcg4wa_10polars_row8variable4utf817decode_str_as_cathE0ENCB30_s_0EE11spec_extendB37_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.q)
          to label %bb.i unwind label %.loopexit100.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !3282

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi ptr [ %i.an, %.lr.ph.split.us ], [ %i.bp, %.lr.ph.split ], !dbg !3283
  %.us-phi119 = phi ptr [ %i.ao, %.lr.ph.split.us ], [ %i.bq, %.lr.ph.split ], !dbg !3283
  %.us-phi120 = phi i64 [ %i.ap, %.lr.ph.split.us ], [ %i.br, %.lr.ph.split ], !dbg !3283
  %.us-phi121 = phi ptr [ %.sroa.03.0118.us, %.lr.ph.split.us ], [ %.sroa.03.0118, %.lr.ph.split ], !dbg !3283
  %i.bw = add i64 %.us-phi120, -1, !dbg !3283
  %i.bx = getelementptr inbounds nuw i8, ptr %.us-phi, i64 1, !dbg !3284
  store ptr %i.bx, ptr %.us-phi121, align 8, !dbg !3285
  store i64 %i.bw, ptr %.us-phi119, align 8, !dbg !3285
  %.pre = load i64, ptr %i.ae, align 8, !dbg !3286
  br label %.loopexit99, !dbg !3287

.body34:                                          ; preds = %.loopexit100.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp101, %.body.i, %bb.bg, %bb.j, %bb.bj
  %.sroa.023.0 = phi i1 [ true, %bb.j ], [ %.sroa.023.3.lpad-body, %bb.bj ], [ false, %.body.i ], [ false, %bb.bg ], [ %5, %.loopexit.split-lp101 ], [ true, %.loopexit100.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], !dbg !3288
  %.pn29 = phi { ptr, i32 } [ %i.ci, %bb.j ], [ %eh.lpad-body, %bb.bj ], [ %eh.lpad-body.i, %.body.i ], [ %i.hj, %bb.bg ], [ %lpad.loopexit.split-lp103, %.loopexit.split-lp101 ], [ %lpad.loopexit.split-lp270, %.loopexit100.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(24) %i.r) #19
          to label %bb.bf unwind label %bb.bh, !dbg !3224

.loopexit100.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %bb.e, %.noexc40.us, %bb.g, %bb.n, %.noexc40, %bb.i, %bb.h
  %lpad.loopexit.split-lp270 = landingpad { ptr, i32 }
          cleanup
  br label %.body34

.loopexit.split-lp101:                            ; preds = %bb.o, %bb.p
  %5 = phi i1 [ true, %bb.o ], [ false, %bb.p ]
  %lpad.loopexit.split-lp103 = landingpad { ptr, i32 }
          cleanup
  br label %.body34

bb.i:                                             ; preds = %bb.h
  %i.by = load ptr, ptr %.sroa.03.0118, align 8, !dbg !3253, !nonnull !112, !noundef !112
  %i.bz = load i64, ptr %i.bq, align 8, !dbg !3253, !noundef !112
  %i.ca = load i64, ptr %i.ag, align 8, !dbg !3254, !noundef !112 ; 5 uses
  %i.cb = icmp sgt i64 %i.ca, -1, !dbg !3255
  call void @llvm.assume(i1 %i.cb), !dbg !3256
  %i.cc = add nuw i64 %i.ca, 1, !dbg !3257        ; 2 uses
  %i.cd = sub nuw i64 %i.bz, %i.cc, !dbg !3258
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cc, !dbg !3259
  store ptr %i.ce, ptr %.sroa.03.0118, align 8, !dbg !3260
  store i64 %i.cd, ptr %i.bq, align 8, !dbg !3260
  %i.cf = load ptr, ptr %i.af, align 8, !dbg !3261, !nonnull !112, !noundef !112 ; 3 uses
  %i.cg = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aj, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cf, i64 noundef %i.ca)
          to label %.noexc40 unwind label %.loopexit100.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !3262

.noexc40:                                         ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !3263, !noalias !3116
  store ptr %i.cf, ptr %i.b, align 8, !dbg !3263, !noalias !3116
  store i64 %i.ca, ptr %i.ak, align 8, !dbg !3263, !noalias !3116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3264, !noalias !3116
  invoke void @_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE22try_get_or_insert_withNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2e_18CategoricalMapping20insert_cat_with_hash0NCB2b_s_0ECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noundef nonnull align 128 %4, i64 noundef %i.cg, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cf, i64 noundef %i.ca, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noundef nonnull align 128 %4)
          to label %.noexc41 unwind label %.loopexit100.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !3265

.noexc41:                                         ; preds = %.noexc40
  %i.ch = load i64, ptr %i.a, align 8, !dbg !3266, !range !304, !noalias !3116, !noundef !112 ; 2 uses
  %.not.i39 = icmp eq i64 %i.ch, 18, !dbg !3266
  br i1 %.not.i39, label %bb.m, label %.split124.us, !dbg !3267

.split124.us:                                     ; preds = %.noexc41, %.noexc41.us
  %.us-phi125 = phi i64 [ %i.bd, %.noexc41.us ], [ %i.ch, %.noexc41 ], !dbg !3289
  %.sroa.476.0.copyload = load i32, ptr %i.al, align 8, !dbg !3289, !noalias !3116
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12, !dbg !3289
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 12, !dbg !3290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !3290, !noalias !3134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.577.0..sroa_idx, i64 60, i1 false), !dbg !3289, !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3269, !noalias !3116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3270, !noalias !3116
  store i64 %.us-phi125, ptr %i.e, align 8, !dbg !3290, !noalias !3135
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !3290
  store i32 %.sroa.476.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !3290, !noalias !3135
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #20
          to label %bb.k unwind label %bb.j, !dbg !3291, !noalias !3136

bb.j:                                             ; preds = %.split124.us
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e) #19
          to label %.body34 unwind label %bb.l, !dbg !3292, !noalias !3136

bb.k:                                             ; preds = %.split124.us
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !3293, !noalias !3136
  unreachable, !dbg !3293

bb.m:                                             ; preds = %.noexc41
  %i.ck = load ptr, ptr %i.al, align 8, !dbg !3268, !noalias !3116, !nonnull !112, !align !305, !noundef !112
  %i.cl = load i32, ptr %i.ck, align 4, !dbg !3268, !noalias !3117, !noundef !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3269, !noalias !3116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3270, !noalias !3116
  %i.cm = trunc i32 %i.cl to i8, !dbg !3271
  %i.cn = load i64, ptr %i.ae, align 8, !dbg !3272, !alias.scope !3119, !noundef !112 ; 3 uses
  %i.co = load i64, ptr %i.s, align 8, !dbg !3273, !range !166, !alias.scope !3119, !noundef !112
  %i.cp = icmp eq i64 %i.cn, %i.co, !dbg !3274
  br i1 %i.cp, label %bb.n, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit, !dbg !3274

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit unwind label %.loopexit100.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !3275

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit: ; preds = %bb.n, %bb.m
  %i.cq = load ptr, ptr %i.ad, align 8, !dbg !3276, !alias.scope !3119, !nonnull !112, !noundef !112
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cn, !dbg !3277
  store i8 %i.cm, ptr %i.cr, align 1, !dbg !3278
  %i.cs = add i64 %i.cn, 1, !dbg !3279            ; 2 uses
  store i64 %i.cs, ptr %i.ae, align 8, !dbg !3279, !alias.scope !3119
  %i.ct = icmp eq ptr %i.bo, %i.ah, !dbg !3242
  br i1 %i.ct, label %.loopexit99, label %.lr.ph.split, !dbg !3086

.loopexit99:                                      ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit.us, %.split.us
  %6 = phi i64 [ %i.bm, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit.us ], [ %.pre, %.split.us ], [ %i.cs, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs4PheDXcg4wa_10polars_row.exit ], !dbg !3286 ; 2 uses
  %i.cu = icmp sgt i64 %6, -1, !dbg !3294
  call void @llvm.assume(i1 %i.cu), !dbg !3295
  %.not = icmp eq i64 %6, %2, !dbg !3296
  br i1 %.not, label %bb.p, label %bb.o, !dbg !3296

bb.o:                                             ; preds = %.loopexit99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !3297
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder13with_capacity(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.n, i64 noundef %2)
          to label %bb.q unwind label %.loopexit.split-lp101, !dbg !3298

bb.p:                                             ; preds = %bb.c, %.loopexit99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !3299
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !3299
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB2_14PrimitiveArrayhE8from_vecCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
          to label %bb.bk unwind label %.loopexit.split-lp101, !dbg !3300

bb.q:                                             ; preds = %bb.o
  %i.cv = load i64, ptr %i.ae, align 8, !dbg !3301, !noundef !112 ; 5 uses
  %i.cw = icmp sgt i64 %i.cv, -1, !dbg !3302
  call void @llvm.assume(i1 %i.cw), !dbg !3303
  %i.cx = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !3304 ; 8 uses
  %i.cy = load i64, ptr %i.cx, align 8, !dbg !3304, !noundef !112 ; 2 uses
  %i.cz = and i64 %i.cy, 63, !dbg !3304           ; 2 uses
  %i.da = add nuw i64 %i.cz, %i.cv, !dbg !3305
  %i.db = icmp ult i64 %i.da, 64, !dbg !3305
  br i1 %i.db, label %bb.s, label %bb.r, !dbg !3305, !prof !312

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder20extend_constant_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.n, i64 noundef %i.cv, i1 noundef zeroext true)
          to label %._crit_edge168 unwind label %.loopexit.split-lp, !dbg !3306

._crit_edge168:                                   ; preds = %bb.r
  %.pre169 = load i64, ptr %i.cx, align 8, !dbg !3307
  br label %bb.t, !dbg !3306

bb.s:                                             ; preds = %bb.q
  %notmask = shl nsw i64 -1, %i.cv, !dbg !3308
  %i.dc = xor i64 %notmask, -1, !dbg !3308
  %i.dd = shl i64 %i.dc, %i.cz, !dbg !3309
  %i.de = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !3310 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !dbg !3310, !noundef !112
  %i.dg = or i64 %i.df, %i.dd, !dbg !3310
  store i64 %i.dg, ptr %i.de, align 8, !dbg !3310
  %i.dh = add i64 %i.cy, %i.cv, !dbg !3311        ; 2 uses
  store i64 %i.dh, ptr %i.cx, align 8, !dbg !3311
  br label %bb.t, !dbg !3312

.loopexit:                                        ; preds = %bb.ac, %bb.ag, %bb.ah, %bb.ai, %.noexc, %bb.ao, %bb.aq
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

.loopexit.split-lp:                               ; preds = %bb.r, %bb.u, %bb.aa, %._crit_edge, %bb.x
  %.sroa.023.3.ph = phi i1 [ true, %bb.r ], [ true, %bb.u ], [ true, %bb.x ], [ false, %._crit_edge ], [ true, %bb.aa ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.t:                                             ; preds = %._crit_edge168, %bb.s
  %i.di = phi i64 [ %.pre169, %._crit_edge168 ], [ %i.dh, %bb.s ], !dbg !3307
  %i.dj = add i64 %i.di, 1, !dbg !3307            ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.n, i64 40, !dbg !3313 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !dbg !3313, !noundef !112
  %i.dm = icmp ugt i64 %i.dj, %i.dl, !dbg !3307
  br i1 %i.dm, label %bb.u, label %bb.v, !dbg !3307, !prof !173

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.n, i64 noundef 1)
          to label %._crit_edge170 unwind label %.loopexit.split-lp, !dbg !3314

._crit_edge170:                                   ; preds = %bb.u
  %.pre171 = load i64, ptr %i.cx, align 8, !dbg !3315, !alias.scope !3141
  %.pre174 = add i64 %.pre171, 1, !dbg !3316
  br label %bb.v, !dbg !3314

bb.v:                                             ; preds = %._crit_edge170, %bb.t
  %.pre-phi = phi i64 [ %.pre174, %._crit_edge170 ], [ %i.dj, %bb.t ], !dbg !3316 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3141), !dbg !3317
  %i.dn = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !3318 ; 5 uses
  %i.do = load i64, ptr %i.dn, align 8, !dbg !3318, !alias.scope !3141, !noundef !112 ; 2 uses
  store i64 %.pre-phi, ptr %i.cx, align 8, !dbg !3316, !alias.scope !3141
  %i.dp = and i64 %.pre-phi, 63, !dbg !3319
  %i.dq = icmp eq i64 %i.dp, 0, !dbg !3319
  br i1 %i.dq, label %bb.w, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit43, !dbg !3320

bb.w:                                             ; preds = %bb.v
  %i.dr = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !3321 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !dbg !3321, !alias.scope !3141, !noundef !112 ; 3 uses
  %i.dt = icmp sgt i64 %i.ds, -1, !dbg !3322
  call void @llvm.assume(i1 %i.dt), !dbg !3323
  %i.du = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !3324
  %i.dv = load ptr, ptr %i.du, align 8, !dbg !3324, !alias.scope !3141, !nonnull !112, !noundef !112
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.ds, !dbg !3325
  store i64 %i.do, ptr %i.dw, align 1, !dbg !3326, !noalias !3141
  %i.dx = add nuw i64 %i.ds, 8, !dbg !3327
  store i64 %i.dx, ptr %i.dr, align 8, !dbg !3328, !alias.scope !3141
  %i.dy = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.do), !dbg !3329
  %i.dz = getelementptr inbounds nuw i8, ptr %i.n, i64 48, !dbg !3330 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !dbg !3330, !alias.scope !3141, !noundef !112
  %i.eb = add i64 %i.ea, %i.dy, !dbg !3330
  store i64 %i.eb, ptr %i.dz, align 8, !dbg !3330, !alias.scope !3141
  store i64 0, ptr %i.dn, align 8, !dbg !3331, !alias.scope !3141
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit43, !dbg !3332

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit43: ; preds = %bb.v, %bb.w
  %i.ec = load i64, ptr %i.ae, align 8, !dbg !3333, !alias.scope !3142, !noundef !112 ; 3 uses
  %i.ed = load i64, ptr %i.s, align 8, !dbg !3334, !range !166, !alias.scope !3142, !noundef !112
  %i.ee = icmp eq i64 %i.ec, %i.ed, !dbg !3335
  br i1 %i.ee, label %bb.x, label %bb.y, !dbg !3335

bb.x:                                             ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit43
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.y unwind label %.loopexit.split-lp, !dbg !3336

bb.y:                                             ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit43, %bb.x
  %i.ef = load ptr, ptr %i.ad, align 8, !dbg !3337, !alias.scope !3142, !nonnull !112, !noundef !112
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ec, !dbg !3338
  store i8 0, ptr %i.eg, align 1, !dbg !3339
  %i.eh = add nsw i64 %i.ec, 1, !dbg !3340        ; 4 uses
  store i64 %i.eh, ptr %i.ae, align 8, !dbg !3340, !alias.scope !3142
  %i.ei = icmp samesign ugt i64 %i.eh, %2, !dbg !3341
  br i1 %i.ei, label %bb.aa, label %bb.z, !dbg !3341, !prof !173

bb.z:                                             ; preds = %bb.y
  %.idx128 = shl nuw nsw i64 %i.eh, 4, !dbg !3342 ; 2 uses
  %i.ej = icmp samesign eq i64 %.idx128, %.idx, !dbg !3343
  br i1 %i.ej, label %._crit_edge, label %.lr.ph127, !dbg !3344

.lr.ph127:                                        ; preds = %bb.z
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 %.idx128, !dbg !3342
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
  br label %bb.ab, !dbg !3344

bb.aa:                                            ; preds = %bb.y
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.eh, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #20
          to label %bb.bi unwind label %.loopexit.split-lp, !dbg !3345

bb.ab:                                            ; preds = %.lr.ph127, %.backedge
  %.sroa.010.0126 = phi ptr [ %i.ek, %.lr.ph127 ], [ %i.er, %.backedge ] ; 8 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.010.0126, i64 16, !dbg !3346 ; 2 uses
  %i.es = load ptr, ptr %.sroa.010.0126, align 8, !dbg !3347, !nonnull !112, !noundef !112
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.010.0126, i64 8, !dbg !3347 ; 5 uses
  %i.eu = load i8, ptr %i.es, align 1, !dbg !3348, !noundef !112
  %i.ev = icmp ne i8 %i.eu, %sext, !dbg !3349     ; 2 uses
  %i.ew = load i64, ptr %i.cx, align 8, !dbg !3350, !noundef !112 ; 2 uses
  %i.ex = add i64 %i.ew, 1, !dbg !3350            ; 2 uses
  %i.ey = load i64, ptr %i.dk, align 8, !dbg !3351, !noundef !112
  %i.ez = icmp ugt i64 %i.ex, %i.ey, !dbg !3350
  br i1 %i.ez, label %bb.ac, label %bb.ad, !dbg !3350, !prof !173

._crit_edge:                                      ; preds = %.backedge, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !3352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !3353
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !3353
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB2_14PrimitiveArrayhE8from_vecCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.ar unwind label %.loopexit.split-lp, !dbg !3352

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.n, i64 noundef 1)
          to label %._crit_edge172 unwind label %.loopexit, !dbg !3354

._crit_edge172:                                   ; preds = %bb.ac
  %.pre173 = load i64, ptr %i.cx, align 8, !dbg !3355, !alias.scope !3155 ; 2 uses
  %.pre175 = add i64 %.pre173, 1, !dbg !3356
  br label %bb.ad, !dbg !3354

bb.ad:                                            ; preds = %._crit_edge172, %bb.ab
  %.pre-phi176 = phi i64 [ %.pre175, %._crit_edge172 ], [ %i.ex, %bb.ab ], !dbg !3356 ; 2 uses
  %i.fa = phi i64 [ %.pre173, %._crit_edge172 ], [ %i.ew, %bb.ab ], !dbg !3355
  call void @llvm.experimental.noalias.scope.decl(metadata !3155), !dbg !3357
  %i.fb = zext i1 %i.ev to i64, !dbg !3358
  %i.fc = and i64 %i.fa, 63, !dbg !3359
  %i.fd = shl nuw i64 %i.fb, %i.fc, !dbg !3358
  %i.fe = load i64, ptr %i.dn, align 8, !dbg !3360, !alias.scope !3155, !noundef !112
  %i.ff = or i64 %i.fd, %i.fe, !dbg !3360         ; 3 uses
  store i64 %i.ff, ptr %i.dn, align 8, !dbg !3360, !alias.scope !3155
  store i64 %.pre-phi176, ptr %i.cx, align 8, !dbg !3356, !alias.scope !3155
  %i.fg = and i64 %.pre-phi176, 63, !dbg !3361
  %i.fh = icmp eq i64 %i.fg, 0, !dbg !3361
  br i1 %i.fh, label %bb.ae, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, !dbg !3362

bb.ae:                                            ; preds = %bb.ad
  %i.fi = load i64, ptr %i.el, align 8, !dbg !3363, !alias.scope !3155, !noundef !112 ; 3 uses
  %i.fj = icmp sgt i64 %i.fi, -1, !dbg !3364
  call void @llvm.assume(i1 %i.fj), !dbg !3365
  %i.fk = load ptr, ptr %i.em, align 8, !dbg !3366, !alias.scope !3155, !nonnull !112, !noundef !112
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fi, !dbg !3367
  store i64 %i.ff, ptr %i.fl, align 1, !dbg !3368, !noalias !3155
  %i.fm = add nuw i64 %i.fi, 8, !dbg !3369
  store i64 %i.fm, ptr %i.el, align 8, !dbg !3370, !alias.scope !3155
  %i.fn = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ff), !dbg !3371
  %i.fo = load i64, ptr %i.en, align 8, !dbg !3372, !alias.scope !3155, !noundef !112
  %i.fp = add i64 %i.fo, %i.fn, !dbg !3372
  store i64 %i.fp, ptr %i.en, align 8, !dbg !3372, !alias.scope !3155
  store i64 0, ptr %i.dn, align 8, !dbg !3373, !alias.scope !3155
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, !dbg !3374

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit: ; preds = %bb.ae, %bb.ad
  br i1 %i.ev, label %bb.af, label %bb.ap, !dbg !3375

bb.af:                                            ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit
  store i64 0, ptr %i.ag, align 8, !dbg !3376
end_hunk_0
begin_hunk_1_@_RINvNtNtCs4PheDXcg4wa_10polars_row8variable4utf817decode_str_as_cathEB6_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !3210), !dbg !3427
  call void @llvm.experimental.noalias.scope.decl(metadata !3211), !dbg !3427
  call void @llvm.experimental.noalias.scope.decl(metadata !3212), !dbg !3427
  call void @llvm.experimental.noalias.scope.decl(metadata !3213), !dbg !3428
  call void @llvm.experimental.noalias.scope.decl(metadata !3214), !dbg !3428
  %i.gv = load ptr, ptr %i.i, align 8, !dbg !3429, !alias.scope !3215, !noundef !112
  %.not.i.i = icmp eq ptr %i.gv, null, !dbg !3429
  br i1 %.not.i.i, label %bb.au, label %bb.at, !dbg !3430

bb.at:                                            ; preds = %bb.as
  %i.gw = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !3431
  %i.gx = load i64, ptr %i.gw, align 8, !dbg !3431, !alias.scope !3215, !noundef !112
  %i.gy = getelementptr inbounds nuw i8, ptr %i.k, i64 48, !dbg !3432
  %i.gz = load i64, ptr %i.gy, align 8, !dbg !3432, !alias.scope !3217, !noundef !112
  %.not2.i.i = icmp eq i64 %i.gx, %i.gz, !dbg !3433
  br i1 %.not2.i.i, label %bb.au, label %bb.aw, !dbg !3433, !prof !312

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ha = getelementptr inbounds nuw i8, ptr %i.k, i64 56, !dbg !3434 ; 4 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !dbg !3435, !alias.scope !3218, !noundef !112
  %i.hc = icmp eq ptr %i.hb, null, !dbg !3435
  br i1 %i.hc, label %bb.bc, label %bb.av, !dbg !3435

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ha)
          to label %bb.bc unwind label %bb.ax, !dbg !3436, !noalias !3219

bb.aw:                                            ; preds = %bb.at
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 89 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #20
          to label %bb.ay unwind label %bb.az, !dbg !3437, !noalias !3220

bb.ax:                                            ; preds = %bb.av
  %i.hd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ha, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !dbg !3434, !alias.scope !3221
  br label %.body.i, !dbg !3438

bb.ay:                                            ; preds = %bb.aw
  unreachable

bb.az:                                            ; preds = %bb.aw
  %i.he = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %.body.i unwind label %bb.ba, !dbg !3439, !noalias !3222

bb.ba:                                            ; preds = %bb.az
  %i.hf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !3440, !noalias !3222
  unreachable, !dbg !3440

.body.i:                                          ; preds = %bb.az, %bb.ax
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.he, %bb.az ], [ %i.hd, %bb.ax ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhEECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.k) #19
          to label %.body34 unwind label %bb.bb, !dbg !3441, !noalias !3210

bb.bb:                                            ; preds = %.body.i
  %i.hg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !3442, !noalias !3210
  unreachable, !dbg !3442

bb.bc:                                            ; preds = %bb.av, %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ha, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !dbg !3434, !alias.scope !3221
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.k, i64 88, i1 false), !dbg !3443, !alias.scope !3223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !3444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !3444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !3445
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs4PheDXcg4wa_10polars_row.exit60 unwind label %bb.bd, !dbg !3446

bb.bd:                                            ; preds = %bb.bc
  %i.hh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.thread95 unwind label %bb.be, !dbg !3447

bb.be:                                            ; preds = %bb.bd
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !3446
  unreachable, !dbg !3446

bb.bf:                                            ; preds = %.body34
  br i1 %.sroa.023.0, label %bb.bn, label %.thread95, !dbg !3448

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs4PheDXcg4wa_10polars_row.exit60: ; preds = %bb.bc, %bb.bk
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r), !dbg !3449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !3224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !3448
  ret void, !dbg !3450

bb.bg:                                            ; preds = %bb.ar
  %i.hj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhEECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(88) %i.k) #19
          to label %.body34 unwind label %bb.bh, !dbg !3444

bb.bh:                                            ; preds = %bb.bn, %bb.bj, %bb.bg, %.body34
  %i.hk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !3451
  unreachable, !dbg !3451

bb.bi:                                            ; preds = %bb.aa
  unreachable

bb.bj:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ak
  %.sroa.023.3.lpad-body = phi i1 [ true, %bb.ak ], [ true, %.loopexit ], [ %.sroa.023.3.ph, %.loopexit.split-lp ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.gd, %bb.ak ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builder13BitmapBuilderECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(56) %i.n) #19
          to label %.body34 unwind label %bb.bh, !dbg !3445

bb.bk:                                            ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !3452
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs4PheDXcg4wa_10polars_row.exit60 unwind label %bb.bl, !dbg !3453

bb.bl:                                            ; preds = %bb.bk
  %i.hl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.thread95 unwind label %bb.bm, !dbg !3454

bb.bm:                                            ; preds = %bb.bl
  %i.hm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !3453
  unreachable, !dbg !3453

.thread95:                                        ; preds = %bb.bl, %bb.bd, %bb.bn, %bb.bf
  %.pn3198 = phi { ptr, i32 } [ %.pn29, %bb.bf ], [ %.pn29, %bb.bn ], [ %i.hh, %bb.bd ], [ %i.hl, %bb.bl ]
  resume { ptr, i32 } %.pn3198, !dbg !3451

bb.bn:                                            ; preds = %bb.bf
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(24) %i.s) #19
          to label %.thread95 unwind label %bb.bh, !dbg !3448
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs4PheDXcg4wa_10polars_row8variable4utf817decode_str_as_catmEB6_(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef nonnull align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2, i8 noundef %3, ptr noundef nonnull align 128 %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3455 {
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
  %i.t = shl i8 %3, 6, !dbg !3837
  %sext = ashr i8 %i.t, 7, !dbg !3837             ; 3 uses
  %i.u = and i8 %3, 1, !dbg !3838
  %.not27 = icmp eq i8 %i.u, 0, !dbg !3838        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !3839
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !3840
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !dbg !3840
  %i.v = load i64, ptr %i.g, align 8, !dbg !3840, !range !165, !noundef !112
  %i.w = trunc nuw i64 %i.v to i1, !dbg !3841
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !3842
  %i.y = load i64, ptr %i.x, align 8, !dbg !3842, !range !114, !noundef !112 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !3842 ; 2 uses
  br i1 %i.w, label %bb.b, label %bb.c, !dbg !3841, !prof !173

bb.b:                                             ; preds = %bb.a
  %i.aa = load i64, ptr %i.z, align 8, !dbg !3843
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.y, i64 %i.aa) #20, !dbg !3844
  unreachable, !dbg !3844

bb.c:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %i.z, align 8, !dbg !3845, !nonnull !112, !noundef !112
  %i.ac = icmp samesign ule i64 %2, %i.y, !dbg !3846
  tail call void @llvm.assume(i1 %i.ac), !dbg !3847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !3848
  store i64 %i.y, ptr %i.s, align 8, !dbg !3849
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !3849 ; 5 uses
  store ptr %i.ab, ptr %i.ad, align 8, !dbg !3849
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !3849 ; 12 uses
  store i64 0, ptr %i.ae, align 8, !dbg !3849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !3850
  store i64 0, ptr %i.r, align 8, !dbg !3851
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !3851 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.af, align 8, !dbg !3851
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !3851 ; 7 uses
  store i64 0, ptr %i.ag, align 8, !dbg !3851
  %.idx = shl nuw nsw i64 %2, 4, !dbg !3852       ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.idx, !dbg !3852 ; 3 uses
  %i.ai = icmp eq i64 %2, 0, !dbg !3853
  br i1 %i.ai, label %bb.p, label %.lr.ph, !dbg !3697

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
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.03.0118.us, i64 16, !dbg !3854 ; 2 uses
  %i.an = load ptr, ptr %.sroa.03.0118.us, align 8, !dbg !3855, !nonnull !112, !noundef !112 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.03.0118.us, i64 8, !dbg !3855 ; 4 uses
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !3855, !noundef !112 ; 3 uses
  %i.aq = icmp ne i64 %i.ap, 0, !dbg !3856
  call void @llvm.assume(i1 %i.aq), !dbg !3857
  %i.ar = load i8, ptr %i.an, align 1, !dbg !3858, !noundef !112
  %i.as = icmp eq i8 %i.ar, %sext, !dbg !3859
  br i1 %i.as, label %.split.us, label %bb.d, !dbg !3859

bb.d:                                             ; preds = %.lr.ph.split.us
  store i64 0, ptr %i.ag, align 8, !dbg !3860
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ap, !dbg !3861
  store ptr %i.an, ptr %i.p, align 8, !dbg !3862
  store ptr %i.at, ptr %.sroa.47.0..sroa_idx, align 8, !dbg !3862
  store i8 0, ptr %.sroa.58.0..sroa_idx, align 8, !dbg !3862
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1h_10take_while9TakeWhileINtNtNtB1l_5slice4iter4IterhENCINvNtNtCs4PheDXcg4wa_10polars_row8variable4utf817decode_str_as_catmEs0_0ENCB30_s1_0EE11spec_extendB37_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.p)
          to label %bb.e unwind label %.loopexit100.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !3863

bb.e:                                             ; preds = %bb.d
  %i.au = load ptr, ptr %.sroa.03.0118.us, align 8, !dbg !3864, !nonnull !112, !noundef !112
  %i.av = load i64, ptr %i.ao, align 8, !dbg !3864, !noundef !112
  %i.aw = load i64, ptr %i.ag, align 8, !dbg !3865, !noundef !112 ; 5 uses
  %i.ax = icmp sgt i64 %i.aw, -1, !dbg !3866
  call void @llvm.assume(i1 %i.ax), !dbg !3867
  %i.ay = add nuw i64 %i.aw, 1, !dbg !3868        ; 2 uses
  %i.az = sub nuw i64 %i.av, %i.ay, !dbg !3869
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ay, !dbg !3870
  store ptr %i.ba, ptr %.sroa.03.0118.us, align 8, !dbg !3871
  store i64 %i.az, ptr %i.ao, align 8, !dbg !3871
  %i.bb = load ptr, ptr %i.af, align 8, !dbg !3872, !nonnull !112, !noundef !112 ; 3 uses
  %i.bc = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aj, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bb, i64 noundef %i.aw)
          to label %.noexc40.us unwind label %.loopexit100.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !3873

.noexc40.us:                                      ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !3874, !noalias !3727
  store ptr %i.bb, ptr %i.b, align 8, !dbg !3874, !noalias !3727
  store i64 %i.aw, ptr %i.ak, align 8, !dbg !3874, !noalias !3727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3875, !noalias !3727
  invoke void @_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE22try_get_or_insert_withNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2e_18CategoricalMapping20insert_cat_with_hash0NCB2b_s_0ECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noundef nonnull align 128 %4, i64 noundef %i.bc, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bb, i64 noundef %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noundef nonnull align 128 %4)
          to label %.noexc41.us unwind label %.loopexit100.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !3876

.noexc41.us:                                      ; preds = %.noexc40.us
  %i.bd = load i64, ptr %i.a, align 8, !dbg !3877, !range !304, !noalias !3727, !noundef !112 ; 2 uses
  %.not.i39.us = icmp eq i64 %i.bd, 18, !dbg !3877
  br i1 %.not.i39.us, label %bb.f, label %.split124.us, !dbg !3878

bb.f:                                             ; preds = %.noexc41.us
  %i.be = load ptr, ptr %i.al, align 8, !dbg !3879, !noalias !3727, !nonnull !112, !align !305, !noundef !112
  %i.bf = load i32, ptr %i.be, align 4, !dbg !3879, !noalias !3728, !noundef !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3880, !noalias !3727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3881, !noalias !3727
  %i.bg = load i64, ptr %i.ae, align 8, !dbg !3882, !alias.scope !3729, !noundef !112 ; 3 uses
  %i.bh = load i64, ptr %i.s, align 8, !dbg !3883, !range !166, !alias.scope !3729, !noundef !112
  %i.bi = icmp eq i64 %i.bg, %i.bh, !dbg !3884
  br i1 %i.bi, label %bb.g, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCs4PheDXcg4wa_10polars_row.exit.us, !dbg !3884

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs41c1ljAzdbX_12aho_corasick(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCs4PheDXcg4wa_10polars_row.exit.us unwind label %.loopexit100.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !3885

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCs4PheDXcg4wa_10polars_row.exit.us: ; preds = %bb.g, %bb.f
  %i.bj = load ptr, ptr %i.ad, align 8, !dbg !3886, !alias.scope !3729, !nonnull !112, !noundef !112
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bg, !dbg !3887
  store i32 %i.bf, ptr %i.bk, align 4, !dbg !3888
  %i.bl = add i64 %i.bg, 1, !dbg !3889            ; 2 uses
  store i64 %i.bl, ptr %i.ae, align 8, !dbg !3889, !alias.scope !3729
  %i.bm = icmp eq ptr %i.am, %i.ah, !dbg !3853
  br i1 %i.bm, label %.loopexit99, label %.lr.ph.split.us, !dbg !3697

.lr.ph.split:                                     ; preds = %.lr.ph, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCs4PheDXcg4wa_10polars_row.exit
  %.sroa.03.0118 = phi ptr [ %i.bn, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCs4PheDXcg4wa_10polars_row.exit ], [ %1, %.lr.ph ] ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.03.0118, i64 16, !dbg !3854 ; 2 uses
  %i.bo = load ptr, ptr %.sroa.03.0118, align 8, !dbg !3855, !nonnull !112, !noundef !112 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.03.0118, i64 8, !dbg !3855 ; 4 uses
  %i.bq = load i64, ptr %i.bp, align 8, !dbg !3855, !noundef !112 ; 3 uses
  %i.br = icmp ne i64 %i.bq, 0, !dbg !3856
  call void @llvm.assume(i1 %i.br), !dbg !3857
  %i.bs = load i8, ptr %i.bo, align 1, !dbg !3858, !noundef !112
  %i.bt = icmp eq i8 %i.bs, %sext, !dbg !3859
  br i1 %i.bt, label %.split.us, label %bb.h, !dbg !3859

bb.h:                                             ; preds = %.lr.ph.split
  store i64 0, ptr %i.ag, align 8, !dbg !3860
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bq, !dbg !3890
  store ptr %i.bo, ptr %i.q, align 8, !dbg !3891
  store ptr %i.bu, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !3891
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !3891
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1h_10take_while9TakeWhileINtNtNtB1l_5slice4iter4IterhENCINvNtNtCs4PheDXcg4wa_10polars_row8variable4utf817decode_str_as_catmE0ENCB30_s_0EE11spec_extendB37_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.q)
          to label %bb.i unwind label %.loopexit100.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !3892

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi ptr [ %i.an, %.lr.ph.split.us ], [ %i.bo, %.lr.ph.split ], !dbg !3893
  %.us-phi119 = phi ptr [ %i.ao, %.lr.ph.split.us ], [ %i.bp, %.lr.ph.split ], !dbg !3893
  %.us-phi120 = phi i64 [ %i.ap, %.lr.ph.split.us ], [ %i.bq, %.lr.ph.split ], !dbg !3893
  %.us-phi121 = phi ptr [ %.sroa.03.0118.us, %.lr.ph.split.us ], [ %.sroa.03.0118, %.lr.ph.split ], !dbg !3893
  %i.bv = add i64 %.us-phi120, -1, !dbg !3893
  %i.bw = getelementptr inbounds nuw i8, ptr %.us-phi, i64 1, !dbg !3894
  store ptr %i.bw, ptr %.us-phi121, align 8, !dbg !3895
  store i64 %i.bv, ptr %.us-phi119, align 8, !dbg !3895
  %.pre = load i64, ptr %i.ae, align 8, !dbg !3896
  br label %.loopexit99, !dbg !3897

.body34:                                          ; preds = %.loopexit100.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp101, %.body.i, %bb.bg, %bb.j, %bb.bj
  %.sroa.023.0 = phi i1 [ true, %bb.j ], [ %.sroa.023.3.lpad-body, %bb.bj ], [ false, %.body.i ], [ false, %bb.bg ], [ %5, %.loopexit.split-lp101 ], [ true, %.loopexit100.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], !dbg !3898
  %.pn29 = phi { ptr, i32 } [ %i.ch, %bb.j ], [ %eh.lpad-body, %bb.bj ], [ %eh.lpad-body.i, %.body.i ], [ %i.hh, %bb.bg ], [ %lpad.loopexit.split-lp103, %.loopexit.split-lp101 ], [ %lpad.loopexit.split-lp270, %.loopexit100.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(24) %i.r) #19
          to label %bb.bf unwind label %bb.bh, !dbg !3835

.loopexit100.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %bb.e, %.noexc40.us, %bb.g, %bb.n, %.noexc40, %bb.i, %bb.h
  %lpad.loopexit.split-lp270 = landingpad { ptr, i32 }
          cleanup
  br label %.body34

.loopexit.split-lp101:                            ; preds = %bb.o, %bb.p
  %5 = phi i1 [ true, %bb.o ], [ false, %bb.p ]
  %lpad.loopexit.split-lp103 = landingpad { ptr, i32 }
          cleanup
  br label %.body34

bb.i:                                             ; preds = %bb.h
  %i.bx = load ptr, ptr %.sroa.03.0118, align 8, !dbg !3864, !nonnull !112, !noundef !112
  %i.by = load i64, ptr %i.bp, align 8, !dbg !3864, !noundef !112
  %i.bz = load i64, ptr %i.ag, align 8, !dbg !3865, !noundef !112 ; 5 uses
  %i.ca = icmp sgt i64 %i.bz, -1, !dbg !3866
  call void @llvm.assume(i1 %i.ca), !dbg !3867
  %i.cb = add nuw i64 %i.bz, 1, !dbg !3868        ; 2 uses
  %i.cc = sub nuw i64 %i.by, %i.cb, !dbg !3869
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.cb, !dbg !3870
  store ptr %i.cd, ptr %.sroa.03.0118, align 8, !dbg !3871
  store i64 %i.cc, ptr %i.bp, align 8, !dbg !3871
  %i.ce = load ptr, ptr %i.af, align 8, !dbg !3872, !nonnull !112, !noundef !112 ; 3 uses
  %i.cf = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aj, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ce, i64 noundef %i.bz)
          to label %.noexc40 unwind label %.loopexit100.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !3873

.noexc40:                                         ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !3874, !noalias !3727
  store ptr %i.ce, ptr %i.b, align 8, !dbg !3874, !noalias !3727
  store i64 %i.bz, ptr %i.ak, align 8, !dbg !3874, !noalias !3727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3875, !noalias !3727
  invoke void @_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE22try_get_or_insert_withNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2e_18CategoricalMapping20insert_cat_with_hash0NCB2b_s_0ECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noundef nonnull align 128 %4, i64 noundef %i.cf, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ce, i64 noundef %i.bz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noundef nonnull align 128 %4)
          to label %.noexc41 unwind label %.loopexit100.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !3876

.noexc41:                                         ; preds = %.noexc40
  %i.cg = load i64, ptr %i.a, align 8, !dbg !3877, !range !304, !noalias !3727, !noundef !112 ; 2 uses
  %.not.i39 = icmp eq i64 %i.cg, 18, !dbg !3877
  br i1 %.not.i39, label %bb.m, label %.split124.us, !dbg !3878

.split124.us:                                     ; preds = %.noexc41, %.noexc41.us
  %.us-phi125 = phi i64 [ %i.bd, %.noexc41.us ], [ %i.cg, %.noexc41 ], !dbg !3899
  %.sroa.476.0.copyload = load i32, ptr %i.al, align 8, !dbg !3899, !noalias !3727
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12, !dbg !3899
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 12, !dbg !3900
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !3900, !noalias !3744
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.577.0..sroa_idx, i64 60, i1 false), !dbg !3899, !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3880, !noalias !3727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3881, !noalias !3727
  store i64 %.us-phi125, ptr %i.e, align 8, !dbg !3900, !noalias !3745
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !3900
  store i32 %.sroa.476.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !3900, !noalias !3745
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #20
          to label %bb.k unwind label %bb.j, !dbg !3901, !noalias !3746

bb.j:                                             ; preds = %.split124.us
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e) #19
          to label %.body34 unwind label %bb.l, !dbg !3902, !noalias !3746

bb.k:                                             ; preds = %.split124.us
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !3903, !noalias !3746
  unreachable, !dbg !3903

bb.m:                                             ; preds = %.noexc41
  %i.cj = load ptr, ptr %i.al, align 8, !dbg !3879, !noalias !3727, !nonnull !112, !align !305, !noundef !112
  %i.ck = load i32, ptr %i.cj, align 4, !dbg !3879, !noalias !3728, !noundef !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3880, !noalias !3727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3881, !noalias !3727
  %i.cl = load i64, ptr %i.ae, align 8, !dbg !3882, !alias.scope !3729, !noundef !112 ; 3 uses
  %i.cm = load i64, ptr %i.s, align 8, !dbg !3883, !range !166, !alias.scope !3729, !noundef !112
  %i.cn = icmp eq i64 %i.cl, %i.cm, !dbg !3884
  br i1 %i.cn, label %bb.n, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCs4PheDXcg4wa_10polars_row.exit, !dbg !3884

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs41c1ljAzdbX_12aho_corasick(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCs4PheDXcg4wa_10polars_row.exit unwind label %.loopexit100.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !3885

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCs4PheDXcg4wa_10polars_row.exit: ; preds = %bb.n, %bb.m
  %i.co = load ptr, ptr %i.ad, align 8, !dbg !3886, !alias.scope !3729, !nonnull !112, !noundef !112
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cl, !dbg !3887
  store i32 %i.ck, ptr %i.cp, align 4, !dbg !3888
  %i.cq = add i64 %i.cl, 1, !dbg !3889            ; 2 uses
  store i64 %i.cq, ptr %i.ae, align 8, !dbg !3889, !alias.scope !3729
  %i.cr = icmp eq ptr %i.bn, %i.ah, !dbg !3853
  br i1 %i.cr, label %.loopexit99, label %.lr.ph.split, !dbg !3697

.loopexit99:                                      ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCs4PheDXcg4wa_10polars_row.exit, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCs4PheDXcg4wa_10polars_row.exit.us, %.split.us
  %6 = phi i64 [ %i.bl, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCs4PheDXcg4wa_10polars_row.exit.us ], [ %.pre, %.split.us ], [ %i.cq, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCs4PheDXcg4wa_10polars_row.exit ], !dbg !3896 ; 2 uses
  %i.cs = icmp ult i64 %6, 2305843009213693952, !dbg !3904
  call void @llvm.assume(i1 %i.cs), !dbg !3905
  %.not = icmp eq i64 %6, %2, !dbg !3906
  br i1 %.not, label %bb.p, label %bb.o, !dbg !3906

bb.o:                                             ; preds = %.loopexit99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !3907
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder13with_capacity(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.n, i64 noundef %2)
          to label %bb.q unwind label %.loopexit.split-lp101, !dbg !3908

bb.p:                                             ; preds = %bb.c, %.loopexit99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !3909
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !3909
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB2_14PrimitiveArraymE8from_vecCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
          to label %bb.bk unwind label %.loopexit.split-lp101, !dbg !3910

bb.q:                                             ; preds = %bb.o
  %i.ct = load i64, ptr %i.ae, align 8, !dbg !3911, !noundef !112 ; 5 uses
  %i.cu = icmp ult i64 %i.ct, 2305843009213693952, !dbg !3912
  call void @llvm.assume(i1 %i.cu), !dbg !3913
  %i.cv = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !3914 ; 8 uses
  %i.cw = load i64, ptr %i.cv, align 8, !dbg !3914, !noundef !112 ; 2 uses
  %i.cx = and i64 %i.cw, 63, !dbg !3914           ; 2 uses
  %i.cy = add nuw nsw i64 %i.cx, %i.ct, !dbg !3915
  %i.cz = icmp samesign ult i64 %i.cy, 64, !dbg !3915
  br i1 %i.cz, label %bb.s, label %bb.r, !dbg !3915, !prof !312

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder20extend_constant_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.n, i64 noundef %i.ct, i1 noundef zeroext true)
          to label %._crit_edge168 unwind label %.loopexit.split-lp, !dbg !3916

._crit_edge168:                                   ; preds = %bb.r
  %.pre169 = load i64, ptr %i.cv, align 8, !dbg !3917
  br label %bb.t, !dbg !3916

bb.s:                                             ; preds = %bb.q
  %notmask = shl nsw i64 -1, %i.ct, !dbg !3918
  %i.da = xor i64 %notmask, -1, !dbg !3918
  %i.db = shl i64 %i.da, %i.cx, !dbg !3919
  %i.dc = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !3920 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !dbg !3920, !noundef !112
  %i.de = or i64 %i.dd, %i.db, !dbg !3920
  store i64 %i.de, ptr %i.dc, align 8, !dbg !3920
  %i.df = add i64 %i.cw, %i.ct, !dbg !3921        ; 2 uses
  store i64 %i.df, ptr %i.cv, align 8, !dbg !3921
  br label %bb.t, !dbg !3922

.loopexit:                                        ; preds = %bb.ac, %bb.ag, %bb.ah, %bb.ai, %.noexc, %bb.ao, %bb.aq
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

.loopexit.split-lp:                               ; preds = %bb.r, %bb.u, %bb.aa, %._crit_edge, %bb.x
  %.sroa.023.3.ph = phi i1 [ true, %bb.r ], [ true, %bb.u ], [ true, %bb.x ], [ false, %._crit_edge ], [ true, %bb.aa ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.t:                                             ; preds = %._crit_edge168, %bb.s
  %i.dg = phi i64 [ %.pre169, %._crit_edge168 ], [ %i.df, %bb.s ], !dbg !3917
  %i.dh = add i64 %i.dg, 1, !dbg !3917            ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.n, i64 40, !dbg !3923 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !dbg !3923, !noundef !112
  %i.dk = icmp ugt i64 %i.dh, %i.dj, !dbg !3917
  br i1 %i.dk, label %bb.u, label %bb.v, !dbg !3917, !prof !173

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.n, i64 noundef 1)
          to label %._crit_edge170 unwind label %.loopexit.split-lp, !dbg !3924

._crit_edge170:                                   ; preds = %bb.u
  %.pre171 = load i64, ptr %i.cv, align 8, !dbg !3925, !alias.scope !3751
  %.pre174 = add i64 %.pre171, 1, !dbg !3926
  br label %bb.v, !dbg !3924

bb.v:                                             ; preds = %._crit_edge170, %bb.t
  %.pre-phi = phi i64 [ %.pre174, %._crit_edge170 ], [ %i.dh, %bb.t ], !dbg !3926 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3751), !dbg !3927
  %i.dl = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !3928 ; 5 uses
  %i.dm = load i64, ptr %i.dl, align 8, !dbg !3928, !alias.scope !3751, !noundef !112 ; 2 uses
  store i64 %.pre-phi, ptr %i.cv, align 8, !dbg !3926, !alias.scope !3751
  %i.dn = and i64 %.pre-phi, 63, !dbg !3929
  %i.do = icmp eq i64 %i.dn, 0, !dbg !3929
  br i1 %i.do, label %bb.w, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit43, !dbg !3930

bb.w:                                             ; preds = %bb.v
  %i.dp = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !3931 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !dbg !3931, !alias.scope !3751, !noundef !112 ; 3 uses
  %i.dr = icmp sgt i64 %i.dq, -1, !dbg !3932
  call void @llvm.assume(i1 %i.dr), !dbg !3933
  %i.ds = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !3934
  %i.dt = load ptr, ptr %i.ds, align 8, !dbg !3934, !alias.scope !3751, !nonnull !112, !noundef !112
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dq, !dbg !3935
  store i64 %i.dm, ptr %i.du, align 1, !dbg !3936, !noalias !3751
  %i.dv = add nuw i64 %i.dq, 8, !dbg !3937
  store i64 %i.dv, ptr %i.dp, align 8, !dbg !3938, !alias.scope !3751
  %i.dw = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dm), !dbg !3939
  %i.dx = getelementptr inbounds nuw i8, ptr %i.n, i64 48, !dbg !3940 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !dbg !3940, !alias.scope !3751, !noundef !112
  %i.dz = add i64 %i.dy, %i.dw, !dbg !3940
  store i64 %i.dz, ptr %i.dx, align 8, !dbg !3940, !alias.scope !3751
  store i64 0, ptr %i.dl, align 8, !dbg !3941, !alias.scope !3751
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit43, !dbg !3942

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit43: ; preds = %bb.v, %bb.w
  %i.ea = load i64, ptr %i.ae, align 8, !dbg !3943, !alias.scope !3752, !noundef !112 ; 4 uses
  %i.eb = load i64, ptr %i.s, align 8, !dbg !3944, !range !166, !alias.scope !3752, !noundef !112
  %i.ec = icmp eq i64 %i.ea, %i.eb, !dbg !3945
  br i1 %i.ec, label %bb.x, label %bb.y, !dbg !3945

bb.x:                                             ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit43
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs41c1ljAzdbX_12aho_corasick(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.y unwind label %.loopexit.split-lp, !dbg !3946

bb.y:                                             ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit43, %bb.x
  %i.ed = load ptr, ptr %i.ad, align 8, !dbg !3947, !alias.scope !3752, !nonnull !112, !noundef !112
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.ea, !dbg !3948
  store i32 0, ptr %i.ee, align 4, !dbg !3949
  %i.ef = add nsw i64 %i.ea, 1, !dbg !3950        ; 4 uses
  store i64 %i.ef, ptr %i.ae, align 8, !dbg !3950, !alias.scope !3752
  %i.eg = icmp slt i64 %i.ea, 2305843009213693951, !dbg !3951
  call void @llvm.assume(i1 %i.eg), !dbg !3952
  %i.eh = icmp samesign ugt i64 %i.ef, %2, !dbg !3953
  br i1 %i.eh, label %bb.aa, label %bb.z, !dbg !3953, !prof !173

bb.z:                                             ; preds = %bb.y
  %.idx128 = shl nuw nsw i64 %i.ef, 4, !dbg !3954 ; 2 uses
  %i.ei = icmp samesign eq i64 %.idx128, %.idx, !dbg !3955
  br i1 %i.ei, label %._crit_edge, label %.lr.ph127, !dbg !3956

.lr.ph127:                                        ; preds = %bb.z
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 %.idx128, !dbg !3954
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
  br label %bb.ab, !dbg !3956

bb.aa:                                            ; preds = %bb.y
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ef, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #20
          to label %bb.bi unwind label %.loopexit.split-lp, !dbg !3957

bb.ab:                                            ; preds = %.lr.ph127, %.backedge
  %.sroa.010.0126 = phi ptr [ %i.ej, %.lr.ph127 ], [ %i.eq, %.backedge ] ; 8 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.010.0126, i64 16, !dbg !3958 ; 2 uses
  %i.er = load ptr, ptr %.sroa.010.0126, align 8, !dbg !3959, !nonnull !112, !noundef !112
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.010.0126, i64 8, !dbg !3959 ; 5 uses
  %i.et = load i8, ptr %i.er, align 1, !dbg !3960, !noundef !112
  %i.eu = icmp ne i8 %i.et, %sext, !dbg !3961     ; 2 uses
  %i.ev = load i64, ptr %i.cv, align 8, !dbg !3962, !noundef !112 ; 2 uses
  %i.ew = add i64 %i.ev, 1, !dbg !3962            ; 2 uses
  %i.ex = load i64, ptr %i.di, align 8, !dbg !3963, !noundef !112
  %i.ey = icmp ugt i64 %i.ew, %i.ex, !dbg !3962
  br i1 %i.ey, label %bb.ac, label %bb.ad, !dbg !3962, !prof !173

._crit_edge:                                      ; preds = %.backedge, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !3964
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !3965
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !3965
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB2_14PrimitiveArraymE8from_vecCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.ar unwind label %.loopexit.split-lp, !dbg !3964

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.n, i64 noundef 1)
          to label %._crit_edge172 unwind label %.loopexit, !dbg !3966

._crit_edge172:                                   ; preds = %bb.ac
  %.pre173 = load i64, ptr %i.cv, align 8, !dbg !3967, !alias.scope !3766 ; 2 uses
  %.pre175 = add i64 %.pre173, 1, !dbg !3968
  br label %bb.ad, !dbg !3966

bb.ad:                                            ; preds = %._crit_edge172, %bb.ab
  %.pre-phi176 = phi i64 [ %.pre175, %._crit_edge172 ], [ %i.ew, %bb.ab ], !dbg !3968 ; 2 uses
  %i.ez = phi i64 [ %.pre173, %._crit_edge172 ], [ %i.ev, %bb.ab ], !dbg !3967
  call void @llvm.experimental.noalias.scope.decl(metadata !3766), !dbg !3969
  %i.fa = zext i1 %i.eu to i64, !dbg !3970
  %i.fb = and i64 %i.ez, 63, !dbg !3971
  %i.fc = shl nuw i64 %i.fa, %i.fb, !dbg !3970
  %i.fd = load i64, ptr %i.dl, align 8, !dbg !3972, !alias.scope !3766, !noundef !112
  %i.fe = or i64 %i.fc, %i.fd, !dbg !3972         ; 3 uses
  store i64 %i.fe, ptr %i.dl, align 8, !dbg !3972, !alias.scope !3766
  store i64 %.pre-phi176, ptr %i.cv, align 8, !dbg !3968, !alias.scope !3766
  %i.ff = and i64 %.pre-phi176, 63, !dbg !3973
  %i.fg = icmp eq i64 %i.ff, 0, !dbg !3973
  br i1 %i.fg, label %bb.ae, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, !dbg !3974

bb.ae:                                            ; preds = %bb.ad
  %i.fh = load i64, ptr %i.ek, align 8, !dbg !3975, !alias.scope !3766, !noundef !112 ; 3 uses
  %i.fi = icmp sgt i64 %i.fh, -1, !dbg !3976
  call void @llvm.assume(i1 %i.fi), !dbg !3977
  %i.fj = load ptr, ptr %i.el, align 8, !dbg !3978, !alias.scope !3766, !nonnull !112, !noundef !112
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fh, !dbg !3979
  store i64 %i.fe, ptr %i.fk, align 1, !dbg !3980, !noalias !3766
  %i.fl = add nuw i64 %i.fh, 8, !dbg !3981
  store i64 %i.fl, ptr %i.ek, align 8, !dbg !3982, !alias.scope !3766
  %i.fm = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fe), !dbg !3983
  %i.fn = load i64, ptr %i.em, align 8, !dbg !3984, !alias.scope !3766, !noundef !112
  %i.fo = add i64 %i.fn, %i.fm, !dbg !3984
  store i64 %i.fo, ptr %i.em, align 8, !dbg !3984, !alias.scope !3766
  store i64 0, ptr %i.dl, align 8, !dbg !3985, !alias.scope !3766
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, !dbg !3986

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit: ; preds = %bb.ae, %bb.ad
  br i1 %i.eu, label %bb.af, label %bb.ap, !dbg !3987

end_hunk_1
begin_hunk_2_@_RINvNtNtCs4PheDXcg4wa_10polars_row8variable4utf817decode_str_as_catmEB6_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !3821), !dbg !4038
  call void @llvm.experimental.noalias.scope.decl(metadata !3822), !dbg !4038
  call void @llvm.experimental.noalias.scope.decl(metadata !3823), !dbg !4038
  call void @llvm.experimental.noalias.scope.decl(metadata !3824), !dbg !4039
  call void @llvm.experimental.noalias.scope.decl(metadata !3825), !dbg !4039
  %i.gt = load ptr, ptr %i.i, align 8, !dbg !4040, !alias.scope !3826, !noundef !112
  %.not.i.i = icmp eq ptr %i.gt, null, !dbg !4040
  br i1 %.not.i.i, label %bb.au, label %bb.at, !dbg !4041

bb.at:                                            ; preds = %bb.as
  %i.gu = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !4042
  %i.gv = load i64, ptr %i.gu, align 8, !dbg !4042, !alias.scope !3826, !noundef !112
  %i.gw = getelementptr inbounds nuw i8, ptr %i.k, i64 48, !dbg !4043
  %i.gx = load i64, ptr %i.gw, align 8, !dbg !4043, !alias.scope !3828, !noundef !112
  %.not2.i.i = icmp eq i64 %i.gv, %i.gx, !dbg !4044
  br i1 %.not2.i.i, label %bb.au, label %bb.aw, !dbg !4044, !prof !312

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.gy = getelementptr inbounds nuw i8, ptr %i.k, i64 56, !dbg !4045 ; 4 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !dbg !4046, !alias.scope !3829, !noundef !112
  %i.ha = icmp eq ptr %i.gz, null, !dbg !4046
  br i1 %i.ha, label %bb.bc, label %bb.av, !dbg !4046

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.gy)
          to label %bb.bc unwind label %bb.ax, !dbg !4047, !noalias !3830

bb.aw:                                            ; preds = %bb.at
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 89 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #20
          to label %bb.ay unwind label %bb.az, !dbg !4048, !noalias !3831

bb.ax:                                            ; preds = %bb.av
  %i.hb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gy, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !dbg !4045, !alias.scope !3832
  br label %.body.i, !dbg !4049

bb.ay:                                            ; preds = %bb.aw
  unreachable

bb.az:                                            ; preds = %bb.aw
  %i.hc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %.body.i unwind label %bb.ba, !dbg !4050, !noalias !3833

bb.ba:                                            ; preds = %bb.az
  %i.hd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !4051, !noalias !3833
  unreachable, !dbg !4051

.body.i:                                          ; preds = %bb.az, %bb.ax
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.hc, %bb.az ], [ %i.hb, %bb.ax ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymEECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.k) #19
          to label %.body34 unwind label %bb.bb, !dbg !4052, !noalias !3821

bb.bb:                                            ; preds = %.body.i
  %i.he = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !4053, !noalias !3821
  unreachable, !dbg !4053

bb.bc:                                            ; preds = %bb.av, %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gy, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !dbg !4045, !alias.scope !3832
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.k, i64 88, i1 false), !dbg !4054, !alias.scope !3834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !4055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !4055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !4056
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs4PheDXcg4wa_10polars_row.exit60 unwind label %bb.bd, !dbg !4057

bb.bd:                                            ; preds = %bb.bc
  %i.hf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.thread95 unwind label %bb.be, !dbg !4058

bb.be:                                            ; preds = %bb.bd
  %i.hg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !4057
  unreachable, !dbg !4057

bb.bf:                                            ; preds = %.body34
  br i1 %.sroa.023.0, label %bb.bn, label %.thread95, !dbg !4059

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs4PheDXcg4wa_10polars_row.exit60: ; preds = %bb.bc, %bb.bk
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r), !dbg !4060
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !3835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !4059
  ret void, !dbg !4061

bb.bg:                                            ; preds = %bb.ar
  %i.hh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymEECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(88) %i.k) #19
          to label %.body34 unwind label %bb.bh, !dbg !4055

bb.bh:                                            ; preds = %bb.bn, %bb.bj, %bb.bg, %.body34
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !4062
  unreachable, !dbg !4062

bb.bi:                                            ; preds = %bb.aa
  unreachable

bb.bj:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ak
  %.sroa.023.3.lpad-body = phi i1 [ true, %bb.ak ], [ true, %.loopexit ], [ %.sroa.023.3.ph, %.loopexit.split-lp ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.gc, %bb.ak ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builder13BitmapBuilderECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(56) %i.n) #19
          to label %.body34 unwind label %bb.bh, !dbg !4056

bb.bk:                                            ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !4063
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs4PheDXcg4wa_10polars_row.exit60 unwind label %bb.bl, !dbg !4064

bb.bl:                                            ; preds = %bb.bk
  %i.hj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.thread95 unwind label %bb.bm, !dbg !4065

bb.bm:                                            ; preds = %bb.bl
  %i.hk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !4064
  unreachable, !dbg !4064

.thread95:                                        ; preds = %bb.bl, %bb.bd, %bb.bn, %bb.bf
  %.pn3198 = phi { ptr, i32 } [ %.pn29, %bb.bf ], [ %.pn29, %bb.bn ], [ %i.hf, %bb.bd ], [ %i.hj, %bb.bl ]
  resume { ptr, i32 } %.pn3198, !dbg !4062

bb.bn:                                            ; preds = %bb.bf
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(24) %i.s) #19
          to label %.thread95 unwind label %bb.bh, !dbg !4059
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs4PheDXcg4wa_10polars_row8variable4utf817decode_str_as_cattEB6_(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef nonnull align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2, i8 noundef %3, ptr noundef nonnull align 128 %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4066 {
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
  %i.t = shl i8 %3, 6, !dbg !4452
  %sext = ashr i8 %i.t, 7, !dbg !4452             ; 3 uses
  %i.u = and i8 %3, 1, !dbg !4453
  %.not27 = icmp eq i8 %i.u, 0, !dbg !4453        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !4454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !4455
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext false, i64 noundef 2, i64 noundef 2), !dbg !4455
  %i.v = load i64, ptr %i.g, align 8, !dbg !4455, !range !165, !noundef !112
  %i.w = trunc nuw i64 %i.v to i1, !dbg !4456
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !4457
  %i.y = load i64, ptr %i.x, align 8, !dbg !4457, !range !114, !noundef !112 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !4457 ; 2 uses
  br i1 %i.w, label %bb.b, label %bb.c, !dbg !4456, !prof !173

bb.b:                                             ; preds = %bb.a
  %i.aa = load i64, ptr %i.z, align 8, !dbg !4458
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.y, i64 %i.aa) #20, !dbg !4459
  unreachable, !dbg !4459

bb.c:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %i.z, align 8, !dbg !4460, !nonnull !112, !noundef !112
  %i.ac = icmp samesign ule i64 %2, %i.y, !dbg !4461
  tail call void @llvm.assume(i1 %i.ac), !dbg !4462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !4463
  store i64 %i.y, ptr %i.s, align 8, !dbg !4464
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !4464 ; 5 uses
  store ptr %i.ab, ptr %i.ad, align 8, !dbg !4464
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !4464 ; 12 uses
  store i64 0, ptr %i.ae, align 8, !dbg !4464
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !4465
  store i64 0, ptr %i.r, align 8, !dbg !4466
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !4466 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.af, align 8, !dbg !4466
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !4466 ; 7 uses
  store i64 0, ptr %i.ag, align 8, !dbg !4466
  %.idx = shl nuw nsw i64 %2, 4, !dbg !4467       ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.idx, !dbg !4467 ; 3 uses
  %i.ai = icmp eq i64 %2, 0, !dbg !4468
  br i1 %i.ai, label %bb.p, label %.lr.ph, !dbg !4311

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
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.03.0118.us, i64 16, !dbg !4469 ; 2 uses
  %i.an = load ptr, ptr %.sroa.03.0118.us, align 8, !dbg !4470, !nonnull !112, !noundef !112 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.03.0118.us, i64 8, !dbg !4470 ; 4 uses
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !4470, !noundef !112 ; 3 uses
  %i.aq = icmp ne i64 %i.ap, 0, !dbg !4471
  call void @llvm.assume(i1 %i.aq), !dbg !4472
  %i.ar = load i8, ptr %i.an, align 1, !dbg !4473, !noundef !112
  %i.as = icmp eq i8 %i.ar, %sext, !dbg !4474
  br i1 %i.as, label %.split.us, label %bb.d, !dbg !4474

bb.d:                                             ; preds = %.lr.ph.split.us
  store i64 0, ptr %i.ag, align 8, !dbg !4475
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ap, !dbg !4476
  store ptr %i.an, ptr %i.p, align 8, !dbg !4477
  store ptr %i.at, ptr %.sroa.47.0..sroa_idx, align 8, !dbg !4477
  store i8 0, ptr %.sroa.58.0..sroa_idx, align 8, !dbg !4477
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1h_10take_while9TakeWhileINtNtNtB1l_5slice4iter4IterhENCINvNtNtCs4PheDXcg4wa_10polars_row8variable4utf817decode_str_as_cattEs0_0ENCB30_s1_0EE11spec_extendB37_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.p)
          to label %bb.e unwind label %.loopexit100.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4478

bb.e:                                             ; preds = %bb.d
  %i.au = load ptr, ptr %.sroa.03.0118.us, align 8, !dbg !4479, !nonnull !112, !noundef !112
  %i.av = load i64, ptr %i.ao, align 8, !dbg !4479, !noundef !112
  %i.aw = load i64, ptr %i.ag, align 8, !dbg !4480, !noundef !112 ; 5 uses
  %i.ax = icmp sgt i64 %i.aw, -1, !dbg !4481
  call void @llvm.assume(i1 %i.ax), !dbg !4482
  %i.ay = add nuw i64 %i.aw, 1, !dbg !4483        ; 2 uses
  %i.az = sub nuw i64 %i.av, %i.ay, !dbg !4484
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ay, !dbg !4485
  store ptr %i.ba, ptr %.sroa.03.0118.us, align 8, !dbg !4486
  store i64 %i.az, ptr %i.ao, align 8, !dbg !4486
  %i.bb = load ptr, ptr %i.af, align 8, !dbg !4487, !nonnull !112, !noundef !112 ; 3 uses
  %i.bc = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aj, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bb, i64 noundef %i.aw)
          to label %.noexc40.us unwind label %.loopexit100.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4488

.noexc40.us:                                      ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4489, !noalias !4341
  store ptr %i.bb, ptr %i.b, align 8, !dbg !4489, !noalias !4341
  store i64 %i.aw, ptr %i.ak, align 8, !dbg !4489, !noalias !4341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4490, !noalias !4341
  invoke void @_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE22try_get_or_insert_withNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2e_18CategoricalMapping20insert_cat_with_hash0NCB2b_s_0ECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noundef nonnull align 128 %4, i64 noundef %i.bc, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bb, i64 noundef %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noundef nonnull align 128 %4)
          to label %.noexc41.us unwind label %.loopexit100.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4491

.noexc41.us:                                      ; preds = %.noexc40.us
  %i.bd = load i64, ptr %i.a, align 8, !dbg !4492, !range !304, !noalias !4341, !noundef !112 ; 2 uses
  %.not.i39.us = icmp eq i64 %i.bd, 18, !dbg !4492
  br i1 %.not.i39.us, label %bb.f, label %.split124.us, !dbg !4493

bb.f:                                             ; preds = %.noexc41.us
  %i.be = load ptr, ptr %i.al, align 8, !dbg !4494, !noalias !4341, !nonnull !112, !align !305, !noundef !112
  %i.bf = load i32, ptr %i.be, align 4, !dbg !4494, !noalias !4342, !noundef !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4495, !noalias !4341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4496, !noalias !4341
  %i.bg = trunc i32 %i.bf to i16, !dbg !4497
  %i.bh = load i64, ptr %i.ae, align 8, !dbg !4498, !alias.scope !4344, !noundef !112 ; 3 uses
  %i.bi = load i64, ptr %i.s, align 8, !dbg !4499, !range !166, !alias.scope !4344, !noundef !112
  %i.bj = icmp eq i64 %i.bh, %i.bi, !dbg !4500
  br i1 %i.bj, label %bb.g, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCs4PheDXcg4wa_10polars_row.exit.us, !dbg !4500

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVectE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCs4PheDXcg4wa_10polars_row.exit.us unwind label %.loopexit100.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4501

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCs4PheDXcg4wa_10polars_row.exit.us: ; preds = %bb.g, %bb.f
  %i.bk = load ptr, ptr %i.ad, align 8, !dbg !4502, !alias.scope !4344, !nonnull !112, !noundef !112
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.bh, !dbg !4503
  store i16 %i.bg, ptr %i.bl, align 2, !dbg !4504
  %i.bm = add i64 %i.bh, 1, !dbg !4505            ; 2 uses
  store i64 %i.bm, ptr %i.ae, align 8, !dbg !4505, !alias.scope !4344
  %i.bn = icmp eq ptr %i.am, %i.ah, !dbg !4468
  br i1 %i.bn, label %.loopexit99, label %.lr.ph.split.us, !dbg !4311

.lr.ph.split:                                     ; preds = %.lr.ph, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCs4PheDXcg4wa_10polars_row.exit
  %.sroa.03.0118 = phi ptr [ %i.bo, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCs4PheDXcg4wa_10polars_row.exit ], [ %1, %.lr.ph ] ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.03.0118, i64 16, !dbg !4469 ; 2 uses
  %i.bp = load ptr, ptr %.sroa.03.0118, align 8, !dbg !4470, !nonnull !112, !noundef !112 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.03.0118, i64 8, !dbg !4470 ; 4 uses
  %i.br = load i64, ptr %i.bq, align 8, !dbg !4470, !noundef !112 ; 3 uses
  %i.bs = icmp ne i64 %i.br, 0, !dbg !4471
  call void @llvm.assume(i1 %i.bs), !dbg !4472
  %i.bt = load i8, ptr %i.bp, align 1, !dbg !4473, !noundef !112
  %i.bu = icmp eq i8 %i.bt, %sext, !dbg !4474
  br i1 %i.bu, label %.split.us, label %bb.h, !dbg !4474

bb.h:                                             ; preds = %.lr.ph.split
  store i64 0, ptr %i.ag, align 8, !dbg !4475
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.br, !dbg !4506
  store ptr %i.bp, ptr %i.q, align 8, !dbg !4507
  store ptr %i.bv, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !4507
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !4507
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1h_10take_while9TakeWhileINtNtNtB1l_5slice4iter4IterhENCINvNtNtCs4PheDXcg4wa_10polars_row8variable4utf817decode_str_as_cattE0ENCB30_s_0EE11spec_extendB37_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.q)
          to label %bb.i unwind label %.loopexit100.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4508

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi ptr [ %i.an, %.lr.ph.split.us ], [ %i.bp, %.lr.ph.split ], !dbg !4509
  %.us-phi119 = phi ptr [ %i.ao, %.lr.ph.split.us ], [ %i.bq, %.lr.ph.split ], !dbg !4509
  %.us-phi120 = phi i64 [ %i.ap, %.lr.ph.split.us ], [ %i.br, %.lr.ph.split ], !dbg !4509
  %.us-phi121 = phi ptr [ %.sroa.03.0118.us, %.lr.ph.split.us ], [ %.sroa.03.0118, %.lr.ph.split ], !dbg !4509
  %i.bw = add i64 %.us-phi120, -1, !dbg !4509
  %i.bx = getelementptr inbounds nuw i8, ptr %.us-phi, i64 1, !dbg !4510
  store ptr %i.bx, ptr %.us-phi121, align 8, !dbg !4511
  store i64 %i.bw, ptr %.us-phi119, align 8, !dbg !4511
  %.pre = load i64, ptr %i.ae, align 8, !dbg !4512
  br label %.loopexit99, !dbg !4513

.body34:                                          ; preds = %.loopexit100.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp101, %.body.i, %bb.bg, %bb.j, %bb.bj
  %.sroa.023.0 = phi i1 [ true, %bb.j ], [ %.sroa.023.3.lpad-body, %bb.bj ], [ false, %.body.i ], [ false, %bb.bg ], [ %5, %.loopexit.split-lp101 ], [ true, %.loopexit100.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], !dbg !4514
  %.pn29 = phi { ptr, i32 } [ %i.ci, %bb.j ], [ %eh.lpad-body, %bb.bj ], [ %eh.lpad-body.i, %.body.i ], [ %i.hk, %bb.bg ], [ %lpad.loopexit.split-lp103, %.loopexit.split-lp101 ], [ %lpad.loopexit.split-lp270, %.loopexit100.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(24) %i.r) #19
          to label %bb.bf unwind label %bb.bh, !dbg !4450

.loopexit100.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %bb.e, %.noexc40.us, %bb.g, %bb.n, %.noexc40, %bb.i, %bb.h
  %lpad.loopexit.split-lp270 = landingpad { ptr, i32 }
          cleanup
  br label %.body34

.loopexit.split-lp101:                            ; preds = %bb.o, %bb.p
  %5 = phi i1 [ true, %bb.o ], [ false, %bb.p ]
  %lpad.loopexit.split-lp103 = landingpad { ptr, i32 }
          cleanup
  br label %.body34

bb.i:                                             ; preds = %bb.h
  %i.by = load ptr, ptr %.sroa.03.0118, align 8, !dbg !4479, !nonnull !112, !noundef !112
  %i.bz = load i64, ptr %i.bq, align 8, !dbg !4479, !noundef !112
  %i.ca = load i64, ptr %i.ag, align 8, !dbg !4480, !noundef !112 ; 5 uses
  %i.cb = icmp sgt i64 %i.ca, -1, !dbg !4481
  call void @llvm.assume(i1 %i.cb), !dbg !4482
  %i.cc = add nuw i64 %i.ca, 1, !dbg !4483        ; 2 uses
  %i.cd = sub nuw i64 %i.bz, %i.cc, !dbg !4484
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cc, !dbg !4485
  store ptr %i.ce, ptr %.sroa.03.0118, align 8, !dbg !4486
  store i64 %i.cd, ptr %i.bq, align 8, !dbg !4486
  %i.cf = load ptr, ptr %i.af, align 8, !dbg !4487, !nonnull !112, !noundef !112 ; 3 uses
  %i.cg = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aj, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cf, i64 noundef %i.ca)
          to label %.noexc40 unwind label %.loopexit100.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4488

.noexc40:                                         ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4489, !noalias !4341
  store ptr %i.cf, ptr %i.b, align 8, !dbg !4489, !noalias !4341
  store i64 %i.ca, ptr %i.ak, align 8, !dbg !4489, !noalias !4341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4490, !noalias !4341
  invoke void @_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE22try_get_or_insert_withNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2e_18CategoricalMapping20insert_cat_with_hash0NCB2b_s_0ECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noundef nonnull align 128 %4, i64 noundef %i.cg, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cf, i64 noundef %i.ca, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noundef nonnull align 128 %4)
          to label %.noexc41 unwind label %.loopexit100.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4491

.noexc41:                                         ; preds = %.noexc40
  %i.ch = load i64, ptr %i.a, align 8, !dbg !4492, !range !304, !noalias !4341, !noundef !112 ; 2 uses
  %.not.i39 = icmp eq i64 %i.ch, 18, !dbg !4492
  br i1 %.not.i39, label %bb.m, label %.split124.us, !dbg !4493

.split124.us:                                     ; preds = %.noexc41, %.noexc41.us
  %.us-phi125 = phi i64 [ %i.bd, %.noexc41.us ], [ %i.ch, %.noexc41 ], !dbg !4515
  %.sroa.476.0.copyload = load i32, ptr %i.al, align 8, !dbg !4515, !noalias !4341
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12, !dbg !4515
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 12, !dbg !4516
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !4516, !noalias !4359
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.577.0..sroa_idx, i64 60, i1 false), !dbg !4515, !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4495, !noalias !4341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4496, !noalias !4341
  store i64 %.us-phi125, ptr %i.e, align 8, !dbg !4516, !noalias !4360
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !4516
  store i32 %.sroa.476.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !4516, !noalias !4360
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #20
          to label %bb.k unwind label %bb.j, !dbg !4517, !noalias !4361

bb.j:                                             ; preds = %.split124.us
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e) #19
          to label %.body34 unwind label %bb.l, !dbg !4518, !noalias !4361

bb.k:                                             ; preds = %.split124.us
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #16, !dbg !4519, !noalias !4361
  unreachable, !dbg !4519

bb.m:                                             ; preds = %.noexc41
  %i.ck = load ptr, ptr %i.al, align 8, !dbg !4494, !noalias !4341, !nonnull !112, !align !305, !noundef !112
  %i.cl = load i32, ptr %i.ck, align 4, !dbg !4494, !noalias !4342, !noundef !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4495, !noalias !4341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4496, !noalias !4341
  %i.cm = trunc i32 %i.cl to i16, !dbg !4497
  %i.cn = load i64, ptr %i.ae, align 8, !dbg !4498, !alias.scope !4344, !noundef !112 ; 3 uses
  %i.co = load i64, ptr %i.s, align 8, !dbg !4499, !range !166, !alias.scope !4344, !noundef !112
  %i.cp = icmp eq i64 %i.cn, %i.co, !dbg !4500
  br i1 %i.cp, label %bb.n, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCs4PheDXcg4wa_10polars_row.exit, !dbg !4500

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVectE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCs4PheDXcg4wa_10polars_row.exit unwind label %.loopexit100.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4501

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCs4PheDXcg4wa_10polars_row.exit: ; preds = %bb.n, %bb.m
  %i.cq = load ptr, ptr %i.ad, align 8, !dbg !4502, !alias.scope !4344, !nonnull !112, !noundef !112
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %i.cn, !dbg !4503
  store i16 %i.cm, ptr %i.cr, align 2, !dbg !4504
  %i.cs = add i64 %i.cn, 1, !dbg !4505            ; 2 uses
  store i64 %i.cs, ptr %i.ae, align 8, !dbg !4505, !alias.scope !4344
  %i.ct = icmp eq ptr %i.bo, %i.ah, !dbg !4468
  br i1 %i.ct, label %.loopexit99, label %.lr.ph.split, !dbg !4311

.loopexit99:                                      ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCs4PheDXcg4wa_10polars_row.exit, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCs4PheDXcg4wa_10polars_row.exit.us, %.split.us
  %6 = phi i64 [ %i.bm, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCs4PheDXcg4wa_10polars_row.exit.us ], [ %.pre, %.split.us ], [ %i.cs, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCs4PheDXcg4wa_10polars_row.exit ], !dbg !4512 ; 2 uses
  %i.cu = icmp ult i64 %6, 4611686018427387904, !dbg !4520
  call void @llvm.assume(i1 %i.cu), !dbg !4521
  %.not = icmp eq i64 %6, %2, !dbg !4522
  br i1 %.not, label %bb.p, label %bb.o, !dbg !4522

bb.o:                                             ; preds = %.loopexit99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !4523
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder13with_capacity(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.n, i64 noundef %2)
          to label %bb.q unwind label %.loopexit.split-lp101, !dbg !4524

bb.p:                                             ; preds = %bb.c, %.loopexit99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !4525
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !4525
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB2_14PrimitiveArraytE8from_vecCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
          to label %bb.bk unwind label %.loopexit.split-lp101, !dbg !4526

bb.q:                                             ; preds = %bb.o
  %i.cv = load i64, ptr %i.ae, align 8, !dbg !4527, !noundef !112 ; 5 uses
  %i.cw = icmp ult i64 %i.cv, 4611686018427387904, !dbg !4528
  call void @llvm.assume(i1 %i.cw), !dbg !4529
  %i.cx = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !4530 ; 8 uses
  %i.cy = load i64, ptr %i.cx, align 8, !dbg !4530, !noundef !112 ; 2 uses
  %i.cz = and i64 %i.cy, 63, !dbg !4530           ; 2 uses
  %i.da = add nuw nsw i64 %i.cz, %i.cv, !dbg !4531
  %i.db = icmp samesign ult i64 %i.da, 64, !dbg !4531
  br i1 %i.db, label %bb.s, label %bb.r, !dbg !4531, !prof !312

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder20extend_constant_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.n, i64 noundef %i.cv, i1 noundef zeroext true)
          to label %._crit_edge168 unwind label %.loopexit.split-lp, !dbg !4532

._crit_edge168:                                   ; preds = %bb.r
  %.pre169 = load i64, ptr %i.cx, align 8, !dbg !4533
  br label %bb.t, !dbg !4532

bb.s:                                             ; preds = %bb.q
  %notmask = shl nsw i64 -1, %i.cv, !dbg !4534
  %i.dc = xor i64 %notmask, -1, !dbg !4534
  %i.dd = shl i64 %i.dc, %i.cz, !dbg !4535
  %i.de = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !4536 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !dbg !4536, !noundef !112
  %i.dg = or i64 %i.df, %i.dd, !dbg !4536
  store i64 %i.dg, ptr %i.de, align 8, !dbg !4536
  %i.dh = add i64 %i.cy, %i.cv, !dbg !4537        ; 2 uses
  store i64 %i.dh, ptr %i.cx, align 8, !dbg !4537
  br label %bb.t, !dbg !4538

.loopexit:                                        ; preds = %bb.ac, %bb.ag, %bb.ah, %bb.ai, %.noexc, %bb.ao, %bb.aq
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

.loopexit.split-lp:                               ; preds = %bb.r, %bb.u, %bb.aa, %._crit_edge, %bb.x
  %.sroa.023.3.ph = phi i1 [ true, %bb.r ], [ true, %bb.u ], [ true, %bb.x ], [ false, %._crit_edge ], [ true, %bb.aa ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.t:                                             ; preds = %._crit_edge168, %bb.s
  %i.di = phi i64 [ %.pre169, %._crit_edge168 ], [ %i.dh, %bb.s ], !dbg !4533
  %i.dj = add i64 %i.di, 1, !dbg !4533            ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.n, i64 40, !dbg !4539 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !dbg !4539, !noundef !112
  %i.dm = icmp ugt i64 %i.dj, %i.dl, !dbg !4533
  br i1 %i.dm, label %bb.u, label %bb.v, !dbg !4533, !prof !173

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.n, i64 noundef 1)
          to label %._crit_edge170 unwind label %.loopexit.split-lp, !dbg !4540

._crit_edge170:                                   ; preds = %bb.u
  %.pre171 = load i64, ptr %i.cx, align 8, !dbg !4541, !alias.scope !4366
  %.pre174 = add i64 %.pre171, 1, !dbg !4542
  br label %bb.v, !dbg !4540

bb.v:                                             ; preds = %._crit_edge170, %bb.t
  %.pre-phi = phi i64 [ %.pre174, %._crit_edge170 ], [ %i.dj, %bb.t ], !dbg !4542 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4366), !dbg !4543
  %i.dn = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !4544 ; 5 uses
  %i.do = load i64, ptr %i.dn, align 8, !dbg !4544, !alias.scope !4366, !noundef !112 ; 2 uses
  store i64 %.pre-phi, ptr %i.cx, align 8, !dbg !4542, !alias.scope !4366
  %i.dp = and i64 %.pre-phi, 63, !dbg !4545
  %i.dq = icmp eq i64 %i.dp, 0, !dbg !4545
  br i1 %i.dq, label %bb.w, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit43, !dbg !4546

bb.w:                                             ; preds = %bb.v
  %i.dr = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !4547 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !dbg !4547, !alias.scope !4366, !noundef !112 ; 3 uses
  %i.dt = icmp sgt i64 %i.ds, -1, !dbg !4548
  call void @llvm.assume(i1 %i.dt), !dbg !4549
  %i.du = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !4550
  %i.dv = load ptr, ptr %i.du, align 8, !dbg !4550, !alias.scope !4366, !nonnull !112, !noundef !112
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.ds, !dbg !4551
  store i64 %i.do, ptr %i.dw, align 1, !dbg !4552, !noalias !4366
  %i.dx = add nuw i64 %i.ds, 8, !dbg !4553
  store i64 %i.dx, ptr %i.dr, align 8, !dbg !4554, !alias.scope !4366
  %i.dy = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.do), !dbg !4555
  %i.dz = getelementptr inbounds nuw i8, ptr %i.n, i64 48, !dbg !4556 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !dbg !4556, !alias.scope !4366, !noundef !112
  %i.eb = add i64 %i.ea, %i.dy, !dbg !4556
  store i64 %i.eb, ptr %i.dz, align 8, !dbg !4556, !alias.scope !4366
  store i64 0, ptr %i.dn, align 8, !dbg !4557, !alias.scope !4366
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit43, !dbg !4558

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit43: ; preds = %bb.v, %bb.w
  %i.ec = load i64, ptr %i.ae, align 8, !dbg !4559, !alias.scope !4367, !noundef !112 ; 4 uses
  %i.ed = load i64, ptr %i.s, align 8, !dbg !4560, !range !166, !alias.scope !4367, !noundef !112
  %i.ee = icmp eq i64 %i.ec, %i.ed, !dbg !4561
  br i1 %i.ee, label %bb.x, label %bb.y, !dbg !4561

bb.x:                                             ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit43
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVectE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.y unwind label %.loopexit.split-lp, !dbg !4562

bb.y:                                             ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit43, %bb.x
  %i.ef = load ptr, ptr %i.ad, align 8, !dbg !4563, !alias.scope !4367, !nonnull !112, !noundef !112
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.ef, i64 %i.ec, !dbg !4564
  store i16 0, ptr %i.eg, align 2, !dbg !4565
  %i.eh = add nsw i64 %i.ec, 1, !dbg !4566        ; 4 uses
  store i64 %i.eh, ptr %i.ae, align 8, !dbg !4566, !alias.scope !4367
  %i.ei = icmp slt i64 %i.ec, 4611686018427387903, !dbg !4567
  call void @llvm.assume(i1 %i.ei), !dbg !4568
  %i.ej = icmp samesign ugt i64 %i.eh, %2, !dbg !4569
  br i1 %i.ej, label %bb.aa, label %bb.z, !dbg !4569, !prof !173

bb.z:                                             ; preds = %bb.y
  %.idx128 = shl nuw nsw i64 %i.eh, 4, !dbg !4570 ; 2 uses
  %i.ek = icmp samesign eq i64 %.idx128, %.idx, !dbg !4571
  br i1 %i.ek, label %._crit_edge, label %.lr.ph127, !dbg !4572

.lr.ph127:                                        ; preds = %bb.z
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 %.idx128, !dbg !4570
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
  br label %bb.ab, !dbg !4572

bb.aa:                                            ; preds = %bb.y
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.eh, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #20
          to label %bb.bi unwind label %.loopexit.split-lp, !dbg !4573

bb.ab:                                            ; preds = %.lr.ph127, %.backedge
  %.sroa.010.0126 = phi ptr [ %i.el, %.lr.ph127 ], [ %i.es, %.backedge ] ; 8 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.010.0126, i64 16, !dbg !4574 ; 2 uses
  %i.et = load ptr, ptr %.sroa.010.0126, align 8, !dbg !4575, !nonnull !112, !noundef !112
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.010.0126, i64 8, !dbg !4575 ; 5 uses
  %i.ev = load i8, ptr %i.et, align 1, !dbg !4576, !noundef !112
  %i.ew = icmp ne i8 %i.ev, %sext, !dbg !4577     ; 2 uses
  %i.ex = load i64, ptr %i.cx, align 8, !dbg !4578, !noundef !112 ; 2 uses
  %i.ey = add i64 %i.ex, 1, !dbg !4578            ; 2 uses
  %i.ez = load i64, ptr %i.dk, align 8, !dbg !4579, !noundef !112
  %i.fa = icmp ugt i64 %i.ey, %i.ez, !dbg !4578
  br i1 %i.fa, label %bb.ac, label %bb.ad, !dbg !4578, !prof !173

._crit_edge:                                      ; preds = %.backedge, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !4580
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !4581
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !4581
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB2_14PrimitiveArraytE8from_vecCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.ar unwind label %.loopexit.split-lp, !dbg !4580

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.n, i64 noundef 1)
          to label %._crit_edge172 unwind label %.loopexit, !dbg !4582

._crit_edge172:                                   ; preds = %bb.ac
  %.pre173 = load i64, ptr %i.cx, align 8, !dbg !4583, !alias.scope !4381 ; 2 uses
  %.pre175 = add i64 %.pre173, 1, !dbg !4584
  br label %bb.ad, !dbg !4582

bb.ad:                                            ; preds = %._crit_edge172, %bb.ab
  %.pre-phi176 = phi i64 [ %.pre175, %._crit_edge172 ], [ %i.ey, %bb.ab ], !dbg !4584 ; 2 uses
  %i.fb = phi i64 [ %.pre173, %._crit_edge172 ], [ %i.ex, %bb.ab ], !dbg !4583
  call void @llvm.experimental.noalias.scope.decl(metadata !4381), !dbg !4585
  %i.fc = zext i1 %i.ew to i64, !dbg !4586
  %i.fd = and i64 %i.fb, 63, !dbg !4587
  %i.fe = shl nuw i64 %i.fc, %i.fd, !dbg !4586
  %i.ff = load i64, ptr %i.dn, align 8, !dbg !4588, !alias.scope !4381, !noundef !112
  %i.fg = or i64 %i.fe, %i.ff, !dbg !4588         ; 3 uses
  store i64 %i.fg, ptr %i.dn, align 8, !dbg !4588, !alias.scope !4381
  store i64 %.pre-phi176, ptr %i.cx, align 8, !dbg !4584, !alias.scope !4381
  %i.fh = and i64 %.pre-phi176, 63, !dbg !4589
  %i.fi = icmp eq i64 %i.fh, 0, !dbg !4589
  br i1 %i.fi, label %bb.ae, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, !dbg !4590

bb.ae:                                            ; preds = %bb.ad
  %i.fj = load i64, ptr %i.em, align 8, !dbg !4591, !alias.scope !4381, !noundef !112 ; 3 uses
  %i.fk = icmp sgt i64 %i.fj, -1, !dbg !4592
  call void @llvm.assume(i1 %i.fk), !dbg !4593
  %i.fl = load ptr, ptr %i.en, align 8, !dbg !4594, !alias.scope !4381, !nonnull !112, !noundef !112
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fj, !dbg !4595
  store i64 %i.fg, ptr %i.fm, align 1, !dbg !4596, !noalias !4381
  %i.fn = add nuw i64 %i.fj, 8, !dbg !4597
  store i64 %i.fn, ptr %i.em, align 8, !dbg !4598, !alias.scope !4381
  %i.fo = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fg), !dbg !4599
  %i.fp = load i64, ptr %i.eo, align 8, !dbg !4600, !alias.scope !4381, !noundef !112
  %i.fq = add i64 %i.fp, %i.fo, !dbg !4600
  store i64 %i.fq, ptr %i.eo, align 8, !dbg !4600, !alias.scope !4381
  store i64 0, ptr %i.dn, align 8, !dbg !4601, !alias.scope !4381
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, !dbg !4602

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit: ; preds = %bb.ae, %bb.ad
  br i1 %i.ew, label %bb.af, label %bb.ap, !dbg !4603

end_hunk_2
