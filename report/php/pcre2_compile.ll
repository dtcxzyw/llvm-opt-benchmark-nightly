Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/pcre2_compile?download=true
inline.NumInlined: 21
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 20
begin_hunk_0_@parse_regex:bb.a
  %.23873 = phi ptr [ %i.akl, %bb.io ], [ %i.akm, %bb.ip ], [ %i.akz, %bb.ir ] ; 3 uses
  %i.alc = load ptr, ptr %i.a, align 8, !tbaa !27 ; 3 uses
  %i.ald = icmp ult ptr %i.alc, %i.hg
  br i1 %i.ald, label %bb.iu, label %.thread1277

bb.iu:                                            ; preds = %bb.it
  %i.ale = load i8, ptr %i.alc, align 1, !tbaa !29
  %i.alf = icmp eq i8 %i.ale, 45
  br i1 %i.alf, label %bb.iv, label %.thread1277

bb.iv:                                            ; preds = %bb.iu
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alc, i64 1
  %i.alh = load i8, ptr %i.alg, align 1, !tbaa !29
  %.not1142 = icmp eq i8 %i.alh, 93
  br i1 %.not1142, label %.thread1277, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  store i32 150, ptr %i.e, align 4, !tbaa !28
  br label %.thread1299.thread

.thread1277:                                      ; preds = %bb.gn, %bb.gn, %bb.hf, %bb.hd, %bb.hg, %bb.hl, %bb.hq, %bb.hr, %bb.iv, %bb.iu, %bb.it, %bb.hi, %bb.ig, %bb.ii, %bb.gl
  %.2898 = phi i32 [ %.0896, %bb.gl ], [ %.0896, %bb.gn ], [ %.not1152, %bb.hr ], [ %.0896, %bb.gn ], [ 0, %bb.hl ], [ 0, %bb.hq ], [ 1, %bb.hi ], [ 0, %bb.iv ], [ 0, %bb.iu ], [ 0, %bb.it ], [ %.0896, %bb.ii ], [ %.0896, %bb.ig ], [ 0, %bb.hg ], [ 0, %bb.hd ], [ 0, %bb.hf ] ; 2 uses
  %.24 = phi ptr [ %.17867, %bb.gl ], [ %.17867, %bb.gn ], [ %i.agw, %bb.hr ], [ %.17867, %bb.gn ], [ %i.agp, %bb.hl ], [ %i.agv, %bb.hq ], [ %i.agj, %bb.hi ], [ %.23873, %bb.iv ], [ %.23873, %bb.iu ], [ %.23873, %bb.it ], [ %.17867, %bb.ii ], [ %.17867, %bb.ig ], [ %i.age, %bb.hg ], [ %i.afz, %bb.hd ], [ %i.agb, %bb.hf ] ; 4 uses
  %.5784 = phi i32 [ 0, %bb.gl ], [ 0, %bb.gn ], [ %.4783, %bb.hr ], [ 0, %bb.gn ], [ %.4783, %bb.hl ], [ %.4783, %bb.hq ], [ 0, %bb.hi ], [ 0, %bb.iv ], [ 0, %bb.iu ], [ 0, %bb.it ], [ 1, %bb.ii ], [ 0, %bb.ig ], [ 0, %bb.hg ], [ 0, %bb.hd ], [ 0, %bb.hf ] ; 2 uses
  %i.ali = load ptr, ptr %i.a, align 8, !tbaa !27 ; 14 uses
  %.not1154 = icmp ult ptr %i.ali, %i.ah
  br i1 %.not1154, label %bb.iy, label %bb.ix

bb.ix:                                            ; preds = %.thread1277
  store i32 106, ptr %i.e, align 4, !tbaa !28
  br label %.thread1299.thread

bb.iy:                                            ; preds = %.thread1277
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ali, i64 1 ; 3 uses
  store ptr %i.alj, ptr %i.a, align 8, !tbaa !27
  %i.alk = load i8, ptr %i.ali, align 1, !tbaa !29 ; 2 uses
  %i.all = zext i8 %i.alk to i32                  ; 11 uses
  store i32 %i.all, ptr %i.b, align 4, !tbaa !28
  %i.alm = icmp ugt i8 %i.alk, -65
  %or.cond44 = select i1 %i.ae, i1 %i.alm, i1 false
  br i1 %or.cond44, label %bb.iz, label %bb.ji

bb.iz:                                            ; preds = %bb.iy
  %i.aln = and i32 %i.all, 32
  %i.alo = icmp eq i32 %i.aln, 0
  br i1 %i.alo, label %bb.ja, label %bb.jb

bb.ja:                                            ; preds = %bb.iz
  %i.alp = shl nuw nsw i32 %i.all, 6
  %i.alq = and i32 %i.alp, 1984
  %i.alr = getelementptr inbounds nuw i8, ptr %i.ali, i64 2
  store ptr %i.alr, ptr %i.a, align 8, !tbaa !27
  %i.als = load i8, ptr %i.alj, align 1, !tbaa !29
  %i.alt = and i8 %i.als, 63
  %i.alu = zext nneg i8 %i.alt to i32
  %i.alv = or disjoint i32 %i.alq, %i.alu         ; 2 uses
  store i32 %i.alv, ptr %i.b, align 4, !tbaa !28
  br label %bb.ji

bb.jb:                                            ; preds = %bb.iz
  %i.alw = and i32 %i.all, 16
  %i.alx = icmp eq i32 %i.alw, 0
  %i.aly = load i8, ptr %i.alj, align 1, !tbaa !29
  %i.alz = and i8 %i.aly, 63
  %i.ama = zext nneg i8 %i.alz to i32             ; 4 uses
  br i1 %i.alx, label %bb.jc, label %bb.jd

bb.jc:                                            ; preds = %bb.jb
  %i.amb = shl nuw nsw i32 %i.all, 12
  %i.amc = and i32 %i.amb, 61440
  %i.amd = shl nuw nsw i32 %i.ama, 6
  %i.ame = or disjoint i32 %i.amd, %i.amc
  %i.amf = getelementptr inbounds nuw i8, ptr %i.ali, i64 2
  %i.amg = load i8, ptr %i.amf, align 1, !tbaa !29
  %i.amh = and i8 %i.amg, 63
  %i.ami = zext nneg i8 %i.amh to i32
  %i.amj = or disjoint i32 %i.ame, %i.ami         ; 2 uses
  store i32 %i.amj, ptr %i.b, align 4, !tbaa !28
  %i.amk = getelementptr inbounds nuw i8, ptr %i.ali, i64 3
  store ptr %i.amk, ptr %i.a, align 8, !tbaa !27
  br label %bb.ji

bb.jd:                                            ; preds = %bb.jb
  %i.aml = and i32 %i.all, 8
  %i.amm = icmp eq i32 %i.aml, 0
  br i1 %i.amm, label %bb.je, label %bb.jf

bb.je:                                            ; preds = %bb.jd
  %i.amn = shl nuw nsw i32 %i.all, 18
  %i.amo = and i32 %i.amn, 1835008
  %i.amp = shl nuw nsw i32 %i.ama, 12
  %i.amq = or disjoint i32 %i.amp, %i.amo
  %i.amr = getelementptr inbounds nuw i8, ptr %i.ali, i64 2
  %i.ams = load i8, ptr %i.amr, align 1, !tbaa !29
  %i.amt = and i8 %i.ams, 63
  %i.amu = zext nneg i8 %i.amt to i32
  %i.amv = shl nuw nsw i32 %i.amu, 6
  %i.amw = or disjoint i32 %i.amq, %i.amv
  %i.amx = getelementptr inbounds nuw i8, ptr %i.ali, i64 3
  %i.amy = load i8, ptr %i.amx, align 1, !tbaa !29
  %i.amz = and i8 %i.amy, 63
  %i.ana = zext nneg i8 %i.amz to i32
  %i.anb = or disjoint i32 %i.amw, %i.ana         ; 2 uses
  store i32 %i.anb, ptr %i.b, align 4, !tbaa !28
  %i.anc = getelementptr inbounds nuw i8, ptr %i.ali, i64 4
  store ptr %i.anc, ptr %i.a, align 8, !tbaa !27
  br label %bb.ji

bb.jf:                                            ; preds = %bb.jd
  %i.and = and i32 %i.all, 4
  %i.ane = icmp eq i32 %i.and, 0
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ali, i64 2
  %i.ang = load i8, ptr %i.anf, align 1, !tbaa !29
  %i.anh = and i8 %i.ang, 63
  %i.ani = zext nneg i8 %i.anh to i32             ; 2 uses
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ali, i64 3
  %i.ank = load i8, ptr %i.anj, align 1, !tbaa !29
  %i.anl = and i8 %i.ank, 63
  %i.anm = zext nneg i8 %i.anl to i32             ; 2 uses
  %i.ann = getelementptr inbounds nuw i8, ptr %i.ali, i64 4
  %i.ano = load i8, ptr %i.ann, align 1, !tbaa !29
  %i.anp = and i8 %i.ano, 63
  %i.anq = zext nneg i8 %i.anp to i32             ; 2 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %i.ali, i64 5 ; 2 uses
  br i1 %i.ane, label %bb.jg, label %bb.jh

bb.jg:                                            ; preds = %bb.jf
  %i.ans = shl nuw i32 %i.all, 24
  %i.ant = and i32 %i.ans, 50331648
  %i.anu = shl nuw nsw i32 %i.ama, 18
  %i.anv = or disjoint i32 %i.anu, %i.ant
  %i.anw = shl nuw nsw i32 %i.ani, 12
  %i.anx = or disjoint i32 %i.anv, %i.anw
  %i.any = shl nuw nsw i32 %i.anm, 6
  %i.anz = or disjoint i32 %i.anx, %i.any
  %i.aoa = or disjoint i32 %i.anz, %i.anq         ; 2 uses
  store i32 %i.aoa, ptr %i.b, align 4, !tbaa !28
  store ptr %i.anr, ptr %i.a, align 8, !tbaa !27
  br label %bb.ji

bb.jh:                                            ; preds = %bb.jf
  %i.aob = shl i32 %i.all, 30
  %i.aoc = and i32 %i.aob, 1073741824
  %i.aod = shl nuw nsw i32 %i.ama, 24
  %i.aoe = or disjoint i32 %i.aod, %i.aoc
  %i.aof = shl nuw nsw i32 %i.ani, 18
  %i.aog = or disjoint i32 %i.aoe, %i.aof
  %i.aoh = shl nuw nsw i32 %i.anm, 12
  %i.aoi = or disjoint i32 %i.aog, %i.aoh
  %i.aoj = shl nuw nsw i32 %i.anq, 6
  %i.aok = or disjoint i32 %i.aoi, %i.aoj
  %i.aol = load i8, ptr %i.anr, align 1, !tbaa !29
  %i.aom = and i8 %i.aol, 63
  %i.aon = zext nneg i8 %i.aom to i32
  %i.aoo = or disjoint i32 %i.aok, %i.aon         ; 2 uses
  store i32 %i.aoo, ptr %i.b, align 4, !tbaa !28
  %i.aop = getelementptr inbounds nuw i8, ptr %i.ali, i64 6
  store ptr %i.aop, ptr %i.a, align 8, !tbaa !27
  br label %bb.ji

bb.ji:                                            ; preds = %bb.ja, %bb.je, %bb.jh, %bb.jg, %bb.jc, %bb.iy
  %i.aoq = phi i32 [ %i.alv, %bb.ja ], [ %i.anb, %bb.je ], [ %i.aoo, %bb.jh ], [ %i.aoa, %bb.jg ], [ %i.amj, %bb.jc ], [ %i.all, %bb.iy ]
  %i.aor = icmp ne i32 %i.aoq, 93
  %i.aos = icmp ne i32 %.5784, 0
  %or.cond46 = or i1 %i.aos, %i.aor
  br i1 %or.cond46, label %.thread1282, label %.thread1304

.thread1304:                                      ; preds = %bb.ji
  %i.aot = icmp eq i32 %.2898, 1
  br i1 %i.aot, label %bb.jj, label %bb.jk

bb.jj:                                            ; preds = %.thread1304
  %i.aou = getelementptr inbounds i8, ptr %.24, i64 -4
  store i32 45, ptr %i.aou, align 4, !tbaa !28
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %.thread1304
  %i.aov = getelementptr inbounds nuw i8, ptr %.24, i64 4
  store i32 -2146631680, ptr %.24, align 4, !tbaa !28
  br label %.thread1299

bb.jl:                                            ; preds = %bb.cv, %thread-pre-split1262
  %i.aow = load ptr, ptr %i.a, align 8, !tbaa !27 ; 15 uses
  %.not1060 = icmp ult ptr %i.aow, %i.ah
  br i1 %.not1060, label %bb.jm, label %.sink.split2582

bb.jm:                                            ; preds = %bb.jl
  %i.aox = load i8, ptr %i.aow, align 1, !tbaa !29
  switch i8 %i.aox, label %bb.jn [
    i8 63, label %bb.mc
    i8 42, label %bb.js
  ]

bb.jn:                                            ; preds = %bb.jm
  %i.aoy = add i16 %.08022060, 1                  ; 2 uses
  %i.aoz = and i32 %.19032028.fr, 8192
  %i.apa = icmp eq i32 %i.aoz, 0
  br i1 %i.apa, label %bb.jo, label %bb.jr

bb.jo:                                            ; preds = %bb.jn
  %i.apb = load i32, ptr %i.gy, align 4, !tbaa !37 ; 2 uses
  %i.apc = icmp ugt i32 %i.apb, 65534
  br i1 %i.apc, label %bb.jp, label %bb.jq

bb.jp:                                            ; preds = %bb.jo
  store i32 197, ptr %i.e, align 4, !tbaa !28
  br label %.thread1444

bb.jq:                                            ; preds = %bb.jo
  %i.apd = add nuw nsw i32 %i.apb, 1              ; 2 uses
  store i32 %i.apd, ptr %i.gy, align 4, !tbaa !37
  %4 = or disjoint i32 %i.apd, -2146959360
  %i.ape = getelementptr inbounds nuw i8, ptr %.9859, i64 4
  store i32 %4, ptr %.9859, align 4, !tbaa !28
  br label %bb.ma

bb.jr:                                            ; preds = %bb.jn
  %i.apf = getelementptr inbounds nuw i8, ptr %.9859, i64 4
  store i32 -2145779712, ptr %.9859, align 4, !tbaa !28
  br label %bb.ma

bb.js:                                            ; preds = %bb.jm
  %i.apg = ptrtoint ptr %i.aow to i64
  %i.aph = sub i64 %i.gx, %i.apg
  %i.api = icmp slt i64 %i.aph, 2
  br i1 %i.api, label %.thread1299, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.apj = getelementptr inbounds nuw i8, ptr %i.aow, i64 1
  %i.apk = load i8, ptr %i.apj, align 1, !tbaa !29 ; 3 uses
  %i.apl = zext i8 %i.apk to i32
  store i32 %i.apl, ptr %i.b, align 4, !tbaa !28
  %i.apm = icmp eq i8 %i.apk, 41
  br i1 %i.apm, label %.thread1299, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.apn = load ptr, ptr %i.gs, align 8, !tbaa !42
  %i.apo = zext i8 %i.apk to i64
  %i.app = getelementptr inbounds nuw i8, ptr %i.apn, i64 %i.apo
  %i.apq = load i8, ptr %i.app, align 1, !tbaa !29
  %i.apr = and i8 %i.apq, 4
  %.not1115 = icmp eq i8 %i.apr, 0
  %i.aps = call fastcc i32 @read_name(ptr noundef %i.a, ptr noundef nonnull %i.ah, i32 noundef %.lobit, i32 noundef 0, ptr noundef %i.o, ptr noundef %i.g, ptr noundef %i.c, ptr noundef %i.e, ptr noundef %3)
  %.not1116 = icmp eq i32 %i.aps, 0               ; 2 uses
  br i1 %.not1115, label %bb.kz, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  br i1 %.not1116, label %.thread1444, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.apt = load ptr, ptr %i.a, align 8, !tbaa !27 ; 2 uses
  %.not1125 = icmp ult ptr %i.apt, %i.ah
  br i1 %.not1125, label %bb.jx, label %bb.jy

bb.jx:                                            ; preds = %bb.jw
  %i.apu = load i8, ptr %i.apt, align 1, !tbaa !29
  %.not1126 = icmp eq i8 %i.apu, 58
  br i1 %.not1126, label %.preheader1635, label %bb.jy

.preheader1635:                                   ; preds = %bb.jx
  %i.apv = load i32, ptr %i.c, align 4, !tbaa !28 ; 2 uses
  %i.apw = load ptr, ptr %i.g, align 8            ; 17 uses
  %i.apx = zext i32 %i.apv to i64                 ; 17 uses
  switch i32 %i.apv, label %.thread2373 [
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
  %i.apy = call i32 @_pcre2_strncmp_c8_8(ptr noundef %i.apw, ptr noundef nonnull @alasnames, i64 noundef %i.apx) #17
  %i.apz = icmp eq i32 %i.apy, 0
  br i1 %i.apz, label %bb.ko, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.aqa = call i32 @_pcre2_strncmp_c8_8(ptr noundef %i.apw, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @alasnames, i64 4), i64 noundef %i.apx) #17
  %i.aqb = icmp eq i32 %i.aqa, 0
  br i1 %i.aqb, label %bb.ko, label %bb.kd

bb.kb:                                            ; preds = %.preheader1635
  %i.aqc = call i32 @_pcre2_strncmp_c8_8(ptr noundef %i.apw, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @alasnames, i64 8), i64 noundef %i.apx) #17
  %i.aqd = icmp eq i32 %i.aqc, 0
  br i1 %i.aqd, label %bb.ko, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.aqe = call i32 @_pcre2_strncmp_c8_8(ptr noundef %i.apw, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @alasnames, i64 14), i64 noundef %i.apx) #17
  %i.aqf = icmp eq i32 %i.aqe, 0
  br i1 %i.aqf, label %bb.ko, label %.thread2373

bb.kd:                                            ; preds = %bb.ka
  %i.aqg = call i32 @_pcre2_strncmp_c8_8(ptr noundef %i.apw, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @alasnames, i64 20), i64 noundef %i.apx) #17
  %i.aqh = icmp eq i32 %i.aqg, 0
  br i1 %i.aqh, label %bb.ko, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.aqi = call i32 @_pcre2_strncmp_c8_8(ptr noundef %i.apw, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @alasnames, i64 24), i64 noundef %i.apx) #17
  %i.aqj = icmp eq i32 %i.aqi, 0
  br i1 %i.aqj, label %bb.ko, label %.split2357

bb.kf:                                            ; preds = %.preheader1635
  %i.aqk = call i32 @_pcre2_strncmp_c8_8(ptr noundef %i.apw, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @alasnames, i64 28), i64 noundef %i.apx) #17
  %i.aql = icmp eq i32 %i.aqk, 0
  br i1 %i.aql, label %bb.ko, label %bb.kj

bb.kg:                                            ; preds = %.preheader1635
  %i.aqm = call i32 @_pcre2_strncmp_c8_8(ptr noundef %i.apw, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @alasnames, i64 47), i64 noundef %i.apx) #17
  %i.aqn = icmp eq i32 %i.aqm, 0
  br i1 %i.aqn, label %bb.ko, label %.thread2356

bb.kh:                                            ; preds = %.preheader1635
  %i.aqo = call i32 @_pcre2_strncmp_c8_8(ptr noundef %i.apw, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @alasnames, i64 67), i64 noundef %i.apx) #17
  %i.aqp = icmp eq i32 %i.aqo, 0
  br i1 %i.aqp, label %bb.ko, label %.thread2373

bb.ki:                                            ; preds = %.preheader1635
  %i.aqq = call i32 @_pcre2_strncmp_c8_8(ptr noundef %i.apw, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @alasnames, i64 97), i64 noundef %i.apx) #17
  %i.aqr = icmp eq i32 %i.aqq, 0
  br i1 %i.aqr, label %bb.ko, label %.thread2373

bb.kj:                                            ; preds = %bb.kf
  %i.aqs = call i32 @_pcre2_strncmp_c8_8(ptr noundef %i.apw, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @alasnames, i64 128), i64 noundef %i.apx) #17
  %i.aqt = icmp eq i32 %i.aqs, 0
  br i1 %i.aqt, label %bb.ko, label %.thread2373

.thread2356:                                      ; preds = %bb.kg
  %i.aqu = call i32 @_pcre2_strncmp_c8_8(ptr noundef %i.apw, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @alasnames, i64 147), i64 noundef %i.apx) #17
  %i.aqv = icmp eq i32 %i.aqu, 0
  br i1 %i.aqv, label %bb.ko, label %.thread2373

bb.kk:                                            ; preds = %.preheader1635
  %i.aqw = call i32 @_pcre2_strncmp_c8_8(ptr noundef %i.apw, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @alasnames, i64 167), i64 noundef %i.apx) #17
  %i.aqx = icmp eq i32 %i.aqw, 0
  br i1 %i.aqx, label %bb.ko, label %.thread2373

bb.kl:                                            ; preds = %.preheader1635
  %i.aqy = call i32 @_pcre2_strncmp_c8_8(ptr noundef %i.apw, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @alasnames, i64 174), i64 noundef %i.apx) #17
  %i.aqz = icmp eq i32 %i.aqy, 0
  br i1 %i.aqz, label %bb.ko, label %.thread2373

.split2357:                                       ; preds = %bb.ke
  %i.ara = call i32 @_pcre2_strncmp_c8_8(ptr noundef %i.apw, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @alasnames, i64 177), i64 noundef %i.apx) #17
  %i.arb = icmp eq i32 %i.ara, 0
  br i1 %i.arb, label %bb.ko, label %.thread2373

bb.km:                                            ; preds = %.preheader1635
  %i.arc = call i32 @_pcre2_strncmp_c8_8(ptr noundef %i.apw, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @alasnames, i64 181), i64 noundef %i.apx) #17
  %i.ard = icmp eq i32 %i.arc, 0
  br i1 %i.ard, label %bb.ko, label %.thread2373

bb.kn:                                            ; preds = %.preheader1635
  %i.are = call i32 @_pcre2_strncmp_c8_8(ptr noundef %i.apw, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @alasnames, i64 192), i64 noundef %i.apx) #17
  %i.arf = icmp eq i32 %i.are, 0
  br i1 %i.arf, label %bb.ko, label %.thread2373

.thread2373:                                      ; preds = %.preheader1635, %bb.kj, %bb.ki, %bb.kh, %bb.kk, %bb.kl, %.split2357, %bb.kc, %.thread2356, %bb.km, %bb.kn
  store i32 195, ptr %i.e, align 4, !tbaa !28
  br label %.thread1444

bb.ko:                                            ; preds = %bb.kn, %bb.km, %.split2357, %bb.kl, %bb.kk, %.thread2356, %bb.kj, %bb.ki, %bb.kh, %bb.kg, %bb.kf, %bb.ke, %bb.kd, %bb.kc, %bb.kb, %bb.ka, %bb.jz
  %i.arg = phi i32 [ 128, %bb.jz ], [ 128, %bb.ka ], [ 198, %bb.kb ], [ 198, %bb.kc ], [ 128, %bb.kd ], [ 128, %bb.ke ], [ 128, %bb.kf ], [ 128, %bb.kg ], [ 198, %bb.kh ], [ 198, %bb.ki ], [ 128, %bb.kj ], [ 128, %.thread2356 ], [ 128, %bb.kk ], [ 128, %bb.kl ], [ 128, %.split2357 ], [ 128, %bb.km ], [ 128, %bb.kn ]
  %storemerge11271935.lcssa.wide = phi i64 [ 0, %bb.jz ], [ 1, %bb.ka ], [ 2, %bb.kb ], [ 3, %bb.kc ], [ 4, %bb.kd ], [ 5, %bb.ke ], [ 6, %bb.kf ], [ 7, %bb.kg ], [ 8, %bb.kh ], [ 9, %bb.ki ], [ 10, %bb.kj ], [ 11, %.thread2356 ], [ 12, %bb.kk ], [ 13, %bb.kl ], [ 14, %.split2357 ], [ 15, %bb.km ], [ 16, %bb.kn ] ; 4 uses
  %i.arh = trunc nuw nsw i64 %storemerge11271935.lcssa.wide to i32 ; 2 uses
  store i32 %i.arh, ptr %i.f, align 4, !tbaa !28
  %i.ari = getelementptr inbounds nuw [8 x i8], ptr @alasmeta, i64 %storemerge11271935.lcssa.wide
  %i.arj = getelementptr inbounds nuw i8, ptr %i.ari, i64 4
  %i.ark = load i32, ptr %i.arj, align 4, !tbaa !162 ; 2 uses
  br i1 %i.pu, label %bb.kp, label %bb.kr

bb.kp:                                            ; preds = %bb.ko
  %i.arl = lshr i64 45056, %storemerge11271935.lcssa.wide
  %i.arm = trunc i64 %i.arl to i1
  %i.arn = lshr i64 82700, %storemerge11271935.lcssa.wide
  %i.aro = trunc i64 %i.arn to i1
  %or.cond48 = select i1 %i.arm, i1 true, i1 %i.aro
  br i1 %or.cond48, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  store i32 %i.arg, ptr %i.e, align 4, !tbaa !28
  br label %.thread1444

bb.kr:                                            ; preds = %bb.kp, %bb.ko
  switch i32 %i.ark, label %bb.ks [
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
  %i.bgx = getelementptr inbounds nuw i8, ptr %.pre2180.pre, i64 %indvars.iv
  %i.bgy = load i8, ptr %i.bgx, align 1, !tbaa !29
  %i.bgz = add i8 %i.bgy, -48
  %or.cond1209 = icmp ult i8 %i.bgz, 10
  br i1 %or.cond1209, label %bb.qt, label %.split1440.loopexit.split.loop.exit2564

bb.qt:                                            ; preds = %bb.qs
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond2161.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond2161.not, label %.split1440, label %bb.qs, !llvm.loop !158

bb.qu:                                            ; preds = %bb.qn
  store i32 -2146369536, ptr %.9859, align 4, !tbaa !28
  %.pre2181.pre = load ptr, ptr %i.a, align 8, !tbaa !27
  br label %.split1440.thread

.split1440.thread:                                ; preds = %bb.qo, %bb.qu
  %.pre2181 = phi ptr [ %i.bgi, %bb.qo ], [ %.pre2181.pre, %bb.qu ]
  %i.bha = getelementptr inbounds nuw i8, ptr %.9859, i64 4
  %i.bhb = load i32, ptr %i.c, align 4, !tbaa !28
  %i.bhc = getelementptr inbounds nuw i8, ptr %.9859, i64 8
  store i32 %i.bhb, ptr %i.bha, align 4, !tbaa !28
  %i.bhd = load i64, ptr %i.o, align 8, !tbaa !25 ; 2 uses
  %i.bhe = lshr i64 %i.bhd, 32
  %i.bhf = trunc nuw i64 %i.bhe to i32
  %i.bhg = getelementptr inbounds nuw i8, ptr %.9859, i64 12
  store i32 %i.bhf, ptr %i.bhc, align 4, !tbaa !28
  %i.bhh = trunc i64 %i.bhd to i32
  %i.bhi = getelementptr inbounds nuw i8, ptr %.9859, i64 16
  store i32 %i.bhh, ptr %i.bhg, align 4, !tbaa !28
  br label %bb.qv

.split1440.loopexit.split.loop.exit2564:          ; preds = %bb.qs
  %i.bhj = trunc nuw nsw i64 %indvars.iv to i32
  br label %.split1440

.split1440:                                       ; preds = %bb.qt, %.split1440.loopexit.split.loop.exit2564, %bb.qr
  %storemerge.lcssa1940 = phi i32 [ 1, %bb.qr ], [ %i.bhj, %.split1440.loopexit.split.loop.exit2564 ], [ %i.bgj, %bb.qt ] ; 2 uses
  store i32 %storemerge.lcssa1940, ptr %i.f, align 4, !tbaa !28
  %i.bhk = load i8, ptr %.pre2180.pre, align 1, !tbaa !29
  %i.bhl = icmp eq i8 %i.bhk, 82
  %i.bhm = icmp sge i32 %storemerge.lcssa1940, %i.bgj
  %i.bhn = and i1 %i.bhm, %i.bhl
  %i.bho = select i1 %i.bhn, i32 -2146172928, i32 -2146369536
  store i32 %i.bho, ptr %.9859, align 4, !tbaa !28
  %i.bhp = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.bhq = getelementptr inbounds i8, ptr %i.bhp, i64 -1 ; 2 uses
  store ptr %i.bhq, ptr %i.a, align 8, !tbaa !27
  %i.bhr = getelementptr inbounds nuw i8, ptr %.9859, i64 4
  %i.bhs = load i32, ptr %i.c, align 4, !tbaa !28
  %i.bht = getelementptr inbounds nuw i8, ptr %.9859, i64 8
  store i32 %i.bhs, ptr %i.bhr, align 4, !tbaa !28
  %i.bhu = load i64, ptr %i.o, align 8, !tbaa !25 ; 2 uses
  %i.bhv = lshr i64 %i.bhu, 32
  %i.bhw = trunc nuw i64 %i.bhv to i32
  %i.bhx = getelementptr inbounds nuw i8, ptr %.9859, i64 12
  store i32 %i.bhw, ptr %i.bht, align 4, !tbaa !28
  %i.bhy = trunc i64 %i.bhu to i32
  %i.bhz = getelementptr inbounds nuw i8, ptr %.9859, i64 16
  store i32 %i.bhy, ptr %i.bhx, align 4, !tbaa !28
  br label %bb.qv

bb.qv:                                            ; preds = %.split1440, %.split1440.thread, %.thread1437, %bb.qi, %bb.po
  %i.bia = phi ptr [ %i.bdi, %bb.po ], [ %i.bfp, %bb.qi ], [ %.pre2181, %.split1440.thread ], [ %i.bgo, %.thread1437 ], [ %i.bhq, %.split1440 ] ; 3 uses
  %.42 = phi ptr [ %i.bdu, %bb.po ], [ %i.bft, %bb.qi ], [ %i.bhi, %.split1440.thread ], [ %i.bgv, %.thread1437 ], [ %i.bhz, %.split1440 ]
  %.not1081 = icmp ult ptr %i.bia, %i.ah
  br i1 %.not1081, label %bb.qw, label %bb.qx

bb.qw:                                            ; preds = %bb.qv
  %i.bib = load i8, ptr %i.bia, align 1, !tbaa !29
  %.not1082 = icmp eq i8 %i.bib, 41
  br i1 %.not1082, label %bb.qy, label %bb.qx

bb.qx:                                            ; preds = %bb.qw, %bb.qv
  store i32 124, ptr %i.e, align 4, !tbaa !28
  br label %.thread1444

bb.qy:                                            ; preds = %bb.qw
  %i.bic = getelementptr inbounds nuw i8, ptr %i.bia, i64 1
  store ptr %i.bic, ptr %i.a, align 8, !tbaa !27
  br label %.thread1299

.thread1352:                                      ; preds = %..thread1352_crit_edge, %bb.md
  %i.bid = phi ptr [ %.pre2177, %..thread1352_crit_edge ], [ %i.auf, %bb.md ]
  %i.bie = getelementptr inbounds nuw i8, ptr %.9859, i64 4
  store i32 -2147352576, ptr %.9859, align 4, !tbaa !28
  %i.bif = add i16 %.08022060, 1
  %i.big = getelementptr inbounds nuw i8, ptr %i.bid, i64 1
  store ptr %i.big, ptr %i.a, align 8, !tbaa !27
  br label %.thread1299

.thread1357:                                      ; preds = %..thread1357_crit_edge, %bb.md
  %i.bih = phi ptr [ %.pre2176, %..thread1357_crit_edge ], [ %i.auf, %bb.md ]
  %i.bii = getelementptr inbounds nuw i8, ptr %.9859, i64 4
  store i32 -2145189888, ptr %.9859, align 4, !tbaa !28
  %i.bij = getelementptr inbounds nuw i8, ptr %i.bih, i64 1
  br label %bb.rd

.thread1362:                                      ; preds = %..thread1362_crit_edge, %bb.md
  %i.bik = phi ptr [ %.pre2175, %..thread1362_crit_edge ], [ %i.auf, %bb.md ]
  %i.bil = getelementptr inbounds nuw i8, ptr %.9859, i64 4
  store i32 -2144927744, ptr %.9859, align 4, !tbaa !28
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bik, i64 1
  br label %bb.rd

.thread1367:                                      ; preds = %..thread1367_crit_edge, %bb.md
  %i.bin = phi ptr [ %.pre2174, %..thread1367_crit_edge ], [ %i.auf, %bb.md ]
  %i.bio = getelementptr inbounds nuw i8, ptr %.9859, i64 4
  store i32 -2145124352, ptr %.9859, align 4, !tbaa !28
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bin, i64 1
  br label %bb.rd

bb.qz:                                            ; preds = %bb.md
  %i.biq = ptrtoint ptr %i.auf to i64             ; 2 uses
  %i.bir = sub i64 %i.gx, %i.biq
  %i.bis = icmp slt i64 %i.bir, 2
  br i1 %i.bis, label %bb.rj, label %bb.ra

bb.ra:                                            ; preds = %bb.qz
  %i.bit = getelementptr inbounds nuw i8, ptr %i.aow, i64 2
  %i.biu = load i8, ptr %i.bit, align 1, !tbaa !29 ; 3 uses
  switch i8 %i.biu, label %bb.rj [
    i8 61, label %bb.rb
    i8 33, label %bb.rb
    i8 42, label %bb.rb
  ]

bb.rb:                                            ; preds = %bb.ra, %bb.ra, %bb.ra
  %i.biv = icmp eq i8 %i.biu, 61
  %i.biw = icmp eq i8 %i.biu, 33
  %i.bix = select i1 %i.biw, i32 -2144993280, i32 -2144862208
  %i.biy = select i1 %i.biv, i32 -2145058816, i32 %i.bix
  store i32 %i.biy, ptr %.9859, align 4, !tbaa !28
  br label %bb.rc

bb.rc:                                            ; preds = %bb.mb, %bb.rb
  %.pre-phi = phi i64 [ %.pre, %bb.mb ], [ %i.biq, %bb.rb ]
  %i.biz = phi ptr [ %i.aue, %bb.mb ], [ %i.auf, %bb.rb ]
  %.47 = getelementptr inbounds nuw i8, ptr %.9859, i64 4
  store i32 1, ptr %2, align 4, !tbaa !28
  %i.bja = load ptr, ptr %i.gr, align 8, !tbaa !58
  %i.bjb = ptrtoint ptr %i.bja to i64
  %i.bjc = sub i64 %.pre-phi, %i.bjb
  %i.bjd = add nsw i64 %i.bjc, -2                 ; 3 uses
  store i64 %i.bjd, ptr %i.o, align 8, !tbaa !25
  %i.bje = lshr i64 %i.bjd, 32
  %i.bjf = trunc nuw i64 %i.bje to i32
  %i.bjg = getelementptr inbounds nuw i8, ptr %.9859, i64 8
  store i32 %i.bjf, ptr %.47, align 4, !tbaa !28
  %i.bjh = trunc i64 %i.bjd to i32
  %i.bji = getelementptr inbounds nuw i8, ptr %.9859, i64 12
  store i32 %i.bjh, ptr %i.bjg, align 4, !tbaa !28
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.biz, i64 2
  br label %bb.rd

bb.rd:                                            ; preds = %bb.rc, %.thread1367, %.thread1362, %.thread1357
  %.sink2576 = phi ptr [ %i.bjj, %bb.rc ], [ %i.bip, %.thread1367 ], [ %i.bim, %.thread1362 ], [ %i.bij, %.thread1357 ]
  %.48 = phi ptr [ %i.bji, %bb.rc ], [ %i.bio, %.thread1367 ], [ %i.bil, %.thread1362 ], [ %i.bii, %.thread1357 ] ; 2 uses
  store ptr %.sink2576, ptr %i.a, align 8, !tbaa !27
  %i.bjk = add i16 %.08022060, 1                  ; 3 uses
  br i1 %i.pu, label %bb.re, label %.thread1299

bb.re:                                            ; preds = %bb.rd
  %i.bjl = icmp eq ptr %.07142084, null
  br i1 %i.bjl, label %bb.rf, label %bb.rg

bb.rf:                                            ; preds = %bb.re
  %i.bjm = load ptr, ptr %i.gg, align 8, !tbaa !59
  br label %bb.ri

bb.rg:                                            ; preds = %bb.re
  %i.bjn = getelementptr inbounds nuw i8, ptr %.07142084, i64 16 ; 2 uses
  %.not1129 = icmp ult ptr %i.bjn, %i.gn
  br i1 %.not1129, label %bb.ri, label %bb.rh

bb.rh:                                            ; preds = %bb.rg
  store i32 184, ptr %i.e, align 4, !tbaa !28
  br label %.thread1444

bb.ri:                                            ; preds = %bb.rg, %bb.rf
  %.15729 = phi ptr [ %i.bjm, %bb.rf ], [ %i.bjn, %bb.rg ] ; 5 uses
  store i16 %i.bjk, ptr %.15729, align 4, !tbaa !164
  %i.bjo = getelementptr inbounds nuw i8, ptr %.15729, i64 6
  store i16 2, ptr %i.bjo, align 2, !tbaa !165
  %i.bjp = and i32 %.19032028.fr, 17048808
  %i.bjq = getelementptr inbounds nuw i8, ptr %.15729, i64 8
  store i32 %i.bjp, ptr %i.bjq, align 4, !tbaa !166
  %i.bjr = and i32 %.08172056, 8064
  %i.bjs = getelementptr inbounds nuw i8, ptr %.15729, i64 12
  store i32 %i.bjr, ptr %i.bjs, align 4, !tbaa !167
  br label %.thread1299

bb.rj:                                            ; preds = %bb.md, %bb.qz, %bb.ra, %bb.nv
  %.1709 = phi i32 [ 62, %bb.qz ], [ 62, %bb.nv ], [ 62, %bb.ra ], [ 39, %bb.md ]
  %i.bjt = call fastcc i32 @read_name(ptr noundef %i.a, ptr noundef nonnull %i.ah, i32 noundef %.lobit, i32 noundef %.1709, ptr noundef %i.o, ptr noundef %i.g, ptr noundef %i.c, ptr noundef %i.e, ptr noundef %3)
  %.not1100 = icmp eq i32 %i.bjt, 0
  br i1 %.not1100, label %.thread1444, label %bb.rk

bb.rk:                                            ; preds = %bb.rj
  %i.bju = load i32, ptr %i.gy, align 4, !tbaa !37 ; 2 uses
  %i.bjv = icmp ugt i32 %i.bju, 65534
  br i1 %i.bjv, label %bb.rl, label %bb.rm

bb.rl:                                            ; preds = %bb.rk
  store i32 197, ptr %i.e, align 4, !tbaa !28
  br label %.thread1444

bb.rm:                                            ; preds = %bb.rk
  %i.bjw = add nuw nsw i32 %i.bju, 1              ; 2 uses
  store i32 %i.bjw, ptr %i.gy, align 4, !tbaa !37
  %5 = or disjoint i32 %i.bjw, -2146959360
  %i.bjx = getelementptr inbounds nuw i8, ptr %.9859, i64 4 ; 2 uses
  store i32 %5, ptr %.9859, align 4, !tbaa !28
  %i.bjy = add i16 %.08022060, 1                  ; 2 uses
  %i.bjz = load i16, ptr %i.gz, align 8, !tbaa !69 ; 2 uses
  %i.bka = icmp ugt i16 %i.bjz, 9999
  br i1 %i.bka, label %bb.rn, label %bb.ro

bb.rn:                                            ; preds = %bb.rm
  store i32 149, ptr %i.e, align 4, !tbaa !28
  br label %.thread1444

bb.ro:                                            ; preds = %bb.rm
  %i.bkb = load i32, ptr %i.c, align 4, !tbaa !28 ; 4 uses
  %i.bkc = add i32 %i.bkb, 3                      ; 2 uses
  %i.bkd = load i16, ptr %i.ha, align 2, !tbaa !70
  %i.bke = zext i16 %i.bkd to i32
  %i.bkf = icmp ugt i32 %i.bkc, %i.bke
  br i1 %i.bkf, label %bb.rp, label %bb.rq

bb.rp:                                            ; preds = %bb.ro
  %i.bkg = trunc i32 %i.bkc to i16
  store i16 %i.bkg, ptr %i.ha, align 2, !tbaa !70
  br label %bb.rq

bb.rq:                                            ; preds = %bb.rp, %bb.ro
  %.not2095 = icmp eq i16 %i.bjz, 0
  br i1 %.not2095, label %._crit_edge1969, label %.lr.ph1968

.lr.ph1968:                                       ; preds = %bb.rq
  %i.bkh = load ptr, ptr %i.hb, align 8, !tbaa !54
  %i.bki = load ptr, ptr %i.g, align 8
  %i.bkj = zext nneg i32 %i.bkb to i64
  %i.bkk = and i32 %.19032028.fr, 64
  %i.bkl = icmp eq i32 %i.bkk, 0
  br label %bb.rr

bb.rr:                                            ; preds = %.lr.ph1968, %bb.rz
  %.07311966 = phi ptr [ %i.bkh, %.lr.ph1968 ], [ %i.bld, %bb.rz ] ; 6 uses
  %.07641965 = phi i16 [ 0, %.lr.ph1968 ], [ %.1765, %bb.rz ] ; 2 uses
  %i.bkm = phi i32 [ 0, %.lr.ph1968 ], [ %i.blc, %bb.rz ] ; 2 uses
  %i.bkn = getelementptr inbounds nuw i8, ptr %.07311966, i64 12
  %i.bko = load i16, ptr %i.bkn, align 4, !tbaa !77
  %i.bkp = zext i16 %i.bko to i32
  %i.bkq = icmp eq i32 %i.bkb, %i.bkp
  br i1 %i.bkq, label %bb.rs, label %._crit_edge2182

._crit_edge2182:                                  ; preds = %bb.rr
  %.pre2183 = load i32, ptr %i.gy, align 4, !tbaa !37
  br label %bb.rx

bb.rs:                                            ; preds = %bb.rr
  %i.bkr = load ptr, ptr %.07311966, align 8, !tbaa !76
  %i.bks = call i32 @_pcre2_strncmp_8(ptr noundef %i.bki, ptr noundef %i.bkr, i64 noundef %i.bkj) #17
  %i.bkt = icmp eq i32 %i.bks, 0
  %.pre2184 = load i32, ptr %i.gy, align 4, !tbaa !37 ; 2 uses
  br i1 %i.bkt, label %bb.rt, label %bb.rx

bb.rt:                                            ; preds = %bb.rs
  %i.bku = getelementptr inbounds nuw i8, ptr %.07311966, i64 8
  %i.bkv = load i32, ptr %i.bku, align 8, !tbaa !78
  %i.bkw = icmp eq i32 %i.bkv, %.pre2184
  br i1 %i.bkw, label %.._crit_edge1969.loopexit_crit_edge, label %bb.ru

.._crit_edge1969.loopexit_crit_edge:              ; preds = %bb.rt
  %.pre2185.pre = load i16, ptr %i.gz, align 8, !tbaa !69
  br label %._crit_edge1969

bb.ru:                                            ; preds = %bb.rt
  br i1 %i.bkl, label %bb.rv, label %bb.rw

bb.rv:                                            ; preds = %bb.ru
  store i32 143, ptr %i.e, align 4, !tbaa !28
  br label %.thread1444

bb.rw:                                            ; preds = %bb.ru
  %i.bkx = getelementptr inbounds nuw i8, ptr %.07311966, i64 14
  store i16 1, ptr %i.bkx, align 2, !tbaa !82
  store i32 1, ptr %i.hc, align 4, !tbaa !44
  br label %bb.rz

bb.rx:                                            ; preds = %._crit_edge2182, %bb.rs
  %i.bky = phi i32 [ %.pre2183, %._crit_edge2182 ], [ %.pre2184, %bb.rs ]
  %i.bkz = getelementptr inbounds nuw i8, ptr %.07311966, i64 8
  %i.bla = load i32, ptr %i.bkz, align 8, !tbaa !78
  %i.blb = icmp eq i32 %i.bla, %i.bky
  br i1 %i.blb, label %bb.ry, label %bb.rz

bb.ry:                                            ; preds = %bb.rx
  store i32 165, ptr %i.e, align 4, !tbaa !28
  br label %.thread1444

bb.rz:                                            ; preds = %bb.rw, %bb.rx
  %.1765 = phi i16 [ 1, %bb.rw ], [ %.07641965, %bb.rx ] ; 2 uses
  %i.blc = add nuw nsw i32 %i.bkm, 1              ; 3 uses
  %i.bld = getelementptr inbounds nuw i8, ptr %.07311966, i64 16
  %i.ble = load i16, ptr %i.gz, align 8, !tbaa !69 ; 2 uses
  %i.blf = zext i16 %i.ble to i32
  %i.blg = icmp samesign ult i32 %i.blc, %i.blf
  br i1 %i.blg, label %bb.rr, label %._crit_edge1969, !llvm.loop !159

._crit_edge1969:                                  ; preds = %bb.rz, %.._crit_edge1969.loopexit_crit_edge, %bb.rq
  %i.blh = phi i16 [ 0, %bb.rq ], [ %.pre2185.pre, %.._crit_edge1969.loopexit_crit_edge ], [ %i.ble, %bb.rz ] ; 2 uses
  %.lcssa1962 = phi i32 [ 0, %bb.rq ], [ %i.bkm, %.._crit_edge1969.loopexit_crit_edge ], [ %i.blc, %bb.rz ] ; 2 uses
  %.0764.lcssa = phi i16 [ 0, %bb.rq ], [ %.07641965, %.._crit_edge1969.loopexit_crit_edge ], [ %.1765, %bb.rz ]
  store i32 %.lcssa1962, ptr %i.f, align 4
  %i.bli = zext i16 %i.blh to i32                 ; 2 uses
  %i.blj = icmp slt i32 %.lcssa1962, %i.bli
  br i1 %i.blj, label %.thread1299, label %bb.sa

bb.sa:                                            ; preds = %._crit_edge1969
  %i.blk = load i32, ptr %i.hd, align 8, !tbaa !55 ; 2 uses
  %.not1101 = icmp ugt i32 %i.blk, %i.bli
  br i1 %.not1101, label %._crit_edge2186, label %bb.sb

._crit_edge2186:                                  ; preds = %bb.sa
  %.pre2187 = load ptr, ptr %i.hb, align 8, !tbaa !54
  br label %bb.sf

bb.sb:                                            ; preds = %bb.sa
  %i.bll = shl nuw nsw i32 %i.blk, 1              ; 2 uses
  %i.blm = load ptr, ptr %3, align 8, !tbaa !43   ; 2 uses
  %i.bln = load ptr, ptr %i.blm, align 8, !tbaa !65
  %i.blo = zext nneg i32 %i.bll to i64
  %i.blp = shl nuw nsw i64 %i.blo, 4
  %i.blq = getelementptr inbounds nuw i8, ptr %i.blm, i64 16
  %i.blr = load ptr, ptr %i.blq, align 8, !tbaa !66
  %i.bls = call ptr %i.bln(i64 noundef %i.blp, ptr noundef %i.blr) #17 ; 4 uses
  %.not1102 = icmp eq ptr %i.bls, null
  br i1 %.not1102, label %.thread1441, label %bb.sc

.thread1441:                                      ; preds = %bb.sb
  store i32 121, ptr %i.e, align 4, !tbaa !28
  br label %.thread1444

bb.sc:                                            ; preds = %bb.sb
  %i.blt = load ptr, ptr %i.hb, align 8, !tbaa !54
  %i.blu = load i32, ptr %i.hd, align 8, !tbaa !55
  %i.blv = zext i32 %i.blu to i64
  %i.blw = shl nuw nsw i64 %i.blv, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bls, ptr align 8 %i.blt, i64 %i.blw, i1 false)
  %i.blx = load i32, ptr %i.hd, align 8, !tbaa !55
  %i.bly = icmp ugt i32 %i.blx, 20
  br i1 %i.bly, label %bb.sd, label %bb.se

bb.sd:                                            ; preds = %bb.sc
  %i.blz = load ptr, ptr %3, align 8, !tbaa !43   ; 2 uses
  %i.bma = getelementptr inbounds nuw i8, ptr %i.blz, i64 8
  %i.bmb = load ptr, ptr %i.bma, align 8, !tbaa !81
  %i.bmc = load ptr, ptr %i.hb, align 8, !tbaa !54
  %i.bmd = getelementptr inbounds nuw i8, ptr %i.blz, i64 16
  %i.bme = load ptr, ptr %i.bmd, align 8, !tbaa !66
  call void %i.bmb(ptr noundef %i.bmc, ptr noundef %i.bme) #17
  br label %bb.se

bb.se:                                            ; preds = %bb.sc, %bb.sd
  store ptr %i.bls, ptr %i.hb, align 8, !tbaa !54
  store i32 %i.bll, ptr %i.hd, align 8, !tbaa !55
  %.pre2188 = load i16, ptr %i.gz, align 8, !tbaa !69
  br label %bb.sf

bb.sf:                                            ; preds = %._crit_edge2186, %bb.se
  %i.bmf = phi i16 [ %i.blh, %._crit_edge2186 ], [ %.pre2188, %bb.se ] ; 2 uses
  %i.bmg = phi ptr [ %.pre2187, %._crit_edge2186 ], [ %i.bls, %bb.se ]
  %i.bmh = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.bmi = zext i16 %i.bmf to i64
  %i.bmj = getelementptr inbounds nuw [16 x i8], ptr %i.bmg, i64 %i.bmi ; 4 uses
  store ptr %i.bmh, ptr %i.bmj, align 8, !tbaa !76
  %i.bmk = trunc i32 %i.bkb to i16
  %i.bml = getelementptr inbounds nuw i8, ptr %i.bmj, i64 12
  store i16 %i.bmk, ptr %i.bml, align 4, !tbaa !77
  %i.bmm = load i32, ptr %i.gy, align 4, !tbaa !37
  %i.bmn = getelementptr inbounds nuw i8, ptr %i.bmj, i64 8
  store i32 %i.bmm, ptr %i.bmn, align 8, !tbaa !78
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.bmj, i64 14
  store i16 %.0764.lcssa, ptr %i.bmo, align 2, !tbaa !82
  %i.bmp = add i16 %i.bmf, 1
  store i16 %i.bmp, ptr %i.gz, align 8, !tbaa !69
  br label %.thread1299

bb.sg:                                            ; preds = %bb.cv, %thread-pre-split1262
  %.not1058 = icmp eq ptr %.07142084, null
  br i1 %.not1058, label %bb.sm, label %bb.sh

bb.sh:                                            ; preds = %bb.sg
  %i.bmq = load i16, ptr %.07142084, align 4, !tbaa !164
  %i.bmr = icmp eq i16 %i.bmq, %.08022060
  br i1 %i.bmr, label %bb.si, label %bb.sm

bb.si:                                            ; preds = %bb.sh
  %i.bms = getelementptr inbounds nuw i8, ptr %.07142084, i64 6
  %i.bmt = load i16, ptr %i.bms, align 2, !tbaa !165
  %i.bmu = and i16 %i.bmt, 1
  %.not1059 = icmp eq i16 %i.bmu, 0
  br i1 %.not1059, label %bb.sm, label %bb.sj

bb.sj:                                            ; preds = %bb.si
  %i.bmv = load i32, ptr %i.gy, align 4, !tbaa !37 ; 2 uses
  %i.bmw = getelementptr inbounds nuw i8, ptr %.07142084, i64 4 ; 2 uses
  %i.bmx = load i16, ptr %i.bmw, align 4, !tbaa !171
  %i.bmy = zext i16 %i.bmx to i32
end_hunk_1
