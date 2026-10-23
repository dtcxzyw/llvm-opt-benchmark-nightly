Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/tclsqlite-ex?download=true
inline.NumInlined: 131
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_format_query_result:bb.a
  %i.ank = icmp sgt i32 %i.anj, 0
  br i1 %i.ank, label %.lr.ph.i42, label %._crit_edge.i41

.lr.ph.i42:                                       ; preds = %.preheader.i40, %.lr.ph.i42
  %indvars.iv.i43 = phi i64 [ %indvars.iv.next.i44, %.lr.ph.i42 ], [ 0, %.preheader.i40 ] ; 2 uses
  %i.anl = load ptr, ptr %i.ang, align 8, !tbaa !29
  %i.anm = getelementptr inbounds nuw [8 x i8], ptr %i.anl, i64 %indvars.iv.i43
  %i.ann = load ptr, ptr %i.anm, align 8, !tbaa !66
  call void @sqlite3_free(ptr noundef %i.ann) #20
  %indvars.iv.next.i44 = add nuw nsw i64 %indvars.iv.i43, 1 ; 2 uses
  %i.ano = load i32, ptr %i.ani, align 4, !tbaa !49
  %i.anp = sext i32 %i.ano to i64
  %i.anq = icmp slt i64 %indvars.iv.next.i44, %i.anp
  br i1 %i.anq, label %.lr.ph.i42, label %._crit_edge.loopexit.i, !llvm.loop !263

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i42
  %.pre.i45 = load ptr, ptr %i.ang, align 8, !tbaa !29
  br label %._crit_edge.i41

._crit_edge.i41:                                  ; preds = %._crit_edge.loopexit.i, %.preheader.i40
  %i.anr = phi ptr [ %.pre.i45, %._crit_edge.loopexit.i ], [ %i.anh, %.preheader.i40 ]
  call void @sqlite3_free(ptr noundef %i.anr) #20
  br label %bb.jk

bb.ji:                                            ; preds = %qrfResetStmt.exit, %qrfResetStmt.exit
  call fastcc void @qrfEqpRender(ptr noundef nonnull %4)
  br label %bb.jk

bb.jj:                                            ; preds = %qrfResetStmt.exit
  call fastcc void @qrfEqpRender(ptr noundef nonnull %4)
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %bb.ji, %._crit_edge.i41, %bb.jh, %bb.jg, %bb.jf, %bb.je, %bb.jd, %bb.jc, %bb.jb, %bb.ja, %qrfResetStmt.exit
  %i.ans = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  %i.ant = load ptr, ptr %i.ans, align 8, !tbaa !85
  %.not.i.i34 = icmp eq ptr %i.ant, null
  br i1 %.not.i.i34, label %qrfWrite.exit.i35, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.anu = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.anv = load ptr, ptr %i.anu, align 8, !tbaa !47
  %i.anw = call i32 @sqlite3_str_length(ptr noundef %i.anv) #20 ; 3 uses
  %i.anx = icmp sgt i32 %i.anw, 0
  br i1 %i.anx, label %bb.jm, label %qrfWrite.exit.i35

bb.jm:                                            ; preds = %bb.jl
  %i.any = load ptr, ptr %i.ans, align 8, !tbaa !85
  %i.anz = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.aoa = load ptr, ptr %i.anz, align 8, !tbaa !86
  %i.aob = load ptr, ptr %i.anu, align 8, !tbaa !47
  %i.aoc = call ptr @sqlite3_str_value(ptr noundef %i.aob) #20
  %i.aod = zext nneg i32 %i.anw to i64
  %i.aoe = call i32 %i.any(ptr noundef %i.aoa, ptr noundef %i.aoc, i64 noundef %i.aod) #20, !inline_history !264 ; 2 uses
  %i.aof = load ptr, ptr %i.anu, align 8, !tbaa !47
  call void @sqlite3_str_reset(ptr noundef %i.aof) #20
  %.not11.i.i38 = icmp eq i32 %i.aoe, 0
  br i1 %.not11.i.i38, label %qrfWrite.exit.i35, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef %i.aoe, ptr noundef nonnull @.str.69, i32 noundef %i.anw)
  br label %qrfWrite.exit.i35

qrfWrite.exit.i35:                                ; preds = %bb.jn, %bb.jm, %bb.jl, %bb.jk
  %i.aog = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  %i.aoh = load ptr, ptr %i.aog, align 8, !tbaa !47 ; 2 uses
  %.not.i65.i = icmp eq ptr %i.aoh, null
  br i1 %.not.i65.i, label %qrfStrErr.exit.i37, label %bb.jo

bb.jo:                                            ; preds = %qrfWrite.exit.i35
  %i.aoi = call i32 @sqlite3_str_errcode(ptr noundef nonnull %i.aoh) #20 ; 3 uses
  %.not6.i.i36 = icmp eq i32 %i.aoi, 0
  br i1 %.not6.i.i36, label %qrfStrErr.exit.i37, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.aoj = call ptr @sqlite3_errstr(i32 noundef %i.aoi) #20
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef %i.aoi, ptr noundef %i.aoj)
  br label %qrfStrErr.exit.i37

qrfStrErr.exit.i37:                               ; preds = %bb.jp, %bb.jo, %qrfWrite.exit.i35
  %i.aok = getelementptr inbounds nuw i8, ptr %4, i64 216 ; 5 uses
  %i.aol = load ptr, ptr %i.aok, align 8, !tbaa !281 ; 2 uses
  %.not60.i = icmp eq ptr %i.aol, null
  br i1 %.not60.i, label %bb.jw, label %bb.jq

bb.jq:                                            ; preds = %qrfStrErr.exit.i37
  %i.aom = load ptr, ptr %i.aol, align 8, !tbaa !66 ; 2 uses
  %.not62.i = icmp eq ptr %i.aom, null
  br i1 %.not62.i, label %bb.jv, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.aon = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aom) #21 ; 2 uses
  %i.aoo = load ptr, ptr %i.aog, align 8, !tbaa !47
  %i.aop = call i32 @sqlite3_str_length(ptr noundef %i.aoo) #20
  %i.aoq = sext i32 %i.aop to i64
  %i.aor = load ptr, ptr %i.aok, align 8, !tbaa !281
  %i.aos = load ptr, ptr %i.aor, align 8, !tbaa !66
  %i.aot = add nsw i64 %i.aoq, 1                  ; 2 uses
  %i.aou = add i64 %i.aot, %i.aon
  %i.aov = call ptr @sqlite3_realloc64(ptr noundef %i.aos, i64 noundef %i.aou) #20 ; 3 uses
  %i.aow = icmp eq ptr %i.aov, null
  %i.aox = load ptr, ptr %i.aok, align 8, !tbaa !281 ; 2 uses
  br i1 %i.aow, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %bb.jr
  %i.aoy = load ptr, ptr %i.aox, align 8, !tbaa !66
  call void @sqlite3_free(ptr noundef %i.aoy) #20
  %i.aoz = load ptr, ptr %i.aok, align 8, !tbaa !281
  store ptr null, ptr %i.aoz, align 8, !tbaa !66
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef 7, ptr noundef nonnull @.str.15)
  br label %bb.ju

bb.jt:                                            ; preds = %bb.jr
  store ptr %i.aov, ptr %i.aox, align 8, !tbaa !66
  %i.apa = getelementptr inbounds i8, ptr %i.aov, i64 %i.aon
  %i.apb = load ptr, ptr %i.aog, align 8, !tbaa !47
  %i.apc = call ptr @sqlite3_str_value(ptr noundef %i.apb) #20
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.apa, ptr align 1 %i.apc, i64 %i.aot, i1 false)
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jt, %bb.js
  %i.apd = load ptr, ptr %i.aog, align 8, !tbaa !47
  %i.ape = call ptr @sqlite3_str_finish(ptr noundef %i.apd) #20
  call void @sqlite3_free(ptr noundef %i.ape) #20
  br label %bb.jy

bb.jv:                                            ; preds = %bb.jq
  %i.apf = load ptr, ptr %i.aog, align 8, !tbaa !47
  %i.apg = call ptr @sqlite3_str_finish(ptr noundef %i.apf) #20
  %i.aph = load ptr, ptr %i.aok, align 8, !tbaa !281
  store ptr %i.apg, ptr %i.aph, align 8, !tbaa !66
  br label %bb.jy

bb.jw:                                            ; preds = %qrfStrErr.exit.i37
  %i.api = load ptr, ptr %i.aog, align 8, !tbaa !47 ; 2 uses
  %.not61.i = icmp eq ptr %i.api, null
  br i1 %.not61.i, label %bb.jy, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.apj = call ptr @sqlite3_str_finish(ptr noundef nonnull %i.api) #20
  call void @sqlite3_free(ptr noundef %i.apj) #20
  br label %bb.jy

bb.jy:                                            ; preds = %bb.jx, %bb.jw, %bb.jv, %bb.ju
  %i.apk = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.apl = load i32, ptr %i.apk, align 8, !tbaa !272 ; 2 uses
  %i.apm = icmp sgt i32 %i.apl, 0
  br i1 %i.apm, label %bb.jz, label %bb.ka

bb.jz:                                            ; preds = %bb.jy
  %i.apn = load ptr, ptr %4, align 8, !tbaa !46
  %i.apo = add nsw i32 %i.apl, -1
  %i.app = call i32 @sqlite3_stmt_explain(ptr noundef %i.apn, i32 noundef %i.apo) #20 ; 0 uses
  br label %bb.ka

bb.ka:                                            ; preds = %bb.jz, %bb.jy
  %i.apq = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.apr = load ptr, ptr %i.apq, align 8, !tbaa !282 ; 2 uses
  %.not63.i = icmp eq ptr %i.apr, null
  br i1 %.not63.i, label %bb.kc, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  call void @sqlite3_free(ptr noundef nonnull %i.apr) #20
  br label %bb.kc

bb.kc:                                            ; preds = %bb.kb, %bb.ka
  %i.aps = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.apt = load ptr, ptr %i.aps, align 8, !tbaa !96 ; 2 uses
  %.not64.i = icmp eq ptr %i.apt, null
  br i1 %.not64.i, label %qrfFinalize.exit, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.apu = call ptr @sqlite3_db_handle(ptr noundef nonnull %i.apt) #20
  %i.apv = load ptr, ptr %i.aps, align 8, !tbaa !96
  %i.apw = call i32 @sqlite3_finalize(ptr noundef %i.apv) #20 ; 0 uses
  %i.apx = call i32 @sqlite3_close(ptr noundef %i.apu) #20 ; 0 uses
  br label %qrfFinalize.exit

qrfFinalize.exit:                                 ; preds = %bb.kc, %bb.kd
  %i.apy = load i32, ptr %i.amh, align 8, !tbaa !48
  br label %bb.ke

bb.ke:                                            ; preds = %bb.b, %bb.a, %qrfFinalize.exit
  %.0 = phi i32 [ %i.apy, %qrfFinalize.exit ], [ 0, %bb.a ], [ 21, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @qrfExplain(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !46
  %i.b = tail call i32 @sqlite3_step(ptr noundef %i.a) #20
  %i.c = icmp eq i32 %i.b, 100
  br i1 %i.c, label %.lr.ph212, label %.critedge

.lr.ph212:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph212, %qrfStringInArray.exit180.thread
  %indvars.iv240 = phi i64 [ 0, %.lr.ph212 ], [ %indvars.iv.next241, %qrfStringInArray.exit180.thread ] ; 19 uses
  %.0142210 = phi i64 [ 0, %.lr.ph212 ], [ %.1143, %qrfStringInArray.exit180.thread ] ; 3 uses
  %.0145209 = phi ptr [ null, %.lr.ph212 ], [ %.1146, %qrfStringInArray.exit180.thread ] ; 3 uses
  %.0148208 = phi ptr [ null, %.lr.ph212 ], [ %.1149, %qrfStringInArray.exit180.thread ] ; 3 uses
  %1 = trunc i64 %indvars.iv240 to i32
  %2 = add i32 %1, 1
  %i.e = trunc i64 %indvars.iv240 to i32
  %i.f = add i32 %i.e, 1
  %3 = add i64 %indvars.iv240, 1                  ; 2 uses
  %4 = trunc i64 %3 to i32
  %i.g = trunc i64 %indvars.iv240 to i32
  %i.h = add i32 %i.g, 1
  %i.i = load i32, ptr %i.d, align 8, !tbaa !48
  %.not = icmp eq i32 %i.i, 0
  %i.j = trunc nuw nsw i64 %indvars.iv240 to i32  ; 3 uses
  br i1 %.not, label %bb.c, label %.critedge.loopexit

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8, !tbaa !46
  %i.l = tail call i32 @sqlite3_column_int(ptr noundef %i.k, i32 noundef 0) #20 ; 7 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !46
  %i.n = tail call ptr @sqlite3_column_text(ptr noundef %i.m, i32 noundef 1) #20 ; 13 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !46
  %i.p = tail call i32 @sqlite3_column_int(ptr noundef %i.o, i32 noundef 2) #20
  %i.q = load ptr, ptr %0, align 8, !tbaa !46
  %i.r = tail call i32 @sqlite3_column_int(ptr noundef %i.q, i32 noundef 3) #20 ; 7 uses
  %i.s = sub nsw i32 %i.j, %i.l
  %i.t = add nsw i32 %i.r, %i.s                   ; 3 uses
  %.not158 = icmp sgt i64 %.0142210, %indvars.iv240
  br i1 %.not158, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = add nsw i64 %.0142210, 100               ; 2 uses
  %i.v = shl i64 %i.u, 2                          ; 2 uses
  %i.w = tail call ptr @sqlite3_realloc64(ptr noundef %.0145209, i64 noundef %i.v) #20 ; 3 uses
  %i.x = tail call ptr @sqlite3_realloc64(ptr noundef %.0148208, i64 noundef %i.v) #20 ; 3 uses
  %i.y = icmp eq ptr %i.w, null
  %i.z = icmp eq ptr %i.x, null
  %or.cond = select i1 %i.y, i1 true, i1 %i.z
  br i1 %or.cond, label %.critedge162, label %bb.e

.critedge162:                                     ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %0, i32 noundef 7, ptr noundef nonnull @.str.15)
  tail call void @sqlite3_free(ptr noundef %i.w) #20
  br label %qrfWrite.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1149 = phi ptr [ %i.x, %bb.d ], [ %.0148208, %bb.c ] ; 5 uses
  %.1146 = phi ptr [ %i.w, %bb.d ], [ %.0145209, %bb.c ] ; 8 uses
  %.1143 = phi i64 [ %i.u, %bb.d ], [ %.0142210, %bb.c ]
  %i.aa = icmp eq ptr %i.n, null
  br i1 %i.aa, label %qrfStringInArray.exit172.thread.thread191, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.ab = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(6) @.str.76) #21
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %.preheader.i165, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.preheader
  %i.ad = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(7) @.str.77) #21
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %.preheader.i165, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.af = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(7) @.str.78) #21
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %.preheader.i165, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.ah = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(11) @.str.79) #21
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.preheader.i165, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %.lr.ph.i.3
  %i.aj = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(7) @.str.80) #21
  %i.ak = icmp eq i32 %i.aj, 0
  %spec.select278 = zext i1 %i.ak to i32
  br label %.preheader.i165

qrfStringInArray.exit172.thread.thread191:        ; preds = %bb.e
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.1149, i64 %indvars.iv240
  store i32 0, ptr %i.al, align 4, !tbaa !30
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.1146, i64 %indvars.iv240
  store i32 0, ptr %i.am, align 4, !tbaa !30
  br label %qrfStringInArray.exit180.thread

.preheader.i165:                                  ; preds = %.lr.ph.i.4, %.lr.ph.i.3, %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.i.preheader
  %.07.i.ph = phi i32 [ 1, %.lr.ph.i.3 ], [ 1, %.lr.ph.i.preheader ], [ 1, %.lr.ph.i.1 ], [ %spec.select278, %.lr.ph.i.4 ], [ 1, %.lr.ph.i.2 ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.1149, i64 %indvars.iv240
  store i32 %.07.i.ph, ptr %i.an, align 4, !tbaa !30
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.1146, i64 %indvars.iv240
  store i32 0, ptr %i.ao, align 4, !tbaa !30
  %i.ap = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(5) @.str.70) #21
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %qrfStringInArray.exit172, label %.lr.ph.i167.1

.lr.ph.i167.1:                                    ; preds = %.preheader.i165
  %i.ar = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(5) @.str.71) #21
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %qrfStringInArray.exit172, label %.lr.ph.i167.2

.lr.ph.i167.2:                                    ; preds = %.lr.ph.i167.1
  %i.at = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(6) @.str.72) #21
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %qrfStringInArray.exit172, label %.lr.ph.i167.3

.lr.ph.i167.3:                                    ; preds = %.lr.ph.i167.2
  %i.av = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(6) @.str.73) #21
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %qrfStringInArray.exit172, label %.lr.ph.i167.4

.lr.ph.i167.4:                                    ; preds = %.lr.ph.i167.3
  %i.ax = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(11) @.str.74) #21
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %qrfStringInArray.exit172, label %.lr.ph.i167.5

.lr.ph.i167.5:                                    ; preds = %.lr.ph.i167.4
  %i.az = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(7) @.str.75) #21
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
  %i.bh = add i32 %i.r, %2
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
  %wide.load291 = load <4 x i32>, ptr %gep, align 4, !tbaa !30
  %wide.load292 = load <4 x i32>, ptr %i.bx, align 4, !tbaa !30
  %i.by = add nsw <4 x i32> %wide.load291, splat (i32 2)
  %i.bz = add nsw <4 x i32> %wide.load292, splat (i32 2)
  store <4 x i32> %i.by, ptr %gep, align 4, !tbaa !30
  store <4 x i32> %i.bz, ptr %i.bx, align 4, !tbaa !30
  %index.next293 = add nuw i64 %index290, 8       ; 2 uses
  %i.ca = icmp eq i64 %index.next293, %n.vec288
  br i1 %i.ca, label %middle.block294, label %vector.body289, !llvm.loop !283

middle.block294:                                  ; preds = %vector.body289
  %cmp.n295 = icmp eq i64 %i.bm, %n.vec288
  br i1 %cmp.n295, label %.lr.ph.i175, label %.lr.ph.preheader300

.lr.ph.preheader300:                              ; preds = %vector.scevcheck284, %.lr.ph.preheader, %middle.block294
  %indvars.iv.ph = phi i64 [ %i.bg, %vector.scevcheck284 ], [ %i.bg, %.lr.ph.preheader ], [ %i.bw, %middle.block294 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader300, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader300 ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.1146, i64 %indvars.iv ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !30
  %i.cd = add nsw i32 %i.cc, 2
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ce = shl i64 %indvars.iv.next, 32
  %i.cf = ashr exact i64 %i.ce, 32
  %i.cg = icmp slt i64 %i.cf, %indvars.iv240
  br i1 %i.cg, label %.lr.ph, label %.lr.ph.i175, !llvm.loop !284

.lr.ph.i175:                                      ; preds = %.lr.ph, %middle.block294, %.lr.ph.i167.5, %qrfStringInArray.exit172
  %i.ch = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(5) @.str.81) #21
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %qrfStringInArray.exit180, label %qrfStringInArray.exit180.thread

qrfStringInArray.exit180:                         ; preds = %.lr.ph.i175
  %i.cj = sext i32 %i.t to i64                    ; 2 uses
  %i.ck = icmp sgt i64 %indvars.iv240, %i.cj
  br i1 %i.ck, label %bb.f, label %qrfStringInArray.exit180.thread

bb.f:                                             ; preds = %qrfStringInArray.exit180
  %i.cl = getelementptr inbounds [4 x i8], ptr %.1149, i64 %i.cj
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !30
  %i.cn = icmp ne i32 %i.cm, 0
  %i.co = icmp ne i32 %i.p, 0
  %or.cond5 = select i1 %i.cn, i1 true, i1 %i.co
  br i1 %or.cond5, label %.lr.ph207.preheader, label %qrfStringInArray.exit180.thread

.lr.ph207.preheader:                              ; preds = %bb.f
  %i.cp = add i32 %i.r, %i.j
  %i.cq = sub i32 %i.cp, %i.l
  %i.cr = sext i32 %i.cq to i64                   ; 4 uses
  %i.cs = add i32 %i.r, %4
  %i.ct = sub i32 %i.cs, %i.l
  %i.cu = zext i32 %i.ct to i64
  %i.cv = sub i64 %3, %i.cu                       ; 3 uses
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
  %wide.load = load <4 x i32>, ptr %gep308, align 4, !tbaa !30
  %wide.load283 = load <4 x i32>, ptr %i.dg, align 4, !tbaa !30
  %i.dh = add nsw <4 x i32> %wide.load, splat (i32 2)
  %i.di = add nsw <4 x i32> %wide.load283, splat (i32 2)
  store <4 x i32> %i.dh, ptr %gep308, align 4, !tbaa !30
  store <4 x i32> %i.di, ptr %i.dg, align 4, !tbaa !30
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !285

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cv, %n.vec
  br i1 %cmp.n, label %qrfStringInArray.exit180.thread, label %.lr.ph207.preheader299

.lr.ph207.preheader299:                           ; preds = %vector.scevcheck, %.lr.ph207.preheader, %middle.block
  %indvars.iv237.ph = phi i64 [ %i.cr, %vector.scevcheck ], [ %i.cr, %.lr.ph207.preheader ], [ %i.df, %middle.block ]
  br label %.lr.ph207

.lr.ph207:                                        ; preds = %.lr.ph207.preheader299, %.lr.ph207
  %indvars.iv237 = phi i64 [ %indvars.iv.next238, %.lr.ph207 ], [ %indvars.iv237.ph, %.lr.ph207.preheader299 ] ; 2 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %.1146, i64 %indvars.iv237 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !30
  %i.dm = add nsw i32 %i.dl, 2
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !30
  %indvars.iv.next238 = add nsw i64 %indvars.iv237, 1 ; 2 uses
  %i.dn = and i64 %indvars.iv.next238, 4294967295
  %exitcond.not = icmp eq i64 %i.dn, %indvars.iv240
  br i1 %exitcond.not, label %qrfStringInArray.exit180.thread, label %.lr.ph207, !llvm.loop !286

qrfStringInArray.exit180.thread:                  ; preds = %.lr.ph207, %middle.block, %.lr.ph.i175, %qrfStringInArray.exit172.thread.thread191, %bb.f, %qrfStringInArray.exit180
  %indvars.iv.next241 = add nuw i64 %indvars.iv240, 1 ; 2 uses
  %i.do = load ptr, ptr %0, align 8, !tbaa !46
  %i.dp = tail call i32 @sqlite3_step(ptr noundef %i.do) #20
  %i.dq = icmp eq i32 %i.dp, 100
  br i1 %i.dq, label %bb.b, label %.critedge.loopexit, !llvm.loop !287

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
  tail call void @sqlite3_free(ptr noundef %.0148.lcssa) #20
  %i.ds = load ptr, ptr %0, align 8, !tbaa !46
  %i.dt = tail call i32 @sqlite3_reset(ptr noundef %i.ds) #20 ; 0 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !48
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %bb.g, label %qrfWrite.exit

bb.g:                                             ; preds = %.critedge
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !49 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !53
  %i.eb = icmp eq i8 %i.ea, 18
  br i1 %i.eb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0134 = phi ptr [ @qrfExplain.aScanExpWidth, %bb.h ], [ @qrfExplain.aExplainWidth, %bb.g ] ; 3 uses
  %.0133 = phi ptr [ @qrfExplain.aScanExpMap, %bb.h ], [ @qrfExplain.aExplainMap, %bb.g ] ; 2 uses
  %.0132 = phi i32 [ 10, %bb.h ], [ 8, %bb.g ]
  %.0131 = phi i64 [ 3, %bb.h ], [ 1, %bb.g ]
  %i.ec = load ptr, ptr %0, align 8, !tbaa !46
  %i.ed = tail call i32 @sqlite3_step(ptr noundef %i.ec) #20
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
  %i.el = load i32, ptr %i.du, align 8, !tbaa !48
  %.not157 = icmp eq i32 %i.el, 0
  br i1 %.not157, label %bb.k, label %.critedge7

bb.k:                                             ; preds = %bb.j
  %i.em = icmp eq i64 %indvars.iv260, 0
  br i1 %i.em, label %.preheader192, label %.loopexit

.preheader192:                                    ; preds = %bb.k
  br i1 %i.ef, label %.lr.ph220, label %._crit_edge

.lr.ph220:                                        ; preds = %.preheader192, %bb.n
  %indvars.iv243 = phi i64 [ %indvars.iv.next244, %bb.n ], [ 0, %.preheader192 ] ; 4 uses
  %i.en = load ptr, ptr %0, align 8, !tbaa !46
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.0133, i64 %indvars.iv243
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !30
  %i.eq = tail call ptr @sqlite3_column_name(ptr noundef %i.en, i32 noundef %i.ep) #20
  %i.er = load ptr, ptr %i.eg, align 8, !tbaa !47
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.0134, i64 %indvars.iv243
  %i.et = load i32, ptr %i.es, align 4, !tbaa !30
  tail call fastcc void @qrfWidthPrint(ptr noundef %i.er, i32 noundef %i.et, ptr noundef %i.eq)
  %i.eu = icmp eq i64 %indvars.iv243, %i.ek
  %i.ev = load ptr, ptr %i.eg, align 8, !tbaa !47 ; 2 uses
  br i1 %i.eu, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph220
  tail call void @sqlite3_str_append(ptr noundef %i.ev, ptr noundef nonnull @.str.8, i32 noundef 1) #20
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph220
  tail call void @sqlite3_str_append(ptr noundef %i.ev, ptr noundef nonnull @.str.82, i32 noundef 2) #20
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1 ; 2 uses
  %exitcond247.not = icmp eq i64 %indvars.iv.next244, %wide.trip.count
  br i1 %exitcond247.not, label %.lr.ph222, label %.lr.ph220, !llvm.loop !288

.lr.ph222:                                        ; preds = %bb.n, %bb.q
  %indvars.iv248 = phi i64 [ %indvars.iv.next249, %bb.q ], [ 0, %bb.n ] ; 3 uses
  %i.ew = load ptr, ptr %i.eg, align 8, !tbaa !47
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.0134, i64 %indvars.iv248
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !30
  tail call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.ew, ptr noundef nonnull @.str.83, i32 noundef %i.ey, i32 noundef 45) #20
  %i.ez = icmp eq i64 %indvars.iv248, %i.ek
  %i.fa = load ptr, ptr %i.eg, align 8, !tbaa !47 ; 2 uses
  br i1 %i.ez, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph222
  tail call void @sqlite3_str_append(ptr noundef %i.fa, ptr noundef nonnull @.str.8, i32 noundef 1) #20
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph222
  tail call void @sqlite3_str_append(ptr noundef %i.fa, ptr noundef nonnull @.str.82, i32 noundef 2) #20
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 2 uses
  %exitcond253.not = icmp eq i64 %indvars.iv.next249, %wide.trip.count252
  br i1 %exitcond253.not, label %.loopexit, label %.lr.ph222, !llvm.loop !289

.loopexit:                                        ; preds = %bb.q, %bb.k
  br i1 %i.ef, label %.lr.ph224, label %._crit_edge

.lr.ph224:                                        ; preds = %.loopexit
  %i.fb = icmp slt i64 %indvars.iv260, %.0140.lcssa
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.0145.lcssa, i64 %indvars.iv260
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph224, %bb.au
  %indvars.iv254 = phi i64 [ 0, %.lr.ph224 ], [ %indvars.iv.next255, %bb.au ] ; 5 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.0134, i64 %indvars.iv254
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !30
  %i.ff = load ptr, ptr %0, align 8, !tbaa !46
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.0133, i64 %indvars.iv254
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !30
  %i.fi = tail call ptr @sqlite3_column_text(ptr noundef %i.ff, i32 noundef %i.fh) #20 ; 2 uses
  %i.fj = icmp eq i64 %indvars.iv254, %i.ek       ; 2 uses
  %spec.select163 = select i1 %i.fj, i32 0, i32 %i.fe ; 2 uses
  %i.fk = icmp eq ptr %i.fi, null
  %spec.store.select = select i1 %i.fk, ptr @.str.6, ptr %i.fi ; 3 uses
  %i.fl = load i8, ptr %spec.store.select, align 1, !tbaa !29 ; 2 uses
  %.not27.i = icmp eq i8 %i.fl, 0
end_hunk_0
