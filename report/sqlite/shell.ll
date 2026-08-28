Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/shell?download=true
inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 119
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_format_query_result:bb.a
  %i.anl = load ptr, ptr %i.ang, align 8, !tbaa !16
  %i.anm = getelementptr inbounds nuw [8 x i8], ptr %i.anl, i64 %indvars.iv.i43
  %i.ann = load ptr, ptr %i.anm, align 8, !tbaa !66
  call void @sqlite3_free(ptr noundef %i.ann) #45
  %indvars.iv.next.i44 = add nuw nsw i64 %indvars.iv.i43, 1 ; 2 uses
  %i.ano = load i32, ptr %i.ani, align 4, !tbaa !40
  %i.anp = sext i32 %i.ano to i64
  %i.anq = icmp slt i64 %indvars.iv.next.i44, %i.anp
  br i1 %i.anq, label %.lr.ph.i42, label %._crit_edge.loopexit.i, !llvm.loop !133

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i42
  %.pre.i45 = load ptr, ptr %i.ang, align 8, !tbaa !16
  br label %._crit_edge.i41

._crit_edge.i41:                                  ; preds = %._crit_edge.loopexit.i, %.preheader.i40
  %i.anr = phi ptr [ %.pre.i45, %._crit_edge.loopexit.i ], [ %i.anh, %.preheader.i40 ]
  call void @sqlite3_free(ptr noundef %i.anr) #45
  br label %bb.jf

bb.jd:                                            ; preds = %qrfResetStmt.exit, %qrfResetStmt.exit
  call fastcc void @qrfEqpRender(ptr noundef nonnull %4)
  br label %bb.jf

bb.je:                                            ; preds = %qrfResetStmt.exit
  call fastcc void @qrfEqpRender(ptr noundef nonnull %4)
  br label %bb.jf

bb.jf:                                            ; preds = %bb.je, %bb.jd, %._crit_edge.i41, %bb.jc, %bb.jb, %bb.ja, %bb.iz, %bb.iy, %bb.ix, %bb.iw, %bb.iv, %qrfResetStmt.exit
  %i.ans = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  %i.ant = load ptr, ptr %i.ans, align 8, !tbaa !107
  %.not.i.i34 = icmp eq ptr %i.ant, null
  br i1 %.not.i.i34, label %qrfWrite.exit.i35, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.anu = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.anv = load ptr, ptr %i.anu, align 8, !tbaa !38
  %i.anw = call i32 @sqlite3_str_length(ptr noundef %i.anv) #45 ; 3 uses
  %i.anx = icmp sgt i32 %i.anw, 0
  br i1 %i.anx, label %bb.jh, label %qrfWrite.exit.i35

bb.jh:                                            ; preds = %bb.jg
  %i.any = load ptr, ptr %i.ans, align 8, !tbaa !107
  %i.anz = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.aoa = load ptr, ptr %i.anz, align 8, !tbaa !108
  %i.aob = load ptr, ptr %i.anu, align 8, !tbaa !38
  %i.aoc = call ptr @sqlite3_str_value(ptr noundef %i.aob) #45
  %i.aod = zext nneg i32 %i.anw to i64
  %i.aoe = call i32 %i.any(ptr noundef %i.aoa, ptr noundef %i.aoc, i64 noundef %i.aod) #45, !inline_history !134 ; 2 uses
  %i.aof = load ptr, ptr %i.anu, align 8, !tbaa !38
  call void @sqlite3_str_reset(ptr noundef %i.aof) #45
  %.not11.i.i38 = icmp eq i32 %i.aoe, 0
  br i1 %.not11.i.i38, label %qrfWrite.exit.i35, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef %i.aoe, ptr noundef nonnull @.str.217, i32 noundef %i.anw)
  br label %qrfWrite.exit.i35

qrfWrite.exit.i35:                                ; preds = %bb.ji, %bb.jh, %bb.jg, %bb.jf
  %i.aog = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  %i.aoh = load ptr, ptr %i.aog, align 8, !tbaa !38 ; 2 uses
  %.not.i65.i = icmp eq ptr %i.aoh, null
  br i1 %.not.i65.i, label %qrfStrErr.exit.i37, label %bb.jj

bb.jj:                                            ; preds = %qrfWrite.exit.i35
  %i.aoi = call i32 @sqlite3_str_errcode(ptr noundef nonnull %i.aoh) #45 ; 3 uses
  %.not6.i.i36 = icmp eq i32 %i.aoi, 0
  br i1 %.not6.i.i36, label %qrfStrErr.exit.i37, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.aoj = call ptr @sqlite3_errstr(i32 noundef %i.aoi) #45
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef %i.aoi, ptr noundef %i.aoj)
  br label %qrfStrErr.exit.i37

qrfStrErr.exit.i37:                               ; preds = %bb.jk, %bb.jj, %qrfWrite.exit.i35
  %i.aok = getelementptr inbounds nuw i8, ptr %4, i64 216 ; 5 uses
  %i.aol = load ptr, ptr %i.aok, align 8, !tbaa !135 ; 2 uses
  %.not60.i = icmp eq ptr %i.aol, null
  br i1 %.not60.i, label %bb.jr, label %bb.jl

bb.jl:                                            ; preds = %qrfStrErr.exit.i37
  %i.aom = load ptr, ptr %i.aol, align 8, !tbaa !66 ; 2 uses
  %.not62.i = icmp eq ptr %i.aom, null
  br i1 %.not62.i, label %bb.jq, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.aon = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aom) #46 ; 2 uses
  %i.aoo = load ptr, ptr %i.aog, align 8, !tbaa !38
  %i.aop = call i32 @sqlite3_str_length(ptr noundef %i.aoo) #45
  %i.aoq = sext i32 %i.aop to i64
  %i.aor = load ptr, ptr %i.aok, align 8, !tbaa !135
  %i.aos = load ptr, ptr %i.aor, align 8, !tbaa !66
  %i.aot = add nsw i64 %i.aoq, 1                  ; 2 uses
  %i.aou = add i64 %i.aot, %i.aon
  %i.aov = call ptr @sqlite3_realloc64(ptr noundef %i.aos, i64 noundef %i.aou) #45 ; 3 uses
  %i.aow = icmp eq ptr %i.aov, null
  %i.aox = load ptr, ptr %i.aok, align 8, !tbaa !135 ; 2 uses
  br i1 %i.aow, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %bb.jm
  %i.aoy = load ptr, ptr %i.aox, align 8, !tbaa !66
  call void @sqlite3_free(ptr noundef %i.aoy) #45
  %i.aoz = load ptr, ptr %i.aok, align 8, !tbaa !135
  store ptr null, ptr %i.aoz, align 8, !tbaa !66
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef 7, ptr noundef nonnull @.str.56)
  br label %bb.jp

bb.jo:                                            ; preds = %bb.jm
  store ptr %i.aov, ptr %i.aox, align 8, !tbaa !66
  %i.apa = getelementptr inbounds i8, ptr %i.aov, i64 %i.aon
  %i.apb = load ptr, ptr %i.aog, align 8, !tbaa !38
  %i.apc = call ptr @sqlite3_str_value(ptr noundef %i.apb) #45
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.apa, ptr align 1 %i.apc, i64 %i.aot, i1 false)
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jo, %bb.jn
  %i.apd = load ptr, ptr %i.aog, align 8, !tbaa !38
  %i.ape = call ptr @sqlite3_str_finish(ptr noundef %i.apd) #45
  call void @sqlite3_free(ptr noundef %i.ape) #45
  br label %bb.jt

bb.jq:                                            ; preds = %bb.jl
  %i.apf = load ptr, ptr %i.aog, align 8, !tbaa !38
  %i.apg = call ptr @sqlite3_str_finish(ptr noundef %i.apf) #45
  %i.aph = load ptr, ptr %i.aok, align 8, !tbaa !135
  store ptr %i.apg, ptr %i.aph, align 8, !tbaa !66
  br label %bb.jt

bb.jr:                                            ; preds = %qrfStrErr.exit.i37
  %i.api = load ptr, ptr %i.aog, align 8, !tbaa !38 ; 2 uses
  %.not61.i = icmp eq ptr %i.api, null
  br i1 %.not61.i, label %bb.jt, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.apj = call ptr @sqlite3_str_finish(ptr noundef nonnull %i.api) #45
  call void @sqlite3_free(ptr noundef %i.apj) #45
  br label %bb.jt

bb.jt:                                            ; preds = %bb.js, %bb.jr, %bb.jq, %bb.jp
  %i.apk = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.apl = load i32, ptr %i.apk, align 8, !tbaa !55 ; 2 uses
  %i.apm = icmp sgt i32 %i.apl, 0
  br i1 %i.apm, label %bb.ju, label %bb.jv

bb.ju:                                            ; preds = %bb.jt
  %i.apn = load ptr, ptr %4, align 8, !tbaa !36
  %i.apo = add nsw i32 %i.apl, -1
  %i.app = call i32 @sqlite3_stmt_explain(ptr noundef %i.apn, i32 noundef %i.apo) #45 ; 0 uses
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %bb.jt
  %i.apq = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.apr = load ptr, ptr %i.apq, align 8, !tbaa !136 ; 2 uses
  %.not63.i = icmp eq ptr %i.apr, null
  br i1 %.not63.i, label %bb.jx, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  call void @sqlite3_free(ptr noundef nonnull %i.apr) #45
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %bb.jv
  %i.aps = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.apt = load ptr, ptr %i.aps, align 8, !tbaa !137 ; 2 uses
  %.not64.i = icmp eq ptr %i.apt, null
  br i1 %.not64.i, label %qrfFinalize.exit, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.apu = call ptr @sqlite3_db_handle(ptr noundef nonnull %i.apt) #45
  %i.apv = load ptr, ptr %i.aps, align 8, !tbaa !137
  %i.apw = call i32 @sqlite3_finalize(ptr noundef %i.apv) #45 ; 0 uses
  %i.apx = call i32 @sqlite3_close(ptr noundef %i.apu) #45 ; 0 uses
  br label %qrfFinalize.exit

qrfFinalize.exit:                                 ; preds = %bb.jx, %bb.jy
  %i.apy = load i32, ptr %i.amh, align 8, !tbaa !39
  br label %bb.jz

bb.jz:                                            ; preds = %bb.b, %bb.a, %qrfFinalize.exit
  %.0 = phi i32 [ %i.apy, %qrfFinalize.exit ], [ 0, %bb.a ], [ 21, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #45
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @qrfExplain(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36
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
  %i.m = load i32, ptr %i.d, align 8, !tbaa !39
  %.not = icmp eq i32 %i.m, 0
  %i.n = trunc nuw nsw i64 %indvars.iv240 to i32  ; 3 uses
  br i1 %.not, label %bb.c, label %.critedge.loopexit

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %0, align 8, !tbaa !36
  %i.p = tail call i32 @sqlite3_column_int(ptr noundef %i.o, i32 noundef 0) #45 ; 8 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !36
  %i.r = tail call ptr @sqlite3_column_text(ptr noundef %i.q, i32 noundef 1) #45 ; 13 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !36
  %i.t = tail call i32 @sqlite3_column_int(ptr noundef %i.s, i32 noundef 2) #45
  %i.u = load ptr, ptr %0, align 8, !tbaa !36
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
  %spec.select279 = zext i1 %i.ao to i32
  br label %.preheader.i165

qrfStringInArray.exit172.thread.thread191:        ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.1149, i64 %indvars.iv240
  store i32 0, ptr %i.ap, align 4, !tbaa !17
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.1146, i64 %indvars.iv240
  store i32 0, ptr %i.aq, align 4, !tbaa !17
  br label %qrfStringInArray.exit180.thread

.preheader.i165:                                  ; preds = %.lr.ph.i.4, %.lr.ph.i.3, %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.i.preheader
  %.07.i.ph = phi i32 [ 1, %.lr.ph.i.3 ], [ 1, %.lr.ph.i.preheader ], [ 1, %.lr.ph.i.1 ], [ %spec.select279, %.lr.ph.i.4 ], [ 1, %.lr.ph.i.2 ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.1149, i64 %indvars.iv240
  store i32 %.07.i.ph, ptr %i.ar, align 4, !tbaa !17
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.1146, i64 %indvars.iv240
  store i32 0, ptr %i.as, align 4, !tbaa !17
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
  %smax286 = tail call i64 @llvm.smax.i64(i64 %indvars.iv240, i64 %i.bn)
  %1 = add i32 %i.v, %i.f
  %2 = sub i32 %1, %i.p
  %3 = sext i32 %2 to i64
  %i.bo = add i64 %smax286, 1
  %i.bp = sub i64 %i.bo, %3                       ; 3 uses
  %min.iters.check288 = icmp ult i64 %i.bp, 16
  br i1 %min.iters.check288, label %.lr.ph.preheader302, label %vector.scevcheck285

vector.scevcheck285:                              ; preds = %.lr.ph.preheader
  %i.bq = add i32 %i.v, %i.h
  %i.br = sub i32 %i.bq, %i.p                     ; 3 uses
  %i.bs = sext i32 %i.br to i64                   ; 2 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %indvars.iv240, i64 %i.bs)
  %i.bt = sub i64 %smax, %i.bs                    ; 2 uses
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = add i32 %i.br, %i.bu
  %i.bw = icmp slt i32 %i.bv, %i.br
  %i.bx = icmp ugt i64 %i.bt, 4294967295
  %i.by = or i1 %i.bw, %i.bx
  br i1 %i.by, label %.lr.ph.preheader302, label %vector.ph289

vector.ph289:                                     ; preds = %vector.scevcheck285
  %n.vec290 = and i64 %i.bp, -8                   ; 3 uses
  %i.bz = add i64 %n.vec290, %i.bk
  %invariant.gep = getelementptr [4 x i8], ptr %.1146, i64 %i.bk
  br label %vector.body291

vector.body291:                                   ; preds = %vector.body291, %vector.ph289
  %index292 = phi i64 [ 0, %vector.ph289 ], [ %index.next295, %vector.body291 ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index292 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load293.a = load <4 x i32>, ptr %gep, align 4, !tbaa !17
  %wide.load294 = load <4 x i32>, ptr %i.ca, align 4, !tbaa !17
  %i.cb = add nsw <4 x i32> %wide.load293.a, splat (i32 2)
  %i.cc = add nsw <4 x i32> %wide.load294, splat (i32 2)
  store <4 x i32> %i.cb, ptr %gep, align 4, !tbaa !17
  store <4 x i32> %i.cc, ptr %i.ca, align 4, !tbaa !17
  %index.next295 = add nuw i64 %index292, 8       ; 2 uses
  %i.cd = icmp eq i64 %index.next295, %n.vec290
  br i1 %i.cd, label %middle.block296, label %vector.body291, !llvm.loop !138

middle.block296:                                  ; preds = %vector.body291
  %cmp.n297 = icmp eq i64 %i.bp, %n.vec290
  br i1 %cmp.n297, label %.lr.ph.i175, label %.lr.ph.preheader302

.lr.ph.preheader302:                              ; preds = %vector.scevcheck285, %.lr.ph.preheader, %middle.block296
  %indvars.iv.ph = phi i64 [ %i.bk, %vector.scevcheck285 ], [ %i.bk, %.lr.ph.preheader ], [ %i.bz, %middle.block296 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader302, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader302 ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.1146, i64 %indvars.iv ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !17
  %i.cg = add nsw i32 %i.cf, 2
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %sext = shl i64 %indvars.iv.next, 32
  %i.ch = ashr exact i64 %sext, 32
  %i.ci = icmp slt i64 %i.ch, %indvars.iv240
  br i1 %i.ci, label %.lr.ph, label %.lr.ph.i175, !llvm.loop !139

.lr.ph.i175:                                      ; preds = %.lr.ph, %middle.block296, %.lr.ph.i167.5, %qrfStringInArray.exit172
  %i.cj = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(5) @.str.229) #46
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %qrfStringInArray.exit180, label %qrfStringInArray.exit180.thread

qrfStringInArray.exit180:                         ; preds = %.lr.ph.i175
  %i.cl = sext i32 %i.x to i64                    ; 2 uses
  %i.cm = icmp sgt i64 %indvars.iv240, %i.cl
  br i1 %i.cm, label %bb.f, label %qrfStringInArray.exit180.thread

bb.f:                                             ; preds = %qrfStringInArray.exit180
  %i.cn = getelementptr inbounds [4 x i8], ptr %.1149, i64 %i.cl
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !17
  %i.cp = icmp ne i32 %i.co, 0
  %i.cq = icmp ne i32 %i.t, 0
  %or.cond5 = select i1 %i.cp, i1 true, i1 %i.cq
  br i1 %or.cond5, label %.lr.ph207.preheader, label %qrfStringInArray.exit180.thread

.lr.ph207.preheader:                              ; preds = %bb.f
  %i.cr = add i32 %i.v, %i.n
  %i.cs = sub i32 %i.cr, %i.p
  %i.ct = sext i32 %i.cs to i64                   ; 4 uses
  %i.cu = add i32 %i.v, %i.j
  %i.cv = sub i32 %i.cu, %i.p
  %i.cw = zext i32 %i.cv to i64
  %i.cx = sub i64 %i.i, %i.cw                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.cx, 12
  br i1 %min.iters.check, label %.lr.ph207.preheader301, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph207.preheader
  %i.cy = add i32 %i.v, %i.l
  %i.cz = sub i32 %i.cy, %i.p                     ; 2 uses
  %i.da = zext i32 %i.cz to i64
  %i.db = sub i64 %indvars.iv240, %i.da           ; 2 uses
  %i.dc = trunc i64 %i.db to i32
  %i.dd = xor i32 %i.cz, -1
  %i.de = icmp ult i32 %i.dd, %i.dc
  %i.df = icmp ugt i64 %i.db, 4294967295
  %i.dg = or i1 %i.de, %i.df
  br i1 %i.dg, label %.lr.ph207.preheader301, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.cx, -8                      ; 3 uses
  %i.dh = add i64 %n.vec, %i.ct
  %invariant.gep309 = getelementptr [4 x i8], ptr %.1146, i64 %i.ct
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep310 = getelementptr [4 x i8], ptr %invariant.gep309, i64 %index ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %gep310, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %gep310, align 4, !tbaa !17
  %wide.load284 = load <4 x i32>, ptr %i.di, align 4, !tbaa !17
  %i.dj = add nsw <4 x i32> %wide.load, splat (i32 2)
  %i.dk = add nsw <4 x i32> %wide.load284, splat (i32 2)
  store <4 x i32> %i.dj, ptr %gep310, align 4, !tbaa !17
  store <4 x i32> %i.dk, ptr %i.di, align 4, !tbaa !17
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !140

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cx, %n.vec
  br i1 %cmp.n, label %qrfStringInArray.exit180.thread, label %.lr.ph207.preheader301

.lr.ph207.preheader301:                           ; preds = %vector.scevcheck, %.lr.ph207.preheader, %middle.block
  %indvars.iv237.ph = phi i64 [ %i.ct, %vector.scevcheck ], [ %i.ct, %.lr.ph207.preheader ], [ %i.dh, %middle.block ]
  br label %.lr.ph207

.lr.ph207:                                        ; preds = %.lr.ph207.preheader301, %.lr.ph207
  %indvars.iv237 = phi i64 [ %indvars.iv.next238, %.lr.ph207 ], [ %indvars.iv237.ph, %.lr.ph207.preheader301 ] ; 2 uses
  %i.dm = getelementptr inbounds [4 x i8], ptr %.1146, i64 %indvars.iv237 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !17
  %i.do = add nsw i32 %i.dn, 2
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !17
  %indvars.iv.next238 = add nsw i64 %indvars.iv237, 1 ; 2 uses
  %i.dp = and i64 %indvars.iv.next238, 4294967295
  %exitcond.not = icmp eq i64 %i.dp, %indvars.iv240
  br i1 %exitcond.not, label %qrfStringInArray.exit180.thread, label %.lr.ph207, !llvm.loop !141

qrfStringInArray.exit180.thread:                  ; preds = %.lr.ph207, %middle.block, %.lr.ph.i175, %qrfStringInArray.exit172.thread.thread191, %bb.f, %qrfStringInArray.exit180
  %indvars.iv.next241 = add nuw i64 %indvars.iv240, 1 ; 2 uses
  %i.dq = load ptr, ptr %0, align 8, !tbaa !36
  %i.dr = tail call i32 @sqlite3_step(ptr noundef %i.dq) #45
  %i.ds = icmp eq i32 %i.dr, 100
  br i1 %i.ds, label %bb.b, label %.critedge.loopexit, !llvm.loop !142

.critedge.loopexit:                               ; preds = %qrfStringInArray.exit180.thread, %bb.b
  %.0148.lcssa.ph = phi ptr [ %.0148208, %bb.b ], [ %.1149, %qrfStringInArray.exit180.thread ]
  %.0145.lcssa.ph = phi ptr [ %.0145209, %bb.b ], [ %.1146, %qrfStringInArray.exit180.thread ]
  %.0140.lcssa.ph = phi i64 [ %indvars.iv240, %bb.b ], [ %indvars.iv.next241, %qrfStringInArray.exit180.thread ]
  %sext274 = shl i64 %.0140.lcssa.ph, 32
  %i.dt = ashr exact i64 %sext274, 32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %.0148.lcssa = phi ptr [ null, %bb.a ], [ %.0148.lcssa.ph, %.critedge.loopexit ]
  %.0145.lcssa = phi ptr [ null, %bb.a ], [ %.0145.lcssa.ph, %.critedge.loopexit ] ; 7 uses
  %.0140.lcssa = phi i64 [ 0, %bb.a ], [ %i.dt, %.critedge.loopexit ]
  tail call void @sqlite3_free(ptr noundef %.0148.lcssa) #45
  %i.du = load ptr, ptr %0, align 8, !tbaa !36
  %i.dv = tail call i32 @sqlite3_reset(ptr noundef %i.du) #45 ; 0 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !39
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %bb.g, label %qrfWrite.exit

bb.g:                                             ; preds = %.critedge
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !40 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !47
  %i.ed = icmp eq i8 %i.ec, 18
  br i1 %i.ed, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0134 = phi ptr [ @qrfExplain.aScanExpWidth, %bb.h ], [ @qrfExplain.aExplainWidth, %bb.g ] ; 3 uses
  %.0133 = phi ptr [ @qrfExplain.aScanExpMap, %bb.h ], [ @qrfExplain.aExplainMap, %bb.g ] ; 2 uses
  %.0132 = phi i32 [ 10, %bb.h ], [ 8, %bb.g ]
  %.0131 = phi i64 [ 3, %bb.h ], [ 1, %bb.g ]
  %i.ee = load ptr, ptr %0, align 8, !tbaa !36
  %i.ef = tail call i32 @sqlite3_step(ptr noundef %i.ee) #45
  %i.eg = icmp eq i32 %i.ef, 100
  br i1 %i.eg, label %.lr.ph227, label %.critedge7

.lr.ph227:                                        ; preds = %bb.i
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.ea, i32 %.0132) ; 4 uses
  %i.eh = icmp sgt i32 %i.ea, 0                   ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.ej = add nsw i32 %spec.select, -1
  %i.ek = icmp ne ptr %.0145.lcssa, null
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.em = zext i32 %i.ej to i64                   ; 3 uses
  %wide.trip.count = zext nneg i32 %spec.select to i64
  %wide.trip.count252 = zext nneg i32 %spec.select to i64
  %wide.trip.count258 = zext nneg i32 %spec.select to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph227, %._crit_edge
  %indvars.iv260 = phi i64 [ 0, %.lr.ph227 ], [ %indvars.iv.next261, %._crit_edge ] ; 4 uses
  %i.en = load i32, ptr %i.dw, align 8, !tbaa !39
end_hunk_0
