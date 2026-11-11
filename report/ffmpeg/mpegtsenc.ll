Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpegtsenc?download=true
inline.NumInlined: 82
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@mpegts_write_pes:bb.a
bb.fi:                                            ; preds = %bb.fh
  %i.ajs = or disjoint i8 %i.ajj, 32              ; 2 uses
  store i8 %i.ajs, ptr %i.cp, align 1, !tbaa !24
  store i8 1, ptr %i.cr, align 4, !tbaa !24
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %._crit_edge.i410
  %i.ajt = phi i8 [ %i.ajj, %._crit_edge.i410 ], [ %i.ajs, %bb.fi ]
  %i.aju = phi i8 [ %i.ajr, %._crit_edge.i410 ], [ 64, %bb.fi ]
  store i8 %i.aju, ptr %i.ct, align 1, !tbaa !24
  %i.ajv = load i8, ptr %i.cr, align 4, !tbaa !24
  %i.ajw = zext i8 %i.ajv to i64
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.ajw
  br label %get_ts_payload_start.exit416

get_ts_payload_start.exit416:                     ; preds = %bb.fj, %bb.fg
  %i.ajy = phi i8 [ %i.ajj, %bb.fg ], [ %i.ajt, %bb.fj ] ; 3 uses
  %.1323 = phi ptr [ %.0322, %bb.fg ], [ %i.ajx, %bb.fj ]
  %.6 = phi i32 [ %.4306, %bb.fg ], [ %spec.select390, %bb.fj ]
  %.not373 = icmp eq i32 %.6, 0
  br i1 %.not373, label %bb.fp, label %bb.fk

bb.fk:                                            ; preds = %get_ts_payload_start.exit416
  %i.ajz = and i8 %i.ajy, 32
  %i.aka = icmp eq i8 %i.ajz, 0
  br i1 %i.aka, label %bb.fl, label %._crit_edge.i417

._crit_edge.i417:                                 ; preds = %bb.fk
  %.pre.i419 = load i8, ptr %i.ct, align 1, !tbaa !24
  %i.akb = or i8 %.pre.i419, 16
  %.pre561 = load i8, ptr %i.cr, align 4
  %i.akc = zext i8 %.pre561 to i64
  br label %set_af_flag.exit420

bb.fl:                                            ; preds = %bb.fk
  %i.akd = or disjoint i8 %i.ajy, 32              ; 2 uses
  store i8 %i.akd, ptr %i.cp, align 1, !tbaa !24
  store i8 1, ptr %i.cr, align 4, !tbaa !24
  br label %set_af_flag.exit420

set_af_flag.exit420:                              ; preds = %._crit_edge.i417, %bb.fl
  %i.ake = phi i64 [ %i.akc, %._crit_edge.i417 ], [ 1, %bb.fl ]
  %i.akf = phi i8 [ %i.ajy, %._crit_edge.i417 ], [ %i.akd, %bb.fl ]
  %i.akg = phi i8 [ %i.akb, %._crit_edge.i417 ], [ 16, %bb.fl ]
  store i8 %i.akg, ptr %i.ct, align 1, !tbaa !24
  %i.akh = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.ake ; 6 uses
  %.not374 = icmp ne i64 %.0334522, -9223372036854775808
  %i.aki = sdiv i64 %.5, 300                      ; 6 uses
  %i.akj = srem i64 %.5, 300                      ; 2 uses
  %i.akk = icmp slt i64 %.0334522, %i.aki
  %or.cond392 = select i1 %.not374, i1 %i.akk, i1 false
  br i1 %or.cond392, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %set_af_flag.exit420
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 24, ptr noundef nonnull @.str.78) #12
  %.pre562 = load i8, ptr %i.cp, align 1, !tbaa !24
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %set_af_flag.exit420
  %i.akl = phi i8 [ %.pre562, %bb.fm ], [ %i.akf, %set_af_flag.exit420 ]
  %i.akm = lshr i64 %i.aki, 25
  %i.akn = trunc i64 %i.akm to i8
  %.sroa.gep555 = getelementptr inbounds nuw i8, ptr %i.akh, i64 1
  store i8 %i.akn, ptr %i.akh, align 1, !tbaa !24
  %i.ako = lshr i64 %i.aki, 17
  %i.akp = trunc i64 %i.ako to i8
  %.sroa.gep552 = getelementptr inbounds nuw i8, ptr %i.akh, i64 2
  store i8 %i.akp, ptr %.sroa.gep555, align 1, !tbaa !24
  %i.akq = lshr i64 %i.aki, 9
  %i.akr = trunc i64 %i.akq to i8
  %.sroa.gep549 = getelementptr inbounds nuw i8, ptr %i.akh, i64 3
  store i8 %i.akr, ptr %.sroa.gep552, align 1, !tbaa !24
  %i.aks = lshr i64 %i.aki, 1
  %i.akt = trunc i64 %i.aks to i8
  %.sroa.gep546 = getelementptr inbounds nuw i8, ptr %i.akh, i64 4
  store i8 %i.akt, ptr %.sroa.gep549, align 1, !tbaa !24
  %i.aku = shl nsw i64 %i.aki, 7
  %i.akv = lshr i64 %i.akj, 8
  %i.akw = or i64 %i.aku, %i.akv
  %i.akx = trunc i64 %i.akw to i8
  %i.aky = or i8 %i.akx, 126
  %.sroa.gep544 = getelementptr inbounds nuw i8, ptr %i.akh, i64 5
  store i8 %i.aky, ptr %.sroa.gep546, align 1, !tbaa !24
  %i.akz = trunc i64 %i.akj to i8
  store i8 %i.akz, ptr %.sroa.gep544, align 1, !tbaa !24
  %i.ala = and i8 %i.akl, 32
  %.not.i424 = icmp eq i8 %i.ala, 0
  br i1 %.not.i424, label %bb.fo, label %get_ts_payload_start.exit427

bb.fo:                                            ; preds = %bb.fn
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.77, i32 noundef 1443) #12
  call void @abort() #14
  unreachable

get_ts_payload_start.exit427:                     ; preds = %bb.fn
  %i.alb = load i8, ptr %i.cr, align 4, !tbaa !24
  %i.alc = add i8 %i.alb, 6                       ; 2 uses
  store i8 %i.alc, ptr %i.cr, align 4, !tbaa !24
  %i.ald = zext i8 %i.alc to i64
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.ald
  br label %bb.fp

bb.fp:                                            ; preds = %get_ts_payload_start.exit427, %get_ts_payload_start.exit416
  %.2324 = phi ptr [ %i.ale, %get_ts_payload_start.exit427 ], [ %.1323, %get_ts_payload_start.exit416 ] ; 24 uses
  br i1 %i.aix, label %bb.fq, label %bb.gp

bb.fq:                                            ; preds = %bb.fp
  %i.alf = getelementptr inbounds nuw i8, ptr %.2324, i64 1
  store i8 0, ptr %.2324, align 1, !tbaa !24
  %i.alg = getelementptr inbounds nuw i8, ptr %.2324, i64 2
  store i8 0, ptr %i.alf, align 1, !tbaa !24
  %i.alh = getelementptr inbounds nuw i8, ptr %.2324, i64 3 ; 2 uses
  store i8 1, ptr %i.alg, align 1, !tbaa !24
  %.val405 = load ptr, ptr %i.n, align 8, !tbaa !39
  %.val406 = load ptr, ptr %i.p, align 8, !tbaa !51 ; 4 uses
  %i.ali = load i32, ptr %.val406, align 8, !tbaa !76
  switch i32 %i.ali, label %get_pes_stream_id.exit.thread [
    i32 0, label %bb.fr
    i32 1, label %bb.fs
    i32 2, label %bb.fv
  ]

bb.fr:                                            ; preds = %bb.fq
  %i.alj = getelementptr inbounds nuw i8, ptr %.val406, i64 4
  %i.alk = load i32, ptr %i.alj, align 4, !tbaa !54
  %i.all = icmp eq i32 %i.alk, 116
  %spec.select = select i1 %i.all, i32 253, i32 224
  br label %get_pes_stream_id.exit.thread

bb.fs:                                            ; preds = %bb.fq
  %i.alm = getelementptr inbounds nuw i8, ptr %.val406, i64 4
  %i.aln = load i32, ptr %i.alm, align 4, !tbaa !54 ; 2 uses
  %.off.i = add i32 %i.aln, -86016
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %get_pes_stream_id.exit.thread, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.alo = icmp eq i32 %i.aln, 86019
  br i1 %i.alo, label %bb.fu, label %bb.fw

bb.fu:                                            ; preds = %bb.ft
  %i.alp = getelementptr inbounds nuw i8, ptr %.val405, i64 240
  %i.alq = load i32, ptr %i.alp, align 8, !tbaa !68
  %.not.i430 = icmp eq i32 %i.alq, 0
  br i1 %.not.i430, label %bb.fw, label %get_pes_stream_id.exit.thread

bb.fv:                                            ; preds = %bb.fq
  %i.alr = getelementptr inbounds nuw i8, ptr %.val406, i64 4
  %i.als = load i32, ptr %i.alr, align 4, !tbaa !54 ; 2 uses
  %i.alt = icmp eq i32 %i.als, 98313
  br i1 %i.alt, label %get_pes_stream_id.exit.thread, label %bb.fx

bb.fw:                                            ; preds = %bb.fu, %bb.ft
  br label %get_pes_stream_id.exit.thread

bb.fx:                                            ; preds = %bb.fv
  %i.alu = icmp eq i32 %i.als, 98311
  %i.alv = icmp eq i32 %.0329524, 189
  %or.cond.i428 = and i1 %i.alv, %i.alu
  br i1 %or.cond.i428, label %.sink.split, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %.not22.i = icmp eq i32 %.0329524, -1
  br i1 %.not22.i, label %get_pes_stream_id.exit.thread, label %get_pes_stream_id.exit

get_pes_stream_id.exit.thread:                    ; preds = %bb.fr, %bb.fv, %bb.fw, %bb.fu, %bb.fs, %bb.fq, %bb.fy
  %.0.i429.ph = phi i32 [ %spec.select, %bb.fr ], [ 252, %bb.fy ], [ 189, %bb.fq ], [ 192, %bb.fs ], [ 253, %bb.fu ], [ 189, %bb.fw ], [ 189, %bb.fv ] ; 2 uses
  %i.alw = trunc nuw i32 %.0.i429.ph to i8
  br label %.sink.split

get_pes_stream_id.exit:                           ; preds = %bb.fy
  %i.alx = trunc nuw i32 %.0329524 to i8
  %i.aly = getelementptr inbounds nuw i8, ptr %.2324, i64 4 ; 2 uses
  store i8 %i.alx, ptr %i.alh, align 1, !tbaa !24
  switch i32 %.0329524, label %bb.fz [
    i32 255, label %bb.go
    i32 248, label %bb.go
    i32 242, label %bb.go
    i32 241, label %bb.go
    i32 240, label %bb.go
    i32 191, label %bb.go
    i32 190, label %bb.go
    i32 188, label %bb.go
  ]

.sink.split:                                      ; preds = %bb.fx, %get_pes_stream_id.exit.thread
  %.sink = phi i8 [ %i.alw, %get_pes_stream_id.exit.thread ], [ -67, %bb.fx ]
  %spec.select394476.ph = phi i64 [ %.0334522, %get_pes_stream_id.exit.thread ], [ -9223372036854775808, %bb.fx ]
  %spec.select393474.ph = phi i64 [ %.0338521, %get_pes_stream_id.exit.thread ], [ -9223372036854775808, %bb.fx ]
  %.0.i429472.ph = phi i32 [ %.0.i429.ph, %get_pes_stream_id.exit.thread ], [ 189, %bb.fx ]
  %i.alz = getelementptr inbounds nuw i8, ptr %.2324, i64 4
  store i8 %.sink, ptr %i.alh, align 1, !tbaa !24
  br label %bb.fz

bb.fz:                                            ; preds = %.sink.split, %get_pes_stream_id.exit
  %spec.select394476 = phi i64 [ %.0334522, %get_pes_stream_id.exit ], [ %spec.select394476.ph, %.sink.split ] ; 9 uses
  %spec.select393474 = phi i64 [ %.0338521, %get_pes_stream_id.exit ], [ %spec.select393474.ph, %.sink.split ] ; 9 uses
  %i.ama = phi ptr [ %i.aly, %get_pes_stream_id.exit ], [ %i.alz, %.sink.split ]
  %.0.i429472 = phi i32 [ %.0329524, %get_pes_stream_id.exit ], [ %.0.i429472.ph, %.sink.split ] ; 3 uses
  %i.amb = icmp eq i64 %spec.select393474, -9223372036854775808 ; 4 uses
  %i.amc = icmp eq i64 %spec.select394476, -9223372036854775808
  %.not376 = icmp eq i64 %spec.select394476, %spec.select393474
  %i.amd = or i1 %i.amc, %.not376                 ; 3 uses
  %or.cond397 = or i1 %i.amb, %i.amd
  %spec.select395 = select i1 %i.amd, i32 5, i32 10
  %.1309 = select i1 %i.amb, i32 0, i32 %spec.select395 ; 5 uses
  %.1309.a = select i1 %i.amd, i32 128, i32 192
  %.1299 = select i1 %i.amb, i32 0, i32 %.1309.a  ; 5 uses
  %i.ame = load ptr, ptr %i.p, align 8, !tbaa !51 ; 3 uses
  %i.amf = load i32, ptr %i.ame, align 8, !tbaa !76 ; 2 uses
  %i.amg = icmp ne i32 %i.amf, 0                  ; 2 uses
  br i1 %i.amg, label %bb.gc, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.amh = getelementptr inbounds nuw i8, ptr %i.ame, i64 4
  %i.ami = load i32, ptr %i.amh, align 4, !tbaa !54
  %i.amj = icmp eq i32 %i.ami, 116
  br i1 %i.amj, label %bb.gb, label %.thread603

bb.gb:                                            ; preds = %bb.ga
  %i.amk = or disjoint i32 %.1299, 1
  %i.aml = add nuw nsw i32 %.1309, 3
  br label %.thread603

bb.gc:                                            ; preds = %bb.fz
  %i.amm = load i32, ptr %i.cn, align 8, !tbaa !68
  %.not377 = icmp ne i32 %i.amm, 0
  %i.amn = icmp eq i32 %i.amf, 1
  %or.cond494 = and i1 %i.amn, %.not377
  br i1 %or.cond494, label %bb.gd, label %.thread603

bb.gd:                                            ; preds = %bb.gc
  %i.amo = getelementptr inbounds nuw i8, ptr %i.ame, i64 4
  %i.amp = load i32, ptr %i.amo, align 4, !tbaa !54
  %i.amq = icmp eq i32 %i.amp, 86019
  br i1 %i.amq, label %bb.ge, label %.thread603

bb.ge:                                            ; preds = %bb.gd
  %i.amr = or disjoint i32 %.1299, 1
  %i.ams = add nuw nsw i32 %.1309, 3
  br label %.thread603

.thread603:                                       ; preds = %bb.ga, %bb.gb, %bb.ge, %bb.gd, %bb.gc
  %.3311 = phi i32 [ %i.ams, %bb.ge ], [ %.1309, %bb.gd ], [ %.1309, %bb.gc ], [ %.1309, %bb.ga ], [ %i.aml, %bb.gb ] ; 2 uses
  %.3301 = phi i32 [ %i.amr, %bb.ge ], [ %.1299, %bb.gd ], [ %.1299, %bb.gc ], [ %.1299, %bb.ga ], [ %i.amk, %bb.gb ] ; 2 uses
  %.not502 = phi i1 [ false, %bb.ge ], [ true, %bb.gd ], [ true, %bb.gc ], [ true, %bb.ga ], [ false, %bb.gb ]
  %i.amt = sub nuw nsw i32 36, %.3311
  %i.amu = zext nneg i32 %i.amt to i64            ; 2 uses
  %.4312 = select i1 %i.u, i32 36, i32 %.3311     ; 2 uses
  %i.amv = add nuw nsw i32 %.0342520, 1
  %i.amw = add nuw nsw i32 %.0342520, %.0313.v
  %.0313 = add nuw nsw i32 %i.amw, %.4312         ; 2 uses
  %i.amx = icmp slt i32 %.0313, 65536
  %i.amy = load i32, ptr %i.cv, align 8, !tbaa !222
  %.not378 = icmp eq i32 %i.amy, 0
  %i.amz = or i1 %i.amg, %.not378
  %i.ana = select i1 %i.amz, i1 %i.amx, i1 false
  %spec.select495 = select i1 %i.ana, i32 %.0313, i32 0 ; 2 uses
  %i.anb = lshr i32 %spec.select495, 8
  %i.anc = trunc i32 %i.anb to i8
  %i.and = getelementptr inbounds nuw i8, ptr %.2324, i64 5
  store i8 %i.anc, ptr %i.ama, align 1, !tbaa !24
  %i.ane = trunc i32 %spec.select495 to i8
  %i.anf = getelementptr inbounds nuw i8, ptr %.2324, i64 6
  store i8 %i.ane, ptr %i.and, align 1, !tbaa !24
  %i.ang = load ptr, ptr %i.p, align 8, !tbaa !51
  %i.anh = load i32, ptr %i.ang, align 8, !tbaa !76
  %i.ani = and i32 %i.anh, -2
  %switch = icmp eq i32 %i.ani, 2
  %spec.select403 = select i1 %switch, i8 -124, i8 -128
  %i.anj = getelementptr inbounds nuw i8, ptr %.2324, i64 7
  store i8 %spec.select403, ptr %i.anf, align 1, !tbaa !24
  %i.ank = trunc nuw i32 %.3301 to i8
  %i.anl = getelementptr inbounds nuw i8, ptr %.2324, i64 8
  store i8 %i.ank, ptr %i.anj, align 1, !tbaa !24
  %i.anm = trunc nuw nsw i32 %.4312 to i8
  %i.ann = getelementptr inbounds nuw i8, ptr %.2324, i64 9 ; 2 uses
  store i8 %i.anm, ptr %i.anl, align 1, !tbaa !24
  br i1 %i.amb, label %.thread609, label %bb.gf

bb.gf:                                            ; preds = %.thread603
  %i.ano = lshr i32 %.3301, 2
  %i.anp = and i32 %i.ano, 240
  %i.anq = lshr i64 %spec.select393474, 29
  %i.anr = trunc i64 %i.anq to i32
  %i.ans = and i32 %i.anr, 14
  %i.ant = or disjoint i32 %i.anp, %i.ans
  %i.anu = trunc nuw nsw i32 %i.ant to i8
  %i.anv = or disjoint i8 %i.anu, 1
  %i.anw = getelementptr inbounds nuw i8, ptr %.2324, i64 10
  store i8 %i.anv, ptr %i.ann, align 1, !tbaa !24
  %i.anx = lshr i64 %spec.select393474, 22
  %i.any = trunc i64 %i.anx to i8
  %i.anz = getelementptr inbounds nuw i8, ptr %.2324, i64 11
  store i8 %i.any, ptr %i.anw, align 1, !tbaa !24
  %i.aoa = lshr i64 %spec.select393474, 14
  %i.aob = trunc i64 %i.aoa to i8
  %i.aoc = or i8 %i.aob, 1
  %i.aod = getelementptr inbounds nuw i8, ptr %.2324, i64 12
  store i8 %i.aoc, ptr %i.anz, align 1, !tbaa !24
  %.tr.i = trunc i64 %spec.select393474 to i32
  %i.aoe = shl i32 %.tr.i, 1                      ; 2 uses
  %i.aof = lshr i32 %i.aoe, 8
  %i.aog = trunc i32 %i.aof to i8
  %i.aoh = getelementptr inbounds nuw i8, ptr %.2324, i64 13
  store i8 %i.aog, ptr %i.aod, align 1, !tbaa !24
  %i.aoi = trunc i32 %i.aoe to i8
  %i.aoj = or disjoint i8 %i.aoi, 1
  store i8 %i.aoj, ptr %i.aoh, align 1, !tbaa !24
  %i.aok = getelementptr inbounds nuw i8, ptr %.2324, i64 14 ; 2 uses
  br i1 %or.cond397, label %.thread609, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.aol = lshr i64 %spec.select394476, 29
  %i.aom = trunc i64 %i.aol to i8
  %i.aon = and i8 %i.aom, 14
  %i.aoo = or disjoint i8 %i.aon, 17
  %i.aop = getelementptr inbounds nuw i8, ptr %.2324, i64 15
  store i8 %i.aoo, ptr %i.aok, align 1, !tbaa !24
  %i.aoq = lshr i64 %spec.select394476, 22
  %i.aor = trunc i64 %i.aoq to i8
  %i.aos = getelementptr inbounds nuw i8, ptr %.2324, i64 16
  store i8 %i.aor, ptr %i.aop, align 1, !tbaa !24
  %i.aot = lshr i64 %spec.select394476, 14
  %i.aou = trunc i64 %i.aot to i8
  %i.aov = or i8 %i.aou, 1
  %i.aow = getelementptr inbounds nuw i8, ptr %.2324, i64 17
  store i8 %i.aov, ptr %i.aos, align 1, !tbaa !24
  %.tr.i432 = trunc i64 %spec.select394476 to i32
  %i.aox = shl i32 %.tr.i432, 1                   ; 2 uses
  %i.aoy = lshr i32 %i.aox, 8
  %i.aoz = trunc i32 %i.aoy to i8
  %i.apa = getelementptr inbounds nuw i8, ptr %.2324, i64 18
  store i8 %i.aoz, ptr %i.aow, align 1, !tbaa !24
  %i.apb = trunc i32 %i.aox to i8
  %i.apc = or disjoint i8 %i.apb, 1
  store i8 %i.apc, ptr %i.apa, align 1, !tbaa !24
  %i.apd = getelementptr inbounds nuw i8, ptr %.2324, i64 19
  br label %.thread609

.thread609:                                       ; preds = %.thread603, %bb.gg, %bb.gf
  %.4326 = phi ptr [ %i.apd, %bb.gg ], [ %i.aok, %bb.gf ], [ %i.ann, %.thread603 ] ; 6 uses
  br i1 %.not502, label %.thread477, label %bb.gh

bb.gh:                                            ; preds = %.thread609
  %i.ape = load ptr, ptr %i.p, align 8, !tbaa !51
  %i.apf = getelementptr inbounds nuw i8, ptr %i.ape, i64 4
  %i.apg = load i32, ptr %i.apf, align 4, !tbaa !54
  %i.aph = icmp eq i32 %i.apg, 116
  br i1 %i.aph, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  %i.api = getelementptr inbounds nuw i8, ptr %.4326, i64 1
  store i8 1, ptr %.4326, align 1, !tbaa !24
  %i.apj = getelementptr inbounds nuw i8, ptr %.4326, i64 2
  store i8 -127, ptr %i.api, align 1, !tbaa !24
  %i.apk = getelementptr inbounds nuw i8, ptr %.4326, i64 3
  store i8 96, ptr %i.apj, align 1, !tbaa !24
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh
  %.5327 = phi ptr [ %i.apk, %bb.gi ], [ %.4326, %bb.gh ] ; 6 uses
  %i.apl = load i32, ptr %i.cn, align 8, !tbaa !68
  %.not503 = icmp eq i32 %i.apl, 0
  br i1 %.not503, label %.thread477, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.apm = load ptr, ptr %i.p, align 8, !tbaa !51
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apm, i64 4
  %i.apo = load i32, ptr %i.apn, align 4, !tbaa !54
  %i.app = icmp eq i32 %i.apo, 86019
  br i1 %i.app, label %bb.gl, label %.thread477

bb.gl:                                            ; preds = %bb.gk
  %i.apq = getelementptr inbounds nuw i8, ptr %.5327, i64 1
  store i8 1, ptr %.5327, align 1, !tbaa !24
  %i.apr = getelementptr inbounds nuw i8, ptr %.5327, i64 2
  store i8 -127, ptr %i.apq, align 1, !tbaa !24
  %i.aps = getelementptr inbounds nuw i8, ptr %.5327, i64 3
  store i8 113, ptr %i.apr, align 1, !tbaa !24
  br label %.thread477

.thread477:                                       ; preds = %.thread609, %bb.gl, %bb.gk, %bb.gj
  %.6328 = phi ptr [ %i.aps, %bb.gl ], [ %.5327, %bb.gk ], [ %.5327, %bb.gj ], [ %.4326, %.thread609 ] ; 6 uses
  br i1 %i.t, label %.thread480, label %bb.gm

.thread480:                                       ; preds = %.thread477
  %i.apt = getelementptr inbounds nuw i8, ptr %.6328, i64 1
  store i8 32, ptr %.6328, align 1, !tbaa !24
  %i.apu = getelementptr inbounds nuw i8, ptr %.6328, i64 2
  store i8 0, ptr %i.apt, align 1, !tbaa !24
  br label %bb.gp

bb.gm:                                            ; preds = %.thread477
  br i1 %i.u, label %bb.gn, label %bb.gp

bb.gn:                                            ; preds = %bb.gm
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.6328, i8 -1, i64 %i.amu, i1 false)
  %i.apv = getelementptr inbounds nuw i8, ptr %.6328, i64 %i.amu
  br label %bb.gp

bb.go:                                            ; preds = %get_pes_stream_id.exit, %get_pes_stream_id.exit, %get_pes_stream_id.exit, %get_pes_stream_id.exit, %get_pes_stream_id.exit, %get_pes_stream_id.exit, %get_pes_stream_id.exit, %get_pes_stream_id.exit
  %i.apw = lshr i32 %.0342520, 8
  %i.apx = trunc i32 %i.apw to i8
  %i.apy = getelementptr inbounds nuw i8, ptr %.2324, i64 5
  store i8 %i.apx, ptr %i.aly, align 1, !tbaa !24
  %i.apz = trunc i32 %.0342520 to i8
  %i.aqa = getelementptr inbounds nuw i8, ptr %.2324, i64 6
  store i8 %i.apz, ptr %i.apy, align 1, !tbaa !24
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn, %bb.gm, %.thread480, %bb.fp
  %.3345 = phi i32 [ %.0342520, %bb.fp ], [ %.0342520, %bb.gn ], [ %.0342520, %bb.gm ], [ %.0342520, %bb.go ], [ %i.amv, %.thread480 ] ; 3 uses
  %.2340 = phi i64 [ %.0338521, %bb.fp ], [ %spec.select393474, %bb.gn ], [ %spec.select393474, %bb.gm ], [ %.0338521, %bb.go ], [ %spec.select393474, %.thread480 ]
  %.2336 = phi i64 [ %.0334522, %bb.fp ], [ %spec.select394476, %bb.gn ], [ %spec.select394476, %bb.gm ], [ %.0334522, %bb.go ], [ %spec.select394476, %.thread480 ]
  %.1330 = phi i32 [ %.0329524, %bb.fp ], [ %.0.i429472, %bb.gn ], [ %.0.i429472, %bb.gm ], [ %.0329524, %bb.go ], [ %.0.i429472, %.thread480 ]
  %.9 = phi ptr [ %.2324, %bb.fp ], [ %i.apv, %bb.gn ], [ %.6328, %bb.gm ], [ %i.aqa, %bb.go ], [ %i.apu, %.thread480 ]
  %i.aqb = ptrtoint ptr %.9 to i64
  %i.aqc = sub i64 %i.aqb, %i.cw                  ; 3 uses
  %i.aqd = trunc i64 %i.aqc to i32
  %i.aqe = sub nsw i32 188, %i.aqd                ; 3 uses
  %spec.select401 = call i32 @llvm.smin.i32(i32 %i.aqe, i32 %.3345) ; 6 uses
  %i.aqf = sub nsw i32 %i.aqe, %spec.select401    ; 7 uses
  %i.aqg = icmp sgt i32 %i.aqf, 0
  br i1 %i.aqg, label %bb.gq, label %bb.gu

bb.gq:                                            ; preds = %bb.gp
  %i.aqh = load i8, ptr %i.cp, align 1, !tbaa !24 ; 2 uses
  %i.aqi = and i8 %i.aqh, 32
  %.not380 = icmp eq i8 %i.aqi, 0
  br i1 %.not380, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.aqj = load i8, ptr %i.cr, align 4, !tbaa !24 ; 2 uses
  %i.aqk = zext i8 %i.aqj to i64                  ; 2 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.aqk
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aql, i64 1 ; 3 uses
  %i.aqn = zext nneg i32 %i.aqf to i64            ; 2 uses
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqm, i64 %i.aqn
  %.neg507 = add i64 %i.aqc, 4294967291
  %i.aqp = sub i64 %.neg507, %i.aqk
  %sext504 = shl i64 %i.aqp, 32
  %i.aqq = ashr exact i64 %sext504, 32
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aqo, ptr nonnull align 1 %i.aqm, i64 %i.aqq, i1 false)
end_hunk_0
