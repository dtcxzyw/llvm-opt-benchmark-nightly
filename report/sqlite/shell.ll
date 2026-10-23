Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/shell?download=true
inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 119
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_format_query_result:bb.a
  %i.ank = icmp sgt i32 %i.anj, 0
  br i1 %i.ank, label %.lr.ph.i42, label %._crit_edge.i41

.lr.ph.i42:                                       ; preds = %.preheader.i40, %.lr.ph.i42
  %indvars.iv.i43 = phi i64 [ %indvars.iv.next.i44, %.lr.ph.i42 ], [ 0, %.preheader.i40 ] ; 2 uses
  %i.anl = load ptr, ptr %i.ang, align 8, !tbaa !52
  %i.anm = getelementptr inbounds nuw [8 x i8], ptr %i.anl, i64 %indvars.iv.i43
  %i.ann = load ptr, ptr %i.anm, align 8, !tbaa !88
  call void @sqlite3_free(ptr noundef %i.ann) #45
  %indvars.iv.next.i44 = add nuw nsw i64 %indvars.iv.i43, 1 ; 2 uses
  %i.ano = load i32, ptr %i.ani, align 4, !tbaa !71
  %i.anp = sext i32 %i.ano to i64
  %i.anq = icmp slt i64 %indvars.iv.next.i44, %i.anp
  br i1 %i.anq, label %.lr.ph.i42, label %._crit_edge.loopexit.i, !llvm.loop !718

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i42
  %.pre.i45 = load ptr, ptr %i.ang, align 8, !tbaa !52
  br label %._crit_edge.i41

._crit_edge.i41:                                  ; preds = %._crit_edge.loopexit.i, %.preheader.i40
  %i.anr = phi ptr [ %.pre.i45, %._crit_edge.loopexit.i ], [ %i.anh, %.preheader.i40 ]
  call void @sqlite3_free(ptr noundef %i.anr) #45
  br label %bb.jk

bb.ji:                                            ; preds = %qrfResetStmt.exit, %qrfResetStmt.exit
  call fastcc void @qrfEqpRender(ptr noundef nonnull %4)
  br label %bb.jk

bb.jj:                                            ; preds = %qrfResetStmt.exit
  call fastcc void @qrfEqpRender(ptr noundef nonnull %4)
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %bb.ji, %._crit_edge.i41, %bb.jh, %bb.jg, %bb.jf, %bb.je, %bb.jd, %bb.jc, %bb.jb, %bb.ja, %qrfResetStmt.exit
  %i.ans = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  %i.ant = load ptr, ptr %i.ans, align 8, !tbaa !107
  %.not.i.i34 = icmp eq ptr %i.ant, null
  br i1 %.not.i.i34, label %qrfWrite.exit.i35, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.anu = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.anv = load ptr, ptr %i.anu, align 8, !tbaa !69
  %i.anw = call i32 @sqlite3_str_length(ptr noundef %i.anv) #45 ; 3 uses
  %i.anx = icmp sgt i32 %i.anw, 0
  br i1 %i.anx, label %bb.jm, label %qrfWrite.exit.i35

bb.jm:                                            ; preds = %bb.jl
  %i.any = load ptr, ptr %i.ans, align 8, !tbaa !107
  %i.anz = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.aoa = load ptr, ptr %i.anz, align 8, !tbaa !108
  %i.aob = load ptr, ptr %i.anu, align 8, !tbaa !69
  %i.aoc = call ptr @sqlite3_str_value(ptr noundef %i.aob) #45
  %i.aod = zext nneg i32 %i.anw to i64
  %i.aoe = call i32 %i.any(ptr noundef %i.aoa, ptr noundef %i.aoc, i64 noundef %i.aod) #45, !inline_history !719 ; 2 uses
  %i.aof = load ptr, ptr %i.anu, align 8, !tbaa !69
  call void @sqlite3_str_reset(ptr noundef %i.aof) #45
  %.not11.i.i38 = icmp eq i32 %i.aoe, 0
  br i1 %.not11.i.i38, label %qrfWrite.exit.i35, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef %i.aoe, ptr noundef nonnull @.str.217, i32 noundef %i.anw)
  br label %qrfWrite.exit.i35

qrfWrite.exit.i35:                                ; preds = %bb.jn, %bb.jm, %bb.jl, %bb.jk
  %i.aog = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  %i.aoh = load ptr, ptr %i.aog, align 8, !tbaa !69 ; 2 uses
  %.not.i65.i = icmp eq ptr %i.aoh, null
  br i1 %.not.i65.i, label %qrfStrErr.exit.i37, label %bb.jo

bb.jo:                                            ; preds = %qrfWrite.exit.i35
  %i.aoi = call i32 @sqlite3_str_errcode(ptr noundef nonnull %i.aoh) #45 ; 3 uses
  %.not6.i.i36 = icmp eq i32 %i.aoi, 0
  br i1 %.not6.i.i36, label %qrfStrErr.exit.i37, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.aoj = call ptr @sqlite3_errstr(i32 noundef %i.aoi) #45
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef %i.aoi, ptr noundef %i.aoj)
  br label %qrfStrErr.exit.i37

qrfStrErr.exit.i37:                               ; preds = %bb.jp, %bb.jo, %qrfWrite.exit.i35
  %i.aok = getelementptr inbounds nuw i8, ptr %4, i64 216 ; 5 uses
  %i.aol = load ptr, ptr %i.aok, align 8, !tbaa !737 ; 2 uses
  %.not60.i = icmp eq ptr %i.aol, null
  br i1 %.not60.i, label %bb.jw, label %bb.jq

bb.jq:                                            ; preds = %qrfStrErr.exit.i37
  %i.aom = load ptr, ptr %i.aol, align 8, !tbaa !88 ; 2 uses
  %.not62.i = icmp eq ptr %i.aom, null
  br i1 %.not62.i, label %bb.jv, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.aon = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aom) #46 ; 2 uses
  %i.aoo = load ptr, ptr %i.aog, align 8, !tbaa !69
  %i.aop = call i32 @sqlite3_str_length(ptr noundef %i.aoo) #45
  %i.aoq = sext i32 %i.aop to i64
  %i.aor = load ptr, ptr %i.aok, align 8, !tbaa !737
  %i.aos = load ptr, ptr %i.aor, align 8, !tbaa !88
  %i.aot = add nsw i64 %i.aoq, 1                  ; 2 uses
  %i.aou = add i64 %i.aot, %i.aon
  %i.aov = call ptr @sqlite3_realloc64(ptr noundef %i.aos, i64 noundef %i.aou) #45 ; 3 uses
  %i.aow = icmp eq ptr %i.aov, null
  %i.aox = load ptr, ptr %i.aok, align 8, !tbaa !737 ; 2 uses
  br i1 %i.aow, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %bb.jr
  %i.aoy = load ptr, ptr %i.aox, align 8, !tbaa !88
  call void @sqlite3_free(ptr noundef %i.aoy) #45
  %i.aoz = load ptr, ptr %i.aok, align 8, !tbaa !737
  store ptr null, ptr %i.aoz, align 8, !tbaa !88
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef 7, ptr noundef nonnull @.str.56)
  br label %bb.ju

bb.jt:                                            ; preds = %bb.jr
  store ptr %i.aov, ptr %i.aox, align 8, !tbaa !88
  %i.apa = getelementptr inbounds i8, ptr %i.aov, i64 %i.aon
  %i.apb = load ptr, ptr %i.aog, align 8, !tbaa !69
  %i.apc = call ptr @sqlite3_str_value(ptr noundef %i.apb) #45
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.apa, ptr align 1 %i.apc, i64 %i.aot, i1 false)
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jt, %bb.js
  %i.apd = load ptr, ptr %i.aog, align 8, !tbaa !69
  %i.ape = call ptr @sqlite3_str_finish(ptr noundef %i.apd) #45
  call void @sqlite3_free(ptr noundef %i.ape) #45
  br label %bb.jy

bb.jv:                                            ; preds = %bb.jq
  %i.apf = load ptr, ptr %i.aog, align 8, !tbaa !69
  %i.apg = call ptr @sqlite3_str_finish(ptr noundef %i.apf) #45
  %i.aph = load ptr, ptr %i.aok, align 8, !tbaa !737
  store ptr %i.apg, ptr %i.aph, align 8, !tbaa !88
  br label %bb.jy

bb.jw:                                            ; preds = %qrfStrErr.exit.i37
  %i.api = load ptr, ptr %i.aog, align 8, !tbaa !69 ; 2 uses
  %.not61.i = icmp eq ptr %i.api, null
  br i1 %.not61.i, label %bb.jy, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.apj = call ptr @sqlite3_str_finish(ptr noundef nonnull %i.api) #45
  call void @sqlite3_free(ptr noundef %i.apj) #45
  br label %bb.jy

bb.jy:                                            ; preds = %bb.jx, %bb.jw, %bb.jv, %bb.ju
  %i.apk = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.apl = load i32, ptr %i.apk, align 8, !tbaa !728 ; 2 uses
  %i.apm = icmp sgt i32 %i.apl, 0
  br i1 %i.apm, label %bb.jz, label %bb.ka

bb.jz:                                            ; preds = %bb.jy
  %i.apn = load ptr, ptr %4, align 8, !tbaa !68
  %i.apo = add nsw i32 %i.apl, -1
  %i.app = call i32 @sqlite3_stmt_explain(ptr noundef %i.apn, i32 noundef %i.apo) #45 ; 0 uses
  br label %bb.ka

bb.ka:                                            ; preds = %bb.jz, %bb.jy
  %i.apq = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.apr = load ptr, ptr %i.apq, align 8, !tbaa !738 ; 2 uses
  %.not63.i = icmp eq ptr %i.apr, null
  br i1 %.not63.i, label %bb.kc, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  call void @sqlite3_free(ptr noundef nonnull %i.apr) #45
  br label %bb.kc

bb.kc:                                            ; preds = %bb.kb, %bb.ka
  %i.aps = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.apt = load ptr, ptr %i.aps, align 8, !tbaa !118 ; 2 uses
  %.not64.i = icmp eq ptr %i.apt, null
  br i1 %.not64.i, label %qrfFinalize.exit, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.apu = call ptr @sqlite3_db_handle(ptr noundef nonnull %i.apt) #45
  %i.apv = load ptr, ptr %i.aps, align 8, !tbaa !118
  %i.apw = call i32 @sqlite3_finalize(ptr noundef %i.apv) #45 ; 0 uses
  %i.apx = call i32 @sqlite3_close(ptr noundef %i.apu) #45 ; 0 uses
  br label %qrfFinalize.exit

qrfFinalize.exit:                                 ; preds = %bb.kc, %bb.kd
  %i.apy = load i32, ptr %i.amh, align 8, !tbaa !70
  br label %bb.ke

bb.ke:                                            ; preds = %bb.b, %bb.a, %qrfFinalize.exit
  %.0 = phi i32 [ %i.apy, %qrfFinalize.exit ], [ 0, %bb.a ], [ 21, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #45
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @qrfExplain(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !68
  %i.b = tail call i32 @sqlite3_step(ptr noundef %i.a) #45
  %i.c = icmp eq i32 %i.b, 100
  br i1 %i.c, label %.lr.ph212, label %.critedge

.lr.ph212:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph212, %qrfStringInArray.exit180.thread
  %indvars.iv240 = phi i64 [ 0, %.lr.ph212 ], [ %indvars.iv.next241, %qrfStringInArray.exit180.thread ] ; 18 uses
  %.0142210 = phi i64 [ 0, %.lr.ph212 ], [ %.1143, %qrfStringInArray.exit180.thread ] ; 3 uses
  %.0145209 = phi ptr [ null, %.lr.ph212 ], [ %.1146, %qrfStringInArray.exit180.thread ] ; 3 uses
  %.0148208 = phi ptr [ null, %.lr.ph212 ], [ %.1149, %qrfStringInArray.exit180.thread ] ; 3 uses
  %i.e = trunc i64 %indvars.iv240 to i32
  %i.f = add i32 %i.e, 1
  %i.g = trunc i64 %indvars.iv240 to i32
  %i.h = add i32 %i.g, 1
  %i.i = load i32, ptr %i.d, align 8, !tbaa !70
  %.not = icmp eq i32 %i.i, 0
  %i.j = trunc i64 %indvars.iv240 to i32          ; 5 uses
  br i1 %.not, label %bb.c, label %.critedge.loopexit

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8, !tbaa !68
  %i.l = tail call i32 @sqlite3_column_int(ptr noundef %i.k, i32 noundef 0) #45 ; 7 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !68
  %i.n = tail call ptr @sqlite3_column_text(ptr noundef %i.m, i32 noundef 1) #45 ; 13 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !68
  %i.p = tail call i32 @sqlite3_column_int(ptr noundef %i.o, i32 noundef 2) #45
  %i.q = load ptr, ptr %0, align 8, !tbaa !68
  %i.r = tail call i32 @sqlite3_column_int(ptr noundef %i.q, i32 noundef 3) #45 ; 7 uses
  %i.s = sub nsw i32 %i.j, %i.l
  %i.t = add nsw i32 %i.r, %i.s                   ; 3 uses
  %.not158 = icmp sgt i64 %.0142210, %indvars.iv240
  br i1 %.not158, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = add nsw i64 %.0142210, 100               ; 2 uses
  %i.v = shl i64 %i.u, 2                          ; 2 uses
  %i.w = tail call ptr @sqlite3_realloc64(ptr noundef %.0145209, i64 noundef %i.v) #45 ; 3 uses
  %i.x = tail call ptr @sqlite3_realloc64(ptr noundef %.0148208, i64 noundef %i.v) #45 ; 3 uses
  %i.y = icmp eq ptr %i.w, null
  %i.z = icmp eq ptr %i.x, null
  %or.cond = select i1 %i.y, i1 true, i1 %i.z
  br i1 %or.cond, label %.critedge162, label %bb.e

.critedge162:                                     ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %0, i32 noundef 7, ptr noundef nonnull @.str.56)
  tail call void @sqlite3_free(ptr noundef %i.w) #45
  br label %qrfWrite.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1149 = phi ptr [ %i.x, %bb.d ], [ %.0148208, %bb.c ] ; 5 uses
  %.1146 = phi ptr [ %i.w, %bb.d ], [ %.0145209, %bb.c ] ; 8 uses
  %.1143 = phi i64 [ %i.u, %bb.d ], [ %.0142210, %bb.c ]
  %i.aa = icmp eq ptr %i.n, null
  br i1 %i.aa, label %qrfStringInArray.exit172.thread.thread191, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.ab = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(6) @.str.224) #46
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %.preheader.i165, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.preheader
  %i.ad = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(7) @.str.225) #46
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %.preheader.i165, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.af = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(7) @.str.226) #46
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %.preheader.i165, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.ah = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(11) @.str.227) #46
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.preheader.i165, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %.lr.ph.i.3
  %i.aj = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(7) @.str.228) #46
  %i.ak = icmp eq i32 %i.aj, 0
  %spec.select278 = zext i1 %i.ak to i32
  br label %.preheader.i165

qrfStringInArray.exit172.thread.thread191:        ; preds = %bb.e
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.1149, i64 %indvars.iv240
  store i32 0, ptr %i.al, align 4, !tbaa !53
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.1146, i64 %indvars.iv240
  store i32 0, ptr %i.am, align 4, !tbaa !53
  br label %qrfStringInArray.exit180.thread

.preheader.i165:                                  ; preds = %.lr.ph.i.4, %.lr.ph.i.3, %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.i.preheader
  %.07.i.ph = phi i32 [ 1, %.lr.ph.i.3 ], [ 1, %.lr.ph.i.preheader ], [ 1, %.lr.ph.i.1 ], [ %spec.select278, %.lr.ph.i.4 ], [ 1, %.lr.ph.i.2 ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.1149, i64 %indvars.iv240
  store i32 %.07.i.ph, ptr %i.an, align 4, !tbaa !53
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.1146, i64 %indvars.iv240
  store i32 0, ptr %i.ao, align 4, !tbaa !53
  %i.ap = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(5) @.str.218) #46
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %qrfStringInArray.exit172, label %.lr.ph.i167.1

.lr.ph.i167.1:                                    ; preds = %.preheader.i165
  %i.ar = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(5) @.str.219) #46
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %qrfStringInArray.exit172, label %.lr.ph.i167.2

.lr.ph.i167.2:                                    ; preds = %.lr.ph.i167.1
  %i.at = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(6) @.str.220) #46
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %qrfStringInArray.exit172, label %.lr.ph.i167.3

.lr.ph.i167.3:                                    ; preds = %.lr.ph.i167.2
  %i.av = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(6) @.str.221) #46
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %qrfStringInArray.exit172, label %.lr.ph.i167.4

.lr.ph.i167.4:                                    ; preds = %.lr.ph.i167.3
  %i.ax = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(11) @.str.222) #46
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %qrfStringInArray.exit172, label %.lr.ph.i167.5

.lr.ph.i167.5:                                    ; preds = %.lr.ph.i167.4
  %i.az = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(7) @.str.223) #46
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %qrfStringInArray.exit172, label %.lr.ph.i175

qrfStringInArray.exit172:                         ; preds = %.lr.ph.i167.5, %.lr.ph.i167.4, %.lr.ph.i167.3, %.lr.ph.i167.2, %.lr.ph.i167.1, %.preheader.i165
  %i.bb = icmp sgt i32 %i.t, 0
  %i.bc = sext i32 %i.t to i64
  %i.bd = icmp sgt i64 %indvars.iv240, %i.bc
  %or.cond229 = select i1 %i.bb, i1 %i.bd, i1 false
  br i1 %or.cond229, label %.lr.ph.preheader, label %.lr.ph.i175

.lr.ph.preheader:                                 ; preds = %qrfStringInArray.exit172
  %i.be = add i32 %i.r, %i.j
  %i.bf = sub i32 %i.be, %i.l
  %i.bg = zext i32 %i.bf to i64                   ; 4 uses
  %1 = add i32 %i.j, 1
  %i.bh = add i32 %i.r, %1
  %i.bi = sub i32 %i.bh, %i.l
  %i.bj = sext i32 %i.bi to i64                   ; 2 uses
  %i.bk = tail call i64 @llvm.smax.i64(i64 %indvars.iv240, i64 %i.bj)
  %i.bl = add i64 %i.bk, 1
  %i.bm = sub i64 %i.bl, %i.bj                    ; 3 uses
  %min.iters.check286 = icmp ult i64 %i.bm, 16
  br i1 %min.iters.check286, label %.lr.ph.preheader300, label %vector.scevcheck284

vector.scevcheck284:                              ; preds = %.lr.ph.preheader
  %i.bn = add i32 %i.r, %i.f
  %i.bo = sub i32 %i.bn, %i.l                     ; 3 uses
  %i.bp = sext i32 %i.bo to i64                   ; 2 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %indvars.iv240, i64 %i.bp)
  %i.bq = sub i64 %smax, %i.bp                    ; 2 uses
  %i.br = trunc i64 %i.bq to i32
  %i.bs = add i32 %i.bo, %i.br
  %i.bt = icmp slt i32 %i.bs, %i.bo
  %i.bu = icmp ugt i64 %i.bq, 4294967295
  %i.bv = or i1 %i.bt, %i.bu
  br i1 %i.bv, label %.lr.ph.preheader300, label %vector.ph287

vector.ph287:                                     ; preds = %vector.scevcheck284
  %n.vec288 = and i64 %i.bm, -8                   ; 3 uses
  %i.bw = add i64 %n.vec288, %i.bg
  %invariant.gep = getelementptr [4 x i8], ptr %.1146, i64 %i.bg
  br label %vector.body289

vector.body289:                                   ; preds = %vector.body289, %vector.ph287
  %index290 = phi i64 [ 0, %vector.ph287 ], [ %index.next293, %vector.body289 ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index290 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load291 = load <4 x i32>, ptr %gep, align 4, !tbaa !53
  %wide.load292 = load <4 x i32>, ptr %i.bx, align 4, !tbaa !53
  %i.by = add nsw <4 x i32> %wide.load291, splat (i32 2)
  %i.bz = add nsw <4 x i32> %wide.load292, splat (i32 2)
  store <4 x i32> %i.by, ptr %gep, align 4, !tbaa !53
  store <4 x i32> %i.bz, ptr %i.bx, align 4, !tbaa !53
  %index.next293 = add nuw i64 %index290, 8       ; 2 uses
  %i.ca = icmp eq i64 %index.next293, %n.vec288
  br i1 %i.ca, label %middle.block294, label %vector.body289, !llvm.loop !739

middle.block294:                                  ; preds = %vector.body289
  %cmp.n295 = icmp eq i64 %i.bm, %n.vec288
  br i1 %cmp.n295, label %.lr.ph.i175, label %.lr.ph.preheader300

.lr.ph.preheader300:                              ; preds = %vector.scevcheck284, %.lr.ph.preheader, %middle.block294
  %indvars.iv.ph = phi i64 [ %i.bg, %vector.scevcheck284 ], [ %i.bg, %.lr.ph.preheader ], [ %i.bw, %middle.block294 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader300, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader300 ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.1146, i64 %indvars.iv ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !53
  %i.cd = add nsw i32 %i.cc, 2
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ce = shl i64 %indvars.iv.next, 32
  %i.cf = ashr exact i64 %i.ce, 32
  %i.cg = icmp slt i64 %i.cf, %indvars.iv240
  br i1 %i.cg, label %.lr.ph, label %.lr.ph.i175, !llvm.loop !740

.lr.ph.i175:                                      ; preds = %.lr.ph, %middle.block294, %.lr.ph.i167.5, %qrfStringInArray.exit172
  %i.ch = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(5) @.str.229) #46
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %qrfStringInArray.exit180, label %qrfStringInArray.exit180.thread

qrfStringInArray.exit180:                         ; preds = %.lr.ph.i175
  %i.cj = sext i32 %i.t to i64                    ; 2 uses
  %i.ck = icmp sgt i64 %indvars.iv240, %i.cj
  br i1 %i.ck, label %bb.f, label %qrfStringInArray.exit180.thread

bb.f:                                             ; preds = %qrfStringInArray.exit180
  %i.cl = getelementptr inbounds [4 x i8], ptr %.1149, i64 %i.cj
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !53
  %i.cn = icmp ne i32 %i.cm, 0
  %i.co = icmp ne i32 %i.p, 0
  %or.cond5 = select i1 %i.cn, i1 true, i1 %i.co
  br i1 %or.cond5, label %.lr.ph207.preheader, label %qrfStringInArray.exit180.thread

.lr.ph207.preheader:                              ; preds = %bb.f
  %i.cp = add i32 %i.r, %i.j
  %i.cq = sub i32 %i.cp, %i.l
  %i.cr = sext i32 %i.cq to i64                   ; 4 uses
  %2 = add nuw i64 %indvars.iv240, 1
  %3 = add i32 %i.j, 1
  %i.cs = add i32 %i.r, %3
  %i.ct = sub i32 %i.cs, %i.l
  %i.cu = zext i32 %i.ct to i64
  %i.cv = sub i64 %2, %i.cu                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.cv, 12
  br i1 %min.iters.check, label %.lr.ph207.preheader299, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph207.preheader
  %i.cw = add i32 %i.r, %i.h
  %i.cx = sub i32 %i.cw, %i.l                     ; 2 uses
  %i.cy = zext i32 %i.cx to i64
  %i.cz = sub i64 %indvars.iv240, %i.cy           ; 2 uses
  %i.da = trunc i64 %i.cz to i32
  %i.db = xor i32 %i.cx, -1
  %i.dc = icmp ult i32 %i.db, %i.da
  %i.dd = icmp ugt i64 %i.cz, 4294967295
  %i.de = or i1 %i.dc, %i.dd
  br i1 %i.de, label %.lr.ph207.preheader299, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.cv, -8                      ; 3 uses
  %i.df = add i64 %n.vec, %i.cr
  %invariant.gep307 = getelementptr [4 x i8], ptr %.1146, i64 %i.cr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep308 = getelementptr [4 x i8], ptr %invariant.gep307, i64 %index ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %gep308, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %gep308, align 4, !tbaa !53
  %wide.load283 = load <4 x i32>, ptr %i.dg, align 4, !tbaa !53
  %i.dh = add nsw <4 x i32> %wide.load, splat (i32 2)
  %i.di = add nsw <4 x i32> %wide.load283, splat (i32 2)
  store <4 x i32> %i.dh, ptr %gep308, align 4, !tbaa !53
  store <4 x i32> %i.di, ptr %i.dg, align 4, !tbaa !53
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !741

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cv, %n.vec
  br i1 %cmp.n, label %qrfStringInArray.exit180.thread, label %.lr.ph207.preheader299

.lr.ph207.preheader299:                           ; preds = %vector.scevcheck, %.lr.ph207.preheader, %middle.block
  %indvars.iv237.ph = phi i64 [ %i.cr, %vector.scevcheck ], [ %i.cr, %.lr.ph207.preheader ], [ %i.df, %middle.block ]
  br label %.lr.ph207

.lr.ph207:                                        ; preds = %.lr.ph207.preheader299, %.lr.ph207
  %indvars.iv237 = phi i64 [ %indvars.iv.next238, %.lr.ph207 ], [ %indvars.iv237.ph, %.lr.ph207.preheader299 ] ; 2 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %.1146, i64 %indvars.iv237 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !53
  %i.dm = add nsw i32 %i.dl, 2
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !53
  %indvars.iv.next238 = add nsw i64 %indvars.iv237, 1 ; 2 uses
  %i.dn = and i64 %indvars.iv.next238, 4294967295
  %exitcond.not = icmp eq i64 %i.dn, %indvars.iv240
  br i1 %exitcond.not, label %qrfStringInArray.exit180.thread, label %.lr.ph207, !llvm.loop !742

qrfStringInArray.exit180.thread:                  ; preds = %.lr.ph207, %middle.block, %.lr.ph.i175, %qrfStringInArray.exit172.thread.thread191, %bb.f, %qrfStringInArray.exit180
  %indvars.iv.next241 = add nuw i64 %indvars.iv240, 1 ; 2 uses
  %i.do = load ptr, ptr %0, align 8, !tbaa !68
  %i.dp = tail call i32 @sqlite3_step(ptr noundef %i.do) #45
  %i.dq = icmp eq i32 %i.dp, 100
  br i1 %i.dq, label %bb.b, label %.critedge.loopexit, !llvm.loop !743

.critedge.loopexit:                               ; preds = %qrfStringInArray.exit180.thread, %bb.b
  %.0148.lcssa.ph = phi ptr [ %.0148208, %bb.b ], [ %.1149, %qrfStringInArray.exit180.thread ]
  %.0145.lcssa.ph = phi ptr [ %.0145209, %bb.b ], [ %.1146, %qrfStringInArray.exit180.thread ]
  %.0140.lcssa.ph = phi i64 [ %indvars.iv240, %bb.b ], [ %indvars.iv.next241, %qrfStringInArray.exit180.thread ]
  %sext = shl i64 %.0140.lcssa.ph, 32
  %i.dr = ashr exact i64 %sext, 32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %.0148.lcssa = phi ptr [ null, %bb.a ], [ %.0148.lcssa.ph, %.critedge.loopexit ]
  %.0145.lcssa = phi ptr [ null, %bb.a ], [ %.0145.lcssa.ph, %.critedge.loopexit ] ; 7 uses
  %.0140.lcssa = phi i64 [ 0, %bb.a ], [ %i.dr, %.critedge.loopexit ]
  tail call void @sqlite3_free(ptr noundef %.0148.lcssa) #45
  %i.ds = load ptr, ptr %0, align 8, !tbaa !68
  %i.dt = tail call i32 @sqlite3_reset(ptr noundef %i.ds) #45 ; 0 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !70
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %bb.g, label %qrfWrite.exit

bb.g:                                             ; preds = %.critedge
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !71 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !75
  %i.eb = icmp eq i8 %i.ea, 18
  br i1 %i.eb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0134 = phi ptr [ @qrfExplain.aScanExpWidth, %bb.h ], [ @qrfExplain.aExplainWidth, %bb.g ] ; 3 uses
  %.0133 = phi ptr [ @qrfExplain.aScanExpMap, %bb.h ], [ @qrfExplain.aExplainMap, %bb.g ] ; 2 uses
  %.0132 = phi i32 [ 10, %bb.h ], [ 8, %bb.g ]
  %.0131 = phi i64 [ 3, %bb.h ], [ 1, %bb.g ]
  %i.ec = load ptr, ptr %0, align 8, !tbaa !68
  %i.ed = tail call i32 @sqlite3_step(ptr noundef %i.ec) #45
  %i.ee = icmp eq i32 %i.ed, 100
  br i1 %i.ee, label %.lr.ph227, label %.critedge7

.lr.ph227:                                        ; preds = %bb.i
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.dy, i32 %.0132) ; 4 uses
  %i.ef = icmp sgt i32 %i.dy, 0                   ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.eh = add nsw i32 %spec.select, -1
  %i.ei = icmp ne ptr %.0145.lcssa, null
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ek = zext i32 %i.eh to i64                   ; 3 uses
  %wide.trip.count = zext nneg i32 %spec.select to i64
  %wide.trip.count252 = zext nneg i32 %spec.select to i64
  %wide.trip.count258 = zext nneg i32 %spec.select to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph227, %._crit_edge
  %indvars.iv260 = phi i64 [ 0, %.lr.ph227 ], [ %indvars.iv.next261, %._crit_edge ] ; 4 uses
  %i.el = load i32, ptr %i.du, align 8, !tbaa !70
  %.not157 = icmp eq i32 %i.el, 0
  br i1 %.not157, label %bb.k, label %.critedge7

bb.k:                                             ; preds = %bb.j
  %i.em = icmp eq i64 %indvars.iv260, 0
  br i1 %i.em, label %.preheader192, label %.loopexit

.preheader192:                                    ; preds = %bb.k
  br i1 %i.ef, label %.lr.ph220, label %._crit_edge

.lr.ph220:                                        ; preds = %.preheader192, %bb.n
  %indvars.iv243 = phi i64 [ %indvars.iv.next244, %bb.n ], [ 0, %.preheader192 ] ; 4 uses
  %i.en = load ptr, ptr %0, align 8, !tbaa !68
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.0133, i64 %indvars.iv243
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !53
  %i.eq = tail call ptr @sqlite3_column_name(ptr noundef %i.en, i32 noundef %i.ep) #45
  %i.er = load ptr, ptr %i.eg, align 8, !tbaa !69
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.0134, i64 %indvars.iv243
  %i.et = load i32, ptr %i.es, align 4, !tbaa !53
  tail call fastcc void @qrfWidthPrint(ptr noundef %i.er, i32 noundef %i.et, ptr noundef %i.eq)
  %i.eu = icmp eq i64 %indvars.iv243, %i.ek
  %i.ev = load ptr, ptr %i.eg, align 8, !tbaa !69 ; 2 uses
  br i1 %i.eu, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph220
  tail call void @sqlite3_str_append(ptr noundef %i.ev, ptr noundef nonnull @.str.125, i32 noundef 1) #45
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph220
  tail call void @sqlite3_str_append(ptr noundef %i.ev, ptr noundef nonnull @.str.230, i32 noundef 2) #45
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1 ; 2 uses
  %exitcond247.not = icmp eq i64 %indvars.iv.next244, %wide.trip.count
  br i1 %exitcond247.not, label %.lr.ph222, label %.lr.ph220, !llvm.loop !744

.lr.ph222:                                        ; preds = %bb.n, %bb.q
  %indvars.iv248 = phi i64 [ %indvars.iv.next249, %bb.q ], [ 0, %bb.n ] ; 3 uses
  %i.ew = load ptr, ptr %i.eg, align 8, !tbaa !69
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.0134, i64 %indvars.iv248
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !53
  tail call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.ew, ptr noundef nonnull @.str.231, i32 noundef %i.ey, i32 noundef 45) #45
  %i.ez = icmp eq i64 %indvars.iv248, %i.ek
  %i.fa = load ptr, ptr %i.eg, align 8, !tbaa !69 ; 2 uses
  br i1 %i.ez, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph222
  tail call void @sqlite3_str_append(ptr noundef %i.fa, ptr noundef nonnull @.str.125, i32 noundef 1) #45
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph222
  tail call void @sqlite3_str_append(ptr noundef %i.fa, ptr noundef nonnull @.str.230, i32 noundef 2) #45
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 2 uses
  %exitcond253.not = icmp eq i64 %indvars.iv.next249, %wide.trip.count252
  br i1 %exitcond253.not, label %.loopexit, label %.lr.ph222, !llvm.loop !745

.loopexit:                                        ; preds = %bb.q, %bb.k
  br i1 %i.ef, label %.lr.ph224, label %._crit_edge

.lr.ph224:                                        ; preds = %.loopexit
  %i.fb = icmp slt i64 %indvars.iv260, %.0140.lcssa
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.0145.lcssa, i64 %indvars.iv260
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph224, %bb.au
  %indvars.iv254 = phi i64 [ 0, %.lr.ph224 ], [ %indvars.iv.next255, %bb.au ] ; 5 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.0134, i64 %indvars.iv254
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !53
  %i.ff = load ptr, ptr %0, align 8, !tbaa !68
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.0133, i64 %indvars.iv254
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !53
  %i.fi = tail call ptr @sqlite3_column_text(ptr noundef %i.ff, i32 noundef %i.fh) #45 ; 2 uses
  %i.fj = icmp eq i64 %indvars.iv254, %i.ek       ; 2 uses
  %spec.select163 = select i1 %i.fj, i32 0, i32 %i.fe ; 2 uses
  %i.fk = icmp eq ptr %i.fi, null
  %spec.store.select = select i1 %i.fk, ptr @.str.48, ptr %i.fi ; 3 uses
  %i.fl = load i8, ptr %spec.store.select, align 1, !tbaa !52 ; 2 uses
  %.not27.i = icmp eq i8 %i.fl, 0
end_hunk_0
begin_hunk_1_@shell_dbtotxt_command:bb.a

bb.b:                                             ; preds = %bb.l, %bb.a
  %indvars.iv = phi i64 [ 32, %bb.a ], [ %indvars.iv.next.4, %bb.l ] ; 8 uses
  %i.c = trunc nuw nsw i64 %indvars.iv to i32
  switch i32 %i.c, label %bb.c [
    i32 125, label %bb.d
    i32 123, label %bb.d
    i32 92, label %bb.d
    i32 34, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = trunc i64 %indvars.iv to i8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  store i8 %i.d, ptr %i.e, align 1, !tbaa !52
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.f = trunc nuw nsw i64 %indvars.iv.next to i32
  switch i32 %i.f, label %bb.e [
    i32 125, label %bb.f
    i32 123, label %bb.f
    i32 92, label %bb.f
    i32 34, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.g = trunc i64 %indvars.iv.next to i8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next
  store i8 %i.g, ptr %i.h, align 1, !tbaa !52
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.d, %bb.d, %bb.d
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.i = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  switch i32 %i.i, label %bb.g [
    i32 125, label %bb.h
    i32 123, label %bb.h
    i32 92, label %bb.h
    i32 34, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.j = trunc i64 %indvars.iv.next.1 to i8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next.1
  store i8 %i.j, ptr %i.k, align 1, !tbaa !52
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.f, %bb.f, %bb.f
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.l = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  switch i32 %i.l, label %bb.i [
    i32 125, label %bb.j
    i32 123, label %bb.j
    i32 92, label %bb.j
    i32 34, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.m = trunc i64 %indvars.iv.next.2 to i8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next.2
  store i8 %i.m, ptr %i.n, align 1, !tbaa !52
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.h, %bb.h, %bb.h
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.o = trunc nuw nsw i64 %indvars.iv.next.3 to i32
  switch i32 %i.o, label %bb.k [
    i32 125, label %bb.l
    i32 123, label %bb.l
    i32 92, label %bb.l
    i32 34, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.p = trunc i64 %indvars.iv.next.3 to i8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next.3
  store i8 %i.p, ptr %i.q, align 1, !tbaa !52
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.j, %bb.j, %bb.j
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %exitcond.not.4 = icmp eq i64 %indvars.iv.next.4, 127
  br i1 %exitcond.not.4, label %bb.m, label %bb.b, !llvm.loop !1222

bb.m:                                             ; preds = %bb.l
  %i.r = load ptr, ptr %0, align 8, !tbaa !389
  %i.s = call i32 @sqlite3_prepare_v2(ptr noundef %i.r, ptr noundef nonnull @.str.1500, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #45
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.n, label %bb.at

bb.n:                                             ; preds = %bb.m
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.u = call i32 @sqlite3_step(ptr noundef %i.t) #45
  %.not97 = icmp eq i32 %i.u, 100
  %.pre30 = load ptr, ptr %i.a, align 8, !tbaa !109 ; 2 uses
  br i1 %.not97, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.v = call i32 @sqlite3_column_int(ptr noundef %.pre30, i32 noundef 0) #45
  %.fr11 = freeze i32 %i.v                        ; 5 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.x = call i32 @sqlite3_finalize(ptr noundef %i.w) #45 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !109
  %i.y = add i32 %.fr11, -512
  %or.cond7 = icmp ult i32 %i.y, 65025
  %i.z = call range(i32 0, 18) i32 @llvm.ctpop.i32(i32 %.fr11)
  %.not98 = icmp samesign ult i32 %i.z, 2
  %or.cond = select i1 %or.cond7, i1 %.not98, i1 false
  br i1 %or.cond, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.aa = load ptr, ptr %0, align 8, !tbaa !389
  %i.ab = call i32 @sqlite3_prepare_v2(ptr noundef %i.aa, ptr noundef nonnull @.str.1501, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #45
  %.not99 = icmp eq i32 %i.ab, 0
  br i1 %.not99, label %bb.q, label %bb.at

bb.q:                                             ; preds = %bb.p
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.ad = call i32 @sqlite3_step(ptr noundef %i.ac) #45
  %.not100 = icmp eq i32 %i.ad, 100
  %.pre29 = load ptr, ptr %i.a, align 8, !tbaa !109 ; 2 uses
  br i1 %.not100, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.ae = call i64 @sqlite3_column_int64(ptr noundef %.pre29, i32 noundef 0) #45 ; 2 uses
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.ag = call i32 @sqlite3_finalize(ptr noundef %i.af) #45 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !109
  %i.ah = icmp slt i64 %i.ae, 1
  br i1 %i.ah, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ai = load ptr, ptr %0, align 8, !tbaa !389
  %i.aj = call i32 @sqlite3_prepare_v2(ptr noundef %i.ai, ptr noundef nonnull @.str.350, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #45
  %.not101 = icmp eq i32 %i.aj, 0
  br i1 %.not101, label %bb.t, label %bb.at

bb.t:                                             ; preds = %bb.s
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.al = call i32 @sqlite3_step(ptr noundef %i.ak) #45
  %.not102 = icmp eq i32 %i.al, 100
  br i1 %.not102, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.an = call ptr @sqlite3_column_text(ptr noundef %i.am, i32 noundef 2) #45 ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ap = load i8, ptr %i.an, align 1, !tbaa !52
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.u
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.079 = phi ptr [ @.str.1502, %bb.w ], [ %i.an, %bb.v ] ; 2 uses
  %i.ar = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %.079, i32 noundef 47) #46 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 1 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !52
  %.not103 = icmp eq i8 %i.au, 0
  %spec.select = select i1 %.not103, ptr %i.ar, ptr %i.at
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.t
  %.188 = phi ptr [ @.str.1502, %bb.t ], [ %spec.select, %bb.y ], [ %.079, %bb.x ]
  %i.av = call noalias ptr @strdup(ptr noundef nonnull %.188) #45 ; 5 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.aa, label %shell_check_oom.exit

bb.aa:                                            ; preds = %bb.z
  call fastcc void @shell_out_of_memory()
  unreachable

shell_check_oom.exit:                             ; preds = %bb.z
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 38 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.az = zext nneg i32 %.fr11 to i64             ; 2 uses
  %i.ba = mul nuw nsw i64 %i.ae, %i.az
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.ay, ptr noundef nonnull @.str.1503, i64 noundef %i.ba, i32 noundef %.fr11, ptr noundef nonnull %i.av)
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.bc = call i32 @sqlite3_finalize(ptr noundef %i.bb) #45 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !109
  %i.bd = load ptr, ptr %0, align 8, !tbaa !389
  %i.be = call i32 @sqlite3_prepare_v2(ptr noundef %i.bd, ptr noundef nonnull @.str.1504, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #45
  %.not104 = icmp eq i32 %i.be, 0
  br i1 %.not104, label %.preheader, label %bb.at

.preheader:                                       ; preds = %shell_check_oom.exit
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.bg = call i32 @sqlite3_step(ptr noundef %i.bf) #45
  %i.bh = icmp eq i32 %i.bg, 100
  br i1 %i.bh, label %.lr.ph.us.preheader, label %._crit_edge

.lr.ph.us.preheader:                              ; preds = %.preheader
  %1 = zext nneg i32 %.fr11 to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %..loopexit_crit_edge.us
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.bj = call i64 @sqlite3_column_int64(ptr noundef %i.bi, i32 noundef 0) #45 ; 2 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.bl = call ptr @sqlite3_column_blob(ptr noundef %i.bk, i32 noundef 1) #45
  %i.bm = add nsw i64 %i.bj, -1
  %i.bn = mul nsw i64 %i.bm, %i.az
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.us, %.critedge.us
  %indvars.iv26 = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next27, %.critedge.us ] ; 3 uses
  %.0789.us = phi i32 [ 0, %.lr.ph.us ], [ %.2.us, %.critedge.us ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv26 ; 33 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !52
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %bb.ac, label %.critedge.thread.loopexit.us

bb.ac:                                            ; preds = %bb.ab
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !52
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %bb.ad, label %.critedge.thread.loopexit.us

bb.ad:                                            ; preds = %bb.ac
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !52
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %bb.ae, label %.critedge.thread.loopexit.us

bb.ae:                                            ; preds = %bb.ad
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 3
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !52
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %bb.af, label %.critedge.thread.loopexit.us

bb.af:                                            ; preds = %bb.ae
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !52
  %i.cc = icmp eq i8 %i.cb, 0
  br i1 %i.cc, label %bb.ag, label %.critedge.thread.loopexit.us

bb.ag:                                            ; preds = %bb.af
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bo, i64 5
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !52
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %bb.ah, label %.critedge.thread.loopexit.us

bb.ah:                                            ; preds = %bb.ag
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bo, i64 6
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !52
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %bb.ai, label %.critedge.thread.loopexit.us

bb.ai:                                            ; preds = %bb.ah
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bo, i64 7
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !52
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %bb.aj, label %.critedge.thread.loopexit.us

bb.aj:                                            ; preds = %bb.ai
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !52
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %bb.ak, label %.critedge.thread.loopexit.us

bb.ak:                                            ; preds = %bb.aj
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bo, i64 9
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !52
  %i.cr = icmp eq i8 %i.cq, 0
  br i1 %i.cr, label %bb.al, label %.critedge.thread.loopexit.us

bb.al:                                            ; preds = %bb.ak
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bo, i64 10
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !52
  %i.cu = icmp eq i8 %i.ct, 0
  br i1 %i.cu, label %bb.am, label %.critedge.thread.loopexit.us

bb.am:                                            ; preds = %bb.al
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bo, i64 11
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !52
  %i.cx = icmp eq i8 %i.cw, 0
  br i1 %i.cx, label %bb.an, label %.critedge.thread.loopexit.us

bb.an:                                            ; preds = %bb.am
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !52
  %i.da = icmp eq i8 %i.cz, 0
  br i1 %i.da, label %bb.ao, label %.critedge.thread.loopexit.us

bb.ao:                                            ; preds = %bb.an
  %i.db = getelementptr inbounds nuw i8, ptr %i.bo, i64 13
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !52
  %i.dd = icmp eq i8 %i.dc, 0
  br i1 %i.dd, label %bb.ap, label %.critedge.thread.loopexit.us

bb.ap:                                            ; preds = %bb.ao
  %i.de = getelementptr inbounds nuw i8, ptr %i.bo, i64 14
  %i.df = load i8, ptr %i.de, align 1, !tbaa !52
  %i.dg = icmp eq i8 %i.df, 0
  br i1 %i.dg, label %bb.aq, label %.critedge.thread.loopexit.us

bb.aq:                                            ; preds = %bb.ap
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bo, i64 15
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !52
  %i.dj = icmp eq i8 %i.di, 0
  br i1 %i.dj, label %.critedge.us, label %.critedge.thread.loopexit.us

bb.ar:                                            ; preds = %.critedge.thread.loopexit.us
  %i.dk = load ptr, ptr %i.ax, align 8, !tbaa !351
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.dk, ptr noundef nonnull @.str.1505, i64 noundef %i.bj, i64 noundef %i.bn)
  br label %bb.as

bb.as:                                            ; preds = %.critedge.thread.loopexit.us, %bb.ar
  %i.dl = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.dm = trunc nuw nsw i64 %indvars.iv26 to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.dl, ptr noundef nonnull @.str.1506, i32 noundef %i.dm)
  %i.dn = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.do = load i8, ptr %i.bo, align 1, !tbaa !52
  %i.dp = zext i8 %i.do to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.dn, ptr noundef nonnull @.str.1507, i32 noundef %i.dp)
  %i.dq = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bo, i64 1 ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !52
  %i.dt = zext i8 %i.ds to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.dq, ptr noundef nonnull @.str.1507, i32 noundef %i.dt)
  %i.du = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bo, i64 2 ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !52
  %i.dx = zext i8 %i.dw to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.du, ptr noundef nonnull @.str.1507, i32 noundef %i.dx)
  %i.dy = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bo, i64 3 ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !52
  %i.eb = zext i8 %i.ea to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.dy, ptr noundef nonnull @.str.1507, i32 noundef %i.eb)
  %i.ec = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !52
  %i.ef = zext i8 %i.ee to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.ec, ptr noundef nonnull @.str.1507, i32 noundef %i.ef)
  %i.eg = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bo, i64 5 ; 2 uses
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !52
  %i.ej = zext i8 %i.ei to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.eg, ptr noundef nonnull @.str.1507, i32 noundef %i.ej)
  %i.ek = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.el = getelementptr inbounds nuw i8, ptr %i.bo, i64 6 ; 2 uses
  %i.em = load i8, ptr %i.el, align 1, !tbaa !52
  %i.en = zext i8 %i.em to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.ek, ptr noundef nonnull @.str.1507, i32 noundef %i.en)
  %i.eo = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bo, i64 7 ; 2 uses
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !52
  %i.er = zext i8 %i.eq to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.eo, ptr noundef nonnull @.str.1507, i32 noundef %i.er)
  %i.es = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.et = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !52
  %i.ev = zext i8 %i.eu to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.es, ptr noundef nonnull @.str.1507, i32 noundef %i.ev)
  %i.ew = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bo, i64 9 ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !52
  %i.ez = zext i8 %i.ey to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.ew, ptr noundef nonnull @.str.1507, i32 noundef %i.ez)
  %i.fa = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bo, i64 10 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !52
  %i.fd = zext i8 %i.fc to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.fa, ptr noundef nonnull @.str.1507, i32 noundef %i.fd)
  %i.fe = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bo, i64 11 ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !52
  %i.fh = zext i8 %i.fg to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.fe, ptr noundef nonnull @.str.1507, i32 noundef %i.fh)
  %i.fi = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bo, i64 12 ; 2 uses
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !52
  %i.fl = zext i8 %i.fk to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.fi, ptr noundef nonnull @.str.1507, i32 noundef %i.fl)
  %i.fm = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bo, i64 13 ; 2 uses
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !52
  %i.fp = zext i8 %i.fo to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.fm, ptr noundef nonnull @.str.1507, i32 noundef %i.fp)
  %i.fq = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.fr = getelementptr inbounds nuw i8, ptr %i.bo, i64 14 ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !52
  %i.ft = zext i8 %i.fs to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.fq, ptr noundef nonnull @.str.1507, i32 noundef %i.ft)
  %i.fu = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bo, i64 15 ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !52
  %i.fx = zext i8 %i.fw to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.fu, ptr noundef nonnull @.str.1507, i32 noundef %i.fx)
  %i.fy = load ptr, ptr %i.ax, align 8, !tbaa !351
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.fy, ptr noundef nonnull @.str.269)
  %i.fz = load i8, ptr %i.bo, align 1, !tbaa !52
  %i.ga = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.gb = zext i8 %i.fz to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !52
  %i.ge = zext i8 %i.gd to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.ga, ptr noundef nonnull @.str.1508, i32 noundef %i.ge)
  %i.gf = load i8, ptr %i.dr, align 1, !tbaa !52
  %i.gg = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.gh = zext i8 %i.gf to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !52
  %i.gk = zext i8 %i.gj to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.gg, ptr noundef nonnull @.str.1508, i32 noundef %i.gk)
  %i.gl = load i8, ptr %i.dv, align 1, !tbaa !52
  %i.gm = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.gn = zext i8 %i.gl to i64
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !52
  %i.gq = zext i8 %i.gp to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.gm, ptr noundef nonnull @.str.1508, i32 noundef %i.gq)
  %i.gr = load i8, ptr %i.dz, align 1, !tbaa !52
  %i.gs = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.gt = zext i8 %i.gr to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !52
  %i.gw = zext i8 %i.gv to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.gs, ptr noundef nonnull @.str.1508, i32 noundef %i.gw)
  %i.gx = load i8, ptr %i.ed, align 1, !tbaa !52
  %i.gy = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.gz = zext i8 %i.gx to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !52
  %i.hc = zext i8 %i.hb to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.gy, ptr noundef nonnull @.str.1508, i32 noundef %i.hc)
  %i.hd = load i8, ptr %i.eh, align 1, !tbaa !52
  %i.he = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.hf = zext i8 %i.hd to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !52
  %i.hi = zext i8 %i.hh to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.he, ptr noundef nonnull @.str.1508, i32 noundef %i.hi)
  %i.hj = load i8, ptr %i.el, align 1, !tbaa !52
  %i.hk = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.hl = zext i8 %i.hj to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !52
  %i.ho = zext i8 %i.hn to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.hk, ptr noundef nonnull @.str.1508, i32 noundef %i.ho)
  %i.hp = load i8, ptr %i.ep, align 1, !tbaa !52
  %i.hq = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.hr = zext i8 %i.hp to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !52
  %i.hu = zext i8 %i.ht to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.hq, ptr noundef nonnull @.str.1508, i32 noundef %i.hu)
  %i.hv = load i8, ptr %i.et, align 1, !tbaa !52
  %i.hw = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.hx = zext i8 %i.hv to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hx
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !52
  %i.ia = zext i8 %i.hz to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.hw, ptr noundef nonnull @.str.1508, i32 noundef %i.ia)
  %i.ib = load i8, ptr %i.ex, align 1, !tbaa !52
  %i.ic = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.id = zext i8 %i.ib to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.id
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !52
  %i.ig = zext i8 %i.if to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.ic, ptr noundef nonnull @.str.1508, i32 noundef %i.ig)
  %i.ih = load i8, ptr %i.fb, align 1, !tbaa !52
  %i.ii = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.ij = zext i8 %i.ih to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ij
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !52
  %i.im = zext i8 %i.il to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.ii, ptr noundef nonnull @.str.1508, i32 noundef %i.im)
  %i.in = load i8, ptr %i.ff, align 1, !tbaa !52
  %i.io = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.ip = zext i8 %i.in to i64
  %i.iq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ip
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !52
  %i.is = zext i8 %i.ir to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.io, ptr noundef nonnull @.str.1508, i32 noundef %i.is)
  %i.it = load i8, ptr %i.fj, align 1, !tbaa !52
  %i.iu = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.iv = zext i8 %i.it to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.iv
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !52
  %i.iy = zext i8 %i.ix to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.iu, ptr noundef nonnull @.str.1508, i32 noundef %i.iy)
  %i.iz = load i8, ptr %i.fn, align 1, !tbaa !52
  %i.ja = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.jb = zext i8 %i.iz to i64
  %i.jc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.jb
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !52
  %i.je = zext i8 %i.jd to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.ja, ptr noundef nonnull @.str.1508, i32 noundef %i.je)
  %i.jf = load i8, ptr %i.fr, align 1, !tbaa !52
  %i.jg = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.jh = zext i8 %i.jf to i64
  %i.ji = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.jh
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !52
  %i.jk = zext i8 %i.jj to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.jg, ptr noundef nonnull @.str.1508, i32 noundef %i.jk)
  %i.jl = load i8, ptr %i.fv, align 1, !tbaa !52
  %i.jm = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.jn = zext i8 %i.jl to i64
  %i.jo = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.jn
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !52
  %i.jq = zext i8 %i.jp to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.jm, ptr noundef nonnull @.str.1508, i32 noundef %i.jq)
  %i.jr = load ptr, ptr %i.ax, align 8, !tbaa !351
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.jr, ptr noundef nonnull @.str.125)
  br label %.critedge.us

.critedge.us:                                     ; preds = %bb.aq, %bb.as
  %.2.us = phi i32 [ 1, %bb.as ], [ %.0789.us, %bb.aq ]
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 16 ; 2 uses
  %2 = icmp samesign ult i64 %indvars.iv.next27, %1
  br i1 %2, label %bb.ab, label %..loopexit_crit_edge.us, !llvm.loop !1223

.critedge.thread.loopexit.us:                     ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %.not105.us = icmp eq i32 %.0789.us, 0
  br i1 %.not105.us, label %bb.ar, label %bb.as

..loopexit_crit_edge.us:                          ; preds = %.critedge.us
  %i.js = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.jt = call i32 @sqlite3_step(ptr noundef %i.js) #45
  %i.ju = icmp eq i32 %i.jt, 100
  br i1 %i.ju, label %.lr.ph.us, label %._crit_edge, !llvm.loop !1224

._crit_edge:                                      ; preds = %..loopexit_crit_edge.us, %.preheader
  %i.jv = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.jw = call i32 @sqlite3_finalize(ptr noundef %i.jv) #45 ; 0 uses
  %i.jx = load ptr, ptr %i.ax, align 8, !tbaa !351
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.jx, ptr noundef nonnull @.str.1509, ptr noundef nonnull %i.av)
  br label %bb.au

bb.at:                                            ; preds = %bb.m, %bb.p, %bb.s, %shell_check_oom.exit
  %.086 = phi ptr [ null, %bb.m ], [ null, %bb.p ], [ null, %bb.s ], [ %i.av, %shell_check_oom.exit ]
  %i.jy = load ptr, ptr @stderr, align 8, !tbaa !122
  %i.jz = load ptr, ptr %0, align 8, !tbaa !389
  %i.ka = call ptr @sqlite3_errmsg(ptr noundef %i.jz) #45
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.jy, ptr noundef nonnull @.str.1510, ptr noundef %i.ka)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !109
  br label %.thread

.thread:                                          ; preds = %bb.r, %bb.q, %bb.o, %bb.n, %bb.at
  %i.kb = phi ptr [ %.pre, %bb.at ], [ %.pre30, %bb.n ], [ null, %bb.o ], [ %.pre29, %bb.q ], [ null, %bb.r ]
  %.0863 = phi ptr [ %.086, %bb.at ], [ null, %bb.n ], [ null, %bb.o ], [ null, %bb.q ], [ null, %bb.r ]
  %i.kc = call i32 @sqlite3_finalize(ptr noundef %i.kb) #45 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %.thread, %._crit_edge
  %.0863.sink = phi ptr [ %.0863, %.thread ], [ %i.av, %._crit_edge ]
  %.0 = phi i32 [ 1, %.thread ], [ 0, %._crit_edge ]
  call void @free(ptr noundef %.0863.sink) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @expertDotCommand(ptr nofree noundef nonnull captures(none) initializes((4736, 4752)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 1, 0) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  store ptr null, ptr %i.a, align 8, !tbaa !88
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4736 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = icmp sgt i32 %2, 1
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.d = add nsw i32 %2, -1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4744
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.03547 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.k ]
  %.03646 = phi i32 [ 1, %.lr.ph ], [ %i.ag, %bb.k ] ; 4 uses
  %i.f = sext i32 %.03646 to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %1, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !88   ; 4 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !52
  %i.j = icmp eq i8 %i.i, 45
  br i1 %i.j, label %bb.c, label %strlen30.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !52
  %i.m = icmp eq i8 %i.l, 45
  %spec.select = select i1 %i.m, ptr %i.k, ptr %i.h
  br label %strlen30.exit

strlen30.exit:                                    ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.h, %bb.b ], [ %spec.select, %bb.c ] ; 5 uses
  %i.n = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0) #46 ; 2 uses
  %i.o = icmp ugt i64 %i.n, 1
  br i1 %i.o, label %bb.d, label %.critedge

bb.d:                                             ; preds = %strlen30.exit
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1073741823) ; 2 uses
  %i.q = tail call i32 @strncmp(ptr noundef nonnull %.0, ptr noundef nonnull @.str.1511, i64 noundef range(i64 -2147483648, 2147483648) %i.p) #46
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.e, align 8, !tbaa !479
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.s = tail call i32 @strncmp(ptr noundef nonnull %.0, ptr noundef nonnull @.str.1512, i64 noundef range(i64 -2147483648, 2147483648) %i.p) #46
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.u = icmp eq i32 %.03646, %i.d
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !122
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.v, ptr noundef nonnull @.str.1513, ptr noundef nonnull %.0)
  br label %._crit_edge

bb.i:                                             ; preds = %bb.g
  %i.w = add nsw i32 %.03646, 1                   ; 2 uses
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %1, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !88
  %i.aa = tail call fastcc i64 @integerValue(ptr noundef %i.z)
  %i.ab = trunc i64 %i.aa to i32                  ; 2 uses
  %or.cond = icmp ugt i32 %i.ab, 100
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds [8 x i8], ptr %1, i64 %i.x
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !122
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !88
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.ad, ptr noundef nonnull @.str.1514, ptr noundef %i.ae)
  br label %._crit_edge

.critedge:                                        ; preds = %strlen30.exit, %bb.f
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !122
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.af, ptr noundef nonnull @.str.1068, ptr noundef nonnull %.0)
  br label %._crit_edge

bb.k:                                             ; preds = %bb.i, %bb.e
  %.137 = phi i32 [ %.03646, %bb.e ], [ %i.w, %bb.i ]
  %.1 = phi i32 [ %.03547, %bb.e ], [ %i.ab, %bb.i ] ; 2 uses
  %i.ag = add nsw i32 %.137, 1                    ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %2
  br i1 %i.ah, label %bb.b, label %.loopexit, !llvm.loop !1225

.loopexit:                                        ; preds = %bb.k, %bb.a
  %.035.lcssa.ph = phi i32 [ 0, %bb.a ], [ %.1, %bb.k ]
  %i.ai = load ptr, ptr %0, align 8, !tbaa !389
  %i.aj = call ptr @sqlite3_expert_new(ptr noundef %i.ai, ptr noundef nonnull %i.a) ; 3 uses
  store ptr %i.aj, ptr %i.b, align 8, !tbaa !388
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.loopexit
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !122
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !88  ; 2 uses
  %.not = icmp eq ptr %i.am, null
  %i.an = select i1 %.not, ptr @.str.56, ptr %i.am
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.al, ptr noundef nonnull @.str.1515, ptr noundef nonnull %i.an)
  br label %._crit_edge

bb.m:                                             ; preds = %.loopexit
  %i.ao = call i32 (ptr, i32, ...) @sqlite3_expert_config(ptr noundef nonnull %i.aj, i32 noundef 1, i32 noundef %.035.lcssa.ph) ; 0 uses
  br label %._crit_edge

._crit_edge:                                      ; preds = %.critedge, %bb.j, %bb.h, %bb.l, %bb.m
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !88
  call void @sqlite3_free(ptr noundef %i.ap) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @shell_exec(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %struct.winsize, align 2            ; 6 uses
  %i.b = alloca ptr, align 8                      ; 23 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %struct.sqlite3_qrf_spec, align 8   ; 16 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #45
  store ptr null, ptr %i.b, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #45
  %i.f = load ptr, ptr %0, align 8, !tbaa !389    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #45
  %.not = icmp eq ptr %2, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !88
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4312
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull align 8 dereferenceable(128) %i.h, i64 128, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 96
  store ptr @shellWriteQR, ptr %i.i, align 8, !tbaa !1229
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 112
  store ptr %0, ptr %i.j, align 8, !tbaa !1230
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4318 ; 2 uses
  %i.l = load i8, ptr %i.k, align 2, !tbaa !426   ; 2 uses
  %i.m = icmp eq i8 %i.l, 7
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.o = load i32, ptr %i.n, align 8, !tbaa !344
end_hunk_1
