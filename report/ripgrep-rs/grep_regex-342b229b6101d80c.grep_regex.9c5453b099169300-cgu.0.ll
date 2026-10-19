Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/grep_regex-342b229b6101d80c.grep_regex.9c5453b099169300-cgu.0?download=true
inline.NumInlined: 279
inline.NumDeleted: 132
begin_hunk_0_@_RNvMs_NtCsdq8xsXUia3c_10grep_regex7matcherNtB4_19RegexMatcherBuilder5build:bb.a
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #22
          to label %.body.i unwind label %bb.ar, !dbg !3182, !noalias !3088

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !3182, !noalias !3082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !3182, !noalias !3082
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.w unwind label %bb.u, !dbg !3198, !noalias !3088

bb.u:                                             ; preds = %bb.t
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.k, align 8, !dbg !3198, !alias.scope !3114, !noalias !3082 ; 2 uses
  %i.ba = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.ba, label %.body.i, label %bb.v, !dbg !3199

bb.v:                                             ; preds = %bb.u
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !3198
  %.val3.i.i.i = load ptr, ptr %i.bb, align 8, !dbg !3198, !alias.scope !3115, !noalias !3082, !nonnull !212, !noundef !212
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !dbg !3200, !noalias !3116
  br label %.body.i, !dbg !3201

bb.w:                                             ; preds = %bb.t
  %.val.i.i.i = load i64, ptr %i.k, align 8, !dbg !3198, !alias.scope !3114, !noalias !3082 ; 2 uses
  %i.bc = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.bc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsdq8xsXUia3c_10grep_regex.exit.i, label %bb.x, !dbg !3202

bb.x:                                             ; preds = %bb.w
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !3198
  %.val1.i.i.i = load ptr, ptr %i.bd, align 8, !dbg !3198, !alias.scope !3115, !noalias !3082, !nonnull !212, !noundef !212
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !dbg !3203, !noalias !3117
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsdq8xsXUia3c_10grep_regex.exit.i, !dbg !3204

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsdq8xsXUia3c_10grep_regex.exit.i: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !3182, !noalias !3082
  br label %bb.q, !dbg !3182

bb.y:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !3205, !noalias !3082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !3206, !noalias !3082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !3206, !noalias !3082
  invoke void @_RNvMNtCsdq8xsXUia3c_10grep_regex7literalNtB2_13InnerLiterals3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m)
          to label %bb.z unwind label %bb.j, !dbg !3206, !noalias !3088

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvMNtCsdq8xsXUia3c_10grep_regex7literalNtB2_13InnerLiterals9one_regex(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
          to label %bb.ab unwind label %bb.aa, !dbg !3207, !noalias !3088

bb.aa:                                            ; preds = %bb.z
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdq8xsXUia3c_10grep_regex7literal13InnerLiteralsEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #22
          to label %.body.i unwind label %bb.ar, !dbg !3208, !noalias !3088

bb.ab:                                            ; preds = %bb.z
  %i.bf = load i8, ptr %i.f, align 8, !dbg !3209, !range !357, !noalias !3082, !noundef !212 ; 2 uses
  %.not97.i = icmp eq i8 %i.bf, -1, !dbg !3209
  br i1 %.not97.i, label %bb.ai, label %bb.ac, !dbg !3210

bb.ac:                                            ; preds = %bb.ab
  %.sroa.487.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1, !dbg !3211
  %.sroa.492.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !3212
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.492.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.487.0..sroa_idx.i, i64 7, i1 false), !dbg !3211, !noalias !3089
  %.sroa.588.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !3211
  %.sroa.790.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !3211
  %.sroa.790.0.copyload.i = load i64, ptr %.sroa.790.0..sroa_idx.i, align 8, !dbg !3211, !noalias !3082
  %.sroa.593.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3212
  %i.bg = load <2 x ptr>, ptr %.sroa.588.0..sroa_idx.i, align 8, !dbg !3211, !noalias !3082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !3213, !noalias !3082
  store i8 %i.bf, ptr %0, align 8, !dbg !3212, !alias.scope !3080
  store <2 x ptr> %i.bg, ptr %.sroa.593.0..sroa_idx.i, align 8, !dbg !3212, !alias.scope !3080
  %.sroa.795.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !3212
  store i64 %.sroa.790.0.copyload.i, ptr %.sroa.795.0..sroa_idx.i, align 8, !dbg !3212, !alias.scope !3080
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 99, !dbg !3212
  store i8 2, ptr %i.bh, align 1, !dbg !3212, !alias.scope !3080
  %i.bi = load i64, ptr %i.e, align 8, !dbg !3214, !range !238, !alias.scope !3119, !noalias !3082, !noundef !212
  %i.bj = icmp eq i64 %i.bi, -1, !dbg !3214
  br i1 %i.bj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdq8xsXUia3c_10grep_regex7literal13InnerLiteralsEBF_.exit.i, label %bb.ad, !dbg !3214

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.ag unwind label %bb.ae, !dbg !3215, !noalias !3088

bb.ae:                                            ; preds = %bb.ad
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i = load i64, ptr %i.e, align 8, !dbg !3215, !alias.scope !3120, !noalias !3082 ; 2 uses
  %i.bl = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.bl, label %.body.i, label %bb.af, !dbg !3216

bb.af:                                            ; preds = %bb.ae
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !3215
  %.val3.i.i.i.i.i = load ptr, ptr %i.bm, align 8, !dbg !3215, !alias.scope !3121, !noalias !3082, !nonnull !212, !noundef !212
  %i.bn = shl nuw i64 %.val2.i.i.i.i.i, 5, !dbg !3217
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %i.bn, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !dbg !3218, !noalias !3122
  br label %.body.i, !dbg !3219

bb.ag:                                            ; preds = %bb.ad
  %.val.i.i.i.i.i = load i64, ptr %i.e, align 8, !dbg !3215, !alias.scope !3120, !noalias !3082 ; 2 uses
  %i.bo = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.bo, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdq8xsXUia3c_10grep_regex7literal13InnerLiteralsEBF_.exit.i, label %bb.ah, !dbg !3220

bb.ah:                                            ; preds = %bb.ag
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !3215
  %.val1.i.i.i.i.i = load ptr, ptr %i.bp, align 8, !dbg !3215, !alias.scope !3121, !noalias !3082, !nonnull !212, !noundef !212
  %i.bq = shl nuw i64 %.val.i.i.i.i.i, 5, !dbg !3221
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !dbg !3222, !noalias !3123
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdq8xsXUia3c_10grep_regex7literal13InnerLiteralsEBF_.exit.i, !dbg !3223

bb.ai:                                            ; preds = %bb.ab
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !3224
  %i.bs = load ptr, ptr %i.br, align 8, !dbg !3224, !noalias !3082, !noundef !212 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !3224
  %i.bu = load ptr, ptr %i.bt, align 8, !dbg !3224, !noalias !3082 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !3213, !noalias !3082
  store ptr %i.bs, ptr %i.g, align 8, !dbg !3225, !noalias !3082
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !3225
  store ptr %i.bu, ptr %i.bv, align 8, !dbg !3225, !noalias !3082
  %i.bw = load i64, ptr %i.e, align 8, !dbg !3226, !range !238, !alias.scope !3124, !noalias !3082, !noundef !212
  %i.bx = icmp eq i64 %i.bw, -1, !dbg !3226
  br i1 %i.bx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdq8xsXUia3c_10grep_regex7literal13InnerLiteralsEBF_.exit112.i, label %bb.aj, !dbg !3226

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.am unwind label %bb.ak, !dbg !3227, !noalias !3088

bb.ak:                                            ; preds = %bb.aj
  %i.by = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i105.i = load i64, ptr %i.e, align 8, !dbg !3227, !alias.scope !3125, !noalias !3082 ; 2 uses
  %i.bz = icmp eq i64 %.val2.i.i.i.i105.i, 0
  br i1 %i.bz, label %.body110.i, label %bb.al, !dbg !3228

bb.al:                                            ; preds = %bb.ak
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !3227
  %.val3.i.i.i.i106.i = load ptr, ptr %i.ca, align 8, !dbg !3227, !alias.scope !3126, !noalias !3082, !nonnull !212, !noundef !212
  %i.cb = shl nuw i64 %.val2.i.i.i.i105.i, 5, !dbg !3229
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i106.i, i64 noundef %i.cb, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !dbg !3230, !noalias !3127
  br label %.body110.i, !dbg !3231

bb.am:                                            ; preds = %bb.aj
  %.val.i.i.i.i108.i = load i64, ptr %i.e, align 8, !dbg !3227, !alias.scope !3125, !noalias !3082 ; 2 uses
  %i.cc = icmp eq i64 %.val.i.i.i.i108.i, 0
  br i1 %i.cc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdq8xsXUia3c_10grep_regex7literal13InnerLiteralsEBF_.exit112.i, label %bb.an, !dbg !3232

bb.an:                                            ; preds = %bb.am
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !3227
  %.val1.i.i.i.i109.i = load ptr, ptr %i.cd, align 8, !dbg !3227, !alias.scope !3126, !noalias !3082, !nonnull !212, !noundef !212
  %i.ce = shl nuw i64 %.val.i.i.i.i108.i, 5, !dbg !3233
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i109.i, i64 noundef %i.ce, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !dbg !3234, !noalias !3128
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdq8xsXUia3c_10grep_regex7literal13InnerLiteralsEBF_.exit112.i, !dbg !3235

.body110.i:                                       ; preds = %bb.al, %bb.ak
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #22
          to label %.body.i unwind label %bb.ar, !dbg !3236, !noalias !3088

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdq8xsXUia3c_10grep_regex7literal13InnerLiteralsEBF_.exit112.i: ; preds = %bb.an, %bb.am, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !3208, !noalias !3082
  %i.cf = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !3237, !noalias !3082, !nonnull !212, !noundef !212
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 56, !dbg !3237
  %i.ch = load i32, ptr %i.cg, align 8, !dbg !3237, !noalias !3088, !noundef !212
  %i.ci = and i32 %i.ch, 3, !dbg !3238
  %or.cond.not.i = icmp eq i32 %i.ci, 0, !dbg !3238 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.s, i64 68, !dbg !3238
  %i.ck = load i8, ptr %i.cj, align 4, !dbg !3238, !range !3131, !noalias !3082
  %i.cl = getelementptr inbounds nuw i8, ptr %i.s, i64 69, !dbg !3238
  %i.cm = load i8, ptr %i.cl, align 1, !dbg !3238, !noalias !3082
  %.sroa.040.0.i = select i1 %or.cond.not.i, i8 %i.ck, i8 2, !dbg !3238
  %.sroa.541.0.i = select i1 %or.cond.not.i, i8 %i.cm, i8 undef, !dbg !3238
  %.sroa.847.sroa.6.0..sroa.847.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 86, !dbg !3239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.sroa.847.sroa.6.0..sroa.847.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(18) %.sroa.557.i, i64 18, i1 false), !dbg !3240, !noalias !3089
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !dbg !3240, !noalias !3089
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !3239
  store ptr %i.bs, ptr %.sroa.443.0..sroa_idx.i, align 8, !dbg !3239, !alias.scope !3080
  %.sroa.544.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !3239
  store ptr %i.bu, ptr %.sroa.544.0..sroa_idx.i, align 8, !dbg !3239, !alias.scope !3080
  %.sroa.645.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !3239
  %i.cn = load <2 x ptr>, ptr %i.m, align 16, !dbg !3241, !noalias !3082
  store <2 x ptr> %i.cn, ptr %.sroa.645.0..sroa_idx.i, align 8, !dbg !3239, !alias.scope !3080
  %.sroa.847.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !3239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.847.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 20, i1 false), !dbg !3239, !alias.scope !3088
  %.sroa.847.sroa.4.0..sroa.847.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 84, !dbg !3239
  store i8 %.sroa.040.0.i, ptr %.sroa.847.sroa.4.0..sroa.847.0..sroa_idx.sroa_idx.i, align 4, !dbg !3239, !alias.scope !3080
  %.sroa.847.sroa.5.0..sroa.847.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 85, !dbg !3239
  store i8 %.sroa.541.0.i, ptr %.sroa.847.sroa.5.0..sroa.847.0..sroa_idx.sroa_idx.i, align 1, !dbg !3239, !alias.scope !3080
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !3236, !noalias !3082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !3242, !noalias !3082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !3176, !noalias !3082
  invoke void @_RNvXsm_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB5_3HirNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.s)
          to label %bb.ap unwind label %bb.ao, !dbg !3243, !noalias !3088, !inline_history !240

bb.ao:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdq8xsXUia3c_10grep_regex7literal13InnerLiteralsEBF_.exit112.i
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7HirKindECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.s) #22
          to label %common.resume.sink.split.i unwind label %bb.aq, !dbg !3243, !noalias !3088, !inline_history !240

bb.ap:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdq8xsXUia3c_10grep_regex7literal13InnerLiteralsEBF_.exit112.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7HirKindECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdq8xsXUia3c_10grep_regex6config13ConfiguredHIREBF_.exit.i unwind label %bb.ax, !dbg !3243, !noalias !3088, !inline_history !240

bb.aq:                                            ; preds = %bb.ao
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !3243, !noalias !3088, !inline_history !240
  unreachable, !dbg !3243

common.resume.sink.split.i:                       ; preds = %bb.ax, %bb.av, %bb.ao
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.co, %bb.ao ], [ %i.cw, %bb.av ], [ %i.cx, %bb.ax ]
  %.val2.i.i118.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !3244, !noalias !3082, !nonnull !212, !noundef !212
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i118.i, i64 noundef 80, i64 noundef 8) #23, !dbg !3245, !noalias !3088
  br label %common.resume.i, !dbg !3246

common.resume.i:                                  ; preds = %.thread.i, %common.resume.sink.split.i
  %common.resume.op.i = phi { ptr, i32 } [ %.pn99124.i, %.thread.i ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !3246

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdq8xsXUia3c_10grep_regex6config13ConfiguredHIREBF_.exit.i: ; preds = %bb.ap
  %.val.i.i114.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !3243, !alias.scope !3132, !noalias !3082, !nonnull !212, !noundef !212
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i114.i, i64 noundef 80, i64 noundef 8) #23, !dbg !3247, !noalias !3088, !inline_history !240
  br label %_RINvMs_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_19RegexMatcherBuilder10build_manyReEB7_.exit, !dbg !3248

bb.ar:                                            ; preds = %.thread.i, %.body110.i, %bb.aa, %bb.s, %.body.i
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !3249, !noalias !3088
  unreachable, !dbg !3249

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdq8xsXUia3c_10grep_regex7literal13InnerLiteralsEBF_.exit.i: ; preds = %bb.ah, %bb.ag, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !3208, !noalias !3082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !3236, !noalias !3082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !3242, !noalias !3082
  call void @llvm.experimental.noalias.scope.decl(metadata !3133), !dbg !3176
  call void @llvm.experimental.noalias.scope.decl(metadata !3134), !dbg !3250
  call void @llvm.experimental.noalias.scope.decl(metadata !3135), !dbg !3251
  %i.cr = load ptr, ptr %i.m, align 16, !dbg !3252, !alias.scope !3136, !noalias !3082, !nonnull !212, !noundef !212
  %i.cs = atomicrmw sub ptr %i.cr, i64 1 release, align 8, !dbg !3253, !noalias !3137
  %i.ct = icmp eq i64 %i.cs, 1, !dbg !3254
  br i1 %i.ct, label %bb.as, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex6RegexIEECsdq8xsXUia3c_10grep_regex.exit.i.i, !dbg !3254

bb.as:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdq8xsXUia3c_10grep_regex7literal13InnerLiteralsEBF_.exit.i
  fence acquire, !dbg !3255
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex6RegexIE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex6RegexIEECsdq8xsXUia3c_10grep_regex.exit.i.i unwind label %bb.at, !dbg !3256, !noalias !3088

bb.at:                                            ; preds = %bb.as
  %i.cu = landingpad { ptr, i32 }
          cleanup
  %.val1.i.i = load ptr, ptr %i.ak, align 8, !dbg !3250, !alias.scope !3133, !noalias !3082, !nonnull !212, !noundef !212
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool4PoolNtNtNtBI_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1r_NtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtNtB4_6marker4SendNtB3O_4SyncNtB37_10UnwindSafeEL_EEECsdq8xsXUia3c_10grep_regex(ptr nonnull %.val1.i.i) #22
          to label %.thread.i unwind label %bb.au, !dbg !3250, !noalias !3088

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex6RegexIEECsdq8xsXUia3c_10grep_regex.exit.i.i: ; preds = %bb.as, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdq8xsXUia3c_10grep_regex7literal13InnerLiteralsEBF_.exit.i
  %.val.i.i = load ptr, ptr %i.ak, align 8, !dbg !3250, !alias.scope !3133, !noalias !3082, !nonnull !212, !noundef !212
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool4PoolNtNtNtBI_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1r_NtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtNtB4_6marker4SendNtB3O_4SyncNtB37_10UnwindSafeEL_EEECsdq8xsXUia3c_10grep_regex(ptr nonnull %.val.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexECsdq8xsXUia3c_10grep_regex.exit.i unwind label %.thread128.i, !dbg !3250, !noalias !3088

bb.au:                                            ; preds = %bb.at
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !3250, !noalias !3088
  unreachable, !dbg !3250

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexECsdq8xsXUia3c_10grep_regex.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex6RegexIEECsdq8xsXUia3c_10grep_regex.exit.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !3176, !noalias !3082
  invoke void @_RNvXsm_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB5_3HirNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.s)
          to label %bb.aw unwind label %bb.av, !dbg !3257, !noalias !3088, !inline_history !240

bb.av:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexECsdq8xsXUia3c_10grep_regex.exit.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7HirKindECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.s) #22
          to label %common.resume.sink.split.i unwind label %bb.ay, !dbg !3257, !noalias !3088, !inline_history !240

bb.aw:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexECsdq8xsXUia3c_10grep_regex.exit.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7HirKindECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdq8xsXUia3c_10grep_regex6config13ConfiguredHIREBF_.exit120.i unwind label %bb.ax, !dbg !3257, !noalias !3088, !inline_history !240

bb.ax:                                            ; preds = %bb.aw, %bb.ap
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split.i

bb.ay:                                            ; preds = %bb.av
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !3257, !noalias !3088, !inline_history !240
  unreachable, !dbg !3257

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdq8xsXUia3c_10grep_regex6config13ConfiguredHIREBF_.exit120.i: ; preds = %bb.aw
  %.val.i.i119.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !3257, !alias.scope !3138, !noalias !3082, !nonnull !212, !noundef !212
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i119.i, i64 noundef 80, i64 noundef 8) #23, !dbg !3258, !noalias !3088, !inline_history !240
  br label %_RINvMs_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_19RegexMatcherBuilder10build_manyReEB7_.exit, !dbg !3166

.thread.i:                                        ; preds = %bb.at, %.body.i, %.thread128.i
  %.pn99124.i = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %lpad.thr_comm.i, %.thread128.i ], [ %i.cu, %bb.at ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdq8xsXUia3c_10grep_regex6config13ConfiguredHIREBF_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.s) #22
          to label %common.resume.i unwind label %bb.ar, !dbg !3166, !noalias !3088

_RINvMs_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_19RegexMatcherBuilder10build_manyReEB7_.exit: ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdq8xsXUia3c_10grep_regex6config13ConfiguredHIREBF_.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdq8xsXUia3c_10grep_regex6config13ConfiguredHIREBF_.exit120.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !3166, !noalias !3082
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.557.i), !dbg !3248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !3259
  ret void, !dbg !3260
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsdq8xsXUia3c_10grep_regex5strip16strip_from_match(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1, i1 noundef zeroext %2, i8 %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3261 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 6 uses
  br i1 %2, label %bb.c, label %bb.b, !dbg !3281

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !dbg !3282
  call void @_RNvNtCsdq8xsXUia3c_10grep_regex5strip22strip_from_match_ascii(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a, i8 noundef %3), !dbg !3283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3284
  br label %bb.f, !dbg !3285

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !3278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !3278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !3286
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !dbg !3286
  call void @_RNvNtCsdq8xsXUia3c_10grep_regex5strip22strip_from_match_ascii(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c, i8 noundef 13), !dbg !3278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !3287
  %i.e = load i64, ptr %i.d, align 8, !dbg !3288, !range !355, !noundef !212 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1, !dbg !3288
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !3289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !dbg !3289
  br i1 %i.f, label %bb.d, label %bb.e, !dbg !3290

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !3291
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false), !dbg !3291
  store i64 -1, ptr %0, align 8, !dbg !3292
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !3293
  br label %bb.f, !dbg !3294

bb.e:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40, !dbg !3295
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !3295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !3291
  store i64 %i.e, ptr %i.b, align 8, !dbg !3278
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !3278
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false), !dbg !3278
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !3278
  store i64 %.sroa.5.0.copyload, ptr %.sroa.8.0..sroa_idx5, align 8, !dbg !3278
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !3293
  call void @_RNvNtCsdq8xsXUia3c_10grep_regex5strip22strip_from_match_ascii(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, i8 noundef 10), !dbg !3296
  br label %bb.f, !dbg !3296

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.d
  ret void, !dbg !3297
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsdq8xsXUia3c_10grep_regex5strip22strip_from_match_ascii(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1, i8 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3298 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [32 x i8], align 8                ; 9 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 2 uses
  %.sroa.7160 = alloca [31 x i8], align 1         ; 6 uses
  %.sroa.632 = alloca [31 x i8], align 1          ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 2 uses
  %.sroa.7153 = alloca [31 x i8], align 1         ; 6 uses
  %.sroa.621 = alloca [31 x i8], align 1          ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [48 x i8], align 8                ; 5 uses
  %i.n = alloca [48 x i8], align 8                ; 4 uses
  %i.o = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.614 = alloca [32 x i8], align 8          ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 9 uses
  %i.q = alloca [48 x i8], align 8                ; 6 uses
  %i.r = alloca [48 x i8], align 8                ; 4 uses
  %i.s = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 6 uses
  %i.t = alloca [40 x i8], align 8                ; 5 uses
  %i.u = alloca [32 x i8], align 8                ; 8 uses
  %i.v = alloca [40 x i8], align 8                ; 5 uses
  %i.w = alloca [32 x i8], align 8                ; 9 uses
  %i.x = alloca [40 x i8], align 8                ; 5 uses
  %i.y = alloca [32 x i8], align 8                ; 8 uses
  %i.z = alloca [40 x i8], align 8                ; 5 uses
  %i.aa = alloca [32 x i8], align 8               ; 9 uses
  %i.ab = alloca [48 x i8], align 8               ; 4 uses
  %i.ac = alloca [40 x i8], align 8               ; 22 uses
  %i.ad = alloca [48 x i8], align 8               ; 27 uses
  %i.ae = alloca [4 x i8], align 4                ; 6 uses
  %i.af = alloca [1 x i8], align 1                ; 7 uses
  store i8 %2, ptr %i.af, align 1
  %i.ag = icmp sgt i8 %2, -1, !dbg !3834
  br i1 %i.ag, label %bb.h, label %bb.b, !dbg !3835

bb.b:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3836
  store i8 2, ptr %i.ah, align 8, !dbg !3836
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !3836
  store i8 %2, ptr %.sroa.42.0..sroa_idx, align 1, !dbg !3836
  store i64 -1, ptr %0, align 8, !dbg !3836
  invoke void @_RNvXsm_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB5_3HirNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.d unwind label %bb.c, !dbg !3837, !inline_history !240

bb.c:                                             ; preds = %bb.b
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7HirKindECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1) #22
          to label %bb.g unwind label %bb.f, !dbg !3837, !inline_history !240

bb.d:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7HirKindECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirECsdq8xsXUia3c_10grep_regex.exit unwind label %bb.e, !dbg !3837, !inline_history !240

bb.e:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !3837, !inline_history !240
  unreachable, !dbg !3837

common.resume:                                    ; preds = %bb.bq, %bb.bf, %bb.bc, %bb.ar, %bb.cn, %bb.da, %.body105.thread, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i108, %bb.bz, %.body.i113, %bb.cw, %.body.i96, %bb.ad, %bb.ae, %bb.ai, %.body.i, %bb.u, %bb.v, %bb.z, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.g ], [ %i.cv, %bb.ad ], [ %i.cc, %bb.u ], [ %i.bz, %.body.i ], [ %i.bz, %bb.z ], [ %i.cc, %bb.v ], [ %i.cs, %.body.i96 ], [ %i.cs, %bb.ai ], [ %i.cv, %bb.ae ], [ %i.fm, %bb.bz ], [ %i.dj, %.body105.thread ], [ %i.dn, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i108 ], [ %.pn74186, %bb.bq ], [ %i.ek, %bb.bf ], [ %.pn182, %bb.bc ], [ %i.eb, %bb.ar ], [ %eh.lpad-body80.ph, %bb.cn ], [ %i.gp, %bb.cw ], [ %.pn.i.i, %.body.i113 ], [ %eh.lpad-body.ph, %bb.da ]
  resume { ptr, i32 } %common.resume.op, !dbg !3838

bb.g:                                             ; preds = %bb.e, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.aj, %bb.e ], [ %i.ai, %bb.c ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !3837
  %.val2.i = load ptr, ptr %i.al, align 8, !dbg !3837, !alias.scope !3683, !nonnull !212, !noundef !212
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef 80, i64 noundef 8) #23, !dbg !3839, !inline_history !240
  br label %common.resume, !dbg !3837

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirECsdq8xsXUia3c_10grep_regex.exit: ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !3837
  %.val.i = load ptr, ptr %i.am, align 8, !dbg !3837, !alias.scope !3683, !nonnull !212, !noundef !212
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 80, i64 noundef 8) #23, !dbg !3840, !inline_history !240
  br label %bb.i, !dbg !3841

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !3842
  %i.an = zext nneg i8 %2 to i32, !dbg !3843      ; 3 uses
  store i32 %i.an, ptr %i.ae, align 4, !dbg !3843
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !3844
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !3845
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !3845
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !dbg !3845
  call void @_RNvMs2_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB5_3Hir9into_kind(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ac, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.ab), !dbg !3846
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !3847
  %i.ao = load i64, ptr %i.ac, align 8, !dbg !3845, !range !287, !noundef !212 ; 4 uses
  %i.ap = icmp ne i64 %i.ao, 4, !dbg !3845
  call void @llvm.assume(i1 %i.ap), !dbg !3845
  %i.aq = add nsw i64 %i.ao, -2, !dbg !3845
  %.inv = icmp samesign ult i64 %i.ao, 2, !dbg !3845
  %i.ar = select i1 %.inv, i64 2, i64 %i.aq, !dbg !3845
  switch i64 %i.ar, label %bb.j [
    i64 0, label %bb.k
    i64 1, label %bb.l
    i64 2, label %bb.n
    i64 3, label %bb.o
    i64 4, label %bb.p
    i64 5, label %bb.q
    i64 6, label %bb.r
    i64 7, label %bb.aa
  ], !dbg !3844

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECsdq8xsXUia3c_10grep_regex.exit, %_RINvMs3_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB6_3Hir7literalINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECsdq8xsXUia3c_10grep_regex.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirECsdq8xsXUia3c_10grep_regex.exit
  ret void, !dbg !3848

bb.j:                                             ; preds = %bb.h
  unreachable, !dbg !3849

bb.k:                                             ; preds = %bb.h
  %i.as = call noundef nonnull align 8 ptr @_RNvMso_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB5_10Properties5empty(), !dbg !3850
  store i64 2, ptr %i.ad, align 8, !dbg !3851
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 40, !dbg !3851
  store ptr %i.as, ptr %i.at, align 8, !dbg !3851
  br label %_RINvMs3_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB6_3Hir7literalINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECsdq8xsXUia3c_10grep_regex.exit, !dbg !3852

bb.l:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !3853
  %i.av = load ptr, ptr %i.au, align 8, !dbg !3853, !nonnull !212, !noundef !212 ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 16, !dbg !3853
  %i.ax = load i64, ptr %i.aw, align 8, !dbg !3853, !noundef !212 ; 8 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ax, !dbg !3854
  call void @llvm.experimental.noalias.scope.decl(metadata !3693), !dbg !3855
  %i.az = load i8, ptr %i.af, align 1, !alias.scope !3693
  %i.ba = icmp samesign eq i64 %i.ax, 0, !dbg !3856
  br i1 %i.ba, label %._crit_edge, label %.lr.ph, !dbg !3857

bb.m:                                             ; preds = %.lr.ph
  %i.bb = getelementptr inbounds nuw i8, ptr %i.bd, i64 1, !dbg !3858 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ay, !dbg !3856
  br i1 %i.bc, label %._crit_edge, label %.lr.ph, !dbg !3857

.lr.ph:                                           ; preds = %bb.l, %bb.m
  %i.bd = phi ptr [ %i.bb, %bb.m ], [ %i.av, %bb.l ] ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !dbg !3859, !noalias !3694, !noundef !212
  %i.bf = icmp eq i8 %i.be, %i.az, !dbg !3860
  br i1 %i.bf, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtCsdq8xsXUia3c_10grep_regex5strip22strip_from_match_asciis_0EB1I_.exit, label %bb.m, !dbg !3861

bb.n:                                             ; preds = %bb.h
  %i.bg = trunc nuw i64 %i.ao to i1, !dbg !3844
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !3862 ; 4 uses
  br i1 %i.bg, label %bb.an, label %bb.ao, !dbg !3844

bb.o:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !3863
  %i.bj = load i32, ptr %i.bi, align 8, !dbg !3863, !range !3695, !noundef !212
  %i.bk = call noundef nonnull align 8 ptr @_RNvMso_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB5_10Properties4look(i32 noundef %i.bj), !dbg !3864
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i64 40, i1 false), !dbg !3865
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ad, i64 40, !dbg !3865
  store ptr %i.bk, ptr %i.bl, align 8, !dbg !3865
  br label %_RINvMs3_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB6_3Hir7literalINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECsdq8xsXUia3c_10grep_regex.exit, !dbg !3866

bb.p:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !3867
  %.sroa.0134.0.copyload = load i64, ptr %i.bm, align 8, !dbg !3867 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16, !dbg !3867
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !3867, !nonnull !212, !noundef !212 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24, !dbg !3867
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !dbg !3867 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !3779
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !3779
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !3868
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0.copyload, i64 48, i1 false), !dbg !3868
  %i.bn = load i8, ptr %i.af, align 1, !dbg !3779, !noundef !212
  invoke void @_RNvNtCsdq8xsXUia3c_10grep_regex5strip22strip_from_match_ascii(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.r, i8 noundef %i.bn)
          to label %bb.bs unwind label %bb.br, !dbg !3779

bb.q:                                             ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !3869
  %.sroa.0142.0.copyload = load ptr, ptr %i.bo, align 8, !dbg !3869, !nonnull !212, !noundef !212 ; 4 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16, !dbg !3869
  %.sroa.11.0.copyload = load ptr, ptr %.sroa.11.0..sroa_idx, align 8, !dbg !3869 ; 7 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24, !dbg !3869 ; 2 uses
  %i.bp = load <2 x i64>, ptr %.sroa.13.0..sroa_idx, align 8, !dbg !3869
  %.sroa.13.0.copyload = load i64, ptr %.sroa.13.0..sroa_idx, align 8, !dbg !3869 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.614), !dbg !3803
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !3803
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !3870
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0142.0.copyload, i64 48, i1 false), !dbg !3870
  %i.bq = load i8, ptr %i.af, align 1, !dbg !3803, !noundef !212
  invoke void @_RNvNtCsdq8xsXUia3c_10grep_regex5strip22strip_from_match_ascii(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.n, i8 noundef %i.bq)
          to label %bb.cp unwind label %bb.co, !dbg !3803

bb.r:                                             ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !3871
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ac, i64 16, !dbg !3871
  %i.bt = load ptr, ptr %i.bs, align 8, !dbg !3871, !nonnull !212, !noundef !212 ; 3 uses
  %i.bu = load i64, ptr %i.br, align 8, !dbg !3871, !range !249, !noundef !212
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ac, i64 24, !dbg !3871
  %i.bw = load i64, ptr %i.bv, align 8, !dbg !3871, !noundef !212 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.621), !dbg !3828
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7153), !dbg !3828
  %i.bx = icmp ult i64 %i.bw, 192153584101141163, !dbg !3872
  call void @llvm.assume(i1 %i.bx), !dbg !3873
  %i.by = getelementptr inbounds nuw [48 x i8], ptr %i.bt, i64 %i.bw, !dbg !3874
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !3875, !noalias !3702
  store i8 -1, ptr %i.g, align 8, !dbg !3876, !noalias !3702
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !3877, !noalias !3702
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !3878, !noalias !3710
  store ptr %i.bt, ptr %i.e, align 8, !dbg !3879, !alias.scope !3713, !noalias !3714
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !3879
  store ptr %i.bt, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !3879, !alias.scope !3713, !noalias !3714
  %.sroa.5156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !3879
  store i64 %i.bu, ptr %.sroa.5156.0..sroa_idx, align 8, !dbg !3879, !alias.scope !3713, !noalias !3714
  %.sroa.6157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !3879
  store ptr %i.by, ptr %.sroa.6157.0..sroa_idx, align 8, !dbg !3879, !alias.scope !3713, !noalias !3714
  %.sroa.7158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !3879
  store ptr %i.af, ptr %.sroa.7158.0..sroa_idx, align 8, !dbg !3879, !alias.scope !3713, !noalias !3714
  %.sroa.4.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40, !dbg !3879
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx6.i, align 8, !dbg !3879, !alias.scope !3713, !noalias !3718
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec16in_place_collectINtB6_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB2l_3map3MapINtNtB6_9into_iter8IntoIterBY_ENCNvNtCsdq8xsXUia3c_10grep_regex5strip22strip_from_match_asciis0_0EINtNtB2p_6result6ResultzNtNtB42_5error5ErrorEEE9from_iterB42_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.e)
          to label %bb.s unwind label %.body.i, !dbg !3880, !noalias !3702

.body.i:                                          ; preds = %bb.r
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ca = load i8, ptr %i.g, align 8, !dbg !3881, !range !357, !noalias !3702, !noundef !212
  %.not.i = icmp eq i8 %i.ca, -1, !dbg !3881
  br i1 %.not.i, label %common.resume, label %bb.z, !dbg !3881

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !3882, !noalias !3710
  %i.cb = load i8, ptr %i.g, align 8, !dbg !3883, !range !357, !noalias !3702, !noundef !212 ; 2 uses
  %.not.not.i = icmp eq i8 %i.cb, -1, !dbg !3883
  br i1 %.not.not.i, label %bb.dc, label %bb.t, !dbg !3884

bb.t:                                             ; preds = %bb.s
  %.sroa.7153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 1, !dbg !3885
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7153, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7153.0..sroa_idx, i64 31, i1 false), !dbg !3885, !noalias !3719
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.w unwind label %bb.u, !dbg !3886, !noalias !3702

bb.u:                                             ; preds = %bb.t
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.f, align 8, !dbg !3886, !alias.scope !3720, !noalias !3702 ; 2 uses
  %i.cd = icmp eq i64 %.val2.i.i, 0
  br i1 %i.cd, label %common.resume, label %bb.v, !dbg !3887

bb.v:                                             ; preds = %bb.u
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !3886
  %.val3.i.i = load ptr, ptr %i.ce, align 8, !dbg !3886, !alias.scope !3721, !noalias !3702, !nonnull !212, !noundef !212
  %i.cf = mul nuw i64 %.val2.i.i, 48, !dbg !3888
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.cf, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !dbg !3889, !noalias !3722
  br label %common.resume, !dbg !3890

bb.w:                                             ; preds = %bb.t
  %.val.i.i = load i64, ptr %i.f, align 8, !dbg !3886, !alias.scope !3720, !noalias !3702 ; 2 uses
  %i.cg = icmp eq i64 %.val.i.i, 0
  br i1 %i.cg, label %bb.db, label %bb.x, !dbg !3891

bb.x:                                             ; preds = %bb.w
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !3886
  %.val1.i.i = load ptr, ptr %i.ch, align 8, !dbg !3886, !alias.scope !3721, !noalias !3702, !nonnull !212, !noundef !212
  %i.ci = mul nuw i64 %.val.i.i, 48, !dbg !3892
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.ci, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !dbg !3893, !noalias !3723
  br label %bb.db, !dbg !3894

bb.y:                                             ; preds = %bb.z
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
