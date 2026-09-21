Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ctu?download=true
inline.NumInlined: 95
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 44
begin_hunk_0_@hls_coding_tree:bb.a
  %i.aku = load i32, ptr %i.akt, align 4, !tbaa !145 ; 2 uses
  %i.akv = getelementptr inbounds nuw i8, ptr %i.ajp, i64 8
  %i.akw = load i32, ptr %i.akv, align 8, !tbaa !138 ; 4 uses
  %i.akx = load ptr, ptr %i.d, align 8, !tbaa !22 ; 12 uses
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akx, i64 2064
  %i.akz = load ptr, ptr %i.aky, align 8, !tbaa !75 ; 3 uses
  %i.ala = load ptr, ptr %i.akz, align 8, !tbaa !111 ; 2 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ala, i64 38742
  %i.alc = load i8, ptr %i.alb, align 2, !tbaa !329
  %.not.i.i39.i.i = icmp eq i8 %i.alc, 0
  br i1 %.not.i.i39.i.i, label %.thread.i.i.i, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.ald = getelementptr inbounds nuw i8, ptr %i.ala, i64 15484
  %i.ale = load i8, ptr %i.ald, align 4, !tbaa !124
  %.not94.i.i.i.i = icmp eq i8 %i.ale, 0
  br i1 %.not94.i.i.i.i, label %get_cclm_enabled.exit.thread51.i.i.i, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.alf = load ptr, ptr %i.h, align 16, !tbaa !91
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 8
  %i.alh = load ptr, ptr %i.alg, align 8, !tbaa !99
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alh, i64 1345
  %i.alj = load i8, ptr %i.ali, align 1, !tbaa !123
  %i.alk = icmp eq i8 %i.alj, 2
  br i1 %i.alk, label %bb.fx, label %get_cclm_enabled.exit.thread51.i.i.i

bb.fx:                                            ; preds = %bb.fw
  %i.all = getelementptr inbounds nuw i8, ptr %i.akz, i64 30
  %i.alm = load i8, ptr %i.all, align 2, !tbaa !79 ; 2 uses
  %i.aln = icmp ult i8 %i.alm, 6
  br i1 %i.aln, label %get_cclm_enabled.exit.thread51.i.i.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.alo = zext i8 %i.alm to i32
  %i.alp = and i32 %i.aku, -64                    ; 2 uses
  %i.alq = and i32 %i.akw, -64                    ; 2 uses
  %i.alr = and i32 %i.akw, -32
  %i.als = getelementptr inbounds nuw i8, ptr %i.akz, i64 34
  %i.alt = load i8, ptr %i.als, align 2, !tbaa !161
  %i.alu = zext i8 %i.alt to i32                  ; 3 uses
  %i.alv = ashr i32 %i.alp, %i.alu                ; 2 uses
  %i.alw = ashr i32 %i.alq, %i.alu
  %i.alx = ashr i32 %i.alr, %i.alu
  %i.aly = getelementptr inbounds nuw i8, ptr %i.akx, i64 2072
  %i.alz = load ptr, ptr %i.aly, align 8, !tbaa !76 ; 3 uses
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alz, i64 4034
  %i.amb = load i16, ptr %i.ama, align 2, !tbaa !163
  %i.amc = zext i16 %i.amb to i32                 ; 2 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %i.akx, i64 21896
  %i.ame = getelementptr inbounds nuw i8, ptr %i.akx, i64 21904
  %i.amf = load ptr, ptr %i.ame, align 8, !tbaa !162
  %i.amg = mul nsw i32 %i.alw, %i.amc
  %i.amh = add nsw i32 %i.amg, %i.alv
  %i.ami = sext i32 %i.amh to i64                 ; 6 uses
  %i.amj = getelementptr inbounds i8, ptr %i.amf, i64 %i.ami
  %i.amk = load i8, ptr %i.amj, align 1, !tbaa !108
  %i.aml = zext i8 %i.amk to i32                  ; 2 uses
  %i.amm = add nsw i32 %i.alo, -6                 ; 3 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %i.akx, i64 21952
  %i.amo = load ptr, ptr %i.amn, align 8, !tbaa !162
  %i.amp = ashr exact i32 %i.alq, 5
  %i.amq = getelementptr inbounds nuw i8, ptr %i.alz, i64 4096
  %i.amr = load i16, ptr %i.amq, align 8, !tbaa !298
  %i.ams = zext i16 %i.amr to i32                 ; 2 uses
  %i.amt = mul nsw i32 %i.amp, %i.ams
  %i.amu = ashr exact i32 %i.alp, 5               ; 2 uses
  %i.amv = add nsw i32 %i.amt, %i.amu
  %i.amw = sext i32 %i.amv to i64
  %i.amx = getelementptr inbounds i8, ptr %i.amo, i64 %i.amw
  %i.amy = load i8, ptr %i.amx, align 1, !tbaa !108
  %i.amz = getelementptr inbounds nuw i8, ptr %i.akx, i64 21960
  %i.ana = load ptr, ptr %i.amz, align 8, !tbaa !162
  %i.anb = ashr i32 %i.akw, 5
  %i.anc = mul nsw i32 %i.anb, %i.ams
  %i.and = add nsw i32 %i.anc, %i.amu
  %i.ane = sext i32 %i.and to i64
  %i.anf = getelementptr inbounds i8, ptr %i.ana, i64 %i.ane
  %i.ang = load i8, ptr %i.anf, align 1, !tbaa !108
  %i.anh = getelementptr inbounds nuw i8, ptr %i.akx, i64 21864
  %i.ani = getelementptr inbounds nuw i8, ptr %i.akx, i64 21872
  %i.anj = load ptr, ptr %i.ani, align 8, !tbaa !162 ; 2 uses
  %i.ank = getelementptr inbounds i8, ptr %i.anj, i64 %i.ami
  %i.anl = load i8, ptr %i.ank, align 1, !tbaa !108
  %i.anm = icmp eq i8 %i.anl, 64
  br i1 %i.anm, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.ann = getelementptr inbounds nuw i8, ptr %i.akx, i64 21888
  %i.ano = load ptr, ptr %i.ann, align 8, !tbaa !162
  %i.anp = getelementptr inbounds i8, ptr %i.ano, i64 %i.ami
  %i.anq = load i8, ptr %i.anp, align 1, !tbaa !108
  %i.anr = icmp eq i8 %i.anq, 64
  %i.ans = zext i1 %i.anr to i32
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %i.ant = phi i32 [ 0, %bb.fy ], [ %i.ans, %bb.fz ] ; 3 uses
  %i.anu = icmp eq i32 %i.amm, %i.aml
  %i.anv = icmp eq i8 %i.amy, 2
  %or.cond.i.i40.i.i = select i1 %i.anu, i1 %i.anv, i1 false ; 2 uses
  br i1 %or.cond.i.i40.i.i, label %bb.gb, label %bb.gd

bb.gb:                                            ; preds = %bb.ga
  %i.anw = mul nsw i32 %i.alx, %i.amc
  %i.anx = add nsw i32 %i.anw, %i.alv
  %i.any = sext i32 %i.anx to i64                 ; 2 uses
  %i.anz = getelementptr inbounds i8, ptr %i.anj, i64 %i.any
  %i.aoa = load i8, ptr %i.anz, align 1, !tbaa !108
  %i.aob = icmp eq i8 %i.aoa, 64
  br i1 %i.aob, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.akx, i64 21888
  %i.aod = load ptr, ptr %i.aoc, align 8, !tbaa !162
  %i.aoe = getelementptr inbounds i8, ptr %i.aod, i64 %i.any
  %i.aof = load i8, ptr %i.aoe, align 1, !tbaa !108
  %i.aog = icmp eq i8 %i.aof, 32
  %i.aoh = zext i1 %i.aog to i32
  %i.aoi = or i32 %i.ant, %i.aoh
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb, %bb.ga
  %i.aoj = phi i32 [ %i.ant, %bb.gb ], [ %i.aoi, %bb.gc ], [ %i.ant, %bb.ga ]
  %i.aok = icmp samesign ult i32 %i.amm, %i.aml
  %i.aol = icmp eq i8 %i.ang, 4
  %narrow.i.i41.i.i = select i1 %or.cond.i.i40.i.i, i1 %i.aol, i1 false
  %i.aom = or i1 %i.aok, %narrow.i.i41.i.i
  %i.aon = zext i1 %i.aom to i32
  %i.aoo = or i32 %i.aoj, %i.aon
  %.not95.i.i.i.i = icmp eq i32 %i.aoo, 0
  br i1 %.not95.i.i.i.i, label %.thread.i.i.i, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.aop = load ptr, ptr %i.anh, align 8, !tbaa !162
  %i.aoq = getelementptr inbounds i8, ptr %i.aop, i64 %i.ami
  %i.aor = load i8, ptr %i.aoq, align 1, !tbaa !108 ; 2 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %i.akx, i64 21880
  %i.aot = load ptr, ptr %i.aos, align 8, !tbaa !162
  %i.aou = getelementptr inbounds i8, ptr %i.aot, i64 %i.ami
  %i.aov = load i8, ptr %i.aou, align 1, !tbaa !108 ; 2 uses
  %i.aow = load ptr, ptr %i.amd, align 8, !tbaa !162
  %i.aox = getelementptr inbounds i8, ptr %i.aow, i64 %i.ami
  %i.aoy = load i8, ptr %i.aox, align 1, !tbaa !108
  %i.aoz = zext i8 %i.aoy to i32
  %i.apa = icmp eq i8 %i.aor, 64
  %i.apb = icmp eq i8 %i.aov, 64
  %or.cond6.i.i.i.i = select i1 %i.apa, i1 %i.apb, i1 false
  br i1 %or.cond6.i.i.i.i, label %bb.gf, label %.critedge.i.i42.i.i

bb.gf:                                            ; preds = %bb.ge
  %i.apc = getelementptr inbounds nuw i8, ptr %i.akx, i64 21944
  %i.apd = load ptr, ptr %i.apc, align 8, !tbaa !323
  %i.ape = ashr i32 %i.akw, 6
  %i.apf = getelementptr inbounds nuw i8, ptr %i.alz, i64 4100
  %i.apg = load i16, ptr %i.apf, align 4, !tbaa !324
  %i.aph = zext i16 %i.apg to i32
  %i.api = mul nsw i32 %i.ape, %i.aph
  %i.apj = ashr i32 %i.aku, 6
  %i.apk = add nsw i32 %i.api, %i.apj
  %i.apl = sext i32 %i.apk to i64
  %i.apm = getelementptr inbounds i8, ptr %i.apd, i64 %i.apl
  %i.apn = load i8, ptr %i.apm, align 1, !tbaa !108
  %.not96.i.i.i.i = icmp eq i8 %i.apn, 0
  br i1 %.not96.i.i.i.i, label %.critedge.i.i42.i.i, label %.thread.i.i.i

.critedge.i.i42.i.i:                              ; preds = %bb.gf, %bb.ge
  %i.apo = icmp ugt i8 %i.aor, 63
  %i.app = icmp ugt i8 %i.aov, 63
  %or.cond8.not107.i.i.i.i = select i1 %i.apo, i1 %i.app, i1 false
  %i.apq = icmp ne i32 %i.amm, %i.aoz
  %or.cond97.not.i.i.i.i = select i1 %or.cond8.not107.i.i.i.i, i1 true, i1 %i.apq
  %cond.fr.i.i.i.i = freeze i1 %or.cond97.not.i.i.i.i
  br i1 %cond.fr.i.i.i.i, label %get_cclm_enabled.exit.thread51.i.i.i, label %.thread.i.i.i

get_cclm_enabled.exit.thread51.i.i.i:             ; preds = %.critedge.i.i42.i.i, %bb.fx, %bb.fw, %bb.fv
  %i.apr = call i32 @ff_vvc_cclm_mode_flag(ptr noundef nonnull %0) #14
  %.not41.i.i.i = icmp eq i32 %i.apr, 0
  br i1 %.not41.i.i.i, label %.thread.i.i.i, label %bb.gg

bb.gg:                                            ; preds = %get_cclm_enabled.exit.thread51.i.i.i
  %i.aps = call i32 @ff_vvc_cclm_mode_idx(ptr noundef nonnull %0) #14
  %i.apt = add nsw i32 %i.aps, 81
  br label %bb.gh

.thread.i.i.i:                                    ; preds = %get_cclm_enabled.exit.thread51.i.i.i, %.critedge.i.i42.i.i, %bb.gf, %bb.gd, %bb.fu
  %i.apu = call i32 @ff_vvc_intra_chroma_pred_mode(ptr noundef nonnull %0) #14
  br label %bb.gh

bb.gh:                                            ; preds = %.thread.i.i.i, %bb.gg, %bb.ft, %bb.fn
  %.not59.i.i.i.i = phi i1 [ true, %bb.fn ], [ true, %bb.ft ], [ true, %.thread.i.i.i ], [ false, %bb.gg ]
  %.132.i.i.i = phi i32 [ 81, %bb.fn ], [ 81, %bb.ft ], [ 81, %.thread.i.i.i ], [ %i.apt, %bb.gg ]
  %.1.i.i.i = phi i32 [ 0, %bb.fn ], [ 0, %bb.ft ], [ %i.apu, %.thread.i.i.i ], [ 0, %bb.gg ] ; 3 uses
  %i.apv = getelementptr inbounds nuw i8, ptr %i.ajp, i64 76
  %i.apw = load i32, ptr %i.apv, align 4, !tbaa !109
  %.not43.i.i.i = icmp eq i32 %i.apw, 0
  br i1 %.not43.i.i.i, label %bb.gi, label %intra_data.exit.thread.i

bb.gi:                                            ; preds = %bb.gh
  %.val.i37.i.i = load ptr, ptr %i.d, align 8, !tbaa !22 ; 5 uses
  %.val44.i.i.i = load ptr, ptr %i.hm, align 16, !tbaa !90 ; 11 uses
  %i.apx = getelementptr inbounds nuw i8, ptr %.val.i37.i.i, i64 2064
  %i.apy = load ptr, ptr %i.apx, align 8, !tbaa !75 ; 5 uses
  %i.apz = getelementptr inbounds nuw i8, ptr %.val.i37.i.i, i64 2072
  %i.aqa = load ptr, ptr %i.apz, align 8, !tbaa !76
  %i.aqb = getelementptr inbounds nuw i8, ptr %.val44.i.i.i, i64 4
  %i.aqc = load i32, ptr %i.aqb, align 4, !tbaa !145 ; 2 uses
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.apy, i64 34
  %i.aqe = load i8, ptr %i.aqd, align 2, !tbaa !161
  %i.aqf = zext i8 %i.aqe to i32                  ; 4 uses
  %i.aqg = ashr i32 %i.aqc, %i.aqf
  %i.aqh = getelementptr inbounds nuw i8, ptr %.val44.i.i.i, i64 8
  %i.aqi = load i32, ptr %i.aqh, align 8, !tbaa !138 ; 2 uses
  %i.aqj = ashr i32 %i.aqi, %i.aqf
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqa, i64 4034
  %i.aql = load i16, ptr %i.aqk, align 2, !tbaa !163
  %i.aqm = zext i16 %i.aql to i32                 ; 2 uses
  %i.aqn = getelementptr inbounds nuw i8, ptr %.val.i37.i.i, i64 21968
  %i.aqo = load ptr, ptr %i.aqn, align 8, !tbaa !320 ; 2 uses
  %i.aqp = mul nsw i32 %i.aqj, %i.aqm
  %i.aqq = add nsw i32 %i.aqp, %i.aqg
  %i.aqr = sext i32 %i.aqq to i64                 ; 2 uses
  %i.aqs = getelementptr inbounds i8, ptr %i.aqo, i64 %i.aqr
  %i.aqt = load i8, ptr %i.aqs, align 1, !tbaa !108 ; 3 uses
  %i.aqu = getelementptr inbounds nuw i8, ptr %.val.i37.i.i, i64 21976
  %i.aqv = load ptr, ptr %i.aqu, align 8, !tbaa !325 ; 2 uses
  %i.aqw = getelementptr inbounds i8, ptr %i.aqv, i64 %i.aqr
  %i.aqx = load i8, ptr %i.aqw, align 1, !tbaa !108
  %i.aqy = zext i8 %i.aqx to i32
  %i.aqz = load i32, ptr %.val44.i.i.i, align 8, !tbaa !133
  %i.ara = icmp eq i32 %i.aqz, 0                  ; 3 uses
  br i1 %i.ara, label %bb.gj, label %bb.go

bb.gj:                                            ; preds = %bb.gi
  %i.arb = load ptr, ptr %i.apy, align 8, !tbaa !111
  %i.arc = getelementptr inbounds nuw i8, ptr %i.arb, i64 7
  %i.ard = load i8, ptr %i.arc, align 1, !tbaa !121
  %i.are = icmp eq i8 %i.ard, 3
  br i1 %i.are, label %bb.gk, label %bb.go

bb.gk:                                            ; preds = %bb.gj
  %i.arf = icmp eq i32 %.1.i.i.i, 4
  br i1 %i.arf, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.arg = getelementptr inbounds nuw i8, ptr %.val44.i.i.i, i64 40
  %i.arh = load i8, ptr %i.arg, align 8, !tbaa !174
  %i.ari = icmp ne i8 %i.arh, 0
  %i.arj = icmp ne i8 %i.aqt, 0
  %or.cond.i47.i.i.i = select i1 %i.ari, i1 %i.arj, i1 false
  br i1 %or.cond.i47.i.i.i, label %bb.gn, label %bb.go

bb.gm:                                            ; preds = %bb.gk
  %.old1.not.i.i.i.i = icmp eq i8 %i.aqt, 0
  br i1 %.old1.not.i.i.i.i, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gl
  %i.ark = getelementptr inbounds nuw i8, ptr %.val44.i.i.i, i64 68
  store i32 1, ptr %i.ark, align 4, !tbaa !327
  %i.arl = getelementptr inbounds nuw i8, ptr %.val44.i.i.i, i64 64
  store i32 %i.aqy, ptr %i.arl, align 8, !tbaa !328
  br label %intra_data.exit.thread.i

bb.go:                                            ; preds = %bb.gm, %bb.gl, %bb.gj, %bb.gi
  %i.arm = getelementptr inbounds nuw i8, ptr %.val44.i.i.i, i64 12
  %21 = load i32, ptr %i.arm, align 4, !tbaa !175
  %22 = sdiv i32 %21, 2
  %23 = add nsw i32 %22, %i.aqc
  %24 = ashr i32 %23, %i.aqf
  %25 = getelementptr inbounds nuw i8, ptr %.val44.i.i.i, i64 16
  %26 = load i32, ptr %25, align 8, !tbaa !139
  %27 = sdiv i32 %26, 2
  %i.arn = add nsw i32 %27, %i.aqi
  %i.aro = ashr i32 %i.arn, %i.aqf
  %i.arp = mul nsw i32 %i.aro, %i.aqm
  %i.arq = add nsw i32 %i.arp, %24
  %i.arr = sext i32 %i.arq to i64                 ; 3 uses
  %i.ars = getelementptr inbounds i8, ptr %i.aqo, i64 %i.arr
  %i.art = load i8, ptr %i.ars, align 1, !tbaa !108
  %.not.i.i.i.i.i = icmp eq i8 %i.art, 0
  br i1 %.not.i.i.i.i.i, label %bb.gs, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  br i1 %i.ara, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.aru = load ptr, ptr %i.apy, align 8, !tbaa !111
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aru, i64 7
  %i.arw = load i8, ptr %i.arv, align 1, !tbaa !121
  %i.arx = icmp eq i8 %i.arw, 3
  br i1 %i.arx, label %derive_center_luma_intra_pred_mode.exit.i.i.i.i, label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gp
  br label %derive_center_luma_intra_pred_mode.exit.i.i.i.i

bb.gs:                                            ; preds = %bb.go
  %i.ary = getelementptr inbounds i8, ptr %i.aqv, i64 %i.arr
  %i.arz = load i8, ptr %i.ary, align 1, !tbaa !108
  %i.asa = getelementptr inbounds nuw i8, ptr %.val.i37.i.i, i64 21984
  %i.asb = load ptr, ptr %i.asa, align 8, !tbaa !162
  %i.asc = getelementptr inbounds i8, ptr %i.asb, i64 %i.arr
  %i.asd = load i8, ptr %i.asc, align 1, !tbaa !108
  %i.ase = add i8 %i.asd, -3
  %or.cond.i.i.i.i.i = icmp ult i8 %i.ase, 2
  %narrow.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i, i8 1, i8 %i.arz
  %..i.i.i.i.i = zext i8 %narrow.i.i.i.i.i to i32
  br label %derive_center_luma_intra_pred_mode.exit.i.i.i.i

derive_center_luma_intra_pred_mode.exit.i.i.i.i:  ; preds = %bb.gs, %bb.gr, %bb.gq
  %.0.i.i.i.i.i = phi i32 [ -1, %bb.gq ], [ 0, %bb.gr ], [ %..i.i.i.i.i, %bb.gs ] ; 3 uses
  %i.asf = getelementptr inbounds nuw i8, ptr %.val44.i.i.i, i64 40
  %i.asg = load i8, ptr %i.asf, align 8, !tbaa !174
  %.not.i45.i.i.i = icmp eq i8 %i.asg, 0
  br i1 %.not.i45.i.i.i, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %derive_center_luma_intra_pred_mode.exit.i.i.i.i
  %i.ash = getelementptr inbounds nuw i8, ptr %.val44.i.i.i, i64 64
  store i32 %.0.i.i.i.i.i, ptr %i.ash, align 8, !tbaa !328
  br label %intra_data.exit.thread.i

bb.gu:                                            ; preds = %derive_center_luma_intra_pred_mode.exit.i.i.i.i
  br i1 %.not59.i.i.i.i, label %bb.gv, label %bb.ha

bb.gv:                                            ; preds = %bb.gu
  %i.asi = icmp eq i32 %.1.i.i.i, 4
  br i1 %i.asi, label %bb.ha, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  br i1 %i.ara, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.asj = load ptr, ptr %i.apy, align 8, !tbaa !111
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asj, i64 7
  %i.asl = load i8, ptr %i.ask, align 1, !tbaa !121
  %i.asm = icmp eq i8 %i.asl, 3
  %i.asn = icmp ne i8 %i.aqt, 0
  %or.cond4.i.i.i.i = select i1 %i.asm, i1 %i.asn, i1 false
  br i1 %or.cond4.i.i.i.i, label %.loopexit.i.i38.i.i, label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw
  switch i32 %.0.i.i.i.i.i, label %bb.gz [
    i32 0, label %.loopexit.i.i38.i.i
    i32 50, label %.loopexit.fold.split.i.i.i.i
    i32 18, label %.loopexit.fold.split4.i.i.i.i
    i32 1, label %.loopexit.fold.split5.i.i.i.i
  ]

bb.gz:                                            ; preds = %bb.gy
  br label %.loopexit.i.i38.i.i

.loopexit.fold.split.i.i.i.i:                     ; preds = %bb.gy
  br label %.loopexit.i.i38.i.i

.loopexit.fold.split4.i.i.i.i:                    ; preds = %bb.gy
  br label %.loopexit.i.i38.i.i

.loopexit.fold.split5.i.i.i.i:                    ; preds = %bb.gy
  br label %.loopexit.i.i38.i.i

.loopexit.i.i38.i.i:                              ; preds = %.loopexit.fold.split5.i.i.i.i, %.loopexit.fold.split4.i.i.i.i, %.loopexit.fold.split.i.i.i.i, %bb.gz, %bb.gy, %bb.gx
  %.1.i.i.i.i = phi i64 [ 4, %bb.gx ], [ 4, %bb.gz ], [ 0, %bb.gy ], [ 1, %.loopexit.fold.split.i.i.i.i ], [ 2, %.loopexit.fold.split4.i.i.i.i ], [ 3, %.loopexit.fold.split5.i.i.i.i ]
  %i.aso = sext i32 %.1.i.i.i to i64
  %i.asp = getelementptr inbounds [20 x i8], ptr @derive_chroma_intra_pred_mode.pred_mode_c, i64 %i.aso
  %i.asq = getelementptr inbounds nuw [4 x i8], ptr %i.asp, i64 %.1.i.i.i.i
  %i.asr = load i32, ptr %i.asq, align 4, !tbaa !109
  br label %bb.ha

bb.ha:                                            ; preds = %.loopexit.i.i38.i.i, %bb.gv, %bb.gu
  %.0.i.sink.i.i.i.i = phi i32 [ %.0.i.i.i.i.i, %bb.gv ], [ %i.asr, %.loopexit.i.i38.i.i ], [ %.132.i.i.i, %bb.gu ] ; 3 uses
  %i.ass = getelementptr inbounds nuw i8, ptr %.val44.i.i.i, i64 64 ; 2 uses
  store i32 %.0.i.sink.i.i.i.i, ptr %i.ass, align 8, !tbaa !328
  %i.ast = load ptr, ptr %i.apy, align 8, !tbaa !111
  %i.asu = getelementptr inbounds nuw i8, ptr %i.ast, i64 7
  %i.asv = load i8, ptr %i.asu, align 1, !tbaa !121
  %i.asw = icmp eq i8 %i.asv, 2
  %i.asx = icmp slt i32 %.0.i.sink.i.i.i.i, 67
  %or.cond6.i46.i.i.i = select i1 %i.asw, i1 %i.asx, i1 false
  br i1 %or.cond6.i46.i.i.i, label %bb.hb, label %intra_data.exit.thread.i

bb.hb:                                            ; preds = %bb.ha
  %i.asy = sext i32 %.0.i.sink.i.i.i.i to i64
  %i.asz = getelementptr inbounds [4 x i8], ptr @derive_chroma_intra_pred_mode.mode_map_422, i64 %i.asy
  %i.ata = load i32, ptr %i.asz, align 4, !tbaa !109
  store i32 %i.ata, ptr %i.ass, align 8, !tbaa !328
  br label %intra_data.exit.thread.i

bb.hc:                                            ; preds = %thread-pre-split.i
  br i1 %i.l, label %intra_data.exit.thread.i, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.atb = load ptr, ptr %i.hm, align 16, !tbaa !90 ; 10 uses
  %i.atc = getelementptr inbounds nuw i8, ptr %i.atb, i64 504 ; 2 uses
  %i.atd = getelementptr inbounds nuw i8, ptr %i.atb, i64 564
  store i8 1, ptr %i.atc, align 8, !tbaa !183
  %i.ate = getelementptr inbounds nuw i8, ptr %i.atb, i64 43
  %i.atf = load i8, ptr %i.ate, align 1, !tbaa !312
  %.not.i108.i = icmp eq i8 %i.atf, 0
  br i1 %.not.i108.i, label %bb.he, label %.thread.i109.i

bb.he:                                            ; preds = %bb.hd
  %i.atg = call i32 @ff_vvc_general_merge_flag(ptr noundef nonnull %0) #14
  %i.ath = trunc i32 %i.atg to i8                 ; 2 uses
  store i8 %i.ath, ptr %i.atc, align 8, !tbaa !183
  %.not27.i.i = icmp eq i8 %i.ath, 0
  br i1 %.not27.i.i, label %bb.jj, label %..thread_crit_edge.i.i

..thread_crit_edge.i.i:                           ; preds = %bb.he
  %.pre.i122.i = load ptr, ptr %i.hm, align 16, !tbaa !90
  br label %.thread.i109.i

.thread.i109.i:                                   ; preds = %..thread_crit_edge.i.i, %bb.hd
  %i.ati = phi ptr [ %.pre.i122.i, %..thread_crit_edge.i.i ], [ %i.atb, %bb.hd ] ; 11 uses
  %i.atj = load ptr, ptr %i.d, align 8, !tbaa !22 ; 5 uses
  %i.atk = getelementptr inbounds nuw i8, ptr %i.ati, i64 508
  store i8 0, ptr %i.atk, align 4, !tbaa !134
  %i.atl = getelementptr inbounds nuw i8, ptr %i.ati, i64 628
  store i32 1, ptr %i.atl, align 4, !tbaa !330
  %i.atm = getelementptr inbounds nuw i8, ptr %i.ati, i64 624
  store i32 1, ptr %i.atm, align 4, !tbaa !331
  %i.atn = getelementptr inbounds nuw i8, ptr %i.ati, i64 52
  %i.ato = load i32, ptr %i.atn, align 4, !tbaa !132
  %i.atp = icmp eq i32 %i.ato, 4
  br i1 %i.atp, label %bb.hf, label %bb.hi

bb.hf:                                            ; preds = %.thread.i109.i
  %i.atq = getelementptr inbounds nuw i8, ptr %i.atj, i64 2064
  %i.atr = load ptr, ptr %i.atq, align 8, !tbaa !75
  %i.ats = getelementptr inbounds nuw i8, ptr %i.ati, i64 564
  %i.att = getelementptr inbounds nuw i8, ptr %i.ati, i64 572
  store i32 5, ptr %i.att, align 4, !tbaa !184
  %i.atu = getelementptr inbounds nuw i8, ptr %i.atr, i64 39
  %i.atv = load i8, ptr %i.atu, align 1, !tbaa !332
  %i.atw = icmp ugt i8 %i.atv, 1
  br i1 %i.atw, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  %i.atx = call i32 @ff_vvc_merge_idx(ptr noundef nonnull %0) #14
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.hf
  %.0.i.i.i120.i = phi i32 [ %i.atx, %bb.hg ], [ 0, %bb.hf ]
  %i.aty = getelementptr inbounds nuw i8, ptr %i.ati, i64 576
  %i.atz = call i32 @ff_vvc_luma_mv_merge_ibc(ptr noundef nonnull %0, i32 noundef %.0.i.i.i120.i, ptr noundef nonnull %i.aty) #14 ; 2 uses
  %.not.i.i.i121.i = icmp eq i32 %i.atz, 0
  br i1 %.not.i.i.i121.i, label %merge_data_ibc.exit.thread.i.i.i, label %intra_data.exit.i

merge_data_ibc.exit.thread.i.i.i:                 ; preds = %bb.hh
  call void @ff_vvc_store_mv(ptr noundef nonnull %0, ptr noundef nonnull %i.ats) #14
  br label %bb.lv

bb.hi:                                            ; preds = %.thread.i109.i
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atj, i64 2096
  %i.aub = load i32, ptr %i.aua, align 8, !tbaa !333
  %.not.i.i110.i = icmp eq i32 %i.aub, 0
  br i1 %.not.i.i110.i, label %bb.hm, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.auc = getelementptr inbounds nuw i8, ptr %i.ati, i64 12
  %i.aud = load i32, ptr %i.auc, align 4, !tbaa !175
  %i.aue = icmp sgt i32 %i.aud, 7
  br i1 %i.aue, label %bb.hk, label %bb.hm

bb.hk:                                            ; preds = %bb.hj
  %i.auf = getelementptr inbounds nuw i8, ptr %i.ati, i64 16
  %i.aug = load i32, ptr %i.auf, align 8, !tbaa !139
  %i.auh = icmp sgt i32 %i.aug, 7
  br i1 %i.auh, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hk
  %i.aui = call i32 @ff_vvc_merge_subblock_flag(ptr noundef nonnull %0) #14
  %i.auj = trunc i32 %i.aui to i8
  %i.auk = getelementptr inbounds nuw i8, ptr %i.ati, i64 507
  store i8 %i.auj, ptr %i.auk, align 1, !tbaa !185
  %.pre57.i.i = load ptr, ptr %i.d, align 8, !tbaa !22
  br label %bb.hm

end_hunk_0
