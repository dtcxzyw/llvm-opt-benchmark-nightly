inline.NumInlined: 2622
inline.NumDeleted: 264
begin_hunk_0_@parser_lex:bb.a
  %i.akt = load ptr, ptr %i.v, align 8, !tbaa !166
  %i.aku = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.akv = call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.u, ptr noundef %i.akt, ptr noundef %i.aku, i32 noundef 296, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.26) #27 ; 0 uses
  br label %ambiguous_operator_p.exit.thread

ambiguous_operator_p.exit.thread:                 ; preds = %.thread5097, %bb.ku, %bb.kw, %ambiguous_operator_p.exit
  %.val2178 = load i32, ptr %i.w, align 4, !tbaa !195 ; 2 uses
  %i.akw = and i32 %.val2178, 384
  %.not3573 = icmp eq i32 %i.akw, 0
  br i1 %.not3573, label %bb.kx, label %bb.kz

bb.kx:                                            ; preds = %ambiguous_operator_p.exit.thread
  %i.akx = and i32 %.val2178, 512
  %.not3574 = icmp eq i32 %i.akx, 0
  br i1 %.not3574, label %bb.kz, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  store i8 1, ptr %i.i, align 8, !tbaa !164
  br label %bb.kz

bb.kz:                                            ; preds = %bb.kx, %bb.ky, %ambiguous_operator_p.exit.thread
  %storemerge3575 = phi i32 [ 16, %ambiguous_operator_p.exit.thread ], [ 1, %bb.ky ], [ 1, %bb.kx ]
  store i32 %storemerge3575, ptr %i.w, align 4, !tbaa !195
  store i32 117, ptr %i.c, align 8, !tbaa !170
  %i.aky = load ptr, ptr %i.ab, align 8, !tbaa !171 ; 3 uses
  %.not.i2533 = icmp eq ptr %i.aky, null
  br i1 %.not.i2533, label %parser_lex_callback.exit2967, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.akz = getelementptr i8, ptr %i.aky, i64 8
  %i.ala = load ptr, ptr %i.akz, align 8, !tbaa !172
  %i.alb = load ptr, ptr %i.aky, align 8, !tbaa !174
  call void %i.ala(ptr noundef %i.alb, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !175
  br label %parser_lex_callback.exit2967

bb.lb:                                            ; preds = %._crit_edge4610, %peek.exit.i2493
  %.val2177 = phi i32 [ %.val2177.pre, %._crit_edge4610 ], [ %.val2177.pre4611, %peek.exit.i2493 ] ; 2 uses
  %i.alc = and i32 %.val2177, 384
  %.not3567 = icmp eq i32 %i.alc, 0
  br i1 %.not3567, label %bb.lc, label %bb.le

bb.lc:                                            ; preds = %bb.lb
  %i.ald = and i32 %.val2177, 512
  %.not3568 = icmp eq i32 %i.ald, 0
  br i1 %.not3568, label %bb.le, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  store i8 1, ptr %i.i, align 8, !tbaa !164
  br label %bb.le

bb.le:                                            ; preds = %bb.lc, %bb.ld, %bb.lb
  %storemerge3569 = phi i32 [ 16, %bb.lb ], [ 1, %bb.ld ], [ 1, %bb.lc ]
  store i32 %storemerge3569, ptr %i.w, align 4, !tbaa !195
  br i1 %i.afz, label %peek.exit.i2537, label %bb.lk

peek.exit.i2537:                                  ; preds = %bb.le
  %i.ale = load i8, ptr %i.cj, align 1, !tbaa !67
  %i.alf = icmp eq i8 %i.ale, 61
  br i1 %i.alf, label %bb.lf, label %bb.lk

bb.lf:                                            ; preds = %peek.exit.i2537
  %i.alg = getelementptr i8, ptr %.ph, i64 2      ; 3 uses
  store ptr %i.alg, ptr %i.d, align 8, !tbaa !76
  %i.alh = icmp ult ptr %i.alg, %i.bu
  br i1 %i.alh, label %peek.exit.i2541, label %._crit_edge4613

._crit_edge4613:                                  ; preds = %bb.lf
  %.pre4614 = load ptr, ptr %i.ab, align 8, !tbaa !171
  br label %bb.li

peek.exit.i2541:                                  ; preds = %bb.lf
  %i.ali = load i8, ptr %i.alg, align 1, !tbaa !67
  %i.alj = icmp eq i8 %i.ali, 62
  %.pre4615 = load ptr, ptr %i.ab, align 8, !tbaa !171 ; 4 uses
  br i1 %i.alj, label %bb.lg, label %bb.li

bb.lg:                                            ; preds = %peek.exit.i2541
  %i.alk = getelementptr i8, ptr %.ph, i64 3
  store ptr %i.alk, ptr %i.d, align 8, !tbaa !76
  store i32 116, ptr %i.c, align 8, !tbaa !170
  %.not.i2543 = icmp eq ptr %.pre4615, null
  br i1 %.not.i2543, label %parser_lex_callback.exit2967, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.all = getelementptr i8, ptr %.pre4615, i64 8
  %i.alm = load ptr, ptr %i.all, align 8, !tbaa !172
  %i.aln = load ptr, ptr %.pre4615, align 8, !tbaa !174
  call void %i.alm(ptr noundef %i.aln, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !175
  br label %parser_lex_callback.exit2967

bb.li:                                            ; preds = %._crit_edge4613, %peek.exit.i2541
  %i.alo = phi ptr [ %.pre4614, %._crit_edge4613 ], [ %.pre4615, %peek.exit.i2541 ] ; 3 uses
  store i32 115, ptr %i.c, align 8, !tbaa !170
  %.not.i2545 = icmp eq ptr %i.alo, null
  br i1 %.not.i2545, label %parser_lex_callback.exit2967, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.alp = getelementptr i8, ptr %i.alo, i64 8
  %i.alq = load ptr, ptr %i.alp, align 8, !tbaa !172
  %i.alr = load ptr, ptr %i.alo, align 8, !tbaa !174
  call void %i.alq(ptr noundef %i.alr, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !175
  br label %parser_lex_callback.exit2967

bb.lk:                                            ; preds = %peek.exit.i2537, %bb.le
  store i32 114, ptr %i.c, align 8, !tbaa !170
  %i.als = load ptr, ptr %i.ab, align 8, !tbaa !171 ; 3 uses
  %.not.i2547 = icmp eq ptr %i.als, null
  br i1 %.not.i2547, label %parser_lex_callback.exit2967, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %i.alt = getelementptr i8, ptr %i.als, i64 8
  %i.alu = load ptr, ptr %i.alt, align 8, !tbaa !172
  %i.alv = load ptr, ptr %i.als, align 8, !tbaa !174
  call void %i.alu(ptr noundef %i.alv, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !175
  br label %parser_lex_callback.exit2967

bb.lm:                                            ; preds = %bb.t
  %i.alw = icmp ult ptr %i.cj, %i.bu
  br i1 %i.alw, label %peek.exit.i2551, label %bb.lq

peek.exit.i2551:                                  ; preds = %bb.lm
  %i.alx = load i8, ptr %i.cj, align 1, !tbaa !67
  %i.aly = icmp eq i8 %i.alx, 62
  %.val2175.pre4608 = load i32, ptr %i.w, align 4, !tbaa !195 ; 2 uses
  br i1 %i.aly, label %bb.ln, label %peek.exit.i2561

bb.ln:                                            ; preds = %peek.exit.i2551
  %i.alz = getelementptr i8, ptr %.ph, i64 2      ; 3 uses
  store ptr %i.alz, ptr %i.d, align 8, !tbaa !76
  %i.ama = and i32 %.val2175.pre4608, 384
  %.not3565 = icmp eq i32 %i.ama, 0
  %.3593 = select i1 %.not3565, i32 1, i32 16
  store i32 %.3593, ptr %i.w, align 4, !tbaa !195
  %i.amb = icmp ult ptr %i.alz, %i.bu
  br i1 %i.amb, label %peek.exit.i2555, label %match.exit2556.thread

peek.exit.i2555:                                  ; preds = %bb.ln
  %i.amc = load i8, ptr %i.alz, align 1, !tbaa !67
  %i.amd = icmp eq i8 %i.amc, 61
  br i1 %i.amd, label %bb.lo, label %match.exit2556.thread

bb.lo:                                            ; preds = %peek.exit.i2555
  %i.ame = getelementptr i8, ptr %.ph, i64 3
  store ptr %i.ame, ptr %i.d, align 8, !tbaa !76
  br label %match.exit2556.thread

match.exit2556.thread:                            ; preds = %bb.ln, %peek.exit.i2555, %bb.lo
  %i.amf = phi i32 [ 63, %bb.lo ], [ 62, %peek.exit.i2555 ], [ 62, %bb.ln ]
  store i32 %i.amf, ptr %i.c, align 8, !tbaa !170
  %i.amg = load ptr, ptr %i.ab, align 8, !tbaa !171 ; 3 uses
  %.not.i2557 = icmp eq ptr %i.amg, null
  br i1 %.not.i2557, label %parser_lex_callback.exit2967, label %bb.lp

bb.lp:                                            ; preds = %match.exit2556.thread
  %i.amh = getelementptr i8, ptr %i.amg, i64 8
  %i.ami = load ptr, ptr %i.amh, align 8, !tbaa !172
  %i.amj = load ptr, ptr %i.amg, align 8, !tbaa !174
  call void %i.ami(ptr noundef %i.amj, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !175
  br label %parser_lex_callback.exit2967

bb.lq:                                            ; preds = %bb.lm
  %.val2175.pre = load i32, ptr %i.w, align 4, !tbaa !195
  %i.amk = and i32 %.val2175.pre, 384
  %.not = icmp eq i32 %i.amk, 0
  %.3594 = select i1 %.not, i32 1, i32 16
  store i32 %.3594, ptr %i.w, align 4, !tbaa !195
  br label %match.exit2562.thread

peek.exit.i2561:                                  ; preds = %peek.exit.i2551
  %i.aml = and i32 %.val2175.pre4608, 384
  %.not5104 = icmp eq i32 %i.aml, 0
  %.35945105 = select i1 %.not5104, i32 1, i32 16
  store i32 %.35945105, ptr %i.w, align 4, !tbaa !195
  %i.amm = load i8, ptr %i.cj, align 1, !tbaa !67
  %i.amn = icmp eq i8 %i.amm, 61
  br i1 %i.amn, label %bb.lr, label %match.exit2562.thread

bb.lr:                                            ; preds = %peek.exit.i2561
  %i.amo = getelementptr i8, ptr %.ph, i64 2
  store ptr %i.amo, ptr %i.d, align 8, !tbaa !76
  br label %match.exit2562.thread

match.exit2562.thread:                            ; preds = %bb.lq, %peek.exit.i2561, %bb.lr
  %i.amp = phi i32 [ 61, %bb.lr ], [ 60, %peek.exit.i2561 ], [ 60, %bb.lq ]
  store i32 %i.amp, ptr %i.c, align 8, !tbaa !170
  %i.amq = load ptr, ptr %i.ab, align 8, !tbaa !171 ; 3 uses
  %.not.i2563 = icmp eq ptr %i.amq, null
  br i1 %.not.i2563, label %parser_lex_callback.exit2967, label %bb.ls

bb.ls:                                            ; preds = %match.exit2562.thread
  %i.amr = getelementptr i8, ptr %i.amq, i64 8
  %i.ams = load ptr, ptr %i.amr, align 8, !tbaa !172
  %i.amt = load ptr, ptr %i.amq, align 8, !tbaa !174
  call void %i.ams(ptr noundef %i.amt, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !175
  br label %parser_lex_callback.exit2967

bb.lt:                                            ; preds = %bb.t
  %.val2150 = load i32, ptr %i.w, align 4, !tbaa !195 ; 2 uses
  %i.amu = and i32 %.val2150, 1032
  %.not3563 = icmp eq i32 %i.amu, 0
  %or.cond21 = select i1 %.not3563, i1 true, i1 %i.k
  %i.amv = and i32 %.val2150, 48
  %i.amw = icmp ne i32 %i.amv, 0
  %not.or.cond21 = xor i1 %or.cond21, true
  %i.amx = select i1 %not.or.cond21, i1 true, i1 %i.amw
  %i.amy = zext i1 %i.amx to i8                   ; 2 uses
  %i.amz = getelementptr i8, ptr %0, i64 672
  store ptr null, ptr %i.amz, align 8, !tbaa !207
  %i.ana = load ptr, ptr %i.o, align 8, !tbaa !91 ; 2 uses
  %i.anb = getelementptr i8, ptr %0, i64 296      ; 3 uses
  %i.anc = load i64, ptr %i.anb, align 8, !tbaa !90
  %i.and = add i64 %i.anc, 1                      ; 3 uses
  store i64 %i.and, ptr %i.anb, align 8, !tbaa !90
  %i.ane = icmp ugt i64 %i.and, 3
  br i1 %i.ane, label %bb.lu, label %bb.lw

bb.lu:                                            ; preds = %bb.lt
  %i.anf = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28 ; 13 uses
  store ptr %i.anf, ptr %i.o, align 8, !tbaa !91
  %i.ang = icmp eq ptr %i.anf, null
  br i1 %i.ang, label %lex_mode_push_string.exit, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  store i32 6, ptr %i.anf, align 8
  %.sroa.63180.0..sroa_idx3181 = getelementptr inbounds nuw i8, ptr %i.anf, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.63180.0..sroa_idx3181, i8 0, i64 12, i1 false)
  %.sroa.63182.0..sroa_idx3183 = getelementptr inbounds nuw i8, ptr %i.anf, i64 16
  store i8 1, ptr %.sroa.63182.0..sroa_idx3183, align 8
  %.sroa.73185.0..sroa_idx3186 = getelementptr inbounds nuw i8, ptr %i.anf, i64 17
  store i8 %i.amy, ptr %.sroa.73185.0..sroa_idx3186, align 1
  %.sroa.83188.0..sroa_idx3189 = getelementptr inbounds nuw i8, ptr %i.anf, i64 18
  store i8 0, ptr %.sroa.83188.0..sroa_idx3189, align 2
  %.sroa.93191.0..sroa_idx3192 = getelementptr inbounds nuw i8, ptr %i.anf, i64 19
  store i8 34, ptr %.sroa.93191.0..sroa_idx3192, align 1
  %.sroa.103194.0..sroa_idx3195 = getelementptr inbounds nuw i8, ptr %i.anf, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %.sroa.103194.0..sroa_idx3195, ptr noundef nonnull align 1 dereferenceable(3) @.str.56, i64 3, i1 false)
  %.sroa.113196.0..sroa_idx3197 = getelementptr inbounds nuw i8, ptr %i.anf, i64 23
  store i8 34, ptr %.sroa.113196.0..sroa_idx3197, align 1
  %.sroa.123199.0..sroa_idx3200 = getelementptr inbounds nuw i8, ptr %i.anf, i64 24
  store i8 35, ptr %.sroa.123199.0..sroa_idx3200, align 8
  %.sroa.133202.0..sroa_idx3203 = getelementptr inbounds nuw i8, ptr %i.anf, i64 25
  %.sroa.5.0..sroa_idx18.i = getelementptr inbounds nuw i8, ptr %i.anf, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.133202.0..sroa_idx3203, i8 0, i64 31, i1 false)
  store ptr %i.ana, ptr %.sroa.5.0..sroa_idx18.i, align 8, !tbaa !11
  br label %lex_mode_push_string.exit

bb.lw:                                            ; preds = %bb.lt
  %i.anh = getelementptr i8, ptr %0, i64 40       ; 2 uses
  %i.ani = getelementptr [64 x i8], ptr %i.anh, i64 %i.and ; 11 uses
  store i32 6, ptr %i.ani, align 8
  %.sroa.63180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ani, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.63180.0..sroa_idx, i8 0, i64 12, i1 false)
  %.sroa.63182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ani, i64 16
  store i8 1, ptr %.sroa.63182.0..sroa_idx, align 8
  %.sroa.73185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ani, i64 17
  store i8 %i.amy, ptr %.sroa.73185.0..sroa_idx, align 1
  %.sroa.83188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ani, i64 18
  store i8 0, ptr %.sroa.83188.0..sroa_idx, align 2
  %.sroa.93191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ani, i64 19
  store i8 34, ptr %.sroa.93191.0..sroa_idx, align 1
  %.sroa.103194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ani, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %.sroa.103194.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) @.str.56, i64 3, i1 false)
  %.sroa.113196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ani, i64 23
  store i8 34, ptr %.sroa.113196.0..sroa_idx, align 1
  %.sroa.123199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ani, i64 24
  store i8 35, ptr %.sroa.123199.0..sroa_idx, align 8
  %.sroa.133202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ani, i64 25
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ani, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.133202.0..sroa_idx, i8 0, i64 31, i1 false)
  store ptr %i.ana, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !11
  %i.anj = load i64, ptr %i.anb, align 8, !tbaa !90
  %i.ank = getelementptr [64 x i8], ptr %i.anh, i64 %i.anj
  store ptr %i.ank, ptr %i.o, align 8, !tbaa !91
  br label %lex_mode_push_string.exit

lex_mode_push_string.exit:                        ; preds = %bb.lu, %bb.lv, %bb.lw
  store i32 147, ptr %i.c, align 8, !tbaa !170
  %i.anl = load ptr, ptr %i.ab, align 8, !tbaa !171 ; 3 uses
  %.not.i2568 = icmp eq ptr %i.anl, null
  br i1 %.not.i2568, label %parser_lex_callback.exit2967, label %bb.lx

bb.lx:                                            ; preds = %lex_mode_push_string.exit
  %i.anm = getelementptr i8, ptr %i.anl, i64 8
  %i.ann = load ptr, ptr %i.anm, align 8, !tbaa !172
  %i.ano = load ptr, ptr %i.anl, align 8, !tbaa !174
  call void %i.ann(ptr noundef %i.ano, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !175
  br label %parser_lex_callback.exit2967

bb.ly:                                            ; preds = %bb.t
  %.val2149 = load i32, ptr %i.w, align 4, !tbaa !195 ; 2 uses
  %i.anp = and i32 %.val2149, 128
  %.not3560 = icmp eq i32 %i.anp, 0
  br i1 %.not3560, label %bb.mb, label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  store i32 8, ptr %i.w, align 4, !tbaa !195
  store i32 23, ptr %i.c, align 8, !tbaa !170
  %i.anq = load ptr, ptr %i.ab, align 8, !tbaa !171 ; 3 uses
  %.not.i2570 = icmp eq ptr %i.anq, null
  br i1 %.not.i2570, label %parser_lex_callback.exit2967, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  %i.anr = getelementptr i8, ptr %i.anq, i64 8
  %i.ans = load ptr, ptr %i.anr, align 8, !tbaa !172
  %i.ant = load ptr, ptr %i.anq, align 8, !tbaa !174
  call void %i.ans(ptr noundef %i.ant, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !175
  br label %parser_lex_callback.exit2967

bb.mb:                                            ; preds = %bb.ly
  %i.anu = and i32 %.val2149, 256
  %.not3561 = icmp eq i32 %i.anu, 0
  br i1 %.not3561, label %bb.me, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  %.3595 = select i1 %i.k, i32 32, i32 16
  store i32 %.3595, ptr %i.w, align 4, !tbaa !195
  store i32 23, ptr %i.c, align 8, !tbaa !170
  %i.anv = load ptr, ptr %i.ab, align 8, !tbaa !171 ; 3 uses
  %.not.i2572 = icmp eq ptr %i.anv, null
  br i1 %.not.i2572, label %parser_lex_callback.exit2967, label %bb.md

bb.md:                                            ; preds = %bb.mc
  %i.anw = getelementptr i8, ptr %i.anv, i64 8
  %i.anx = load ptr, ptr %i.anw, align 8, !tbaa !172
  %i.any = load ptr, ptr %i.anv, align 8, !tbaa !174
  call void %i.anx(ptr noundef %i.any, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !175
  br label %parser_lex_callback.exit2967

bb.me:                                            ; preds = %bb.mb
  %i.anz = getelementptr i8, ptr %0, i64 672
  store ptr null, ptr %i.anz, align 8, !tbaa !207
  %i.aoa = load ptr, ptr %i.o, align 8, !tbaa !91 ; 2 uses
  %i.aob = getelementptr i8, ptr %0, i64 296      ; 3 uses
  %i.aoc = load i64, ptr %i.aob, align 8, !tbaa !90
  %i.aod = add i64 %i.aoc, 1                      ; 3 uses
  store i64 %i.aod, ptr %i.aob, align 8, !tbaa !90
  %i.aoe = icmp ugt i64 %i.aod, 3
  br i1 %i.aoe, label %bb.mf, label %bb.mh

bb.mf:                                            ; preds = %bb.me
  %i.aof = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28 ; 10 uses
  store ptr %i.aof, ptr %i.o, align 8, !tbaa !91
  %i.aog = icmp eq ptr %i.aof, null
  br i1 %i.aog, label %lex_mode_push_string.exit2579, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  store i32 6, ptr %i.aof, align 8
  %.sroa.63213.0..sroa_idx3214 = getelementptr inbounds nuw i8, ptr %i.aof, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.63213.0..sroa_idx3214, i8 0, i64 12, i1 false)
  %.sroa.63215.0..sroa_idx3216 = getelementptr inbounds nuw i8, ptr %i.aof, i64 16
  store <4 x i8> <i8 1, i8 0, i8 0, i8 96>, ptr %.sroa.63215.0..sroa_idx3216, align 8
  %.sroa.103227.0..sroa_idx3228 = getelementptr inbounds nuw i8, ptr %i.aof, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %.sroa.103227.0..sroa_idx3228, ptr noundef nonnull align 1 dereferenceable(3) @.str.56, i64 3, i1 false)
  %.sroa.113229.0..sroa_idx3230 = getelementptr inbounds nuw i8, ptr %i.aof, i64 23
  store i8 96, ptr %.sroa.113229.0..sroa_idx3230, align 1
  %.sroa.123232.0..sroa_idx3233 = getelementptr inbounds nuw i8, ptr %i.aof, i64 24
  store i8 35, ptr %.sroa.123232.0..sroa_idx3233, align 8
  %.sroa.133235.0..sroa_idx3236 = getelementptr inbounds nuw i8, ptr %i.aof, i64 25
  %.sroa.5.0..sroa_idx18.i2578 = getelementptr inbounds nuw i8, ptr %i.aof, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.133235.0..sroa_idx3236, i8 0, i64 31, i1 false)
  store ptr %i.aoa, ptr %.sroa.5.0..sroa_idx18.i2578, align 8, !tbaa !11
  br label %lex_mode_push_string.exit2579

bb.mh:                                            ; preds = %bb.me
  %i.aoh = getelementptr i8, ptr %0, i64 40       ; 2 uses
  %i.aoi = getelementptr [64 x i8], ptr %i.aoh, i64 %i.aod ; 8 uses
  store i32 6, ptr %i.aoi, align 8
  %.sroa.63213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aoi, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.63213.0..sroa_idx, i8 0, i64 12, i1 false)
  %.sroa.63215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aoi, i64 16
  store <4 x i8> <i8 1, i8 0, i8 0, i8 96>, ptr %.sroa.63215.0..sroa_idx, align 8
  %.sroa.103227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aoi, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %.sroa.103227.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) @.str.56, i64 3, i1 false)
  %.sroa.113229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aoi, i64 23
  store i8 96, ptr %.sroa.113229.0..sroa_idx, align 1
  %.sroa.123232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aoi, i64 24
  store i8 35, ptr %.sroa.123232.0..sroa_idx, align 8
  %.sroa.133235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aoi, i64 25
  %.sroa.5.0..sroa_idx.i2576 = getelementptr inbounds nuw i8, ptr %i.aoi, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.133235.0..sroa_idx, i8 0, i64 31, i1 false)
  store ptr %i.aoa, ptr %.sroa.5.0..sroa_idx.i2576, align 8, !tbaa !11
  %i.aoj = load i64, ptr %i.aob, align 8, !tbaa !90
  %i.aok = getelementptr [64 x i8], ptr %i.aoh, i64 %i.aoj
  store ptr %i.aok, ptr %i.o, align 8, !tbaa !91
  br label %lex_mode_push_string.exit2579

lex_mode_push_string.exit2579:                    ; preds = %bb.mf, %bb.mg, %bb.mh
  store i32 23, ptr %i.c, align 8, !tbaa !170
  %i.aol = load ptr, ptr %i.ab, align 8, !tbaa !171 ; 3 uses
  %.not.i2580 = icmp eq ptr %i.aol, null
  br i1 %.not.i2580, label %parser_lex_callback.exit2967, label %bb.mi

bb.mi:                                            ; preds = %lex_mode_push_string.exit2579
  %i.aom = getelementptr i8, ptr %i.aol, i64 8
  %i.aon = load ptr, ptr %i.aom, align 8, !tbaa !172
  %i.aoo = load ptr, ptr %i.aol, align 8, !tbaa !174
  call void %i.aon(ptr noundef %i.aoo, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !175
  br label %parser_lex_callback.exit2967

bb.mj:                                            ; preds = %bb.t
  %.val2147 = load i32, ptr %i.w, align 4, !tbaa !195 ; 2 uses
  %i.aop = and i32 %.val2147, 1032
  %.not3559 = icmp eq i32 %i.aop, 0
  %or.cond24 = select i1 %.not3559, i1 true, i1 %i.k
  %i.aoq = and i32 %.val2147, 48
  %i.aor = icmp ne i32 %i.aoq, 0
  %not.or.cond24 = xor i1 %or.cond24, true
  %i.aos = select i1 %not.or.cond24, i1 true, i1 %i.aor
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.123265)
  %i.aot = zext i1 %i.aos to i8                   ; 2 uses
  %.sroa.123265.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.123265, i64 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %.sroa.123265.3..sroa_idx, i8 0, i64 37, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %.sroa.123265, ptr noundef nonnull align 1 dereferenceable(3) getelementptr inbounds nuw (i8, ptr @.str.56, i64 4), i64 3, i1 false)
  %i.aou = getelementptr i8, ptr %0, i64 672
  store ptr null, ptr %i.aou, align 8, !tbaa !207
  %i.aov = load ptr, ptr %i.o, align 8, !tbaa !91 ; 2 uses
  %i.aow = getelementptr i8, ptr %0, i64 296      ; 3 uses
  %i.aox = load i64, ptr %i.aow, align 8, !tbaa !90
  %i.aoy = add i64 %i.aox, 1                      ; 3 uses
  store i64 %i.aoy, ptr %i.aow, align 8, !tbaa !90
  %i.aoz = icmp ugt i64 %i.aoy, 3
  br i1 %i.aoz, label %bb.mk, label %bb.mm

bb.mk:                                            ; preds = %bb.mj
  %i.apa = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28 ; 11 uses
  store ptr %i.apa, ptr %i.o, align 8, !tbaa !91
  %i.apb = icmp eq ptr %i.apa, null
  br i1 %i.apb, label %lex_mode_push_string.exit2587, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  store i32 6, ptr %i.apa, align 8
  %.sroa.63246.0..sroa_idx3247 = getelementptr inbounds nuw i8, ptr %i.apa, i64 4
  %.sroa.73251.0..sroa_idx3252 = getelementptr inbounds nuw i8, ptr %i.apa, i64 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.63246.0..sroa_idx3247, i8 0, i64 13, i1 false)
  store i8 %i.aot, ptr %.sroa.73251.0..sroa_idx3252, align 1
  %.sroa.83254.0..sroa_idx3255 = getelementptr inbounds nuw i8, ptr %i.apa, i64 18
  store i8 0, ptr %.sroa.83254.0..sroa_idx3255, align 2
  %.sroa.93257.0..sroa_idx3258 = getelementptr inbounds nuw i8, ptr %i.apa, i64 19
  store i8 39, ptr %.sroa.93257.0..sroa_idx3258, align 1
  %.sroa.103260.0..sroa_idx3261 = getelementptr inbounds nuw i8, ptr %i.apa, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %.sroa.103260.0..sroa_idx3261, ptr noundef nonnull align 1 dereferenceable(3) @.str.56, i64 3, i1 false)
  %.sroa.113262.0..sroa_idx3263 = getelementptr inbounds nuw i8, ptr %i.apa, i64 23
  store i8 39, ptr %.sroa.113262.0..sroa_idx3263, align 1
  %.sroa.123265.0..sroa_idx3266 = getelementptr inbounds nuw i8, ptr %i.apa, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.123265.0..sroa_idx3266, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.123265, i64 32, i1 false)
  %.sroa.5.0..sroa_idx18.i2586 = getelementptr inbounds nuw i8, ptr %i.apa, i64 56
  store ptr %i.aov, ptr %.sroa.5.0..sroa_idx18.i2586, align 8, !tbaa !11
  br label %lex_mode_push_string.exit2587

bb.mm:                                            ; preds = %bb.mj
  %i.apc = getelementptr i8, ptr %0, i64 40       ; 2 uses
  %i.apd = getelementptr [64 x i8], ptr %i.apc, i64 %i.aoy ; 9 uses
  store i32 6, ptr %i.apd, align 8
  %.sroa.63246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.apd, i64 4
  %.sroa.73251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.apd, i64 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.63246.0..sroa_idx, i8 0, i64 13, i1 false)
  store i8 %i.aot, ptr %.sroa.73251.0..sroa_idx, align 1
  %.sroa.83254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.apd, i64 18
  store i8 0, ptr %.sroa.83254.0..sroa_idx, align 2
  %.sroa.93257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.apd, i64 19
  store i8 39, ptr %.sroa.93257.0..sroa_idx, align 1
  %.sroa.103260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.apd, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %.sroa.103260.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) @.str.56, i64 3, i1 false)
  %.sroa.113262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.apd, i64 23
  store i8 39, ptr %.sroa.113262.0..sroa_idx, align 1
  %.sroa.123265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.apd, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.123265.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.123265, i64 32, i1 false)
  %.sroa.5.0..sroa_idx.i2584 = getelementptr inbounds nuw i8, ptr %i.apd, i64 56
  store ptr %i.aov, ptr %.sroa.5.0..sroa_idx.i2584, align 8, !tbaa !11
  %i.ape = load i64, ptr %i.aow, align 8, !tbaa !90
  %i.apf = getelementptr [64 x i8], ptr %i.apc, i64 %i.ape
  store ptr %i.apf, ptr %i.o, align 8, !tbaa !91
  br label %lex_mode_push_string.exit2587

lex_mode_push_string.exit2587:                    ; preds = %bb.mk, %bb.ml, %bb.mm
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.123265)
  store i32 147, ptr %i.c, align 8, !tbaa !170
  %i.apg = load ptr, ptr %i.ab, align 8, !tbaa !171 ; 3 uses
  %.not.i2588 = icmp eq ptr %i.apg, null
  br i1 %.not.i2588, label %parser_lex_callback.exit2967, label %bb.mn

bb.mn:                                            ; preds = %lex_mode_push_string.exit2587
  %i.aph = getelementptr i8, ptr %i.apg, i64 8
  %i.api = load ptr, ptr %i.aph, align 8, !tbaa !172
  %i.apj = load ptr, ptr %i.apg, align 8, !tbaa !174
  call void %i.api(ptr noundef %i.apj, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !175
  br label %parser_lex_callback.exit2967

bb.mo:                                            ; preds = %bb.t
  %.val48.i = load i32, ptr %i.w, align 4, !tbaa !195
  %i.apk = and i32 %.val48.i, 14
  %.not57.i = icmp eq i32 %i.apk, 0
  br i1 %.not57.i, label %bb.mq, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  store i32 1, ptr %i.w, align 4, !tbaa !195
  br label %lex_question_mark.exit

bb.mq:                                            ; preds = %bb.mo
  %.not.i2591 = icmp ult ptr %i.cj, %i.bu
  br i1 %.not.i2591, label %bb.ms, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  %i.apl = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.y, ptr noundef nonnull %.ph, ptr noundef %i.cj, i32 noundef 139) #27 ; 0 uses
  %i.apm = getelementptr i8, ptr %0, i64 640
  %i.apn = load ptr, ptr %i.v, align 8, !tbaa !166
  %i.apo = getelementptr i8, ptr %i.apn, i64 1
  %i.app = load ptr, ptr %i.d, align 8, !tbaa !76
  call void @pm_string_shared_init(ptr noundef %i.apm, ptr noundef %i.apo, ptr noundef %i.app) #27
  br label %lex_question_mark.exit

bb.ms:                                            ; preds = %bb.mq
  %i.apq = load i8, ptr %i.cj, align 1, !tbaa !67
  %i.apr = call zeroext i1 @pm_char_is_whitespace(i8 noundef zeroext %i.apq) #27
  store i32 1, ptr %i.w, align 4, !tbaa !195
  br i1 %i.apr, label %lex_question_mark.exit, label %bb.mt

bb.mt:                                            ; preds = %bb.ms
  %.val.i.i = load ptr, ptr %i.f, align 8, !tbaa !78 ; 2 uses
  %.val3.i.i = load ptr, ptr %i.d, align 8, !tbaa !76 ; 5 uses
  %i.aps = icmp ult ptr %.val3.i.i, %.val.i.i
  br i1 %i.aps, label %peek.exit.i.i, label %bb.mv

peek.exit.i.i:                                    ; preds = %bb.mt
  %i.apt = load i8, ptr %.val3.i.i, align 1, !tbaa !67
  %i.apu = icmp eq i8 %i.apt, 92
  br i1 %i.apu, label %bb.mu, label %bb.mv

bb.mu:                                            ; preds = %peek.exit.i.i
  %i.apv = getelementptr i8, ptr %.val3.i.i, i64 1
  store ptr %i.apv, ptr %i.d, align 8, !tbaa !76
  store i32 2, ptr %i.w, align 4, !tbaa !195
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.apw = call zeroext i1 @pm_buffer_init_capacity(ptr noundef nonnull %2, i64 noundef 3) #27 ; 0 uses
  call fastcc void @escape_read(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef null, i8 noundef zeroext 4)
  %i.apx = getelementptr i8, ptr %0, i64 640
  %i.apy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.apz = load ptr, ptr %i.apy, align 8, !tbaa !208
  %i.aqa = load i64, ptr %2, align 8, !tbaa !210
  call void @pm_string_owned_init(ptr noundef %i.apx, ptr noundef %i.apz, i64 noundef %i.aqa) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %lex_question_mark.exit

bb.mv:                                            ; preds = %peek.exit.i.i, %bb.mt
  %i.aqb = load ptr, ptr %i.x, align 8, !tbaa !40
  %i.aqc = load ptr, ptr %i.aqb, align 8, !tbaa !151
  %i.aqd = ptrtoint ptr %.val.i.i to i64
  %i.aqe = ptrtoint ptr %.val3.i.i to i64
  %i.aqf = sub i64 %i.aqd, %i.aqe
  %i.aqg = call i64 %i.aqc(ptr noundef %.val3.i.i, i64 noundef %i.aqf) #27, !inline_history !211 ; 2 uses
  %i.aqh = load ptr, ptr %i.x, align 8, !tbaa !40
  %i.aqi = getelementptr i8, ptr %i.aqh, i64 16
  %i.aqj = load ptr, ptr %i.aqi, align 8, !tbaa !153
  %i.aqk = load ptr, ptr %i.d, align 8, !tbaa !76 ; 2 uses
  %i.aql = load ptr, ptr %i.f, align 8, !tbaa !78
  %i.aqm = ptrtoint ptr %i.aql to i64
  %i.aqn = ptrtoint ptr %i.aqk to i64
  %i.aqo = sub i64 %i.aqm, %i.aqn
  %i.aqp = call i64 %i.aqj(ptr noundef %i.aqk, i64 noundef %i.aqo) #27, !inline_history !211
  %.not44.i = icmp eq i64 %i.aqp, 0
  %.pre.i2592 = load ptr, ptr %i.d, align 8, !tbaa !76 ; 3 uses
  %.pre58.i = load ptr, ptr %i.f, align 8, !tbaa !78 ; 3 uses
  br i1 %.not44.i, label %bb.mw, label %bb.mx

bb.mw:                                            ; preds = %bb.mv
  %i.aqq = icmp ult ptr %.pre.i2592, %.pre58.i
  br i1 %i.aqq, label %peek.exit.i2594, label %peek.exit.thread.i

peek.exit.i2594:                                  ; preds = %bb.mw
  %i.aqr = load i8, ptr %.pre.i2592, align 1, !tbaa !67
  %i.aqs = icmp eq i8 %i.aqr, 95
  br i1 %i.aqs, label %bb.mx, label %peek.exit.thread.i

bb.mx:                                            ; preds = %peek.exit.i2594, %bb.mv
  %i.aqt = getelementptr i8, ptr %.pre.i2592, i64 %i.aqg ; 7 uses
  %.not45.i = icmp ult ptr %i.aqt, %.pre58.i
  br i1 %.not45.i, label %bb.my, label %peek.exit.thread.i

bb.my:                                            ; preds = %bb.mx
  %i.aqu = ptrtoint ptr %.pre58.i to i64
  %i.aqv = ptrtoint ptr %i.aqt to i64
  %i.aqw = sub i64 %i.aqu, %i.aqv                 ; 4 uses
  %i.aqx = icmp slt i64 %i.aqw, 1
  br i1 %i.aqx, label %peek.exit.thread.i, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %i.aqy = load i8, ptr %i.ac, align 1, !tbaa !43, !range !45, !noundef !46
  %i.aqz = trunc nuw i8 %i.aqy to i1
  br i1 %i.aqz, label %bb.na, label %bb.ne

bb.na:                                            ; preds = %bb.mz
  %i.ara = load ptr, ptr %i.x, align 8, !tbaa !40
  %i.arb = getelementptr i8, ptr %i.ara, i64 16
  %i.arc = load ptr, ptr %i.arb, align 8, !tbaa !153
  %i.ard = call i64 %i.arc(ptr noundef %i.aqt, i64 noundef %i.aqw) #27, !inline_history !212
  %.not.i.i2593 = icmp eq i64 %i.ard, 0
  br i1 %.not.i.i2593, label %bb.nb, label %lex_question_mark.exit

bb.nb:                                            ; preds = %bb.na
  %i.are = load i8, ptr %i.aqt, align 1, !tbaa !67 ; 2 uses
  %i.arf = icmp eq i8 %i.are, 95
  br i1 %i.arf, label %lex_question_mark.exit, label %bb.nc

bb.nc:                                            ; preds = %bb.nb
end_hunk_0
