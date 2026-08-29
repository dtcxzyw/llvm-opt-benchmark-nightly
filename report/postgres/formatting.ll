Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/formatting?download=true
inline.NumInlined: 373
inline.NumDeleted: 72
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@do_to_timestamp:bb.a
  call void @errsave_finish(ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef 3651, ptr noundef nonnull @__func__.DCH_from_char) #16
  br label %DCH_from_char.exit

bb.je:                                            ; preds = %bb.jf, %.lr.ph490.i
  %i.ado = phi i8 [ %i.adj, %.lr.ph490.i ], [ %i.adw, %bb.jf ]
  %i.adp = phi ptr [ %.promoted488.i, %.lr.ph490.i ], [ %i.adv, %bb.jf ]
  %i.adq = load ptr, ptr %i.adk, align 8
  %i.adr = zext i8 %i.ado to i64
  %i.ads = getelementptr inbounds nuw [2 x i8], ptr %i.adq, i64 %i.adr
  %i.adt = load i16, ptr %i.ads, align 2
  %i.adu = and i16 %i.adt, 8192
  %.not304.i = icmp eq i16 %i.adu, 0
  br i1 %.not304.i, label %.critedge7.i, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adp, i64 1 ; 3 uses
  store ptr %i.adv, ptr %i.a, align 8
  %i.adw = load i8, ptr %i.adv, align 1           ; 2 uses
  %.not303.i = icmp eq i8 %i.adw, 0
  br i1 %.not303.i, label %DCH_from_char.exit, label %bb.je, !llvm.loop !13

.critedge7.i:                                     ; preds = %bb.je
  %i.adx = call zeroext i1 @errsave_start(ptr noundef %9, ptr noundef null) #16
  br i1 %i.adx, label %bb.jg, label %DCH_from_char.exit

bb.jg:                                            ; preds = %.critedge7.i
  %i.ady = call i32 @errcode(i32 noundef 117440642) #16 ; 0 uses
  %i.adz = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.240) #16 ; 0 uses
  call void @errsave_finish(ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef 3659, ptr noundef nonnull @__func__.DCH_from_char) #16
  br label %DCH_from_char.exit

.critedge367.i:                                   ; preds = %bb.gp, %bb.go, %bb.gm, %bb.gl, %bb.gi, %bb.gh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %DCH_from_char.exit

DCH_from_char.exit:                               ; preds = %bb.at, %bb.ay, %bb.bd, %bb.bi, %bb.bn, %bb.bs, %bb.bx, %.thread587.i, %bb.cj, %bb.da, %bb.dc, %bb.dj, %bb.dm, %bb.dn, %bb.dr, %bb.dv, %bb.dz, %bb.ed, %bb.ei, %bb.en, %bb.es, %bb.ex, %bb.fc, %bb.fh, %bb.fm, %bb.fr, %bb.fw, %bb.gb, %bb.gu, %bb.gz, %bb.hm, %bb.hz, %bb.im, %bb.iq, %bb.iv, %bb.jf, %bb.x, %bb.y, %bb.al, %bb.am, %bb.aq, %bb.ar, %bb.av, %bb.aw, %bb.ba, %bb.bb, %bb.cs, %bb.ct, %bb.dp, %bb.dq, %bb.dt, %bb.du, %bb.dx, %bb.dy, %bb.eb, %bb.ec, %bb.ek, %bb.el, %bb.ep, %bb.eq, %bb.io, %bb.ip, %.critedge.i, %.preheader.i, %.critedge.thread.i, %bb.jc, %bb.jd, %.critedge7.i, %bb.jg, %.critedge367.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @pfree(ptr noundef %i.z) #16
  %.not240 = icmp eq ptr %9, null
  br i1 %.not240, label %bb.jj, label %bb.jh

bb.jh:                                            ; preds = %DCH_from_char.exit
  %i.aea = load i32, ptr %9, align 4
  %i.aeb = icmp eq i32 %i.aea, 468
  br i1 %i.aeb, label %bb.ji, label %bb.jj

bb.ji:                                            ; preds = %bb.jh
  %i.aec = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.aed = load i8, ptr %i.aec, align 4, !range !4, !noundef !5
  %i.aee = trunc nuw i8 %i.aed to i1
  br i1 %i.aee, label %bb.ns, label %bb.jj

bb.jj:                                            ; preds = %bb.ji, %bb.jh, %DCH_from_char.exit
  br i1 %.not238, label %bb.jl, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.aef = call fastcc i32 @DCH_datetime_type(ptr noundef nonnull %.0194)
  store i32 %i.aef, ptr %8, align 4
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %bb.jj
  %i.aeg = trunc nuw i8 %.0199 to i1
  br i1 %i.aeg, label %.thread, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  call void @pfree(ptr noundef nonnull %.0194) #16
  br label %.thread

.thread:                                          ; preds = %bb.jl, %bb.jm, %VARSIZE_ANY_EXHDR.exit
  %.1200 = phi i8 [ 0, %VARSIZE_ANY_EXHDR.exit ], [ 0, %bb.jm ], [ 1, %bb.jl ] ; 15 uses
  %.3 = phi ptr [ null, %VARSIZE_ANY_EXHDR.exit ], [ null, %bb.jm ], [ %.0194, %bb.jl ] ; 16 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.aei = load i32, ptr %i.aeh, align 4          ; 3 uses
  %.not241 = icmp eq i32 %i.aei, 0
  br i1 %.not241, label %bb.jo, label %bb.jn

bb.jn:                                            ; preds = %.thread
  %i.aej = sdiv i32 %i.aei, 3600
  %i.aek = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.aej, ptr %i.aek, align 8
  %i.ael = srem i32 %i.aei, 3600
  %.lhs.trunc = trunc nsw i32 %i.ael to i16       ; 2 uses
  %i.aem = sdiv i16 %.lhs.trunc, 60
  %.sext = sext i16 %i.aem to i32
  %i.aen = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %.sext, ptr %i.aen, align 4
  %i.aeo = srem i16 %.lhs.trunc, 60
  %.sext291 = sext i16 %i.aeo to i32
  store i32 %.sext291, ptr %4, align 8
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %.thread
  %i.aep = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.aeq = load i32, ptr %i.aep, align 8          ; 2 uses
  %.not242 = icmp eq i32 %i.aeq, 0
  br i1 %.not242, label %bb.jq, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  store i32 %i.aeq, ptr %4, align 8
  br label %bb.jq

bb.jq:                                            ; preds = %bb.jp, %bb.jo
  %i.aer = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.aes = load i32, ptr %i.aer, align 4          ; 2 uses
  %.not243 = icmp eq i32 %i.aes, 0
  br i1 %.not243, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.aet = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.aes, ptr %i.aet, align 4
  br label %bb.js

bb.js:                                            ; preds = %bb.jr, %bb.jq
  %i.aeu = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.aev = load i32, ptr %i.aeu, align 4          ; 2 uses
  %.not244 = icmp eq i32 %i.aev, 0
  br i1 %.not244, label %bb.ju, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.aew = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.aev, ptr %i.aew, align 8
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jt, %bb.js
  %i.aex = getelementptr inbounds nuw i8, ptr %10, i64 76
  %i.aey = load i8, ptr %i.aex, align 4, !range !4, !noundef !5
  %i.aez = trunc nuw i8 %i.aey to i1
  br i1 %i.aez, label %bb.jv, label %bb.kb

bb.jv:                                            ; preds = %bb.ju
  %i.afa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.afb = load i32, ptr %i.afa, align 8          ; 3 uses
  %i.afc = add i32 %i.afb, -13
  %or.cond268 = icmp ult i32 %i.afc, -12
  br i1 %or.cond268, label %bb.jw, label %bb.jy

bb.jw:                                            ; preds = %bb.jv
  %i.afd = call zeroext i1 @errsave_start(ptr noundef %9, ptr noundef null) #16
  br i1 %i.afd, label %bb.jx, label %bb.ns

bb.jx:                                            ; preds = %bb.jw
  %i.afe = call i32 @errcode(i32 noundef 117440642) #16 ; 0 uses
  %i.aff = load i32, ptr %i.afa, align 8
  %i.afg = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.229, i32 noundef %i.aff) #16 ; 0 uses
  %i.afh = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.230) #16 ; 0 uses
  call void @errsave_finish(ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef 4486, ptr noundef nonnull @__func__.do_to_timestamp) #16
  br label %bb.ns

bb.jy:                                            ; preds = %bb.jv
  %i.afi = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.afj = load i32, ptr %i.afi, align 8
  %.not245 = icmp eq i32 %i.afj, 0                ; 2 uses
  %.not246 = icmp eq i32 %i.afb, 12               ; 2 uses
  %or.cond269 = or i1 %.not246, %.not245
  br i1 %or.cond269, label %bb.ka, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.afk = add nuw nsw i32 %i.afb, 12
  br label %.sink.split

bb.ka:                                            ; preds = %bb.jy
  %brmerge.demorgan = and i1 %.not246, %.not245
  br i1 %brmerge.demorgan, label %.sink.split, label %bb.kb

.sink.split:                                      ; preds = %bb.ka, %bb.jz
  %.sink = phi i32 [ %i.afk, %bb.jz ], [ 0, %bb.ka ]
  store i32 %.sink, ptr %i.afa, align 8
  br label %bb.kb

bb.kb:                                            ; preds = %.sink.split, %bb.ka, %bb.ju
  %i.afl = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.afm = load i32, ptr %i.afl, align 4          ; 5 uses
  %.not248 = icmp eq i32 %i.afm, 0
  %i.afn = getelementptr inbounds nuw i8, ptr %10, i64 60 ; 3 uses
  %i.afo = load i32, ptr %i.afn, align 4          ; 6 uses
  br i1 %.not248, label %bb.kp, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.afp = icmp ne i32 %i.afo, 0
  %i.afq = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.afr = load i32, ptr %i.afq, align 8
  %i.afs = icmp slt i32 %i.afr, 3
  %or.cond = select i1 %i.afp, i1 %i.afs, i1 false
  br i1 %or.cond, label %bb.kd, label %.thread284condstore.split

bb.kd:                                            ; preds = %bb.kc
  %i.aft = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.afu = load i32, ptr %i.aft, align 8
  %.not252 = icmp eq i32 %i.afu, 0
  br i1 %.not252, label %bb.kf, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.afv = sub i32 0, %i.afo                      ; 2 uses
  store i32 %i.afv, ptr %i.afn, align 4
  br label %bb.kf

bb.kf:                                            ; preds = %bb.ke, %bb.kd
  %i.afw = phi i32 [ %i.afv, %bb.ke ], [ %i.afo, %bb.kd ] ; 7 uses
  %i.afx = srem i32 %i.afm, 100                   ; 5 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 4 uses
  store i32 %i.afx, ptr %i.afy, align 4
  %.not253 = icmp eq i32 %i.afx, 0
  br i1 %.not253, label %bb.ko, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.afz = icmp sgt i32 %i.afw, -1
  br i1 %i.afz, label %bb.kh, label %bb.kk

bb.kh:                                            ; preds = %bb.kg
  %11 = icmp samesign ugt i32 %i.afw, 21474837
  br i1 %11, label %bb.kj, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %12 = mul nuw i32 %i.afw, 100
  %13 = add i32 %12, -100
  %i.aga = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.afx, i32 %13) ; 2 uses
  %i.agb = extractvalue { i32, i1 } %i.aga, 1
  %i.agc = extractvalue { i32, i1 } %i.aga, 0
  store i32 %i.agc, ptr %i.afy, align 4
  br i1 %i.agb, label %bb.kj, label %.thread284

bb.kj:                                            ; preds = %bb.ki, %bb.kh
  %i.agd = call ptr @text_to_cstring(ptr noundef %0) #16
  call void @DateTimeParseError(i32 noundef -2, ptr noundef null, ptr noundef %i.agd, ptr noundef nonnull @.str.231, ptr noundef %9) #16
  br label %bb.ns

bb.kk:                                            ; preds = %bb.kg
  %14 = icmp samesign ult i32 %i.afw, -21474837
  br i1 %14, label %bb.kn, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %15 = mul i32 %i.afw, 100
  %16 = add i32 %15, 100                          ; 2 uses
  %i.age = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %16, i32 %i.afx)
  %i.agf = extractvalue { i32, i1 } %i.age, 1
  br i1 %i.agf, label %bb.kn, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %17 = sub nsw i32 %16, %i.afx
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %i.afy, align 4
  br label %.thread284

bb.kn:                                            ; preds = %bb.kl, %bb.kk
  %i.agg = call ptr @text_to_cstring(ptr noundef %0) #16
  call void @DateTimeParseError(i32 noundef -2, ptr noundef null, ptr noundef %i.agg, ptr noundef nonnull @.str.231, ptr noundef %9) #16
  br label %bb.ns

bb.ko:                                            ; preds = %bb.kf
  %i.agh = mul i32 %i.afw, 100
  %.lobit = lshr i32 %i.afw, 31
  %i.agi = or disjoint i32 %i.agh, %.lobit
  store i32 %i.agi, ptr %i.afy, align 4
  br label %.thread284

.thread284condstore.split:                        ; preds = %bb.kc
  %i.agj = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  store i32 %i.afm, ptr %i.agj, align 4
  %i.agk = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.agl = load i32, ptr %i.agk, align 8
  %.not251 = icmp ne i32 %i.agl, 0                ; 2 uses
  %i.agm = sub i32 0, %i.afm
  %i.agn = select i1 %.not251, i32 %i.agm, i32 %i.afm ; 3 uses
  %i.ago = icmp slt i32 %i.agn, 0
  %i.agp = or i1 %.not251, %i.ago
  br i1 %i.agp, label %bb.ky, label %.thread284

bb.kp:                                            ; preds = %bb.kb
  %.not249 = icmp eq i32 %i.afo, 0
  br i1 %.not249, label %.thread284, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.agq = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.agr = load i32, ptr %i.agq, align 8
  %.not250 = icmp eq i32 %i.agr, 0
  br i1 %.not250, label %thread-pre-split, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.ags = sub i32 0, %i.afo                      ; 2 uses
  store i32 %i.ags, ptr %i.afn, align 4
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.kq, %bb.kr
  %i.agt = phi i32 [ %i.ags, %bb.kr ], [ %i.afo, %bb.kq ] ; 3 uses
  %i.agu = icmp sgt i32 %i.agt, -1
  br i1 %i.agu, label %bb.ks, label %bb.kv

bb.ks:                                            ; preds = %thread-pre-split
  %i.agv = add nsw i32 %i.agt, -1
  %i.agw = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.agx = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i.agv, i32 100) ; 2 uses
  %i.agy = extractvalue { i32, i1 } %i.agx, 1
  %i.agz = extractvalue { i32, i1 } %i.agx, 0     ; 2 uses
  store i32 %i.agz, ptr %i.agw, align 4
  br i1 %i.agy, label %bb.ku, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.aha = or disjoint i32 %i.agz, 1
  store i32 %i.aha, ptr %i.agw, align 4
  br label %.thread284

bb.ku:                                            ; preds = %bb.ks
  %i.ahb = call ptr @text_to_cstring(ptr noundef %0) #16
  call void @DateTimeParseError(i32 noundef -2, ptr noundef null, ptr noundef %i.ahb, ptr noundef nonnull @.str.231, ptr noundef %9) #16
  br label %bb.ns

bb.kv:                                            ; preds = %thread-pre-split
  %i.ahc = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.ahd = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i.agt, i32 100) ; 2 uses
  %i.ahe = extractvalue { i32, i1 } %i.ahd, 1
  %i.ahf = extractvalue { i32, i1 } %i.ahd, 0     ; 2 uses
  store i32 %i.ahf, ptr %i.ahc, align 4
  br i1 %i.ahe, label %bb.kx, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.ahg = or disjoint i32 %i.ahf, 1
  store i32 %i.ahg, ptr %i.ahc, align 4
  br label %.thread284

bb.kx:                                            ; preds = %bb.kv
  %i.ahh = call ptr @text_to_cstring(ptr noundef %0) #16
  call void @DateTimeParseError(i32 noundef -2, ptr noundef null, ptr noundef %i.ahh, ptr noundef nonnull @.str.231, ptr noundef %9) #16
  br label %bb.ns

bb.ky:                                            ; preds = %.thread284condstore.split
  %.lobit292 = lshr i32 %i.agn, 31
  %simplifycfg.merge = add nsw i32 %.lobit292, %i.agn
  store i32 %simplifycfg.merge, ptr %i.agj, align 4
  br label %.thread284

.thread284:                                       ; preds = %bb.km, %bb.kt, %bb.kw, %bb.ky, %.thread284condstore.split, %bb.ki, %bb.ko, %bb.kp
  %.0202 = phi i32 [ 0, %bb.kp ], [ 4, %bb.ko ], [ 4, %bb.kt ], [ 4, %bb.km ], [ 4, %bb.ki ], [ 4, %bb.kw ], [ 4, %.thread284condstore.split ], [ 4, %bb.ky ]
  %i.ahi = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.ahj = load i32, ptr %i.ahi, align 8          ; 2 uses
  %.not254 = icmp eq i32 %i.ahj, 0
  br i1 %.not254, label %bb.la, label %bb.kz

bb.kz:                                            ; preds = %.thread284
  %i.ahk = getelementptr inbounds nuw i8, ptr %4, i64 20
  call void @j2date(i32 noundef %i.ahj, ptr noundef nonnull %i.ahk, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #16
  br label %bb.la

bb.la:                                            ; preds = %bb.kz, %.thread284
  %.1203 = phi i32 [ 14, %bb.kz ], [ %.0202, %.thread284 ] ; 2 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %10, i64 52
  %i.ahm = load i32, ptr %i.ahl, align 4          ; 4 uses
  %.not255 = icmp eq i32 %i.ahm, 0
  br i1 %.not255, label %bb.lj, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.ahn = load i32, ptr %10, align 8
  %i.aho = icmp eq i32 %i.ahn, 2
  br i1 %i.aho, label %bb.lc, label %bb.lf

bb.lc:                                            ; preds = %bb.lb
  %i.ahp = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ahq = load i32, ptr %i.ahp, align 8          ; 2 uses
  %.not256 = icmp eq i32 %i.ahq, 0
  %i.ahr = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  br i1 %.not256, label %bb.le, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  call void @isoweekdate2date(i32 noundef %i.ahm, i32 noundef %i.ahq, ptr noundef nonnull %i.ahr, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #16
  br label %bb.lj

bb.le:                                            ; preds = %bb.lc
  call void @isoweek2date(i32 noundef %i.ahm, ptr noundef nonnull %i.ahr, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #16
  br label %bb.lj

bb.lf:                                            ; preds = %bb.lb
  %i.ahs = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.aht = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ahm, i32 -1) ; 2 uses
  %i.ahu = extractvalue { i32, i1 } %i.aht, 1
  %i.ahv = extractvalue { i32, i1 } %i.aht, 0     ; 2 uses
  store i32 %i.ahv, ptr %i.ahs, align 8
  br i1 %i.ahu, label %bb.li, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.ahw = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i.ahv, i32 7) ; 2 uses
  %i.ahx = extractvalue { i32, i1 } %i.ahw, 1
  %i.ahy = extractvalue { i32, i1 } %i.ahw, 0     ; 2 uses
  store i32 %i.ahy, ptr %i.ahs, align 8
  br i1 %i.ahx, label %bb.li, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.ahz = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ahy, i32 1) ; 2 uses
  %i.aia = extractvalue { i32, i1 } %i.ahz, 1
  %i.aib = extractvalue { i32, i1 } %i.ahz, 0
  store i32 %i.aib, ptr %i.ahs, align 8
  br i1 %i.aia, label %bb.li, label %bb.lj

bb.li:                                            ; preds = %bb.lh, %bb.lg, %bb.lf
  call void @DateTimeParseError(i32 noundef -2, ptr noundef null, ptr noundef %i.f, ptr noundef nonnull @.str.231, ptr noundef %9) #16
  br label %bb.ns

bb.lj:                                            ; preds = %bb.ld, %bb.le, %bb.lh, %bb.la
  %.2204 = phi i32 [ %.1203, %bb.la ], [ %.1203, %bb.lh ], [ 14, %bb.le ], [ 14, %bb.ld ] ; 2 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.aid = load i32, ptr %i.aic, align 8          ; 2 uses
  %.not257 = icmp eq i32 %i.aid, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %10, i64 28 ; 4 uses
  br i1 %.not257, label %._crit_edge, label %bb.lk

._crit_edge:                                      ; preds = %bb.lj
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.lo

bb.lk:                                            ; preds = %bb.lj
  %i.aie = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.aid, i32 -1) ; 2 uses
  %i.aif = extractvalue { i32, i1 } %i.aie, 1
  %i.aig = extractvalue { i32, i1 } %i.aie, 0     ; 2 uses
  store i32 %i.aig, ptr %.phi.trans.insert, align 4
  br i1 %i.aif, label %bb.ln, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %i.aih = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i.aig, i32 7) ; 2 uses
  %i.aii = extractvalue { i32, i1 } %i.aih, 1
  %i.aij = extractvalue { i32, i1 } %i.aih, 0     ; 2 uses
  store i32 %i.aij, ptr %.phi.trans.insert, align 4
  br i1 %i.aii, label %bb.ln, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.aik = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.aij, i32 1) ; 2 uses
  %i.ail = extractvalue { i32, i1 } %i.aik, 1
  %i.aim = extractvalue { i32, i1 } %i.aik, 0     ; 2 uses
  store i32 %i.aim, ptr %.phi.trans.insert, align 4
  br i1 %i.ail, label %bb.ln, label %bb.lo

bb.ln:                                            ; preds = %bb.lm, %bb.ll, %bb.lk
  call void @DateTimeParseError(i32 noundef -2, ptr noundef null, ptr noundef %i.f, ptr noundef nonnull @.str.231, ptr noundef %9) #16
  br label %bb.ns

bb.lo:                                            ; preds = %._crit_edge, %bb.lm
  %i.ain = phi i32 [ %.pre, %._crit_edge ], [ %i.aim, %bb.lm ] ; 2 uses
  %.not258 = icmp eq i32 %i.ain, 0
  br i1 %.not258, label %bb.lq, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  store i32 %i.ain, ptr %i.h, align 4
  %i.aio = or i32 %.2204, 8
  br label %bb.lq

bb.lq:                                            ; preds = %bb.lp, %bb.lo
  %.3205 = phi i32 [ %i.aio, %bb.lp ], [ %.2204, %bb.lo ] ; 2 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %10, i64 36
  %i.aiq = load i32, ptr %i.aip, align 4          ; 2 uses
  %.not259 = icmp eq i32 %i.aiq, 0
  br i1 %.not259, label %bb.ls, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  store i32 %i.aiq, ptr %i.g, align 8
  %i.air = or i32 %.3205, 2
  br label %bb.ls

bb.ls:                                            ; preds = %bb.lr, %bb.lq
  %.4206 = phi i32 [ %i.air, %bb.lr ], [ %.3205, %bb.lq ] ; 4 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ait = load i32, ptr %i.ais, align 8          ; 14 uses
  %.not260 = icmp eq i32 %i.ait, 0
  br i1 %.not260, label %bb.mu, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %i.aiu = load i32, ptr %i.g, align 8
  %i.aiv = icmp slt i32 %i.aiu, 2                 ; 2 uses
  br i1 %i.aiv, label %bb.lv, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.aiw = load i32, ptr %i.h, align 4
  %i.aix = icmp slt i32 %i.aiw, 2
  br i1 %i.aix, label %bb.lv, label %bb.mu

bb.lv:                                            ; preds = %bb.lu, %bb.lt
  %i.aiy = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.aiz = load i32, ptr %i.aiy, align 4          ; 5 uses
  %i.aja = icmp ne i32 %i.aiz, 0
  %i.ajb = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ajc = load i32, ptr %i.ajb, align 8
  %i.ajd = icmp ne i32 %i.ajc, 0
  %or.cond5 = select i1 %i.aja, i1 true, i1 %i.ajd
  br i1 %or.cond5, label %bb.ly, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.aje = call zeroext i1 @errsave_start(ptr noundef %9, ptr noundef null) #16
  br i1 %i.aje, label %bb.lx, label %bb.ns

bb.lx:                                            ; preds = %bb.lw
  %i.ajf = call i32 @errcode(i32 noundef 117440642) #16 ; 0 uses
  %i.ajg = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.232) #16 ; 0 uses
  call void @errsave_finish(ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef 4663, ptr noundef nonnull @__func__.do_to_timestamp) #16
  br label %bb.ns

bb.ly:                                            ; preds = %bb.lv
  %i.ajh = load i32, ptr %10, align 8
  %i.aji = icmp eq i32 %i.ajh, 2
  br i1 %i.aji, label %bb.lz, label %bb.ma

bb.lz:                                            ; preds = %bb.ly
  %i.ajj = call i32 @isoweek2j(i32 noundef %i.aiz, i32 noundef 1) #16
  %i.ajk = add i32 %i.ajj, -1
  %i.ajl = load i32, ptr %i.ais, align 8
  %i.ajm = add i32 %i.ajk, %i.ajl
  call void @j2date(i32 noundef %i.ajm, ptr noundef nonnull %i.aiy, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #16
  %i.ajn = or i32 %.4206, 14
  br label %bb.mu

bb.ma:                                            ; preds = %bb.ly
  %i.ajo = and i32 %i.aiz, 3
  %i.ajp = icmp eq i32 %i.ajo, 0
  br i1 %i.ajp, label %bb.mb, label %bb.md

bb.mb:                                            ; preds = %bb.ma
  %i.ajq = srem i32 %i.aiz, 100
  %.not261 = icmp eq i32 %i.ajq, 0
  br i1 %.not261, label %bb.mc, label %bb.md

bb.mc:                                            ; preds = %bb.mb
  %i.ajr = srem i32 %i.aiz, 400
  %i.ajs = icmp eq i32 %i.ajr, 0
  %i.ajt = zext i1 %i.ajs to i64
  br label %bb.md

bb.md:                                            ; preds = %bb.mb, %bb.mc, %bb.ma
  %i.aju = phi i64 [ 0, %bb.ma ], [ 1, %bb.mb ], [ %i.ajt, %bb.mc ]
  %i.ajv = getelementptr inbounds nuw [52 x i8], ptr @do_to_timestamp.ysum, i64 %i.aju ; 13 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 4
  %i.ajx = load i32, ptr %i.ajw, align 4
  %.not262 = icmp sgt i32 %i.ait, %i.ajx
  br i1 %.not262, label %bb.me, label %bb.mp

bb.me:                                            ; preds = %bb.md
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajv, i64 8
  %i.ajz = load i32, ptr %i.ajy, align 4
  %.not262.1 = icmp sgt i32 %i.ait, %i.ajz
  br i1 %.not262.1, label %bb.mf, label %bb.mp

bb.mf:                                            ; preds = %bb.me
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajv, i64 12
  %i.akb = load i32, ptr %i.aka, align 4
  %.not262.2 = icmp sgt i32 %i.ait, %i.akb
  br i1 %.not262.2, label %bb.mg, label %bb.mp

bb.mg:                                            ; preds = %bb.mf
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ajv, i64 16
  %i.akd = load i32, ptr %i.akc, align 4
  %.not262.3 = icmp sgt i32 %i.ait, %i.akd
  br i1 %.not262.3, label %bb.mh, label %bb.mp

bb.mh:                                            ; preds = %bb.mg
  %i.ake = getelementptr inbounds nuw i8, ptr %i.ajv, i64 20
  %i.akf = load i32, ptr %i.ake, align 4
  %.not262.4 = icmp sgt i32 %i.ait, %i.akf
  br i1 %.not262.4, label %bb.mi, label %bb.mp

bb.mi:                                            ; preds = %bb.mh
  %i.akg = getelementptr inbounds nuw i8, ptr %i.ajv, i64 24
  %i.akh = load i32, ptr %i.akg, align 4
  %.not262.5 = icmp sgt i32 %i.ait, %i.akh
  br i1 %.not262.5, label %bb.mj, label %bb.mp

bb.mj:                                            ; preds = %bb.mi
  %i.aki = getelementptr inbounds nuw i8, ptr %i.ajv, i64 28
  %i.akj = load i32, ptr %i.aki, align 4
  %.not262.6 = icmp sgt i32 %i.ait, %i.akj
  br i1 %.not262.6, label %bb.mk, label %bb.mp

bb.mk:                                            ; preds = %bb.mj
  %i.akk = getelementptr inbounds nuw i8, ptr %i.ajv, i64 32
  %i.akl = load i32, ptr %i.akk, align 4
  %.not262.7 = icmp sgt i32 %i.ait, %i.akl
  br i1 %.not262.7, label %bb.ml, label %bb.mp

bb.ml:                                            ; preds = %bb.mk
  %i.akm = getelementptr inbounds nuw i8, ptr %i.ajv, i64 36
  %i.akn = load i32, ptr %i.akm, align 4
  %.not262.8 = icmp sgt i32 %i.ait, %i.akn
  br i1 %.not262.8, label %bb.mm, label %bb.mp

bb.mm:                                            ; preds = %bb.ml
  %i.ako = getelementptr inbounds nuw i8, ptr %i.ajv, i64 40
  %i.akp = load i32, ptr %i.ako, align 4
  %.not262.9 = icmp sgt i32 %i.ait, %i.akp
  br i1 %.not262.9, label %bb.mn, label %bb.mp

bb.mn:                                            ; preds = %bb.mm
  %i.akq = getelementptr inbounds nuw i8, ptr %i.ajv, i64 44
  %i.akr = load i32, ptr %i.akq, align 4
  %.not262.10 = icmp sgt i32 %i.ait, %i.akr
  br i1 %.not262.10, label %bb.mo, label %bb.mp

bb.mo:                                            ; preds = %bb.mn
  %i.aks = getelementptr inbounds nuw i8, ptr %i.ajv, i64 48
  %i.akt = load i32, ptr %i.aks, align 4
  %.not262.11 = icmp sgt i32 %i.ait, %i.akt
  %spec.select417 = select i1 %.not262.11, i32 13, i32 12
  br label %bb.mp

bb.mp:                                            ; preds = %bb.mo, %bb.mn, %bb.mm, %bb.ml, %bb.mk, %bb.mj, %bb.mi, %bb.mh, %bb.mg, %bb.mf, %bb.me, %bb.md
  %.0.lcssa = phi i32 [ 1, %bb.md ], [ 7, %bb.mj ], [ 2, %bb.me ], [ %spec.select417, %bb.mo ], [ 3, %bb.mf ], [ 9, %bb.ml ], [ 4, %bb.mg ], [ 11, %bb.mn ], [ 5, %bb.mh ], [ 8, %bb.mk ], [ 6, %bb.mi ], [ 10, %bb.mm ] ; 2 uses
  br i1 %i.aiv, label %bb.mq, label %bb.mr

bb.mq:                                            ; preds = %bb.mp
  store i32 %.0.lcssa, ptr %i.g, align 8
  br label %bb.mr

bb.mr:                                            ; preds = %bb.mq, %bb.mp
  %i.aku = load i32, ptr %i.h, align 4
  %i.akv = icmp slt i32 %i.aku, 2
  br i1 %i.akv, label %bb.ms, label %bb.mt

bb.ms:                                            ; preds = %bb.mr
  %i.akw = zext nneg i32 %.0.lcssa to i64
  %i.akx = getelementptr [4 x i8], ptr %i.ajv, i64 %i.akw
  %i.aky = getelementptr i8, ptr %i.akx, i64 -4
  %i.akz = load i32, ptr %i.aky, align 4
  %i.ala = sub i32 %i.ait, %i.akz
  store i32 %i.ala, ptr %i.h, align 4
  br label %bb.mt

bb.mt:                                            ; preds = %bb.ms, %bb.mr
  %i.alb = or i32 %.4206, 10
  br label %bb.mu

bb.mu:                                            ; preds = %bb.lz, %bb.mt, %bb.lu, %bb.ls
  %.5 = phi i32 [ %i.ajn, %bb.lz ], [ %i.alb, %bb.mt ], [ %.4206, %bb.lu ], [ %.4206, %bb.ls ] ; 2 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.ald = load i32, ptr %i.alc, align 8          ; 3 uses
  %.not263 = icmp eq i32 %i.ald, 0
  br i1 %.not263, label %.thread286, label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  %19 = add i32 %i.ald, -2147484
  %20 = icmp ult i32 %19, -4294967
  br i1 %20, label %bb.mx, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  %21 = mul nsw i32 %i.ald, 1000
  %i.ale = load i32, ptr %5, align 4
  %i.alf = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ale, i32 %21) ; 2 uses
  %i.alg = extractvalue { i32, i1 } %i.alf, 1
  %i.alh = extractvalue { i32, i1 } %i.alf, 0
  store i32 %i.alh, ptr %5, align 4
  br i1 %i.alg, label %bb.mx, label %.thread286

bb.mx:                                            ; preds = %bb.mv, %bb.mw
  call void @DateTimeParseError(i32 noundef -2, ptr noundef null, ptr noundef %i.f, ptr noundef nonnull @.str.231, ptr noundef %9) #16
  br label %bb.ns

.thread286:                                       ; preds = %bb.mw, %bb.mu
  %i.ali = getelementptr inbounds nuw i8, ptr %10, i64 68
  %i.alj = load i32, ptr %i.ali, align 4          ; 2 uses
  %.not264 = icmp eq i32 %i.alj, 0
  br i1 %.not264, label %bb.mz, label %bb.my

bb.my:                                            ; preds = %.thread286
  %i.alk = load i32, ptr %5, align 4
  %i.all = add i32 %i.alk, %i.alj
  store i32 %i.all, ptr %5, align 4
  br label %bb.mz

bb.mz:                                            ; preds = %bb.my, %.thread286
  br i1 %.not, label %bb.nb, label %bb.na

bb.na:                                            ; preds = %bb.mz
  %i.alm = getelementptr inbounds nuw i8, ptr %10, i64 92
  %i.aln = load i32, ptr %i.alm, align 4
  store i32 %i.aln, ptr %7, align 4
  br label %bb.nb

bb.nb:                                            ; preds = %bb.na, %bb.mz
  %.not265 = icmp eq i32 %.5, 0
  br i1 %.not265, label %.thread288, label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  %i.alo = call i32 @ValidateDate(i32 noundef %.5, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull %4) #16
  %.not266 = icmp eq i32 %i.alo, 0
  br i1 %.not266, label %.thread288, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  call void @DateTimeParseError(i32 noundef -2, ptr noundef null, ptr noundef %i.f, ptr noundef nonnull @.str.231, ptr noundef %9) #16
  br label %bb.ns

.thread288:                                       ; preds = %bb.nc, %bb.nb
  %i.alp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.alq = load i32, ptr %i.alp, align 8
  %or.cond273 = icmp ugt i32 %i.alq, 23
  br i1 %or.cond273, label %bb.nh, label %bb.ne

bb.ne:                                            ; preds = %.thread288
  %i.alr = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.als = load i32, ptr %i.alr, align 4
  %or.cond274 = icmp ugt i32 %i.als, 59
  br i1 %or.cond274, label %bb.nh, label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  %i.alt = load i32, ptr %4, align 8
  %or.cond275 = icmp ugt i32 %i.alt, 59
  br i1 %or.cond275, label %bb.nh, label %bb.ng

bb.ng:                                            ; preds = %bb.nf
  %i.alu = load i32, ptr %5, align 4
  %i.alv = icmp ugt i32 %i.alu, 999999
  br i1 %i.alv, label %bb.nh, label %bb.ni

bb.nh:                                            ; preds = %bb.ng, %bb.nf, %bb.ne, %.thread288
  call void @DateTimeParseError(i32 noundef -2, ptr noundef null, ptr noundef %i.f, ptr noundef nonnull @.str.231, ptr noundef %9) #16
  br label %bb.ns

bb.ni:                                            ; preds = %bb.ng
  %i.alw = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.alx = load i32, ptr %i.alw, align 8          ; 2 uses
  %.not267 = icmp eq i32 %i.alx, 0
  br i1 %.not267, label %bb.nn, label %bb.nj

bb.nj:                                            ; preds = %bb.ni
  %i.aly = getelementptr inbounds nuw i8, ptr %10, i64 84
  %i.alz = load i32, ptr %i.aly, align 4          ; 2 uses
  %or.cond8 = icmp ugt i32 %i.alz, 15
  %i.ama = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.amb = load i32, ptr %i.ama, align 8          ; 2 uses
  %i.amc = icmp ugt i32 %i.amb, 59
  %or.cond14 = select i1 %or.cond8, i1 true, i1 %i.amc
  br i1 %or.cond14, label %bb.nk, label %bb.nl

bb.nk:                                            ; preds = %bb.nj
  call void @DateTimeParseError(i32 noundef -5, ptr noundef null, ptr noundef %i.f, ptr noundef nonnull @.str.231, ptr noundef %9) #16
  br label %bb.ns

bb.nl:                                            ; preds = %bb.nj
  store i8 1, ptr %6, align 4
  %i.amd = mul nuw nsw i32 %i.alz, 60
  %i.ame = add nuw nsw i32 %i.amd, %i.amb
  %i.amf = mul nuw nsw i32 %i.ame, 60             ; 2 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  store i32 %i.amf, ptr %i.amg, align 4
  %i.amh = icmp sgt i32 %i.alx, 0
  br i1 %i.amh, label %bb.nm, label %bb.nr

bb.nm:                                            ; preds = %bb.nl
  %i.ami = sub nsw i32 0, %i.amf
  store i32 %i.ami, ptr %i.amg, align 4
  br label %bb.nr

bb.nn:                                            ; preds = %bb.ni
  %i.amj = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.amk = load i8, ptr %i.amj, align 8, !range !4, !noundef !5
  %i.aml = trunc nuw i8 %i.amk to i1
  br i1 %i.aml, label %bb.no, label %bb.nr

bb.no:                                            ; preds = %bb.nn
  store i8 1, ptr %6, align 4
  %i.amm = getelementptr inbounds nuw i8, ptr %10, i64 104
  %i.amn = load ptr, ptr %i.amm, align 8          ; 2 uses
  %i.amo = icmp eq ptr %i.amn, null
  %i.amp = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  br i1 %i.amo, label %bb.np, label %bb.nq

bb.np:                                            ; preds = %bb.no
  %i.amq = getelementptr inbounds nuw i8, ptr %10, i64 100
  %i.amr = load i32, ptr %i.amq, align 4
  %i.ams = sub i32 0, %i.amr
  store i32 %i.ams, ptr %i.amp, align 4
  br label %bb.nr

bb.nq:                                            ; preds = %bb.no
  %i.amt = getelementptr inbounds nuw i8, ptr %10, i64 112
  %i.amu = load ptr, ptr %i.amt, align 8
  %i.amv = call i32 @DetermineTimeZoneAbbrevOffset(ptr noundef nonnull %4, ptr noundef %i.amu, ptr noundef nonnull %i.amn) #16
  store i32 %i.amv, ptr %i.amp, align 4
  br label %bb.nr

bb.nr:                                            ; preds = %bb.nn, %bb.nq, %bb.np, %bb.nl, %bb.nm
  %i.amw = icmp eq ptr %.3, null
  %i.amx = trunc nuw i8 %.1200 to i1
  %or.cond16 = or i1 %i.amw, %i.amx
  br i1 %or.cond16, label %bb.nt, label %.sink.split418

bb.ns:                                            ; preds = %bb.nd, %bb.mx, %bb.kj, %bb.kn, %bb.ji, %bb.lw, %bb.lx, %bb.jw, %bb.jx, %bb.nk, %bb.nh, %bb.ln, %bb.li, %bb.kx, %bb.ku
  %.2201 = phi i8 [ %.1200, %bb.lw ], [ %.1200, %bb.ln ], [ %.1200, %bb.nh ], [ %.1200, %bb.nk ], [ %.1200, %bb.nd ], [ %.1200, %bb.mx ], [ %.1200, %bb.jw ], [ %.1200, %bb.li ], [ %.0199, %bb.ji ], [ %.1200, %bb.ku ], [ %.1200, %bb.kx ], [ %.1200, %bb.jx ], [ %.1200, %bb.lx ], [ %.1200, %bb.kn ], [ %.1200, %bb.kj ]
  %.4 = phi ptr [ %.3, %bb.lw ], [ %.3, %bb.ln ], [ %.3, %bb.nh ], [ %.3, %bb.nk ], [ %.3, %bb.nd ], [ %.3, %bb.mx ], [ %.3, %bb.jw ], [ %.3, %bb.li ], [ %.0194, %bb.ji ], [ %.3, %bb.ku ], [ %.3, %bb.kx ], [ %.3, %bb.jx ], [ %.3, %bb.lx ], [ %.3, %bb.kn ], [ %.3, %bb.kj ] ; 2 uses
  %i.amy = icmp eq ptr %.4, null
  %i.amz = trunc nuw i8 %.2201 to i1
  %or.cond18 = select i1 %i.amy, i1 true, i1 %i.amz
  br i1 %or.cond18, label %bb.nt, label %.sink.split418

.sink.split418:                                   ; preds = %bb.ns, %bb.nr
  %.4.sink = phi ptr [ %.3, %bb.nr ], [ %.4, %bb.ns ]
  %.0193.ph = phi i1 [ true, %bb.nr ], [ false, %bb.ns ]
  call void @pfree(ptr noundef nonnull %.4.sink) #16
  br label %bb.nt

bb.nt:                                            ; preds = %.sink.split418, %bb.ns, %bb.nr
  %.0193 = phi i1 [ true, %bb.nr ], [ false, %bb.ns ], [ %.0193.ph, %.sink.split418 ]
  call void @pfree(ptr noundef %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  ret i1 %.0193
}

declare i32 @DetermineTimeZoneOffset(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @tm2timestamp(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @AdjustTimestampForTypmod(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2451545, 2145031949) i64 @to_date(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.pg_tm, align 8              ; 8 uses
  %2 = alloca %struct.fmt_tz, align 4             ; 3 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.d) #16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i64, ptr %i.f, align 8
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.h) #16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.l = call fastcc zeroext i1 @do_to_timestamp(ptr noundef %i.e, ptr noundef %i.i, i32 noundef %i.k, i1 noundef zeroext false, ptr noundef %1, ptr noundef %i.a, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.n = load i32, ptr %i.m, align 4              ; 5 uses
  %i.o = icmp sgt i32 %i.n, -4713
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = icmp eq i32 %i.n, -4713
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %i.s = icmp sgt i32 %i.r, 10
  %or.cond = select i1 %i.p, i1 %i.s, i1 false
  br i1 %or.cond, label %.thread, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.t = icmp slt i32 %i.n, 5874898
end_hunk_0
