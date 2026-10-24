Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/prism?download=true
inline.NumInlined: 2622
inline.NumDeleted: 264
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@parser_lex:bb.a
  %i.aid = getelementptr i8, ptr @pm_encoding_unicode_table, i64 %i.aic
  %i.aie = load i8, ptr %i.aid, align 1, !tbaa !83
  %i.aif = lshr i8 %i.aie, 1
  %.lobit.i.i = and i8 %i.aif, 1
  %i.aig = zext nneg i8 %.lobit.i.i to i64
  br label %char_is_identifier.exit

bb.kd:                                            ; preds = %bb.ka
  %i.aih = call i64 @pm_encoding_utf_8_char_width(ptr noundef nonnull %storemerge4140, i64 noundef %i.ahm) #27
  br label %char_is_identifier.exit

char_is_identifier.exit:                          ; preds = %bb.jz, %bb.kc, %bb.kd
  %.1.i = phi i64 [ %i.aig, %bb.kc ], [ %i.ahy, %bb.jz ], [ %i.aih, %bb.kd ] ; 2 uses
  %.not2016 = icmp eq i64 %.1.i, 0
  br i1 %.not2016, label %.critedge19.loopexit, label %char_is_identifier.exit.thread

char_is_identifier.exit.thread:                   ; preds = %bb.kb, %bb.jw, %bb.jx, %char_is_identifier.exit
  %.1.i3378 = phi i64 [ %.1.i, %char_is_identifier.exit ], [ 1, %bb.kb ], [ %i.ahs, %bb.jw ], [ 1, %bb.jx ]
  %i.aii = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.aij = getelementptr i8, ptr %i.aii, i64 %.1.i3378 ; 3 uses
  store ptr %i.aij, ptr %i.d, align 8, !tbaa !87
  %i.aik = load ptr, ptr %i.f, align 8, !tbaa !89
  %i.ail = ptrtoint ptr %i.aik to i64
  %i.aim = ptrtoint ptr %i.aij to i64
  %i.ain = sub i64 %i.ail, %i.aim                 ; 2 uses
  %i.aio = icmp slt i64 %i.ain, 1
  br i1 %i.aio, label %.critedge19.loopexit, label %.lr.ph4142, !llvm.loop !373

.lr.ph4138:                                       ; preds = %bb.jt, %.critedge2052
  %i.aip = phi ptr [ %i.ais, %.critedge2052 ], [ %.promoted, %bb.jt ] ; 5 uses
  %i.aiq = load i8, ptr %i.aip, align 1, !tbaa !83
  %.fr3572 = freeze i8 %i.aiq                     ; 2 uses
  %i.air = zext i8 %.fr3572 to i32
  %.not2015 = icmp eq i32 %.01889, %i.air
  br i1 %.not2015, label %.critedge19, label %switch.early.test

switch.early.test:                                ; preds = %.lr.ph4138
  switch i8 %.fr3572, label %.critedge2052 [
    i8 13, label %.critedge19
    i8 10, label %.critedge19
  ]

.critedge2052:                                    ; preds = %switch.early.test
  %i.ais = getelementptr i8, ptr %i.aip, i64 1    ; 4 uses
  store ptr %i.ais, ptr %i.d, align 8, !tbaa !87
  %exitcond4517.not = icmp eq ptr %i.ais, %i.bu
  br i1 %exitcond4517.not, label %.critedge19, label %.lr.ph4138, !llvm.loop !374

.critedge19.loopexit:                             ; preds = %char_is_identifier.exit.thread, %bb.jy, %char_is_identifier.exit
  %.pre4558 = load ptr, ptr %i.d, align 8, !tbaa !87
  br label %.critedge19

.critedge19:                                      ; preds = %.critedge2052, %.lr.ph4138, %switch.early.test, %switch.early.test, %.critedge19.loopexit
  %i.ait = phi ptr [ %.pre4558, %.critedge19.loopexit ], [ %i.aip, %.lr.ph4138 ], [ %i.aip, %switch.early.test ], [ %i.aip, %switch.early.test ], [ %i.ais, %.critedge2052 ] ; 5 uses
  %i.aiu = ptrtoint ptr %i.ait to i64
  %i.aiv = ptrtoint ptr %.promoted to i64
  %i.aiw = sub i64 %i.aiu, %i.aiv                 ; 4 uses
  br i1 %i.agx, label %bb.kg, label %bb.ke

bb.ke:                                            ; preds = %.critedge19
  %.val.i2516 = load ptr, ptr %i.f, align 8, !tbaa !89
  %i.aix = icmp ult ptr %i.ait, %.val.i2516
  br i1 %i.aix, label %peek.exit.i2518, label %bb.kf

peek.exit.i2518:                                  ; preds = %bb.ke
  %i.aiy = trunc nuw nsw i32 %.01889 to i8
  %i.aiz = load i8, ptr %i.ait, align 1, !tbaa !83
  %i.aja = icmp eq i8 %i.aiz, %i.aiy
  br i1 %i.aja, label %match.exit2519, label %bb.kf

match.exit2519:                                   ; preds = %peek.exit.i2518
  %i.ajb = getelementptr i8, ptr %i.ait, i64 1    ; 2 uses
  store ptr %i.ajb, ptr %i.d, align 8, !tbaa !87
  br label %bb.kg

bb.kf:                                            ; preds = %peek.exit.i2518, %bb.ke
  %i.ajc = getelementptr i8, ptr %.promoted, i64 %i.aiw
  %i.ajd = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.y, ptr noundef %.promoted, ptr noundef %i.ajc, i32 noundef 137) #27 ; 0 uses
  %.pre4559 = load ptr, ptr %i.d, align 8, !tbaa !87
  br label %bb.kg

bb.kg:                                            ; preds = %.critedge19.thread, %match.exit2519, %bb.kf, %.critedge19
  %i.aje = phi i64 [ %i.aiw, %match.exit2519 ], [ %i.aiw, %bb.kf ], [ %i.aiw, %.critedge19 ], [ %i.ahl, %.critedge19.thread ] ; 4 uses
  %i.ajf = phi ptr [ %i.ajb, %match.exit2519 ], [ %.pre4559, %bb.kf ], [ %i.ait, %.critedge19 ], [ %i.ahe, %.critedge19.thread ] ; 2 uses
  %.01886 = phi i1 [ false, %match.exit2519 ], [ true, %bb.kf ], [ false, %.critedge19 ], [ false, %.critedge19.thread ]
  %i.ajg = getelementptr i8, ptr %0, i64 672
  store ptr null, ptr %i.ajg, align 8, !tbaa !168
  %i.ajh = load ptr, ptr %i.o, align 8, !tbaa !93 ; 2 uses
  %i.aji = getelementptr i8, ptr %0, i64 296      ; 3 uses
  %i.ajj = load i64, ptr %i.aji, align 8, !tbaa !92
  %i.ajk = add i64 %i.ajj, 1                      ; 3 uses
  store i64 %i.ajk, ptr %i.aji, align 8, !tbaa !92
  %i.ajl = icmp ugt i64 %i.ajk, 3
  br i1 %i.ajl, label %bb.kh, label %bb.kj

bb.kh:                                            ; preds = %bb.kg
  %i.ajm = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28 ; 11 uses
  store ptr %i.ajm, ptr %i.o, align 8, !tbaa !93
  %i.ajn = icmp eq ptr %i.ajm, null
  br i1 %i.ajn, label %lex_mode_push.exit, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  store i32 3, ptr %i.ajm, align 8, !tbaa !31
  %.sroa.53152.0..sroa_idx3153 = getelementptr inbounds nuw i8, ptr %i.ajm, i64 4
  store i32 0, ptr %.sroa.53152.0..sroa_idx3153, align 4
  %.sroa.63155.0..sroa_idx3156 = getelementptr inbounds nuw i8, ptr %i.ajm, i64 8
  store ptr %.promoted, ptr %.sroa.63155.0..sroa_idx3156, align 8
  %.sroa.73158.0..sroa_idx3159 = getelementptr inbounds nuw i8, ptr %i.ajm, i64 16
  store i64 %i.aje, ptr %.sroa.73158.0..sroa_idx3159, align 8
  %.sroa.83161.0..sroa_idx3162 = getelementptr inbounds nuw i8, ptr %i.ajm, i64 24
  store i32 %.01889, ptr %.sroa.83161.0..sroa_idx3162, align 8
  %.sroa.93164.0..sroa_idx3165 = getelementptr inbounds nuw i8, ptr %i.ajm, i64 28
  store i32 %.01888, ptr %.sroa.93164.0..sroa_idx3165, align 4
  %.sroa.103167.0..sroa_idx3168 = getelementptr inbounds nuw i8, ptr %i.ajm, i64 32
  store ptr %i.ajf, ptr %.sroa.103167.0..sroa_idx3168, align 8
  %.sroa.113170.0..sroa_idx3171 = getelementptr inbounds nuw i8, ptr %i.ajm, i64 40
  %.sroa.14.0..sroa_idx3176 = getelementptr inbounds nuw i8, ptr %i.ajm, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.113170.0..sroa_idx3171, i8 0, i64 16, i1 false)
  store ptr %i.ajh, ptr %.sroa.14.0..sroa_idx3176, align 8, !tbaa !34
  br label %lex_mode_push.exit

bb.kj:                                            ; preds = %bb.kg
  %i.ajo = getelementptr i8, ptr %0, i64 40       ; 2 uses
  %i.ajp = getelementptr [64 x i8], ptr %i.ajo, i64 %i.ajk ; 9 uses
  store i32 3, ptr %i.ajp, align 8, !tbaa !31
  %.sroa.53152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ajp, i64 4
  store i32 0, ptr %.sroa.53152.0..sroa_idx, align 4
  %.sroa.63155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ajp, i64 8
  store ptr %.promoted, ptr %.sroa.63155.0..sroa_idx, align 8
  %.sroa.73158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ajp, i64 16
  store i64 %i.aje, ptr %.sroa.73158.0..sroa_idx, align 8
  %.sroa.83161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ajp, i64 24
  store i32 %.01889, ptr %.sroa.83161.0..sroa_idx, align 8
  %.sroa.93164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ajp, i64 28
  store i32 %.01888, ptr %.sroa.93164.0..sroa_idx, align 4
  %.sroa.103167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ajp, i64 32
  store ptr %i.ajf, ptr %.sroa.103167.0..sroa_idx, align 8
  %.sroa.113170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ajp, i64 40
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ajp, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.113170.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %i.ajh, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !34
  %i.ajq = load i64, ptr %i.aji, align 8, !tbaa !92
  %i.ajr = getelementptr [64 x i8], ptr %i.ajo, i64 %i.ajq
  store ptr %i.ajr, ptr %i.o, align 8, !tbaa !93
  br label %lex_mode_push.exit

lex_mode_push.exit:                               ; preds = %bb.kh, %bb.ki, %bb.kj
  %i.ajs = load ptr, ptr %i.s, align 8, !tbaa !153 ; 2 uses
  %i.ajt = icmp eq ptr %i.ajs, null
  br i1 %i.ajt, label %bb.kk, label %bb.kp

bb.kk:                                            ; preds = %lex_mode_push.exit
  %i.aju = load ptr, ptr %i.d, align 8, !tbaa !87 ; 2 uses
  %i.ajv = load ptr, ptr %i.f, align 8, !tbaa !89
  %i.ajw = ptrtoint ptr %i.ajv to i64
  %i.ajx = ptrtoint ptr %i.aju to i64
  %i.ajy = sub i64 %i.ajw, %i.ajx
  %i.ajz = call fastcc ptr @next_newline(ptr noundef %i.aju, i64 noundef %i.ajy) ; 3 uses
  %i.aka = icmp eq ptr %i.ajz, null
  br i1 %i.aka, label %bb.kl, label %bb.ko

bb.kl:                                            ; preds = %bb.kk
  br i1 %.01886, label %bb.kn, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.akb = getelementptr i8, ptr %.promoted, i64 %i.aje
  %i.akc = trunc i64 %i.aje to i32
  %i.akd = call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.y, ptr noundef %.promoted, ptr noundef %i.akb, i32 noundef 138, i32 noundef %i.akc, ptr noundef %.promoted) #27 ; 0 uses
  br label %bb.kn

bb.kn:                                            ; preds = %bb.km, %bb.kl
  %i.ake = load ptr, ptr %i.f, align 8, !tbaa !89
  br label %bb.kp

bb.ko:                                            ; preds = %bb.kk
  %i.akf = call zeroext i1 @pm_newline_list_append(ptr noundef %i.t, ptr noundef nonnull %i.ajz) #27 ; 0 uses
  %i.akg = getelementptr i8, ptr %i.ajz, i64 1
  br label %bb.kp

bb.kp:                                            ; preds = %lex_mode_push.exit, %bb.kn, %bb.ko
  %storemerge2018 = phi ptr [ %i.akg, %bb.ko ], [ %i.ake, %bb.kn ], [ %i.ajs, %lex_mode_push.exit ]
  store ptr %storemerge2018, ptr %i.r, align 8, !tbaa !152
  store i32 65, ptr %i.c, align 8, !tbaa !154
  %i.akh = load ptr, ptr %i.ab, align 8, !tbaa !155 ; 3 uses
  %.not.i2521 = icmp eq ptr %i.akh, null
  br i1 %.not.i2521, label %parser_lex_callback.exit2967, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.aki = getelementptr i8, ptr %i.akh, i64 8
  %i.akj = load ptr, ptr %i.aki, align 8, !tbaa !157
  %i.akk = load ptr, ptr %i.akh, align 8, !tbaa !158
  call void %i.akj(ptr noundef %i.akk, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

.critedge2056:                                    ; preds = %bb.ju, %bb.js
  %.val.i2523.pre = phi ptr [ %.val.i2523.pre.pre, %bb.ju ], [ %i.bu, %bb.js ]
  store ptr %i.age, ptr %i.d, align 8, !tbaa !87
  br label %bb.kr

bb.kr:                                            ; preds = %.critedge2056, %bb.jq, %bb.jo
  %.val.i2523 = phi ptr [ %.val.i2523.pre, %.critedge2056 ], [ %i.bu, %bb.jq ], [ %i.bu, %bb.jo ]
  %i.akl = icmp ult ptr %i.age, %.val.i2523
  br i1 %i.akl, label %peek.exit.i2525, label %.thread5094

peek.exit.i2525:                                  ; preds = %bb.kr
  %i.akm = load i8, ptr %i.age, align 1, !tbaa !83
  %i.akn = icmp eq i8 %i.akm, 61
  br i1 %i.akn, label %bb.ks, label %bb.ku

bb.ks:                                            ; preds = %peek.exit.i2525
  %i.ako = getelementptr i8, ptr %.ph, i64 3
  store ptr %i.ako, ptr %i.d, align 8, !tbaa !87
  store i32 1, ptr %i.w, align 4, !tbaa !160
  store i32 118, ptr %i.c, align 8, !tbaa !154
  %i.akp = load ptr, ptr %i.ab, align 8, !tbaa !155 ; 3 uses
  %.not.i2527 = icmp eq ptr %i.akp, null
  br i1 %.not.i2527, label %parser_lex_callback.exit2967, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.akq = getelementptr i8, ptr %i.akp, i64 8
  %i.akr = load ptr, ptr %i.akq, align 8, !tbaa !157
  %i.aks = load ptr, ptr %i.akp, align 8, !tbaa !158
  call void %i.akr(ptr noundef %i.aks, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

bb.ku:                                            ; preds = %peek.exit.i2525
  %.val.i2529 = load i32, ptr %i.w, align 4, !tbaa !160
  %i.akt = and i32 %.val.i2529, 904
  %.not5.i = icmp eq i32 %i.akt, 0
  %or.cond.i2530 = and i1 %.not5.i, %i.bw
  br i1 %or.cond.i2530, label %bb.kv, label %ambiguous_operator_p.exit.thread

.thread5094:                                      ; preds = %bb.kr
  %.val.i25295095 = load i32, ptr %i.w, align 4, !tbaa !160
  %i.aku = and i32 %.val.i25295095, 904
  %.not5.i5096 = icmp eq i32 %i.aku, 0
  %or.cond.i25305097 = and i1 %.not5.i5096, %i.bw
  br i1 %or.cond.i25305097, label %ambiguous_operator_p.exit, label %ambiguous_operator_p.exit.thread

bb.kv:                                            ; preds = %bb.ku
  %i.akv = load i8, ptr %i.age, align 1, !tbaa !83
  br label %ambiguous_operator_p.exit

ambiguous_operator_p.exit:                        ; preds = %.thread5094, %bb.kv
  %.0.i.i.i = phi i8 [ %i.akv, %bb.kv ], [ 0, %.thread5094 ]
  %i.akw = call zeroext i1 @pm_char_is_whitespace(i8 noundef zeroext %.0.i.i.i) #27
  br i1 %i.akw, label %ambiguous_operator_p.exit.thread, label %bb.kw

bb.kw:                                            ; preds = %ambiguous_operator_p.exit
  %i.akx = load ptr, ptr %i.v, align 8, !tbaa !151
  %i.aky = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.akz = call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.u, ptr noundef %i.akx, ptr noundef %i.aky, i32 noundef 296, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.26) #27 ; 0 uses
  br label %ambiguous_operator_p.exit.thread

ambiguous_operator_p.exit.thread:                 ; preds = %.thread5094, %bb.ku, %bb.kw, %ambiguous_operator_p.exit
  %.val2178 = load i32, ptr %i.w, align 4, !tbaa !160 ; 2 uses
  %i.ala = and i32 %.val2178, 384
  %.not3573 = icmp eq i32 %i.ala, 0
  br i1 %.not3573, label %bb.kx, label %bb.kz

bb.kx:                                            ; preds = %ambiguous_operator_p.exit.thread
  %i.alb = and i32 %.val2178, 512
  %.not3574 = icmp eq i32 %i.alb, 0
  br i1 %.not3574, label %bb.kz, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  store i8 1, ptr %i.i, align 8, !tbaa !150
  br label %bb.kz

bb.kz:                                            ; preds = %bb.kx, %bb.ky, %ambiguous_operator_p.exit.thread
  %storemerge3575 = phi i32 [ 16, %ambiguous_operator_p.exit.thread ], [ 1, %bb.ky ], [ 1, %bb.kx ]
  store i32 %storemerge3575, ptr %i.w, align 4, !tbaa !160
  store i32 117, ptr %i.c, align 8, !tbaa !154
  %i.alc = load ptr, ptr %i.ab, align 8, !tbaa !155 ; 3 uses
  %.not.i2533 = icmp eq ptr %i.alc, null
  br i1 %.not.i2533, label %parser_lex_callback.exit2967, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.ald = getelementptr i8, ptr %i.alc, i64 8
  %i.ale = load ptr, ptr %i.ald, align 8, !tbaa !157
  %i.alf = load ptr, ptr %i.alc, align 8, !tbaa !158
  call void %i.ale(ptr noundef %i.alf, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

bb.lb:                                            ; preds = %._crit_edge4606, %peek.exit.i2493
  %.val2177 = phi i32 [ %.val2177.pre, %._crit_edge4606 ], [ %.val2177.pre4607, %peek.exit.i2493 ] ; 2 uses
  %i.alg = and i32 %.val2177, 384
  %.not3567.a = icmp eq i32 %i.alg, 0
  br i1 %.not3567.a, label %bb.lc, label %bb.le

bb.lc:                                            ; preds = %bb.lb
  %i.alh = and i32 %.val2177, 512
  %.not3568 = icmp eq i32 %i.alh, 0
  br i1 %.not3568, label %bb.le, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  store i8 1, ptr %i.i, align 8, !tbaa !150
  br label %bb.le

bb.le:                                            ; preds = %bb.lc, %bb.ld, %bb.lb
  %storemerge3569 = phi i32 [ 16, %bb.lb ], [ 1, %bb.ld ], [ 1, %bb.lc ]
  store i32 %storemerge3569, ptr %i.w, align 4, !tbaa !160
  br i1 %i.agb, label %peek.exit.i2537, label %bb.lk

peek.exit.i2537:                                  ; preds = %bb.le
  %i.ali = load i8, ptr %i.cj, align 1, !tbaa !83
  %i.alj = icmp eq i8 %i.ali, 61
  br i1 %i.alj, label %bb.lf, label %bb.lk

bb.lf:                                            ; preds = %peek.exit.i2537
  %i.alk = getelementptr i8, ptr %.ph, i64 2      ; 3 uses
  store ptr %i.alk, ptr %i.d, align 8, !tbaa !87
  %i.all = icmp ult ptr %i.alk, %i.bu
  br i1 %i.all, label %peek.exit.i2541, label %._crit_edge4609

._crit_edge4609:                                  ; preds = %bb.lf
  %.pre4610 = load ptr, ptr %i.ab, align 8, !tbaa !155
  br label %bb.li

peek.exit.i2541:                                  ; preds = %bb.lf
  %i.alm = load i8, ptr %i.alk, align 1, !tbaa !83
  %i.aln = icmp eq i8 %i.alm, 62
  %.pre4611 = load ptr, ptr %i.ab, align 8, !tbaa !155 ; 4 uses
  br i1 %i.aln, label %bb.lg, label %bb.li

bb.lg:                                            ; preds = %peek.exit.i2541
  %i.alo = getelementptr i8, ptr %.ph, i64 3
  store ptr %i.alo, ptr %i.d, align 8, !tbaa !87
  store i32 116, ptr %i.c, align 8, !tbaa !154
  %.not.i2543 = icmp eq ptr %.pre4611, null
  br i1 %.not.i2543, label %parser_lex_callback.exit2967, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.alp = getelementptr i8, ptr %.pre4611, i64 8
  %i.alq = load ptr, ptr %i.alp, align 8, !tbaa !157
  %i.alr = load ptr, ptr %.pre4611, align 8, !tbaa !158
  call void %i.alq(ptr noundef %i.alr, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

bb.li:                                            ; preds = %._crit_edge4609, %peek.exit.i2541
  %i.als = phi ptr [ %.pre4610, %._crit_edge4609 ], [ %.pre4611, %peek.exit.i2541 ] ; 3 uses
  store i32 115, ptr %i.c, align 8, !tbaa !154
  %.not.i2545 = icmp eq ptr %i.als, null
  br i1 %.not.i2545, label %parser_lex_callback.exit2967, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.alt = getelementptr i8, ptr %i.als, i64 8
  %i.alu = load ptr, ptr %i.alt, align 8, !tbaa !157
  %i.alv = load ptr, ptr %i.als, align 8, !tbaa !158
  call void %i.alu(ptr noundef %i.alv, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

bb.lk:                                            ; preds = %peek.exit.i2537, %bb.le
  store i32 114, ptr %i.c, align 8, !tbaa !154
  %i.alw = load ptr, ptr %i.ab, align 8, !tbaa !155 ; 3 uses
  %.not.i2547 = icmp eq ptr %i.alw, null
  br i1 %.not.i2547, label %parser_lex_callback.exit2967, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %i.alx = getelementptr i8, ptr %i.alw, i64 8
  %i.aly = load ptr, ptr %i.alx, align 8, !tbaa !157
  %i.alz = load ptr, ptr %i.alw, align 8, !tbaa !158
  call void %i.aly(ptr noundef %i.alz, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

bb.lm:                                            ; preds = %bb.t
  %i.ama = icmp ult ptr %i.cj, %i.bu
  br i1 %i.ama, label %peek.exit.i2551, label %bb.lq

peek.exit.i2551:                                  ; preds = %bb.lm
  %i.amb = load i8, ptr %i.cj, align 1, !tbaa !83
  %i.amc = icmp eq i8 %i.amb, 62
  %.val2175.pre4604 = load i32, ptr %i.w, align 4, !tbaa !160 ; 2 uses
  br i1 %i.amc, label %bb.ln, label %peek.exit.i2561

bb.ln:                                            ; preds = %peek.exit.i2551
  %i.amd = getelementptr i8, ptr %.ph, i64 2      ; 3 uses
  store ptr %i.amd, ptr %i.d, align 8, !tbaa !87
  %i.ame = and i32 %.val2175.pre4604, 384
  %.not3565.a = icmp eq i32 %i.ame, 0
  %.3593 = select i1 %.not3565.a, i32 1, i32 16
  store i32 %.3593, ptr %i.w, align 4, !tbaa !160
  %i.amf = icmp ult ptr %i.amd, %i.bu
  br i1 %i.amf, label %peek.exit.i2555, label %match.exit2556.thread

peek.exit.i2555:                                  ; preds = %bb.ln
  %i.amg = load i8, ptr %i.amd, align 1, !tbaa !83
  %i.amh = icmp eq i8 %i.amg, 61
  br i1 %i.amh, label %bb.lo, label %match.exit2556.thread

bb.lo:                                            ; preds = %peek.exit.i2555
  %i.ami = getelementptr i8, ptr %.ph, i64 3
  store ptr %i.ami, ptr %i.d, align 8, !tbaa !87
  br label %match.exit2556.thread

match.exit2556.thread:                            ; preds = %bb.ln, %peek.exit.i2555, %bb.lo
  %i.amj = phi i32 [ 63, %bb.lo ], [ 62, %peek.exit.i2555 ], [ 62, %bb.ln ]
  store i32 %i.amj, ptr %i.c, align 8, !tbaa !154
  %i.amk = load ptr, ptr %i.ab, align 8, !tbaa !155 ; 3 uses
  %.not.i2557 = icmp eq ptr %i.amk, null
  br i1 %.not.i2557, label %parser_lex_callback.exit2967, label %bb.lp

bb.lp:                                            ; preds = %match.exit2556.thread
  %i.aml = getelementptr i8, ptr %i.amk, i64 8
  %i.amm = load ptr, ptr %i.aml, align 8, !tbaa !157
  %i.amn = load ptr, ptr %i.amk, align 8, !tbaa !158
  call void %i.amm(ptr noundef %i.amn, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

bb.lq:                                            ; preds = %bb.lm
  %.val2175.pre = load i32, ptr %i.w, align 4, !tbaa !160
  %i.amo = and i32 %.val2175.pre, 384
  %.not = icmp eq i32 %i.amo, 0
  %.3594 = select i1 %.not, i32 1, i32 16
  store i32 %.3594, ptr %i.w, align 4, !tbaa !160
  br label %match.exit2562.thread

peek.exit.i2561:                                  ; preds = %peek.exit.i2551
  %i.amp = and i32 %.val2175.pre4604, 384
  %.not5101 = icmp eq i32 %i.amp, 0
  %.35945102 = select i1 %.not5101, i32 1, i32 16
  store i32 %.35945102, ptr %i.w, align 4, !tbaa !160
  %i.amq = load i8, ptr %i.cj, align 1, !tbaa !83
  %i.amr = icmp eq i8 %i.amq, 61
  br i1 %i.amr, label %bb.lr, label %match.exit2562.thread

bb.lr:                                            ; preds = %peek.exit.i2561
  %i.ams = getelementptr i8, ptr %.ph, i64 2
  store ptr %i.ams, ptr %i.d, align 8, !tbaa !87
  br label %match.exit2562.thread

match.exit2562.thread:                            ; preds = %bb.lq, %peek.exit.i2561, %bb.lr
  %i.amt = phi i32 [ 61, %bb.lr ], [ 60, %peek.exit.i2561 ], [ 60, %bb.lq ]
  store i32 %i.amt, ptr %i.c, align 8, !tbaa !154
  %i.amu = load ptr, ptr %i.ab, align 8, !tbaa !155 ; 3 uses
  %.not.i2563 = icmp eq ptr %i.amu, null
  br i1 %.not.i2563, label %parser_lex_callback.exit2967, label %bb.ls
end_hunk_0
begin_hunk_1_@parser_lex:bb.a
  %i.awk = and i32 %.val2172, 577
  %i.awl = icmp ne i32 %i.awk, 0
  %i.awm = and i32 %.val2172, 2064
  %i.awn = icmp eq i32 %i.awm, 2064
  %i.awo = or i1 %i.awl, %i.awn
  br i1 %i.awo, label %bb.pc, label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  %i.awp = call fastcc zeroext i1 @lex_state_spcarg_p(ptr noundef nonnull %0, i1 noundef zeroext %i.bw)
  br i1 %i.awp, label %bb.pb, label %bb.pi

bb.pb:                                            ; preds = %bb.pa
  %.val2131 = load ptr, ptr %i.v, align 8, !tbaa !127
  %.val2132 = load ptr, ptr %i.d, align 8, !tbaa !128
  %i.awq = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.u, ptr noundef %.val2131, ptr noundef %.val2132, i32 noundef range(i32 297, 324) 298) #27 ; 0 uses
  %.val2220.pre = load ptr, ptr %i.f, align 8, !tbaa !89
  %.val2221.pre = load ptr, ptr %i.d, align 8, !tbaa !87
  br label %bb.pc

bb.pc:                                            ; preds = %bb.pb, %bb.oz
  %.val2221 = phi ptr [ %.val2221.pre, %bb.pb ], [ %i.cj, %bb.oz ] ; 2 uses
  %.val2220 = phi ptr [ %.val2220.pre, %bb.pb ], [ %i.bu, %bb.oz ]
  store i32 1, ptr %i.w, align 4, !tbaa !160
  %i.awr = icmp ult ptr %.val2221, %.val2220
  br i1 %i.awr, label %bb.pd, label %peek.exit2678

bb.pd:                                            ; preds = %bb.pc
  %i.aws = load i8, ptr %.val2221, align 1, !tbaa !83
  br label %peek.exit2678

peek.exit2678:                                    ; preds = %bb.pc, %bb.pd
  %.0.i.i2677 = phi i8 [ %i.aws, %bb.pd ], [ 0, %bb.pc ]
  %i.awt = call zeroext i1 @pm_char_is_decimal_digit(i8 noundef zeroext %.0.i.i2677) #27
  br i1 %i.awt, label %bb.pe, label %bb.pg

bb.pe:                                            ; preds = %peek.exit2678
  %i.awu = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.awv = getelementptr i8, ptr %i.awu, i64 1
  store ptr %i.awv, ptr %i.d, align 8, !tbaa !87
  %i.aww = call fastcc i32 @lex_numeric(ptr noundef nonnull %0)
  store i32 2, ptr %i.w, align 4, !tbaa !160
  store i32 %i.aww, ptr %i.c, align 8, !tbaa !154
  %i.awx = load ptr, ptr %i.ab, align 8, !tbaa !155 ; 3 uses
  %.not.i2679 = icmp eq ptr %i.awx, null
  br i1 %.not.i2679, label %parser_lex_callback.exit2967, label %bb.pf

bb.pf:                                            ; preds = %bb.pe
  %i.awy = getelementptr i8, ptr %i.awx, i64 8
  %i.awz = load ptr, ptr %i.awy, align 8, !tbaa !157
  %i.axa = load ptr, ptr %i.awx, align 8, !tbaa !158
  call void %i.awz(ptr noundef %i.axa, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

bb.pg:                                            ; preds = %peek.exit2678
  store i32 158, ptr %i.c, align 8, !tbaa !154
  %i.axb = load ptr, ptr %i.ab, align 8, !tbaa !155 ; 3 uses
  %.not.i2681 = icmp eq ptr %i.axb, null
  br i1 %.not.i2681, label %parser_lex_callback.exit2967, label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  %i.axc = getelementptr i8, ptr %i.axb, i64 8
  %i.axd = load ptr, ptr %i.axc, align 8, !tbaa !157
  %i.axe = load ptr, ptr %i.axb, align 8, !tbaa !158
  call void %i.axd(ptr noundef %i.axe, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

bb.pi:                                            ; preds = %bb.pa
  %i.axf = call fastcc zeroext i1 @ambiguous_operator_p(ptr noundef nonnull %0, i1 noundef zeroext %i.bw)
  br i1 %i.axf, label %bb.pj, label %bb.pk

bb.pj:                                            ; preds = %bb.pi
  %i.axg = load ptr, ptr %i.v, align 8, !tbaa !151
  %i.axh = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.axi = call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.u, ptr noundef %i.axg, ptr noundef %i.axh, i32 noundef 296, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #27 ; 0 uses
  br label %bb.pk

bb.pk:                                            ; preds = %bb.pj, %bb.pi
  store i32 1, ptr %i.w, align 4, !tbaa !160
  store i32 136, ptr %i.c, align 8, !tbaa !154
  %i.axj = load ptr, ptr %i.ab, align 8, !tbaa !155 ; 3 uses
  %.not.i2683 = icmp eq ptr %i.axj, null
  br i1 %.not.i2683, label %parser_lex_callback.exit2967, label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  %i.axk = getelementptr i8, ptr %i.axj, i64 8
  %i.axl = load ptr, ptr %i.axk, align 8, !tbaa !157
  %i.axm = load ptr, ptr %i.axj, align 8, !tbaa !158
  call void %i.axl(ptr noundef %i.axm, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

bb.pm:                                            ; preds = %bb.t
  %.val2171 = load i32, ptr %i.w, align 4, !tbaa !160
  %i.axn = and i32 %.val2171, 384
  %.not3552.a = icmp eq i32 %i.axn, 0
  br i1 %.not3552.a, label %bb.ps, label %bb.pn

bb.pn:                                            ; preds = %bb.pm
  store i32 16, ptr %i.w, align 4, !tbaa !160
  %i.axo = icmp ult ptr %i.cj, %i.bu
  br i1 %i.axo, label %peek.exit.i2688, label %._crit_edge4591

._crit_edge4591:                                  ; preds = %bb.pn
  %.pre4592 = load ptr, ptr %i.ab, align 8, !tbaa !155
  br label %bb.pq

peek.exit.i2688:                                  ; preds = %bb.pn
  %i.axp = load i8, ptr %i.cj, align 1, !tbaa !83
  %i.axq = icmp eq i8 %i.axp, 64
  %.pre4593 = load ptr, ptr %i.ab, align 8, !tbaa !155 ; 4 uses
  br i1 %i.axq, label %bb.po, label %bb.pq

bb.po:                                            ; preds = %peek.exit.i2688
  %i.axr = getelementptr i8, ptr %.ph, i64 2
  store ptr %i.axr, ptr %i.d, align 8, !tbaa !87
  store i32 156, ptr %i.c, align 8, !tbaa !154
  %.not.i2690 = icmp eq ptr %.pre4593, null
  br i1 %.not.i2690, label %parser_lex_callback.exit2967, label %bb.pp

bb.pp:                                            ; preds = %bb.po
  %i.axs = getelementptr i8, ptr %.pre4593, i64 8
  %i.axt = load ptr, ptr %i.axs, align 8, !tbaa !157
  %i.axu = load ptr, ptr %.pre4593, align 8, !tbaa !158
  call void %i.axt(ptr noundef %i.axu, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

bb.pq:                                            ; preds = %._crit_edge4591, %peek.exit.i2688
  %i.axv = phi ptr [ %.pre4592, %._crit_edge4591 ], [ %.pre4593, %peek.exit.i2688 ] ; 3 uses
  store i32 120, ptr %i.c, align 8, !tbaa !154
  %.not.i2692 = icmp eq ptr %i.axv, null
  br i1 %.not.i2692, label %parser_lex_callback.exit2967, label %bb.pr

bb.pr:                                            ; preds = %bb.pq
  %i.axw = getelementptr i8, ptr %i.axv, i64 8
  %i.axx = load ptr, ptr %i.axw, align 8, !tbaa !157
  %i.axy = load ptr, ptr %i.axv, align 8, !tbaa !158
  call void %i.axx(ptr noundef %i.axy, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

bb.ps:                                            ; preds = %bb.pm
  %i.axz = icmp ult ptr %i.cj, %i.bu
  br i1 %i.axz, label %peek.exit.i2697, label %bb.px

peek.exit.i2697:                                  ; preds = %bb.ps
  %i.aya = load i8, ptr %i.cj, align 1, !tbaa !83
  %i.ayb = icmp eq i8 %i.aya, 61
  br i1 %i.ayb, label %bb.pt, label %peek.exit.i2704

bb.pt:                                            ; preds = %peek.exit.i2697
  %i.ayc = getelementptr i8, ptr %.ph, i64 2
  store ptr %i.ayc, ptr %i.d, align 8, !tbaa !87
  store i32 1, ptr %i.w, align 4, !tbaa !160
  store i32 121, ptr %i.c, align 8, !tbaa !154
  %i.ayd = load ptr, ptr %i.ab, align 8, !tbaa !155 ; 3 uses
  %.not.i2699 = icmp eq ptr %i.ayd, null
  br i1 %.not.i2699, label %parser_lex_callback.exit2967, label %bb.pu

bb.pu:                                            ; preds = %bb.pt
  %i.aye = getelementptr i8, ptr %i.ayd, i64 8
  %i.ayf = load ptr, ptr %i.aye, align 8, !tbaa !157
  %i.ayg = load ptr, ptr %i.ayd, align 8, !tbaa !158
  call void %i.ayf(ptr noundef %i.ayg, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

peek.exit.i2704:                                  ; preds = %peek.exit.i2697
  %i.ayh = load i8, ptr %i.cj, align 1, !tbaa !83
  %i.ayi = icmp eq i8 %i.ayh, 62
  br i1 %i.ayi, label %bb.pv, label %bb.px

bb.pv:                                            ; preds = %peek.exit.i2704
  %i.ayj = getelementptr i8, ptr %.ph, i64 2
  store ptr %i.ayj, ptr %i.d, align 8, !tbaa !87
  store i32 8, ptr %i.w, align 4, !tbaa !160
  store i32 122, ptr %i.c, align 8, !tbaa !154
  %i.ayk = load ptr, ptr %i.ab, align 8, !tbaa !155 ; 3 uses
  %.not.i2706 = icmp eq ptr %i.ayk, null
  br i1 %.not.i2706, label %parser_lex_callback.exit2967, label %bb.pw

bb.pw:                                            ; preds = %bb.pv
  %i.ayl = getelementptr i8, ptr %i.ayk, i64 8
  %i.aym = load ptr, ptr %i.ayl, align 8, !tbaa !157
  %i.ayn = load ptr, ptr %i.ayk, align 8, !tbaa !158
  call void %i.aym(ptr noundef %i.ayn, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

bb.px:                                            ; preds = %bb.ps, %peek.exit.i2704
  %i.ayo = call fastcc zeroext i1 @lex_state_spcarg_p(ptr noundef nonnull %0, i1 noundef zeroext %i.bw) ; 2 uses
  %.val2230 = load i32, ptr %i.w, align 4, !tbaa !160 ; 2 uses
  %i.ayp = and i32 %.val2230, 577
  %i.ayq = icmp ne i32 %i.ayp, 0
  %i.ayr = and i32 %.val2230, 2064
  %i.ays = icmp eq i32 %i.ayr, 2064
  %i.ayt = or i1 %i.ayq, %i.ays                   ; 2 uses
  %.not28 = xor i1 %i.ayt, true
  %or.cond30 = select i1 %.not28, i1 %i.ayo, i1 false
  br i1 %or.cond30, label %bb.py, label %bb.pz

bb.py:                                            ; preds = %bb.px
  %.val2129 = load ptr, ptr %i.v, align 8, !tbaa !127
  %.val2130 = load ptr, ptr %i.d, align 8, !tbaa !128
  %i.ayu = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.u, ptr noundef %.val2129, ptr noundef %.val2130, i32 noundef range(i32 297, 324) 297) #27 ; 0 uses
  br label %bb.pz

bb.pz:                                            ; preds = %bb.py, %bb.px
  %or.cond32 = select i1 %i.ayt, i1 true, i1 %i.ayo
  br i1 %or.cond32, label %bb.qa, label %bb.qd

bb.qa:                                            ; preds = %bb.pz
  store i32 1, ptr %i.w, align 4, !tbaa !160
  %.val2218 = load ptr, ptr %i.f, align 8, !tbaa !89
  %.val2219 = load ptr, ptr %i.d, align 8, !tbaa !87 ; 2 uses
  %i.ayv = icmp ult ptr %.val2219, %.val2218
  br i1 %i.ayv, label %bb.qb, label %peek.exit2710

bb.qb:                                            ; preds = %bb.qa
  %i.ayw = load i8, ptr %.val2219, align 1, !tbaa !83
  br label %peek.exit2710

peek.exit2710:                                    ; preds = %bb.qa, %bb.qb
  %.0.i.i2709 = phi i8 [ %i.ayw, %bb.qb ], [ 0, %bb.qa ]
  %i.ayx = call zeroext i1 @pm_char_is_decimal_digit(i8 noundef zeroext %.0.i.i2709) #27
  %i.ayy = select i1 %i.ayx, i32 157, i32 156
  store i32 %i.ayy, ptr %i.c, align 8, !tbaa !154
  %i.ayz = load ptr, ptr %i.ab, align 8, !tbaa !155 ; 3 uses
  %.not.i2711 = icmp eq ptr %i.ayz, null
  br i1 %.not.i2711, label %parser_lex_callback.exit2967, label %bb.qc

bb.qc:                                            ; preds = %peek.exit2710
  %i.aza = getelementptr i8, ptr %i.ayz, i64 8
  %i.azb = load ptr, ptr %i.aza, align 8, !tbaa !157
  %i.azc = load ptr, ptr %i.ayz, align 8, !tbaa !158
  call void %i.azb(ptr noundef %i.azc, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

bb.qd:                                            ; preds = %bb.pz
  %i.azd = call fastcc zeroext i1 @ambiguous_operator_p(ptr noundef nonnull %0, i1 noundef zeroext %i.bw)
  br i1 %i.azd, label %bb.qe, label %bb.qf

bb.qe:                                            ; preds = %bb.qd
  %i.aze = load ptr, ptr %i.v, align 8, !tbaa !151
  %i.azf = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.azg = call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.u, ptr noundef %i.aze, ptr noundef %i.azf, i32 noundef 296, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29) #27 ; 0 uses
  br label %bb.qf

bb.qf:                                            ; preds = %bb.qe, %bb.qd
  store i32 1, ptr %i.w, align 4, !tbaa !160
  store i32 120, ptr %i.c, align 8, !tbaa !154
  %i.azh = load ptr, ptr %i.ab, align 8, !tbaa !155 ; 3 uses
  %.not.i2713 = icmp eq ptr %i.azh, null
  br i1 %.not.i2713, label %parser_lex_callback.exit2967, label %bb.qg

bb.qg:                                            ; preds = %bb.qf
  %i.azi = getelementptr i8, ptr %i.azh, i64 8
  %i.azj = load ptr, ptr %i.azi, align 8, !tbaa !157
  %i.azk = load ptr, ptr %i.azh, align 8, !tbaa !158
  call void %i.azj(ptr noundef %i.azk, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

bb.qh:                                            ; preds = %bb.t
  %.val2229 = load i32, ptr %i.w, align 4, !tbaa !160 ; 3 uses
  %i.azl = and i32 %.val2229, 577
  %i.azm = icmp ne i32 %i.azl, 0
  %i.azn = and i32 %.val2229, 2064
  %i.azo = icmp eq i32 %i.azn, 2064
  %i.azp = or i1 %i.azm, %i.azo                   ; 2 uses
  %i.azq = icmp ult ptr %i.cj, %i.bu
  br i1 %i.azq, label %peek.exit.i2718, label %bb.qt

peek.exit.i2718:                                  ; preds = %bb.qh
  %i.azr = load i8, ptr %i.cj, align 1, !tbaa !83
  %i.azs = icmp eq i8 %i.azr, 46
  br i1 %i.azs, label %bb.qi, label %bb.qt

bb.qi:                                            ; preds = %peek.exit.i2718
  %i.azt = getelementptr i8, ptr %.ph, i64 2      ; 3 uses
  store ptr %i.azt, ptr %i.d, align 8, !tbaa !87
  %i.azu = icmp ult ptr %i.azt, %i.bu
  br i1 %i.azu, label %peek.exit.i2723, label %bb.qr

peek.exit.i2723:                                  ; preds = %bb.qi
  %i.azv = load i8, ptr %i.azt, align 1, !tbaa !83
  %i.azw = icmp eq i8 %i.azv, 46
  br i1 %i.azw, label %bb.qj, label %bb.qr

bb.qj:                                            ; preds = %peek.exit.i2723
  %i.azx = getelementptr i8, ptr %.ph, i64 3
  store ptr %i.azx, ptr %i.d, align 8, !tbaa !87
  %i.azy = getelementptr i8, ptr %0, i64 504
  %.06.i = load ptr, ptr %i.azy, align 8, !tbaa !170 ; 3 uses
  %.not7.not.i = icmp eq ptr %.06.i, null
  br i1 %.not7.not.i, label %context_p.exit, label %.lr.ph.i2725

bb.qk:                                            ; preds = %.lr.ph.i2725
  %i.azz = getelementptr i8, ptr %.08.i, i64 8
  %.0.i2726 = load ptr, ptr %i.azz, align 8, !tbaa !170 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i2726, null
  br i1 %.not.not.i, label %.lr.ph.i2730, label %.lr.ph.i2725, !llvm.loop !3

.lr.ph.i2725:                                     ; preds = %bb.qj, %bb.qk
  %.08.i = phi ptr [ %.0.i2726, %bb.qk ], [ %.06.i, %bb.qj ] ; 2 uses
  %i.baa = load i32, ptr %.08.i, align 8, !tbaa !172
  %i.bab = icmp eq i32 %i.baa, 23
  br i1 %i.bab, label %context_p.exit, label %bb.qk

bb.ql:                                            ; preds = %.lr.ph.i2730
  %i.bac = getelementptr i8, ptr %.08.i2731, i64 8
  %.0.i2732 = load ptr, ptr %i.bac, align 8, !tbaa !170 ; 2 uses
  %.not.not.i2733 = icmp eq ptr %.0.i2732, null
  br i1 %.not.not.i2733, label %context_p.exit, label %.lr.ph.i2730, !llvm.loop !3

.lr.ph.i2730:                                     ; preds = %bb.qk, %bb.ql
  %.08.i2731 = phi ptr [ %.0.i2732, %bb.ql ], [ %.06.i, %bb.qk ] ; 2 uses
  %i.bad = load i32, ptr %.08.i2731, align 8, !tbaa !172
  %i.bae = icmp eq i32 %i.bad, 21
  br i1 %i.bae, label %context_p.exit2736, label %bb.ql

context_p.exit2736:                               ; preds = %.lr.ph.i2730
  %i.baf = and i32 %.val2229, 2
  %.not3550 = icmp eq i32 %i.baf, 0
  %.3598 = select i1 %.not3550, i32 4, i32 1
  store i32 %.3598, ptr %i.w, align 4, !tbaa !160
  store i32 155, ptr %i.c, align 8, !tbaa !154
  %i.bag = load ptr, ptr %i.ab, align 8, !tbaa !155 ; 3 uses
  %.not.i2737 = icmp eq ptr %i.bag, null
  br i1 %.not.i2737, label %parser_lex_callback.exit2967, label %bb.qm

bb.qm:                                            ; preds = %context_p.exit2736
  %i.bah = getelementptr i8, ptr %i.bag, i64 8
  %i.bai = load ptr, ptr %i.bah, align 8, !tbaa !157
  %i.baj = load ptr, ptr %i.bag, align 8, !tbaa !158
  call void %i.bai(ptr noundef %i.baj, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

context_p.exit:                                   ; preds = %.lr.ph.i2725, %bb.ql, %bb.qj
  %i.bak = getelementptr i8, ptr %0, i64 8
  %i.bal = load i32, ptr %i.bak, align 8, !tbaa !164
  %i.bam = icmp eq i32 %i.bal, 0
  br i1 %i.bam, label %bb.qn, label %bb.qp

bb.qn:                                            ; preds = %context_p.exit
  %i.ban = call fastcc zeroext i1 @parser_end_of_line_p(ptr noundef nonnull %0)
  br i1 %i.ban, label %bb.qo, label %bb.qp

bb.qo:                                            ; preds = %bb.qn
  %.val2127 = load ptr, ptr %i.v, align 8, !tbaa !127
  %.val2128 = load ptr, ptr %i.d, align 8, !tbaa !128
  %i.bao = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.u, ptr noundef %.val2127, ptr noundef %.val2128, i32 noundef range(i32 297, 324) 304) #27 ; 0 uses
  br label %bb.qp

bb.qp:                                            ; preds = %bb.qo, %bb.qn, %context_p.exit
  store i32 1, ptr %i.w, align 4, !tbaa !160
  %i.bap = select i1 %i.azp, i32 155, i32 44
  store i32 %i.bap, ptr %i.c, align 8, !tbaa !154
  %i.baq = load ptr, ptr %i.ab, align 8, !tbaa !155 ; 3 uses
  %.not.i2739 = icmp eq ptr %i.baq, null
  br i1 %.not.i2739, label %parser_lex_callback.exit2967, label %bb.qq

bb.qq:                                            ; preds = %bb.qp
  %i.bar = getelementptr i8, ptr %i.baq, i64 8
  %i.bas = load ptr, ptr %i.bar, align 8, !tbaa !157
  %i.bat = load ptr, ptr %i.baq, align 8, !tbaa !158
  call void %i.bas(ptr noundef %i.bat, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

bb.qr:                                            ; preds = %peek.exit.i2723, %bb.qi
  store i32 1, ptr %i.w, align 4, !tbaa !160
  %i.bau = select i1 %i.azp, i32 154, i32 43
  store i32 %i.bau, ptr %i.c, align 8, !tbaa !154
  %i.bav = load ptr, ptr %i.ab, align 8, !tbaa !155 ; 3 uses
  %.not.i2741 = icmp eq ptr %i.bav, null
  br i1 %.not.i2741, label %parser_lex_callback.exit2967, label %bb.qs

bb.qs:                                            ; preds = %bb.qr
  %i.baw = getelementptr i8, ptr %i.bav, i64 8
  %i.bax = load ptr, ptr %i.baw, align 8, !tbaa !157
  %i.bay = load ptr, ptr %i.bav, align 8, !tbaa !158
  call void %i.bax(ptr noundef %i.bay, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

bb.qt:                                            ; preds = %peek.exit.i2718, %bb.qh
  store i32 256, ptr %i.w, align 4, !tbaa !160
  store i32 42, ptr %i.c, align 8, !tbaa !154
  %i.baz = load ptr, ptr %i.ab, align 8, !tbaa !155 ; 3 uses
  %.not.i2743 = icmp eq ptr %i.baz, null
  br i1 %.not.i2743, label %parser_lex_callback.exit2967, label %bb.qu

bb.qu:                                            ; preds = %bb.qt
  %i.bba = getelementptr i8, ptr %i.baz, i64 8
  %i.bbb = load ptr, ptr %i.bba, align 8, !tbaa !157
  %i.bbc = load ptr, ptr %i.baz, align 8, !tbaa !158
  call void %i.bbb(ptr noundef %i.bbc, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

bb.qv:                                            ; preds = %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t
  %i.bbd = call fastcc i32 @lex_numeric(ptr noundef nonnull %0)
  store i32 2, ptr %i.w, align 4, !tbaa !160
  store i32 %i.bbd, ptr %i.c, align 8, !tbaa !154
  %i.bbe = load ptr, ptr %i.ab, align 8, !tbaa !155 ; 3 uses
  %.not.i2745 = icmp eq ptr %i.bbe, null
  br i1 %.not.i2745, label %parser_lex_callback.exit2967, label %bb.qw

bb.qw:                                            ; preds = %bb.qv
  %i.bbf = getelementptr i8, ptr %i.bbe, i64 8
  %i.bbg = load ptr, ptr %i.bbf, align 8, !tbaa !157
  %i.bbh = load ptr, ptr %i.bbe, align 8, !tbaa !158
  call void %i.bbg(ptr noundef %i.bbh, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

end_hunk_1
