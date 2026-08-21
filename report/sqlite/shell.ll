Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/shell?download=true
inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 119
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_format_query_result:bb.a
  call void @sqlite3_free(ptr noundef %i.ano) #45
  %indvars.iv.next.i44 = add nuw nsw i64 %indvars.iv.i43, 1 ; 2 uses
  %i.anp = load i32, ptr %i.anj, align 4, !tbaa !40
  %i.anq = sext i32 %i.anp to i64
  %i.anr = icmp slt i64 %indvars.iv.next.i44, %i.anq
  br i1 %i.anr, label %.lr.ph.i42, label %._crit_edge.loopexit.i, !llvm.loop !133

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i42
  %.pre.i45 = load ptr, ptr %i.anh, align 8, !tbaa !16
  br label %._crit_edge.i41

._crit_edge.i41:                                  ; preds = %._crit_edge.loopexit.i, %.preheader.i40
  %i.ans = phi ptr [ %.pre.i45, %._crit_edge.loopexit.i ], [ %i.ani, %.preheader.i40 ]
  call void @sqlite3_free(ptr noundef %i.ans) #45
  br label %bb.jh

bb.jf:                                            ; preds = %qrfResetStmt.exit, %qrfResetStmt.exit
  call fastcc void @qrfEqpRender(ptr noundef nonnull %4)
  br label %bb.jh

bb.jg:                                            ; preds = %qrfResetStmt.exit
  call fastcc void @qrfEqpRender(ptr noundef nonnull %4)
  br label %bb.jh

bb.jh:                                            ; preds = %bb.jg, %bb.jf, %._crit_edge.i41, %bb.je, %bb.jd, %bb.jc, %bb.jb, %bb.ja, %bb.iz, %bb.iy, %bb.ix, %qrfResetStmt.exit
  %i.ant = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  %i.anu = load ptr, ptr %i.ant, align 8, !tbaa !107
  %.not.i.i34 = icmp eq ptr %i.anu, null
  br i1 %.not.i.i34, label %qrfWrite.exit.i35, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.anv = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.anw = load ptr, ptr %i.anv, align 8, !tbaa !38
  %i.anx = call i32 @sqlite3_str_length(ptr noundef %i.anw) #45 ; 3 uses
  %i.any = icmp sgt i32 %i.anx, 0
  br i1 %i.any, label %bb.jj, label %qrfWrite.exit.i35

bb.jj:                                            ; preds = %bb.ji
  %i.anz = load ptr, ptr %i.ant, align 8, !tbaa !107
  %i.aoa = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.aob = load ptr, ptr %i.aoa, align 8, !tbaa !108
  %i.aoc = load ptr, ptr %i.anv, align 8, !tbaa !38
  %i.aod = call ptr @sqlite3_str_value(ptr noundef %i.aoc) #45
  %i.aoe = zext nneg i32 %i.anx to i64
  %i.aof = call i32 %i.anz(ptr noundef %i.aob, ptr noundef %i.aod, i64 noundef %i.aoe) #45, !inline_history !134 ; 2 uses
  %i.aog = load ptr, ptr %i.anv, align 8, !tbaa !38
  call void @sqlite3_str_reset(ptr noundef %i.aog) #45
  %.not11.i.i38 = icmp eq i32 %i.aof, 0
  br i1 %.not11.i.i38, label %qrfWrite.exit.i35, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef %i.aof, ptr noundef nonnull @.str.217, i32 noundef %i.anx)
  br label %qrfWrite.exit.i35

qrfWrite.exit.i35:                                ; preds = %bb.jk, %bb.jj, %bb.ji, %bb.jh
  %i.aoh = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  %i.aoi = load ptr, ptr %i.aoh, align 8, !tbaa !38 ; 2 uses
  %.not.i65.i = icmp eq ptr %i.aoi, null
  br i1 %.not.i65.i, label %qrfStrErr.exit.i37, label %bb.jl

bb.jl:                                            ; preds = %qrfWrite.exit.i35
  %i.aoj = call i32 @sqlite3_str_errcode(ptr noundef nonnull %i.aoi) #45 ; 3 uses
  %.not6.i.i36 = icmp eq i32 %i.aoj, 0
  br i1 %.not6.i.i36, label %qrfStrErr.exit.i37, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.aok = call ptr @sqlite3_errstr(i32 noundef %i.aoj) #45
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef %i.aoj, ptr noundef %i.aok)
  br label %qrfStrErr.exit.i37

qrfStrErr.exit.i37:                               ; preds = %bb.jm, %bb.jl, %qrfWrite.exit.i35
  %i.aol = getelementptr inbounds nuw i8, ptr %4, i64 216 ; 5 uses
  %i.aom = load ptr, ptr %i.aol, align 8, !tbaa !135 ; 2 uses
  %.not60.i = icmp eq ptr %i.aom, null
  br i1 %.not60.i, label %bb.jt, label %bb.jn

bb.jn:                                            ; preds = %qrfStrErr.exit.i37
  %i.aon = load ptr, ptr %i.aom, align 8, !tbaa !66 ; 2 uses
  %.not62.i = icmp eq ptr %i.aon, null
  br i1 %.not62.i, label %bb.js, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.aoo = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aon) #46 ; 2 uses
  %i.aop = load ptr, ptr %i.aoh, align 8, !tbaa !38
  %i.aoq = call i32 @sqlite3_str_length(ptr noundef %i.aop) #45
  %i.aor = sext i32 %i.aoq to i64
  %i.aos = load ptr, ptr %i.aol, align 8, !tbaa !135
  %i.aot = load ptr, ptr %i.aos, align 8, !tbaa !66
  %i.aou = add nsw i64 %i.aor, 1                  ; 2 uses
  %i.aov = add i64 %i.aou, %i.aoo
  %i.aow = call ptr @sqlite3_realloc64(ptr noundef %i.aot, i64 noundef %i.aov) #45 ; 3 uses
  %i.aox = icmp eq ptr %i.aow, null
  %i.aoy = load ptr, ptr %i.aol, align 8, !tbaa !135 ; 2 uses
  br i1 %i.aox, label %bb.jp, label %bb.jq

bb.jp:                                            ; preds = %bb.jo
  %i.aoz = load ptr, ptr %i.aoy, align 8, !tbaa !66
  call void @sqlite3_free(ptr noundef %i.aoz) #45
  %i.apa = load ptr, ptr %i.aol, align 8, !tbaa !135
  store ptr null, ptr %i.apa, align 8, !tbaa !66
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef 7, ptr noundef nonnull @.str.56)
  br label %bb.jr

bb.jq:                                            ; preds = %bb.jo
  store ptr %i.aow, ptr %i.aoy, align 8, !tbaa !66
  %i.apb = getelementptr inbounds i8, ptr %i.aow, i64 %i.aoo
  %i.apc = load ptr, ptr %i.aoh, align 8, !tbaa !38
  %i.apd = call ptr @sqlite3_str_value(ptr noundef %i.apc) #45
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.apb, ptr align 1 %i.apd, i64 %i.aou, i1 false)
  br label %bb.jr

bb.jr:                                            ; preds = %bb.jq, %bb.jp
  %i.ape = load ptr, ptr %i.aoh, align 8, !tbaa !38
  %i.apf = call ptr @sqlite3_str_finish(ptr noundef %i.ape) #45
  call void @sqlite3_free(ptr noundef %i.apf) #45
  br label %bb.jv

bb.js:                                            ; preds = %bb.jn
  %i.apg = load ptr, ptr %i.aoh, align 8, !tbaa !38
  %i.aph = call ptr @sqlite3_str_finish(ptr noundef %i.apg) #45
  %i.api = load ptr, ptr %i.aol, align 8, !tbaa !135
  store ptr %i.aph, ptr %i.api, align 8, !tbaa !66
  br label %bb.jv

bb.jt:                                            ; preds = %qrfStrErr.exit.i37
  %i.apj = load ptr, ptr %i.aoh, align 8, !tbaa !38 ; 2 uses
  %.not61.i = icmp eq ptr %i.apj, null
  br i1 %.not61.i, label %bb.jv, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.apk = call ptr @sqlite3_str_finish(ptr noundef nonnull %i.apj) #45
  call void @sqlite3_free(ptr noundef %i.apk) #45
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %bb.jt, %bb.js, %bb.jr
  %i.apl = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.apm = load i32, ptr %i.apl, align 8, !tbaa !55 ; 2 uses
  %i.apn = icmp sgt i32 %i.apm, 0
  br i1 %i.apn, label %bb.jw, label %bb.jx

bb.jw:                                            ; preds = %bb.jv
  %i.apo = load ptr, ptr %4, align 8, !tbaa !36
  %i.app = add nsw i32 %i.apm, -1
  %i.apq = call i32 @sqlite3_stmt_explain(ptr noundef %i.apo, i32 noundef %i.app) #45 ; 0 uses
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %bb.jv
  %i.apr = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.aps = load ptr, ptr %i.apr, align 8, !tbaa !136 ; 2 uses
  %.not63.i = icmp eq ptr %i.aps, null
  br i1 %.not63.i, label %bb.jz, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  call void @sqlite3_free(ptr noundef nonnull %i.aps) #45
  br label %bb.jz

bb.jz:                                            ; preds = %bb.jy, %bb.jx
  %i.apt = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.apu = load ptr, ptr %i.apt, align 8, !tbaa !137 ; 2 uses
  %.not64.i = icmp eq ptr %i.apu, null
  br i1 %.not64.i, label %qrfFinalize.exit, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.apv = call ptr @sqlite3_db_handle(ptr noundef nonnull %i.apu) #45
  %i.apw = load ptr, ptr %i.apt, align 8, !tbaa !137
  %i.apx = call i32 @sqlite3_finalize(ptr noundef %i.apw) #45 ; 0 uses
  %i.apy = call i32 @sqlite3_close(ptr noundef %i.apv) #45 ; 0 uses
  br label %qrfFinalize.exit

qrfFinalize.exit:                                 ; preds = %bb.jz, %bb.ka
  %i.apz = load i32, ptr %i.ami, align 8, !tbaa !39
  br label %bb.kb

bb.kb:                                            ; preds = %bb.b, %bb.a, %qrfFinalize.exit
  %.0 = phi i32 [ %i.apz, %qrfFinalize.exit ], [ 0, %bb.a ], [ 21, %bb.b ]
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
  %i.f = add i32 %i.e, 1
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
  %i.p = tail call i32 @sqlite3_column_int(ptr noundef %i.o, i32 noundef 0) #45 ; 7 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !36
  %i.r = tail call ptr @sqlite3_column_text(ptr noundef %i.q, i32 noundef 1) #45 ; 13 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !36
  %i.t = tail call i32 @sqlite3_column_int(ptr noundef %i.s, i32 noundef 2) #45
  %i.u = load ptr, ptr %0, align 8, !tbaa !36
  %i.v = tail call i32 @sqlite3_column_int(ptr noundef %i.u, i32 noundef 3) #45 ; 7 uses
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
  %i.bn = sext i32 %i.bm to i64                   ; 2 uses
  %smax286 = tail call i64 @llvm.smax.i64(i64 %indvars.iv240, i64 %i.bn)
  %i.bo = add i64 %smax286, 1
  %i.bp = sub i64 %i.bo, %i.bn                    ; 3 uses
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
  %wide.load293 = load <4 x i32>, ptr %gep, align 4, !tbaa !17
  %wide.load294 = load <4 x i32>, ptr %i.ca, align 4, !tbaa !17
  %i.cb = add nsw <4 x i32> %wide.load293, splat (i32 2)
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
  %.not157 = icmp eq i32 %i.en, 0
  br i1 %.not157, label %bb.k, label %.critedge7

bb.k:                                             ; preds = %bb.j
  %i.eo = icmp eq i64 %indvars.iv260, 0
  br i1 %i.eo, label %.preheader192, label %.loopexit

.preheader192:                                    ; preds = %bb.k
  br i1 %i.eh, label %.lr.ph220, label %._crit_edge

.lr.ph220:                                        ; preds = %.preheader192, %bb.n
  %indvars.iv243 = phi i64 [ %indvars.iv.next244, %bb.n ], [ 0, %.preheader192 ] ; 4 uses
  %i.ep = load ptr, ptr %0, align 8, !tbaa !36
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.0133, i64 %indvars.iv243
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !17
  %i.es = tail call ptr @sqlite3_column_name(ptr noundef %i.ep, i32 noundef %i.er) #45
  %i.et = load ptr, ptr %i.ei, align 8, !tbaa !38
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.0134, i64 %indvars.iv243
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !17
  tail call fastcc void @qrfWidthPrint(ptr noundef %i.et, i32 noundef %i.ev, ptr noundef %i.es)
  %i.ew = icmp eq i64 %indvars.iv243, %i.em
  %i.ex = load ptr, ptr %i.ei, align 8, !tbaa !38 ; 2 uses
  br i1 %i.ew, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph220
  tail call void @sqlite3_str_append(ptr noundef %i.ex, ptr noundef nonnull @.str.125, i32 noundef 1) #45
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph220
  tail call void @sqlite3_str_append(ptr noundef %i.ex, ptr noundef nonnull @.str.230, i32 noundef 2) #45
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1 ; 2 uses
  %exitcond247.not = icmp eq i64 %indvars.iv.next244, %wide.trip.count
  br i1 %exitcond247.not, label %.lr.ph222, label %.lr.ph220, !llvm.loop !143

.lr.ph222:                                        ; preds = %bb.n, %bb.q
  %indvars.iv248 = phi i64 [ %indvars.iv.next249, %bb.q ], [ 0, %bb.n ] ; 3 uses
  %i.ey = load ptr, ptr %i.ei, align 8, !tbaa !38
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.0134, i64 %indvars.iv248
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !17
  tail call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.ey, ptr noundef nonnull @.str.231, i32 noundef %i.fa, i32 noundef 45) #45
  %i.fb = icmp eq i64 %indvars.iv248, %i.em
  %i.fc = load ptr, ptr %i.ei, align 8, !tbaa !38 ; 2 uses
  br i1 %i.fb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph222
  tail call void @sqlite3_str_append(ptr noundef %i.fc, ptr noundef nonnull @.str.125, i32 noundef 1) #45
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph222
  tail call void @sqlite3_str_append(ptr noundef %i.fc, ptr noundef nonnull @.str.230, i32 noundef 2) #45
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 2 uses
  %exitcond253.not = icmp eq i64 %indvars.iv.next249, %wide.trip.count252
  br i1 %exitcond253.not, label %.loopexit, label %.lr.ph222, !llvm.loop !144

.loopexit:                                        ; preds = %bb.q, %bb.k
  br i1 %i.eh, label %.lr.ph224, label %._crit_edge

.lr.ph224:                                        ; preds = %.loopexit
  %i.fd = icmp slt i64 %indvars.iv260, %.0140.lcssa
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.0145.lcssa, i64 %indvars.iv260
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph224, %bb.au
  %indvars.iv254 = phi i64 [ 0, %.lr.ph224 ], [ %indvars.iv.next255, %bb.au ] ; 5 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.0134, i64 %indvars.iv254
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !17
  %i.fh = load ptr, ptr %0, align 8, !tbaa !36
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %.0133, i64 %indvars.iv254
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !17
  %i.fk = tail call ptr @sqlite3_column_text(ptr noundef %i.fh, i32 noundef %i.fj) #45 ; 2 uses
  %i.fl = icmp eq i64 %indvars.iv254, %i.em       ; 2 uses
  %spec.select163 = select i1 %i.fl, i32 0, i32 %i.fg ; 2 uses
  %i.fm = icmp eq ptr %i.fk, null
  %spec.store.select = select i1 %i.fm, ptr @.str.48, ptr %i.fk ; 3 uses
  %i.fn = load i8, ptr %spec.store.select, align 1, !tbaa !16 ; 2 uses
  %.not27.i = icmp eq i8 %i.fn, 0
  br i1 %.not27.i, label %sqlite3_qrf_wcswidth.exit, label %.lr.ph.i181

.lr.ph.i181:                                      ; preds = %bb.r, %bb.ap
  %i.fo = phi i8 [ %i.jn, %bb.ap ], [ %i.fn, %bb.r ] ; 4 uses
  %.029.i = phi ptr [ %.2.i, %bb.ap ], [ %spec.store.select, %bb.r ] ; 14 uses
  %.01528.i = phi i32 [ %.116.i, %bb.ap ], [ 0, %bb.r ] ; 4 uses
  %i.fp = icmp ult i8 %i.fo, 32
  br i1 %i.fp, label %bb.s, label %bb.v

bb.s:                                             ; preds = %.lr.ph.i181
  %i.fq = icmp eq i8 %i.fo, 27
  br i1 %i.fq, label %bb.t, label %qrfIsVt100.exit.thread.i

bb.t:                                             ; preds = %bb.s
  %i.fr = getelementptr inbounds nuw i8, ptr %.029.i, i64 1
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !16
  %.not.i.i = icmp eq i8 %i.fs, 91
  br i1 %.not.i.i, label %.preheader.i.i, label %qrfIsVt100.exit.thread.i

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.preheader.i.i ], [ 2, %bb.t ] ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.029.i, i64 %indvars.iv.i.i
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !16
  %i.fv = and i8 %i.fu, -16
  %or.cond.i.i = icmp eq i8 %i.fv, 48
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  br i1 %or.cond.i.i, label %.preheader.i.i, label %.critedge.i.i, !llvm.loop !18

.critedge.i.i:                                    ; preds = %.preheader.i.i, %.critedge.i.i
  %indvars.iv25.i.i = phi i64 [ %indvars.iv.next26.i.i, %.critedge.i.i ], [ %indvars.iv.i.i, %.preheader.i.i ] ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.029.i, i64 %indvars.iv25.i.i
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !16  ; 2 uses
  %i.fy = and i8 %i.fx, -16
  %or.cond22.i.i = icmp eq i8 %i.fy, 32
  %indvars.iv.next26.i.i = add nuw i64 %indvars.iv25.i.i, 1 ; 2 uses
  br i1 %or.cond22.i.i, label %.critedge.i.i, label %.critedge2.i.i, !llvm.loop !19

.critedge2.i.i:                                   ; preds = %.critedge.i.i
  %i.fz = add i8 %i.fx, -64
  %or.cond23.i.i = icmp ult i8 %i.fz, 63
  br i1 %or.cond23.i.i, label %bb.u, label %qrfIsVt100.exit.thread.i

bb.u:                                             ; preds = %.critedge2.i.i
  %i.ga = and i64 %indvars.iv.next26.i.i, 4294967295
  %i.gb = getelementptr inbounds nuw i8, ptr %.029.i, i64 %i.ga
  br label %bb.ap

qrfIsVt100.exit.thread.i:                         ; preds = %.critedge2.i.i, %bb.t, %bb.s
  %i.gc = getelementptr inbounds nuw i8, ptr %.029.i, i64 1
  br label %bb.ap

bb.v:                                             ; preds = %.lr.ph.i181
  %i.gd = icmp sgt i8 %i.fo, -1
  br i1 %i.gd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
end_hunk_0
begin_hunk_1_@qrfDisplayWidth:bb.a

bb.u:                                             ; preds = %.preheader.i51
  %i.cn = icmp sgt i32 %i.cl, %.sink.i
  br i1 %i.cn, label %bb.v, label %.thread.i

bb.v:                                             ; preds = %bb.u
  %i.co = add nsw i32 %i.ch, -1
  br label %bb.w

.thread.i:                                        ; preds = %bb.u
  %i.cp = load i8, ptr %i.cj, align 8, !tbaa !13
  br label %sqlite3_qrf_wcwidth.exit

bb.w:                                             ; preds = %bb.v, %.preheader.i51
  %.222.i = phi i32 [ %i.ch, %.preheader.i51 ], [ %.02034.i, %bb.v ] ; 3 uses
  %.2.i = phi i32 [ %.01935.i, %.preheader.i51 ], [ %i.co, %bb.v ] ; 3 uses
  %i.cq = add nsw i32 %.2.i, -1
  %i.cr = icmp slt i32 %.222.i, %i.cq
  br i1 %i.cr, label %.preheader.i51, label %bb.x, !llvm.loop !14

bb.x:                                             ; preds = %bb.w
  %i.cs = sext i32 %.2.i to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !11
  %i.cw = icmp sgt i32 %i.cv, %.sink.i
  br i1 %i.cw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cx = sext i32 %.222.i to i64
  %i.cy = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !13
  br label %sqlite3_qrf_wcwidth.exit

bb.z:                                             ; preds = %bb.x
  %i.da = load i8, ptr %i.ct, align 8, !tbaa !13
  br label %sqlite3_qrf_wcwidth.exit

sqlite3_qrf_wcwidth.exit:                         ; preds = %sqlite3_qrf_decode_utf8.exit.thread, %sqlite3_qrf_decode_utf8.exit, %.thread.i, %bb.y, %bb.z
  %i.db = phi ptr [ %i.ce, %bb.z ], [ %i.ce, %.thread.i ], [ %i.ce, %bb.y ], [ %i.ce, %sqlite3_qrf_decode_utf8.exit ], [ %i.cd, %sqlite3_qrf_decode_utf8.exit.thread ]
  %.225.shrunk.i = phi i8 [ %i.da, %bb.z ], [ %i.cp, %.thread.i ], [ %i.cz, %bb.y ], [ 1, %sqlite3_qrf_decode_utf8.exit ], [ 1, %sqlite3_qrf_decode_utf8.exit.thread ]
  %.225.i = zext i8 %.225.shrunk.i to i32
  %i.dc = add nsw i32 %.03658, %.225.i
  br label %bb.aa

bb.aa:                                            ; preds = %bb.d, %.thread, %bb.h, %sqlite3_qrf_wcwidth.exit
  %.444 = phi i32 [ %.04057, %sqlite3_qrf_wcwidth.exit ], [ %.04057, %bb.h ], [ %.04057, %bb.d ], [ %.242, %.thread ] ; 2 uses
  %.339 = phi i32 [ %i.dc, %sqlite3_qrf_wcwidth.exit ], [ %i.v, %bb.h ], [ %.03658, %bb.d ], [ %.137, %.thread ] ; 2 uses
  %.3 = phi i32 [ %.03359, %sqlite3_qrf_wcwidth.exit ], [ %.03359, %bb.h ], [ %.03359, %bb.d ], [ %.134, %.thread ] ; 2 uses
  %.2 = phi ptr [ %i.db, %sqlite3_qrf_wcwidth.exit ], [ %i.w, %bb.h ], [ %i.p, %bb.d ], [ %i.t, %.thread ] ; 2 uses
  %i.dd = icmp ult ptr %.2, %i.b
  br i1 %i.dd, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !801

._crit_edge.loopexit:                             ; preds = %bb.aa
  %i.de = tail call i32 @llvm.smax.i32(i32 %.444, i32 %.339)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.040.lcssa = phi i32 [ 0, %bb.a ], [ %i.de, %._crit_edge.loopexit ]
  %.033.lcssa = phi i32 [ 0, %bb.a ], [ %.3, %._crit_edge.loopexit ]
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge
  store i32 %.033.lcssa, ptr %2, align 4, !tbaa !17
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge
  ret i32 %.040.lcssa
}

declare i32 @sqlite3_column_type(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @qrfRenderValue(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = tail call i32 @sqlite3_str_length(ptr noundef %1) #45 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !802
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !36
  %i.f = tail call ptr @sqlite3_column_value(ptr noundef %i.e, i32 noundef %2) #45
  %i.g = tail call ptr @sqlite3_value_dup(ptr noundef %i.f) #45 ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !802
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !803
  %i.k = tail call ptr %i.h(ptr noundef %i.j, ptr noundef %i.g) #45 ; 3 uses
  tail call void @sqlite3_value_free(ptr noundef %i.g) #45
  %.not193 = icmp eq ptr %i.k, null
  br i1 %.not193, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @sqlite3_str_appendall(ptr noundef %1, ptr noundef nonnull %i.k) #45
  tail call void @sqlite3_free(ptr noundef nonnull %i.k) #45
  br label %.critedge200

.critedge:                                        ; preds = %bb.b, %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !36
  %i.m = tail call i32 @sqlite3_column_type(ptr noundef %i.l, i32 noundef %2) #45
  switch i32 %i.m, label %.loopexit [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.ag
    i32 3, label %bb.ah
  ]

bb.d:                                             ; preds = %.critedge
  %i.n = load ptr, ptr %0, align 8, !tbaa !36
  %i.o = tail call i64 @sqlite3_column_int64(ptr noundef %i.n, i32 noundef %2) #45
  tail call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %1, ptr noundef nonnull @.str.208, i64 noundef %i.o) #45
  br label %.loopexit

bb.e:                                             ; preds = %.critedge
  %i.p = load ptr, ptr %0, align 8, !tbaa !36
  %i.q = tail call ptr @sqlite3_column_text(ptr noundef %i.p, i32 noundef %2) #45
  tail call void @sqlite3_str_appendall(ptr noundef %1, ptr noundef %i.q) #45
  br label %.loopexit

bb.f:                                             ; preds = %.critedge
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.s = load i8, ptr %i.r, align 8, !tbaa !58
  %i.t = icmp eq i8 %i.s, 2
  br i1 %i.t, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %0, align 8, !tbaa !36
  %i.v = tail call i32 @sqlite3_column_bytes(ptr noundef %i.u, i32 noundef %2) #45 ; 5 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !36
  %i.x = tail call ptr @sqlite3_column_blob(ptr noundef %i.w, i32 noundef %2) #45 ; 8 uses
  %i.y = icmp eq i32 %i.v, 0
  br i1 %i.y, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load i8, ptr %i.x, align 1, !tbaa !16    ; 3 uses
  %i.aa = lshr i8 %i.z, 4
  %i.ab = zext nneg i8 %i.aa to i32               ; 3 uses
  %i.ac = icmp ult i8 %i.z, -64
  br i1 %i.ac, label %qrfJsonbQuickCheck.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = icmp samesign ult i8 %i.z, -32
  %i.ae = add nsw i32 %i.ab, -11
  %i.af = shl nuw nsw i32 %i.ab, 2
  %i.ag = add nsw i32 %i.af, -52
  %i.ah = select i1 %i.ad, i32 %i.ae, i32 %i.ag   ; 4 uses
  %.not.i.i = icmp sgt i32 %i.v, %i.ah
  br i1 %.not.i.i, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !16
  %i.ak = zext i8 %i.aj to i64                    ; 3 uses
  %i.al = icmp sgt i32 %i.ah, 1
  %wide.trip.count.i.i = zext i32 %i.ah to i64    ; 2 uses
  br i1 %i.al, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.am = add nsw i64 %wide.trip.count.i.i, -1    ; 2 uses
  %xtraiter = and i64 %i.am, 3                    ; 3 uses
  %i.an = add nsw i32 %i.ah, -2
  %i.ao = icmp ult i32 %i.an, 3
  br i1 %i.ao, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.am, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.i.i.preheader.new ], [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ] ; 4 uses
  %.026.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.preheader.new ], [ %i.bl, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !16
  %i.as = zext i8 %i.ar to i64
  %i.at = shl i64 %.026.i.i, 16
  %i.au = shl nuw nsw i64 %i.as, 8
  %i.av = or disjoint i64 %i.at, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !16
  %i.az = zext i8 %i.ay to i64
  %i.ba = or disjoint i64 %i.av, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 3
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !16
  %i.be = zext i8 %i.bd to i64
  %i.bf = shl i64 %i.ba, 16
  %i.bg = shl nuw nsw i64 %i.be, 8
  %i.bh = or disjoint i64 %i.bf, %i.bg
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.next.i.i.3
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !16
  %i.bk = zext i8 %i.bj to i64
  %i.bl = or disjoint i64 %i.bh, %i.bk            ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !804

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.3, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %.026.i.i.epil.init = phi i64 [ %i.ak, %.lr.ph.i.i.preheader ], [ %i.bl, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod287 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod287)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ], [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.026.i.i.epil = phi i64 [ %i.bq, %.lr.ph.i.i.epil ], [ %.026.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.bm = shl i64 %.026.i.i.epil, 8
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.next.i.i.epil
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !16
  %i.bp = zext i8 %i.bo to i64
  %i.bq = or disjoint i64 %i.bm, %i.bp            ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil, !llvm.loop !805

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.j
  %.0.lcssa.i.i = phi i64 [ %i.ak, %bb.j ], [ %i.bl, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %i.bq, %.lr.ph.i.i.epil ]
  %i.br = add nuw nsw i64 %wide.trip.count.i.i, 1
  %i.bs = add i64 %i.br, %.0.lcssa.i.i
  %i.bt = zext nneg i32 %i.v to i64
  %i.bu = icmp eq i64 %i.bs, %i.bt
  br i1 %i.bu, label %bb.k, label %.thread

qrfJsonbQuickCheck.exit.i:                        ; preds = %bb.h
  %i.bv = add nuw nsw i32 %i.ab, 1
  %i.bw = icmp eq i32 %i.v, %i.bv
  br i1 %i.bw, label %bb.k, label %.thread

bb.k:                                             ; preds = %qrfJsonbQuickCheck.exit.i, %._crit_edge.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !137 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.ca = call i32 @sqlite3_open(ptr noundef nonnull @.str.43, ptr noundef nonnull %i.a) #45
  %.not.i = icmp eq i32 %i.ca, 0
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !322 ; 2 uses
  br i1 %.not.i, label %bb.m, label %.critedge.i

bb.m:                                             ; preds = %bb.l
  %i.cc = call i32 @sqlite3_prepare_v2(ptr noundef %i.cb, ptr noundef nonnull @.str.214, i32 noundef -1, ptr noundef nonnull %i.bx, ptr noundef null) #45
  %.not22.i = icmp eq i32 %i.cc, 0
  br i1 %.not22.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !137
  %i.ce = call i32 @sqlite3_finalize(ptr noundef %i.cd) #45 ; 0 uses
  store ptr null, ptr %i.bx, align 8, !tbaa !137
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !322
  br label %.critedge.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %bb.q

bb.p:                                             ; preds = %bb.k
  %i.cg = tail call i32 @sqlite3_reset(ptr noundef nonnull %i.by) #45 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ch = load ptr, ptr %i.bx, align 8, !tbaa !137
  %i.ci = call i32 @sqlite3_bind_blob(ptr noundef %i.ch, i32 noundef 1, ptr noundef nonnull %i.x, i32 noundef %i.v, ptr noundef null) #45 ; 0 uses
  %i.cj = load ptr, ptr %i.bx, align 8, !tbaa !137
  %i.ck = call i32 @sqlite3_step(ptr noundef %i.cj) #45
  %i.cl = icmp eq i32 %i.ck, 100
  br i1 %i.cl, label %qrfJsonbToJson.exit, label %.thread

.critedge.i:                                      ; preds = %bb.n, %bb.l
  %.sink.i = phi ptr [ %i.cf, %bb.n ], [ %i.cb, %bb.l ]
  %i.cm = call i32 @sqlite3_close(ptr noundef %.sink.i) #45 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %.thread

qrfJsonbToJson.exit:                              ; preds = %bb.q
  %i.cn = load ptr, ptr %i.bx, align 8, !tbaa !137
  %i.co = call ptr @sqlite3_column_text(ptr noundef %i.cn, i32 noundef 0) #45 ; 3 uses
  %.not194 = icmp eq ptr %i.co, null
  br i1 %.not194, label %.thread, label %bb.r

bb.r:                                             ; preds = %qrfJsonbToJson.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 99
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !49
  %i.cr = icmp eq i8 %i.cq, 2
  br i1 %i.cr, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @sqlite3_str_append(ptr noundef %1, ptr noundef nonnull @.str.209, i32 noundef 6) #45
  call fastcc void @qrfEncodeText(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.co)
  call void @sqlite3_str_append(ptr noundef %1, ptr noundef nonnull @.str.210, i32 noundef 1) #45
  br label %.loopexit

bb.t:                                             ; preds = %bb.r
  call fastcc void @qrfEncodeText(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.co)
  br label %.loopexit

.thread:                                          ; preds = %._crit_edge.i.i, %bb.i, %bb.g, %bb.q, %qrfJsonbQuickCheck.exit.i, %.critedge.i, %qrfJsonbToJson.exit, %bb.f
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 101 ; 4 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !51
  %i.cu = load ptr, ptr %0, align 8, !tbaa !36    ; 4 uses
  switch i8 %i.ct, label %bb.af [
    i8 3, label %bb.u
    i8 2, label %bb.u
    i8 4, label %bb.aa
    i8 5, label %bb.aa
    i8 6, label %bb.ae
  ]

bb.u:                                             ; preds = %.thread, %.thread
  %i.cv = call i32 @sqlite3_column_bytes(ptr noundef %i.cu, i32 noundef %2) #45 ; 6 uses
  %i.cw = load ptr, ptr %0, align 8, !tbaa !36
  %i.cx = call ptr @sqlite3_column_blob(ptr noundef %i.cw, i32 noundef %2) #45 ; 3 uses
  %i.cy = load i8, ptr %i.cs, align 1, !tbaa !51
  %i.cz = icmp eq i8 %i.cy, 2
  br i1 %i.cz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @sqlite3_str_append(ptr noundef %1, ptr noundef nonnull @.str.211, i32 noundef 2) #45
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.da = call i32 @sqlite3_str_length(ptr noundef %1) #45
  call void @sqlite3_str_appendchar(ptr noundef %1, i32 noundef %i.cv, i8 noundef signext 32) #45
  call void @sqlite3_str_appendchar(ptr noundef %1, i32 noundef %i.cv, i8 noundef signext 32) #45
  %i.db = load i8, ptr %i.cs, align 1, !tbaa !51
  %i.dc = icmp eq i8 %i.db, 2
  br i1 %i.dc, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @sqlite3_str_appendchar(ptr noundef %1, i32 noundef 1, i8 noundef signext 39) #45
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dd = call i32 @sqlite3_str_errcode(ptr noundef %1) #45
  %.not197 = icmp eq i32 %i.dd, 0
  br i1 %.not197, label %bb.z, label %.critedge200

bb.z:                                             ; preds = %bb.y
  %i.de = call ptr @sqlite3_str_value(ptr noundef %1) #45 ; 3 uses
  %i.df = icmp sgt i32 %i.cv, 0
  br i1 %i.df, label %.lr.ph228.preheader, label %.loopexit

.lr.ph228.preheader:                              ; preds = %bb.z
  %i.dg = sext i32 %i.da to i64                   ; 2 uses
  %wide.trip.count255 = zext nneg i32 %i.cv to i64 ; 2 uses
  %xtraiter294 = and i64 %wide.trip.count255, 1
  %i.dh = icmp eq i32 %i.cv, 1
  br i1 %i.dh, label %.lr.ph228.epil.preheader, label %.lr.ph228.preheader.new

.lr.ph228.preheader.new:                          ; preds = %.lr.ph228.preheader
  %unroll_iter298 = and i64 %wide.trip.count255, 2147483646
  br label %.lr.ph228

.lr.ph228:                                        ; preds = %.lr.ph228, %.lr.ph228.preheader.new
  %indvars.iv250 = phi i64 [ 0, %.lr.ph228.preheader.new ], [ %indvars.iv.next251.1, %.lr.ph228 ] ; 3 uses
  %indvars.iv248 = phi i64 [ %i.dg, %.lr.ph228.preheader.new ], [ %indvars.iv.next249.1, %.lr.ph228 ] ; 3 uses
  %niter299 = phi i64 [ 0, %.lr.ph228.preheader.new ], [ %niter299.next.1, %.lr.ph228 ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv250
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !16
  %i.dk = zext i8 %i.dj to i32                    ; 2 uses
  %i.dl = lshr i32 %i.dk, 4
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !16
  %i.dp = getelementptr inbounds i8, ptr %i.de, i64 %indvars.iv248 ; 2 uses
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !16
  %i.dq = and i32 %i.dk, 15
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !16
  %i.du = getelementptr i8, ptr %i.dp, i64 1
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !16
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv250
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !16
  %i.dy = zext i8 %i.dx to i32                    ; 2 uses
  %i.dz = lshr i32 %i.dy, 4
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !16
  %i.ed = getelementptr i8, ptr %i.de, i64 %indvars.iv248 ; 2 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 2
  store i8 %i.ec, ptr %i.ee, align 1, !tbaa !16
  %i.ef = and i32 %i.dy, 15
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.eg
end_hunk_1
