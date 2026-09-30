Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/pcre2_compile?download=true
inline.NumInlined: 21
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 20
begin_hunk_0_@parse_regex:bb.a
  %.23873 = phi ptr [ %i.akm, %bb.io ], [ %i.akn, %bb.ip ], [ %i.ala, %bb.ir ] ; 3 uses
  %i.ald = load ptr, ptr %i.a, align 8, !tbaa !27 ; 3 uses
  %i.ale = icmp ult ptr %i.ald, %i.hg
  br i1 %i.ale, label %bb.iu, label %.thread1277

bb.iu:                                            ; preds = %bb.it
  %i.alf = load i8, ptr %i.ald, align 1, !tbaa !29
  %i.alg = icmp eq i8 %i.alf, 45
  br i1 %i.alg, label %bb.iv, label %.thread1277

bb.iv:                                            ; preds = %bb.iu
  %i.alh = getelementptr inbounds nuw i8, ptr %i.ald, i64 1
  %i.ali = load i8, ptr %i.alh, align 1, !tbaa !29
  %.not1142 = icmp eq i8 %i.ali, 93
  br i1 %.not1142, label %.thread1277, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  store i32 150, ptr %i.e, align 4, !tbaa !28
  br label %.thread1299.thread

.thread1277:                                      ; preds = %bb.gn, %bb.gn, %bb.hf, %bb.hd, %bb.hg, %bb.hl, %bb.hq, %bb.hr, %bb.iv, %bb.iu, %bb.it, %bb.hi, %bb.ig, %bb.ii, %bb.gl
  %.2898 = phi i32 [ %.0896, %bb.gl ], [ %.0896, %bb.gn ], [ %.not1152, %bb.hr ], [ %.0896, %bb.gn ], [ 0, %bb.hl ], [ 0, %bb.hq ], [ 1, %bb.hi ], [ 0, %bb.iv ], [ 0, %bb.iu ], [ 0, %bb.it ], [ %.0896, %bb.ii ], [ %.0896, %bb.ig ], [ 0, %bb.hg ], [ 0, %bb.hd ], [ 0, %bb.hf ] ; 2 uses
  %.24 = phi ptr [ %.17867, %bb.gl ], [ %.17867, %bb.gn ], [ %i.agx, %bb.hr ], [ %.17867, %bb.gn ], [ %i.agq, %bb.hl ], [ %i.agw, %bb.hq ], [ %i.agk, %bb.hi ], [ %.23873, %bb.iv ], [ %.23873, %bb.iu ], [ %.23873, %bb.it ], [ %.17867, %bb.ii ], [ %.17867, %bb.ig ], [ %i.agf, %bb.hg ], [ %i.aga, %bb.hd ], [ %i.agc, %bb.hf ] ; 4 uses
  %.5784 = phi i32 [ 0, %bb.gl ], [ 0, %bb.gn ], [ %.4783, %bb.hr ], [ 0, %bb.gn ], [ %.4783, %bb.hl ], [ %.4783, %bb.hq ], [ 0, %bb.hi ], [ 0, %bb.iv ], [ 0, %bb.iu ], [ 0, %bb.it ], [ 1, %bb.ii ], [ 0, %bb.ig ], [ 0, %bb.hg ], [ 0, %bb.hd ], [ 0, %bb.hf ] ; 2 uses
  %i.alj = load ptr, ptr %i.a, align 8, !tbaa !27 ; 14 uses
  %.not1154 = icmp ult ptr %i.alj, %i.ah
  br i1 %.not1154, label %bb.iy, label %bb.ix

bb.ix:                                            ; preds = %.thread1277
  store i32 106, ptr %i.e, align 4, !tbaa !28
  br label %.thread1299.thread

bb.iy:                                            ; preds = %.thread1277
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alj, i64 1 ; 3 uses
  store ptr %i.alk, ptr %i.a, align 8, !tbaa !27
  %i.all = load i8, ptr %i.alj, align 1, !tbaa !29 ; 2 uses
  %i.alm = zext i8 %i.all to i32                  ; 11 uses
  store i32 %i.alm, ptr %i.b, align 4, !tbaa !28
  %i.aln = icmp ugt i8 %i.all, -65
  %or.cond44 = select i1 %i.ae, i1 %i.aln, i1 false
  br i1 %or.cond44, label %bb.iz, label %bb.ji

bb.iz:                                            ; preds = %bb.iy
  %i.alo = and i32 %i.alm, 32
  %i.alp = icmp eq i32 %i.alo, 0
  br i1 %i.alp, label %bb.ja, label %bb.jb

bb.ja:                                            ; preds = %bb.iz
  %i.alq = shl nuw nsw i32 %i.alm, 6
  %i.alr = and i32 %i.alq, 1984
  %i.als = getelementptr inbounds nuw i8, ptr %i.alj, i64 2
  store ptr %i.als, ptr %i.a, align 8, !tbaa !27
  %i.alt = load i8, ptr %i.alk, align 1, !tbaa !29
  %i.alu = and i8 %i.alt, 63
  %i.alv = zext nneg i8 %i.alu to i32
  %i.alw = or disjoint i32 %i.alr, %i.alv         ; 2 uses
  store i32 %i.alw, ptr %i.b, align 4, !tbaa !28
  br label %bb.ji

bb.jb:                                            ; preds = %bb.iz
  %i.alx = and i32 %i.alm, 16
  %i.aly = icmp eq i32 %i.alx, 0
  %i.alz = load i8, ptr %i.alk, align 1, !tbaa !29
  %i.ama = and i8 %i.alz, 63
  %i.amb = zext nneg i8 %i.ama to i32             ; 4 uses
  br i1 %i.aly, label %bb.jc, label %bb.jd

bb.jc:                                            ; preds = %bb.jb
  %i.amc = shl nuw nsw i32 %i.alm, 12
  %i.amd = and i32 %i.amc, 61440
  %i.ame = shl nuw nsw i32 %i.amb, 6
  %i.amf = or disjoint i32 %i.ame, %i.amd
  %i.amg = getelementptr inbounds nuw i8, ptr %i.alj, i64 2
  %i.amh = load i8, ptr %i.amg, align 1, !tbaa !29
  %i.ami = and i8 %i.amh, 63
  %i.amj = zext nneg i8 %i.ami to i32
  %i.amk = or disjoint i32 %i.amf, %i.amj         ; 2 uses
  store i32 %i.amk, ptr %i.b, align 4, !tbaa !28
  %i.aml = getelementptr inbounds nuw i8, ptr %i.alj, i64 3
  store ptr %i.aml, ptr %i.a, align 8, !tbaa !27
  br label %bb.ji

bb.jd:                                            ; preds = %bb.jb
  %i.amm = and i32 %i.alm, 8
  %i.amn = icmp eq i32 %i.amm, 0
  br i1 %i.amn, label %bb.je, label %bb.jf

bb.je:                                            ; preds = %bb.jd
  %i.amo = shl nuw nsw i32 %i.alm, 18
  %i.amp = and i32 %i.amo, 1835008
  %i.amq = shl nuw nsw i32 %i.amb, 12
  %i.amr = or disjoint i32 %i.amq, %i.amp
  %i.ams = getelementptr inbounds nuw i8, ptr %i.alj, i64 2
  %i.amt = load i8, ptr %i.ams, align 1, !tbaa !29
  %i.amu = and i8 %i.amt, 63
  %i.amv = zext nneg i8 %i.amu to i32
  %i.amw = shl nuw nsw i32 %i.amv, 6
  %i.amx = or disjoint i32 %i.amr, %i.amw
  %i.amy = getelementptr inbounds nuw i8, ptr %i.alj, i64 3
  %i.amz = load i8, ptr %i.amy, align 1, !tbaa !29
  %i.ana = and i8 %i.amz, 63
  %i.anb = zext nneg i8 %i.ana to i32
  %i.anc = or disjoint i32 %i.amx, %i.anb         ; 2 uses
  store i32 %i.anc, ptr %i.b, align 4, !tbaa !28
  %i.and = getelementptr inbounds nuw i8, ptr %i.alj, i64 4
  store ptr %i.and, ptr %i.a, align 8, !tbaa !27
  br label %bb.ji

bb.jf:                                            ; preds = %bb.jd
  %i.ane = and i32 %i.alm, 4
  %i.anf = icmp eq i32 %i.ane, 0
  %i.ang = getelementptr inbounds nuw i8, ptr %i.alj, i64 2
  %i.anh = load i8, ptr %i.ang, align 1, !tbaa !29
  %i.ani = and i8 %i.anh, 63
  %i.anj = zext nneg i8 %i.ani to i32             ; 2 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %i.alj, i64 3
  %i.anl = load i8, ptr %i.ank, align 1, !tbaa !29
  %i.anm = and i8 %i.anl, 63
  %i.ann = zext nneg i8 %i.anm to i32             ; 2 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %i.alj, i64 4
  %i.anp = load i8, ptr %i.ano, align 1, !tbaa !29
  %i.anq = and i8 %i.anp, 63
  %i.anr = zext nneg i8 %i.anq to i32             ; 2 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %i.alj, i64 5 ; 2 uses
  br i1 %i.anf, label %bb.jg, label %bb.jh

bb.jg:                                            ; preds = %bb.jf
  %i.ant = shl nuw i32 %i.alm, 24
  %i.anu = and i32 %i.ant, 50331648
  %i.anv = shl nuw nsw i32 %i.amb, 18
  %i.anw = or disjoint i32 %i.anv, %i.anu
  %i.anx = shl nuw nsw i32 %i.anj, 12
  %i.any = or disjoint i32 %i.anw, %i.anx
  %i.anz = shl nuw nsw i32 %i.ann, 6
  %i.aoa = or disjoint i32 %i.any, %i.anz
  %i.aob = or disjoint i32 %i.aoa, %i.anr         ; 2 uses
  store i32 %i.aob, ptr %i.b, align 4, !tbaa !28
  store ptr %i.ans, ptr %i.a, align 8, !tbaa !27
  br label %bb.ji

bb.jh:                                            ; preds = %bb.jf
  %i.aoc = shl i32 %i.alm, 30
  %i.aod = and i32 %i.aoc, 1073741824
  %i.aoe = shl nuw nsw i32 %i.amb, 24
  %i.aof = or disjoint i32 %i.aoe, %i.aod
  %i.aog = shl nuw nsw i32 %i.anj, 18
  %i.aoh = or disjoint i32 %i.aof, %i.aog
  %i.aoi = shl nuw nsw i32 %i.ann, 12
  %i.aoj = or disjoint i32 %i.aoh, %i.aoi
  %i.aok = shl nuw nsw i32 %i.anr, 6
  %i.aol = or disjoint i32 %i.aoj, %i.aok
  %i.aom = load i8, ptr %i.ans, align 1, !tbaa !29
  %i.aon = and i8 %i.aom, 63
  %i.aoo = zext nneg i8 %i.aon to i32
  %i.aop = or disjoint i32 %i.aol, %i.aoo         ; 2 uses
  store i32 %i.aop, ptr %i.b, align 4, !tbaa !28
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.alj, i64 6
  store ptr %i.aoq, ptr %i.a, align 8, !tbaa !27
  br label %bb.ji

bb.ji:                                            ; preds = %bb.ja, %bb.je, %bb.jh, %bb.jg, %bb.jc, %bb.iy
  %i.aor = phi i32 [ %i.alw, %bb.ja ], [ %i.anc, %bb.je ], [ %i.aop, %bb.jh ], [ %i.aob, %bb.jg ], [ %i.amk, %bb.jc ], [ %i.alm, %bb.iy ]
  %i.aos = icmp ne i32 %i.aor, 93
  %i.aot = icmp ne i32 %.5784, 0
  %or.cond46 = or i1 %i.aot, %i.aos
  br i1 %or.cond46, label %.thread1282, label %.thread1304

.thread1304:                                      ; preds = %bb.ji
  %i.aou = icmp eq i32 %.2898, 1
  br i1 %i.aou, label %bb.jj, label %bb.jk

bb.jj:                                            ; preds = %.thread1304
  %i.aov = getelementptr inbounds i8, ptr %.24, i64 -4
  store i32 45, ptr %i.aov, align 4, !tbaa !28
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %.thread1304
  %i.aow = getelementptr inbounds nuw i8, ptr %.24, i64 4
  store i32 -2146631680, ptr %.24, align 4, !tbaa !28
  br label %.thread1299

bb.jl:                                            ; preds = %bb.cv, %thread-pre-split1262
  %i.aox = load ptr, ptr %i.a, align 8, !tbaa !27 ; 15 uses
  %.not1060 = icmp ult ptr %i.aox, %i.ah
  br i1 %.not1060, label %bb.jm, label %.sink.split2580

bb.jm:                                            ; preds = %bb.jl
  %i.aoy = load i8, ptr %i.aox, align 1, !tbaa !29
  switch i8 %i.aoy, label %bb.jn [
    i8 63, label %bb.mc
    i8 42, label %bb.js
  ]

bb.jn:                                            ; preds = %bb.jm
  %i.aoz = add i16 %.08022060, 1                  ; 2 uses
  %i.apa = and i32 %.19032028.fr, 8192
  %i.apb = icmp eq i32 %i.apa, 0
  br i1 %i.apb, label %bb.jo, label %bb.jr

bb.jo:                                            ; preds = %bb.jn
  %i.apc = load i32, ptr %i.gy, align 4, !tbaa !37 ; 3 uses
  %i.apd = icmp ugt i32 %i.apc, 65534
  br i1 %i.apd, label %bb.jp, label %bb.jq

bb.jp:                                            ; preds = %bb.jo
  store i32 197, ptr %i.e, align 4, !tbaa !28
  br label %.thread1444

bb.jq:                                            ; preds = %bb.jo
  %i.ape = add nuw nsw i32 %i.apc, 1
  store i32 %i.ape, ptr %i.gy, align 4, !tbaa !37
  %4 = add nuw nsw i32 %i.apc, -2146959359
  %i.apf = getelementptr inbounds nuw i8, ptr %.9859, i64 4
  store i32 %4, ptr %.9859, align 4, !tbaa !28
  br label %bb.ma

bb.jr:                                            ; preds = %bb.jn
  %i.apg = getelementptr inbounds nuw i8, ptr %.9859, i64 4
  store i32 -2145779712, ptr %.9859, align 4, !tbaa !28
  br label %bb.ma

bb.js:                                            ; preds = %bb.jm
  %i.aph = ptrtoint ptr %i.aox to i64
  %i.api = sub i64 %i.gx, %i.aph
  %i.apj = icmp slt i64 %i.api, 2
  br i1 %i.apj, label %.thread1299, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.apk = getelementptr inbounds nuw i8, ptr %i.aox, i64 1
  %i.apl = load i8, ptr %i.apk, align 1, !tbaa !29 ; 3 uses
  %i.apm = zext i8 %i.apl to i32
  store i32 %i.apm, ptr %i.b, align 4, !tbaa !28
  %i.apn = icmp eq i8 %i.apl, 41
  br i1 %i.apn, label %.thread1299, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.apo = load ptr, ptr %i.gs, align 8, !tbaa !42
  %i.app = zext i8 %i.apl to i64
  %i.apq = getelementptr inbounds nuw i8, ptr %i.apo, i64 %i.app
  %i.apr = load i8, ptr %i.apq, align 1, !tbaa !29
  %i.aps = and i8 %i.apr, 4
  %.not1115 = icmp eq i8 %i.aps, 0
  %i.apt = call fastcc i32 @read_name(ptr noundef %i.a, ptr noundef nonnull %i.ah, i32 noundef %.lobit, i32 noundef 0, ptr noundef %i.o, ptr noundef %i.g, ptr noundef %i.c, ptr noundef %i.e, ptr noundef %3)
  %.not1116 = icmp eq i32 %i.apt, 0               ; 2 uses
  br i1 %.not1115, label %bb.kz, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  br i1 %.not1116, label %.thread1444, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.apu = load ptr, ptr %i.a, align 8, !tbaa !27 ; 2 uses
  %.not1125 = icmp ult ptr %i.apu, %i.ah
  br i1 %.not1125, label %bb.jx, label %bb.jy

bb.jx:                                            ; preds = %bb.jw
  %i.apv = load i8, ptr %i.apu, align 1, !tbaa !29
  %.not1126 = icmp eq i8 %i.apv, 58
  br i1 %.not1126, label %.preheader1635, label %bb.jy

.preheader1635:                                   ; preds = %bb.jx
  %i.apw = load i32, ptr %i.c, align 4, !tbaa !28 ; 2 uses
  %i.apx = load ptr, ptr %i.g, align 8            ; 17 uses
  %i.apy = zext i32 %i.apw to i64                 ; 17 uses
  switch i32 %i.apw, label %.thread2373 [
    i32 3, label %bb.jz
    i32 5, label %bb.kb
    i32 18, label %bb.kf
    i32 19, label %bb.kg
    i32 29, label %bb.kh
    i32 30, label %bb.ki
    i32 6, label %bb.kk
    i32 2, label %bb.kl
    i32 10, label %bb.km
    i32 17, label %bb.kn
  ]

bb.jy:                                            ; preds = %bb.jx, %bb.jw
  store i32 195, ptr %i.e, align 4, !tbaa !28
  br label %.thread1444

bb.jz:                                            ; preds = %.preheader1635
  %i.apz = call i32 @_pcre2_strncmp_c8_8(ptr noundef %i.apx, ptr noundef nonnull @alasnames, i64 noundef %i.apy) #17
  %i.aqa = icmp eq i32 %i.apz, 0
  br i1 %i.aqa, label %bb.ko, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.aqb = call i32 @_pcre2_strncmp_c8_8(ptr noundef %i.apx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @alasnames, i64 4), i64 noundef %i.apy) #17
  %i.aqc = icmp eq i32 %i.aqb, 0
  br i1 %i.aqc, label %bb.ko, label %bb.kd

bb.kb:                                            ; preds = %.preheader1635
  %i.aqd = call i32 @_pcre2_strncmp_c8_8(ptr noundef %i.apx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @alasnames, i64 8), i64 noundef %i.apy) #17
  %i.aqe = icmp eq i32 %i.aqd, 0
  br i1 %i.aqe, label %bb.ko, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.aqf = call i32 @_pcre2_strncmp_c8_8(ptr noundef %i.apx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @alasnames, i64 14), i64 noundef %i.apy) #17
  %i.aqg = icmp eq i32 %i.aqf, 0
  br i1 %i.aqg, label %bb.ko, label %.thread2373

bb.kd:                                            ; preds = %bb.ka
  %i.aqh = call i32 @_pcre2_strncmp_c8_8(ptr noundef %i.apx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @alasnames, i64 20), i64 noundef %i.apy) #17
  %i.aqi = icmp eq i32 %i.aqh, 0
  br i1 %i.aqi, label %bb.ko, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.aqj = call i32 @_pcre2_strncmp_c8_8(ptr noundef %i.apx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @alasnames, i64 24), i64 noundef %i.apy) #17
  %i.aqk = icmp eq i32 %i.aqj, 0
  br i1 %i.aqk, label %bb.ko, label %.split2357

bb.kf:                                            ; preds = %.preheader1635
  %i.aql = call i32 @_pcre2_strncmp_c8_8(ptr noundef %i.apx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @alasnames, i64 28), i64 noundef %i.apy) #17
  %i.aqm = icmp eq i32 %i.aql, 0
  br i1 %i.aqm, label %bb.ko, label %bb.kj

bb.kg:                                            ; preds = %.preheader1635
  %i.aqn = call i32 @_pcre2_strncmp_c8_8(ptr noundef %i.apx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @alasnames, i64 47), i64 noundef %i.apy) #17
  %i.aqo = icmp eq i32 %i.aqn, 0
  br i1 %i.aqo, label %bb.ko, label %.thread2356

bb.kh:                                            ; preds = %.preheader1635
  %i.aqp = call i32 @_pcre2_strncmp_c8_8(ptr noundef %i.apx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @alasnames, i64 67), i64 noundef %i.apy) #17
  %i.aqq = icmp eq i32 %i.aqp, 0
  br i1 %i.aqq, label %bb.ko, label %.thread2373

bb.ki:                                            ; preds = %.preheader1635
  %i.aqr = call i32 @_pcre2_strncmp_c8_8(ptr noundef %i.apx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @alasnames, i64 97), i64 noundef %i.apy) #17
  %i.aqs = icmp eq i32 %i.aqr, 0
  br i1 %i.aqs, label %bb.ko, label %.thread2373

bb.kj:                                            ; preds = %bb.kf
  %i.aqt = call i32 @_pcre2_strncmp_c8_8(ptr noundef %i.apx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @alasnames, i64 128), i64 noundef %i.apy) #17
  %i.aqu = icmp eq i32 %i.aqt, 0
  br i1 %i.aqu, label %bb.ko, label %.thread2373

.thread2356:                                      ; preds = %bb.kg
  %i.aqv = call i32 @_pcre2_strncmp_c8_8(ptr noundef %i.apx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @alasnames, i64 147), i64 noundef %i.apy) #17
  %i.aqw = icmp eq i32 %i.aqv, 0
  br i1 %i.aqw, label %bb.ko, label %.thread2373

bb.kk:                                            ; preds = %.preheader1635
  %i.aqx = call i32 @_pcre2_strncmp_c8_8(ptr noundef %i.apx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @alasnames, i64 167), i64 noundef %i.apy) #17
  %i.aqy = icmp eq i32 %i.aqx, 0
  br i1 %i.aqy, label %bb.ko, label %.thread2373

bb.kl:                                            ; preds = %.preheader1635
  %i.aqz = call i32 @_pcre2_strncmp_c8_8(ptr noundef %i.apx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @alasnames, i64 174), i64 noundef %i.apy) #17
  %i.ara = icmp eq i32 %i.aqz, 0
  br i1 %i.ara, label %bb.ko, label %.thread2373

.split2357:                                       ; preds = %bb.ke
  %i.arb = call i32 @_pcre2_strncmp_c8_8(ptr noundef %i.apx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @alasnames, i64 177), i64 noundef %i.apy) #17
  %i.arc = icmp eq i32 %i.arb, 0
  br i1 %i.arc, label %bb.ko, label %.thread2373

bb.km:                                            ; preds = %.preheader1635
  %i.ard = call i32 @_pcre2_strncmp_c8_8(ptr noundef %i.apx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @alasnames, i64 181), i64 noundef %i.apy) #17
  %i.are = icmp eq i32 %i.ard, 0
  br i1 %i.are, label %bb.ko, label %.thread2373

bb.kn:                                            ; preds = %.preheader1635
  %i.arf = call i32 @_pcre2_strncmp_c8_8(ptr noundef %i.apx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @alasnames, i64 192), i64 noundef %i.apy) #17
  %i.arg = icmp eq i32 %i.arf, 0
  br i1 %i.arg, label %bb.ko, label %.thread2373

.thread2373:                                      ; preds = %.preheader1635, %bb.kj, %bb.ki, %bb.kh, %bb.kk, %bb.kl, %.split2357, %bb.kc, %.thread2356, %bb.km, %bb.kn
  store i32 195, ptr %i.e, align 4, !tbaa !28
  br label %.thread1444

bb.ko:                                            ; preds = %bb.kn, %bb.km, %.split2357, %bb.kl, %bb.kk, %.thread2356, %bb.kj, %bb.ki, %bb.kh, %bb.kg, %bb.kf, %bb.ke, %bb.kd, %bb.kc, %bb.kb, %bb.ka, %bb.jz
  %i.arh = phi i32 [ 128, %bb.jz ], [ 128, %bb.ka ], [ 198, %bb.kb ], [ 198, %bb.kc ], [ 128, %bb.kd ], [ 128, %bb.ke ], [ 128, %bb.kf ], [ 128, %bb.kg ], [ 198, %bb.kh ], [ 198, %bb.ki ], [ 128, %bb.kj ], [ 128, %.thread2356 ], [ 128, %bb.kk ], [ 128, %bb.kl ], [ 128, %.split2357 ], [ 128, %bb.km ], [ 128, %bb.kn ]
  %storemerge11271935.lcssa.wide = phi i64 [ 0, %bb.jz ], [ 1, %bb.ka ], [ 2, %bb.kb ], [ 3, %bb.kc ], [ 4, %bb.kd ], [ 5, %bb.ke ], [ 6, %bb.kf ], [ 7, %bb.kg ], [ 8, %bb.kh ], [ 9, %bb.ki ], [ 10, %bb.kj ], [ 11, %.thread2356 ], [ 12, %bb.kk ], [ 13, %bb.kl ], [ 14, %.split2357 ], [ 15, %bb.km ], [ 16, %bb.kn ] ; 4 uses
  %i.ari = trunc nuw nsw i64 %storemerge11271935.lcssa.wide to i32 ; 2 uses
  store i32 %i.ari, ptr %i.f, align 4, !tbaa !28
  %i.arj = getelementptr inbounds nuw [8 x i8], ptr @alasmeta, i64 %storemerge11271935.lcssa.wide
  %i.ark = getelementptr inbounds nuw i8, ptr %i.arj, i64 4
  %i.arl = load i32, ptr %i.ark, align 4, !tbaa !162 ; 2 uses
  br i1 %i.pv, label %bb.kp, label %bb.kr

bb.kp:                                            ; preds = %bb.ko
  %i.arm = lshr i64 45056, %storemerge11271935.lcssa.wide
  %i.arn = trunc i64 %i.arm to i1
  %i.aro = lshr i64 82700, %storemerge11271935.lcssa.wide
  %i.arp = trunc i64 %i.aro to i1
  %or.cond48 = select i1 %i.arn, i1 true, i1 %i.arp
  br i1 %or.cond48, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  store i32 %i.arh, ptr %i.e, align 4, !tbaa !28
  br label %.thread1444

bb.kr:                                            ; preds = %bb.kp, %bb.ko
  switch i32 %i.arl, label %bb.ks [
    i32 -2147352576, label %..thread1352_crit_edge
    i32 -2145189888, label %..thread1357_crit_edge
    i32 -2144927744, label %..thread1362_crit_edge
    i32 -2145124352, label %..thread1367_crit_edge
    i32 -2145058816, label %bb.mb
    i32 -2144993280, label %bb.mb
    i32 -2144862208, label %bb.mb
    i32 -2145255424, label %bb.kt
    i32 -1879113728, label %bb.kt
  ]

..thread1352_crit_edge:                           ; preds = %bb.kr
  %.pre2177 = load ptr, ptr %i.a, align 8, !tbaa !27
  br label %.thread1352

..thread1357_crit_edge:                           ; preds = %bb.kr
  %.pre2176 = load ptr, ptr %i.a, align 8, !tbaa !27
  br label %.thread1357

end_hunk_0
begin_hunk_1_@parse_regex:bb.a
  %indvars.iv = phi i64 [ 1, %.lr.ph1942 ], [ %indvars.iv.next, %bb.qt ] ; 3 uses
  %i.bgy = getelementptr inbounds nuw i8, ptr %.pre2180.pre, i64 %indvars.iv
  %i.bgz = load i8, ptr %i.bgy, align 1, !tbaa !29
  %i.bha = add i8 %i.bgz, -48
  %or.cond1209 = icmp ult i8 %i.bha, 10
  br i1 %or.cond1209, label %bb.qt, label %.split1440.loopexit.split.loop.exit2562

bb.qt:                                            ; preds = %bb.qs
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond2161.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond2161.not, label %.split1440, label %bb.qs, !llvm.loop !158

bb.qu:                                            ; preds = %bb.qn
  store i32 -2146369536, ptr %.9859, align 4, !tbaa !28
  %.pre2181.pre = load ptr, ptr %i.a, align 8, !tbaa !27
  br label %.split1440.thread

.split1440.thread:                                ; preds = %bb.qo, %bb.qu
  %.pre2181 = phi ptr [ %i.bgj, %bb.qo ], [ %.pre2181.pre, %bb.qu ]
  %i.bhb = getelementptr inbounds nuw i8, ptr %.9859, i64 4
  %i.bhc = load i32, ptr %i.c, align 4, !tbaa !28
  %i.bhd = getelementptr inbounds nuw i8, ptr %.9859, i64 8
  store i32 %i.bhc, ptr %i.bhb, align 4, !tbaa !28
  %i.bhe = load i64, ptr %i.o, align 8, !tbaa !25 ; 2 uses
  %i.bhf = lshr i64 %i.bhe, 32
  %i.bhg = trunc nuw i64 %i.bhf to i32
  %i.bhh = getelementptr inbounds nuw i8, ptr %.9859, i64 12
  store i32 %i.bhg, ptr %i.bhd, align 4, !tbaa !28
  %i.bhi = trunc i64 %i.bhe to i32
  %i.bhj = getelementptr inbounds nuw i8, ptr %.9859, i64 16
  store i32 %i.bhi, ptr %i.bhh, align 4, !tbaa !28
  br label %bb.qv

.split1440.loopexit.split.loop.exit2562:          ; preds = %bb.qs
  %i.bhk = trunc nuw nsw i64 %indvars.iv to i32
  br label %.split1440

.split1440:                                       ; preds = %bb.qt, %.split1440.loopexit.split.loop.exit2562, %bb.qr
  %storemerge.lcssa1940 = phi i32 [ 1, %bb.qr ], [ %i.bhk, %.split1440.loopexit.split.loop.exit2562 ], [ %i.bgk, %bb.qt ] ; 2 uses
  store i32 %storemerge.lcssa1940, ptr %i.f, align 4, !tbaa !28
  %i.bhl = load i8, ptr %.pre2180.pre, align 1, !tbaa !29
  %i.bhm = icmp eq i8 %i.bhl, 82
  %i.bhn = icmp sge i32 %storemerge.lcssa1940, %i.bgk
  %i.bho = and i1 %i.bhn, %i.bhm
  %i.bhp = select i1 %i.bho, i32 -2146172928, i32 -2146369536
  store i32 %i.bhp, ptr %.9859, align 4, !tbaa !28
  %i.bhq = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.bhr = getelementptr inbounds i8, ptr %i.bhq, i64 -1 ; 2 uses
  store ptr %i.bhr, ptr %i.a, align 8, !tbaa !27
  %i.bhs = getelementptr inbounds nuw i8, ptr %.9859, i64 4
  %i.bht = load i32, ptr %i.c, align 4, !tbaa !28
  %i.bhu = getelementptr inbounds nuw i8, ptr %.9859, i64 8
  store i32 %i.bht, ptr %i.bhs, align 4, !tbaa !28
  %i.bhv = load i64, ptr %i.o, align 8, !tbaa !25 ; 2 uses
  %i.bhw = lshr i64 %i.bhv, 32
  %i.bhx = trunc nuw i64 %i.bhw to i32
  %i.bhy = getelementptr inbounds nuw i8, ptr %.9859, i64 12
  store i32 %i.bhx, ptr %i.bhu, align 4, !tbaa !28
  %i.bhz = trunc i64 %i.bhv to i32
  %i.bia = getelementptr inbounds nuw i8, ptr %.9859, i64 16
  store i32 %i.bhz, ptr %i.bhy, align 4, !tbaa !28
  br label %bb.qv

bb.qv:                                            ; preds = %.split1440, %.split1440.thread, %.thread1437, %bb.qi, %bb.po
  %i.bib = phi ptr [ %i.bdj, %bb.po ], [ %i.bfq, %bb.qi ], [ %.pre2181, %.split1440.thread ], [ %i.bgp, %.thread1437 ], [ %i.bhr, %.split1440 ] ; 3 uses
  %.42 = phi ptr [ %i.bdv, %bb.po ], [ %i.bfu, %bb.qi ], [ %i.bhj, %.split1440.thread ], [ %i.bgw, %.thread1437 ], [ %i.bia, %.split1440 ]
  %.not1081 = icmp ult ptr %i.bib, %i.ah
  br i1 %.not1081, label %bb.qw, label %bb.qx

bb.qw:                                            ; preds = %bb.qv
  %i.bic = load i8, ptr %i.bib, align 1, !tbaa !29
  %.not1082 = icmp eq i8 %i.bic, 41
  br i1 %.not1082, label %bb.qy, label %bb.qx

bb.qx:                                            ; preds = %bb.qw, %bb.qv
  store i32 124, ptr %i.e, align 4, !tbaa !28
  br label %.thread1444

bb.qy:                                            ; preds = %bb.qw
  %i.bid = getelementptr inbounds nuw i8, ptr %i.bib, i64 1
  store ptr %i.bid, ptr %i.a, align 8, !tbaa !27
  br label %.thread1299

.thread1352:                                      ; preds = %..thread1352_crit_edge, %bb.md
  %i.bie = phi ptr [ %.pre2177, %..thread1352_crit_edge ], [ %i.aug, %bb.md ]
  %i.bif = getelementptr inbounds nuw i8, ptr %.9859, i64 4
  store i32 -2147352576, ptr %.9859, align 4, !tbaa !28
  %i.big = add i16 %.08022060, 1
  %i.bih = getelementptr inbounds nuw i8, ptr %i.bie, i64 1
  store ptr %i.bih, ptr %i.a, align 8, !tbaa !27
  br label %.thread1299

.thread1357:                                      ; preds = %..thread1357_crit_edge, %bb.md
  %i.bii = phi ptr [ %.pre2176, %..thread1357_crit_edge ], [ %i.aug, %bb.md ]
  %i.bij = getelementptr inbounds nuw i8, ptr %.9859, i64 4
  store i32 -2145189888, ptr %.9859, align 4, !tbaa !28
  %i.bik = getelementptr inbounds nuw i8, ptr %i.bii, i64 1
  br label %bb.rd

.thread1362:                                      ; preds = %..thread1362_crit_edge, %bb.md
  %i.bil = phi ptr [ %.pre2175, %..thread1362_crit_edge ], [ %i.aug, %bb.md ]
  %i.bim = getelementptr inbounds nuw i8, ptr %.9859, i64 4
  store i32 -2144927744, ptr %.9859, align 4, !tbaa !28
  %i.bin = getelementptr inbounds nuw i8, ptr %i.bil, i64 1
  br label %bb.rd

.thread1367:                                      ; preds = %..thread1367_crit_edge, %bb.md
  %i.bio = phi ptr [ %.pre2174, %..thread1367_crit_edge ], [ %i.aug, %bb.md ]
  %i.bip = getelementptr inbounds nuw i8, ptr %.9859, i64 4
  store i32 -2145124352, ptr %.9859, align 4, !tbaa !28
  %i.biq = getelementptr inbounds nuw i8, ptr %i.bio, i64 1
  br label %bb.rd

bb.qz:                                            ; preds = %bb.md
  %i.bir = ptrtoint ptr %i.aug to i64             ; 2 uses
  %i.bis = sub i64 %i.gx, %i.bir
  %i.bit = icmp slt i64 %i.bis, 2
  br i1 %i.bit, label %bb.rj, label %bb.ra

bb.ra:                                            ; preds = %bb.qz
  %i.biu = getelementptr inbounds nuw i8, ptr %i.aox, i64 2
  %i.biv = load i8, ptr %i.biu, align 1, !tbaa !29 ; 3 uses
  switch i8 %i.biv, label %bb.rj [
    i8 61, label %bb.rb
    i8 33, label %bb.rb
    i8 42, label %bb.rb
  ]

bb.rb:                                            ; preds = %bb.ra, %bb.ra, %bb.ra
  %i.biw = icmp eq i8 %i.biv, 61
  %i.bix = icmp eq i8 %i.biv, 33
  %i.biy = select i1 %i.bix, i32 -2144993280, i32 -2144862208
  %i.biz = select i1 %i.biw, i32 -2145058816, i32 %i.biy
  store i32 %i.biz, ptr %.9859, align 4, !tbaa !28
  br label %bb.rc

bb.rc:                                            ; preds = %bb.mb, %bb.rb
  %.pre-phi = phi i64 [ %.pre, %bb.mb ], [ %i.bir, %bb.rb ]
  %i.bja = phi ptr [ %i.auf, %bb.mb ], [ %i.aug, %bb.rb ]
  %.47 = getelementptr inbounds nuw i8, ptr %.9859, i64 4
  store i32 1, ptr %2, align 4, !tbaa !28
  %i.bjb = load ptr, ptr %i.gr, align 8, !tbaa !58
  %i.bjc = ptrtoint ptr %i.bjb to i64
  %i.bjd = sub i64 %.pre-phi, %i.bjc
  %i.bje = add nsw i64 %i.bjd, -2                 ; 3 uses
  store i64 %i.bje, ptr %i.o, align 8, !tbaa !25
  %i.bjf = lshr i64 %i.bje, 32
  %i.bjg = trunc nuw i64 %i.bjf to i32
  %i.bjh = getelementptr inbounds nuw i8, ptr %.9859, i64 8
  store i32 %i.bjg, ptr %.47, align 4, !tbaa !28
  %i.bji = trunc i64 %i.bje to i32
  %i.bjj = getelementptr inbounds nuw i8, ptr %.9859, i64 12
  store i32 %i.bji, ptr %i.bjh, align 4, !tbaa !28
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bja, i64 2
  br label %bb.rd

bb.rd:                                            ; preds = %bb.rc, %.thread1367, %.thread1362, %.thread1357
  %.sink2574 = phi ptr [ %i.bjk, %bb.rc ], [ %i.biq, %.thread1367 ], [ %i.bin, %.thread1362 ], [ %i.bik, %.thread1357 ]
  %.48 = phi ptr [ %i.bjj, %bb.rc ], [ %i.bip, %.thread1367 ], [ %i.bim, %.thread1362 ], [ %i.bij, %.thread1357 ] ; 2 uses
  store ptr %.sink2574, ptr %i.a, align 8, !tbaa !27
  %i.bjl = add i16 %.08022060, 1                  ; 3 uses
  br i1 %i.pv, label %bb.re, label %.thread1299

bb.re:                                            ; preds = %bb.rd
  %i.bjm = icmp eq ptr %.07142084, null
  br i1 %i.bjm, label %bb.rf, label %bb.rg

bb.rf:                                            ; preds = %bb.re
  %i.bjn = load ptr, ptr %i.gg, align 8, !tbaa !59
  br label %bb.ri

bb.rg:                                            ; preds = %bb.re
  %i.bjo = getelementptr inbounds nuw i8, ptr %.07142084, i64 16 ; 2 uses
  %.not1129 = icmp ult ptr %i.bjo, %i.gn
  br i1 %.not1129, label %bb.ri, label %bb.rh

bb.rh:                                            ; preds = %bb.rg
  store i32 184, ptr %i.e, align 4, !tbaa !28
  br label %.thread1444

bb.ri:                                            ; preds = %bb.rg, %bb.rf
  %.15729 = phi ptr [ %i.bjn, %bb.rf ], [ %i.bjo, %bb.rg ] ; 5 uses
  store i16 %i.bjl, ptr %.15729, align 4, !tbaa !164
  %i.bjp = getelementptr inbounds nuw i8, ptr %.15729, i64 6
  store i16 2, ptr %i.bjp, align 2, !tbaa !165
  %i.bjq = and i32 %.19032028.fr, 17048808
  %i.bjr = getelementptr inbounds nuw i8, ptr %.15729, i64 8
  store i32 %i.bjq, ptr %i.bjr, align 4, !tbaa !166
  %i.bjs = and i32 %.08172056, 8064
  %i.bjt = getelementptr inbounds nuw i8, ptr %.15729, i64 12
  store i32 %i.bjs, ptr %i.bjt, align 4, !tbaa !167
  br label %.thread1299

bb.rj:                                            ; preds = %bb.md, %bb.qz, %bb.ra, %bb.nv
  %.1709 = phi i32 [ 62, %bb.qz ], [ 62, %bb.nv ], [ 62, %bb.ra ], [ 39, %bb.md ]
  %i.bju = call fastcc i32 @read_name(ptr noundef %i.a, ptr noundef nonnull %i.ah, i32 noundef %.lobit, i32 noundef %.1709, ptr noundef %i.o, ptr noundef %i.g, ptr noundef %i.c, ptr noundef %i.e, ptr noundef %3)
  %.not1100 = icmp eq i32 %i.bju, 0
  br i1 %.not1100, label %.thread1444, label %bb.rk

bb.rk:                                            ; preds = %bb.rj
  %i.bjv = load i32, ptr %i.gy, align 4, !tbaa !37 ; 3 uses
  %i.bjw = icmp ugt i32 %i.bjv, 65534
  br i1 %i.bjw, label %bb.rl, label %bb.rm

bb.rl:                                            ; preds = %bb.rk
  store i32 197, ptr %i.e, align 4, !tbaa !28
  br label %.thread1444

bb.rm:                                            ; preds = %bb.rk
  %i.bjx = add nuw nsw i32 %i.bjv, 1
  store i32 %i.bjx, ptr %i.gy, align 4, !tbaa !37
  %5 = add nuw nsw i32 %i.bjv, -2146959359
  %i.bjy = getelementptr inbounds nuw i8, ptr %.9859, i64 4 ; 2 uses
  store i32 %5, ptr %.9859, align 4, !tbaa !28
  %i.bjz = add i16 %.08022060, 1                  ; 2 uses
  %i.bka = load i16, ptr %i.gz, align 8, !tbaa !69 ; 2 uses
  %i.bkb = icmp ugt i16 %i.bka, 9999
  br i1 %i.bkb, label %bb.rn, label %bb.ro

bb.rn:                                            ; preds = %bb.rm
  store i32 149, ptr %i.e, align 4, !tbaa !28
  br label %.thread1444

bb.ro:                                            ; preds = %bb.rm
  %i.bkc = load i32, ptr %i.c, align 4, !tbaa !28 ; 4 uses
  %i.bkd = add i32 %i.bkc, 3                      ; 2 uses
  %i.bke = load i16, ptr %i.ha, align 2, !tbaa !70
  %i.bkf = zext i16 %i.bke to i32
  %i.bkg = icmp ugt i32 %i.bkd, %i.bkf
  br i1 %i.bkg, label %bb.rp, label %bb.rq

bb.rp:                                            ; preds = %bb.ro
  %i.bkh = trunc i32 %i.bkd to i16
  store i16 %i.bkh, ptr %i.ha, align 2, !tbaa !70
  br label %bb.rq

bb.rq:                                            ; preds = %bb.rp, %bb.ro
  %.not2095 = icmp eq i16 %i.bka, 0
  br i1 %.not2095, label %._crit_edge1969, label %.lr.ph1968

.lr.ph1968:                                       ; preds = %bb.rq
  %i.bki = load ptr, ptr %i.hb, align 8, !tbaa !54
  %i.bkj = load ptr, ptr %i.g, align 8
  %i.bkk = zext nneg i32 %i.bkc to i64
  %i.bkl = and i32 %.19032028.fr, 64
  %i.bkm = icmp eq i32 %i.bkl, 0
  br label %bb.rr

bb.rr:                                            ; preds = %.lr.ph1968, %bb.rz
  %.07311966 = phi ptr [ %i.bki, %.lr.ph1968 ], [ %i.ble, %bb.rz ] ; 6 uses
  %.07641965 = phi i16 [ 0, %.lr.ph1968 ], [ %.1765, %bb.rz ] ; 2 uses
  %i.bkn = phi i32 [ 0, %.lr.ph1968 ], [ %i.bld, %bb.rz ] ; 2 uses
  %i.bko = getelementptr inbounds nuw i8, ptr %.07311966, i64 12
  %i.bkp = load i16, ptr %i.bko, align 4, !tbaa !77
  %i.bkq = zext i16 %i.bkp to i32
  %i.bkr = icmp eq i32 %i.bkc, %i.bkq
  br i1 %i.bkr, label %bb.rs, label %._crit_edge2182

._crit_edge2182:                                  ; preds = %bb.rr
  %.pre2183 = load i32, ptr %i.gy, align 4, !tbaa !37
  br label %bb.rx

bb.rs:                                            ; preds = %bb.rr
  %i.bks = load ptr, ptr %.07311966, align 8, !tbaa !76
  %i.bkt = call i32 @_pcre2_strncmp_8(ptr noundef %i.bkj, ptr noundef %i.bks, i64 noundef %i.bkk) #17
  %i.bku = icmp eq i32 %i.bkt, 0
  %.pre2184 = load i32, ptr %i.gy, align 4, !tbaa !37 ; 2 uses
  br i1 %i.bku, label %bb.rt, label %bb.rx

bb.rt:                                            ; preds = %bb.rs
  %i.bkv = getelementptr inbounds nuw i8, ptr %.07311966, i64 8
  %i.bkw = load i32, ptr %i.bkv, align 8, !tbaa !78
  %i.bkx = icmp eq i32 %i.bkw, %.pre2184
  br i1 %i.bkx, label %.._crit_edge1969.loopexit_crit_edge, label %bb.ru

.._crit_edge1969.loopexit_crit_edge:              ; preds = %bb.rt
  %.pre2185.pre = load i16, ptr %i.gz, align 8, !tbaa !69
  br label %._crit_edge1969

bb.ru:                                            ; preds = %bb.rt
  br i1 %i.bkm, label %bb.rv, label %bb.rw

bb.rv:                                            ; preds = %bb.ru
  store i32 143, ptr %i.e, align 4, !tbaa !28
  br label %.thread1444

bb.rw:                                            ; preds = %bb.ru
  %i.bky = getelementptr inbounds nuw i8, ptr %.07311966, i64 14
  store i16 1, ptr %i.bky, align 2, !tbaa !82
  store i32 1, ptr %i.hc, align 4, !tbaa !44
  br label %bb.rz

bb.rx:                                            ; preds = %._crit_edge2182, %bb.rs
  %i.bkz = phi i32 [ %.pre2183, %._crit_edge2182 ], [ %.pre2184, %bb.rs ]
  %i.bla = getelementptr inbounds nuw i8, ptr %.07311966, i64 8
  %i.blb = load i32, ptr %i.bla, align 8, !tbaa !78
  %i.blc = icmp eq i32 %i.blb, %i.bkz
  br i1 %i.blc, label %bb.ry, label %bb.rz

bb.ry:                                            ; preds = %bb.rx
  store i32 165, ptr %i.e, align 4, !tbaa !28
  br label %.thread1444

bb.rz:                                            ; preds = %bb.rw, %bb.rx
  %.1765 = phi i16 [ 1, %bb.rw ], [ %.07641965, %bb.rx ] ; 2 uses
  %i.bld = add nuw nsw i32 %i.bkn, 1              ; 3 uses
  %i.ble = getelementptr inbounds nuw i8, ptr %.07311966, i64 16
  %i.blf = load i16, ptr %i.gz, align 8, !tbaa !69 ; 2 uses
  %i.blg = zext i16 %i.blf to i32
  %i.blh = icmp samesign ult i32 %i.bld, %i.blg
  br i1 %i.blh, label %bb.rr, label %._crit_edge1969, !llvm.loop !159

._crit_edge1969:                                  ; preds = %bb.rz, %.._crit_edge1969.loopexit_crit_edge, %bb.rq
  %i.bli = phi i16 [ 0, %bb.rq ], [ %.pre2185.pre, %.._crit_edge1969.loopexit_crit_edge ], [ %i.blf, %bb.rz ] ; 2 uses
  %.lcssa1962 = phi i32 [ 0, %bb.rq ], [ %i.bkn, %.._crit_edge1969.loopexit_crit_edge ], [ %i.bld, %bb.rz ] ; 2 uses
  %.0764.lcssa = phi i16 [ 0, %bb.rq ], [ %.07641965, %.._crit_edge1969.loopexit_crit_edge ], [ %.1765, %bb.rz ]
  store i32 %.lcssa1962, ptr %i.f, align 4
  %i.blj = zext i16 %i.bli to i32                 ; 2 uses
  %i.blk = icmp slt i32 %.lcssa1962, %i.blj
  br i1 %i.blk, label %.thread1299, label %bb.sa

bb.sa:                                            ; preds = %._crit_edge1969
  %i.bll = load i32, ptr %i.hd, align 8, !tbaa !55 ; 2 uses
  %.not1101 = icmp ugt i32 %i.bll, %i.blj
  br i1 %.not1101, label %._crit_edge2186, label %bb.sb

._crit_edge2186:                                  ; preds = %bb.sa
  %.pre2187 = load ptr, ptr %i.hb, align 8, !tbaa !54
  br label %bb.sf

bb.sb:                                            ; preds = %bb.sa
  %i.blm = shl nuw nsw i32 %i.bll, 1              ; 2 uses
  %i.bln = load ptr, ptr %3, align 8, !tbaa !43   ; 2 uses
  %i.blo = load ptr, ptr %i.bln, align 8, !tbaa !65
  %i.blp = zext nneg i32 %i.blm to i64
  %i.blq = shl nuw nsw i64 %i.blp, 4
  %i.blr = getelementptr inbounds nuw i8, ptr %i.bln, i64 16
  %i.bls = load ptr, ptr %i.blr, align 8, !tbaa !66
  %i.blt = call ptr %i.blo(i64 noundef %i.blq, ptr noundef %i.bls) #17 ; 4 uses
  %.not1102 = icmp eq ptr %i.blt, null
  br i1 %.not1102, label %.thread1441, label %bb.sc

.thread1441:                                      ; preds = %bb.sb
  store i32 121, ptr %i.e, align 4, !tbaa !28
  br label %.thread1444

bb.sc:                                            ; preds = %bb.sb
  %i.blu = load ptr, ptr %i.hb, align 8, !tbaa !54
  %i.blv = load i32, ptr %i.hd, align 8, !tbaa !55
  %i.blw = zext i32 %i.blv to i64
  %i.blx = shl nuw nsw i64 %i.blw, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.blt, ptr align 8 %i.blu, i64 %i.blx, i1 false)
  %i.bly = load i32, ptr %i.hd, align 8, !tbaa !55
  %i.blz = icmp ugt i32 %i.bly, 20
  br i1 %i.blz, label %bb.sd, label %bb.se

bb.sd:                                            ; preds = %bb.sc
  %i.bma = load ptr, ptr %3, align 8, !tbaa !43   ; 2 uses
  %i.bmb = getelementptr inbounds nuw i8, ptr %i.bma, i64 8
  %i.bmc = load ptr, ptr %i.bmb, align 8, !tbaa !81
  %i.bmd = load ptr, ptr %i.hb, align 8, !tbaa !54
  %i.bme = getelementptr inbounds nuw i8, ptr %i.bma, i64 16
  %i.bmf = load ptr, ptr %i.bme, align 8, !tbaa !66
  call void %i.bmc(ptr noundef %i.bmd, ptr noundef %i.bmf) #17
  br label %bb.se

bb.se:                                            ; preds = %bb.sc, %bb.sd
  store ptr %i.blt, ptr %i.hb, align 8, !tbaa !54
  store i32 %i.blm, ptr %i.hd, align 8, !tbaa !55
  %.pre2188 = load i16, ptr %i.gz, align 8, !tbaa !69
  br label %bb.sf

bb.sf:                                            ; preds = %._crit_edge2186, %bb.se
  %i.bmg = phi i16 [ %i.bli, %._crit_edge2186 ], [ %.pre2188, %bb.se ] ; 2 uses
  %i.bmh = phi ptr [ %.pre2187, %._crit_edge2186 ], [ %i.blt, %bb.se ]
  %i.bmi = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.bmj = zext i16 %i.bmg to i64
  %i.bmk = getelementptr inbounds nuw [16 x i8], ptr %i.bmh, i64 %i.bmj ; 4 uses
  store ptr %i.bmi, ptr %i.bmk, align 8, !tbaa !76
  %i.bml = trunc i32 %i.bkc to i16
  %i.bmm = getelementptr inbounds nuw i8, ptr %i.bmk, i64 12
  store i16 %i.bml, ptr %i.bmm, align 4, !tbaa !77
  %i.bmn = load i32, ptr %i.gy, align 4, !tbaa !37
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.bmk, i64 8
  store i32 %i.bmn, ptr %i.bmo, align 8, !tbaa !78
  %i.bmp = getelementptr inbounds nuw i8, ptr %i.bmk, i64 14
  store i16 %.0764.lcssa, ptr %i.bmp, align 2, !tbaa !82
  %i.bmq = add i16 %i.bmg, 1
  store i16 %i.bmq, ptr %i.gz, align 8, !tbaa !69
  br label %.thread1299

bb.sg:                                            ; preds = %bb.cv, %thread-pre-split1262
  %.not1058 = icmp eq ptr %.07142084, null
  br i1 %.not1058, label %bb.sm, label %bb.sh

bb.sh:                                            ; preds = %bb.sg
  %i.bmr = load i16, ptr %.07142084, align 4, !tbaa !164
  %i.bms = icmp eq i16 %i.bmr, %.08022060
  br i1 %i.bms, label %bb.si, label %bb.sm

bb.si:                                            ; preds = %bb.sh
  %i.bmt = getelementptr inbounds nuw i8, ptr %.07142084, i64 6
  %i.bmu = load i16, ptr %i.bmt, align 2, !tbaa !165
  %i.bmv = and i16 %i.bmu, 1
  %.not1059 = icmp eq i16 %i.bmv, 0
  br i1 %.not1059, label %bb.sm, label %bb.sj

bb.sj:                                            ; preds = %bb.si
  %i.bmw = load i32, ptr %i.gy, align 4, !tbaa !37 ; 2 uses
  %i.bmx = getelementptr inbounds nuw i8, ptr %.07142084, i64 4 ; 2 uses
  %i.bmy = load i16, ptr %i.bmx, align 4, !tbaa !171
  %i.bmz = zext i16 %i.bmy to i32
end_hunk_1
