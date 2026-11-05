Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/prism?download=true
inline.NumInlined: 2622
inline.NumDeleted: 264
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@parser_lex:bb.a
  %i.anf = load ptr, ptr %i.o, align 8, !tbaa !404 ; 2 uses
  %i.ang = getelementptr i8, ptr %0, i64 296      ; 3 uses
  %i.anh = load i64, ptr %i.ang, align 8, !tbaa !403
  %i.ani = add i64 %i.anh, 1                      ; 3 uses
  store i64 %i.ani, ptr %i.ang, align 8, !tbaa !403
  %i.anj = icmp ugt i64 %i.ani, 3
  br i1 %i.anj, label %bb.lu, label %bb.lw

bb.lu:                                            ; preds = %bb.lt
  %i.ank = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28 ; 13 uses
  store ptr %i.ank, ptr %i.o, align 8, !tbaa !404
  %i.anl = icmp eq ptr %i.ank, null
  br i1 %i.anl, label %lex_mode_push_string.exit, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  store i32 6, ptr %i.ank, align 8
  %.sroa.63180.0..sroa_idx3181 = getelementptr inbounds nuw i8, ptr %i.ank, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.63180.0..sroa_idx3181, i8 0, i64 12, i1 false)
  %.sroa.63182.0..sroa_idx3183 = getelementptr inbounds nuw i8, ptr %i.ank, i64 16
  store i8 1, ptr %.sroa.63182.0..sroa_idx3183, align 8
  %.sroa.73185.0..sroa_idx3186 = getelementptr inbounds nuw i8, ptr %i.ank, i64 17
  store i8 %i.and, ptr %.sroa.73185.0..sroa_idx3186, align 1
  %.sroa.83188.0..sroa_idx3189 = getelementptr inbounds nuw i8, ptr %i.ank, i64 18
  store i8 0, ptr %.sroa.83188.0..sroa_idx3189, align 2
  %.sroa.93191.0..sroa_idx3192 = getelementptr inbounds nuw i8, ptr %i.ank, i64 19
  store i8 34, ptr %.sroa.93191.0..sroa_idx3192, align 1
  %.sroa.103194.0..sroa_idx3195 = getelementptr inbounds nuw i8, ptr %i.ank, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %.sroa.103194.0..sroa_idx3195, ptr noundef nonnull align 1 dereferenceable(3) @.str.56, i64 3, i1 false)
  %.sroa.113196.0..sroa_idx3197 = getelementptr inbounds nuw i8, ptr %i.ank, i64 23
  store i8 34, ptr %.sroa.113196.0..sroa_idx3197, align 1
  %.sroa.123199.0..sroa_idx3200 = getelementptr inbounds nuw i8, ptr %i.ank, i64 24
  store i8 35, ptr %.sroa.123199.0..sroa_idx3200, align 8
  %.sroa.133202.0..sroa_idx3203 = getelementptr inbounds nuw i8, ptr %i.ank, i64 25
  %.sroa.5.0..sroa_idx18.i = getelementptr inbounds nuw i8, ptr %i.ank, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.133202.0..sroa_idx3203, i8 0, i64 31, i1 false)
  store ptr %i.anf, ptr %.sroa.5.0..sroa_idx18.i, align 8, !tbaa !345
  br label %lex_mode_push_string.exit

bb.lw:                                            ; preds = %bb.lt
  %i.anm = getelementptr i8, ptr %0, i64 40       ; 2 uses
  %i.ann = getelementptr [64 x i8], ptr %i.anm, i64 %i.ani ; 11 uses
  store i32 6, ptr %i.ann, align 8
  %.sroa.63180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ann, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.63180.0..sroa_idx, i8 0, i64 12, i1 false)
  %.sroa.63182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ann, i64 16
  store i8 1, ptr %.sroa.63182.0..sroa_idx, align 8
  %.sroa.73185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ann, i64 17
  store i8 %i.and, ptr %.sroa.73185.0..sroa_idx, align 1
  %.sroa.83188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ann, i64 18
  store i8 0, ptr %.sroa.83188.0..sroa_idx, align 2
  %.sroa.93191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ann, i64 19
  store i8 34, ptr %.sroa.93191.0..sroa_idx, align 1
  %.sroa.103194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ann, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %.sroa.103194.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) @.str.56, i64 3, i1 false)
  %.sroa.113196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ann, i64 23
  store i8 34, ptr %.sroa.113196.0..sroa_idx, align 1
  %.sroa.123199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ann, i64 24
  store i8 35, ptr %.sroa.123199.0..sroa_idx, align 8
  %.sroa.133202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ann, i64 25
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ann, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.133202.0..sroa_idx, i8 0, i64 31, i1 false)
  store ptr %i.anf, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !345
  %i.ano = load i64, ptr %i.ang, align 8, !tbaa !403
  %i.anp = getelementptr [64 x i8], ptr %i.anm, i64 %i.ano
  store ptr %i.anp, ptr %i.o, align 8, !tbaa !404
  br label %lex_mode_push_string.exit

lex_mode_push_string.exit:                        ; preds = %bb.lu, %bb.lv, %bb.lw
  store i32 147, ptr %i.c, align 8, !tbaa !467
  %i.anq = load ptr, ptr %i.ab, align 8, !tbaa !468 ; 3 uses
  %.not.i2568 = icmp eq ptr %i.anq, null
  br i1 %.not.i2568, label %parser_lex_callback.exit2967, label %bb.lx

bb.lx:                                            ; preds = %lex_mode_push_string.exit
  %i.anr = getelementptr i8, ptr %i.anq, i64 8
  %i.ans = load ptr, ptr %i.anr, align 8, !tbaa !470
  %i.ant = load ptr, ptr %i.anq, align 8, !tbaa !471
  call void %i.ans(ptr noundef %i.ant, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

bb.ly:                                            ; preds = %bb.t
  %.val2149 = load i32, ptr %i.w, align 4, !tbaa !473 ; 2 uses
  %i.anu = and i32 %.val2149, 128
  %.not3560 = icmp eq i32 %i.anu, 0
  br i1 %.not3560, label %bb.mb, label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  store i32 8, ptr %i.w, align 4, !tbaa !473
  store i32 23, ptr %i.c, align 8, !tbaa !467
  %i.anv = load ptr, ptr %i.ab, align 8, !tbaa !468 ; 3 uses
  %.not.i2570 = icmp eq ptr %i.anv, null
  br i1 %.not.i2570, label %parser_lex_callback.exit2967, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  %i.anw = getelementptr i8, ptr %i.anv, i64 8
  %i.anx = load ptr, ptr %i.anw, align 8, !tbaa !470
  %i.any = load ptr, ptr %i.anv, align 8, !tbaa !471
  call void %i.anx(ptr noundef %i.any, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

bb.mb:                                            ; preds = %bb.ly
  %i.anz = and i32 %.val2149, 256
  %.not3561 = icmp eq i32 %i.anz, 0
  br i1 %.not3561, label %bb.me, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  %.3595 = select i1 %i.k, i32 32, i32 16
  store i32 %.3595, ptr %i.w, align 4, !tbaa !473
  store i32 23, ptr %i.c, align 8, !tbaa !467
  %i.aoa = load ptr, ptr %i.ab, align 8, !tbaa !468 ; 3 uses
  %.not.i2572 = icmp eq ptr %i.aoa, null
  br i1 %.not.i2572, label %parser_lex_callback.exit2967, label %bb.md

bb.md:                                            ; preds = %bb.mc
  %i.aob = getelementptr i8, ptr %i.aoa, i64 8
  %i.aoc = load ptr, ptr %i.aob, align 8, !tbaa !470
  %i.aod = load ptr, ptr %i.aoa, align 8, !tbaa !471
  call void %i.aoc(ptr noundef %i.aod, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

bb.me:                                            ; preds = %bb.mb
  %i.aoe = getelementptr i8, ptr %0, i64 672
  store ptr null, ptr %i.aoe, align 8, !tbaa !481
  %i.aof = load ptr, ptr %i.o, align 8, !tbaa !404 ; 2 uses
  %i.aog = getelementptr i8, ptr %0, i64 296      ; 3 uses
  %i.aoh = load i64, ptr %i.aog, align 8, !tbaa !403
  %i.aoi = add i64 %i.aoh, 1                      ; 3 uses
  store i64 %i.aoi, ptr %i.aog, align 8, !tbaa !403
  %i.aoj = icmp ugt i64 %i.aoi, 3
  br i1 %i.aoj, label %bb.mf, label %bb.mh

bb.mf:                                            ; preds = %bb.me
  %i.aok = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28 ; 10 uses
  store ptr %i.aok, ptr %i.o, align 8, !tbaa !404
  %i.aol = icmp eq ptr %i.aok, null
  br i1 %i.aol, label %lex_mode_push_string.exit2579, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  store i32 6, ptr %i.aok, align 8
  %.sroa.63213.0..sroa_idx3214 = getelementptr inbounds nuw i8, ptr %i.aok, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.63213.0..sroa_idx3214, i8 0, i64 12, i1 false)
  %.sroa.63215.0..sroa_idx3216 = getelementptr inbounds nuw i8, ptr %i.aok, i64 16
  store <4 x i8> <i8 1, i8 0, i8 0, i8 96>, ptr %.sroa.63215.0..sroa_idx3216, align 8
  %.sroa.103227.0..sroa_idx3228 = getelementptr inbounds nuw i8, ptr %i.aok, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %.sroa.103227.0..sroa_idx3228, ptr noundef nonnull align 1 dereferenceable(3) @.str.56, i64 3, i1 false)
  %.sroa.113229.0..sroa_idx3230 = getelementptr inbounds nuw i8, ptr %i.aok, i64 23
  store i8 96, ptr %.sroa.113229.0..sroa_idx3230, align 1
  %.sroa.123232.0..sroa_idx3233 = getelementptr inbounds nuw i8, ptr %i.aok, i64 24
  store i8 35, ptr %.sroa.123232.0..sroa_idx3233, align 8
  %.sroa.133235.0..sroa_idx3236 = getelementptr inbounds nuw i8, ptr %i.aok, i64 25
  %.sroa.5.0..sroa_idx18.i2578 = getelementptr inbounds nuw i8, ptr %i.aok, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.133235.0..sroa_idx3236, i8 0, i64 31, i1 false)
  store ptr %i.aof, ptr %.sroa.5.0..sroa_idx18.i2578, align 8, !tbaa !345
  br label %lex_mode_push_string.exit2579

bb.mh:                                            ; preds = %bb.me
  %i.aom = getelementptr i8, ptr %0, i64 40       ; 2 uses
  %i.aon = getelementptr [64 x i8], ptr %i.aom, i64 %i.aoi ; 8 uses
  store i32 6, ptr %i.aon, align 8
  %.sroa.63213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aon, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.63213.0..sroa_idx, i8 0, i64 12, i1 false)
  %.sroa.63215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aon, i64 16
  store <4 x i8> <i8 1, i8 0, i8 0, i8 96>, ptr %.sroa.63215.0..sroa_idx, align 8
  %.sroa.103227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aon, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %.sroa.103227.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) @.str.56, i64 3, i1 false)
  %.sroa.113229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aon, i64 23
  store i8 96, ptr %.sroa.113229.0..sroa_idx, align 1
  %.sroa.123232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aon, i64 24
  store i8 35, ptr %.sroa.123232.0..sroa_idx, align 8
  %.sroa.133235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aon, i64 25
  %.sroa.5.0..sroa_idx.i2576 = getelementptr inbounds nuw i8, ptr %i.aon, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.133235.0..sroa_idx, i8 0, i64 31, i1 false)
  store ptr %i.aof, ptr %.sroa.5.0..sroa_idx.i2576, align 8, !tbaa !345
  %i.aoo = load i64, ptr %i.aog, align 8, !tbaa !403
  %i.aop = getelementptr [64 x i8], ptr %i.aom, i64 %i.aoo
  store ptr %i.aop, ptr %i.o, align 8, !tbaa !404
  br label %lex_mode_push_string.exit2579

lex_mode_push_string.exit2579:                    ; preds = %bb.mf, %bb.mg, %bb.mh
  store i32 23, ptr %i.c, align 8, !tbaa !467
  %i.aoq = load ptr, ptr %i.ab, align 8, !tbaa !468 ; 3 uses
  %.not.i2580 = icmp eq ptr %i.aoq, null
  br i1 %.not.i2580, label %parser_lex_callback.exit2967, label %bb.mi

bb.mi:                                            ; preds = %lex_mode_push_string.exit2579
  %i.aor = getelementptr i8, ptr %i.aoq, i64 8
  %i.aos = load ptr, ptr %i.aor, align 8, !tbaa !470
  %i.aot = load ptr, ptr %i.aoq, align 8, !tbaa !471
  call void %i.aos(ptr noundef %i.aot, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

bb.mj:                                            ; preds = %bb.t
  %.val2147 = load i32, ptr %i.w, align 4, !tbaa !473 ; 2 uses
  %i.aou = and i32 %.val2147, 1032
  %.not3559 = icmp eq i32 %i.aou, 0
  %or.cond24 = or i1 %.not3559, %i.k
  %i.aov = and i32 %.val2147, 48
  %i.aow = icmp ne i32 %i.aov, 0
  %not.or.cond24 = xor i1 %or.cond24, true
  %i.aox = select i1 %not.or.cond24, i1 true, i1 %i.aow
  %8 = zext i1 %i.aox to i8                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.123265)
  %.sroa.123265.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.123265, i64 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %.sroa.123265.3..sroa_idx, i8 0, i64 37, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %.sroa.123265, ptr noundef nonnull align 1 dereferenceable(3) getelementptr inbounds nuw (i8, ptr @.str.56, i64 4), i64 3, i1 false)
  %i.aoy = getelementptr i8, ptr %0, i64 672
  store ptr null, ptr %i.aoy, align 8, !tbaa !481
  %i.aoz = load ptr, ptr %i.o, align 8, !tbaa !404 ; 2 uses
  %i.apa = getelementptr i8, ptr %0, i64 296      ; 3 uses
  %i.apb = load i64, ptr %i.apa, align 8, !tbaa !403
  %i.apc = add i64 %i.apb, 1                      ; 3 uses
  store i64 %i.apc, ptr %i.apa, align 8, !tbaa !403
  %i.apd = icmp ugt i64 %i.apc, 3
  br i1 %i.apd, label %bb.mk, label %bb.mm

bb.mk:                                            ; preds = %bb.mj
  %i.ape = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28 ; 11 uses
  store ptr %i.ape, ptr %i.o, align 8, !tbaa !404
  %i.apf = icmp eq ptr %i.ape, null
  br i1 %i.apf, label %lex_mode_push_string.exit2587, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  store i32 6, ptr %i.ape, align 8
  %.sroa.63246.0..sroa_idx3247 = getelementptr inbounds nuw i8, ptr %i.ape, i64 4
  %.sroa.73251.0..sroa_idx3252 = getelementptr inbounds nuw i8, ptr %i.ape, i64 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.63246.0..sroa_idx3247, i8 0, i64 13, i1 false)
  store i8 %8, ptr %.sroa.73251.0..sroa_idx3252, align 1
  %.sroa.83254.0..sroa_idx3255 = getelementptr inbounds nuw i8, ptr %i.ape, i64 18
  store i8 0, ptr %.sroa.83254.0..sroa_idx3255, align 2
  %.sroa.93257.0..sroa_idx3258 = getelementptr inbounds nuw i8, ptr %i.ape, i64 19
  store i8 39, ptr %.sroa.93257.0..sroa_idx3258, align 1
  %.sroa.103260.0..sroa_idx3261 = getelementptr inbounds nuw i8, ptr %i.ape, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %.sroa.103260.0..sroa_idx3261, ptr noundef nonnull align 1 dereferenceable(3) @.str.56, i64 3, i1 false)
  %.sroa.113262.0..sroa_idx3263 = getelementptr inbounds nuw i8, ptr %i.ape, i64 23
  store i8 39, ptr %.sroa.113262.0..sroa_idx3263, align 1
  %.sroa.123265.0..sroa_idx3266 = getelementptr inbounds nuw i8, ptr %i.ape, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.123265.0..sroa_idx3266, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.123265, i64 32, i1 false)
  %.sroa.5.0..sroa_idx18.i2586 = getelementptr inbounds nuw i8, ptr %i.ape, i64 56
  store ptr %i.aoz, ptr %.sroa.5.0..sroa_idx18.i2586, align 8, !tbaa !345
  br label %lex_mode_push_string.exit2587

bb.mm:                                            ; preds = %bb.mj
  %i.apg = getelementptr i8, ptr %0, i64 40       ; 2 uses
  %i.aph = getelementptr [64 x i8], ptr %i.apg, i64 %i.apc ; 9 uses
  store i32 6, ptr %i.aph, align 8
  %.sroa.63246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aph, i64 4
  %.sroa.73251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aph, i64 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.63246.0..sroa_idx, i8 0, i64 13, i1 false)
  store i8 %8, ptr %.sroa.73251.0..sroa_idx, align 1
  %.sroa.83254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aph, i64 18
  store i8 0, ptr %.sroa.83254.0..sroa_idx, align 2
  %.sroa.93257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aph, i64 19
  store i8 39, ptr %.sroa.93257.0..sroa_idx, align 1
  %.sroa.103260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aph, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %.sroa.103260.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) @.str.56, i64 3, i1 false)
  %.sroa.113262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aph, i64 23
  store i8 39, ptr %.sroa.113262.0..sroa_idx, align 1
  %.sroa.123265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aph, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.123265.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.123265, i64 32, i1 false)
  %.sroa.5.0..sroa_idx.i2584 = getelementptr inbounds nuw i8, ptr %i.aph, i64 56
  store ptr %i.aoz, ptr %.sroa.5.0..sroa_idx.i2584, align 8, !tbaa !345
  %i.api = load i64, ptr %i.apa, align 8, !tbaa !403
  %i.apj = getelementptr [64 x i8], ptr %i.apg, i64 %i.api
  store ptr %i.apj, ptr %i.o, align 8, !tbaa !404
  br label %lex_mode_push_string.exit2587

lex_mode_push_string.exit2587:                    ; preds = %bb.mk, %bb.ml, %bb.mm
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.123265)
  store i32 147, ptr %i.c, align 8, !tbaa !467
  %i.apk = load ptr, ptr %i.ab, align 8, !tbaa !468 ; 3 uses
  %.not.i2588 = icmp eq ptr %i.apk, null
  br i1 %.not.i2588, label %parser_lex_callback.exit2967, label %bb.mn

bb.mn:                                            ; preds = %lex_mode_push_string.exit2587
  %i.apl = getelementptr i8, ptr %i.apk, i64 8
  %i.apm = load ptr, ptr %i.apl, align 8, !tbaa !470
  %i.apn = load ptr, ptr %i.apk, align 8, !tbaa !471
  call void %i.apm(ptr noundef %i.apn, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

bb.mo:                                            ; preds = %bb.t
  %.val48.i = load i32, ptr %i.w, align 4, !tbaa !473
  %i.apo = and i32 %.val48.i, 14
  %.not57.i = icmp eq i32 %i.apo, 0
  br i1 %.not57.i, label %bb.mq, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  store i32 1, ptr %i.w, align 4, !tbaa !473
  br label %lex_question_mark.exit

bb.mq:                                            ; preds = %bb.mo
  %.not.i2591 = icmp ult ptr %i.cj, %i.bu
  br i1 %.not.i2591, label %bb.ms, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  %i.app = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.y, ptr noundef nonnull %.ph, ptr noundef %i.cj, i32 noundef 139) #27 ; 0 uses
  %i.apq = getelementptr i8, ptr %0, i64 640
  %i.apr = load ptr, ptr %i.v, align 8, !tbaa !464
  %i.aps = getelementptr i8, ptr %i.apr, i64 1
  %i.apt = load ptr, ptr %i.d, align 8, !tbaa !398
  call void @pm_string_shared_init(ptr noundef %i.apq, ptr noundef %i.aps, ptr noundef %i.apt) #27
  br label %lex_question_mark.exit

bb.ms:                                            ; preds = %bb.mq
  %i.apu = load i8, ptr %i.cj, align 1, !tbaa !394
  %i.apv = call zeroext i1 @pm_char_is_whitespace(i8 noundef zeroext %i.apu) #27
  store i32 1, ptr %i.w, align 4, !tbaa !473
  br i1 %i.apv, label %lex_question_mark.exit, label %bb.mt

bb.mt:                                            ; preds = %bb.ms
  %.val.i.i = load ptr, ptr %i.f, align 8, !tbaa !400 ; 2 uses
  %.val3.i.i = load ptr, ptr %i.d, align 8, !tbaa !398 ; 5 uses
  %i.apw = icmp ult ptr %.val3.i.i, %.val.i.i
  br i1 %i.apw, label %peek.exit.i.i, label %bb.mv

peek.exit.i.i:                                    ; preds = %bb.mt
  %i.apx = load i8, ptr %.val3.i.i, align 1, !tbaa !394
  %i.apy = icmp eq i8 %i.apx, 92
  br i1 %i.apy, label %bb.mu, label %bb.mv

bb.mu:                                            ; preds = %peek.exit.i.i
  %i.apz = getelementptr i8, ptr %.val3.i.i, i64 1
  store ptr %i.apz, ptr %i.d, align 8, !tbaa !398
  store i32 2, ptr %i.w, align 4, !tbaa !473
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.aqa = call zeroext i1 @pm_buffer_init_capacity(ptr noundef nonnull %2, i64 noundef 3) #27 ; 0 uses
  call fastcc void @escape_read(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef null, i8 noundef zeroext 4)
  %i.aqb = getelementptr i8, ptr %0, i64 640
  %i.aqc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aqd = load ptr, ptr %i.aqc, align 8, !tbaa !739
  %i.aqe = load i64, ptr %2, align 8, !tbaa !740
  call void @pm_string_owned_init(ptr noundef %i.aqb, ptr noundef %i.aqd, i64 noundef %i.aqe) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %lex_question_mark.exit

bb.mv:                                            ; preds = %peek.exit.i.i, %bb.mt
  %i.aqf = load ptr, ptr %i.x, align 8, !tbaa !371
  %i.aqg = load ptr, ptr %i.aqf, align 8, !tbaa !456
  %i.aqh = ptrtoint ptr %.val.i.i to i64
  %i.aqi = ptrtoint ptr %.val3.i.i to i64
  %i.aqj = sub i64 %i.aqh, %i.aqi
  %i.aqk = call i64 %i.aqg(ptr noundef %.val3.i.i, i64 noundef %i.aqj) #27, !inline_history !709 ; 2 uses
  %i.aql = load ptr, ptr %i.x, align 8, !tbaa !371
  %i.aqm = getelementptr i8, ptr %i.aql, i64 16
  %i.aqn = load ptr, ptr %i.aqm, align 8, !tbaa !458
  %i.aqo = load ptr, ptr %i.d, align 8, !tbaa !398 ; 2 uses
  %i.aqp = load ptr, ptr %i.f, align 8, !tbaa !400
  %i.aqq = ptrtoint ptr %i.aqp to i64
  %i.aqr = ptrtoint ptr %i.aqo to i64
  %i.aqs = sub i64 %i.aqq, %i.aqr
  %i.aqt = call i64 %i.aqn(ptr noundef %i.aqo, i64 noundef %i.aqs) #27, !inline_history !709
  %.not44.i = icmp eq i64 %i.aqt, 0
  %.pre.i2592 = load ptr, ptr %i.d, align 8, !tbaa !398 ; 3 uses
  %.pre58.i = load ptr, ptr %i.f, align 8, !tbaa !400 ; 3 uses
  br i1 %.not44.i, label %bb.mw, label %bb.mx

bb.mw:                                            ; preds = %bb.mv
  %i.aqu = icmp ult ptr %.pre.i2592, %.pre58.i
  br i1 %i.aqu, label %peek.exit.i2594, label %peek.exit.thread.i

peek.exit.i2594:                                  ; preds = %bb.mw
  %i.aqv = load i8, ptr %.pre.i2592, align 1, !tbaa !394
  %i.aqw = icmp eq i8 %i.aqv, 95
  br i1 %i.aqw, label %bb.mx, label %peek.exit.thread.i

bb.mx:                                            ; preds = %peek.exit.i2594, %bb.mv
  %i.aqx = getelementptr i8, ptr %.pre.i2592, i64 %i.aqk ; 7 uses
  %.not45.i = icmp ult ptr %i.aqx, %.pre58.i
  br i1 %.not45.i, label %bb.my, label %peek.exit.thread.i

bb.my:                                            ; preds = %bb.mx
  %i.aqy = ptrtoint ptr %.pre58.i to i64
  %i.aqz = ptrtoint ptr %i.aqx to i64
  %i.ara = sub i64 %i.aqy, %i.aqz                 ; 4 uses
  %i.arb = icmp slt i64 %i.ara, 1
  br i1 %i.arb, label %peek.exit.thread.i, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %i.arc = load i8, ptr %i.ac, align 1, !tbaa !374, !range !375, !noundef !376
  %i.ard = trunc nuw i8 %i.arc to i1
  br i1 %i.ard, label %bb.na, label %bb.ne

bb.na:                                            ; preds = %bb.mz
  %i.are = load ptr, ptr %i.x, align 8, !tbaa !371
  %i.arf = getelementptr i8, ptr %i.are, i64 16
  %i.arg = load ptr, ptr %i.arf, align 8, !tbaa !458
  %i.arh = call i64 %i.arg(ptr noundef %i.aqx, i64 noundef %i.ara) #27, !inline_history !710
  %.not.i.i2593 = icmp eq i64 %i.arh, 0
  br i1 %.not.i.i2593, label %bb.nb, label %lex_question_mark.exit

bb.nb:                                            ; preds = %bb.na
  %i.ari = load i8, ptr %i.aqx, align 1, !tbaa !394 ; 2 uses
  %i.arj = icmp eq i8 %i.ari, 95
  br i1 %i.arj, label %lex_question_mark.exit, label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  %i.ark = icmp slt i8 %i.ari, 0
  br i1 %i.ark, label %bb.nd, label %peek.exit.thread.i

bb.nd:                                            ; preds = %bb.nc
  %i.arl = load ptr, ptr %i.x, align 8, !tbaa !371
  %i.arm = load ptr, ptr %i.arl, align 8, !tbaa !456
end_hunk_0
