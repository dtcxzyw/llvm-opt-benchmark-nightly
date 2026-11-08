Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/lemon?download=true
inline.NumInlined: 160
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 26
begin_hunk_0_@ReportTable:bb.a
  %.2826 = load ptr, ptr %i.akl, align 8          ; 2 uses
  %.not895 = icmp eq ptr %.2826, null
  br i1 %.not895, label %._crit_edge1143, label %.lr.ph1142, !llvm.loop !212

._crit_edge1143:                                  ; preds = %.lr.ph1142, %._crit_edge1136
  %i.akn = load ptr, ptr %i.fi, align 8
  call void @tplt_xfer(ptr noundef %i.akn, ptr noundef %i.r, ptr noundef %i.w, ptr noundef nonnull %i.b)
  %i.ako = getelementptr i8, ptr %0, i64 208
  %i.akp = load ptr, ptr %i.ako, align 8
  %.not896 = icmp ne ptr %i.akp, null
  %.pre1292.pre1295 = load i32, ptr %i.go, align 8 ; 3 uses
  %i.akq = icmp sgt i32 %.pre1292.pre1295, 0
  %or.cond1365 = select i1 %.not896, i1 %i.akq, i1 false
  br i1 %or.cond1365, label %.lr.ph1146, label %.critedge18

.lr.ph1146:                                       ; preds = %._crit_edge1143
  %i.akr = getelementptr i8, ptr %0, i64 72
  br label %bb.fl

.preheader978:                                    ; preds = %bb.fq
  %i.aks = icmp sgt i32 %i.all, 0
  br i1 %i.aks, label %.lr.ph1149, label %.critedge18

.lr.ph1149:                                       ; preds = %.preheader978
  %i.akt = getelementptr i8, ptr %0, i64 72
  %i.aku = load ptr, ptr %i.akt, align 8
  %wide.trip.count1271 = zext nneg i32 %i.all to i64
  br label %bb.fr

bb.fl:                                            ; preds = %.lr.ph1146, %bb.fq
  %i.akv = phi i32 [ %.pre1292.pre1295, %.lr.ph1146 ], [ %i.all, %bb.fq ] ; 2 uses
  %indvars.iv1265 = phi i64 [ 0, %.lr.ph1146 ], [ %indvars.iv.next1266, %bb.fq ] ; 2 uses
  %.07861145 = phi i32 [ 1, %.lr.ph1146 ], [ %.2788, %bb.fq ] ; 3 uses
  %i.akw = load ptr, ptr %i.akr, align 8
  %i.akx = getelementptr [8 x i8], ptr %i.akw, i64 %indvars.iv1265
  %i.aky = load ptr, ptr %i.akx, align 8          ; 4 uses
  %i.akz = icmp eq ptr %i.aky, null
  br i1 %i.akz, label %bb.fq, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.ala = getelementptr i8, ptr %i.aky, i64 12
  %i.alb = load i32, ptr %i.ala, align 4
  %.not918 = icmp eq i32 %i.alb, 0
  br i1 %.not918, label %bb.fn, label %bb.fq

bb.fn:                                            ; preds = %bb.fm
  %.not919 = icmp eq i32 %.07861145, 0
  br i1 %.not919, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.alc = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 2, ptr noundef @.str.244) ; 0 uses
  %i.ald = load i32, ptr %i.b, align 4
  %i.ale = add i32 %i.ald, 1
  store i32 %i.ale, ptr %i.b, align 4
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %i.alf = getelementptr i8, ptr %i.aky, i64 8
  %i.alg = load i32, ptr %i.alf, align 8
  %i.alh = load ptr, ptr %i.aky, align 8
  %i.ali = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 2, ptr noundef @.str.245, i32 noundef %i.alg, ptr noundef %i.alh) ; 0 uses
  %i.alj = load i32, ptr %i.b, align 4
  %i.alk = add i32 %i.alj, 1
  store i32 %i.alk, ptr %i.b, align 4
  %.pre1288.a = load i32, ptr %i.go, align 8
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fl, %bb.fm, %bb.fp
  %i.all = phi i32 [ %.pre1288.a, %bb.fp ], [ %i.akv, %bb.fm ], [ %i.akv, %bb.fl ] ; 6 uses
  %.2788 = phi i32 [ 0, %bb.fp ], [ %.07861145, %bb.fm ], [ %.07861145, %bb.fl ]
  %indvars.iv.next1266 = add nuw nsw i64 %indvars.iv1265, 1 ; 2 uses
  %i.alm = sext i32 %i.all to i64
  %i.aln = icmp slt i64 %indvars.iv.next1266, %i.alm
  br i1 %i.aln, label %bb.fl, label %.preheader978, !llvm.loop !213

bb.fr:                                            ; preds = %.lr.ph1149, %bb.fs
  %indvars.iv1268 = phi i64 [ 0, %.lr.ph1149 ], [ %indvars.iv.next1269, %bb.fs ] ; 2 uses
  %i.alo = getelementptr [8 x i8], ptr %i.aku, i64 %indvars.iv1268
  %i.alp = load ptr, ptr %i.alo, align 8          ; 2 uses
  %i.alq = getelementptr i8, ptr %i.alp, i64 12
  %i.alr = load i32, ptr %i.alq, align 4
  %.not897 = icmp eq i32 %i.alr, 0
  br i1 %.not897, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %indvars.iv.next1269 = add nuw nsw i64 %indvars.iv1268, 1 ; 2 uses
  %exitcond1272.not = icmp eq i64 %indvars.iv.next1269, %wide.trip.count1271
  br i1 %exitcond1272.not, label %.critedge18, label %bb.fr, !llvm.loop !214

bb.ft:                                            ; preds = %bb.fr
  call void @emit_destructor_code(ptr noundef %i.w, ptr noundef %i.alp, ptr noundef %0, ptr noundef nonnull %i.b)
  %i.als = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 2, ptr noundef @.str.246) ; 0 uses
  %i.alt = load i32, ptr %i.b, align 4
  %i.alu = add i32 %i.alt, 1
  store i32 %i.alu, ptr %i.b, align 4
  %.pre1292.pre = load i32, ptr %i.go, align 8
  br label %.critedge18

.critedge18:                                      ; preds = %bb.fs, %.preheader978, %bb.ft, %._crit_edge1143
  %.pre1292.a = phi i32 [ %.pre1292.pre1295, %._crit_edge1143 ], [ %i.all, %.preheader978 ], [ %.pre1292.pre, %bb.ft ], [ %i.all, %bb.fs ] ; 3 uses
  %i.alv = getelementptr i8, ptr %0, i64 216
  %i.alw = load ptr, ptr %i.alv, align 8
  %.not898 = icmp eq ptr %i.alw, null
  br i1 %.not898, label %bb.gd, label %.preheader

.preheader:                                       ; preds = %.critedge18
  %i.alx = icmp sgt i32 %.pre1292.a, 0
  br i1 %i.alx, label %.lr.ph1153, label %._crit_edge1154.thread

.lr.ph1153:                                       ; preds = %.preheader
  %i.aly = getelementptr i8, ptr %0, i64 72
  br label %bb.fu

bb.fu:                                            ; preds = %.lr.ph1153, %bb.gb
  %i.alz = phi i32 [ %.pre1292.a, %.lr.ph1153 ], [ %i.amu, %bb.gb ] ; 4 uses
  %indvars.iv1273 = phi i64 [ 0, %.lr.ph1153 ], [ %indvars.iv.next1274, %bb.gb ] ; 2 uses
  %.07831152 = phi i32 [ 1, %.lr.ph1153 ], [ %.2, %bb.gb ] ; 5 uses
  %.07841151 = phi ptr [ null, %.lr.ph1153 ], [ %.1785, %bb.gb ] ; 4 uses
  %i.ama = load ptr, ptr %i.aly, align 8
  %i.amb = getelementptr [8 x i8], ptr %i.ama, i64 %indvars.iv1273
  %i.amc = load ptr, ptr %i.amb, align 8          ; 6 uses
  %i.amd = icmp eq ptr %i.amc, null
  br i1 %i.amd, label %bb.gb, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.ame = getelementptr i8, ptr %i.amc, i64 12
  %i.amf = load i32, ptr %i.ame, align 4
  %i.amg = icmp eq i32 %i.amf, 0
  br i1 %i.amg, label %bb.gb, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.amh = getelementptr i8, ptr %i.amc, i64 8    ; 2 uses
  %i.ami = load i32, ptr %i.amh, align 8          ; 2 uses
  %i.amj = icmp slt i32 %i.ami, 1
  br i1 %i.amj, label %bb.gb, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.amk = getelementptr i8, ptr %i.amc, i64 56
  %i.aml = load ptr, ptr %i.amk, align 8
  %.not916 = icmp eq ptr %i.aml, null
  br i1 %.not916, label %bb.fy, label %bb.gb

bb.fy:                                            ; preds = %bb.fx
  %.not917 = icmp eq i32 %.07831152, 0
  br i1 %.not917, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.amm = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 2, ptr noundef @.str.247) ; 0 uses
  %i.amn = load i32, ptr %i.b, align 4
  %i.amo = add i32 %i.amn, 1
  store i32 %i.amo, ptr %i.b, align 4
  %.pre1289.a = load i32, ptr %i.amh, align 8
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %i.amp = phi i32 [ %.pre1289.a, %bb.fz ], [ %i.ami, %bb.fy ]
  %i.amq = load ptr, ptr %i.amc, align 8
  %i.amr = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 2, ptr noundef @.str.245, i32 noundef %i.amp, ptr noundef %i.amq) ; 0 uses
  %i.ams = load i32, ptr %i.b, align 4
  %i.amt = add i32 %i.ams, 1
  store i32 %i.amt, ptr %i.b, align 4
  %.pre1290 = load i32, ptr %i.go, align 8
  br label %bb.gb

bb.gb:                                            ; preds = %bb.fu, %bb.fv, %bb.fw, %bb.fx, %bb.ga
  %i.amu = phi i32 [ %.pre1290, %bb.ga ], [ %i.alz, %bb.fx ], [ %i.alz, %bb.fw ], [ %i.alz, %bb.fv ], [ %i.alz, %bb.fu ] ; 2 uses
  %.1785 = phi ptr [ %i.amc, %bb.ga ], [ %.07841151, %bb.fx ], [ %.07841151, %bb.fw ], [ %.07841151, %bb.fv ], [ %.07841151, %bb.fu ] ; 3 uses
  %.2 = phi i32 [ 0, %bb.ga ], [ %.07831152, %bb.fx ], [ %.07831152, %bb.fw ], [ %.07831152, %bb.fv ], [ %.07831152, %bb.fu ]
  %indvars.iv.next1274 = add nuw nsw i64 %indvars.iv1273, 1 ; 2 uses
  %i.amv = sext i32 %i.amu to i64
  %i.amw = icmp slt i64 %indvars.iv.next1274, %i.amv
  br i1 %i.amw, label %bb.fu, label %._crit_edge1154, !llvm.loop !215

._crit_edge1154:                                  ; preds = %bb.gb
  %.not899 = icmp eq ptr %.1785, null
  br i1 %.not899, label %._crit_edge1154.thread, label %bb.gc

bb.gc:                                            ; preds = %._crit_edge1154
  call void @emit_destructor_code(ptr noundef %i.w, ptr noundef nonnull %.1785, ptr noundef %0, ptr noundef nonnull %i.b)
  br label %._crit_edge1154.thread

._crit_edge1154.thread:                           ; preds = %.preheader, %bb.gc, %._crit_edge1154
  %i.amx = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 2, ptr noundef @.str.246) ; 0 uses
  %i.amy = load i32, ptr %i.b, align 4
  %i.amz = add i32 %i.amy, 1
  store i32 %i.amz, ptr %i.b, align 4
  %.pre1291.a = load i32, ptr %i.go, align 8
  br label %bb.gd

bb.gd:                                            ; preds = %._crit_edge1154.thread, %.critedge18
  %i.ana = phi i32 [ %.pre1291.a, %._crit_edge1154.thread ], [ %.pre1292.a, %.critedge18 ] ; 2 uses
  %i.anb = icmp sgt i32 %i.ana, 0
  br i1 %i.anb, label %.lr.ph1163, label %._crit_edge1164

.lr.ph1163:                                       ; preds = %bb.gd
  %i.anc = getelementptr i8, ptr %0, i64 72       ; 3 uses
  br label %bb.ge

bb.ge:                                            ; preds = %.lr.ph1163, %bb.gq
  %i.and = phi i32 [ %i.ana, %.lr.ph1163 ], [ %i.aph, %bb.gq ] ; 4 uses
  %indvars.iv1281 = phi i64 [ 0, %.lr.ph1163 ], [ %indvars.iv.next1282, %bb.gq ] ; 4 uses
  %indvars.iv1276.a = phi i64 [ 1, %.lr.ph1163 ], [ %indvars.iv.next1277, %bb.gq ] ; 2 uses
  %i.ane = load ptr, ptr %i.anc, align 8
  %i.anf = getelementptr [8 x i8], ptr %i.ane, i64 %indvars.iv1281
  %i.ang = load ptr, ptr %i.anf, align 8          ; 7 uses
  %i.anh = icmp eq ptr %i.ang, null
  br i1 %i.anh, label %bb.gq, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.ani = getelementptr i8, ptr %i.ang, i64 12
  %i.anj = load i32, ptr %i.ani, align 4
  %i.ank = icmp eq i32 %i.anj, 0
  br i1 %i.ank, label %bb.gq, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.anl = getelementptr i8, ptr %i.ang, i64 56   ; 2 uses
  %i.anm = load ptr, ptr %i.anl, align 8
  %i.ann = icmp eq ptr %i.anm, null
  br i1 %i.ann, label %bb.gq, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.ano = getelementptr i8, ptr %i.ang, i64 64
  %i.anp = load i32, ptr %i.ano, align 8
  %i.anq = icmp slt i32 %i.anp, 0
  br i1 %i.anq, label %bb.gq, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.anr = getelementptr i8, ptr %i.ang, i64 8
  %i.ans = load i32, ptr %i.anr, align 8
  %i.ant = load ptr, ptr %i.ang, align 8
  %i.anu = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 2, ptr noundef @.str.245, i32 noundef %i.ans, ptr noundef %i.ant) ; 0 uses
  %i.anv = load i32, ptr %i.b, align 4
  %i.anw = add i32 %i.anv, 1
  store i32 %i.anw, ptr %i.b, align 4
  %i.anx = add nuw nsw i64 %indvars.iv1281, 1
  %i.any = load i32, ptr %i.go, align 8           ; 2 uses
  %i.anz = sext i32 %i.any to i64
  %i.aoa = icmp slt i64 %i.anx, %i.anz
  br i1 %i.aoa, label %.lr.ph1159, label %._crit_edge1160

.lr.ph1159:                                       ; preds = %bb.gi
  %i.aob = getelementptr i8, ptr %i.ang, i64 80
  br label %bb.gj

bb.gj:                                            ; preds = %.lr.ph1159, %bb.gp
  %i.aoc = phi i32 [ %i.any, %.lr.ph1159 ], [ %i.aoy, %bb.gp ] ; 5 uses
  %indvars.iv1278 = phi i64 [ %indvars.iv1276.a, %.lr.ph1159 ], [ %indvars.iv.next1279, %bb.gp ] ; 2 uses
  %i.aod = load ptr, ptr %i.anc, align 8
  %i.aoe = getelementptr [8 x i8], ptr %i.aod, i64 %indvars.iv1278
  %i.aof = load ptr, ptr %i.aoe, align 8          ; 7 uses
  %.not913 = icmp eq ptr %i.aof, null
  br i1 %.not913, label %bb.gp, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.aog = getelementptr i8, ptr %i.aof, i64 12
  %i.aoh = load i32, ptr %i.aog, align 4
  %.not914 = icmp eq i32 %i.aoh, 0
  br i1 %.not914, label %bb.gp, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.aoi = getelementptr i8, ptr %i.aof, i64 56
  %i.aoj = load ptr, ptr %i.aoi, align 8          ; 2 uses
  %.not915 = icmp eq ptr %i.aoj, null
  br i1 %.not915, label %bb.gp, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.aok = getelementptr i8, ptr %i.aof, i64 80
  %i.aol = load i32, ptr %i.aok, align 8
  %i.aom = load i32, ptr %i.aob, align 8
  %i.aon = icmp eq i32 %i.aol, %i.aom
  br i1 %i.aon, label %bb.gn, label %bb.gp

bb.gn:                                            ; preds = %bb.gm
  %i.aoo = load ptr, ptr %i.anl, align 8
  %i.aop = call i32 @strcmp(ptr noundef %i.aoo, ptr noundef nonnull dereferenceable(1) %i.aoj) #44
  %i.aoq = icmp eq i32 %i.aop, 0
  br i1 %i.aoq, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  %i.aor = getelementptr i8, ptr %i.aof, i64 8
  %i.aos = load i32, ptr %i.aor, align 8
  %i.aot = load ptr, ptr %i.aof, align 8
  %i.aou = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 2, ptr noundef @.str.245, i32 noundef %i.aos, ptr noundef %i.aot) ; 0 uses
  %i.aov = load i32, ptr %i.b, align 4
  %i.aow = add i32 %i.aov, 1
  store i32 %i.aow, ptr %i.b, align 4
  %i.aox = getelementptr i8, ptr %i.aof, i64 64
  store i32 -1, ptr %i.aox, align 8
  %.pre1293 = load i32, ptr %i.go, align 8
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gj
  %i.aoy = phi i32 [ %.pre1293, %bb.go ], [ %i.aoc, %bb.gn ], [ %i.aoc, %bb.gm ], [ %i.aoc, %bb.gl ], [ %i.aoc, %bb.gk ], [ %i.aoc, %bb.gj ] ; 2 uses
  %indvars.iv.next1279 = add nuw nsw i64 %indvars.iv1278, 1 ; 2 uses
  %i.aoz = sext i32 %i.aoy to i64
  %i.apa = icmp slt i64 %indvars.iv.next1279, %i.aoz
  br i1 %i.apa, label %bb.gj, label %._crit_edge1160, !llvm.loop !216

._crit_edge1160:                                  ; preds = %bb.gp, %bb.gi
  %i.apb = load ptr, ptr %i.anc, align 8
  %i.apc = getelementptr [8 x i8], ptr %i.apb, i64 %indvars.iv1281
  %i.apd = load ptr, ptr %i.apc, align 8
  call void @emit_destructor_code(ptr noundef %i.w, ptr noundef %i.apd, ptr noundef %0, ptr noundef nonnull %i.b)
  %i.ape = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 2, ptr noundef @.str.246) ; 0 uses
  %i.apf = load i32, ptr %i.b, align 4
  %i.apg = add i32 %i.apf, 1
  store i32 %i.apg, ptr %i.b, align 4
  %.pre1294 = load i32, ptr %i.go, align 8
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gh, %bb.ge, %bb.gf, %bb.gg, %._crit_edge1160
  %i.aph = phi i32 [ %i.and, %bb.gh ], [ %i.and, %bb.ge ], [ %i.and, %bb.gf ], [ %i.and, %bb.gg ], [ %.pre1294, %._crit_edge1160 ] ; 2 uses
  %indvars.iv.next1282 = add nuw nsw i64 %indvars.iv1281, 1 ; 2 uses
  %i.api = sext i32 %i.aph to i64
  %i.apj = icmp slt i64 %indvars.iv.next1282, %i.api
  %indvars.iv.next1277 = add nuw nsw i64 %indvars.iv1276.a, 1
  br i1 %i.apj, label %bb.ge, label %._crit_edge1164, !llvm.loop !217

._crit_edge1164:                                  ; preds = %bb.gq, %bb.gd
  %i.apk = load ptr, ptr %i.fi, align 8
  call void @tplt_xfer(ptr noundef %i.apk, ptr noundef %i.r, ptr noundef %i.w, ptr noundef nonnull %i.b)
  %i.apl = getelementptr i8, ptr %0, i64 176
  %i.apm = load ptr, ptr %i.apl, align 8
  call void @tplt_print(ptr noundef %i.w, ptr noundef %0, ptr noundef %i.apm, ptr noundef nonnull %i.b)
  %i.apn = load ptr, ptr %i.fi, align 8
  call void @tplt_xfer(ptr noundef %i.apn, ptr noundef %i.r, ptr noundef %i.w, ptr noundef nonnull %i.b)
  %.38271165 = load ptr, ptr %i.tp, align 8       ; 2 uses
  %.not9001166 = icmp eq ptr %.38271165, null
  br i1 %.not9001166, label %._crit_edge1171, label %.lr.ph1170

.lr.ph1170:                                       ; preds = %._crit_edge1164, %.lr.ph1170
  %.38271168 = phi ptr [ %.3827, %.lr.ph1170 ], [ %.38271165, %._crit_edge1164 ] ; 3 uses
  %.261167 = phi i32 [ %i.apw, %.lr.ph1170 ], [ 0, %._crit_edge1164 ] ; 2 uses
  %i.apo = load ptr, ptr %.38271168, align 8
  %i.app = getelementptr i8, ptr %i.apo, i64 8
  %i.apq = load i32, ptr %i.app, align 8
  %i.apr = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 2, ptr noundef @.str.248, i32 noundef %i.apq, i32 noundef %.261167) ; 0 uses
  call void @rule_print(ptr noundef %i.w, ptr noundef nonnull %.38271168)
  %i.aps = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 2, ptr noundef @.str.249) ; 0 uses
  %i.apt = load i32, ptr %i.b, align 4
  %i.apu = add i32 %i.apt, 1
  store i32 %i.apu, ptr %i.b, align 4
  %i.apv = getelementptr i8, ptr %.38271168, i64 128
  %i.apw = add i32 %.261167, 1
  %.3827 = load ptr, ptr %i.apv, align 8          ; 2 uses
  %.not900 = icmp eq ptr %.3827, null
  br i1 %.not900, label %._crit_edge1171, label %.lr.ph1170, !llvm.loop !218

._crit_edge1171:                                  ; preds = %.lr.ph1170, %._crit_edge1164
  %i.apx = load ptr, ptr %i.fi, align 8
  call void @tplt_xfer(ptr noundef %i.apx, ptr noundef %i.r, ptr noundef %i.w, ptr noundef nonnull %i.b)
  %.48281172 = load ptr, ptr %i.tp, align 8       ; 2 uses
  %.not9011173 = icmp eq ptr %.48281172, null
  br i1 %.not9011173, label %._crit_edge1178, label %.lr.ph1177

.lr.ph1177:                                       ; preds = %._crit_edge1171, %.lr.ph1177
  %.48281175 = phi ptr [ %.4828, %.lr.ph1177 ], [ %.48281172, %._crit_edge1171 ] ; 3 uses
  %.271174 = phi i32 [ %i.aqg, %.lr.ph1177 ], [ 0, %._crit_edge1171 ] ; 2 uses
  %i.apy = getelementptr i8, ptr %.48281175, i64 24
  %i.apz = load i32, ptr %i.apy, align 8
  %i.aqa = sub i32 0, %i.apz
  %i.aqb = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 2, ptr noundef @.str.250, i32 noundef %i.aqa, i32 noundef %.271174) ; 0 uses
  call void @rule_print(ptr noundef %i.w, ptr noundef nonnull %.48281175)
  %i.aqc = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 2, ptr noundef @.str.249) ; 0 uses
  %i.aqd = load i32, ptr %i.b, align 4
  %i.aqe = add i32 %i.aqd, 1
  store i32 %i.aqe, ptr %i.b, align 4
  %i.aqf = getelementptr i8, ptr %.48281175, i64 128
  %i.aqg = add i32 %.271174, 1
  %.4828 = load ptr, ptr %i.aqf, align 8          ; 2 uses
  %.not901 = icmp eq ptr %.4828, null
  br i1 %.not901, label %._crit_edge1178, label %.lr.ph1177, !llvm.loop !219

._crit_edge1178:                                  ; preds = %.lr.ph1177, %._crit_edge1171
  %i.aqh = load ptr, ptr %i.fi, align 8
  call void @tplt_xfer(ptr noundef %i.aqh, ptr noundef %i.r, ptr noundef %i.w, ptr noundef nonnull %i.b)
  %.58291179 = load ptr, ptr %i.tp, align 8       ; 2 uses
  %.not9021180 = icmp eq ptr %.58291179, null
  br i1 %.not9021180, label %._crit_edge1199, label %.lr.ph1184

.lr.ph1184:                                       ; preds = %._crit_edge1178, %.lr.ph1184
  %.58291182 = phi ptr [ %.5829, %.lr.ph1184 ], [ %.58291179, %._crit_edge1178 ] ; 2 uses
  %.281181 = phi i32 [ %i.aqj, %.lr.ph1184 ], [ 0, %._crit_edge1178 ]
  %i.aqi = call i32 @translate_code(ptr noundef %0, ptr noundef nonnull %.58291182)
  %i.aqj = add i32 %i.aqi, %.281181               ; 2 uses
  %i.aqk = getelementptr i8, ptr %.58291182, i64 128
  %.5829 = load ptr, ptr %i.aqk, align 8          ; 2 uses
  %.not902 = icmp eq ptr %.5829, null
  br i1 %.not902, label %._crit_edge1185, label %.lr.ph1184, !llvm.loop !220

._crit_edge1185:                                  ; preds = %.lr.ph1184
  %i.aql = icmp eq i32 %i.aqj, 0
  br i1 %i.aql, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %._crit_edge1185
  %i.aqm = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 2, ptr noundef @.str.251) ; 0 uses
  %i.aqn = load i32, ptr %i.b, align 4
  %i.aqo = add i32 %i.aqn, 1
  store i32 %i.aqo, ptr %i.b, align 4
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %._crit_edge1185
  %.68301194.pr = load ptr, ptr %i.tp, align 8    ; 2 uses
  %.not9041195 = icmp eq ptr %.68301194.pr, null
  br i1 %.not9041195, label %._crit_edge1199, label %.lr.ph1198

.lr.ph1198:                                       ; preds = %bb.gs, %bb.ha
  %.68301196 = phi ptr [ %.6830, %bb.ha ], [ %.68301194.pr, %bb.gs ] ; 10 uses
  %i.aqp = getelementptr i8, ptr %.68301196, i64 100 ; 2 uses
  %i.aqq = load i32, ptr %i.aqp, align 4
  %.not910 = icmp eq i32 %i.aqq, 0
  br i1 %.not910, label %bb.gt, label %bb.ha

bb.gt:                                            ; preds = %.lr.ph1198
  %i.aqr = getelementptr i8, ptr %.68301196, i64 96
  %i.aqs = load i32, ptr %i.aqr, align 8
  %.not911 = icmp eq i32 %i.aqs, 0
  br i1 %.not911, label %bb.gu, label %bb.ha

bb.gu:                                            ; preds = %bb.gt
  %i.aqt = getelementptr i8, ptr %.68301196, i64 92
  %i.aqu = load i32, ptr %i.aqt, align 4
  %i.aqv = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 2, ptr noundef @.str.252, i32 noundef %i.aqu) ; 0 uses
  call fastcc void @writeRuleText(ptr noundef %i.w, ptr noundef %.68301196)
  %i.aqw = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 2, ptr noundef @.str.249) ; 0 uses
  %i.aqx = load i32, ptr %i.b, align 4
  %i.aqy = add i32 %i.aqx, 1
  store i32 %i.aqy, ptr %i.b, align 4
  %.0.in1187 = getelementptr i8, ptr %.68301196, i64 128
  %.01188 = load ptr, ptr %.0.in1187, align 8     ; 2 uses
  %.not9121189 = icmp eq ptr %.01188, null
  br i1 %.not9121189, label %._crit_edge1193, label %.lr.ph1192

.lr.ph1192:                                       ; preds = %bb.gu
  %i.aqz = getelementptr i8, ptr %.68301196, i64 56
  %i.ara = getelementptr i8, ptr %.68301196, i64 64
  %i.arb = getelementptr i8, ptr %.68301196, i64 72
  br label %bb.gv

bb.gv:                                            ; preds = %.lr.ph1192, %bb.gz
  %.01190 = phi ptr [ %.01188, %.lr.ph1192 ], [ %.0, %bb.gz ] ; 7 uses
  %i.arc = getelementptr i8, ptr %.01190, i64 56
  %i.ard = load ptr, ptr %i.arc, align 8
  %i.are = load ptr, ptr %i.aqz, align 8
  %i.arf = icmp eq ptr %i.ard, %i.are
  br i1 %i.arf, label %bb.gw, label %bb.gz

bb.gw:                                            ; preds = %bb.gv
  %i.arg = getelementptr i8, ptr %.01190, i64 64
  %i.arh = load ptr, ptr %i.arg, align 8
  %i.ari = load ptr, ptr %i.ara, align 8
  %i.arj = icmp eq ptr %i.arh, %i.ari
  br i1 %i.arj, label %bb.gx, label %bb.gz

bb.gx:                                            ; preds = %bb.gw
  %i.ark = getelementptr i8, ptr %.01190, i64 72
  %i.arl = load ptr, ptr %i.ark, align 8
  %i.arm = load ptr, ptr %i.arb, align 8
  %i.arn = icmp eq ptr %i.arl, %i.arm
  br i1 %i.arn, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  %i.aro = getelementptr i8, ptr %.01190, i64 92  ; 2 uses
  %i.arp = load i32, ptr %i.aro, align 4
  %i.arq = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 2, ptr noundef @.str.252, i32 noundef %i.arp) ; 0 uses
  call fastcc void @writeRuleText(ptr noundef %i.w, ptr noundef %.01190)
  %i.arr = load i32, ptr %i.aro, align 4
  %i.ars = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 2, ptr noundef @.str.253, i32 noundef %i.arr) ; 0 uses
  %i.art = load i32, ptr %i.b, align 4
  %i.aru = add i32 %i.art, 1
  store i32 %i.aru, ptr %i.b, align 4
  %i.arv = getelementptr i8, ptr %.01190, i64 100
  store i32 1, ptr %i.arv, align 4
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gv, %bb.gw, %bb.gx, %bb.gy
  %.0.in = getelementptr i8, ptr %.01190, i64 128
  %.0 = load ptr, ptr %.0.in, align 8             ; 2 uses
  %.not912 = icmp eq ptr %.0, null
  br i1 %.not912, label %._crit_edge1193, label %bb.gv, !llvm.loop !221

._crit_edge1193:                                  ; preds = %bb.gz, %bb.gu
  call void @emit_code(ptr noundef %i.w, ptr noundef nonnull %.68301196, ptr noundef %0, ptr noundef nonnull %i.b)
  %i.arw = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 2, ptr noundef @.str.254) ; 0 uses
  %i.arx = load i32, ptr %i.b, align 4
  %i.ary = add i32 %i.arx, 1
  store i32 %i.ary, ptr %i.b, align 4
  store i32 1, ptr %i.aqp, align 4
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gt, %.lr.ph1198, %._crit_edge1193
  %i.arz = getelementptr i8, ptr %.68301196, i64 128
  %.6830 = load ptr, ptr %i.arz, align 8          ; 2 uses
  %.not904 = icmp eq ptr %.6830, null
  br i1 %.not904, label %._crit_edge1199, label %.lr.ph1198, !llvm.loop !222

._crit_edge1199:                                  ; preds = %bb.ha, %._crit_edge1178, %bb.gs
  %i.asa = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 2, ptr noundef @.str.255) ; 0 uses
  %i.asb = load i32, ptr %i.b, align 4
  %i.asc = add i32 %i.asb, 1
  store i32 %i.asc, ptr %i.b, align 4
  %.78311200 = load ptr, ptr %i.tp, align 8       ; 2 uses
  %.not9051201 = icmp eq ptr %.78311200, null
  br i1 %.not9051201, label %._crit_edge1205, label %.lr.ph1204

.lr.ph1204:                                       ; preds = %._crit_edge1199, %bb.hg
  %.78311202 = phi ptr [ %.7831, %bb.hg ], [ %.78311200, %._crit_edge1199 ] ; 6 uses
  %i.asd = getelementptr i8, ptr %.78311202, i64 100
  %i.ase = load i32, ptr %i.asd, align 4
  %.not907 = icmp eq i32 %i.ase, 0
  br i1 %.not907, label %bb.hb, label %bb.hg

bb.hb:                                            ; preds = %.lr.ph1204
  %i.asf = getelementptr i8, ptr %.78311202, i64 92 ; 3 uses
  %i.asg = load i32, ptr %i.asf, align 4
  %i.ash = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 2, ptr noundef @.str.256, i32 noundef %i.asg) ; 0 uses
end_hunk_0
