inline.NumInlined: 2622
inline.NumDeleted: 264
begin_hunk_0_@parser_lex:bb.a
  %i.akt = load ptr, ptr %i.v, align 8, !tbaa !166
  %i.aku = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.akv = call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.u, ptr noundef %i.akt, ptr noundef %i.aku, i32 noundef 296, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.26) #27 ; 0 uses
  br label %ambiguous_operator_p.exit.thread

ambiguous_operator_p.exit.thread:                 ; preds = %.thread5100, %bb.kv, %bb.kx, %ambiguous_operator_p.exit
  %.val2176 = load i32, ptr %i.w, align 4, !tbaa !195 ; 2 uses
  %i.akw = and i32 %.val2176, 384
  %.not3574 = icmp eq i32 %i.akw, 0
  br i1 %.not3574, label %bb.ky, label %bb.la

bb.ky:                                            ; preds = %ambiguous_operator_p.exit.thread
  %i.akx = and i32 %.val2176, 512
  %.not3575 = icmp eq i32 %i.akx, 0
  br i1 %.not3575, label %bb.la, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  store i8 1, ptr %i.i, align 8, !tbaa !164
  br label %bb.la

bb.la:                                            ; preds = %bb.ky, %bb.kz, %ambiguous_operator_p.exit.thread
  %storemerge3576 = phi i32 [ 16, %ambiguous_operator_p.exit.thread ], [ 1, %bb.kz ], [ 1, %bb.ky ]
  store i32 %storemerge3576, ptr %i.w, align 4, !tbaa !195
  store i32 117, ptr %i.c, align 8, !tbaa !170
  %i.aky = load ptr, ptr %i.ab, align 8, !tbaa !171 ; 3 uses
  %.not.i2531 = icmp eq ptr %i.aky, null
  br i1 %.not.i2531, label %parser_lex_callback.exit2965, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.akz = getelementptr i8, ptr %i.aky, i64 8
  %i.ala = load ptr, ptr %i.akz, align 8, !tbaa !172
  %i.alb = load ptr, ptr %i.aky, align 8, !tbaa !174
  call void %i.ala(ptr noundef %i.alb, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !175
  br label %parser_lex_callback.exit2965

bb.lc:                                            ; preds = %._crit_edge4613, %peek.exit.i2491
  %.val2175 = phi i32 [ %.val2175.pre, %._crit_edge4613 ], [ %.val2175.pre4614, %peek.exit.i2491 ] ; 2 uses
  %i.alc = and i32 %.val2175, 384
  %.not3568 = icmp eq i32 %i.alc, 0
  br i1 %.not3568, label %bb.ld, label %bb.lf

bb.ld:                                            ; preds = %bb.lc
  %i.ald = and i32 %.val2175, 512
  %.not3569 = icmp eq i32 %i.ald, 0
  br i1 %.not3569, label %bb.lf, label %bb.le

bb.le:                                            ; preds = %bb.ld
  store i8 1, ptr %i.i, align 8, !tbaa !164
  br label %bb.lf

bb.lf:                                            ; preds = %bb.ld, %bb.le, %bb.lc
  %storemerge3570 = phi i32 [ 16, %bb.lc ], [ 1, %bb.le ], [ 1, %bb.ld ]
  store i32 %storemerge3570, ptr %i.w, align 4, !tbaa !195
  br i1 %i.afz, label %peek.exit.i2535, label %bb.ll

peek.exit.i2535:                                  ; preds = %bb.lf
  %i.ale = load i8, ptr %i.cj, align 1, !tbaa !67
  %i.alf = icmp eq i8 %i.ale, 61
  br i1 %i.alf, label %bb.lg, label %bb.ll

bb.lg:                                            ; preds = %peek.exit.i2535
  %i.alg = getelementptr i8, ptr %.ph, i64 2      ; 3 uses
  store ptr %i.alg, ptr %i.d, align 8, !tbaa !76
  %i.alh = icmp ult ptr %i.alg, %i.bu
  br i1 %i.alh, label %peek.exit.i2539, label %._crit_edge4616

._crit_edge4616:                                  ; preds = %bb.lg
  %.pre4617 = load ptr, ptr %i.ab, align 8, !tbaa !171
  br label %bb.lj

peek.exit.i2539:                                  ; preds = %bb.lg
  %i.ali = load i8, ptr %i.alg, align 1, !tbaa !67
  %i.alj = icmp eq i8 %i.ali, 62
  %.pre4618 = load ptr, ptr %i.ab, align 8, !tbaa !171 ; 4 uses
  br i1 %i.alj, label %bb.lh, label %bb.lj

bb.lh:                                            ; preds = %peek.exit.i2539
  %i.alk = getelementptr i8, ptr %.ph, i64 3
  store ptr %i.alk, ptr %i.d, align 8, !tbaa !76
  store i32 116, ptr %i.c, align 8, !tbaa !170
  %.not.i2541 = icmp eq ptr %.pre4618, null
  br i1 %.not.i2541, label %parser_lex_callback.exit2965, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.all = getelementptr i8, ptr %.pre4618, i64 8
  %i.alm = load ptr, ptr %i.all, align 8, !tbaa !172
  %i.aln = load ptr, ptr %.pre4618, align 8, !tbaa !174
  call void %i.alm(ptr noundef %i.aln, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !175
  br label %parser_lex_callback.exit2965

bb.lj:                                            ; preds = %._crit_edge4616, %peek.exit.i2539
  %i.alo = phi ptr [ %.pre4617, %._crit_edge4616 ], [ %.pre4618, %peek.exit.i2539 ] ; 3 uses
  store i32 115, ptr %i.c, align 8, !tbaa !170
  %.not.i2543 = icmp eq ptr %i.alo, null
  br i1 %.not.i2543, label %parser_lex_callback.exit2965, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.alp = getelementptr i8, ptr %i.alo, i64 8
  %i.alq = load ptr, ptr %i.alp, align 8, !tbaa !172
  %i.alr = load ptr, ptr %i.alo, align 8, !tbaa !174
  call void %i.alq(ptr noundef %i.alr, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !175
  br label %parser_lex_callback.exit2965

bb.ll:                                            ; preds = %peek.exit.i2535, %bb.lf
  store i32 114, ptr %i.c, align 8, !tbaa !170
  %i.als = load ptr, ptr %i.ab, align 8, !tbaa !171 ; 3 uses
  %.not.i2545 = icmp eq ptr %i.als, null
  br i1 %.not.i2545, label %parser_lex_callback.exit2965, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.alt = getelementptr i8, ptr %i.als, i64 8
  %i.alu = load ptr, ptr %i.alt, align 8, !tbaa !172
  %i.alv = load ptr, ptr %i.als, align 8, !tbaa !174
  call void %i.alu(ptr noundef %i.alv, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !175
  br label %parser_lex_callback.exit2965

bb.ln:                                            ; preds = %bb.t
  %i.alw = icmp ult ptr %i.cj, %i.bu
  br i1 %i.alw, label %peek.exit.i2549, label %bb.lr

peek.exit.i2549:                                  ; preds = %bb.ln
  %i.alx = load i8, ptr %i.cj, align 1, !tbaa !67
  %i.aly = icmp eq i8 %i.alx, 62
  %.val2173.pre4611 = load i32, ptr %i.w, align 4, !tbaa !195 ; 2 uses
  br i1 %i.aly, label %bb.lo, label %peek.exit.i2559

bb.lo:                                            ; preds = %peek.exit.i2549
  %i.alz = getelementptr i8, ptr %.ph, i64 2      ; 3 uses
  store ptr %i.alz, ptr %i.d, align 8, !tbaa !76
  %i.ama = and i32 %.val2173.pre4611, 384
  %.not3566 = icmp eq i32 %i.ama, 0
  %.3594 = select i1 %.not3566, i32 1, i32 16
  store i32 %.3594, ptr %i.w, align 4, !tbaa !195
  %i.amb = icmp ult ptr %i.alz, %i.bu
  br i1 %i.amb, label %peek.exit.i2553, label %match.exit2554.thread

peek.exit.i2553:                                  ; preds = %bb.lo
  %i.amc = load i8, ptr %i.alz, align 1, !tbaa !67
  %i.amd = icmp eq i8 %i.amc, 61
  br i1 %i.amd, label %bb.lp, label %match.exit2554.thread

bb.lp:                                            ; preds = %peek.exit.i2553
  %i.ame = getelementptr i8, ptr %.ph, i64 3
  store ptr %i.ame, ptr %i.d, align 8, !tbaa !76
  br label %match.exit2554.thread

match.exit2554.thread:                            ; preds = %bb.lo, %peek.exit.i2553, %bb.lp
  %i.amf = phi i32 [ 63, %bb.lp ], [ 62, %peek.exit.i2553 ], [ 62, %bb.lo ]
  store i32 %i.amf, ptr %i.c, align 8, !tbaa !170
  %i.amg = load ptr, ptr %i.ab, align 8, !tbaa !171 ; 3 uses
  %.not.i2555 = icmp eq ptr %i.amg, null
  br i1 %.not.i2555, label %parser_lex_callback.exit2965, label %bb.lq

bb.lq:                                            ; preds = %match.exit2554.thread
  %i.amh = getelementptr i8, ptr %i.amg, i64 8
  %i.ami = load ptr, ptr %i.amh, align 8, !tbaa !172
  %i.amj = load ptr, ptr %i.amg, align 8, !tbaa !174
  call void %i.ami(ptr noundef %i.amj, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !175
  br label %parser_lex_callback.exit2965

bb.lr:                                            ; preds = %bb.ln
  %.val2173.pre = load i32, ptr %i.w, align 4, !tbaa !195
  %i.amk = and i32 %.val2173.pre, 384
  %.not = icmp eq i32 %i.amk, 0
  %.3595 = select i1 %.not, i32 1, i32 16
  store i32 %.3595, ptr %i.w, align 4, !tbaa !195
  br label %match.exit2560.thread

peek.exit.i2559:                                  ; preds = %peek.exit.i2549
  %i.aml = and i32 %.val2173.pre4611, 384
  %.not5107 = icmp eq i32 %i.aml, 0
  %.35955108 = select i1 %.not5107, i32 1, i32 16
  store i32 %.35955108, ptr %i.w, align 4, !tbaa !195
  %i.amm = load i8, ptr %i.cj, align 1, !tbaa !67
  %i.amn = icmp eq i8 %i.amm, 61
  br i1 %i.amn, label %bb.ls, label %match.exit2560.thread

bb.ls:                                            ; preds = %peek.exit.i2559
  %i.amo = getelementptr i8, ptr %.ph, i64 2
  store ptr %i.amo, ptr %i.d, align 8, !tbaa !76
  br label %match.exit2560.thread

match.exit2560.thread:                            ; preds = %bb.lr, %peek.exit.i2559, %bb.ls
  %i.amp = phi i32 [ 61, %bb.ls ], [ 60, %peek.exit.i2559 ], [ 60, %bb.lr ]
  store i32 %i.amp, ptr %i.c, align 8, !tbaa !170
  %i.amq = load ptr, ptr %i.ab, align 8, !tbaa !171 ; 3 uses
  %.not.i2561 = icmp eq ptr %i.amq, null
  br i1 %.not.i2561, label %parser_lex_callback.exit2965, label %bb.lt

bb.lt:                                            ; preds = %match.exit2560.thread
  %i.amr = getelementptr i8, ptr %i.amq, i64 8
  %i.ams = load ptr, ptr %i.amr, align 8, !tbaa !172
  %i.amt = load ptr, ptr %i.amq, align 8, !tbaa !174
  call void %i.ams(ptr noundef %i.amt, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !175
  br label %parser_lex_callback.exit2965

bb.lu:                                            ; preds = %bb.t
  %.val2148 = load i32, ptr %i.w, align 4, !tbaa !195 ; 2 uses
  %i.amu = and i32 %.val2148, 1032
  %.not3564 = icmp eq i32 %i.amu, 0
  %or.cond21 = select i1 %.not3564, i1 true, i1 %i.k
  %i.amv = and i32 %.val2148, 48
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
  br i1 %i.ane, label %bb.lv, label %bb.lx

bb.lv:                                            ; preds = %bb.lu
  %i.anf = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28 ; 13 uses
  store ptr %i.anf, ptr %i.o, align 8, !tbaa !91
  %i.ang = icmp eq ptr %i.anf, null
  br i1 %i.ang, label %lex_mode_push_string.exit, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  store i32 6, ptr %i.anf, align 8
  %.sroa.63178.0..sroa_idx3179 = getelementptr inbounds nuw i8, ptr %i.anf, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.63178.0..sroa_idx3179, i8 0, i64 12, i1 false)
  %.sroa.63180.0..sroa_idx3181 = getelementptr inbounds nuw i8, ptr %i.anf, i64 16
  store i8 1, ptr %.sroa.63180.0..sroa_idx3181, align 8
  %.sroa.73183.0..sroa_idx3184 = getelementptr inbounds nuw i8, ptr %i.anf, i64 17
  store i8 %i.amy, ptr %.sroa.73183.0..sroa_idx3184, align 1
  %.sroa.83186.0..sroa_idx3187 = getelementptr inbounds nuw i8, ptr %i.anf, i64 18
  store i8 0, ptr %.sroa.83186.0..sroa_idx3187, align 2
  %.sroa.93189.0..sroa_idx3190 = getelementptr inbounds nuw i8, ptr %i.anf, i64 19
  store i8 34, ptr %.sroa.93189.0..sroa_idx3190, align 1
  %.sroa.103192.0..sroa_idx3193 = getelementptr inbounds nuw i8, ptr %i.anf, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %.sroa.103192.0..sroa_idx3193, ptr noundef nonnull align 1 dereferenceable(3) @.str.56, i64 3, i1 false)
  %.sroa.113194.0..sroa_idx3195 = getelementptr inbounds nuw i8, ptr %i.anf, i64 23
  store i8 34, ptr %.sroa.113194.0..sroa_idx3195, align 1
  %.sroa.123197.0..sroa_idx3198 = getelementptr inbounds nuw i8, ptr %i.anf, i64 24
  store i8 35, ptr %.sroa.123197.0..sroa_idx3198, align 8
  %.sroa.133200.0..sroa_idx3201 = getelementptr inbounds nuw i8, ptr %i.anf, i64 25
  %.sroa.5.0..sroa_idx18.i = getelementptr inbounds nuw i8, ptr %i.anf, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.133200.0..sroa_idx3201, i8 0, i64 31, i1 false)
  store ptr %i.ana, ptr %.sroa.5.0..sroa_idx18.i, align 8, !tbaa !11
  br label %lex_mode_push_string.exit

bb.lx:                                            ; preds = %bb.lu
  %i.anh = getelementptr i8, ptr %0, i64 40       ; 2 uses
  %i.ani = getelementptr [64 x i8], ptr %i.anh, i64 %i.and ; 11 uses
  store i32 6, ptr %i.ani, align 8
  %.sroa.63178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ani, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.63178.0..sroa_idx, i8 0, i64 12, i1 false)
  %.sroa.63180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ani, i64 16
  store i8 1, ptr %.sroa.63180.0..sroa_idx, align 8
  %.sroa.73183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ani, i64 17
  store i8 %i.amy, ptr %.sroa.73183.0..sroa_idx, align 1
  %.sroa.83186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ani, i64 18
  store i8 0, ptr %.sroa.83186.0..sroa_idx, align 2
  %.sroa.93189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ani, i64 19
  store i8 34, ptr %.sroa.93189.0..sroa_idx, align 1
  %.sroa.103192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ani, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %.sroa.103192.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) @.str.56, i64 3, i1 false)
  %.sroa.113194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ani, i64 23
  store i8 34, ptr %.sroa.113194.0..sroa_idx, align 1
  %.sroa.123197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ani, i64 24
  store i8 35, ptr %.sroa.123197.0..sroa_idx, align 8
  %.sroa.133200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ani, i64 25
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ani, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.133200.0..sroa_idx, i8 0, i64 31, i1 false)
  store ptr %i.ana, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !11
  %i.anj = load i64, ptr %i.anb, align 8, !tbaa !90
  %i.ank = getelementptr [64 x i8], ptr %i.anh, i64 %i.anj
  store ptr %i.ank, ptr %i.o, align 8, !tbaa !91
  br label %lex_mode_push_string.exit

lex_mode_push_string.exit:                        ; preds = %bb.lv, %bb.lw, %bb.lx
  store i32 147, ptr %i.c, align 8, !tbaa !170
  %i.anl = load ptr, ptr %i.ab, align 8, !tbaa !171 ; 3 uses
  %.not.i2566 = icmp eq ptr %i.anl, null
  br i1 %.not.i2566, label %parser_lex_callback.exit2965, label %bb.ly

bb.ly:                                            ; preds = %lex_mode_push_string.exit
  %i.anm = getelementptr i8, ptr %i.anl, i64 8
  %i.ann = load ptr, ptr %i.anm, align 8, !tbaa !172
  %i.ano = load ptr, ptr %i.anl, align 8, !tbaa !174
  call void %i.ann(ptr noundef %i.ano, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !175
  br label %parser_lex_callback.exit2965

bb.lz:                                            ; preds = %bb.t
  %.val2147 = load i32, ptr %i.w, align 4, !tbaa !195 ; 2 uses
  %i.anp = and i32 %.val2147, 128
  %.not3561 = icmp eq i32 %i.anp, 0
  br i1 %.not3561, label %bb.mc, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  store i32 8, ptr %i.w, align 4, !tbaa !195
  store i32 23, ptr %i.c, align 8, !tbaa !170
  %i.anq = load ptr, ptr %i.ab, align 8, !tbaa !171 ; 3 uses
  %.not.i2568 = icmp eq ptr %i.anq, null
  br i1 %.not.i2568, label %parser_lex_callback.exit2965, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  %i.anr = getelementptr i8, ptr %i.anq, i64 8
  %i.ans = load ptr, ptr %i.anr, align 8, !tbaa !172
  %i.ant = load ptr, ptr %i.anq, align 8, !tbaa !174
  call void %i.ans(ptr noundef %i.ant, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !175
  br label %parser_lex_callback.exit2965

bb.mc:                                            ; preds = %bb.lz
  %i.anu = and i32 %.val2147, 256
  %.not3562 = icmp eq i32 %i.anu, 0
  br i1 %.not3562, label %bb.mf, label %bb.md

bb.md:                                            ; preds = %bb.mc
  %.3596 = select i1 %i.k, i32 32, i32 16
  store i32 %.3596, ptr %i.w, align 4, !tbaa !195
  store i32 23, ptr %i.c, align 8, !tbaa !170
  %i.anv = load ptr, ptr %i.ab, align 8, !tbaa !171 ; 3 uses
  %.not.i2570 = icmp eq ptr %i.anv, null
  br i1 %.not.i2570, label %parser_lex_callback.exit2965, label %bb.me

bb.me:                                            ; preds = %bb.md
  %i.anw = getelementptr i8, ptr %i.anv, i64 8
  %i.anx = load ptr, ptr %i.anw, align 8, !tbaa !172
  %i.any = load ptr, ptr %i.anv, align 8, !tbaa !174
  call void %i.anx(ptr noundef %i.any, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !175
  br label %parser_lex_callback.exit2965

bb.mf:                                            ; preds = %bb.mc
  %i.anz = getelementptr i8, ptr %0, i64 672
  store ptr null, ptr %i.anz, align 8, !tbaa !207
  %i.aoa = load ptr, ptr %i.o, align 8, !tbaa !91 ; 2 uses
  %i.aob = getelementptr i8, ptr %0, i64 296      ; 3 uses
  %i.aoc = load i64, ptr %i.aob, align 8, !tbaa !90
  %i.aod = add i64 %i.aoc, 1                      ; 3 uses
  store i64 %i.aod, ptr %i.aob, align 8, !tbaa !90
  %i.aoe = icmp ugt i64 %i.aod, 3
  br i1 %i.aoe, label %bb.mg, label %bb.mi

bb.mg:                                            ; preds = %bb.mf
  %i.aof = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28 ; 10 uses
  store ptr %i.aof, ptr %i.o, align 8, !tbaa !91
  %i.aog = icmp eq ptr %i.aof, null
  br i1 %i.aog, label %lex_mode_push_string.exit2577, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  store i32 6, ptr %i.aof, align 8
  %.sroa.63211.0..sroa_idx3212 = getelementptr inbounds nuw i8, ptr %i.aof, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.63211.0..sroa_idx3212, i8 0, i64 12, i1 false)
  %.sroa.63213.0..sroa_idx3214 = getelementptr inbounds nuw i8, ptr %i.aof, i64 16
  store <4 x i8> <i8 1, i8 0, i8 0, i8 96>, ptr %.sroa.63213.0..sroa_idx3214, align 8
  %.sroa.103225.0..sroa_idx3226 = getelementptr inbounds nuw i8, ptr %i.aof, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %.sroa.103225.0..sroa_idx3226, ptr noundef nonnull align 1 dereferenceable(3) @.str.56, i64 3, i1 false)
  %.sroa.113227.0..sroa_idx3228 = getelementptr inbounds nuw i8, ptr %i.aof, i64 23
  store i8 96, ptr %.sroa.113227.0..sroa_idx3228, align 1
  %.sroa.123230.0..sroa_idx3231 = getelementptr inbounds nuw i8, ptr %i.aof, i64 24
  store i8 35, ptr %.sroa.123230.0..sroa_idx3231, align 8
  %.sroa.133233.0..sroa_idx3234 = getelementptr inbounds nuw i8, ptr %i.aof, i64 25
  %.sroa.5.0..sroa_idx18.i2576 = getelementptr inbounds nuw i8, ptr %i.aof, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.133233.0..sroa_idx3234, i8 0, i64 31, i1 false)
  store ptr %i.aoa, ptr %.sroa.5.0..sroa_idx18.i2576, align 8, !tbaa !11
  br label %lex_mode_push_string.exit2577

bb.mi:                                            ; preds = %bb.mf
  %i.aoh = getelementptr i8, ptr %0, i64 40       ; 2 uses
  %i.aoi = getelementptr [64 x i8], ptr %i.aoh, i64 %i.aod ; 8 uses
  store i32 6, ptr %i.aoi, align 8
  %.sroa.63211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aoi, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.63211.0..sroa_idx, i8 0, i64 12, i1 false)
  %.sroa.63213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aoi, i64 16
  store <4 x i8> <i8 1, i8 0, i8 0, i8 96>, ptr %.sroa.63213.0..sroa_idx, align 8
  %.sroa.103225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aoi, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %.sroa.103225.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) @.str.56, i64 3, i1 false)
  %.sroa.113227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aoi, i64 23
  store i8 96, ptr %.sroa.113227.0..sroa_idx, align 1
  %.sroa.123230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aoi, i64 24
  store i8 35, ptr %.sroa.123230.0..sroa_idx, align 8
  %.sroa.133233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aoi, i64 25
  %.sroa.5.0..sroa_idx.i2574 = getelementptr inbounds nuw i8, ptr %i.aoi, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.133233.0..sroa_idx, i8 0, i64 31, i1 false)
  store ptr %i.aoa, ptr %.sroa.5.0..sroa_idx.i2574, align 8, !tbaa !11
  %i.aoj = load i64, ptr %i.aob, align 8, !tbaa !90
  %i.aok = getelementptr [64 x i8], ptr %i.aoh, i64 %i.aoj
  store ptr %i.aok, ptr %i.o, align 8, !tbaa !91
  br label %lex_mode_push_string.exit2577

lex_mode_push_string.exit2577:                    ; preds = %bb.mg, %bb.mh, %bb.mi
  store i32 23, ptr %i.c, align 8, !tbaa !170
  %i.aol = load ptr, ptr %i.ab, align 8, !tbaa !171 ; 3 uses
  %.not.i2578 = icmp eq ptr %i.aol, null
  br i1 %.not.i2578, label %parser_lex_callback.exit2965, label %bb.mj

bb.mj:                                            ; preds = %lex_mode_push_string.exit2577
  %i.aom = getelementptr i8, ptr %i.aol, i64 8
  %i.aon = load ptr, ptr %i.aom, align 8, !tbaa !172
  %i.aoo = load ptr, ptr %i.aol, align 8, !tbaa !174
  call void %i.aon(ptr noundef %i.aoo, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !175
  br label %parser_lex_callback.exit2965

bb.mk:                                            ; preds = %bb.t
  %.val2145 = load i32, ptr %i.w, align 4, !tbaa !195 ; 2 uses
  %i.aop = and i32 %.val2145, 1032
  %.not3560 = icmp eq i32 %i.aop, 0
  %or.cond24 = select i1 %.not3560, i1 true, i1 %i.k
  %i.aoq = and i32 %.val2145, 48
  %i.aor = icmp ne i32 %i.aoq, 0
  %not.or.cond24 = xor i1 %or.cond24, true
  %i.aos = select i1 %not.or.cond24, i1 true, i1 %i.aor
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.123263)
  %i.aot = zext i1 %i.aos to i8                   ; 2 uses
  %.sroa.123263.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.123263, i64 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %.sroa.123263.3..sroa_idx, i8 0, i64 37, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %.sroa.123263, ptr noundef nonnull align 1 dereferenceable(3) getelementptr inbounds nuw (i8, ptr @.str.56, i64 4), i64 3, i1 false)
  %i.aou = getelementptr i8, ptr %0, i64 672
  store ptr null, ptr %i.aou, align 8, !tbaa !207
  %i.aov = load ptr, ptr %i.o, align 8, !tbaa !91 ; 2 uses
  %i.aow = getelementptr i8, ptr %0, i64 296      ; 3 uses
  %i.aox = load i64, ptr %i.aow, align 8, !tbaa !90
  %i.aoy = add i64 %i.aox, 1                      ; 3 uses
  store i64 %i.aoy, ptr %i.aow, align 8, !tbaa !90
  %i.aoz = icmp ugt i64 %i.aoy, 3
  br i1 %i.aoz, label %bb.ml, label %bb.mn

bb.ml:                                            ; preds = %bb.mk
  %i.apa = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28 ; 11 uses
  store ptr %i.apa, ptr %i.o, align 8, !tbaa !91
  %i.apb = icmp eq ptr %i.apa, null
  br i1 %i.apb, label %lex_mode_push_string.exit2585, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  store i32 6, ptr %i.apa, align 8
  %.sroa.63244.0..sroa_idx3245 = getelementptr inbounds nuw i8, ptr %i.apa, i64 4
  %.sroa.73249.0..sroa_idx3250 = getelementptr inbounds nuw i8, ptr %i.apa, i64 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.63244.0..sroa_idx3245, i8 0, i64 13, i1 false)
  store i8 %i.aot, ptr %.sroa.73249.0..sroa_idx3250, align 1
  %.sroa.83252.0..sroa_idx3253 = getelementptr inbounds nuw i8, ptr %i.apa, i64 18
  store i8 0, ptr %.sroa.83252.0..sroa_idx3253, align 2
  %.sroa.93255.0..sroa_idx3256 = getelementptr inbounds nuw i8, ptr %i.apa, i64 19
  store i8 39, ptr %.sroa.93255.0..sroa_idx3256, align 1
  %.sroa.103258.0..sroa_idx3259 = getelementptr inbounds nuw i8, ptr %i.apa, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %.sroa.103258.0..sroa_idx3259, ptr noundef nonnull align 1 dereferenceable(3) @.str.56, i64 3, i1 false)
  %.sroa.113260.0..sroa_idx3261 = getelementptr inbounds nuw i8, ptr %i.apa, i64 23
  store i8 39, ptr %.sroa.113260.0..sroa_idx3261, align 1
  %.sroa.123263.0..sroa_idx3264 = getelementptr inbounds nuw i8, ptr %i.apa, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.123263.0..sroa_idx3264, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.123263, i64 32, i1 false)
  %.sroa.5.0..sroa_idx18.i2584 = getelementptr inbounds nuw i8, ptr %i.apa, i64 56
  store ptr %i.aov, ptr %.sroa.5.0..sroa_idx18.i2584, align 8, !tbaa !11
  br label %lex_mode_push_string.exit2585

bb.mn:                                            ; preds = %bb.mk
  %i.apc = getelementptr i8, ptr %0, i64 40       ; 2 uses
  %i.apd = getelementptr [64 x i8], ptr %i.apc, i64 %i.aoy ; 9 uses
  store i32 6, ptr %i.apd, align 8
  %.sroa.63244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.apd, i64 4
  %.sroa.73249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.apd, i64 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.63244.0..sroa_idx, i8 0, i64 13, i1 false)
  store i8 %i.aot, ptr %.sroa.73249.0..sroa_idx, align 1
  %.sroa.83252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.apd, i64 18
  store i8 0, ptr %.sroa.83252.0..sroa_idx, align 2
  %.sroa.93255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.apd, i64 19
  store i8 39, ptr %.sroa.93255.0..sroa_idx, align 1
  %.sroa.103258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.apd, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %.sroa.103258.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) @.str.56, i64 3, i1 false)
  %.sroa.113260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.apd, i64 23
  store i8 39, ptr %.sroa.113260.0..sroa_idx, align 1
  %.sroa.123263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.apd, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.123263.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.123263, i64 32, i1 false)
  %.sroa.5.0..sroa_idx.i2582 = getelementptr inbounds nuw i8, ptr %i.apd, i64 56
  store ptr %i.aov, ptr %.sroa.5.0..sroa_idx.i2582, align 8, !tbaa !11
  %i.ape = load i64, ptr %i.aow, align 8, !tbaa !90
  %i.apf = getelementptr [64 x i8], ptr %i.apc, i64 %i.ape
  store ptr %i.apf, ptr %i.o, align 8, !tbaa !91
  br label %lex_mode_push_string.exit2585

lex_mode_push_string.exit2585:                    ; preds = %bb.ml, %bb.mm, %bb.mn
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.123263)
  store i32 147, ptr %i.c, align 8, !tbaa !170
  %i.apg = load ptr, ptr %i.ab, align 8, !tbaa !171 ; 3 uses
  %.not.i2586 = icmp eq ptr %i.apg, null
  br i1 %.not.i2586, label %parser_lex_callback.exit2965, label %bb.mo

bb.mo:                                            ; preds = %lex_mode_push_string.exit2585
  %i.aph = getelementptr i8, ptr %i.apg, i64 8
  %i.api = load ptr, ptr %i.aph, align 8, !tbaa !172
  %i.apj = load ptr, ptr %i.apg, align 8, !tbaa !174
  call void %i.api(ptr noundef %i.apj, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !175
  br label %parser_lex_callback.exit2965

bb.mp:                                            ; preds = %bb.t
  %.val48.i = load i32, ptr %i.w, align 4, !tbaa !195
  %i.apk = and i32 %.val48.i, 14
  %.not57.i = icmp eq i32 %i.apk, 0
  br i1 %.not57.i, label %bb.mr, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  store i32 1, ptr %i.w, align 4, !tbaa !195
  br label %lex_question_mark.exit

bb.mr:                                            ; preds = %bb.mp
  %.not.i2589 = icmp ult ptr %i.cj, %i.bu
  br i1 %.not.i2589, label %bb.mt, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  %i.apl = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.y, ptr noundef nonnull %.ph, ptr noundef %i.cj, i32 noundef 139) #27 ; 0 uses
  %i.apm = getelementptr i8, ptr %0, i64 640
  %i.apn = load ptr, ptr %i.v, align 8, !tbaa !166
  %i.apo = getelementptr i8, ptr %i.apn, i64 1
  %i.app = load ptr, ptr %i.d, align 8, !tbaa !76
  call void @pm_string_shared_init(ptr noundef %i.apm, ptr noundef %i.apo, ptr noundef %i.app) #27
  br label %lex_question_mark.exit

bb.mt:                                            ; preds = %bb.mr
  %i.apq = load i8, ptr %i.cj, align 1, !tbaa !67
  %i.apr = call zeroext i1 @pm_char_is_whitespace(i8 noundef zeroext %i.apq) #27
  store i32 1, ptr %i.w, align 4, !tbaa !195
  br i1 %i.apr, label %lex_question_mark.exit, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  %.val.i.i = load ptr, ptr %i.f, align 8, !tbaa !78 ; 2 uses
  %.val3.i.i = load ptr, ptr %i.d, align 8, !tbaa !76 ; 5 uses
  %i.aps = icmp ult ptr %.val3.i.i, %.val.i.i
  br i1 %i.aps, label %peek.exit.i.i, label %bb.mw

peek.exit.i.i:                                    ; preds = %bb.mu
  %i.apt = load i8, ptr %.val3.i.i, align 1, !tbaa !67
  %i.apu = icmp eq i8 %i.apt, 92
  br i1 %i.apu, label %bb.mv, label %bb.mw

bb.mv:                                            ; preds = %peek.exit.i.i
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

bb.mw:                                            ; preds = %peek.exit.i.i, %bb.mu
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
  %.pre.i2590 = load ptr, ptr %i.d, align 8, !tbaa !76 ; 3 uses
  %.pre58.i = load ptr, ptr %i.f, align 8, !tbaa !78 ; 3 uses
  br i1 %.not44.i, label %bb.mx, label %bb.my

bb.mx:                                            ; preds = %bb.mw
  %i.aqq = icmp ult ptr %.pre.i2590, %.pre58.i
  br i1 %i.aqq, label %peek.exit.i2592, label %peek.exit.thread.i

peek.exit.i2592:                                  ; preds = %bb.mx
  %i.aqr = load i8, ptr %.pre.i2590, align 1, !tbaa !67
  %i.aqs = icmp eq i8 %i.aqr, 95
  br i1 %i.aqs, label %bb.my, label %peek.exit.thread.i

bb.my:                                            ; preds = %peek.exit.i2592, %bb.mw
  %i.aqt = getelementptr i8, ptr %.pre.i2590, i64 %i.aqg ; 7 uses
  %.not45.i = icmp ult ptr %i.aqt, %.pre58.i
  br i1 %.not45.i, label %bb.mz, label %peek.exit.thread.i

bb.mz:                                            ; preds = %bb.my
  %i.aqu = ptrtoint ptr %.pre58.i to i64
  %i.aqv = ptrtoint ptr %i.aqt to i64
  %i.aqw = sub i64 %i.aqu, %i.aqv                 ; 4 uses
  %i.aqx = icmp slt i64 %i.aqw, 1
  br i1 %i.aqx, label %peek.exit.thread.i, label %bb.na

bb.na:                                            ; preds = %bb.mz
  %i.aqy = load i8, ptr %i.ac, align 1, !tbaa !43, !range !45, !noundef !46
  %i.aqz = trunc nuw i8 %i.aqy to i1
  br i1 %i.aqz, label %bb.nb, label %bb.nf

bb.nb:                                            ; preds = %bb.na
  %i.ara = load ptr, ptr %i.x, align 8, !tbaa !40
  %i.arb = getelementptr i8, ptr %i.ara, i64 16
  %i.arc = load ptr, ptr %i.arb, align 8, !tbaa !153
  %i.ard = call i64 %i.arc(ptr noundef %i.aqt, i64 noundef %i.aqw) #27, !inline_history !212
  %.not.i.i2591 = icmp eq i64 %i.ard, 0
  br i1 %.not.i.i2591, label %bb.nc, label %lex_question_mark.exit

bb.nc:                                            ; preds = %bb.nb
  %i.are = load i8, ptr %i.aqt, align 1, !tbaa !67 ; 2 uses
  %i.arf = icmp eq i8 %i.are, 95
  br i1 %i.arf, label %lex_question_mark.exit, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
end_hunk_0
