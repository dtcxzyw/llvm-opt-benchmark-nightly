Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/http_fopen_wrapper?download=true
inline.NumInlined: 5
inline.NumDeleted: 2
begin_hunk_0_@php_stream_url_wrap_http_ex:bb.a

bb.kw:                                            ; preds = %.thread94, %bb.kv
  br i1 %i.dx, label %bb.kx, label %bb.kz

bb.kx:                                            ; preds = %bb.kw
  %i.aox = load ptr, ptr %4, align 8, !tbaa !36
  %.not881 = icmp eq ptr %i.aox, null
  br i1 %.not881, label %bb.kz, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  call void @php_stream_notification_notify(ptr noundef nonnull %4, i32 noundef 9, i32 noundef 2, ptr noundef nonnull %i.e, i32 noundef %.16999297, i64 noundef 0, i64 noundef 0, ptr noundef null) #18
  br label %bb.kz

bb.kz:                                            ; preds = %bb.kq, %bb.ku, %bb.kt, %bb.ks, %bb.ky, %bb.kx, %bb.kw
  %.169993 = phi i32 [ %.16999297, %bb.kw ], [ 403, %bb.ku ], [ 403, %bb.kt ], [ 403, %bb.ks ], [ %.16999297, %bb.ky ], [ %.16999297, %bb.kx ], [ %.1699, %bb.kq ] ; 3 uses
  %.1733.shrunk = phi i1 [ %or.cond50, %bb.kw ], [ %or.cond50, %bb.ku ], [ %or.cond50, %bb.kt ], [ %or.cond50, %bb.ks ], [ %or.cond50, %bb.ky ], [ %or.cond50, %bb.kx ], [ true, %bb.kq ]
  %i.aoy = load i64, ptr %i.h, align 8, !tbaa !37 ; 4 uses
  %.not883 = icmp eq i64 %i.aoy, 0
  br i1 %.not883, label %bb.le, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.aoz = getelementptr i8, ptr %i.e, i64 %i.aoy ; 2 uses
  %i.apa = getelementptr i8, ptr %i.aoz, i64 -1
  %i.apb = load i8, ptr %i.apa, align 1, !tbaa !13
  %i.apc = icmp eq i8 %i.apb, 10
  br i1 %i.apc, label %bb.lb, label %bb.le

bb.lb:                                            ; preds = %bb.la
  %i.apd = add i64 %i.aoy, -1                     ; 3 uses
  store i64 %i.apd, ptr %i.h, align 8, !tbaa !37
  %.not884 = icmp eq i64 %i.apd, 0
  br i1 %.not884, label %bb.lf, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.ape = getelementptr i8, ptr %i.aoz, i64 -2
  %i.apf = load i8, ptr %i.ape, align 1, !tbaa !13
  %i.apg = icmp eq i8 %i.apf, 13
  br i1 %i.apg, label %bb.ld, label %bb.lf

bb.ld:                                            ; preds = %bb.lc
  %i.aph = add i64 %i.aoy, -2                     ; 2 uses
  store i64 %i.aph, ptr %i.h, align 8, !tbaa !37
  br label %bb.lf

bb.le:                                            ; preds = %bb.la, %bb.kz
  %i.api = call ptr @_php_stream_get_line(ptr noundef nonnull %.3676, ptr noundef null, i64 noundef 0, ptr noundef null) #18
  call void @_efree(ptr noundef %i.api) #18
  %.pre344 = load i64, ptr %i.h, align 8, !tbaa !37
  br label %bb.lf

bb.lf:                                            ; preds = %bb.le, %bb.ld, %bb.lc, %bb.lb
  %i.apj = phi i64 [ 0, %bb.lb ], [ %i.apd, %bb.lc ], [ %i.aph, %bb.ld ], [ %.pre344, %bb.le ] ; 4 uses
  %i.apk = and i64 %i.apj, -8
  %i.apl = add i64 %i.apk, 32
  %i.apm = call noalias ptr @_emalloc(i64 noundef %i.apl) #20 ; 6 uses
  store i32 1, ptr %i.apm, align 4, !tbaa !15
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apm, i64 4
  store i32 22, ptr %i.apn, align 4, !tbaa !13
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apm, i64 8
  store i64 0, ptr %i.apo, align 8, !tbaa !95
  %i.app = getelementptr inbounds nuw i8, ptr %i.apm, i64 16
  store i64 %i.apj, ptr %i.app, align 8, !tbaa !20
  %i.apq = getelementptr inbounds nuw i8, ptr %i.apm, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.apq, ptr nonnull align 16 %i.e, i64 %i.apj, i1 false)
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apq, i64 %i.apj
  store i8 0, ptr %i.apr, align 1, !tbaa !13
  store ptr %i.apm, ptr %15, align 8, !tbaa !13
  %i.aps = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 262, ptr %i.aps, align 8, !tbaa !13
  %i.apt = load ptr, ptr %7, align 8, !tbaa !13
  %i.apu = call ptr @zend_hash_next_index_insert(ptr noundef %i.apt, ptr noundef nonnull %15) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  %i.apv = call zeroext i1 @_php_stream_eof(ptr noundef nonnull %.3676) #18
  br i1 %i.apv, label %.loopexit.thread, label %.lr.ph168

.thread98:                                        ; preds = %bb.kf, %bb.kg
  %i.apw = call i32 @_php_stream_free(ptr noundef nonnull %.3676, i32 noundef 3) #18 ; 0 uses
  call void (ptr, i32, ptr, ...) @php_stream_wrapper_log_error(ptr noundef %0, i32 noundef %3, ptr noundef nonnull @.str.52) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  br label %bb.nw

.lr.ph168:                                        ; preds = %bb.lf
  %i.apx = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.lg

bb.lg:                                            ; preds = %.lr.ph168, %.critedge942
  %.0724166 = phi ptr [ null, %.lr.ph168 ], [ %.3727, %.critedge942 ] ; 5 uses
  %.0729165 = phi ptr [ null, %.lr.ph168 ], [ %i.apy, %.critedge942 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #18
  %.not885 = icmp eq ptr %.0729165, null
  br i1 %.not885, label %bb.li, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  call void @_efree(ptr noundef nonnull %.0729165) #18
  br label %bb.li

bb.li:                                            ; preds = %bb.lh, %bb.lg
  %i.apy = call ptr @_php_stream_get_line(ptr noundef nonnull %.3676, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.i) #18 ; 10 uses
  %.not886 = icmp eq ptr %i.apy, null
  br i1 %.not886, label %.loopexit, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.apz = load i8, ptr %i.apy, align 1, !tbaa !13 ; 2 uses
  switch i8 %i.apz, label %.thread104 [
    i8 13, label %bb.lk
    i8 10, label %bb.lm
  ]

bb.lk:                                            ; preds = %bb.lj
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apy, i64 1
  %i.aqb = load i8, ptr %i.aqa, align 1, !tbaa !13
  %.not887 = icmp eq i8 %i.aqb, 10
  br i1 %.not887, label %bb.lm, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %i.aqc = call i32 @_php_stream_free(ptr noundef nonnull %.3676, i32 noundef 3) #18 ; 0 uses
  call void (ptr, i32, ptr, ...) @php_stream_wrapper_log_error(ptr noundef %0, i32 noundef %3, ptr noundef nonnull @.str.53) #18
  br label %.critedge942.thread120

bb.lm:                                            ; preds = %bb.lj, %bb.lk
  %.not888 = icmp eq ptr %.0724166, null
  br i1 %.not888, label %.loopexit.thread536, label %bb.ln

.thread104:                                       ; preds = %bb.lj
  %.not888106 = icmp eq ptr %.0724166, null
  br i1 %.not888106, label %bb.lq, label %bb.ln

bb.ln:                                            ; preds = %.thread104, %bb.lm
  %.0670108 = phi i1 [ false, %.thread104 ], [ true, %bb.lm ]
  %i.aqd = call fastcc ptr @php_stream_http_response_headers_parse(ptr noundef %0, ptr noundef nonnull %.3676, ptr noundef %4, i32 noundef %3, ptr noundef %.0724166, ptr noundef nonnull %i.apy, ptr noundef nonnull %i.i, i32 noundef %.169993, ptr noundef %7, ptr noundef %9) ; 2 uses
  %i.aqe = icmp eq ptr %i.aqd, null
  br i1 %i.aqe, label %bb.lo, label %.critedge942, !prof !22, !llvm.loop !52

bb.lo:                                            ; preds = %bb.ln
  %i.aqf = load i8, ptr %i.apx, align 8, !tbaa !38, !range !101, !noundef !59
  %i.aqg = trunc nuw i8 %i.aqf to i1
  br i1 %i.aqg, label %bb.lp, label %bb.ls, !prof !29

bb.lp:                                            ; preds = %bb.lo
  %i.aqh = call i32 @_php_stream_free(ptr noundef nonnull %.3676, i32 noundef 3) #18 ; 0 uses
  br label %.critedge942.thread120

bb.lq:                                            ; preds = %.thread104
  switch i8 %i.apz, label %.thread113 [
    i8 32, label %bb.lr
    i8 9, label %bb.lr
  ]

bb.lr:                                            ; preds = %bb.lq, %bb.lq
  %i.aqi = call i32 @_php_stream_free(ptr noundef nonnull %.3676, i32 noundef 3) #18 ; 0 uses
  call void (ptr, i32, ptr, ...) @php_stream_wrapper_log_error(ptr noundef %0, i32 noundef %3, ptr noundef nonnull @.str.54) #18
  br label %.critedge942.thread120

.thread113:                                       ; preds = %bb.lq
  call fastcc void @php_stream_http_response_header_trim(ptr noundef %i.apy, ptr noundef nonnull %i.i)
  br label %zend_string_alloc.exit1225

bb.ls:                                            ; preds = %bb.lo
  br i1 %.0670108, label %.loopexit.thread536, label %zend_string_alloc.exit1225

zend_string_alloc.exit1225:                       ; preds = %.thread113, %bb.ls
  %i.aqj = load i64, ptr %i.i, align 8, !tbaa !37 ; 4 uses
  %i.aqk = and i64 %i.aqj, -8
  %i.aql = add i64 %i.aqk, 32
  %i.aqm = call noalias ptr @_emalloc(i64 noundef %i.aql) #20 ; 6 uses
  store i32 1, ptr %i.aqm, align 4, !tbaa !15
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqm, i64 4
  store i32 22, ptr %i.aqn, align 4, !tbaa !13
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqm, i64 8
  store i64 0, ptr %i.aqo, align 8, !tbaa !95
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aqm, i64 16
  store i64 %i.aqj, ptr %i.aqp, align 8, !tbaa !20
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqm, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aqq, ptr nonnull align 1 %i.apy, i64 %i.aqj, i1 false)
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqq, i64 %i.aqj
  store i8 0, ptr %i.aqr, align 1, !tbaa !13
  br label %.critedge942

.critedge942.thread120:                           ; preds = %bb.lr, %bb.ll, %bb.lp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  br label %bb.nw

.critedge942:                                     ; preds = %zend_string_alloc.exit1225, %bb.ln
  %.3727 = phi ptr [ %i.aqm, %zend_string_alloc.exit1225 ], [ %i.aqd, %bb.ln ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  %i.aqs = call zeroext i1 @_php_stream_eof(ptr noundef nonnull %.3676) #18
  br i1 %i.aqs, label %.loopexit.thread530, label %bb.lg

.loopexit.thread536:                              ; preds = %bb.ls, %bb.lm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  br label %.loopexit.thread

.loopexit:                                        ; preds = %bb.li
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  %.not889 = icmp eq ptr %.0724166, null
  br i1 %.not889, label %.loopexit.thread, label %.loopexit.thread530

.loopexit.thread530:                              ; preds = %.critedge942, %.loopexit
  %.4728535 = phi ptr [ %.0724166, %.loopexit ], [ %.3727, %.critedge942 ]
  %i.aqt = call fastcc ptr @php_stream_http_response_headers_parse(ptr noundef %0, ptr noundef nonnull %.3676, ptr noundef %4, i32 noundef %3, ptr noundef %.4728535, ptr noundef null, ptr noundef null, i32 noundef %.169993, ptr noundef %7, ptr noundef %9) ; 0 uses
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.lf, %.loopexit.thread536, %.loopexit.thread530, %.loopexit
  %.1730529 = phi ptr [ %i.apy, %.loopexit.thread536 ], [ %i.apy, %.loopexit.thread530 ], [ null, %.loopexit ], [ null, %bb.lf ] ; 5 uses
  br i1 %.1733.shrunk, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %.loopexit.thread
  %i.aqu = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.aqv = load ptr, ptr %i.aqu, align 8, !tbaa !39
  %i.aqw = icmp ne ptr %i.aqv, null
  %i.aqx = load i8, ptr %i.kk, align 1, !range !101
  %i.aqy = trunc nuw i8 %i.aqx to i1
  %or.cond73 = select i1 %i.aqw, i1 %i.aqy, i1 false
  br i1 %or.cond73, label %bb.lv, label %bb.nw

bb.lu:                                            ; preds = %.loopexit.thread
  %.old71 = load i8, ptr %i.kk, align 1, !tbaa !33, !range !101, !noundef !59
  %.old72 = trunc nuw i8 %.old71 to i1
  br i1 %.old72, label %bb.lv, label %bb.nw

bb.lv:                                            ; preds = %bb.lt, %bb.lu
  %i.aqz = icmp slt i32 %.067239, 2
  %or.cond67 = select i1 %or.cond50, i1 %i.aqz, i1 false
  br i1 %or.cond67, label %bb.nw, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.ara = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  %i.arb = load ptr, ptr %i.ara, align 8, !tbaa !39 ; 2 uses
  %i.arc = icmp ne ptr %i.arb, null
  %or.cond76 = and i1 %i.dx, %i.arc
  br i1 %or.cond76, label %bb.lx, label %bb.lz

bb.lx:                                            ; preds = %bb.lw
  %i.ard = load ptr, ptr %4, align 8, !tbaa !36
  %.not891 = icmp eq ptr %i.ard, null
  br i1 %.not891, label %bb.lz, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  call void @php_stream_notification_notify(ptr noundef nonnull %4, i32 noundef 6, i32 noundef 0, ptr noundef nonnull %i.arb, i32 noundef 0, i64 noundef 0, i64 noundef 0, ptr noundef null) #18
  br label %bb.lz

bb.lz:                                            ; preds = %bb.lx, %bb.ly, %bb.lw
  %i.are = call i32 @_php_stream_free(ptr noundef nonnull %.3676, i32 noundef 3) #18 ; 0 uses
  %i.arf = load ptr, ptr %9, align 8, !tbaa !40   ; 2 uses
  %.not892 = icmp eq ptr %i.arf, null
  br i1 %.not892, label %bb.mb, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  call void @php_stream_filter_free(ptr noundef nonnull %i.arf) #18
  store ptr null, ptr %9, align 8, !tbaa !40
  br label %bb.mb

bb.mb:                                            ; preds = %bb.ma, %bb.lz
  %i.arg = load ptr, ptr %i.ara, align 8, !tbaa !39 ; 13 uses
  %.not893 = icmp eq ptr %i.arg, null
  br i1 %.not893, label %bb.nv, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #18
  store ptr null, ptr %i.j, align 8, !tbaa !41
  %i.arh = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.arg) #19
  %i.ari = icmp ult i64 %i.arh, 8
  br i1 %i.ari, label %bb.mh, label %bb.md

bb.md:                                            ; preds = %bb.mc
  %i.arj = call i32 @strncasecmp(ptr noundef nonnull %i.arg, ptr noundef nonnull @.str.55, i64 noundef 7) #19
  %.not894 = icmp eq i32 %i.arj, 0
  br i1 %.not894, label %bb.nc, label %bb.me

bb.me:                                            ; preds = %bb.md
  %i.ark = call i32 @strncasecmp(ptr noundef nonnull %i.arg, ptr noundef nonnull @.str.56, i64 noundef 8) #19
  %.not895 = icmp eq i32 %i.ark, 0
  br i1 %.not895, label %bb.nc, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.arl = call i32 @strncasecmp(ptr noundef nonnull %i.arg, ptr noundef nonnull @.str.57, i64 noundef 6) #19
  %.not896 = icmp eq i32 %i.arl, 0
  br i1 %.not896, label %bb.nc, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  %i.arm = call i32 @strncasecmp(ptr noundef nonnull %i.arg, ptr noundef nonnull @.str.58, i64 noundef 7) #19
  %.not897 = icmp eq i32 %i.arm, 0
  br i1 %.not897, label %bb.nc, label %bb.mh

bb.mh:                                            ; preds = %bb.mg, %bb.mc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #18
  store ptr null, ptr %i.k, align 8, !tbaa !41
  %i.arn = load i8, ptr %i.arg, align 1, !tbaa !13
  %.not898 = icmp eq i8 %i.arn, 47
  br i1 %.not898, label %bb.mw, label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arg, i64 1
  %i.arp = load i8, ptr %i.aro, align 1, !tbaa !13
  %.not899 = icmp eq i8 %i.arp, 0
  br i1 %.not899, label %bb.mv, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  %i.arq = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 3 uses
  %i.arr = load ptr, ptr %i.arq, align 8, !tbaa !92 ; 7 uses
  %.not900 = icmp eq ptr %i.arr, null
  br i1 %.not900, label %bb.mv, label %bb.mk

bb.mk:                                            ; preds = %bb.mj
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arr, i64 24 ; 3 uses
  %i.art = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.ars, i32 noundef 47) #19 ; 2 uses
  %.not901 = icmp eq ptr %i.art, null
  br i1 %.not901, label %bb.ml, label %bb.mq

bb.ml:                                            ; preds = %bb.mk
  %i.aru = getelementptr inbounds nuw i8, ptr %i.arr, i64 16
  %i.arv = load i64, ptr %i.aru, align 8, !tbaa !20
  %.not902 = icmp eq i64 %i.arv, 0
  br i1 %.not902, label %bb.mm, label %bb.mp

bb.mm:                                            ; preds = %bb.ml
  %i.arw = getelementptr inbounds nuw i8, ptr %i.arr, i64 4
  %i.arx = load i32, ptr %i.arw, align 4, !tbaa !13
  %i.ary = and i32 %i.arx, 64
  %.not.i964 = icmp eq i32 %i.ary, 0
  br i1 %.not.i964, label %bb.mn, label %zend_string_release_ex.exit

bb.mn:                                            ; preds = %bb.mm
  %i.arz = load i32, ptr %i.arr, align 8, !tbaa !15 ; 2 uses
  %i.asa = icmp ne i32 %i.arz, 0
  call void @llvm.assume(i1 %i.asa)
  %i.asb = add i32 %i.arz, -1                     ; 2 uses
  store i32 %i.asb, ptr %i.arr, align 8, !tbaa !15
  %i.asc = icmp eq i32 %i.asb, 0
  br i1 %i.asc, label %bb.mo, label %zend_string_release_ex.exit

bb.mo:                                            ; preds = %bb.mn
  call void @_efree(ptr noundef nonnull %i.arr) #18
  br label %zend_string_release_ex.exit

zend_string_release_ex.exit:                      ; preds = %bb.mm, %bb.mn, %bb.mo
  %i.asd = call noalias ptr @_emalloc_32() #18    ; 7 uses
  store i32 1, ptr %i.asd, align 4, !tbaa !15
  %i.ase = getelementptr inbounds nuw i8, ptr %i.asd, i64 4
  store i32 22, ptr %i.ase, align 4, !tbaa !13
  %i.asf = getelementptr inbounds nuw i8, ptr %i.asd, i64 8
  store i64 0, ptr %i.asf, align 8, !tbaa !95
  %i.asg = getelementptr inbounds nuw i8, ptr %i.asd, i64 16
  store i64 1, ptr %i.asg, align 8, !tbaa !20
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asd, i64 24 ; 2 uses
  store i8 47, ptr %i.ash, align 8
  %i.asi = getelementptr inbounds nuw i8, ptr %i.asd, i64 25
  store i8 0, ptr %i.asi, align 1, !tbaa !13
  store ptr %i.asd, ptr %i.arq, align 8, !tbaa !92
  br label %bb.mq

bb.mp:                                            ; preds = %bb.ml
  store i8 47, ptr %i.ars, align 8, !tbaa !13
  br label %bb.mq

bb.mq:                                            ; preds = %zend_string_release_ex.exit, %bb.mp, %bb.mk
  %.0669 = phi ptr [ %i.art, %bb.mk ], [ %i.ars, %bb.mp ], [ %i.ash, %zend_string_release_ex.exit ]
  %i.asj = getelementptr inbounds nuw i8, ptr %.0669, i64 1
  store i8 0, ptr %i.asj, align 1, !tbaa !13
  %i.ask = load ptr, ptr %i.arq, align 8, !tbaa !92 ; 4 uses
  %.not903 = icmp eq ptr %i.ask, null
  br i1 %.not903, label %bb.mu, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  %i.asl = getelementptr inbounds nuw i8, ptr %i.ask, i64 24 ; 2 uses
  %i.asm = load i8, ptr %i.asl, align 8, !tbaa !13
  %i.asn = icmp eq i8 %i.asm, 47
  br i1 %i.asn, label %bb.ms, label %bb.mu

bb.ms:                                            ; preds = %bb.mr
  %i.aso = getelementptr inbounds nuw i8, ptr %i.ask, i64 25
  %i.asp = load i8, ptr %i.aso, align 1, !tbaa !13
  %i.asq = icmp eq i8 %i.asp, 0
  br i1 %i.asq, label %bb.mt, label %bb.mu

bb.mt:                                            ; preds = %bb.ms
  %i.asr = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %i.k, i64 noundef 0, ptr noundef nonnull @.str.60, ptr noundef nonnull %i.asl, ptr noundef nonnull %i.arg) #18 ; 0 uses
  br label %bb.mx

bb.mu:                                            ; preds = %bb.ms, %bb.mr, %bb.mq
  %i.ass = getelementptr inbounds nuw i8, ptr %i.ask, i64 24
  %i.ast = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %i.k, i64 noundef 0, ptr noundef nonnull @.str.61, ptr noundef nonnull %i.ass, ptr noundef nonnull %i.arg) #18 ; 0 uses
  br label %bb.mx

bb.mv:                                            ; preds = %bb.mj, %bb.mi
  %i.asu = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %i.k, i64 noundef 0, ptr noundef nonnull @.str.62, ptr noundef nonnull %i.arg) #18 ; 0 uses
  br label %bb.mx

bb.mw:                                            ; preds = %bb.mh
  store ptr %i.arg, ptr %i.k, align 8, !tbaa !41
  store ptr null, ptr %i.ara, align 8, !tbaa !39
  br label %bb.mx

bb.mx:                                            ; preds = %bb.mt, %bb.mu, %bb.mv, %bb.mw
  %i.asv = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.asw = load i64, ptr %i.asv, align 8, !tbaa !65 ; 3 uses
  br i1 %.0678.shrunk815, label %bb.my, label %.critedge945

bb.my:                                            ; preds = %bb.mx
  %.not904 = icmp eq i64 %i.asw, 443
  br i1 %.not904, label %bb.na, label %bb.mz

.critedge945:                                     ; preds = %bb.mx
  %.not905 = icmp eq i64 %i.asw, 80
end_hunk_0
