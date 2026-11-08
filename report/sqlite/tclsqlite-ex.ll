Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/tclsqlite-ex?download=true
inline.NumInlined: 131
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_format_query_result:bb.a
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
  %indvars.iv240 = phi i64 [ 0, %.lr.ph212 ], [ %indvars.iv.next241, %qrfStringInArray.exit180.thread ] ; 18 uses
  %.0142210 = phi i64 [ 0, %.lr.ph212 ], [ %.1143, %qrfStringInArray.exit180.thread ] ; 3 uses
  %.0145209 = phi ptr [ null, %.lr.ph212 ], [ %.1146, %qrfStringInArray.exit180.thread ] ; 3 uses
  %.0148208 = phi ptr [ null, %.lr.ph212 ], [ %.1149, %qrfStringInArray.exit180.thread ] ; 3 uses
  %i.e = trunc i64 %indvars.iv240 to i32
  %i.f = add i32 %i.e, 1
  %i.g = trunc i64 %indvars.iv240 to i32
  %i.h = add i32 %i.g, 1
  %i.i = load i32, ptr %i.d, align 8, !tbaa !48
  %.not = icmp eq i32 %i.i, 0
  %1 = trunc i64 %indvars.iv240 to i32            ; 5 uses
  br i1 %.not, label %bb.c, label %.critedge.loopexit

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %0, align 8, !tbaa !46
  %i.k = tail call i32 @sqlite3_column_int(ptr noundef %i.j, i32 noundef 0) #20 ; 7 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !46
  %i.m = tail call ptr @sqlite3_column_text(ptr noundef %i.l, i32 noundef 1) #20 ; 13 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !46
  %i.o = tail call i32 @sqlite3_column_int(ptr noundef %i.n, i32 noundef 2) #20
  %i.p = load ptr, ptr %0, align 8, !tbaa !46
  %i.q = tail call i32 @sqlite3_column_int(ptr noundef %i.p, i32 noundef 3) #20 ; 7 uses
  %i.r = sub nsw i32 %1, %i.k
  %i.s = add nsw i32 %i.q, %i.r                   ; 3 uses
  %.not158 = icmp sgt i64 %.0142210, %indvars.iv240
  br i1 %.not158, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = add nsw i64 %.0142210, 100               ; 2 uses
  %i.u = shl i64 %i.t, 2                          ; 2 uses
  %i.v = tail call ptr @sqlite3_realloc64(ptr noundef %.0145209, i64 noundef %i.u) #20 ; 3 uses
  %i.w = tail call ptr @sqlite3_realloc64(ptr noundef %.0148208, i64 noundef %i.u) #20 ; 3 uses
  %i.x = icmp eq ptr %i.v, null
  %i.y = icmp eq ptr %i.w, null
  %or.cond = select i1 %i.x, i1 true, i1 %i.y
  br i1 %or.cond, label %.critedge162, label %bb.e

.critedge162:                                     ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %0, i32 noundef 7, ptr noundef nonnull @.str.15)
  tail call void @sqlite3_free(ptr noundef %i.v) #20
  br label %qrfWrite.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1149 = phi ptr [ %i.w, %bb.d ], [ %.0148208, %bb.c ] ; 5 uses
  %.1146 = phi ptr [ %i.v, %bb.d ], [ %.0145209, %bb.c ] ; 8 uses
  %.1143 = phi i64 [ %i.t, %bb.d ], [ %.0142210, %bb.c ]
  %i.z = icmp eq ptr %i.m, null
  br i1 %i.z, label %qrfStringInArray.exit172.thread.thread191, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(6) @.str.76) #21
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.preheader.i165, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.preheader
  %i.ac = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(7) @.str.77) #21
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %.preheader.i165, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.ae = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(7) @.str.78) #21
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %.preheader.i165, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.ag = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(11) @.str.79) #21
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %.preheader.i165, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %.lr.ph.i.3
  %i.ai = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(7) @.str.80) #21
  %i.aj = icmp eq i32 %i.ai, 0
  %spec.select278 = zext i1 %i.aj to i32
  br label %.preheader.i165

qrfStringInArray.exit172.thread.thread191:        ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.1149, i64 %indvars.iv240
  store i32 0, ptr %i.ak, align 4, !tbaa !30
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.1146, i64 %indvars.iv240
  store i32 0, ptr %i.al, align 4, !tbaa !30
  br label %qrfStringInArray.exit180.thread

.preheader.i165:                                  ; preds = %.lr.ph.i.4, %.lr.ph.i.3, %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.i.preheader
  %.07.i.ph = phi i32 [ 1, %.lr.ph.i.3 ], [ 1, %.lr.ph.i.preheader ], [ 1, %.lr.ph.i.1 ], [ %spec.select278, %.lr.ph.i.4 ], [ 1, %.lr.ph.i.2 ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.1149, i64 %indvars.iv240
  store i32 %.07.i.ph, ptr %i.am, align 4, !tbaa !30
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.1146, i64 %indvars.iv240
  store i32 0, ptr %i.an, align 4, !tbaa !30
  %i.ao = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(5) @.str.70) #21
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %qrfStringInArray.exit172, label %.lr.ph.i167.1

.lr.ph.i167.1:                                    ; preds = %.preheader.i165
  %i.aq = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(5) @.str.71) #21
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %qrfStringInArray.exit172, label %.lr.ph.i167.2

.lr.ph.i167.2:                                    ; preds = %.lr.ph.i167.1
  %i.as = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(6) @.str.72) #21
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %qrfStringInArray.exit172, label %.lr.ph.i167.3

.lr.ph.i167.3:                                    ; preds = %.lr.ph.i167.2
  %i.au = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(6) @.str.73) #21
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %qrfStringInArray.exit172, label %.lr.ph.i167.4

.lr.ph.i167.4:                                    ; preds = %.lr.ph.i167.3
  %i.aw = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(11) @.str.74) #21
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %qrfStringInArray.exit172, label %.lr.ph.i167.5

.lr.ph.i167.5:                                    ; preds = %.lr.ph.i167.4
  %i.ay = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(7) @.str.75) #21
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %qrfStringInArray.exit172, label %.lr.ph.i175

qrfStringInArray.exit172:                         ; preds = %.lr.ph.i167.5, %.lr.ph.i167.4, %.lr.ph.i167.3, %.lr.ph.i167.2, %.lr.ph.i167.1, %.preheader.i165
  %i.ba = icmp sgt i32 %i.s, 0
  %i.bb = sext i32 %i.s to i64
  %i.bc = icmp sgt i64 %indvars.iv240, %i.bb
  %or.cond229 = select i1 %i.ba, i1 %i.bc, i1 false
  br i1 %or.cond229, label %.lr.ph.preheader, label %.lr.ph.i175

.lr.ph.preheader:                                 ; preds = %qrfStringInArray.exit172
  %2 = add i32 %i.q, %1
  %3 = sub i32 %2, %i.k
  %i.bd = zext i32 %3 to i64                      ; 4 uses
  %i.be = add i32 %1, 1
  %i.bf = add i32 %i.q, %i.be
  %i.bg = sub i32 %i.bf, %i.k
  %i.bh = sext i32 %i.bg to i64                   ; 2 uses
  %i.bi = tail call i64 @llvm.smax.i64(i64 %indvars.iv240, i64 %i.bh)
  %i.bj = add i64 %i.bi, 1
  %i.bk = sub i64 %i.bj, %i.bh                    ; 3 uses
  %min.iters.check286 = icmp ult i64 %i.bk, 16
  br i1 %min.iters.check286, label %.lr.ph.preheader300, label %vector.scevcheck284

vector.scevcheck284:                              ; preds = %.lr.ph.preheader
  %i.bl = add i32 %i.q, %i.f
  %i.bm = sub i32 %i.bl, %i.k                     ; 3 uses
  %i.bn = sext i32 %i.bm to i64                   ; 2 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %indvars.iv240, i64 %i.bn)
  %i.bo = sub i64 %smax, %i.bn                    ; 2 uses
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = add i32 %i.bm, %i.bp
  %i.br = icmp slt i32 %i.bq, %i.bm
  %i.bs = icmp ugt i64 %i.bo, 4294967295
  %i.bt = or i1 %i.br, %i.bs
  br i1 %i.bt, label %.lr.ph.preheader300, label %vector.ph287

vector.ph287:                                     ; preds = %vector.scevcheck284
  %n.vec288 = and i64 %i.bk, -8                   ; 3 uses
  %i.bu = add i64 %n.vec288, %i.bd
  %invariant.gep = getelementptr [4 x i8], ptr %.1146, i64 %i.bd
  br label %vector.body289

vector.body289:                                   ; preds = %vector.body289, %vector.ph287
  %index290 = phi i64 [ 0, %vector.ph287 ], [ %index.next293, %vector.body289 ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index290 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load291 = load <4 x i32>, ptr %gep, align 4, !tbaa !30
  %wide.load292 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !30
  %i.bw = add nsw <4 x i32> %wide.load291, splat (i32 2)
  %i.bx = add nsw <4 x i32> %wide.load292, splat (i32 2)
  store <4 x i32> %i.bw, ptr %gep, align 4, !tbaa !30
  store <4 x i32> %i.bx, ptr %i.bv, align 4, !tbaa !30
  %index.next293 = add nuw i64 %index290, 8       ; 2 uses
  %i.by = icmp eq i64 %index.next293, %n.vec288
  br i1 %i.by, label %middle.block294, label %vector.body289, !llvm.loop !283

middle.block294:                                  ; preds = %vector.body289
  %cmp.n295 = icmp eq i64 %i.bk, %n.vec288
  br i1 %cmp.n295, label %.lr.ph.i175, label %.lr.ph.preheader300

.lr.ph.preheader300:                              ; preds = %vector.scevcheck284, %.lr.ph.preheader, %middle.block294
  %indvars.iv.ph = phi i64 [ %i.bd, %vector.scevcheck284 ], [ %i.bd, %.lr.ph.preheader ], [ %i.bu, %middle.block294 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader300, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader300 ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.1146, i64 %indvars.iv ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !30
  %i.cb = add nsw i32 %i.ca, 2
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cc = shl i64 %indvars.iv.next, 32
  %i.cd = ashr exact i64 %i.cc, 32
  %i.ce = icmp slt i64 %i.cd, %indvars.iv240
  br i1 %i.ce, label %.lr.ph, label %.lr.ph.i175, !llvm.loop !284

.lr.ph.i175:                                      ; preds = %.lr.ph, %middle.block294, %.lr.ph.i167.5, %qrfStringInArray.exit172
  %i.cf = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(5) @.str.81) #21
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %qrfStringInArray.exit180, label %qrfStringInArray.exit180.thread

qrfStringInArray.exit180:                         ; preds = %.lr.ph.i175
  %i.ch = sext i32 %i.s to i64                    ; 2 uses
  %i.ci = icmp sgt i64 %indvars.iv240, %i.ch
  br i1 %i.ci, label %bb.f, label %qrfStringInArray.exit180.thread

bb.f:                                             ; preds = %qrfStringInArray.exit180
  %i.cj = getelementptr inbounds [4 x i8], ptr %.1149, i64 %i.ch
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !30
  %i.cl = icmp ne i32 %i.ck, 0
  %i.cm = icmp ne i32 %i.o, 0
  %or.cond5 = select i1 %i.cl, i1 true, i1 %i.cm
  br i1 %or.cond5, label %.lr.ph207.preheader, label %qrfStringInArray.exit180.thread

.lr.ph207.preheader:                              ; preds = %bb.f
  %4 = add i32 %i.q, %1
  %5 = sub i32 %4, %i.k
  %6 = sext i32 %5 to i64                         ; 4 uses
  %i.cn = add nuw i64 %indvars.iv240, 1
  %i.co = add i32 %1, 1
  %i.cp = add i32 %i.q, %i.co
  %i.cq = sub i32 %i.cp, %i.k
  %i.cr = zext i32 %i.cq to i64
  %i.cs = sub i64 %i.cn, %i.cr                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.cs, 12
  br i1 %min.iters.check, label %.lr.ph207.preheader299, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph207.preheader
  %i.ct = add i32 %i.q, %i.h
  %i.cu = sub i32 %i.ct, %i.k                     ; 2 uses
  %i.cv = zext i32 %i.cu to i64
  %i.cw = sub i64 %indvars.iv240, %i.cv           ; 2 uses
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = xor i32 %i.cu, -1
  %i.cz = icmp ult i32 %i.cy, %i.cx
  %i.da = icmp ugt i64 %i.cw, 4294967295
  %i.db = or i1 %i.cz, %i.da
  br i1 %i.db, label %.lr.ph207.preheader299, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.cs, -8                      ; 3 uses
  %i.dc = add i64 %n.vec, %6
  %invariant.gep307 = getelementptr [4 x i8], ptr %.1146, i64 %6
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep308 = getelementptr [4 x i8], ptr %invariant.gep307, i64 %index ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %gep308, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %gep308, align 4, !tbaa !30
  %wide.load283 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !30
  %i.de = add nsw <4 x i32> %wide.load, splat (i32 2)
  %i.df = add nsw <4 x i32> %wide.load283, splat (i32 2)
  store <4 x i32> %i.de, ptr %gep308, align 4, !tbaa !30
  store <4 x i32> %i.df, ptr %i.dd, align 4, !tbaa !30
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !285

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cs, %n.vec
  br i1 %cmp.n, label %qrfStringInArray.exit180.thread, label %.lr.ph207.preheader299

.lr.ph207.preheader299:                           ; preds = %vector.scevcheck, %.lr.ph207.preheader, %middle.block
  %indvars.iv237.ph = phi i64 [ %6, %vector.scevcheck ], [ %6, %.lr.ph207.preheader ], [ %i.dc, %middle.block ]
  br label %.lr.ph207

.lr.ph207:                                        ; preds = %.lr.ph207.preheader299, %.lr.ph207
  %indvars.iv237 = phi i64 [ %indvars.iv.next238, %.lr.ph207 ], [ %indvars.iv237.ph, %.lr.ph207.preheader299 ] ; 2 uses
  %i.dh = getelementptr inbounds [4 x i8], ptr %.1146, i64 %indvars.iv237 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !30
  %i.dj = add nsw i32 %i.di, 2
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !30
  %indvars.iv.next238 = add nsw i64 %indvars.iv237, 1 ; 2 uses
  %i.dk = and i64 %indvars.iv.next238, 4294967295
  %exitcond.not = icmp eq i64 %i.dk, %indvars.iv240
  br i1 %exitcond.not, label %qrfStringInArray.exit180.thread, label %.lr.ph207, !llvm.loop !286

qrfStringInArray.exit180.thread:                  ; preds = %.lr.ph207, %middle.block, %.lr.ph.i175, %qrfStringInArray.exit172.thread.thread191, %bb.f, %qrfStringInArray.exit180
  %indvars.iv.next241 = add nuw i64 %indvars.iv240, 1 ; 2 uses
  %i.dl = load ptr, ptr %0, align 8, !tbaa !46
  %i.dm = tail call i32 @sqlite3_step(ptr noundef %i.dl) #20
  %i.dn = icmp eq i32 %i.dm, 100
  br i1 %i.dn, label %bb.b, label %.critedge.loopexit, !llvm.loop !287

.critedge.loopexit:                               ; preds = %qrfStringInArray.exit180.thread, %bb.b
  %.0148.lcssa.ph = phi ptr [ %.0148208, %bb.b ], [ %.1149, %qrfStringInArray.exit180.thread ]
  %.0145.lcssa.ph = phi ptr [ %.0145209, %bb.b ], [ %.1146, %qrfStringInArray.exit180.thread ]
  %.0140.lcssa.ph = phi i64 [ %indvars.iv240, %bb.b ], [ %indvars.iv.next241, %qrfStringInArray.exit180.thread ]
  %sext = shl i64 %.0140.lcssa.ph, 32
  %i.do = ashr exact i64 %sext, 32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %.0148.lcssa = phi ptr [ null, %bb.a ], [ %.0148.lcssa.ph, %.critedge.loopexit ]
  %.0145.lcssa = phi ptr [ null, %bb.a ], [ %.0145.lcssa.ph, %.critedge.loopexit ] ; 7 uses
  %.0140.lcssa = phi i64 [ 0, %bb.a ], [ %i.do, %.critedge.loopexit ]
  tail call void @sqlite3_free(ptr noundef %.0148.lcssa) #20
  %i.dp = load ptr, ptr %0, align 8, !tbaa !46
  %i.dq = tail call i32 @sqlite3_reset(ptr noundef %i.dp) #20 ; 0 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !48
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.g, label %qrfWrite.exit

bb.g:                                             ; preds = %.critedge
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !49 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !53
  %i.dy = icmp eq i8 %i.dx, 18
  br i1 %i.dy, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0134 = phi ptr [ @qrfExplain.aScanExpWidth, %bb.h ], [ @qrfExplain.aExplainWidth, %bb.g ] ; 3 uses
  %.0133 = phi ptr [ @qrfExplain.aScanExpMap, %bb.h ], [ @qrfExplain.aExplainMap, %bb.g ] ; 2 uses
  %.0132 = phi i32 [ 10, %bb.h ], [ 8, %bb.g ]
  %.0131 = phi i64 [ 3, %bb.h ], [ 1, %bb.g ]
  %i.dz = load ptr, ptr %0, align 8, !tbaa !46
  %i.ea = tail call i32 @sqlite3_step(ptr noundef %i.dz) #20
  %i.eb = icmp eq i32 %i.ea, 100
  br i1 %i.eb, label %.lr.ph227, label %.critedge7

.lr.ph227:                                        ; preds = %bb.i
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.dv, i32 %.0132) ; 4 uses
  %i.ec = icmp sgt i32 %i.dv, 0                   ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.ee = add nsw i32 %spec.select, -1
  %i.ef = icmp ne ptr %.0145.lcssa, null
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.eh = zext i32 %i.ee to i64                   ; 3 uses
  %wide.trip.count = zext nneg i32 %spec.select to i64
  %wide.trip.count252 = zext nneg i32 %spec.select to i64
  %wide.trip.count258 = zext nneg i32 %spec.select to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph227, %._crit_edge
  %indvars.iv260 = phi i64 [ 0, %.lr.ph227 ], [ %indvars.iv.next261, %._crit_edge ] ; 4 uses
  %i.ei = load i32, ptr %i.dr, align 8, !tbaa !48
  %.not157 = icmp eq i32 %i.ei, 0
  br i1 %.not157, label %bb.k, label %.critedge7

bb.k:                                             ; preds = %bb.j
  %i.ej = icmp eq i64 %indvars.iv260, 0
  br i1 %i.ej, label %.preheader192, label %.loopexit

.preheader192:                                    ; preds = %bb.k
  br i1 %i.ec, label %.lr.ph220, label %._crit_edge

.lr.ph220:                                        ; preds = %.preheader192, %bb.n
  %indvars.iv243 = phi i64 [ %indvars.iv.next244, %bb.n ], [ 0, %.preheader192 ] ; 4 uses
  %i.ek = load ptr, ptr %0, align 8, !tbaa !46
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.0133, i64 %indvars.iv243
  %i.em = load i32, ptr %i.el, align 4, !tbaa !30
  %i.en = tail call ptr @sqlite3_column_name(ptr noundef %i.ek, i32 noundef %i.em) #20
  %i.eo = load ptr, ptr %i.ed, align 8, !tbaa !47
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.0134, i64 %indvars.iv243
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !30
  tail call fastcc void @qrfWidthPrint(ptr noundef %i.eo, i32 noundef %i.eq, ptr noundef %i.en)
  %i.er = icmp eq i64 %indvars.iv243, %i.eh
  %i.es = load ptr, ptr %i.ed, align 8, !tbaa !47 ; 2 uses
  br i1 %i.er, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph220
  tail call void @sqlite3_str_append(ptr noundef %i.es, ptr noundef nonnull @.str.8, i32 noundef 1) #20
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph220
  tail call void @sqlite3_str_append(ptr noundef %i.es, ptr noundef nonnull @.str.82, i32 noundef 2) #20
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1 ; 2 uses
  %exitcond247.not = icmp eq i64 %indvars.iv.next244, %wide.trip.count
  br i1 %exitcond247.not, label %.lr.ph222, label %.lr.ph220, !llvm.loop !288

.lr.ph222:                                        ; preds = %bb.n, %bb.q
  %indvars.iv248 = phi i64 [ %indvars.iv.next249, %bb.q ], [ 0, %bb.n ] ; 3 uses
  %i.et = load ptr, ptr %i.ed, align 8, !tbaa !47
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.0134, i64 %indvars.iv248
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !30
  tail call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.et, ptr noundef nonnull @.str.83, i32 noundef %i.ev, i32 noundef 45) #20
  %i.ew = icmp eq i64 %indvars.iv248, %i.eh
  %i.ex = load ptr, ptr %i.ed, align 8, !tbaa !47 ; 2 uses
  br i1 %i.ew, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph222
  tail call void @sqlite3_str_append(ptr noundef %i.ex, ptr noundef nonnull @.str.8, i32 noundef 1) #20
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph222
  tail call void @sqlite3_str_append(ptr noundef %i.ex, ptr noundef nonnull @.str.82, i32 noundef 2) #20
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 2 uses
  %exitcond253.not = icmp eq i64 %indvars.iv.next249, %wide.trip.count252
  br i1 %exitcond253.not, label %.loopexit, label %.lr.ph222, !llvm.loop !289

.loopexit:                                        ; preds = %bb.q, %bb.k
  br i1 %i.ec, label %.lr.ph224, label %._crit_edge

.lr.ph224:                                        ; preds = %.loopexit
  %i.ey = icmp slt i64 %indvars.iv260, %.0140.lcssa
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.0145.lcssa, i64 %indvars.iv260
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph224, %bb.au
  %indvars.iv254 = phi i64 [ 0, %.lr.ph224 ], [ %indvars.iv.next255, %bb.au ] ; 5 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.0134, i64 %indvars.iv254
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !30
  %i.fc = load ptr, ptr %0, align 8, !tbaa !46
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.0133, i64 %indvars.iv254
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !30
  %i.ff = tail call ptr @sqlite3_column_text(ptr noundef %i.fc, i32 noundef %i.fe) #20 ; 2 uses
  %i.fg = icmp eq i64 %indvars.iv254, %i.eh       ; 2 uses
  %spec.select163 = select i1 %i.fg, i32 0, i32 %i.fb ; 2 uses
  %i.fh = icmp eq ptr %i.ff, null
  %spec.store.select = select i1 %i.fh, ptr @.str.6, ptr %i.ff ; 3 uses
  %i.fi = load i8, ptr %spec.store.select, align 1, !tbaa !29 ; 2 uses
  %.not27.i = icmp eq i8 %i.fi, 0
  br i1 %.not27.i, label %sqlite3_qrf_wcswidth.exit, label %.lr.ph.i181

.lr.ph.i181:                                      ; preds = %bb.r, %bb.ap
  %i.fj = phi i8 [ %i.ji, %bb.ap ], [ %i.fi, %bb.r ] ; 4 uses
  %.029.i = phi ptr [ %.2.i, %bb.ap ], [ %spec.store.select, %bb.r ] ; 14 uses
  %.01528.i = phi i32 [ %.116.i, %bb.ap ], [ 0, %bb.r ] ; 4 uses
  %i.fk = icmp ult i8 %i.fj, 32
  br i1 %i.fk, label %bb.s, label %bb.v

bb.s:                                             ; preds = %.lr.ph.i181
  %i.fl = icmp eq i8 %i.fj, 27
  br i1 %i.fl, label %bb.t, label %qrfIsVt100.exit.thread.i

bb.t:                                             ; preds = %bb.s
  %i.fm = getelementptr inbounds nuw i8, ptr %.029.i, i64 1
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !29
  %.not.i.i = icmp eq i8 %i.fn, 91
  br i1 %.not.i.i, label %.preheader.i.i, label %qrfIsVt100.exit.thread.i

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.preheader.i.i ], [ 2, %bb.t ] ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.029.i, i64 %indvars.iv.i.i
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !29
  %i.fq = and i8 %i.fp, -16
  %or.cond.i.i = icmp eq i8 %i.fq, 48
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  br i1 %or.cond.i.i, label %.preheader.i.i, label %.critedge.i.i, !llvm.loop !1

.critedge.i.i:                                    ; preds = %.preheader.i.i, %.critedge.i.i
  %indvars.iv25.i.i = phi i64 [ %indvars.iv.next26.i.i, %.critedge.i.i ], [ %indvars.iv.i.i, %.preheader.i.i ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.029.i, i64 %indvars.iv25.i.i
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !29  ; 2 uses
  %i.ft = and i8 %i.fs, -16
  %or.cond22.i.i = icmp eq i8 %i.ft, 32
  %indvars.iv.next26.i.i = add nuw i64 %indvars.iv25.i.i, 1 ; 2 uses
  br i1 %or.cond22.i.i, label %.critedge.i.i, label %.critedge2.i.i, !llvm.loop !2

.critedge2.i.i:                                   ; preds = %.critedge.i.i
  %i.fu = add i8 %i.fs, -64
  %or.cond23.i.i = icmp ult i8 %i.fu, 63
  br i1 %or.cond23.i.i, label %bb.u, label %qrfIsVt100.exit.thread.i
end_hunk_0
