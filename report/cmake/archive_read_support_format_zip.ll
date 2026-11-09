Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_read_support_format_zip?download=true
inline.NumInlined: 117
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@zip_read_local_file_header:bb.a
  %.not275 = icmp eq i32 %i.w, 0
  br i1 %.not275, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.14) #18
  br label %bb.cm

bb.h:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.y = load i8, ptr %i.x, align 1, !tbaa !39    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !39
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 129 ; 2 uses
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !107
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  %.val320 = load i8, ptr %i.ac, align 1, !tbaa !39
  %i.ad = getelementptr i8, ptr %i.s, i64 7
  %.val321 = load i8, ptr %i.ad, align 1, !tbaa !39
  %i.ae = zext i8 %.val321 to i16
  %i.af = zext i8 %.val320 to i16                 ; 2 uses
  %i.ag = shl nuw i16 %i.ae, 8
  %i.ah = or disjoint i16 %i.ag, %i.af            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 126 ; 8 uses
  store i16 %i.ah, ptr %i.ai, align 2, !tbaa !83
  %i.aj = and i16 %i.af, 65
  %.not276 = icmp eq i16 %i.aj, 0
  br i1 %.not276, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 1, ptr %i.ak, align 8, !tbaa !37
  tail call void @archive_entry_set_is_data_encrypted(ptr noundef %1, i8 noundef signext 1) #18
  %i.al = load i16, ptr %i.ai, align 2, !tbaa !83 ; 2 uses
  %i.am = and i16 %i.al, 8257
  %or.cond311.not = icmp eq i16 %i.am, 8257
  br i1 %or.cond311.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @archive_entry_set_is_metadata_encrypted(ptr noundef %1, i8 noundef signext 1) #18
  br label %bb.cm

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.an = phi i16 [ %i.al, %bb.i ], [ %i.ah, %bb.h ]
  %i.ao = trunc i16 %i.an to i8
  %i.ap = and i8 %i.ao, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8008
  store i8 %i.ap, ptr %i.aq, align 8, !tbaa !82
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val318 = load i8, ptr %i.ar, align 1, !tbaa !39
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store i8 %.val318, ptr %i.as, align 8, !tbaa !84
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 10
  %i.au = load i32, ptr %i.at, align 1
  %i.av = tail call i64 @dos_to_unix(i32 noundef %i.au) #18
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !108
  %i.ax = getelementptr inbounds nuw i8, ptr %i.s, i64 14
  %i.ay = load i32, ptr %i.ax, align 1
  store i32 %i.ay, ptr %.sroa.919.0..sroa_idx, align 8, !tbaa !88
  %i.az = load i16, ptr %i.ai, align 2, !tbaa !83
  %i.ba = and i16 %i.az, 8
  %.not280 = icmp eq i16 %i.ba, 0
  %. = select i1 %.not280, i64 17, i64 11
  %i.bb = getelementptr inbounds nuw i8, ptr %i.s, i64 %.
  %.sink = load i8, ptr %i.bb, align 1, !tbaa !39
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 131
  store i8 %.sink, ptr %i.bc, align 1, !tbaa !109
  %i.bd = getelementptr inbounds nuw i8, ptr %i.s, i64 18
  %i.be = load i32, ptr %i.bd, align 1
  %i.bf = zext i32 %i.be to i64
  store i64 %i.bf, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !89
  %i.bg = getelementptr inbounds nuw i8, ptr %i.s, i64 22
  %i.bh = load i32, ptr %i.bg, align 1
  %i.bi = zext i32 %i.bh to i64
  store i64 %i.bi, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !90
  %i.bj = getelementptr inbounds nuw i8, ptr %i.s, i64 26
  %.val316 = load i16, ptr %i.bj, align 1
  %i.bk = zext i16 %.val316 to i64                ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  %.val = load i16, ptr %i.bl, align 1
  %i.bm = zext i16 %.val to i64                   ; 3 uses
  %i.bn = tail call i64 @__archive_read_consume(ptr noundef %0, i64 noundef 30) #18 ; 0 uses
  %i.bo = tail call ptr @__archive_read_ahead(ptr noundef %0, i64 noundef %i.bk, ptr noundef null) #18 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.12) #18
  br label %bb.cm

bb.m:                                             ; preds = %bb.k
  %i.bq = load i16, ptr %i.ai, align 2, !tbaa !83
  %i.br = and i16 %i.bq, 2048
  %.not281 = icmp eq i16 %i.br, 0
  br i1 %.not281, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 7992 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !58 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bv = tail call ptr @archive_string_conversion_from_charset(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef 1) #18 ; 3 uses
  store ptr %i.bv, ptr %i.bs, align 8, !tbaa !58
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.cm, label %bb.r

bb.p:                                             ; preds = %bb.m
  %i.bx = load ptr, ptr %i.l, align 8, !tbaa !57  ; 2 uses
  %.not282 = icmp eq ptr %i.bx, null
  br i1 %.not282, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 7984
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !153
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.o, %bb.p, %bb.q
  %.0244 = phi ptr [ %i.bx, %bb.p ], [ %i.bz, %bb.q ], [ %i.bv, %bb.o ], [ %i.bt, %bb.n ] ; 2 uses
  %i.ca = tail call i32 @_archive_entry_copy_pathname_l(ptr noundef %1, ptr noundef nonnull %i.bo, i64 noundef %i.bk, ptr noundef %.0244) #18
  %.not283 = icmp eq i32 %i.ca, 0
  br i1 %.not283, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = tail call ptr @__errno_location() #22
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !120
  %i.cd = icmp eq i32 %i.cc, 12
  br i1 %i.cd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 12, ptr noundef nonnull @.str.15) #18
  br label %bb.cm

bb.u:                                             ; preds = %bb.s
  %i.ce = tail call ptr @archive_string_conversion_charset_name(ptr noundef %.0244) #18
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.16, ptr noundef %i.ce) #18
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %.0241 = phi i32 [ -20, %bb.u ], [ 0, %bb.r ]   ; 3 uses
  %i.cf = tail call i64 @__archive_read_consume(ptr noundef %0, i64 noundef %i.bk) #18 ; 0 uses
  %i.cg = tail call ptr @__archive_read_ahead(ptr noundef %0, i64 noundef %i.bm, ptr noundef null) #18 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.12) #18
  br label %bb.cm

bb.x:                                             ; preds = %bb.v
  %i.ci = tail call fastcc i32 @process_extra(ptr noundef %0, ptr noundef %1, ptr noundef %i.cg, i64 noundef %i.bm, ptr noundef nonnull %i.d)
  %.not284 = icmp eq i32 %i.ci, 0
  br i1 %.not284, label %bb.y, label %bb.cm

bb.y:                                             ; preds = %bb.x
  %i.cj = tail call i64 @__archive_read_consume(ptr noundef %0, i64 noundef %i.bm) #18 ; 0 uses
  %i.ck = load i16, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !81 ; 3 uses
  %i.cl = and i16 %i.ck, -4096
  %i.cm = icmp eq i16 %i.cl, 4096
  br i1 %i.cm, label %.thread, label %bb.z

.thread:                                          ; preds = %bb.y
  %i.cn = and i16 %i.ck, 4095
  %i.co = or disjoint i16 %i.cn, -32768
  br label %.sink.split

bb.z:                                             ; preds = %bb.y
  %i.cp = icmp eq i16 %i.ck, 0
  br i1 %i.cp, label %.sink.split, label %bb.aa

.sink.split:                                      ; preds = %bb.z, %.thread
  %.sink383 = phi i16 [ %i.co, %.thread ], [ 436, %bb.z ]
  store i16 %.sink383, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !81
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split, %bb.z
  %i.cq = load i8, ptr %i.ab, align 1, !tbaa !107
  %i.cr = icmp eq i8 %i.cq, 0
  br i1 %i.cr, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  %i.cs = tail call ptr @archive_entry_pathname_w(ptr noundef %1) #18 ; 5 uses
  %.not285 = icmp eq ptr %i.cs, null
  br i1 %.not285, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ct = tail call ptr @wcschr(ptr noundef nonnull %i.cs, i32 noundef 47) #20
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.cv = tail call ptr @wcschr(ptr noundef nonnull %i.cs, i32 noundef 92) #20
  %.not286 = icmp eq ptr %i.cv, null
  br i1 %.not286, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.cx = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.cs) #20
  %i.cy = call ptr @archive_wstrncat(ptr noundef nonnull %3, ptr noundef nonnull %i.cs, i64 noundef %i.cx) #18 ; 0 uses
  %i.cz = load i64, ptr %i.cw, align 8, !tbaa !156 ; 5 uses
  %.not349 = icmp eq i64 %i.cz, 0
  %.pre = load ptr, ptr %3, align 8, !tbaa !157   ; 10 uses
  br i1 %.not349, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ae
  %min.iters.check = icmp ult i64 %i.cz, 8
  br i1 %min.iters.check, label %.lr.ph.preheader401, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.cz, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue400, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue400 ] ; 9 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %index ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %wide.load = load <4 x i32>, ptr %i.da, align 4, !tbaa !120
  %wide.load386 = load <4 x i32>, ptr %i.db, align 4, !tbaa !120
  %i.dc = icmp eq <4 x i32> %wide.load, splat (i32 92) ; 4 uses
  %i.dd = icmp eq <4 x i32> %wide.load386, splat (i32 92) ; 4 uses
  %i.de = extractelement <4 x i1> %i.dc, i64 0
  br i1 %i.de, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i32 47, ptr %i.da, align 4, !tbaa !120
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.df = extractelement <4 x i1> %i.dc, i64 1
  br i1 %i.df, label %pred.store.if387, label %pred.store.continue388

pred.store.if387:                                 ; preds = %pred.store.continue
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %index
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  store i32 47, ptr %i.dh, align 4, !tbaa !120
  br label %pred.store.continue388

pred.store.continue388:                           ; preds = %pred.store.if387, %pred.store.continue
  %i.di = extractelement <4 x i1> %i.dc, i64 2
  br i1 %i.di, label %pred.store.if389, label %pred.store.continue390

pred.store.if389:                                 ; preds = %pred.store.continue388
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %index
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i32 47, ptr %i.dk, align 4, !tbaa !120
  br label %pred.store.continue390

pred.store.continue390:                           ; preds = %pred.store.if389, %pred.store.continue388
  %i.dl = extractelement <4 x i1> %i.dc, i64 3
  br i1 %i.dl, label %pred.store.if391, label %pred.store.continue392

pred.store.if391:                                 ; preds = %pred.store.continue390
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %index
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  store i32 47, ptr %i.dn, align 4, !tbaa !120
  br label %pred.store.continue392

pred.store.continue392:                           ; preds = %pred.store.if391, %pred.store.continue390
  %i.do = extractelement <4 x i1> %i.dd, i64 0
  br i1 %i.do, label %pred.store.if393, label %pred.store.continue394

pred.store.if393:                                 ; preds = %pred.store.continue392
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %index
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store i32 47, ptr %i.dq, align 4, !tbaa !120
  br label %pred.store.continue394

pred.store.continue394:                           ; preds = %pred.store.if393, %pred.store.continue392
  %i.dr = extractelement <4 x i1> %i.dd, i64 1
  br i1 %i.dr, label %pred.store.if395, label %pred.store.continue396

pred.store.if395:                                 ; preds = %pred.store.continue394
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %index
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 20
  store i32 47, ptr %i.dt, align 4, !tbaa !120
  br label %pred.store.continue396

pred.store.continue396:                           ; preds = %pred.store.if395, %pred.store.continue394
  %i.du = extractelement <4 x i1> %i.dd, i64 2
  br i1 %i.du, label %pred.store.if397, label %pred.store.continue398

pred.store.if397:                                 ; preds = %pred.store.continue396
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %index
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  store i32 47, ptr %i.dw, align 4, !tbaa !120
  br label %pred.store.continue398

pred.store.continue398:                           ; preds = %pred.store.if397, %pred.store.continue396
  %i.dx = extractelement <4 x i1> %i.dd, i64 3
  br i1 %i.dx, label %pred.store.if399, label %pred.store.continue400

pred.store.if399:                                 ; preds = %pred.store.continue398
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %index
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 28
  store i32 47, ptr %i.dz, align 4, !tbaa !120
  br label %pred.store.continue400

pred.store.continue400:                           ; preds = %pred.store.if399, %pred.store.continue398
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !151

middle.block:                                     ; preds = %pred.store.continue400
  %cmp.n = icmp eq i64 %i.cz, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader401

.lr.ph.preheader401:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0239348.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader401, %bb.ag
  %.0239348 = phi i64 [ %i.ee, %bb.ag ], [ %.0239348.ph, %.lr.ph.preheader401 ] ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.0239348 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !120
  %i.ed = icmp eq i32 %i.ec, 92
  br i1 %i.ed, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph
  store i32 47, ptr %i.eb, align 4, !tbaa !120
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph, %bb.af
  %i.ee = add nuw i64 %.0239348, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ee, %i.cz
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !152

._crit_edge:                                      ; preds = %bb.ag, %middle.block, %bb.ae
  call void @archive_entry_copy_pathname_w(ptr noundef %1, ptr noundef %.pre) #18
  call void @archive_wstring_free(ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ac, %bb.ad, %._crit_edge, %bb.ab, %bb.aa
  %i.ef = load i16, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !81 ; 2 uses
  %i.eg = and i16 %i.ef, -4096
  %.not287 = icmp eq i16 %i.eg, 16384
  br i1 %.not287, label %bb.ap, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eh = call ptr @archive_entry_pathname_w(ptr noundef %1) #18 ; 3 uses
  %.not288 = icmp eq ptr %i.eh, null
  br i1 %.not288, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ei = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.eh) #20 ; 2 uses
  %.not291 = icmp eq i64 %i.ei, 0
  br i1 %.not291, label %.thread324, label %.split

.split:                                           ; preds = %bb.aj
  %i.ej = getelementptr [4 x i8], ptr %i.eh, i64 %i.ei
  %i.ek = getelementptr i8, ptr %i.ej, i64 -4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !120
  %i.em = icmp eq i32 %i.el, 47
  br i1 %i.em, label %bb.an, label %.thread324

bb.ak:                                            ; preds = %bb.ai
  %i.en = call ptr @archive_entry_pathname(ptr noundef %1) #18 ; 3 uses
  %.not289 = icmp eq ptr %i.en, null
  br i1 %.not289, label %.thread324, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eo = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.en) #20 ; 2 uses
  %.not290 = icmp eq i64 %i.eo, 0
  br i1 %.not290, label %.thread324, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ep = getelementptr i8, ptr %i.en, i64 %i.eo
  %i.eq = getelementptr i8, ptr %i.ep, i64 -1
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !39
  %i.es = icmp eq i8 %i.er, 47
  br i1 %i.es, label %bb.an, label %.thread324

bb.an:                                            ; preds = %.split, %bb.am
  %i.et = load i16, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !81
  %i.eu = and i16 %i.et, 4022
  %i.ev = or disjoint i16 %i.eu, 16457
  br label %.sink.split384

.thread324:                                       ; preds = %.split, %bb.ak, %bb.al, %bb.aj, %bb.am
  %i.ew = load i16, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !81 ; 3 uses
  %i.ex = icmp ult i16 %i.ew, 4096
  br i1 %i.ex, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.thread324
  %i.ey = or disjoint i16 %i.ew, -32768
  br label %.sink.split384

.sink.split384:                                   ; preds = %bb.ao, %bb.an
  %.sink385 = phi i16 [ %i.ev, %bb.an ], [ %i.ey, %bb.ao ] ; 2 uses
  store i16 %.sink385, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !81
  br label %bb.ap

bb.ap:                                            ; preds = %.sink.split384, %.thread324, %bb.ah
  %i.ez = phi i16 [ %i.ew, %.thread324 ], [ %i.ef, %bb.ah ], [ %.sink385, %.sink.split384 ]
  %i.fa = and i16 %i.ez, -4096
  %i.fb = icmp eq i16 %i.fa, 16384
  br i1 %i.fb, label %bb.aq, label %.thread327

bb.aq:                                            ; preds = %bb.ap
  %i.fc = call ptr @archive_entry_pathname_w(ptr noundef %1) #18 ; 4 uses
  %.not293 = icmp eq ptr %i.fc, null
  br i1 %.not293, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fd = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.fc) #20 ; 2 uses
  %.not297 = icmp eq i64 %i.fd, 0
  br i1 %.not297, label %.thread327, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fe = getelementptr [4 x i8], ptr %i.fc, i64 %i.fd
  %i.ff = getelementptr i8, ptr %i.fe, i64 -4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !120
  %.not298 = icmp eq i32 %i.fg, 47
  br i1 %.not298, label %.thread327, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.fh = call ptr @archive_wstrcat(ptr noundef nonnull %4, ptr noundef nonnull %i.fc) #18 ; 0 uses
  %i.fi = call ptr @archive_wstrappend_wchar(ptr noundef nonnull %4, i32 noundef 47) #18 ; 0 uses
  %i.fj = load ptr, ptr %4, align 8, !tbaa !157
  call void @archive_entry_copy_pathname_w(ptr noundef %1, ptr noundef %i.fj) #18
  call void @archive_wstring_free(ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %.thread327

bb.au:                                            ; preds = %bb.aq
  %i.fk = call ptr @archive_entry_pathname(ptr noundef %1) #18 ; 4 uses
  %.not294 = icmp eq ptr %i.fk, null
  br i1 %.not294, label %.thread327, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fl = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fk) #20 ; 2 uses
  %.not295 = icmp eq i64 %i.fl, 0
  br i1 %.not295, label %.thread327, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fm = getelementptr i8, ptr %i.fk, i64 %i.fl
  %i.fn = getelementptr i8, ptr %i.fm, i64 -1
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !39
  %.not296 = icmp eq i8 %i.fo, 47
  br i1 %.not296, label %.thread327, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.fp = call ptr @archive_strcat(ptr noundef nonnull %5, ptr noundef nonnull %i.fk) #18 ; 0 uses
  %i.fq = call ptr @archive_strappend_char(ptr noundef nonnull %5, i8 noundef signext 47) #18 ; 0 uses
  %i.fr = load ptr, ptr %5, align 8, !tbaa !111
  call void @archive_entry_set_pathname(ptr noundef %1, ptr noundef %i.fr) #18
  call void @archive_string_free(ptr noundef nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %.thread327

.thread327:                                       ; preds = %bb.au, %bb.at, %bb.as, %bb.ar, %bb.ax, %bb.aw, %bb.av, %bb.ap
  %i.fs = getelementptr inbounds nuw i8, ptr %i.d, i64 130
  %i.ft = load i8, ptr %i.fs, align 2, !tbaa !92
  %i.fu = and i8 %i.ft, 2
  %.not299 = icmp eq i8 %i.fu, 0
  br i1 %.not299, label %bb.bk, label %bb.ay

bb.ay:                                            ; preds = %.thread327
  %i.fv = load i16, ptr %i.ai, align 2, !tbaa !83
  %i.fw = and i16 %i.fv, -9
  store i16 %i.fw, ptr %i.ai, align 2, !tbaa !83
  %i.fx = load i32, ptr %.sroa.919.0..sroa_idx, align 8, !tbaa !88 ; 2 uses
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 %.sroa.919.0.copyload, ptr %.sroa.919.0..sroa_idx, align 8, !tbaa !88
  br label %bb.bc

bb.ba:                                            ; preds = %bb.ay
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.ga = load i8, ptr %i.fz, align 8, !tbaa !59
  %.not300 = icmp ne i8 %i.ga, 0
  %.not301 = icmp eq i32 %i.fx, %.sroa.919.0.copyload
  %or.cond312 = select i1 %.not300, i1 true, i1 %.not301
  br i1 %or.cond312, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.17) #18
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb, %bb.az
  %.1242 = phi i32 [ %.0241, %bb.az ], [ %.0241, %bb.ba ], [ -20, %bb.bb ] ; 2 uses
  %i.gb = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !89 ; 3 uses
  switch i64 %i.gb, label %bb.be [
    i64 0, label %bb.bd
    i64 4294967295, label %bb.bd
  ]

bb.bd:                                            ; preds = %bb.bc, %bb.bc
  store i64 %.sroa.3.0.copyload, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !89
  br label %bb.bg

bb.be:                                            ; preds = %bb.bc
  %.not302 = icmp eq i64 %i.gb, %.sroa.3.0.copyload
  br i1 %.not302, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.18, i64 noundef %.sroa.3.0.copyload, i64 noundef %i.gb) #18
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf, %bb.bd
  %.2243 = phi i32 [ %.1242, %bb.bd ], [ -20, %bb.bf ], [ %.1242, %bb.be ] ; 2 uses
  %i.gc = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !90 ; 3 uses
  switch i64 %i.gc, label %bb.bi [
    i64 0, label %bb.bh
    i64 4294967295, label %bb.bh
  ]

bb.bh:                                            ; preds = %bb.bg, %bb.bg
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !90
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bg
  %.not303 = icmp eq i64 %i.gc, %.sroa.6.0.copyload
  br i1 %.not303, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.19, i64 noundef %.sroa.6.0.copyload, i64 noundef %i.gc) #18
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bh, %bb.bj, %bb.bi, %.thread327
  %.3 = phi i32 [ %.2243, %bb.bh ], [ -20, %bb.bj ], [ %.2243, %bb.bi ], [ %.0241, %.thread327 ] ; 4 uses
  %i.gd = load i16, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !81
  %i.ge = zext i16 %i.gd to i32
  call void @archive_entry_set_mode(ptr noundef %1, i32 noundef %i.ge) #18
  %i.gf = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !121
  call void @archive_entry_set_uid(ptr noundef %1, i64 noundef %i.gg) #18
  %i.gh = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !122
  call void @archive_entry_set_gid(ptr noundef %1, i64 noundef %i.gh) #18
  %i.gi = load i64, ptr %i.aw, align 8, !tbaa !108
  call void @archive_entry_set_mtime(ptr noundef %1, i64 noundef %i.gi, i64 noundef 0) #18
  %i.gj = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !123
  call void @archive_entry_set_ctime(ptr noundef %1, i64 noundef %i.gk, i64 noundef 0) #18
  %i.gl = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !124
  call void @archive_entry_set_atime(ptr noundef %1, i64 noundef %i.gm, i64 noundef 0) #18
  %i.gn = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 124
  %i.gp = load i16, ptr %i.go, align 4, !tbaa !81
  %i.gq = and i16 %i.gp, -4096
  %i.gr = icmp eq i16 %i.gq, -24576
  br i1 %i.gr, label %bb.bl, label %bb.cg

bb.bl:                                            ; preds = %bb.bk
  %i.gs = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !89 ; 4 uses
  %i.gt = icmp sgt i64 %i.gs, 65536
  br i1 %i.gt, label %.thread338, label %bb.bm

.thread338:                                       ; preds = %bb.bl
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.20) #18
  br label %bb.cm

bb.bm:                                            ; preds = %bb.bl
  call void @archive_entry_set_size(ptr noundef %1, i64 noundef 0) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.gs, ptr %i.a, align 8, !tbaa !73
  %i.gu = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 128
  %i.gw = load i8, ptr %i.gv, align 8, !tbaa !84  ; 3 uses
  %.not305 = icmp eq i8 %i.gw, 0
  br i1 %.not305, label %bb.br, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store ptr null, ptr %i.b, align 8, !tbaa !76
  switch i8 %i.gw, label %.thread329 [
    i8 8, label %bb.bo
    i8 14, label %bb.bp
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.gx = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !89
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 120
  store i64 %i.gx, ptr %i.gy, align 8, !tbaa !91
  %i.gz = call fastcc i32 @zip_read_data_deflate(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.ha = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !89
  %i.hb = getelementptr inbounds nuw i8, ptr %2, i64 120
  store i64 %i.ha, ptr %i.hb, align 8, !tbaa !91
  %i.hc = call fastcc i32 @zip_read_data_zipx_lzma_alone(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.0 = phi i32 [ %i.hc, %bb.bp ], [ %i.gz, %bb.bo ]
  %i.hd = icmp eq i32 %.0, 0
  br i1 %i.hd, label %.thread331, label %..thread329_crit_edge

..thread329_crit_edge:                            ; preds = %bb.bq
  %.pre351 = load ptr, ptr %i.c, align 8, !tbaa !64
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre351, i64 128
  %.pre352 = load i8, ptr %.phi.trans.insert, align 8, !tbaa !84
  br label %.thread329

.thread331:                                       ; preds = %bb.bq
  %i.he = load ptr, ptr %i.b, align 8, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
end_hunk_0
