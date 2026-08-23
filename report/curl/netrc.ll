Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/netrc?download=true
inline.NumInlined: 18
inline.NumDeleted: 13
begin_hunk_0_@netrc_scan_file:bb.a
  br label %netrc_scan_literal.exit.i

bb.ar:                                            ; preds = %bb.ad
  %i.dh = call fastcc i32 @netrc_lexer_next(ptr noundef nonnull %6, i1 noundef zeroext true) ; 2 uses
  %.not.i32.i = icmp eq i32 %i.dh, 0
  br i1 %.not.i32.i, label %bb.as, label %netrc_scan.exit

bb.as:                                            ; preds = %bb.ar
  %i.di = load i32, ptr %i.bm, align 8, !tbaa !97
  %i.dj = icmp eq i32 %i.di, 1
  br i1 %i.dj, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.dk = load i8, ptr %i.bi, align 8, !tbaa !96, !range !81, !noundef !98
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.au, label %netrc_scan_literal.exit.i

bb.au:                                            ; preds = %bb.at
  %i.dm = load ptr, ptr @Curl_cfree, align 8, !tbaa !74
  %i.dn = load ptr, ptr %i.bg, align 8, !tbaa !79
  call void %i.dm(ptr noundef %i.dn) #8, !inline_history !102
  %i.do = load ptr, ptr @Curl_cstrdup, align 8, !tbaa !74
  %i.dp = call ptr @curlx_dyn_ptr(ptr noundef nonnull %i.av) #8
  %i.dq = call ptr %i.do(ptr noundef %i.dp) #8, !inline_history !102 ; 2 uses
  store ptr %i.dq, ptr %i.bg, align 8, !tbaa !79
  %.not13.i34.i = icmp eq ptr %i.dq, null
  %spec.select.i35.i = select i1 %.not13.i34.i, i32 4, i32 0
  br label %netrc_scan_literal.exit.i

bb.av:                                            ; preds = %bb.as
  store i8 1, ptr %i.bo, align 4, !tbaa !101
  br label %netrc_scan_literal.exit.i

bb.aw:                                            ; preds = %bb.ad
  %i.dr = load ptr, ptr %i.aw, align 8, !tbaa !88
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.backedge, %bb.aw
  %.0.i37.i = phi ptr [ %i.dr, %bb.aw ], [ %.0.i37.i.be, %.loopexit.i.i.backedge ] ; 5 uses
  %i.ds = load i8, ptr %.0.i37.i, align 1, !tbaa !80
  switch i8 %i.ds, label %bb.ay [
    i8 0, label %netrc_skip_to_empty_line.exit.i
    i8 13, label %bb.ax
    i8 10, label %.preheader.i.i
  ]

bb.ax:                                            ; preds = %.loopexit.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.i37.i, i64 1
  br label %.loopexit.i.i.backedge

.preheader.i.i:                                   ; preds = %.loopexit.i.i, %.preheader.i.i
  %.0.pn.i.i = phi ptr [ %.1.i.i, %.preheader.i.i ], [ %.0.i37.i, %.loopexit.i.i ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.0.pn.i.i, i64 1 ; 4 uses
  %i.du = load i8, ptr %.1.i.i, align 1, !tbaa !80
  switch i8 %i.du, label %.loopexit.i.i.backedge [
    i8 13, label %.preheader.i.i
    i8 10, label %netrc_skip_to_empty_line.exit.i
  ], !llvm.loop !103

bb.ay:                                            ; preds = %.loopexit.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.i37.i, i64 1
  br label %.loopexit.i.i.backedge

.loopexit.i.i.backedge:                           ; preds = %.preheader.i.i, %bb.ay, %bb.ax
  %.0.i37.i.be = phi ptr [ %i.dt, %bb.ax ], [ %i.dv, %bb.ay ], [ %.1.i.i, %.preheader.i.i ]
  br label %.loopexit.i.i, !llvm.loop !103

netrc_skip_to_empty_line.exit.i:                  ; preds = %.loopexit.i.i, %.preheader.i.i
  %.3.i.i = phi ptr [ %.1.i.i, %.preheader.i.i ], [ %.0.i37.i, %.loopexit.i.i ]
  store ptr %.3.i.i, ptr %i.aw, align 8, !tbaa !88
  br label %netrc_scan_literal.exit.i

netrc_scan_literal.exit.i:                        ; preds = %netrc_skip_to_empty_line.exit.i, %bb.av, %bb.au, %bb.at, %bb.aq, %bb.ap, %bb.ao, %bb.al, %bb.ak, %bb.ai, %bb.ah, %bb.ag, %bb.ad
  %.2.i38 = phi i32 [ 0, %bb.aq ], [ 0, %bb.ad ], [ 0, %bb.at ], [ 0, %bb.ag ], [ 0, %bb.ah ], [ 0, %bb.ai ], [ 0, %netrc_skip_to_empty_line.exit.i ], [ 0, %bb.ak ], [ 0, %bb.ao ], [ %spec.select.i35.i, %bb.au ], [ 0, %bb.al ], [ 0, %bb.av ], [ %spec.select.i30.i, %bb.ap ] ; 2 uses
  %.not.i39 = icmp ne i32 %.2.i38, 0
  %i.dw = load i8, ptr %i.bj, align 1, !range !81
  %i.dx = trunc nuw i8 %i.dw to i1
  %.not19.i = select i1 %.not.i39, i1 true, i1 %i.dx
  br i1 %.not19.i, label %._crit_edge.i, label %bb.u, !llvm.loop !104

._crit_edge.i:                                    ; preds = %netrc_scan_literal.exit.i, %netrc_scan_end_entry.exit.i
  %.3.i40 = phi i32 [ %.2.i38, %netrc_scan_literal.exit.i ], [ %.0.i.i, %netrc_scan_end_entry.exit.i ] ; 2 uses
  %.not22.i = icmp eq i32 %.3.i40, 0
  br i1 %.not22.i, label %.thread.i, label %netrc_scan.exit

.thread.i:                                        ; preds = %bb.ad, %._crit_edge.i, %netrc_scan_init.exit.i
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !105 ; 2 uses
  %.not23.i = icmp eq ptr %i.dz, null
  br i1 %.not23.i, label %netrc_scan.exit, label %bb.az

bb.az:                                            ; preds = %.thread.i
  call void @Curl_creds_link(ptr noundef %5, ptr noundef nonnull %i.dz) #8
  br label %netrc_scan.exit

netrc_scan.exit:                                  ; preds = %bb.u, %bb.ae, %bb.aj, %bb.am, %bb.ar, %._crit_edge.i, %.thread.i, %bb.az
  %.4.i = phi i32 [ %.3.i40, %._crit_edge.i ], [ 0, %bb.az ], [ 1, %.thread.i ], [ %i.dh, %bb.ar ], [ %i.cx, %bb.am ], [ %i.cu, %bb.aj ], [ %i.cm, %bb.ae ], [ %i.bp, %bb.u ]
  %i.ea = load ptr, ptr @Curl_cfree, align 8, !tbaa !74
  %i.eb = load ptr, ptr %i.bd, align 8, !tbaa !93
  call void %i.ea(ptr noundef %i.eb) #8, !inline_history !106
  store ptr null, ptr %i.bd, align 8, !tbaa !93
  %i.ec = load ptr, ptr @Curl_cfree, align 8, !tbaa !74
  %i.ed = load ptr, ptr %i.bg, align 8, !tbaa !95
  call void %i.ec(ptr noundef %i.ed) #8, !inline_history !106
  store ptr null, ptr %i.bg, align 8, !tbaa !95
  store i8 0, ptr %i.bi, align 8, !tbaa !96
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  call void @Curl_creds_unlink(ptr noundef nonnull %i.ee) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @curlx_dyn_free(ptr noundef nonnull %i.av) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %.thread

.thread:                                          ; preds = %file2memory.exit.thread, %bb.k, %bb.m, %bb.n, %bb.o, %bb.q, %netrc_scan.exit
  %.1 = phi i32 [ %.4.i, %netrc_scan.exit ], [ %.3.i43, %file2memory.exit.thread ], [ %.3.i43, %bb.k ], [ %.3.i43, %bb.m ], [ %.3.i43, %bb.n ], [ %.3.i43, %bb.o ], [ 4, %bb.q ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define void @Curl_netrc_init(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @curlx_dyn_init(ptr noundef %0, i64 noundef 131072) #8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, -2
  store i8 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.d, align 8, !tbaa !75
  ret void
}

declare void @curlx_dyn_init(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @Curl_netrc_cleanup(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @curlx_dyn_free(ptr noundef %0) #8
  %i.a = load ptr, ptr @Curl_cfree, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !75
  tail call void %i.a(ptr noundef %i.c) #8
  store ptr null, ptr %i.b, align 8, !tbaa !75
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = and i8 %i.e, -2
  store i8 %i.f, ptr %i.d, align 8
  ret void
}

declare void @curlx_dyn_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @Curl_netrc_strerror(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %switch.tableidx = add i32 %0, -1               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 4
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.Curl_netrc_strerror, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.0 = phi ptr [ @.str.5, %bb.a ], [ %switch.load, %switch.lookup ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare void @curlx_dyn_reset(ptr noundef) local_unnamed_addr #2

declare ptr @curlx_dyn_ptr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @Curl_get_line(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @curlx_str_passblanks(ptr noundef) local_unnamed_addr #2

declare i32 @curlx_dyn_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 5) i32 @netrc_lexer_next(ptr noundef nonnull %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !101, !range !81, !noundef !98
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !88
  store i8 0, ptr %i.d, align 4, !tbaa !101
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @curlx_dyn_reset(ptr noundef nonnull %i.h) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !88   ; 3 uses
  store ptr %i.i, ptr %i.b, align 8, !tbaa !79
  %i.j = load i8, ptr %i.i, align 1, !tbaa !80
  %.not4.i = icmp eq i8 %i.j, 0
  br i1 %.not4.i, label %netrc_skip_blanks.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.f
  call void @curlx_str_passblanks(ptr noundef nonnull %i.b) #8
  %.promoted.i = load ptr, ptr %i.b, align 8, !tbaa !79
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %i.k = phi ptr [ %i.m, %bb.e ], [ %.promoted.i, %.lr.ph.i ] ; 5 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !80
  switch i8 %i.l, label %netrc_skip_blanks.exit [
    i8 13, label %bb.e
    i8 10, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  store ptr %i.m, ptr %i.b, align 8, !tbaa !79
  br label %bb.d, !llvm.loop !107

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  store ptr %i.n, ptr %i.b, align 8, !tbaa !79
  %i.o = load i8, ptr %i.n, align 1, !tbaa !80
  %.not.i = icmp eq i8 %i.o, 0
  br i1 %.not.i, label %netrc_skip_blanks.exit.loopexit90, label %.lr.ph.i, !llvm.loop !108

netrc_skip_blanks.exit.loopexit90:                ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  br label %netrc_skip_blanks.exit

netrc_skip_blanks.exit:                           ; preds = %bb.d, %netrc_skip_blanks.exit.loopexit90, %bb.c
  %i.q = phi ptr [ %i.p, %netrc_skip_blanks.exit.loopexit90 ], [ %i.i, %bb.c ], [ %i.k, %bb.d ] ; 15 uses
  store ptr %i.q, ptr %i.c, align 8, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %i.r = load i8, ptr %i.q, align 1, !tbaa !80    ; 2 uses
  switch i8 %i.r, label %.preheader [
    i8 0, label %bb.g
    i8 34, label %bb.h
  ]

bb.g:                                             ; preds = %netrc_skip_blanks.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.s, align 8, !tbaa !109
  br label %bb.ae

bb.h:                                             ; preds = %netrc_skip_blanks.exit
  %.01735.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 3 uses
  %i.t = load i8, ptr %.01735.i, align 1, !tbaa !80 ; 2 uses
  %.not36.i = icmp eq i8 %i.t, 0
  br i1 %.not36.i, label %netrc_lexer_quoted.exit, label %.lr.ph.i72

.lr.ph.i72:                                       ; preds = %bb.h, %bb.p
  %i.u = phi i8 [ %i.z, %bb.p ], [ %i.t, %bb.h ]  ; 3 uses
  %.01739.i = phi ptr [ %.017.i, %bb.p ], [ %.01735.i, %bb.h ] ; 3 uses
  %.01638.i = phi i1 [ %.2.i, %bb.p ], [ false, %bb.h ]
  %.pn37.i = phi ptr [ %.01739.i, %bb.p ], [ %i.q, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i8 %i.u, ptr %i.a, align 1, !tbaa !80
  br i1 %.01638.i, label %bb.i, label %bb.l

bb.i:                                             ; preds = %.lr.ph.i72
  switch i8 %i.u, label %bb.n [
    i8 110, label %.sink.split.i
    i8 114, label %bb.j
    i8 116, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  br label %.sink.split.i

bb.k:                                             ; preds = %bb.i
  br label %.sink.split.i

bb.l:                                             ; preds = %.lr.ph.i72
  switch i8 %i.u, label %bb.n [
    i8 92, label %bb.p
    i8 34, label %bb.m
  ], !llvm.loop !110

bb.m:                                             ; preds = %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %.pn37.i, i64 2
  br label %.thread.i

.sink.split.i:                                    ; preds = %bb.k, %bb.j, %bb.i
  %.sink.i = phi i8 [ 9, %bb.k ], [ 13, %bb.j ], [ 10, %bb.i ]
  store i8 %.sink.i, ptr %i.a, align 1, !tbaa !80
  br label %bb.n

bb.n:                                             ; preds = %.sink.split.i, %bb.l, %bb.i
  %i.w = call i32 @curlx_dyn_addn(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a, i64 noundef 1) #8 ; 2 uses
  %.not26.i = icmp eq i32 %i.w, 0
  br i1 %.not26.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.x = icmp eq i32 %i.w, 27
  %i.y = select i1 %i.x, i32 4, i32 2
  br label %.thread.i

.thread.i:                                        ; preds = %bb.o, %bb.m
  %.121.ph.i = phi i32 [ 0, %bb.m ], [ %i.y, %bb.o ]
  %.118.ph.i = phi ptr [ %i.v, %bb.m ], [ %.01739.i, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %netrc_lexer_quoted.exit

bb.p:                                             ; preds = %bb.n, %bb.l
  %.2.i = phi i1 [ true, %bb.l ], [ false, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %.017.i = getelementptr inbounds nuw i8, ptr %.01739.i, i64 1 ; 3 uses
  %i.z = load i8, ptr %.017.i, align 1, !tbaa !80 ; 2 uses
  %.not.i73 = icmp eq i8 %i.z, 0
  br i1 %.not.i73, label %netrc_lexer_quoted.exit, label %.lr.ph.i72

netrc_lexer_quoted.exit:                          ; preds = %bb.p, %bb.h, %.thread.i
  %.222.i = phi i32 [ %.121.ph.i, %.thread.i ], [ 2, %bb.h ], [ 2, %bb.p ]
  %.219.i = phi ptr [ %.118.ph.i, %.thread.i ], [ %.01735.i, %bb.h ], [ %.017.i, %bb.p ] ; 2 uses
  store ptr %.219.i, ptr %i.c, align 8, !tbaa !88
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 1, ptr %i.aa, align 8, !tbaa !109
  br label %bb.ae

.preheader:                                       ; preds = %netrc_skip_blanks.exit, %bb.q
  %i.ab = phi i8 [ %.pr, %bb.q ], [ %i.r, %netrc_skip_blanks.exit ]
  %.055 = phi ptr [ %i.ac, %bb.q ], [ %i.q, %netrc_skip_blanks.exit ] ; 11 uses
  switch i8 %i.ab, label %bb.q [
    i8 0, label %.critedge
    i8 32, label %.critedge
    i8 9, label %.critedge
    i8 10, label %.critedge
    i8 13, label %.critedge
  ]

bb.q:                                             ; preds = %.preheader
  %i.ac = getelementptr inbounds nuw i8, ptr %.055, i64 1 ; 2 uses
  %.pr = load i8, ptr %i.ac, align 1, !tbaa !80
  br label %.preheader, !llvm.loop !111

.critedge:                                        ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader
  %i.ad = ptrtoint ptr %.055 to i64
  %i.ae = ptrtoint ptr %i.q to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %.not60 = icmp eq ptr %.055, %i.q
  %spec.select = select i1 %.not60, i32 2, i32 0  ; 7 uses
  br i1 %1, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.critedge
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 1, ptr %i.ag, align 8, !tbaa !109
  %i.ah = call i32 @curlx_dyn_addn(ptr noundef nonnull %i.h, ptr noundef nonnull %i.q, i64 noundef %i.af) #8 ; 2 uses
  %.not67 = icmp eq i32 %i.ah, 0
  %i.ai = icmp eq i32 %i.ah, 27
  %i.aj = select i1 %i.ai, i32 4, i32 2
  %i.ak = select i1 %.not67, i32 0, i32 %i.aj
  br label %bb.ae

bb.s:                                             ; preds = %.critedge
  switch i64 %i.af, label %.critedge71.thread [
    i64 7, label %bb.t
    i64 5, label %bb.y
    i64 8, label %bb.aa
    i64 6, label %bb.ac
  ]

bb.t:                                             ; preds = %bb.s
  %i.al = call i32 @curl_strnequal(ptr noundef nonnull %i.q, ptr noundef nonnull @.str.12, i64 noundef 7) #8
  %.not61 = icmp eq i32 %i.al, 0
  br i1 %.not61, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 2, ptr %i.am, align 8, !tbaa !109
  br label %bb.ae

bb.v:                                             ; preds = %bb.t
  %i.an = call i32 @curl_strnequal(ptr noundef nonnull %i.q, ptr noundef nonnull @.str.13, i64 noundef 7) #8
  %.not62 = icmp eq i32 %i.an, 0
  br i1 %.not62, label %.critedge70, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 3, ptr %i.ao, align 8, !tbaa !109
  br label %bb.ae

.critedge70:                                      ; preds = %bb.v
  %i.ap = call i32 @curl_strnequal(ptr noundef nonnull %i.q, ptr noundef nonnull @.str.14, i64 noundef 7) #8
  %.not63 = icmp eq i32 %i.ap, 0
  br i1 %.not63, label %.critedge71.thread, label %bb.x

bb.x:                                             ; preds = %.critedge70
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 4, ptr %i.aq, align 8, !tbaa !109
  br label %bb.ae

bb.y:                                             ; preds = %bb.s
  %i.ar = call i32 @curl_strnequal(ptr noundef nonnull %i.q, ptr noundef nonnull @.str.15, i64 noundef 5) #8
  %.not64 = icmp eq i32 %i.ar, 0
  br i1 %.not64, label %.critedge71.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 5, ptr %i.as, align 8, !tbaa !109
  br label %bb.ae

bb.aa:                                            ; preds = %bb.s
  %i.at = call i32 @curl_strnequal(ptr noundef nonnull %i.q, ptr noundef nonnull @.str.16, i64 noundef 8) #8
  %.not65 = icmp eq i32 %i.at, 0
  br i1 %.not65, label %.critedge71.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 6, ptr %i.au, align 8, !tbaa !109
  br label %bb.ae

bb.ac:                                            ; preds = %bb.s
  %i.av = call i32 @curl_strnequal(ptr noundef nonnull %i.q, ptr noundef nonnull @.str.17, i64 noundef 6) #8
  %.not66 = icmp eq i32 %i.av, 0
  br i1 %.not66, label %.critedge71.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 7, ptr %i.aw, align 8, !tbaa !109
  br label %bb.ae

.critedge71.thread:                               ; preds = %bb.s, %.critedge70, %bb.aa, %bb.y, %bb.ac
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 8, ptr %i.ax, align 8, !tbaa !109
  br label %bb.ae

bb.ae:                                            ; preds = %bb.g, %netrc_lexer_quoted.exit, %bb.u, %bb.x, %bb.ab, %.critedge71.thread, %bb.ad, %bb.z, %bb.w, %bb.r, %bb.b
  %.156 = phi ptr [ %i.g, %bb.b ], [ %.055, %bb.r ], [ %.055, %bb.u ], [ %.055, %bb.w ], [ %.055, %bb.x ], [ %.055, %bb.z ], [ %.055, %bb.ab ], [ %.055, %bb.ad ], [ %.055, %.critedge71.thread ], [ %i.q, %bb.g ], [ %.219.i, %netrc_lexer_quoted.exit ]
  %.1 = phi i32 [ 0, %bb.b ], [ %i.ak, %bb.r ], [ %spec.select, %bb.u ], [ %spec.select, %bb.w ], [ %spec.select, %bb.x ], [ %spec.select, %bb.z ], [ %spec.select, %bb.ab ], [ %spec.select, %bb.ad ], [ %spec.select, %.critedge71.thread ], [ 0, %bb.g ], [ %.222.i, %netrc_lexer_quoted.exit ]
  store ptr %.156, ptr %i.c, align 8, !tbaa !88
  ret i32 %.1
}

declare i32 @curl_strequal(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Curl_creds_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare i32 @curlx_dyn_addn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @curl_strnequal(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @Curl_timestrcmp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Curl_creds_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !62, i64 4504}
!9 = !{!"Curl_easy", !5, i64 0, !10, i64 8, !5, i64 16, !5, i64 20, !11, i64 24, !12, i64 32, !5, i64 40, !5, i64 44, !13, i64 48, !18, i64 104, !18, i64 112, !19, i64 120, !20, i64 128, !23, i64 176, !24, i64 184, !32, i64 424, !43, i64 2200, !44, i64 2208, !45, i64 2216, !46, i64 2224, !49, i64 2784, !66, i64 4632, !67, i64 4640, !71, i64 4864}
!10 = !{!"long", !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS11connectdata", !11, i64 0}
!13 = !{!"Curl_message", !14, i64 0, !17, i64 32}
!14 = !{!"Curl_llist_node", !15, i64 0, !11, i64 8, !16, i64 16, !16, i64 24}
!15 = !{!"p1 _ZTS10Curl_llist", !11, i64 0}
!16 = !{!"p1 _ZTS15Curl_llist_node", !11, i64 0}
!17 = !{!"CURLMsg", !5, i64 0, !11, i64 8, !6, i64 16}
!18 = !{!"p1 _ZTS10Curl_multi", !11, i64 0}
!19 = !{!"p1 _ZTS10Curl_share", !11, i64 0}
!20 = !{!"Curl_hash", !21, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !10, i64 32, !10, i64 40}
!21 = !{!"p2 _ZTS17Curl_hash_element", !22, i64 0}
!22 = !{!"any p2 pointer", !11, i64 0}
!23 = !{!"p1 _ZTS8PslCache", !11, i64 0}
!24 = !{!"SingleRequest", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !25, i64 40, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !6, i64 76, !6, i64 77, !5, i64 80, !26, i64 88, !27, i64 96, !28, i64 104, !10, i64 168, !10, i64 176, !31, i64 184, !31, i64 192, !6, i64 200, !31, i64 208, !31, i64 216, !31, i64 224, !6, i64 232, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 235, !5, i64 235, !5, i64 235, !5, i64 235, !5, i64 235, !5, i64 235}
!25 = !{!"curltime", !10, i64 0, !5, i64 8}
!26 = !{!"p1 _ZTS12Curl_cwriter", !11, i64 0}
!27 = !{!"p1 _ZTS12Curl_creader", !11, i64 0}
!28 = !{!"bufq", !29, i64 0, !29, i64 8, !29, i64 16, !30, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !5, i64 56}
!29 = !{!"p1 _ZTS9buf_chunk", !11, i64 0}
!30 = !{!"p1 _ZTS9bufc_pool", !11, i64 0}
!31 = !{!"p1 omnipotent char", !11, i64 0}
!32 = !{!"UserDefined", !33, i64 0, !11, i64 8, !31, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !5, i64 48, !5, i64 52, !11, i64 56, !11, i64 64, !10, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !10, i64 312, !34, i64 320, !35, i64 328, !36, i64 336, !34, i64 344, !34, i64 352, !34, i64 360, !10, i64 368, !37, i64 376, !37, i64 576, !34, i64 776, !40, i64 784, !6, i64 786, !6, i64 787, !41, i64 788, !10, i64 792, !5, i64 800, !5, i64 804, !11, i64 808, !34, i64 816, !10, i64 824, !10, i64 832, !6, i64 840, !6, i64 841, !6, i64 842, !34, i64 848, !34, i64 856, !34, i64 864, !5, i64 872, !6, i64 880, !6, i64 1480, !5, i64 1544, !10, i64 1552, !10, i64 1560, !11, i64 1568, !5, i64 1576, !11, i64 1584, !11, i64 1592, !11, i64 1600, !11, i64 1608, !11, i64 1616, !10, i64 1624, !10, i64 1632, !10, i64 1640, !10, i64 1648, !10, i64 1656, !5, i64 1664, !5, i64 1668, !5, i64 1672, !11, i64 1680, !11, i64 1688, !10, i64 1696, !42, i64 1704, !11, i64 1712, !11, i64 1720, !34, i64 1728, !5, i64 1736, !40, i64 1740, !40, i64 1742, !40, i64 1744, !40, i64 1746, !40, i64 1748, !40, i64 1750, !40, i64 1752, !6, i64 1754, !6, i64 1755, !6, i64 1756, !6, i64 1757, !6, i64 1758, !6, i64 1759, !6, i64 1760, !6, i64 1761, !6, i64 1762, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1770, !5, i64 1770, !5, i64 1770}
!33 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!34 = !{!"p1 _ZTS10curl_slist", !11, i64 0}
!35 = !{!"p1 _ZTS13curl_httppost", !11, i64 0}
!36 = !{!"p1 _ZTS13curl_mimepart", !11, i64 0}
!37 = !{!"ssl_config_data", !38, i64 0, !10, i64 168, !11, i64 176, !11, i64 184, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 193, !5, i64 193, !5, i64 193}
!38 = !{!"ssl_primary_config", !31, i64 0, !31, i64 8, !31, i64 16, !31, i64 24, !31, i64 32, !31, i64 40, !31, i64 48, !31, i64 56, !31, i64 64, !31, i64 72, !31, i64 80, !31, i64 88, !31, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !39, i64 128, !31, i64 136, !31, i64 144, !31, i64 152, !5, i64 160, !6, i64 164, !6, i64 165, !5, i64 166, !5, i64 166, !5, i64 166, !5, i64 166, !5, i64 166}
!39 = !{!"p1 _ZTS9curl_blob", !11, i64 0}
!40 = !{!"short", !6, i64 0}
!41 = !{!"ssl_general_config", !5, i64 0}
!42 = !{!"p1 _ZTS8Curl_URL", !11, i64 0}
!43 = !{!"p1 _ZTS10CookieInfo", !11, i64 0}
!44 = !{!"p1 _ZTS4hsts", !11, i64 0}
!45 = !{!"p1 _ZTS10altsvcinfo", !11, i64 0}
!46 = !{!"Progress", !25, i64 0, !10, i64 16, !47, i64 24, !47, i64 128, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !10, i64 312, !10, i64 320, !25, i64 328, !25, i64 344, !25, i64 360, !25, i64 376, !25, i64 392, !6, i64 408, !6, i64 456, !5, i64 552, !5, i64 556, !5, i64 556, !5, i64 556, !5, i64 556, !5, i64 556, !5, i64 556}
!47 = !{!"pgrs_dir", !10, i64 0, !10, i64 8, !10, i64 16, !48, i64 24}
!48 = !{!"Curl_rlimit", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !25, i64 56, !5, i64 72}
!49 = !{!"UrlState", !25, i64 0, !10, i64 16, !10, i64 24, !50, i64 32, !34, i64 64, !10, i64 72, !51, i64 80, !51, i64 88, !5, i64 96, !5, i64 100, !11, i64 104, !31, i64 112, !52, i64 120, !52, i64 192, !54, i64 264, !54, i64 280, !55, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !31, i64 336, !5, i64 344, !25, i64 352, !56, i64 368, !58, i64 424, !6, i64 456, !31, i64 1296, !31, i64 1304, !10, i64 1312, !5, i64 1320, !5, i64 1324, !5, i64 1328, !6, i64 1332, !10, i64 1368, !11, i64 1376, !11, i64 1384, !42, i64 1392, !59, i64 1400, !60, i64 1464, !60, i64 1488, !34, i64 1512, !36, i64 1520, !36, i64 1528, !10, i64 1536, !50, i64 1544, !58, i64 1576, !6, i64 1608, !61, i64 1704, !34, i64 1712, !62, i64 1720, !63, i64 1728, !53, i64 1776, !64, i64 1784, !65, i64 1832, !40, i64 1840, !6, i64 1842, !6, i64 1843, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1846, !5, i64 1846, !5, i64 1846, !5, i64 1846, !5, i64 1846, !5, i64 1846, !5, i64 1846}
!50 = !{!"dynbuf", !31, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!51 = !{!"p1 _ZTS9Curl_peer", !11, i64 0}
end_hunk_0
