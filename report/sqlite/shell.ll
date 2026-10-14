Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/shell?download=true
inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 119
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_format_query_result:bb.a
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
  %indvars.iv240 = phi i64 [ 0, %.lr.ph212 ], [ %indvars.iv.next241, %qrfStringInArray.exit180.thread ] ; 19 uses
  %.0142210 = phi i64 [ 0, %.lr.ph212 ], [ %.1143, %qrfStringInArray.exit180.thread ] ; 3 uses
  %.0145209 = phi ptr [ null, %.lr.ph212 ], [ %.1146, %qrfStringInArray.exit180.thread ] ; 3 uses
  %.0148208 = phi ptr [ null, %.lr.ph212 ], [ %.1149, %qrfStringInArray.exit180.thread ] ; 3 uses
  %i.e = trunc i64 %indvars.iv240 to i32
  %i.f = add i32 %i.e, 1                          ; 2 uses
  %i.g = trunc i64 %indvars.iv240 to i32
  %i.h = add i32 %i.g, 1
  %i.i = add i64 %indvars.iv240, 1                ; 2 uses
  %i.j = trunc i64 %i.i to i32
  %i.k = trunc i64 %indvars.iv240 to i32
  %i.l = add i32 %i.k, 1
  %i.m = load i32, ptr %i.d, align 8, !tbaa !70
  %.not = icmp eq i32 %i.m, 0
  %i.n = trunc nuw nsw i64 %indvars.iv240 to i32  ; 3 uses
  br i1 %.not, label %bb.c, label %.critedge.loopexit

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %0, align 8, !tbaa !68
  %i.p = tail call i32 @sqlite3_column_int(ptr noundef %i.o, i32 noundef 0) #45 ; 8 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !68
  %i.r = tail call ptr @sqlite3_column_text(ptr noundef %i.q, i32 noundef 1) #45 ; 13 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !68
  %i.t = tail call i32 @sqlite3_column_int(ptr noundef %i.s, i32 noundef 2) #45
  %i.u = load ptr, ptr %0, align 8, !tbaa !68
  %i.v = tail call i32 @sqlite3_column_int(ptr noundef %i.u, i32 noundef 3) #45 ; 8 uses
  %i.w = sub nsw i32 %i.n, %i.p
  %i.x = add nsw i32 %i.v, %i.w                   ; 3 uses
  %.not158 = icmp sgt i64 %.0142210, %indvars.iv240
  br i1 %.not158, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = add nsw i64 %.0142210, 100               ; 2 uses
  %i.z = shl i64 %i.y, 2                          ; 2 uses
  %i.aa = tail call ptr @sqlite3_realloc64(ptr noundef %.0145209, i64 noundef %i.z) #45 ; 3 uses
  %i.ab = tail call ptr @sqlite3_realloc64(ptr noundef %.0148208, i64 noundef %i.z) #45 ; 3 uses
  %i.ac = icmp eq ptr %i.aa, null
  %i.ad = icmp eq ptr %i.ab, null
  %or.cond = select i1 %i.ac, i1 true, i1 %i.ad
  br i1 %or.cond, label %.critedge162, label %bb.e

.critedge162:                                     ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %0, i32 noundef 7, ptr noundef nonnull @.str.56)
  tail call void @sqlite3_free(ptr noundef %i.aa) #45
  br label %qrfWrite.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1149 = phi ptr [ %i.ab, %bb.d ], [ %.0148208, %bb.c ] ; 5 uses
  %.1146 = phi ptr [ %i.aa, %bb.d ], [ %.0145209, %bb.c ] ; 8 uses
  %.1143 = phi i64 [ %i.y, %bb.d ], [ %.0142210, %bb.c ]
  %i.ae = icmp eq ptr %i.r, null
  br i1 %i.ae, label %qrfStringInArray.exit172.thread.thread191, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.af = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(6) @.str.224) #46
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %.preheader.i165, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.preheader
  %i.ah = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(7) @.str.225) #46
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.preheader.i165, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.aj = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(7) @.str.226) #46
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %.preheader.i165, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.al = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(11) @.str.227) #46
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.preheader.i165, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %.lr.ph.i.3
  %i.an = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(7) @.str.228) #46
  %i.ao = icmp eq i32 %i.an, 0
  %spec.select278 = zext i1 %i.ao to i32
  br label %.preheader.i165

qrfStringInArray.exit172.thread.thread191:        ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.1149, i64 %indvars.iv240
  store i32 0, ptr %i.ap, align 4, !tbaa !53
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.1146, i64 %indvars.iv240
  store i32 0, ptr %i.aq, align 4, !tbaa !53
  br label %qrfStringInArray.exit180.thread

.preheader.i165:                                  ; preds = %.lr.ph.i.4, %.lr.ph.i.3, %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.i.preheader
  %.07.i.ph = phi i32 [ 1, %.lr.ph.i.3 ], [ 1, %.lr.ph.i.preheader ], [ 1, %.lr.ph.i.1 ], [ %spec.select278, %.lr.ph.i.4 ], [ 1, %.lr.ph.i.2 ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.1149, i64 %indvars.iv240
  store i32 %.07.i.ph, ptr %i.ar, align 4, !tbaa !53
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.1146, i64 %indvars.iv240
  store i32 0, ptr %i.as, align 4, !tbaa !53
  %i.at = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(5) @.str.218) #46
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %qrfStringInArray.exit172, label %.lr.ph.i167.1

.lr.ph.i167.1:                                    ; preds = %.preheader.i165
  %i.av = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(5) @.str.219) #46
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %qrfStringInArray.exit172, label %.lr.ph.i167.2

.lr.ph.i167.2:                                    ; preds = %.lr.ph.i167.1
  %i.ax = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(6) @.str.220) #46
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %qrfStringInArray.exit172, label %.lr.ph.i167.3

.lr.ph.i167.3:                                    ; preds = %.lr.ph.i167.2
  %i.az = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(6) @.str.221) #46
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %qrfStringInArray.exit172, label %.lr.ph.i167.4

.lr.ph.i167.4:                                    ; preds = %.lr.ph.i167.3
  %i.bb = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(11) @.str.222) #46
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %qrfStringInArray.exit172, label %.lr.ph.i167.5

.lr.ph.i167.5:                                    ; preds = %.lr.ph.i167.4
  %i.bd = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(7) @.str.223) #46
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %qrfStringInArray.exit172, label %.lr.ph.i175

qrfStringInArray.exit172:                         ; preds = %.lr.ph.i167.5, %.lr.ph.i167.4, %.lr.ph.i167.3, %.lr.ph.i167.2, %.lr.ph.i167.1, %.preheader.i165
  %i.bf = icmp sgt i32 %i.x, 0
  %i.bg = sext i32 %i.x to i64
  %i.bh = icmp sgt i64 %indvars.iv240, %i.bg
  %or.cond229 = select i1 %i.bf, i1 %i.bh, i1 false
  br i1 %or.cond229, label %.lr.ph.preheader, label %.lr.ph.i175

.lr.ph.preheader:                                 ; preds = %qrfStringInArray.exit172
  %i.bi = add i32 %i.v, %i.n
  %i.bj = sub i32 %i.bi, %i.p
  %i.bk = zext i32 %i.bj to i64                   ; 4 uses
  %i.bl = add i32 %i.v, %i.f
  %i.bm = sub i32 %i.bl, %i.p
  %i.bn = sext i32 %i.bm to i64
  %i.bo = tail call i64 @llvm.smax.i64(i64 %indvars.iv240, i64 %i.bn)
  %1 = add i32 %i.v, %i.f
  %2 = sub i32 %1, %i.p
  %3 = sext i32 %2 to i64
  %i.bp = add i64 %i.bo, 1
  %i.bq = sub i64 %i.bp, %3                       ; 3 uses
  %min.iters.check286 = icmp ult i64 %i.bq, 16
  br i1 %min.iters.check286, label %.lr.ph.preheader300, label %vector.scevcheck284

vector.scevcheck284:                              ; preds = %.lr.ph.preheader
  %i.br = add i32 %i.v, %i.h
  %i.bs = sub i32 %i.br, %i.p                     ; 3 uses
  %i.bt = sext i32 %i.bs to i64                   ; 2 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %indvars.iv240, i64 %i.bt)
  %i.bu = sub i64 %smax, %i.bt                    ; 2 uses
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = add i32 %i.bs, %i.bv
  %i.bx = icmp slt i32 %i.bw, %i.bs
  %i.by = icmp ugt i64 %i.bu, 4294967295
  %i.bz = or i1 %i.bx, %i.by
  br i1 %i.bz, label %.lr.ph.preheader300, label %vector.ph287

vector.ph287:                                     ; preds = %vector.scevcheck284
  %n.vec288 = and i64 %i.bq, -8                   ; 3 uses
  %i.ca = add i64 %n.vec288, %i.bk
  %invariant.gep = getelementptr [4 x i8], ptr %.1146, i64 %i.bk
  br label %vector.body289

vector.body289:                                   ; preds = %vector.body289, %vector.ph287
  %index290 = phi i64 [ 0, %vector.ph287 ], [ %index.next293, %vector.body289 ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index290 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load291 = load <4 x i32>, ptr %gep, align 4, !tbaa !53
  %wide.load292 = load <4 x i32>, ptr %i.cb, align 4, !tbaa !53
  %i.cc = add nsw <4 x i32> %wide.load291, splat (i32 2)
  %i.cd = add nsw <4 x i32> %wide.load292, splat (i32 2)
  store <4 x i32> %i.cc, ptr %gep, align 4, !tbaa !53
  store <4 x i32> %i.cd, ptr %i.cb, align 4, !tbaa !53
  %index.next293 = add nuw i64 %index290, 8       ; 2 uses
  %i.ce = icmp eq i64 %index.next293, %n.vec288
  br i1 %i.ce, label %middle.block294, label %vector.body289, !llvm.loop !739

middle.block294:                                  ; preds = %vector.body289
  %cmp.n295 = icmp eq i64 %i.bq, %n.vec288
  br i1 %cmp.n295, label %.lr.ph.i175, label %.lr.ph.preheader300

.lr.ph.preheader300:                              ; preds = %vector.scevcheck284, %.lr.ph.preheader, %middle.block294
  %indvars.iv.ph = phi i64 [ %i.bk, %vector.scevcheck284 ], [ %i.bk, %.lr.ph.preheader ], [ %i.ca, %middle.block294 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader300, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader300 ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.1146, i64 %indvars.iv ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !53
  %i.ch = add nsw i32 %i.cg, 2
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ci = shl i64 %indvars.iv.next, 32
  %i.cj = ashr exact i64 %i.ci, 32
  %i.ck = icmp slt i64 %i.cj, %indvars.iv240
  br i1 %i.ck, label %.lr.ph, label %.lr.ph.i175, !llvm.loop !740

.lr.ph.i175:                                      ; preds = %.lr.ph, %middle.block294, %.lr.ph.i167.5, %qrfStringInArray.exit172
  %i.cl = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(5) @.str.229) #46
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %qrfStringInArray.exit180, label %qrfStringInArray.exit180.thread

qrfStringInArray.exit180:                         ; preds = %.lr.ph.i175
  %i.cn = sext i32 %i.x to i64                    ; 2 uses
  %i.co = icmp sgt i64 %indvars.iv240, %i.cn
  br i1 %i.co, label %bb.f, label %qrfStringInArray.exit180.thread

bb.f:                                             ; preds = %qrfStringInArray.exit180
  %i.cp = getelementptr inbounds [4 x i8], ptr %.1149, i64 %i.cn
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !53
  %i.cr = icmp ne i32 %i.cq, 0
  %i.cs = icmp ne i32 %i.t, 0
  %or.cond5 = select i1 %i.cr, i1 true, i1 %i.cs
  br i1 %or.cond5, label %.lr.ph207.preheader, label %qrfStringInArray.exit180.thread

.lr.ph207.preheader:                              ; preds = %bb.f
  %i.ct = add i32 %i.v, %i.n
  %i.cu = sub i32 %i.ct, %i.p
  %i.cv = sext i32 %i.cu to i64                   ; 4 uses
  %i.cw = add i32 %i.v, %i.j
  %i.cx = sub i32 %i.cw, %i.p
  %i.cy = zext i32 %i.cx to i64
  %i.cz = sub i64 %i.i, %i.cy                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.cz, 12
  br i1 %min.iters.check, label %.lr.ph207.preheader299, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph207.preheader
  %i.da = add i32 %i.v, %i.l
  %i.db = sub i32 %i.da, %i.p                     ; 2 uses
  %i.dc = zext i32 %i.db to i64
  %i.dd = sub i64 %indvars.iv240, %i.dc           ; 2 uses
  %i.de = trunc i64 %i.dd to i32
  %i.df = xor i32 %i.db, -1
  %i.dg = icmp ult i32 %i.df, %i.de
  %i.dh = icmp ugt i64 %i.dd, 4294967295
  %i.di = or i1 %i.dg, %i.dh
  br i1 %i.di, label %.lr.ph207.preheader299, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.cz, -8                      ; 3 uses
  %i.dj = add i64 %n.vec, %i.cv
  %invariant.gep307 = getelementptr [4 x i8], ptr %.1146, i64 %i.cv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep308 = getelementptr [4 x i8], ptr %invariant.gep307, i64 %index ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %gep308, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %gep308, align 4, !tbaa !53
  %wide.load283 = load <4 x i32>, ptr %i.dk, align 4, !tbaa !53
  %i.dl = add nsw <4 x i32> %wide.load, splat (i32 2)
  %i.dm = add nsw <4 x i32> %wide.load283, splat (i32 2)
  store <4 x i32> %i.dl, ptr %gep308, align 4, !tbaa !53
  store <4 x i32> %i.dm, ptr %i.dk, align 4, !tbaa !53
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !741

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cz, %n.vec
  br i1 %cmp.n, label %qrfStringInArray.exit180.thread, label %.lr.ph207.preheader299

.lr.ph207.preheader299:                           ; preds = %vector.scevcheck, %.lr.ph207.preheader, %middle.block
  %indvars.iv237.ph = phi i64 [ %i.cv, %vector.scevcheck ], [ %i.cv, %.lr.ph207.preheader ], [ %i.dj, %middle.block ]
  br label %.lr.ph207

.lr.ph207:                                        ; preds = %.lr.ph207.preheader299, %.lr.ph207
  %indvars.iv237 = phi i64 [ %indvars.iv.next238, %.lr.ph207 ], [ %indvars.iv237.ph, %.lr.ph207.preheader299 ] ; 2 uses
  %i.do = getelementptr inbounds [4 x i8], ptr %.1146, i64 %indvars.iv237 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !53
  %i.dq = add nsw i32 %i.dp, 2
  store i32 %i.dq, ptr %i.do, align 4, !tbaa !53
  %indvars.iv.next238 = add nsw i64 %indvars.iv237, 1 ; 2 uses
  %i.dr = and i64 %indvars.iv.next238, 4294967295
  %exitcond.not = icmp eq i64 %i.dr, %indvars.iv240
  br i1 %exitcond.not, label %qrfStringInArray.exit180.thread, label %.lr.ph207, !llvm.loop !742

qrfStringInArray.exit180.thread:                  ; preds = %.lr.ph207, %middle.block, %.lr.ph.i175, %qrfStringInArray.exit172.thread.thread191, %bb.f, %qrfStringInArray.exit180
  %indvars.iv.next241 = add nuw i64 %indvars.iv240, 1 ; 2 uses
  %i.ds = load ptr, ptr %0, align 8, !tbaa !68
  %i.dt = tail call i32 @sqlite3_step(ptr noundef %i.ds) #45
  %i.du = icmp eq i32 %i.dt, 100
  br i1 %i.du, label %bb.b, label %.critedge.loopexit, !llvm.loop !743

.critedge.loopexit:                               ; preds = %qrfStringInArray.exit180.thread, %bb.b
  %.0148.lcssa.ph = phi ptr [ %.0148208, %bb.b ], [ %.1149, %qrfStringInArray.exit180.thread ]
  %.0145.lcssa.ph = phi ptr [ %.0145209, %bb.b ], [ %.1146, %qrfStringInArray.exit180.thread ]
  %.0140.lcssa.ph = phi i64 [ %indvars.iv240, %bb.b ], [ %indvars.iv.next241, %qrfStringInArray.exit180.thread ]
  %sext = shl i64 %.0140.lcssa.ph, 32
  %i.dv = ashr exact i64 %sext, 32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %.0148.lcssa = phi ptr [ null, %bb.a ], [ %.0148.lcssa.ph, %.critedge.loopexit ]
  %.0145.lcssa = phi ptr [ null, %bb.a ], [ %.0145.lcssa.ph, %.critedge.loopexit ] ; 7 uses
  %.0140.lcssa = phi i64 [ 0, %bb.a ], [ %i.dv, %.critedge.loopexit ]
  tail call void @sqlite3_free(ptr noundef %.0148.lcssa) #45
  %i.dw = load ptr, ptr %0, align 8, !tbaa !68
  %i.dx = tail call i32 @sqlite3_reset(ptr noundef %i.dw) #45 ; 0 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !70
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.g, label %qrfWrite.exit

bb.g:                                             ; preds = %.critedge
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !71 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !75
  %i.ef = icmp eq i8 %i.ee, 18
  br i1 %i.ef, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0134 = phi ptr [ @qrfExplain.aScanExpWidth, %bb.h ], [ @qrfExplain.aExplainWidth, %bb.g ] ; 3 uses
  %.0133 = phi ptr [ @qrfExplain.aScanExpMap, %bb.h ], [ @qrfExplain.aExplainMap, %bb.g ] ; 2 uses
  %.0132 = phi i32 [ 10, %bb.h ], [ 8, %bb.g ]
  %.0131 = phi i64 [ 3, %bb.h ], [ 1, %bb.g ]
  %i.eg = load ptr, ptr %0, align 8, !tbaa !68
  %i.eh = tail call i32 @sqlite3_step(ptr noundef %i.eg) #45
  %i.ei = icmp eq i32 %i.eh, 100
  br i1 %i.ei, label %.lr.ph227, label %.critedge7

.lr.ph227:                                        ; preds = %bb.i
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.ec, i32 %.0132) ; 4 uses
  %i.ej = icmp sgt i32 %i.ec, 0                   ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.el = add nsw i32 %spec.select, -1
  %i.em = icmp ne ptr %.0145.lcssa, null
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.eo = zext i32 %i.el to i64                   ; 3 uses
  %wide.trip.count = zext nneg i32 %spec.select to i64
  %wide.trip.count252 = zext nneg i32 %spec.select to i64
  %wide.trip.count258 = zext nneg i32 %spec.select to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph227, %._crit_edge
  %indvars.iv260 = phi i64 [ 0, %.lr.ph227 ], [ %indvars.iv.next261, %._crit_edge ] ; 4 uses
  %i.ep = load i32, ptr %i.dy, align 8, !tbaa !70
end_hunk_0
