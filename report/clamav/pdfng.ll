Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/pdfng?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@pdf_finalize_string:bb.a
  %.not121 = icmp eq i32 %i.bo, 0
  br i1 %.not121, label %bb.ap, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.bp = and i32 %i.bn, 524288
  %.not.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i, label %pdf_decrypt_string.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bq = call i32 @get_enc_method(ptr noundef nonnull %0, ptr noundef %1) #13
  %i.br = icmp ult i64 %.098, 2
  br i1 %i.br, label %bb.aj, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bs = load i8, ptr %.0101, align 1, !tbaa !14
  %i.bt = icmp eq i8 %i.bs, 60                    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0101, i64 1 ; 2 uses
  %spec.select.i = select i1 %i.bt, ptr %i.bu, ptr %.0101
  %i.bv = getelementptr inbounds nuw i8, ptr %.0101, i64 %.098 ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -1 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !14
  %i.by = icmp eq i8 %i.bx, 62
  %.035.i = select i1 %i.by, ptr %i.bw, ptr %i.bv
  %i.bz = ptrtoint ptr %.035.i to i64
  %i.ca = ptrtoint ptr %spec.select.i to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 5 uses
  br i1 %i.bt, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.cc = lshr i64 %i.cb, 1                       ; 2 uses
  store i64 %i.cc, ptr %i.a, align 8, !tbaa !12
  %i.cd = call ptr @cli_max_calloc(i64 noundef 1, i64 noundef %i.cc) #13 ; 5 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %pdf_decrypt_string.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cf = call i32 @cli_hex2str_to(ptr noundef nonnull %i.bu, ptr noundef nonnull %i.cd, i64 noundef %i.cb) #13
  %.not48.i = icmp eq i32 %i.cf, 0
  br i1 %.not48.i, label %bb.ag, label %.thread62.i

.thread62.i:                                      ; preds = %bb.ae
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.13) #13
  br label %bb.al

bb.af:                                            ; preds = %bb.ac
  store i64 %i.cb, ptr %i.a, align 8, !tbaa !12
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.041.i = phi ptr [ %.0101, %bb.af ], [ %i.cd, %bb.ae ]
  %.039.i = phi ptr [ null, %bb.af ], [ %i.cd, %bb.ae ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !48
  %i.ci = call ptr @decrypt_any(ptr noundef nonnull %0, i32 noundef %i.ch, ptr noundef nonnull %.041.i, ptr noundef nonnull %i.a, i32 noundef %i.bq) #13 ; 3 uses
  %.not49.i = icmp eq ptr %i.ci, null
  br i1 %.not49.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.14) #13
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !12
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ab
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.12) #13
  br label %pdf_decrypt_string.exit.thread

bb.ak:                                            ; preds = %bb.ai, %bb.ah
  %.0 = phi i64 [ %i.cb, %bb.ah ], [ %i.cj, %bb.ai ] ; 2 uses
  %.not50.i = icmp eq ptr %.039.i, null
  br i1 %.not50.i, label %pdf_decrypt_string.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak, %.thread62.i
  %.1131 = phi i64 [ %.0, %bb.ak ], [ %i.cb, %.thread62.i ]
  %.038.ph67.i = phi ptr [ %i.ci, %bb.ak ], [ null, %.thread62.i ]
  %.140.ph66.i = phi ptr [ %.039.i, %bb.ak ], [ %i.cd, %.thread62.i ]
  call void @free(ptr noundef nonnull %.140.ph66.i) #13
  br label %pdf_decrypt_string.exit

pdf_decrypt_string.exit.thread:                   ; preds = %bb.aj, %bb.aa, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @free(ptr noundef nonnull %.0101) #13
  br label %.critedge

pdf_decrypt_string.exit:                          ; preds = %bb.ak, %bb.al
  %.2132 = phi i64 [ %.1131, %bb.al ], [ %.0, %bb.ak ] ; 3 uses
  %.143.i = phi ptr [ %.038.ph67.i, %bb.al ], [ %i.ci, %bb.ak ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @free(ptr noundef nonnull %.0101) #13
  %.not122 = icmp eq ptr %.143.i, null
  br i1 %.not122, label %.critedge, label %bb.am

bb.am:                                            ; preds = %pdf_decrypt_string.exit
  %i.ck = add i64 %.2132, 1
  %i.cl = call ptr @cli_max_calloc(i64 noundef %i.ck, i64 noundef 1) #13 ; 3 uses
  %.not123 = icmp eq ptr %i.cl, null
  br i1 %.not123, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @free(ptr noundef nonnull %.143.i) #13
  br label %.critedge

bb.ao:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cl, ptr nonnull align 1 %.143.i, i64 %.2132, i1 false)
  call void @free(ptr noundef nonnull %.143.i) #13
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.z
  %.2103 = phi ptr [ %i.cl, %bb.ao ], [ %.0101, %bb.z ] ; 5 uses
  %.2100 = phi i64 [ %.2132, %bb.ao ], [ %.098, %bb.z ] ; 3 uses
  %.not125141.not = icmp eq i64 %.2100, 0
  br i1 %.not125141.not, label %.critedge, label %.lr.ph144

bb.aq:                                            ; preds = %.lr.ph144
  %i.cm = add nuw i64 %.2142, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.cm, %.2100
  br i1 %exitcond.not, label %.critedge, label %.lr.ph144

.lr.ph144:                                        ; preds = %bb.ap, %bb.aq
  %.2142 = phi i64 [ %i.cm, %bb.aq ], [ 0, %bb.ap ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.2103, i64 %.2142
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !14
  %or.cond = icmp slt i8 %i.co, 1
  br i1 %or.cond, label %bb.ar, label %bb.aq

bb.ar:                                            ; preds = %.lr.ph144
  %i.cp = call ptr @pdf_convert_utf(ptr noundef nonnull %.2103, i64 noundef %.2100)
  call void @free(ptr noundef nonnull %.2103) #13
  br label %.critedge

.critedge:                                        ; preds = %bb.aq, %bb.ap, %pdf_decrypt_string.exit.thread, %pdf_decrypt_string.exit, %bb.an, %bb.ar, %bb.b, %bb.a, %bb.x, %bb.e
  %.1106 = phi ptr [ null, %bb.b ], [ null, %pdf_decrypt_string.exit.thread ], [ null, %bb.x ], [ null, %bb.e ], [ null, %bb.a ], [ %i.cp, %bb.ar ], [ null, %bb.an ], [ null, %pdf_decrypt_string.exit ], [ %.2103, %bb.ap ], [ %.2103, %bb.aq ]
  ret ptr %.1106
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define ptr @pdf_parse_string(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %7 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 9 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !29
  %i.e = icmp ugt i32 %i.d, 25
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3) #13
  br label %._crit_edge.thread

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30   ; 3 uses
  %.not = icmp eq ptr %i.g, null
  %i.h = ptrtoint ptr %2 to i64                   ; 2 uses
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.j = load i64, ptr %i.i, align 8, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51
  %i.m = ptrtoint ptr %i.l to i64
  %.neg270 = sub i64 %i.j, %i.h
  %i.n = add i64 %.neg270, %i.m
  %i.o = icmp ugt i64 %3, %i.n
  br i1 %i.o, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.4) #13
  br label %._crit_edge.thread

bb.f:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !52
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !53
  %i.t = ptrtoint ptr %i.s to i64
  %.neg = sub i64 %i.q, %i.h
  %i.u = add i64 %.neg, %i.t
  %i.v = icmp ugt i64 %3, %i.u
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5) #13
  br label %._crit_edge.thread

bb.h:                                             ; preds = %bb.f, %bb.d
  %.not271 = icmp eq ptr %4, null
  br i1 %.not271, label %._crit_edge355, label %bb.i

._crit_edge355:                                   ; preds = %bb.h
  %.pre356 = ptrtoint ptr %2 to i64               ; 2 uses
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.w = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #15 ; 6 uses
  %i.x = add i64 %i.w, 3
  %i.y = icmp ult i64 %3, %i.x
  br i1 %i.y, label %._crit_edge.thread, label %.preheader318

.preheader318:                                    ; preds = %bb.i
  %i.z = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.aa = sub i64 %3, %i.w                        ; 2 uses
  %.not351 = icmp eq i64 %3, %i.w
  br i1 %.not351, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader318
  %i.ab = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull %4, i64 noundef %i.w) #15
  %.not272451 = icmp eq i32 %i.ab, 0
  br i1 %.not272451, label %._crit_edge, label %.lr.ph453

.lr.ph:                                           ; preds = %.lr.ph453
  %i.ac = tail call i32 @strncmp(ptr noundef nonnull %i.ad, ptr noundef nonnull %4, i64 noundef %i.w) #15
  %.not272 = icmp eq i32 %i.ac, 0
  br i1 %.not272, label %.lr.ph.._crit_edge_crit_edge, label %.lr.ph453

.lr.ph453:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.0232326452 = phi ptr [ %i.ad, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0232326452, i64 1 ; 4 uses
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.z                     ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.aa
  br i1 %i.ag, label %.lr.ph, label %._crit_edge.thread

.lr.ph.._crit_edge_crit_edge:                     ; preds = %.lr.ph
  %i.ah = icmp eq i64 %i.af, %i.aa
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.._crit_edge_crit_edge, %.lr.ph.preheader
  %.lcssa449 = phi i1 [ %i.ah, %.lr.ph.._crit_edge_crit_edge ], [ false, %.lr.ph.preheader ]
  %.0232326.lcssa = phi ptr [ %i.ad, %.lr.ph.._crit_edge_crit_edge ], [ %2, %.lr.ph.preheader ]
  br i1 %.lcssa449, label %._crit_edge.thread, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %.0232326.lcssa, i64 %i.w ; 2 uses
  %.pre357 = ptrtoint ptr %i.ai to i64
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge355, %bb.j
  %.pre-phi358 = phi i64 [ %.pre356, %._crit_edge355 ], [ %.pre357, %bb.j ] ; 3 uses
  %.pre-phi = phi i64 [ %.pre356, %._crit_edge355 ], [ %i.z, %bb.j ] ; 4 uses
  %.1233 = phi ptr [ %2, %._crit_edge355 ], [ %i.ai, %bb.j ] ; 4 uses
  %i.aj = sub i64 %.pre-phi358, %.pre-phi         ; 3 uses
  %i.ak = icmp ult i64 %i.aj, %3
  br i1 %i.ak, label %.lr.ph335, label %.critedge

.lr.ph335:                                        ; preds = %bb.k
  %i.al = tail call ptr @__ctype_b_loc() #14
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !16 ; 2 uses
  %i.an = load i8, ptr %.1233, align 1, !tbaa !14
  %i.ao = sext i8 %i.an to i64
  %i.ap = getelementptr inbounds [2 x i8], ptr %i.am, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !18
  %i.ar = and i16 %i.aq, 8192
  %.not273455 = icmp eq i16 %i.ar, 0
  br i1 %.not273455, label %.critedge, label %.lr.ph457

bb.l:                                             ; preds = %.lr.ph457
  %i.as = load i8, ptr %i.ax, align 1, !tbaa !14
  %i.at = sext i8 %i.as to i64
  %i.au = getelementptr inbounds [2 x i8], ptr %i.am, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !18
  %i.aw = and i16 %i.av, 8192
  %.not273 = icmp eq i16 %i.aw, 0
  br i1 %.not273, label %.critedge, label %.lr.ph457

.lr.ph457:                                        ; preds = %.lr.ph335, %bb.l
  %.2234333456 = phi ptr [ %i.ax, %bb.l ], [ %.1233, %.lr.ph335 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.2234333456, i64 1 ; 4 uses
  %i.ay = ptrtoint ptr %i.ax to i64               ; 2 uses
  %i.az = sub i64 %i.ay, %.pre-phi                ; 2 uses
  %i.ba = icmp ult i64 %i.az, %3
  br i1 %i.ba, label %bb.l, label %._crit_edge.thread

.critedge:                                        ; preds = %bb.l, %.lr.ph335, %bb.k
  %.2234.lcssa = phi ptr [ %.1233, %bb.k ], [ %.1233, %.lr.ph335 ], [ %i.ax, %bb.l ] ; 6 uses
  %.lcssa323 = phi i64 [ %.pre-phi358, %bb.k ], [ %.pre-phi358, %.lr.ph335 ], [ %i.ay, %bb.l ]
  %.lcssa321 = phi i64 [ %i.aj, %bb.k ], [ %i.aj, %.lr.ph335 ], [ %i.az, %bb.l ]
  %i.bb = icmp eq i64 %.lcssa321, %3
  br i1 %i.bb, label %._crit_edge.thread, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 4 uses
  store ptr %i.bc, ptr %i.a, align 8, !tbaa !10
  %i.bd = call i32 @is_object_reference(ptr noundef %.2234.lcssa, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %.not274 = icmp eq i32 %i.bd, 0
  br i1 %.not274, label %bb.av, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.be = load i32, ptr %i.b, align 4, !tbaa !13
  %i.bf = call ptr @find_obj(ptr noundef %0, ptr noundef %1, i32 noundef %i.be) #13 ; 9 uses
  %.not290 = icmp eq ptr %i.bf, null
  br i1 %.not290, label %bb.au, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !52 ; 3 uses
  %.not291 = icmp eq i64 %i.bh, 0
  br i1 %.not291, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !54 ; 2 uses
  %i.bk = add i64 %i.bj, -1
  %or.cond.not = icmp ult i64 %i.bk, %i.bh
  br i1 %or.cond.not, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bl = load i32, ptr %i.bf, align 8, !tbaa !31
  %i.bm = zext i32 %i.bl to i64                   ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !53
  %i.bp = ptrtoint ptr %i.bo to i64               ; 3 uses
  %.not294 = icmp ult i64 %i.bm, %i.bp
  br i1 %.not294, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = add i64 %i.bj, %i.bm                    ; 2 uses
  %i.br = add i64 %i.bh, %i.bp                    ; 2 uses
  %.not295 = icmp ule i64 %i.bq, %i.br
  %i.bs = icmp ugt i64 %i.bq, %i.bp
  %or.cond309 = and i1 %i.bs, %.not295
  %i.bt = icmp ugt i64 %i.br, %i.bm
  %or.cond310 = and i1 %i.bt, %or.cond309
  br i1 %or.cond310, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6) #13
  br label %bb.au

bb.t:                                             ; preds = %bb.r
  %i.bu = icmp eq ptr %i.bf, %1
  br i1 %i.bu, label %bb.au, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !55
  %i.bx = and i32 %i.bw, 1
  %.not296 = icmp eq i32 %i.bx, 0
  br i1 %.not296, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @pdf_parseobj(ptr noundef nonnull %0, ptr noundef nonnull %i.bf) #13
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.by = getelementptr inbounds nuw i8, ptr %i.bf, i64 20 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !56 ; 2 uses
  %i.ca = or i32 %i.bz, 1048576
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !56
  %i.cb = load i32, ptr %i.c, align 4, !tbaa !29
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr %i.c, align 4, !tbaa !29
  %i.cd = call i32 @pdf_extract_obj(ptr noundef nonnull %0, ptr noundef nonnull %i.bf, i32 noundef 0) #13
  %i.ce = load i32, ptr %i.c, align 4, !tbaa !29
  %i.cf = add i32 %i.ce, -1
  store i32 %i.cf, ptr %i.c, align 4, !tbaa !29
  %.not297 = icmp eq i32 %i.cd, 0
  br i1 %.not297, label %bb.x, label %bb.au

bb.x:                                             ; preds = %bb.w
  store i32 %i.bz, ptr %i.by, align 4, !tbaa !56
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bf, i64 312 ; 19 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !57 ; 2 uses
  %.not298 = icmp eq ptr %i.ch, null
  br i1 %.not298, label %bb.au, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ci = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.ch, i32 noundef 0) #13 ; 8 uses
  %i.cj = icmp eq i32 %i.ci, -1
  br i1 %i.cj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !57
  %i.cl = call i32 @cli_unlink(ptr noundef %i.ck) #13 ; 0 uses
  %i.cm = load ptr, ptr %i.cg, align 8, !tbaa !57
  call void @free(ptr noundef %i.cm) #13
  store ptr null, ptr %i.cg, align 8, !tbaa !57
  br label %bb.au

bb.aa:                                            ; preds = %bb.y
  %i.cn = call i32 @fstat(i32 noundef %i.ci, ptr noundef nonnull %7) #13
  %.not299 = icmp eq i32 %i.cn, 0
  br i1 %.not299, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.co = call i32 @close(i32 noundef %i.ci) #13  ; 0 uses
  %i.cp = load ptr, ptr %i.cg, align 8, !tbaa !57
  %i.cq = call i32 @cli_unlink(ptr noundef %i.cp) #13 ; 0 uses
  %i.cr = load ptr, ptr %i.cg, align 8, !tbaa !57
  call void @free(ptr noundef %i.cr) #13
  store ptr null, ptr %i.cg, align 8, !tbaa !57
  br label %bb.au

bb.ac:                                            ; preds = %bb.aa
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !60 ; 5 uses
  %.not300 = icmp eq i64 %i.ct, 0
  br i1 %.not300, label %bb.as, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cu = add nsw i64 %i.ct, 1
  %i.cv = call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.cu) #16 ; 9 uses
  %.not301 = icmp eq ptr %i.cv, null
  br i1 %.not301, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cw = call i32 @close(i32 noundef %i.ci) #13  ; 0 uses
  %i.cx = load ptr, ptr %i.cg, align 8, !tbaa !57
  %i.cy = call i32 @cli_unlink(ptr noundef %i.cx) #13 ; 0 uses
  %i.cz = load ptr, ptr %i.cg, align 8, !tbaa !57
  call void @free(ptr noundef %i.cz) #13
  store ptr null, ptr %i.cg, align 8, !tbaa !57
  br label %bb.au

bb.af:                                            ; preds = %bb.ad
  %i.da = call i64 @read(i32 noundef %i.ci, ptr noundef nonnull %i.cv, i64 noundef %i.ct) #13
  %.not302 = icmp eq i64 %i.da, %i.ct
  br i1 %.not302, label %.preheader317, label %bb.ag

.preheader317:                                    ; preds = %bb.af
  %i.db = ptrtoint ptr %i.cv to i64
  %i.dc = tail call ptr @__ctype_b_loc() #14
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !16
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.de = call i32 @close(i32 noundef %i.ci) #13  ; 0 uses
  %i.df = load ptr, ptr %i.cg, align 8, !tbaa !57
  %i.dg = call i32 @cli_unlink(ptr noundef %i.df) #13 ; 0 uses
  %i.dh = load ptr, ptr %i.cg, align 8, !tbaa !57
  call void @free(ptr noundef %i.dh) #13
  store ptr null, ptr %i.cg, align 8, !tbaa !57
  call void @free(ptr noundef nonnull %i.cv) #13
  br label %bb.au

bb.ah:                                            ; preds = %.preheader317, %bb.ai
  %.0228346 = phi i64 [ %i.ct, %.preheader317 ], [ %i.do, %bb.ai ] ; 2 uses
  %.0229345 = phi ptr [ %i.cv, %.preheader317 ], [ %i.dn, %bb.ai ] ; 3 uses
  %i.di = load i8, ptr %.0229345, align 1, !tbaa !14 ; 2 uses
  %i.dj = sext i8 %i.di to i64
  %i.dk = getelementptr inbounds [2 x i8], ptr %i.dd, i64 %i.dj
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !18
  %i.dm = and i16 %i.dl, 8192
  %.not303 = icmp eq i16 %i.dm, 0
  br i1 %.not303, label %.critedge2, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dn = getelementptr inbounds nuw i8, ptr %.0229345, i64 1 ; 4 uses
  %i.do = add i64 %.0228346, -1                   ; 3 uses
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.dp, %i.db
  %i.dr = icmp ult i64 %i.dq, %i.do
  br i1 %i.dr, label %bb.ah, label %..critedge2_crit_edge

..critedge2_crit_edge:                            ; preds = %bb.ai
  %.pre = load i8, ptr %i.dn, align 1, !tbaa !14
  br label %.critedge2

.critedge2:                                       ; preds = %bb.ah, %..critedge2_crit_edge
  %i.ds = phi i8 [ %.pre, %..critedge2_crit_edge ], [ %i.di, %bb.ah ]
  %.0229.lcssa = phi ptr [ %i.dn, %..critedge2_crit_edge ], [ %.0229345, %bb.ah ]
  %.0228.lcssa = phi i64 [ %i.do, %..critedge2_crit_edge ], [ %.0228346, %bb.ah ] ; 6 uses
  switch i8 %i.ds, label %bb.ak [
    i8 40, label %bb.aj
    i8 60, label %bb.aj
  ]

bb.aj:                                            ; preds = %.critedge2, %.critedge2
  %i.dt = load i32, ptr %i.c, align 4, !tbaa !29
  %i.du = add i32 %i.dt, 1
  store i32 %i.du, ptr %i.c, align 4, !tbaa !29
  %i.dv = call ptr @pdf_parse_string(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %.0229.lcssa, i64 noundef %.0228.lcssa, ptr noundef null, ptr noundef null, ptr noundef %6)
  %i.dw = load i32, ptr %i.c, align 4, !tbaa !29
  %i.dx = add i32 %i.dw, -1
  store i32 %i.dx, ptr %i.c, align 4, !tbaa !29
  br label %bb.ar

bb.ak:                                            ; preds = %.critedge2
  %i.dy = call ptr @pdf_finalize_string(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.cv, i64 noundef %.0228.lcssa) ; 4 uses
  %.not304 = icmp eq ptr %i.dy, null
  br i1 %.not304, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.dz = add i64 %.0228.lcssa, 1
  %i.ea = call ptr @cli_max_calloc(i64 noundef 1, i64 noundef %i.dz) #13 ; 5 uses
  %.not305 = icmp eq ptr %i.ea, null
  br i1 %.not305, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.eb = call i32 @close(i32 noundef %i.ci) #13  ; 0 uses
  %i.ec = load ptr, ptr %i.cg, align 8, !tbaa !57
  %i.ed = call i32 @cli_unlink(ptr noundef %i.ec) #13 ; 0 uses
  %i.ee = load ptr, ptr %i.cg, align 8, !tbaa !57
  call void @free(ptr noundef %i.ee) #13
  store ptr null, ptr %i.cg, align 8, !tbaa !57
  call void @free(ptr noundef nonnull %i.cv) #13
  br label %bb.au

bb.an:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ea, ptr nonnull align 1 %i.cv, i64 %.0228.lcssa, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 %.0228.lcssa
  store i8 0, ptr %i.ef, align 1, !tbaa !14
  %.not306 = icmp eq ptr %6, null
  br i1 %.not306, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eg = trunc i64 %.0228.lcssa to i32
  store i32 %i.eg, ptr %6, align 8, !tbaa !63
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.eh, align 8, !tbaa !64
  %i.ei = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.ei, align 8, !tbaa !65
  br label %bb.ar

bb.ap:                                            ; preds = %bb.ak
  %.not307 = icmp eq ptr %6, null
  br i1 %.not307, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ej = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dy) #15
  %i.ek = trunc i64 %i.ej to i32
  store i32 %i.ek, ptr %6, align 8, !tbaa !63
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.el, align 8, !tbaa !64
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 1, ptr %i.em, align 8, !tbaa !65
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ao, %bb.an, %bb.aq, %bb.ap, %bb.aj
  %.0231 = phi ptr [ %i.dy, %bb.aq ], [ %i.dy, %bb.ap ], [ %i.ea, %bb.ao ], [ %i.ea, %bb.an ], [ %i.dv, %bb.aj ]
  call void @free(ptr noundef %i.cv) #13
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ac
  %.1 = phi ptr [ %.0231, %bb.ar ], [ null, %bb.ac ] ; 2 uses
  %i.en = call i32 @close(i32 noundef %i.ci) #13  ; 0 uses
  %i.eo = load ptr, ptr %i.cg, align 8, !tbaa !57
  %i.ep = call i32 @cli_unlink(ptr noundef %i.eo) #13 ; 0 uses
  %i.eq = load ptr, ptr %i.cg, align 8, !tbaa !57
  call void @free(ptr noundef %i.eq) #13
  store ptr null, ptr %i.cg, align 8, !tbaa !57
  %.not308 = icmp eq ptr %5, null
  br i1 %.not308, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.er = load ptr, ptr %i.a, align 8, !tbaa !10
  store ptr %i.er, ptr %5, align 8, !tbaa !10
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at, %bb.x, %bb.w, %bb.t, %bb.n, %bb.am, %bb.ag, %bb.ae, %bb.ab, %bb.z, %bb.s
  %.0235 = phi ptr [ null, %bb.n ], [ null, %bb.t ], [ null, %bb.z ], [ null, %bb.ab ], [ null, %bb.ag ], [ null, %bb.x ], [ null, %bb.am ], [ null, %bb.ae ], [ null, %bb.w ], [ null, %bb.s ], [ %.1, %bb.at ], [ %.1, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %._crit_edge.thread

bb.av:                                            ; preds = %bb.m
  %i.es = load i8, ptr %.2234.lcssa, align 1, !tbaa !14
  switch i8 %i.es, label %._crit_edge.thread [
    i8 60, label %.preheader.preheader
    i8 40, label %bb.be
  ]

.preheader.preheader:                             ; preds = %bb.av
  %storemerge283461 = getelementptr inbounds nuw i8, ptr %.2234.lcssa, i64 1 ; 4 uses
  store ptr %storemerge283461, ptr %i.a, align 8, !tbaa !10
  %i.et = ptrtoint ptr %storemerge283461 to i64   ; 3 uses
  %i.eu = sub i64 %i.et, %.pre-phi                ; 3 uses
  %i.ev = icmp ult i64 %i.eu, %3
  br i1 %i.ev, label %.lr.ph463, label %.critedge4

.preheader:                                       ; preds = %.lr.ph463
  %storemerge283 = getelementptr inbounds nuw i8, ptr %storemerge283462, i64 1 ; 4 uses
  store ptr %storemerge283, ptr %i.a, align 8, !tbaa !10
  %i.ew = ptrtoint ptr %storemerge283 to i64      ; 3 uses
  %i.ex = sub i64 %i.ew, %.pre-phi                ; 3 uses
  %i.ey = icmp ult i64 %i.ex, %3
  br i1 %i.ey, label %.lr.ph463, label %.critedge4

.lr.ph463:                                        ; preds = %.preheader.preheader, %.preheader
  %i.ez = phi i64 [ %i.ex, %.preheader ], [ %i.eu, %.preheader.preheader ]
  %8 = phi i64 [ %i.ew, %.preheader ], [ %i.et, %.preheader.preheader ]
  %storemerge283462 = phi ptr [ %storemerge283, %.preheader ], [ %storemerge283461, %.preheader.preheader ] ; 3 uses
  %i.fa = load i8, ptr %storemerge283462, align 1, !tbaa !14
  %.not284 = icmp eq i8 %i.fa, 62
  br i1 %.not284, label %.critedge4, label %.preheader

.critedge4:                                       ; preds = %.lr.ph463, %.preheader, %.preheader.preheader
  %storemerge283.lcssa = phi ptr [ %storemerge283461, %.preheader.preheader ], [ %storemerge283462, %.lr.ph463 ], [ %storemerge283, %.preheader ]
  %.lcssa434 = phi i64 [ %i.et, %.preheader.preheader ], [ %8, %.lr.ph463 ], [ %i.ew, %.preheader ]
  %.lcssa = phi i64 [ %i.eu, %.preheader.preheader ], [ %i.ez, %.lr.ph463 ], [ %i.ex, %.preheader ]
  %i.fb = icmp eq i64 %.lcssa, %3
  br i1 %i.fb, label %._crit_edge.thread, label %bb.aw

bb.aw:                                            ; preds = %.critedge4
  %i.fc = sub i64 %.lcssa434, %.lcssa323          ; 4 uses
  %i.fd = add nsw i64 %i.fc, 1                    ; 2 uses
  %i.fe = call ptr @pdf_finalize_string(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.2234.lcssa, i64 noundef %i.fd) ; 4 uses
  %.not285 = icmp eq ptr %i.fe, null
  br i1 %.not285, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.ff = add nsw i64 %i.fc, 2
  %i.fg = call ptr @cli_max_calloc(i64 noundef 1, i64 noundef %i.ff) #13 ; 5 uses
  %.not286 = icmp eq ptr %i.fg, null
  br i1 %.not286, label %._crit_edge.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fg, ptr nonnull align 1 %.2234.lcssa, i64 %i.fd, i1 false)
  %i.fh = getelementptr i8, ptr %i.fg, i64 %i.fc
  %i.fi = getelementptr i8, ptr %i.fh, i64 1
  store i8 0, ptr %i.fi, align 1, !tbaa !14
  %.not287 = icmp eq ptr %6, null
  br i1 %.not287, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fj = trunc i64 %i.fc to i32
  %i.fk = add i32 %i.fj, 1
  br label %.sink.split

bb.ba:                                            ; preds = %bb.aw
  %.not288 = icmp eq ptr %6, null
  br i1 %.not288, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fl = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fe) #15
  %i.fm = trunc i64 %i.fl to i32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.az, %bb.bb
  %.sink426 = phi i32 [ %i.fm, %bb.bb ], [ %i.fk, %bb.az ]
  %.sink = phi i32 [ 1, %bb.bb ], [ 0, %bb.az ]
  %.2.ph = phi ptr [ %i.fe, %bb.bb ], [ %i.fg, %bb.az ]
  store i32 %.sink426, ptr %6, align 8, !tbaa !63
  %i.fn = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.fn, align 8, !tbaa !64
  %i.fo = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %.sink, ptr %i.fo, align 8, !tbaa !65
  br label %bb.bc

bb.bc:                                            ; preds = %.sink.split, %bb.ba, %bb.ay
  %.2 = phi ptr [ %i.fg, %bb.ay ], [ %i.fe, %bb.ba ], [ %.2.ph, %.sink.split ] ; 2 uses
  %.not289 = icmp eq ptr %5, null
  br i1 %.not289, label %._crit_edge.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store ptr %storemerge283.lcssa, ptr %5, align 8, !tbaa !10
  br label %._crit_edge.thread

bb.be:                                            ; preds = %bb.av
  %i.fp = getelementptr inbounds nuw i8, ptr %.2234.lcssa, i64 1 ; 7 uses
  store ptr %i.fp, ptr %i.a, align 8, !tbaa !10
  %i.fq = icmp ult ptr %i.fp, %i.bc
  br i1 %i.fq, label %.lr.ph350, label %.loopexit

.lr.ph350:                                        ; preds = %bb.be, %bb.bg
  %storemerge348 = phi ptr [ %i.fu, %bb.bg ], [ %i.fp, %bb.be ] ; 4 uses
  %i.fr = load i8, ptr %storemerge348, align 1, !tbaa !14
  switch i8 %i.fr, label %bb.bg [
    i8 92, label %bb.bf
    i8 41, label %.thread
  ]

bb.bf:                                            ; preds = %.lr.ph350
  %i.fs = getelementptr inbounds nuw i8, ptr %storemerge348, i64 1
  br label %bb.bg

.thread:                                          ; preds = %.lr.ph350
  %i.ft = getelementptr inbounds i8, ptr %storemerge348, i64 -1 ; 2 uses
  store ptr %i.ft, ptr %i.a, align 8, !tbaa !10
  br label %.loopexit

bb.bg:                                            ; preds = %bb.bf, %.lr.ph350
  %storemerge347 = phi ptr [ %i.fs, %bb.bf ], [ %storemerge348, %.lr.ph350 ]
  %i.fu = getelementptr inbounds nuw i8, ptr %storemerge347, i64 1 ; 4 uses
  store ptr %i.fu, ptr %i.a, align 8, !tbaa !10
  %i.fv = icmp ult ptr %i.fu, %i.bc
  br i1 %i.fv, label %.lr.ph350, label %.loopexit

.loopexit:                                        ; preds = %bb.bg, %bb.be, %.thread
  %i.fw = phi ptr [ %i.ft, %.thread ], [ %i.fp, %bb.be ], [ %i.fu, %bb.bg ] ; 3 uses
  %.not277 = icmp ult ptr %i.fw, %i.bc
  br i1 %.not277, label %bb.bh, label %._crit_edge.thread

bb.bh:                                            ; preds = %.loopexit
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = ptrtoint ptr %i.fp to i64
  %i.fz = sub i64 %i.fx, %i.fy                    ; 2 uses
  %i.ga = add i64 %i.fz, 1                        ; 4 uses
  %i.gb = call ptr @pdf_finalize_string(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.fp, i64 noundef %i.ga) ; 4 uses
  %.not278 = icmp eq ptr %i.gb, null
  br i1 %.not278, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.gc = add i64 %i.fz, 2
  %i.gd = call ptr @cli_max_calloc(i64 noundef 1, i64 noundef %i.gc) #13 ; 5 uses
  %.not279 = icmp eq ptr %i.gd, null
  br i1 %.not279, label %._crit_edge.thread, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gd, ptr nonnull align 1 %i.fp, i64 %i.ga, i1 false)
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.ga
  store i8 0, ptr %i.ge, align 1, !tbaa !14
  %.not280 = icmp eq ptr %6, null
  br i1 %.not280, label %bb.bm, label %.sink.split427

bb.bk:                                            ; preds = %bb.bh
  %.not281 = icmp eq ptr %6, null
  br i1 %.not281, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gb) #15
  br label %.sink.split427

.sink.split427:                                   ; preds = %bb.bj, %bb.bl
  %.sink432 = phi i64 [ %i.gf, %bb.bl ], [ %i.ga, %bb.bj ]
  %.sink428 = phi i32 [ 1, %bb.bl ], [ 0, %bb.bj ]
  %.3.ph = phi ptr [ %i.gb, %bb.bl ], [ %i.gd, %bb.bj ]
  %i.gg = trunc i64 %.sink432 to i32
  store i32 %i.gg, ptr %6, align 8, !tbaa !63
  %i.gh = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.gh, align 8, !tbaa !64
  %i.gi = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %.sink428, ptr %i.gi, align 8, !tbaa !65
  br label %bb.bm

bb.bm:                                            ; preds = %.sink.split427, %bb.bk, %bb.bj
  %.3 = phi ptr [ %i.gd, %bb.bj ], [ %i.gb, %bb.bk ], [ %.3.ph, %.sink.split427 ] ; 2 uses
  %.not282 = icmp eq ptr %5, null
  br i1 %.not282, label %._crit_edge.thread, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  store ptr %i.fw, ptr %5, align 8, !tbaa !10
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.lr.ph453, %.lr.ph457, %.preheader318, %bb.bm, %bb.bn, %bb.bi, %.loopexit, %bb.av, %bb.bc, %bb.bd, %bb.ax, %.critedge4, %.critedge, %._crit_edge, %bb.i, %bb.au, %bb.g, %bb.e, %bb.b
  %.1236 = phi ptr [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.g ], [ null, %bb.i ], [ null, %._crit_edge ], [ %.0235, %bb.au ], [ null, %.critedge ], [ null, %bb.ax ], [ null, %.critedge4 ], [ %.2, %bb.bc ], [ null, %bb.av ], [ null, %bb.bi ], [ null, %.loopexit ], [ %.2, %bb.bd ], [ %.3, %bb.bn ], [ %.3, %bb.bm ], [ null, %.lr.ph457 ], [ null, %.preheader318 ], [ null, %.lr.ph453 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %.1236
}

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

declare ptr @find_obj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @pdf_parseobj(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @pdf_extract_obj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #8

declare i32 @cli_unlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #9

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define noalias noundef ptr @pdf_parse_dict(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 16 uses
  %i.b = icmp ne ptr %0, null
  %i.c = icmp ne ptr %1, null
  %or.cond = and i1 %i.b, %i.c
  %i.d = icmp ne ptr %3, null
  %or.cond3 = and i1 %or.cond, %i.d
  br i1 %or.cond3, label %bb.b, label %bb.by

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 11 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !29
  %i.g = icmp ugt i32 %i.f, 25
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.7) #13
  br label %bb.by

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30   ; 2 uses
end_hunk_0
