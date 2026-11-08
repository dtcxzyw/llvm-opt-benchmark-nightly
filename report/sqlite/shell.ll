Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/shell?download=true
inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 76
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 120
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_format_query_result:bb.a
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
  %1 = trunc i64 %indvars.iv240 to i32            ; 5 uses
  br i1 %.not, label %bb.c, label %.critedge.loopexit

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %0, align 8, !tbaa !68
  %i.k = tail call i32 @sqlite3_column_int(ptr noundef %i.j, i32 noundef 0) #45 ; 7 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !68
  %i.m = tail call ptr @sqlite3_column_text(ptr noundef %i.l, i32 noundef 1) #45 ; 13 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !68
  %i.o = tail call i32 @sqlite3_column_int(ptr noundef %i.n, i32 noundef 2) #45
  %i.p = load ptr, ptr %0, align 8, !tbaa !68
  %i.q = tail call i32 @sqlite3_column_int(ptr noundef %i.p, i32 noundef 3) #45 ; 7 uses
  %i.r = sub nsw i32 %1, %i.k
  %i.s = add nsw i32 %i.q, %i.r                   ; 3 uses
  %.not158 = icmp sgt i64 %.0142210, %indvars.iv240
  br i1 %.not158, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = add nsw i64 %.0142210, 100               ; 2 uses
  %i.u = shl i64 %i.t, 2                          ; 2 uses
  %i.v = tail call ptr @sqlite3_realloc64(ptr noundef %.0145209, i64 noundef %i.u) #45 ; 3 uses
  %i.w = tail call ptr @sqlite3_realloc64(ptr noundef %.0148208, i64 noundef %i.u) #45 ; 3 uses
  %i.x = icmp eq ptr %i.v, null
  %i.y = icmp eq ptr %i.w, null
  %or.cond = select i1 %i.x, i1 true, i1 %i.y
  br i1 %or.cond, label %.critedge162, label %bb.e

.critedge162:                                     ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %0, i32 noundef 7, ptr noundef nonnull @.str.56)
  tail call void @sqlite3_free(ptr noundef %i.v) #45
  br label %qrfWrite.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1149 = phi ptr [ %i.w, %bb.d ], [ %.0148208, %bb.c ] ; 5 uses
  %.1146 = phi ptr [ %i.v, %bb.d ], [ %.0145209, %bb.c ] ; 8 uses
  %.1143 = phi i64 [ %i.t, %bb.d ], [ %.0142210, %bb.c ]
  %i.z = icmp eq ptr %i.m, null
  br i1 %i.z, label %qrfStringInArray.exit172.thread.thread191, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(6) @.str.224) #46
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.preheader.i165, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.preheader
  %i.ac = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(7) @.str.225) #46
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %.preheader.i165, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.ae = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(7) @.str.226) #46
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %.preheader.i165, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.ag = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(11) @.str.227) #46
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %.preheader.i165, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %.lr.ph.i.3
  %i.ai = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(7) @.str.228) #46
  %i.aj = icmp eq i32 %i.ai, 0
  %spec.select278 = zext i1 %i.aj to i32
  br label %.preheader.i165

qrfStringInArray.exit172.thread.thread191:        ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.1149, i64 %indvars.iv240
  store i32 0, ptr %i.ak, align 4, !tbaa !53
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.1146, i64 %indvars.iv240
  store i32 0, ptr %i.al, align 4, !tbaa !53
  br label %qrfStringInArray.exit180.thread

.preheader.i165:                                  ; preds = %.lr.ph.i.4, %.lr.ph.i.3, %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.i.preheader
  %.07.i.ph = phi i32 [ 1, %.lr.ph.i.3 ], [ 1, %.lr.ph.i.preheader ], [ 1, %.lr.ph.i.1 ], [ %spec.select278, %.lr.ph.i.4 ], [ 1, %.lr.ph.i.2 ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.1149, i64 %indvars.iv240
  store i32 %.07.i.ph, ptr %i.am, align 4, !tbaa !53
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.1146, i64 %indvars.iv240
  store i32 0, ptr %i.an, align 4, !tbaa !53
  %i.ao = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(5) @.str.218) #46
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %qrfStringInArray.exit172, label %.lr.ph.i167.1

.lr.ph.i167.1:                                    ; preds = %.preheader.i165
  %i.aq = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(5) @.str.219) #46
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %qrfStringInArray.exit172, label %.lr.ph.i167.2

.lr.ph.i167.2:                                    ; preds = %.lr.ph.i167.1
  %i.as = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(6) @.str.220) #46
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %qrfStringInArray.exit172, label %.lr.ph.i167.3

.lr.ph.i167.3:                                    ; preds = %.lr.ph.i167.2
  %i.au = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(6) @.str.221) #46
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %qrfStringInArray.exit172, label %.lr.ph.i167.4

.lr.ph.i167.4:                                    ; preds = %.lr.ph.i167.3
  %i.aw = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(11) @.str.222) #46
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %qrfStringInArray.exit172, label %.lr.ph.i167.5

.lr.ph.i167.5:                                    ; preds = %.lr.ph.i167.4
  %i.ay = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(7) @.str.223) #46
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
  %wide.load291 = load <4 x i32>, ptr %gep, align 4, !tbaa !53
  %wide.load292 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !53
  %i.bw = add nsw <4 x i32> %wide.load291, splat (i32 2)
  %i.bx = add nsw <4 x i32> %wide.load292, splat (i32 2)
  store <4 x i32> %i.bw, ptr %gep, align 4, !tbaa !53
  store <4 x i32> %i.bx, ptr %i.bv, align 4, !tbaa !53
  %index.next293 = add nuw i64 %index290, 8       ; 2 uses
  %i.by = icmp eq i64 %index.next293, %n.vec288
  br i1 %i.by, label %middle.block294, label %vector.body289, !llvm.loop !739

middle.block294:                                  ; preds = %vector.body289
  %cmp.n295 = icmp eq i64 %i.bk, %n.vec288
  br i1 %cmp.n295, label %.lr.ph.i175, label %.lr.ph.preheader300

.lr.ph.preheader300:                              ; preds = %vector.scevcheck284, %.lr.ph.preheader, %middle.block294
  %indvars.iv.ph = phi i64 [ %i.bd, %vector.scevcheck284 ], [ %i.bd, %.lr.ph.preheader ], [ %i.bu, %middle.block294 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader300, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader300 ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.1146, i64 %indvars.iv ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !53
  %i.cb = add nsw i32 %i.ca, 2
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cc = shl i64 %indvars.iv.next, 32
  %i.cd = ashr exact i64 %i.cc, 32
  %i.ce = icmp slt i64 %i.cd, %indvars.iv240
  br i1 %i.ce, label %.lr.ph, label %.lr.ph.i175, !llvm.loop !740

.lr.ph.i175:                                      ; preds = %.lr.ph, %middle.block294, %.lr.ph.i167.5, %qrfStringInArray.exit172
  %i.cf = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(5) @.str.229) #46
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %qrfStringInArray.exit180, label %qrfStringInArray.exit180.thread

qrfStringInArray.exit180:                         ; preds = %.lr.ph.i175
  %i.ch = sext i32 %i.s to i64                    ; 2 uses
  %i.ci = icmp sgt i64 %indvars.iv240, %i.ch
  br i1 %i.ci, label %bb.f, label %qrfStringInArray.exit180.thread

bb.f:                                             ; preds = %qrfStringInArray.exit180
  %i.cj = getelementptr inbounds [4 x i8], ptr %.1149, i64 %i.ch
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !53
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
  %wide.load = load <4 x i32>, ptr %gep308, align 4, !tbaa !53
  %wide.load283 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !53
  %i.de = add nsw <4 x i32> %wide.load, splat (i32 2)
  %i.df = add nsw <4 x i32> %wide.load283, splat (i32 2)
  store <4 x i32> %i.de, ptr %gep308, align 4, !tbaa !53
  store <4 x i32> %i.df, ptr %i.dd, align 4, !tbaa !53
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !741

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cs, %n.vec
  br i1 %cmp.n, label %qrfStringInArray.exit180.thread, label %.lr.ph207.preheader299

.lr.ph207.preheader299:                           ; preds = %vector.scevcheck, %.lr.ph207.preheader, %middle.block
  %indvars.iv237.ph = phi i64 [ %6, %vector.scevcheck ], [ %6, %.lr.ph207.preheader ], [ %i.dc, %middle.block ]
  br label %.lr.ph207

.lr.ph207:                                        ; preds = %.lr.ph207.preheader299, %.lr.ph207
  %indvars.iv237 = phi i64 [ %indvars.iv.next238, %.lr.ph207 ], [ %indvars.iv237.ph, %.lr.ph207.preheader299 ] ; 2 uses
  %i.dh = getelementptr inbounds [4 x i8], ptr %.1146, i64 %indvars.iv237 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !53
  %i.dj = add nsw i32 %i.di, 2
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !53
  %indvars.iv.next238 = add nsw i64 %indvars.iv237, 1 ; 2 uses
  %i.dk = and i64 %indvars.iv.next238, 4294967295
  %exitcond.not = icmp eq i64 %i.dk, %indvars.iv240
  br i1 %exitcond.not, label %qrfStringInArray.exit180.thread, label %.lr.ph207, !llvm.loop !742

qrfStringInArray.exit180.thread:                  ; preds = %.lr.ph207, %middle.block, %.lr.ph.i175, %qrfStringInArray.exit172.thread.thread191, %bb.f, %qrfStringInArray.exit180
  %indvars.iv.next241 = add nuw i64 %indvars.iv240, 1 ; 2 uses
  %i.dl = load ptr, ptr %0, align 8, !tbaa !68
  %i.dm = tail call i32 @sqlite3_step(ptr noundef %i.dl) #45
  %i.dn = icmp eq i32 %i.dm, 100
  br i1 %i.dn, label %bb.b, label %.critedge.loopexit, !llvm.loop !743

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
  tail call void @sqlite3_free(ptr noundef %.0148.lcssa) #45
  %i.dp = load ptr, ptr %0, align 8, !tbaa !68
  %i.dq = tail call i32 @sqlite3_reset(ptr noundef %i.dp) #45 ; 0 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !70
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.g, label %qrfWrite.exit

bb.g:                                             ; preds = %.critedge
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !71 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !75
  %i.dy = icmp eq i8 %i.dx, 18
  br i1 %i.dy, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0134 = phi ptr [ @qrfExplain.aScanExpWidth, %bb.h ], [ @qrfExplain.aExplainWidth, %bb.g ] ; 3 uses
  %.0133 = phi ptr [ @qrfExplain.aScanExpMap, %bb.h ], [ @qrfExplain.aExplainMap, %bb.g ] ; 2 uses
  %.0132 = phi i32 [ 10, %bb.h ], [ 8, %bb.g ]
  %.0131 = phi i64 [ 3, %bb.h ], [ 1, %bb.g ]
  %i.dz = load ptr, ptr %0, align 8, !tbaa !68
  %i.ea = tail call i32 @sqlite3_step(ptr noundef %i.dz) #45
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
  %i.ei = load i32, ptr %i.dr, align 8, !tbaa !70
  %.not157 = icmp eq i32 %i.ei, 0
  br i1 %.not157, label %bb.k, label %.critedge7

bb.k:                                             ; preds = %bb.j
  %i.ej = icmp eq i64 %indvars.iv260, 0
  br i1 %i.ej, label %.preheader192, label %.loopexit

.preheader192:                                    ; preds = %bb.k
  br i1 %i.ec, label %.lr.ph220, label %._crit_edge

.lr.ph220:                                        ; preds = %.preheader192, %bb.n
  %indvars.iv243 = phi i64 [ %indvars.iv.next244, %bb.n ], [ 0, %.preheader192 ] ; 4 uses
  %i.ek = load ptr, ptr %0, align 8, !tbaa !68
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.0133, i64 %indvars.iv243
  %i.em = load i32, ptr %i.el, align 4, !tbaa !53
  %i.en = tail call ptr @sqlite3_column_name(ptr noundef %i.ek, i32 noundef %i.em) #45
  %i.eo = load ptr, ptr %i.ed, align 8, !tbaa !69
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.0134, i64 %indvars.iv243
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !53
  tail call fastcc void @qrfWidthPrint(ptr noundef %i.eo, i32 noundef %i.eq, ptr noundef %i.en)
  %i.er = icmp eq i64 %indvars.iv243, %i.eh
  %i.es = load ptr, ptr %i.ed, align 8, !tbaa !69 ; 2 uses
  br i1 %i.er, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph220
  tail call void @sqlite3_str_append(ptr noundef %i.es, ptr noundef nonnull @.str.125, i32 noundef 1) #45
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph220
  tail call void @sqlite3_str_append(ptr noundef %i.es, ptr noundef nonnull @.str.230, i32 noundef 2) #45
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1 ; 2 uses
  %exitcond247.not = icmp eq i64 %indvars.iv.next244, %wide.trip.count
  br i1 %exitcond247.not, label %.lr.ph222, label %.lr.ph220, !llvm.loop !744

.lr.ph222:                                        ; preds = %bb.n, %bb.q
  %indvars.iv248 = phi i64 [ %indvars.iv.next249, %bb.q ], [ 0, %bb.n ] ; 3 uses
  %i.et = load ptr, ptr %i.ed, align 8, !tbaa !69
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.0134, i64 %indvars.iv248
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !53
  tail call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.et, ptr noundef nonnull @.str.231, i32 noundef %i.ev, i32 noundef 45) #45
  %i.ew = icmp eq i64 %indvars.iv248, %i.eh
  %i.ex = load ptr, ptr %i.ed, align 8, !tbaa !69 ; 2 uses
  br i1 %i.ew, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph222
  tail call void @sqlite3_str_append(ptr noundef %i.ex, ptr noundef nonnull @.str.125, i32 noundef 1) #45
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph222
  tail call void @sqlite3_str_append(ptr noundef %i.ex, ptr noundef nonnull @.str.230, i32 noundef 2) #45
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 2 uses
  %exitcond253.not = icmp eq i64 %indvars.iv.next249, %wide.trip.count252
  br i1 %exitcond253.not, label %.loopexit, label %.lr.ph222, !llvm.loop !745

.loopexit:                                        ; preds = %bb.q, %bb.k
  br i1 %i.ec, label %.lr.ph224, label %._crit_edge

.lr.ph224:                                        ; preds = %.loopexit
  %i.ey = icmp slt i64 %indvars.iv260, %.0140.lcssa
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.0145.lcssa, i64 %indvars.iv260
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph224, %bb.au
  %indvars.iv254 = phi i64 [ 0, %.lr.ph224 ], [ %indvars.iv.next255, %bb.au ] ; 5 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.0134, i64 %indvars.iv254
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !53
  %i.fc = load ptr, ptr %0, align 8, !tbaa !68
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.0133, i64 %indvars.iv254
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !53
  %i.ff = tail call ptr @sqlite3_column_text(ptr noundef %i.fc, i32 noundef %i.fe) #45 ; 2 uses
  %i.fg = icmp eq i64 %indvars.iv254, %i.eh       ; 2 uses
  %spec.select163 = select i1 %i.fg, i32 0, i32 %i.fb ; 2 uses
  %i.fh = icmp eq ptr %i.ff, null
  %spec.store.select = select i1 %i.fh, ptr @.str.48, ptr %i.ff ; 3 uses
  %i.fi = load i8, ptr %spec.store.select, align 1, !tbaa !52 ; 2 uses
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
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !52
  %.not.i.i = icmp eq i8 %i.fn, 91
  br i1 %.not.i.i, label %.preheader.i.i, label %qrfIsVt100.exit.thread.i

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.preheader.i.i ], [ 2, %bb.t ] ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.029.i, i64 %indvars.iv.i.i
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !52
  %i.fq = and i8 %i.fp, -16
  %or.cond.i.i = icmp eq i8 %i.fq, 48
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  br i1 %or.cond.i.i, label %.preheader.i.i, label %.critedge.i.i, !llvm.loop !1

.critedge.i.i:                                    ; preds = %.preheader.i.i, %.critedge.i.i
  %indvars.iv25.i.i = phi i64 [ %indvars.iv.next26.i.i, %.critedge.i.i ], [ %indvars.iv.i.i, %.preheader.i.i ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.029.i, i64 %indvars.iv25.i.i
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !52  ; 2 uses
  %i.ft = and i8 %i.fs, -16
  %or.cond22.i.i = icmp eq i8 %i.ft, 32
  %indvars.iv.next26.i.i = add nuw i64 %indvars.iv25.i.i, 1 ; 2 uses
  br i1 %or.cond22.i.i, label %.critedge.i.i, label %.critedge2.i.i, !llvm.loop !2

.critedge2.i.i:                                   ; preds = %.critedge.i.i
  %i.fu = add i8 %i.fs, -64
  %or.cond23.i.i = icmp ult i8 %i.fu, 63
  br i1 %or.cond23.i.i, label %bb.u, label %qrfIsVt100.exit.thread.i
end_hunk_0
begin_hunk_1_@modeSetStr:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !88
  tail call void @free(ptr noundef %i.a) #45
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !88
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #46
  %i.d = add i64 %i.c, 1                          ; 2 uses
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #51 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !88
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.e, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret void
}

declare ptr @sqlite3_libversion() local_unnamed_addr #5

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @usage() unnamed_addr #26 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !122
  %i.b = load ptr, ptr @Argv0, align 8, !tbaa !88
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.a, ptr noundef nonnull @.str.853, ptr noundef %i.b)
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !122
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.c, ptr noundef nonnull @.str.854, ptr noundef nonnull @zOptions)
  tail call void @exit(i32 noundef 0) #52
  unreachable
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @do_meta_command(ptr noundef %0, ptr noundef nonnull initializes((4752, 4760)) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %2 = alloca %struct.Mode, align 8               ; 4 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 7 uses
  %i.j = alloca [100 x i8], align 16              ; 4 uses
  %3 = alloca %struct.ShellState, align 8         ; 13 uses
  %i.k = alloca [5 x i32], align 16               ; 6 uses
  %i.l = alloca ptr, align 8                      ; 9 uses
  %i.m = alloca ptr, align 8                      ; 14 uses
  %i.n = alloca [20 x i8], align 16               ; 4 uses
  %i.o = alloca ptr, align 8                      ; 6 uses
  %i.p = alloca ptr, align 8                      ; 14 uses
  %i.q = alloca ptr, align 8                      ; 12 uses
  %i.r = alloca ptr, align 8                      ; 7 uses
  %4 = alloca %struct.ShellState, align 8         ; 9 uses
  %i.s = alloca ptr, align 8                      ; 7 uses
  %i.t = alloca ptr, align 8                      ; 11 uses
  %i.u = alloca [30 x i8], align 16               ; 6 uses
  %i.v = alloca i32, align 4                      ; 4 uses
  %5 = alloca %struct.ShellText, align 8          ; 12 uses
  %i.w = alloca ptr, align 8                      ; 12 uses
  %i.x = alloca ptr, align 8                      ; 6 uses
  %i.y = alloca ptr, align 8                      ; 13 uses
  %6 = alloca %struct.ShellText, align 8          ; 10 uses
  %7 = alloca %struct.ShellText, align 8          ; 10 uses
  %i.z = alloca ptr, align 8                      ; 7 uses
  %i.aa = alloca ptr, align 8                     ; 9 uses
  %i.ab = alloca i32, align 4                     ; 13 uses
  %i.ac = alloca i32, align 4                     ; 6 uses
  %i.ad = alloca i32, align 4                     ; 6 uses
  %i.ae = alloca i64, align 8                     ; 5 uses
  %i.af = alloca ptr, align 8                     ; 8 uses
  %i.ag = alloca ptr, align 8                     ; 5 uses
  %i.ah = alloca ptr, align 8                     ; 6 uses
  %i.ai = alloca i32, align 4                     ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4736 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !388 ; 2 uses
  %.not = icmp eq ptr %i.ak, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @sqlite3_expert_destroy(ptr noundef nonnull %i.ak)
  store ptr null, ptr %i.aj, align 8, !tbaa !388
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 4752
  store ptr %0, ptr %i.al, align 8, !tbaa !421
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4760 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !399
  tail call void @free(ptr noundef %i.an) #45
  %i.ao = tail call noalias ptr @strdup(ptr noundef %0) #45 ; 17 uses
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !399
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.d, label %shell_check_oom.exit.i

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @shell_out_of_memory()
  unreachable

shell_check_oom.exit.i:                           ; preds = %bb.c
  %i.aq = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ao) #46 ; 2 uses
  %.not127.i = icmp eq i64 %i.aq, 0
  br i1 %.not127.i, label %.critedge2.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %shell_check_oom.exit.i
  %i.ar = tail call ptr @__ctype_b_loc() #47
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !132 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i
  %.0128.i = phi i64 [ %i.aq, %.lr.ph.i ], [ %i.ba, %bb.f ] ; 5 uses
  %i.at = getelementptr i8, ptr %i.ao, i64 %.0128.i
  %i.au = getelementptr i8, ptr %i.at, i64 -1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !52  ; 2 uses
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.aw
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !98
  %i.az = and i16 %i.ay, 8192
  %.not104.i = icmp eq i16 %i.az, 0
  br i1 %.not104.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = add i64 %.0128.i, -1                    ; 2 uses
  %.not.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i, label %.critedge2.i, label %bb.e, !llvm.loop !939

.critedge.i:                                      ; preds = %bb.e
  %i.bb = icmp eq i8 %i.av, 59
  br i1 %i.bb, label %.preheader116.i.preheader, label %.critedge2.i

.preheader116.i.preheader:                        ; preds = %.critedge.i
  %.1.i4214 = add i64 %.0128.i, -1                ; 2 uses
  %.not105.i4215 = icmp eq i64 %.1.i4214, 0
  br i1 %.not105.i4215, label %.critedge2.i, label %.lr.ph4218

.preheader116.i:                                  ; preds = %.lr.ph4218
  %.1.i = add i64 %.1.i4217, -1                   ; 2 uses
  %.not105.i = icmp eq i64 %.1.i, 0
  br i1 %.not105.i, label %.critedge2.i, label %.lr.ph4218, !llvm.loop !940

.lr.ph4218:                                       ; preds = %.preheader116.i.preheader, %.preheader116.i
  %.1.i4217 = phi i64 [ %.1.i, %.preheader116.i ], [ %.1.i4214, %.preheader116.i.preheader ] ; 3 uses
  %.1.in.i4216 = phi i64 [ %.1.i4217, %.preheader116.i ], [ %.0128.i, %.preheader116.i.preheader ]
  %i.bc = getelementptr i8, ptr %i.ao, i64 %.1.in.i4216
  %i.bd = getelementptr i8, ptr %i.bc, i64 -2
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !52
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !98
  %i.bi = and i16 %i.bh, 8192
  %.not106.i = icmp eq i16 %i.bi, 0
  br i1 %.not106.i, label %..critedge2.i.loopexit_crit_edge, label %.preheader116.i, !llvm.loop !940

..critedge2.i.loopexit_crit_edge:                 ; preds = %.lr.ph4218
  br label %.critedge2.i, !llvm.loop !940

.critedge2.i:                                     ; preds = %bb.f, %.preheader116.i, %.preheader116.i.preheader, %..critedge2.i.loopexit_crit_edge, %.critedge.i, %shell_check_oom.exit.i
  %.2.i = phi i64 [ %.0128.i, %.critedge.i ], [ 0, %.preheader116.i ], [ 0, %shell_check_oom.exit.i ], [ 0, %.preheader116.i.preheader ], [ %.1.i4217, %..critedge2.i.loopexit_crit_edge ], [ 0, %bb.f ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.2.i
  store i8 0, ptr %i.bj, align 1, !tbaa !52
  tail call fastcc void @parseDotRealloc(ptr noundef nonnull %1, i32 noundef 2)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !52
  %.not107145.i = icmp eq i8 %i.bl, 0
  br i1 %.not107145.i, label %parseDotCmdArgs.exit.thread, label %.preheader.lr.ph.i

parseDotCmdArgs.exit.thread:                      ; preds = %.critedge2.i
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 4772
  store i32 0, ptr %i.bm, align 4, !tbaa !422
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 4776
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !400
  store ptr null, ptr %i.bo, align 8, !tbaa !88
  br label %bb.afr

.preheader.lr.ph.i:                               ; preds = %.critedge2.i
  %i.bp = tail call ptr @__ctype_b_loc() #47      ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 4768
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 4792 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 4776 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 4784 ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.critedge7.thread.i, %.preheader.lr.ph.i
  %indvars.iv174.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next175.i, %.critedge7.thread.i ] ; 8 uses
  %.098146.i = phi i32 [ 1, %.preheader.lr.ph.i ], [ %.6.i, %.critedge7.thread.i ]
  %i.bu = load ptr, ptr %i.bp, align 8, !tbaa !132
  %i.bv = sext i32 %.098146.i to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ %i.bv, %.preheader.i ] ; 5 uses
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1   ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.ao, i64 %indvars.iv.i
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !52  ; 3 uses
  %i.by = zext i8 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !98
  %i.cb = and i16 %i.ca, 8192
  %.not108.i = icmp eq i16 %i.cb, 0
  br i1 %.not108.i, label %bb.h, label %bb.g, !llvm.loop !941

bb.h:                                             ; preds = %bb.g
  %i.cc = getelementptr inbounds i8, ptr %i.ao, i64 %indvars.iv.i ; 3 uses
  %i.cd = trunc nsw i64 %indvars.iv.i to i32      ; 3 uses
  %i.ce = icmp eq i8 %i.bx, 0
  %i.cf = trunc i64 %indvars.iv174.i to i32       ; 3 uses
  br i1 %i.ce, label %parseDotCmdArgs.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cg = load i32, ptr %i.bq, align 8, !tbaa !423
  %i.ch = add i32 %i.cf, 2
  %i.ci = icmp sgt i32 %i.ch, %i.cg
  br i1 %i.ci, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @parseDotRealloc(ptr noundef nonnull %1, i32 noundef %i.cf)
  %.pre.i = load i8, ptr %i.cc, align 1, !tbaa !52
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cj = phi i8 [ %.pre.i, %bb.j ], [ %i.bx, %bb.i ] ; 5 uses
  switch i8 %i.cj, label %bb.p [
    i8 39, label %bb.l
    i8 34, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.ck = add nsw i32 %i.cd, 1                    ; 5 uses
  %i.cl = load ptr, ptr %i.br, align 8, !tbaa !402
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %indvars.iv174.i
  store i8 1, ptr %i.cm, align 1, !tbaa !52
  %i.cn = sext i32 %i.ck to i64                   ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %i.ao, i64 %i.cn ; 2 uses
  %i.cp = load ptr, ptr %i.bs, align 8, !tbaa !400
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv174.i ; 2 uses
  store ptr %i.co, ptr %i.cq, align 8, !tbaa !88
  %i.cr = load ptr, ptr %i.bt, align 8, !tbaa !401
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv174.i
  store i32 %i.ck, ptr %i.cs, align 4, !tbaa !53
  %i.ct = load i8, ptr %i.co, align 1, !tbaa !52  ; 3 uses
  %.not112131.i = icmp eq i8 %i.ct, 0
  %.not113132.i = icmp eq i8 %i.ct, %i.cj         ; 2 uses
  %or.cond115133.i = or i1 %.not112131.i, %.not113132.i
  br i1 %or.cond115133.i, label %.critedge4.i, label %.lr.ph135.i

.lr.ph135.i:                                      ; preds = %bb.l
  %i.cu = icmp eq i8 %i.cj, 34
  br i1 %i.cu, label %.lr.ph135.split.i, label %.lr.ph135.split.us.preheader.i

.lr.ph135.split.us.preheader.i:                   ; preds = %.lr.ph135.i
  %8 = shl i64 %indvars.iv.next.i, 32
  %9 = ashr exact i64 %8, 32
  br label %.lr.ph135.split.us.i

.lr.ph135.split.us.i:                             ; preds = %.lr.ph135.split.us.i, %.lr.ph135.split.us.preheader.i
  %indvars.iv169.i = phi i64 [ %9, %.lr.ph135.split.us.preheader.i ], [ %indvars.iv.next170.i, %.lr.ph135.split.us.i ]
  %indvars.iv.next170.i = add nsw i64 %indvars.iv169.i, 1 ; 4 uses
  %i.cv = getelementptr inbounds i8, ptr %i.ao, i64 %indvars.iv.next170.i
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !52  ; 2 uses
  %.not112.us.i = icmp eq i8 %i.cw, 0
  %.not113.us.i = icmp eq i8 %i.cw, %i.cj         ; 2 uses
  %or.cond115.us.i = or i1 %.not112.us.i, %.not113.us.i
  br i1 %or.cond115.us.i, label %.critedge4.loopexit151.i, label %.lr.ph135.split.us.i, !llvm.loop !942

.lr.ph135.split.i:                                ; preds = %.lr.ph135.i, %bb.n
  %i.cx = phi i8 [ %i.dg, %bb.n ], [ %i.ct, %.lr.ph135.i ]
  %.2100134.i = phi i32 [ %i.dd, %bb.n ], [ %i.ck, %.lr.ph135.i ] ; 3 uses
  %i.cy = icmp eq i8 %i.cx, 92
  br i1 %i.cy, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph135.split.i
  %i.cz = add nsw i32 %.2100134.i, 1              ; 2 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds i8, ptr %i.ao, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !52
  %.not114.i = icmp eq i8 %i.dc, 0
  %spec.select.i = select i1 %.not114.i, i32 %.2100134.i, i32 %i.cz
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph135.split.i
  %.3.i = phi i32 [ %.2100134.i, %.lr.ph135.split.i ], [ %spec.select.i, %bb.m ]
  %i.dd = add nsw i32 %.3.i, 1                    ; 4 uses
  %i.de = sext i32 %i.dd to i64                   ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %i.ao, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !52  ; 2 uses
  switch i8 %i.dg, label %.lr.ph135.split.i [
    i8 34, label %.loopexit4258
    i8 0, label %.loopexit4259
  ]

.critedge4.loopexit151.i:                         ; preds = %.lr.ph135.split.us.i
  %i.dh = trunc nsw i64 %indvars.iv.next170.i to i32 ; 2 uses
  br i1 %.not113.us.i, label %.loopexit4258, label %.critedge7.thread.i

.critedge4.i:                                     ; preds = %bb.l
  br i1 %.not113132.i, label %.loopexit4258, label %.loopexit4259

.loopexit4258:                                    ; preds = %bb.n, %.critedge4.i, %.critedge4.loopexit151.i
  %.2100.lcssa186.i = phi i32 [ %i.dh, %.critedge4.loopexit151.i ], [ %i.ck, %.critedge4.i ], [ %i.dd, %bb.n ]
  %.lcssa130185.i = phi i64 [ %indvars.iv.next170.i, %.critedge4.loopexit151.i ], [ %i.cn, %.critedge4.i ], [ %i.de, %bb.n ]
  %i.di = getelementptr inbounds i8, ptr %i.ao, i64 %.lcssa130185.i
  %i.dj = add nsw i32 %.2100.lcssa186.i, 1
  store i8 0, ptr %i.di, align 1, !tbaa !52
  br label %.loopexit4259

.loopexit4259:                                    ; preds = %bb.n, %.loopexit4258, %.critedge4.i
  %.4.i = phi i32 [ %i.dj, %.loopexit4258 ], [ %i.ck, %.critedge4.i ], [ %i.dd, %bb.n ] ; 2 uses
  %i.dk = icmp eq i8 %i.cj, 34
  br i1 %i.dk, label %bb.o, label %.critedge7.thread.i

bb.o:                                             ; preds = %.loopexit4259
  %i.dl = load ptr, ptr %i.cq, align 8, !tbaa !88
  tail call fastcc void @resolve_backslashes(ptr noundef %i.dl)
  br label %.critedge7.thread.i

bb.p:                                             ; preds = %bb.k
  %i.dm = load ptr, ptr %i.br, align 8, !tbaa !402
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %indvars.iv174.i
  store i8 0, ptr %i.dn, align 1, !tbaa !52
  %i.do = load ptr, ptr %i.bs, align 8, !tbaa !400
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv174.i
  store ptr %i.cc, ptr %i.dp, align 8, !tbaa !88
  %i.dq = load ptr, ptr %i.bt, align 8, !tbaa !401
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv174.i
  store i32 %i.cd, ptr %i.dr, align 4, !tbaa !53
  %i.ds = load i8, ptr %i.cc, align 1, !tbaa !52  ; 2 uses
  %.not109141.i = icmp eq i8 %i.ds, 0
  br i1 %.not109141.i, label %.critedge7.thread.i, label %.lr.ph143.i

.lr.ph143.i:                                      ; preds = %bb.p
  %i.dt = load ptr, ptr %i.bp, align 8, !tbaa !132
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.lr.ph143.i
  %indvars.iv172.i = phi i64 [ %indvars.iv.i, %.lr.ph143.i ], [ %indvars.iv.next173.i.a, %bb.r ] ; 3 uses
  %i.du = phi i8 [ %i.ds, %.lr.ph143.i ], [ %i.ea, %bb.r ]
  %i.dv = zext i8 %i.du to i64
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.dt, i64 %i.dv
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !98
  %i.dy = and i16 %i.dx, 8192
  %.not110.i = icmp eq i16 %i.dy, 0
  br i1 %.not110.i, label %bb.r, label %.critedge7.i

bb.r:                                             ; preds = %bb.q
  %indvars.iv.next173.i.a = add nsw i64 %indvars.iv172.i, 1 ; 3 uses
  %i.dz = getelementptr inbounds i8, ptr %i.ao, i64 %indvars.iv.next173.i.a
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !52  ; 2 uses
  %.not109.i = icmp eq i8 %i.ea, 0
  br i1 %.not109.i, label %.critedge7.thread.loopexit.i, label %bb.q, !llvm.loop !943

.critedge7.i:                                     ; preds = %bb.q
  %i.eb = trunc nsw i64 %indvars.iv172.i to i32
  %i.ec = getelementptr inbounds i8, ptr %i.ao, i64 %indvars.iv172.i
  %i.ed = add nsw i32 %i.eb, 1
  store i8 0, ptr %i.ec, align 1, !tbaa !52
  br label %.critedge7.thread.i

.critedge7.thread.loopexit.i:                     ; preds = %bb.r
  %i.ee = trunc nsw i64 %indvars.iv.next173.i.a to i32
  br label %.critedge7.thread.i

.critedge7.thread.i:                              ; preds = %.critedge7.thread.loopexit.i, %.critedge7.i, %bb.p, %bb.o, %.loopexit4259, %.critedge4.loopexit151.i
  %.6.i = phi i32 [ %.4.i, %.loopexit4259 ], [ %i.ed, %.critedge7.i ], [ %.4.i, %bb.o ], [ %i.cd, %bb.p ], [ %i.ee, %.critedge7.thread.loopexit.i ], [ %i.dh, %.critedge4.loopexit151.i ] ; 2 uses
  %indvars.iv.next175.i = add nuw nsw i64 %indvars.iv174.i, 1 ; 2 uses
  %i.ef = sext i32 %.6.i to i64
  %i.eg = getelementptr inbounds i8, ptr %i.ao, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !52
  %.not107.i = icmp eq i8 %i.eh, 0
  br i1 %.not107.i, label %._crit_edge.loopexit.split.loop.exit198.i, label %.preheader.i, !llvm.loop !944

._crit_edge.loopexit.split.loop.exit198.i:        ; preds = %.critedge7.thread.i
  %indvars.le.i = trunc i64 %indvars.iv.next175.i to i32
  br label %parseDotCmdArgs.exit

parseDotCmdArgs.exit:                             ; preds = %bb.h, %._crit_edge.loopexit.split.loop.exit198.i
  %.097.lcssa.i = phi i32 [ %indvars.le.i, %._crit_edge.loopexit.split.loop.exit198.i ], [ %i.cf, %bb.h ] ; 105 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 4772 ; 2 uses
  store i32 %.097.lcssa.i, ptr %i.ei, align 4, !tbaa !422
  %i.ej = load ptr, ptr %i.bs, align 8, !tbaa !400 ; 129 uses
  %i.ek = zext i32 %.097.lcssa.i to i64           ; 11 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.ek
  store ptr null, ptr %i.el, align 8, !tbaa !88
  %i.em = icmp eq i32 %.097.lcssa.i, 0
  br i1 %i.em, label %bb.afr, label %bb.s

bb.s:                                             ; preds = %parseDotCmdArgs.exit
  %i.en = load ptr, ptr %i.ej, align 8, !tbaa !88 ; 3 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %strlen30.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ep = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.en) #46
  %i.eq = tail call i64 @llvm.umin.i64(i64 %i.ep, i64 1073741823)
  %i.er = trunc nuw nsw i64 %i.eq to i32
  br label %strlen30.exit

strlen30.exit:                                    ; preds = %bb.s, %bb.t
  %.0.i = phi i32 [ %i.er, %bb.t ], [ 0, %bb.s ]  ; 48 uses
  %i.es = load i8, ptr %i.en, align 1, !tbaa !52  ; 16 uses
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !387 ; 2 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %clearTempFile.exit, label %bb.u

bb.u:                                             ; preds = %strlen30.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !392
  %.not.i2522 = icmp eq i8 %i.ex, 0
  br i1 %.not.i2522, label %bb.v, label %clearTempFile.exit

bb.v:                                             ; preds = %bb.u
  %i.ey = tail call noundef i32 @unlink(ptr noundef nonnull readonly %i.eu) #45
  %.not5.i = icmp eq i32 %i.ey, 0
  br i1 %.not5.i, label %bb.w, label %clearTempFile.exit

bb.w:                                             ; preds = %bb.v
  %i.ez = load ptr, ptr %i.et, align 8, !tbaa !387
  tail call void @sqlite3_free(ptr noundef %i.ez) #45
  store ptr null, ptr %i.et, align 8, !tbaa !387
  br label %clearTempFile.exit

clearTempFile.exit:                               ; preds = %strlen30.exit, %bb.u, %bb.v, %bb.w
  %i.fa = icmp eq i8 %i.es, 97
  br i1 %i.fa, label %bb.x, label %.critedge2434

bb.x:                                             ; preds = %clearTempFile.exit
  %i.fb = load ptr, ptr %i.ej, align 8, !tbaa !88 ; 2 uses
  %i.fc = zext nneg i32 %.0.i to i64              ; 2 uses
  %i.fd = icmp eq ptr %i.fb, null
  %spec.store.select.i = select i1 %i.fd, ptr @.str.48, ptr %i.fb ; 2 uses
  %i.fe = tail call i32 @strncmp(ptr noundef nonnull %spec.store.select.i, ptr noundef nonnull @.str.856, i64 noundef range(i64 -2147483648, 2147483648) %i.fc) #46
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.y, label %bb.af

bb.y:                                             ; preds = %bb.x
  %.not2429 = icmp eq i32 %.097.lcssa.i, 2
  br i1 %.not2429, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fg = load ptr, ptr @stderr, align 8, !tbaa !122
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.fg, ptr noundef nonnull @.str.857)
  br label %cli_puts.exit

bb.aa:                                            ; preds = %bb.y
  tail call fastcc void @open_db(ptr noundef %1, i32 noundef 0)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !88
  %i.fj = tail call fastcc i32 @booleanValue(ptr noundef %i.fi)
  %.not2430 = icmp eq i32 %i.fj, 0
  br i1 %.not2430, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fk = load ptr, ptr %1, align 8, !tbaa !389
  %i.fl = tail call i32 @sqlite3_set_authorizer(ptr noundef %i.fk, ptr noundef nonnull @shellAuth, ptr noundef nonnull %1) #45 ; 0 uses
  br label %cli_puts.exit

end_hunk_1
begin_hunk_2_@decimalFromDouble:bb.a
  %.02838 = phi i32 [ %i.r, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %.13037 = phi i64 [ %i.q, %.lr.ph ], [ %.029, %bb.b ] ; 3 uses
  %i.q = lshr exact i64 %.13037, 1                ; 2 uses
  %i.r = add nsw i32 %.02838, 1                   ; 2 uses
  %i.s = icmp slt i32 %.02838, 1074
  %i.t = icmp ne i64 %.13037, 0
  %i.u = and i64 %.13037, 2
  %i.v = icmp eq i64 %i.u, 0
  %i.w = and i1 %i.t, %i.v
  %i.x = select i1 %i.s, i1 %i.w, i1 false
  br i1 %i.x, label %.lr.ph, label %._crit_edge, !llvm.loop !1088

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.130.lcssa = phi i64 [ %.029, %bb.b ], [ %i.q, %.lr.ph ] ; 2 uses
  %.028.lcssa = phi i32 [ %i.f, %bb.b ], [ %i.r, %.lr.ph ] ; 2 uses
  %i.y = sub nsw i64 0, %.130.lcssa
  %spec.select = select i1 %i.b, i64 %.130.lcssa, i64 %i.y
  %i.z = add nsw i32 %.028.lcssa, -1075
  %i.aa = icmp sgt i32 %.028.lcssa, 2046
  br i1 %i.aa, label %decimal_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.3 = phi i64 [ %spec.select, %._crit_edge ], [ 0, %bb.a ]
  %.1 = phi i32 [ %i.z, %._crit_edge ], [ 0, %bb.a ]
  %i.ab = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 100, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.208, i64 noundef %.3) #45 ; 0 uses
  %i.ac = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #46
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = call fastcc ptr @decimalNewFromText(ptr noundef nonnull %i.a, i32 noundef %i.ad) ; 3 uses
  %i.af = call fastcc ptr @decimalPow2(i32 noundef %.1) ; 4 uses
  call fastcc void @decimalMul(ptr noundef %i.ae, ptr noundef %i.af)
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %decimal_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr i8, ptr %i.af, i64 16
  %.val.i = load ptr, ptr %i.ag, align 8, !tbaa !139
  call void @sqlite3_free(ptr noundef %.val.i) #45
  call void @sqlite3_free(ptr noundef nonnull %i.af) #45
  br label %decimal_free.exit

decimal_free.exit:                                ; preds = %bb.d, %bb.c, %._crit_edge
  %.032 = phi ptr [ null, %._crit_edge ], [ %i.ae, %bb.c ], [ %i.ae, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret ptr %.032
}

declare void @sqlite3_result_error_nomem(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc ptr @decimalPow2(i32 noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = add i32 %0, -20001
  %or.cond = icmp ult i32 %i.a, -40001
  br i1 %or.cond, label %decimal_free.exit39, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc ptr @decimalNewFromText(ptr noundef nonnull @.str.302, i32 noundef 3) ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %decimal_free.exit39, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !140
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.d, label %decimal_free.exit36

bb.d:                                             ; preds = %bb.c
  %i.f = icmp eq i32 %0, 0
  br i1 %i.f, label %decimal_free.exit39, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = icmp sgt i32 %0, 0
  %.str.304.sink = select i1 %i.g, ptr @.str.303, ptr @.str.304
  %i.h = tail call fastcc ptr @decimalNewFromText(ptr noundef nonnull %.str.304.sink, i32 noundef 3) ; 8 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %decimal_free.exit36, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !140
  %.not31 = icmp eq i8 %i.k, 0
  br i1 %.not31, label %.preheader.preheader, label %decimal_free.exit36

.preheader.preheader:                             ; preds = %bb.f
  %.024 = tail call i32 @llvm.abs.i32(i32 %0, i1 true)
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.i
  %.125 = phi i32 [ %i.n, %bb.i ], [ %.024, %.preheader.preheader ] ; 2 uses
  %i.l = and i32 %.125, 1
  %.not32 = icmp eq i32 %i.l, 0
  br i1 %.not32, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader
  tail call fastcc void @decimalMul(ptr noundef nonnull %i.b, ptr noundef nonnull %i.h)
  %i.m = load i8, ptr %i.d, align 1, !tbaa !140
  %.not33 = icmp eq i8 %i.m, 0
  br i1 %.not33, label %bb.h, label %decimal_free.exit36

bb.h:                                             ; preds = %bb.g, %.preheader
  %i.n = lshr i32 %.125, 1                        ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %decimal_free.exit39.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @decimalMul(ptr noundef nonnull %i.h, ptr noundef nonnull %i.h)
  br label %.preheader

decimal_free.exit36:                              ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  %.1.ph = phi ptr [ null, %bb.c ], [ %i.h, %bb.f ], [ null, %bb.e ], [ %i.h, %bb.g ] ; 2 uses
  %i.p = getelementptr i8, ptr %i.b, i64 16
  %.val.i35 = load ptr, ptr %i.p, align 8, !tbaa !139
  tail call void @sqlite3_free(ptr noundef %.val.i35) #45
  tail call void @sqlite3_free(ptr noundef nonnull %i.b) #45
  %.not.i37 = icmp eq ptr %.1.ph, null
  br i1 %.not.i37, label %decimal_free.exit39, label %decimal_free.exit39.sink.split

decimal_free.exit39.sink.split:                   ; preds = %bb.h, %decimal_free.exit36
  %.1.ph.sink51 = phi ptr [ %.1.ph, %decimal_free.exit36 ], [ %i.h, %bb.h ] ; 2 uses
  %.026.ph = phi ptr [ null, %decimal_free.exit36 ], [ %i.b, %bb.h ]
  %i.q = getelementptr i8, ptr %.1.ph.sink51, i64 16
  %.val.i38 = load ptr, ptr %i.q, align 8, !tbaa !139
  tail call void @sqlite3_free(ptr noundef %.val.i38) #45
  tail call void @sqlite3_free(ptr noundef nonnull %.1.ph.sink51) #45
  br label %decimal_free.exit39

decimal_free.exit39:                              ; preds = %decimal_free.exit39.sink.split, %bb.b, %bb.a, %decimal_free.exit36, %bb.d
  %.026 = phi ptr [ %i.b, %bb.d ], [ null, %bb.a ], [ null, %bb.b ], [ null, %decimal_free.exit36 ], [ %.026.ph, %decimal_free.exit39.sink.split ]
  ret ptr %.026
}

; Function Attrs: nounwind uwtable
define internal fastcc void @decimalMul(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !140
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i8, ptr %i.d, align 2, !tbaa !141
  %i.f = icmp ne i8 %i.e, 0
  %i.g = icmp eq ptr %1, null
  %or.cond = or i1 %i.g, %i.f
  br i1 %or.cond, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !140
  %.not80 = icmp eq i8 %i.i, 0
  br i1 %.not80, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.k = load i8, ptr %i.j, align 2, !tbaa !141
  %.not81 = icmp eq i8 %i.k, 0
  br i1 %.not81, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !138
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !138
  %i.q = sext i32 %i.p to i64
  %i.r = add nsw i64 %i.q, %i.n                   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 9999998
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.b, align 1, !tbaa !140
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.t = add nsw i64 %i.r, 2
  %i.u = tail call ptr @sqlite3_malloc64(i64 noundef %i.t) #45 ; 6 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.b, align 1, !tbaa !140
  br label %.critedge

bb.j:                                             ; preds = %bb.h
  %i.w = load i32, ptr %i.l, align 4, !tbaa !138
  %i.x = load i32, ptr %i.o, align 4, !tbaa !138
  %i.y = add i32 %i.w, 2
  %i.z = add i32 %i.y, %i.x
  %i.aa = sext i32 %i.z to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.u, i8 0, i64 %i.aa, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !143
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !143
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.ae, i32 %i.ac) ; 2 uses
  %i.af = load i32, ptr %i.l, align 4, !tbaa !138 ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph89, label %._crit_edge90

.lr.ph89:                                         ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %2 = add nuw i32 %i.af, 1
  %i.aj = zext nneg i32 %i.af to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph89, %._crit_edge
  %indvars.iv103 = phi i64 [ %i.aj, %.lr.ph89 ], [ %indvars.iv.next104, %._crit_edge ] ; 3 uses
  %indvars.iv = phi i32 [ %2, %.lr.ph89 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %indvars.iv.next104 = add nsw i64 %indvars.iv103, -1 ; 2 uses
  %i.ak = load i32, ptr %i.o, align 4, !tbaa !138 ; 3 uses
  %i.al = add i32 %i.ak, -1                       ; 2 uses
  %i.am = trunc i64 %indvars.iv103 to i32
  %i.an = add i32 %i.am, 2
  %i.ao = add i32 %i.an, %i.al
  %i.ap = icmp sgt i32 %i.ak, 0
  br i1 %i.ap, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !139
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv.next104
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !52
  %i.at = sext i8 %i.as to i32
  %3 = add i32 %i.ak, %indvars.iv
  %i.au = sext i32 %3 to i64
  %i.av = zext nneg i32 %i.al to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv98 = phi i64 [ %i.av, %.lr.ph ], [ %indvars.iv.next99, %bb.l ] ; 3 uses
  %indvars.iv96 = phi i64 [ %i.au, %.lr.ph ], [ %indvars.iv.next97, %bb.l ] ; 2 uses
  %.084 = phi i32 [ 0, %.lr.ph ], [ %i.bi, %bb.l ]
  %i.aw = getelementptr inbounds i8, ptr %i.u, i64 %indvars.iv96 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !52
  %i.ay = sext i8 %i.ax to i32
  %i.az = load ptr, ptr %i.ai, align 8, !tbaa !139
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv98
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !52
  %i.bc = sext i8 %i.bb to i32
  %i.bd = mul nsw i32 %i.bc, %i.at
  %i.be = add nsw i32 %.084, %i.ay
  %i.bf = add nsw i32 %i.be, %i.bd                ; 2 uses
  %i.bg = srem i32 %i.bf, 10
  %i.bh = trunc nsw i32 %i.bg to i8
  store i8 %i.bh, ptr %i.aw, align 1, !tbaa !52
  %i.bi = sdiv i32 %i.bf, 10                      ; 2 uses
  %indvars.iv.next99 = add nsw i64 %indvars.iv98, -1
  %indvars.iv.next97 = add nsw i64 %indvars.iv96, -1 ; 2 uses
  %.not116 = icmp eq i64 %indvars.iv98, 0
  br i1 %.not116, label %._crit_edge.loopexit, label %bb.l, !llvm.loop !1089

._crit_edge.loopexit:                             ; preds = %bb.l
  %i.bj = trunc nsw i64 %indvars.iv.next97 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.k
  %.069.lcssa = phi i32 [ %i.ao, %bb.k ], [ %i.bj, %._crit_edge.loopexit ]
  %.0.lcssa = phi i32 [ 0, %bb.k ], [ %i.bi, %._crit_edge.loopexit ]
  %i.bk = sext i32 %.069.lcssa to i64
  %i.bl = getelementptr inbounds i8, ptr %i.u, i64 %i.bk ; 3 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !52
  %i.bn = sext i8 %i.bm to i32
  %i.bo = add nsw i32 %.0.lcssa, %i.bn            ; 2 uses
  %i.bp = srem i32 %i.bo, 10
  %i.bq = trunc nsw i32 %i.bp to i8
  store i8 %i.bq, ptr %i.bl, align 1, !tbaa !52
  %i.br = sdiv i32 %i.bo, 10
  %i.bs = getelementptr i8, ptr %i.bl, i64 -1     ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !52
  %i.bu = trunc i32 %i.br to i8
  %i.bv = add i8 %i.bt, %i.bu
  store i8 %i.bv, ptr %i.bs, align 1, !tbaa !52
  %i.bw = icmp samesign ugt i64 %indvars.iv103, 1
  %indvars.iv.next = add i32 %indvars.iv, -1
  br i1 %i.bw, label %bb.k, label %._crit_edge90, !llvm.loop !1090

._crit_edge90:                                    ; preds = %._crit_edge, %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !139
  tail call void @sqlite3_free(ptr noundef %i.by) #45
  store ptr %i.u, ptr %i.bx, align 8, !tbaa !139
  %i.bz = load <2 x i32>, ptr %i.o, align 4, !tbaa !53
  %i.ca = load <2 x i32>, ptr %i.l, align 4, !tbaa !53
  %i.cb = add <2 x i32> %i.bz, <i32 2, i32 0>
  %i.cc = add <2 x i32> %i.cb, %i.ca              ; 3 uses
  store <2 x i32> %i.cc, ptr %i.l, align 4, !tbaa !53
  %i.cd = load i8, ptr %1, align 8, !tbaa !142
  %i.ce = load i8, ptr %0, align 8, !tbaa !142
  %i.cf = xor i8 %i.ce, %i.cd
  store i8 %i.cf, ptr %0, align 8, !tbaa !142
  %i.cg = extractelement <2 x i32> %i.cc, i64 1   ; 2 uses
  %i.ch = icmp sgt i32 %i.cg, %spec.select
  br i1 %i.ch, label %.lr.ph92, label %.critedge

.lr.ph92:                                         ; preds = %._crit_edge90
  %i.ci = extractelement <2 x i32> %i.cc, i64 0
  %i.cj = sext i32 %i.ci to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph92, %bb.n
  %indvars.iv106 = phi i64 [ %i.cj, %.lr.ph92 ], [ %indvars.iv.next107, %bb.n ] ; 2 uses
  %i.ck = phi i32 [ %i.cg, %.lr.ph92 ], [ %i.cp, %bb.n ]
  %i.cl = getelementptr i8, ptr %i.u, i64 %indvars.iv106
  %i.cm = getelementptr i8, ptr %i.cl, i64 -1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !52
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.cp = add nsw i32 %i.ck, -1                   ; 3 uses
  store i32 %i.cp, ptr %i.ab, align 8, !tbaa !143
  %indvars.iv.next107 = add nsw i64 %indvars.iv106, -1 ; 2 uses
  %i.cq = trunc nsw i64 %indvars.iv.next107 to i32
  store i32 %i.cq, ptr %i.l, align 4, !tbaa !138
  %i.cr = icmp sgt i32 %i.cp, %spec.select
  br i1 %i.cr, label %bb.m, label %.critedge, !llvm.loop !1091

.critedge:                                        ; preds = %bb.n, %bb.m, %._crit_edge90, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.i
  tail call void @sqlite3_free(ptr noundef null) #45
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @decimal_expand(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 -2147483647, -2147483648) %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !143  ; 2 uses
  %i.c = sub nsw i32 %2, %i.b                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !138
  %i.f = add i32 %i.e, %i.c                       ; 2 uses
  %i.g = sub i32 %1, %i.f                         ; 2 uses
  %i.h = icmp eq i32 %2, %i.b                     ; 2 uses
  %i.i = icmp eq i32 %1, %i.f                     ; 2 uses
  %or.cond = select i1 %i.h, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp sgt i32 %1, 9999999
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.k, align 1, !tbaa !140
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.l = add nsw i32 %1, 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !139
  %i.o = sext i32 %i.l to i64
  %i.p = tail call ptr @sqlite3_realloc64(ptr noundef %i.n, i64 noundef %i.o) #45 ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.r, align 1, !tbaa !140
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  store ptr %i.p, ptr %i.m, align 8, !tbaa !139
  br i1 %i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = sext i32 %i.g to i64                     ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 %i.s
  %i.u = load i32, ptr %i.d, align 4, !tbaa !138
  %i.v = sext i32 %i.u to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull align 1 %i.p, i64 %i.v, i1 false)
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !139
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.w, i8 0, i64 %i.s, i1 false)
  %i.x = load i32, ptr %i.d, align 4, !tbaa !138
  %i.y = add nsw i32 %i.x, %i.g
  store i32 %i.y, ptr %i.d, align 4, !tbaa !138
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br i1 %i.h, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !139
  %i.aa = load i32, ptr %i.d, align 4, !tbaa !138
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 %i.ab
  %i.ad = sext i32 %i.c to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ac, i8 0, i64 %i.ad, i1 false)
  %i.ae = load <2 x i32>, ptr %i.d, align 4, !tbaa !53
  %i.af = insertelement <2 x i32> poison, i32 %i.c, i64 0
  %i.ag = shufflevector <2 x i32> %i.af, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ah = add nsw <2 x i32> %i.ae, %i.ag
  store <2 x i32> %i.ah, ptr %i.d, align 4, !tbaa !53
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.a, %bb.e, %bb.c
  ret void
}

declare void @sqlite3_result_null(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @decimal_cmp(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #28 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load i32, ptr %i.a, align 8, !tbaa !143 ; 2 uses
  %i.b = icmp sgt i32 %.promoted, 0
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !139
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.promoted55 = load i32, ptr %i.e, align 4, !tbaa !138
  %i.f = sext i32 %.promoted55 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.f, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.g = phi i32 [ %.promoted, %.lr.ph ], [ %i.m, %bb.c ] ; 2 uses
  %i.h = getelementptr i8, ptr %i.d, i64 %indvars.iv
  %i.i = getelementptr i8, ptr %i.h, i64 -1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !52
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.l = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.l, ptr %i.e, align 4, !tbaa !138
  %i.m = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.m, ptr %i.a, align 8, !tbaa !143
  %i.n = icmp sgt i32 %i.g, 1
  br i1 %i.n, label %bb.b, label %.critedge, !llvm.loop !1092

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted56 = load i32, ptr %i.o, align 8, !tbaa !143 ; 2 uses
  %i.p = icmp sgt i32 %.promoted56, 0
  br i1 %i.p, label %.lr.ph57, label %.critedge2

.lr.ph57:                                         ; preds = %.critedge
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !139
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %.promoted59 = load i32, ptr %i.s, align 4, !tbaa !138
  %i.t = sext i32 %.promoted59 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph57, %bb.e
  %indvars.iv61 = phi i64 [ %i.t, %.lr.ph57 ], [ %indvars.iv.next62, %bb.e ] ; 2 uses
  %i.u = phi i32 [ %.promoted56, %.lr.ph57 ], [ %i.aa, %bb.e ] ; 2 uses
  %i.v = getelementptr i8, ptr %i.r, i64 %indvars.iv61
  %i.w = getelementptr i8, ptr %i.v, i64 -1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !52
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.e, label %.critedge2

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next62 = add nsw i64 %indvars.iv61, -1 ; 2 uses
  %i.z = trunc nsw i64 %indvars.iv.next62 to i32
  store i32 %i.z, ptr %i.s, align 4, !tbaa !138
  %i.aa = add nsw i32 %i.u, -1                    ; 2 uses
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !143
  %i.ab = icmp sgt i32 %i.u, 1
  br i1 %i.ab, label %bb.d, label %.critedge2, !llvm.loop !1093

.critedge2:                                       ; preds = %bb.d, %bb.e, %.critedge
  %i.ac = load i8, ptr %0, align 8, !tbaa !142    ; 2 uses
  %i.ad = load i8, ptr %1, align 8, !tbaa !142
  %.not = icmp eq i8 %i.ac, %i.ad
  %.not48 = icmp eq i8 %i.ac, 0                   ; 3 uses
end_hunk_2
