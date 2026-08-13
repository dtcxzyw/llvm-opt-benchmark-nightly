inline.NumInlined: 15
inline.NumDeleted: 9
begin_hunk_0_@updatecustomdb:bb.a
  br i1 %i.ag, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 5 uses
  %i.ai = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.af) #24
  %i.aj = icmp ult i64 %i.ai, 5
  br i1 %i.aj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ak = tail call i32 (i32, ptr, ...) @logg(i32 noundef 0, ptr noundef nonnull @.str.71) #20 ; 0 uses
  br label %.thread

bb.q:                                             ; preds = %bb.o
  %i.al = call i32 @stat(ptr noundef nonnull %i.ah, ptr noundef nonnull %6) #20
  %.not124 = icmp eq i32 %i.al, -1
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = select i1 %.not124, i64 0, i64 %i.an
  %i.ap = tail call fastcc i32 @downloadFile(ptr noundef nonnull %0, ptr noundef nonnull %i.i, i32 noundef %2, i32 noundef 0, i64 noundef %i.ao) ; 2 uses
  switch i32 %i.ap, label %bb.s [
    i32 1, label %bb.r
    i32 0, label %bb.t
  ]

bb.r:                                             ; preds = %bb.q
  %i.aq = tail call i32 (i32, ptr, ...) @logg(i32 noundef 0, ptr noundef nonnull @.str.73, ptr noundef nonnull %i.ah) #20 ; 0 uses
  br label %bb.ak

bb.s:                                             ; preds = %bb.q
  %.not132 = icmp eq i32 %2, 0
  %i.ar = select i1 %.not132, i32 4, i32 5
  %i.as = tail call i32 (i32, ptr, ...) @logg(i32 noundef %i.ar, ptr noundef nonnull @.str.76, ptr noundef nonnull %i.ah, ptr noundef nonnull %0) #20 ; 0 uses
  br label %.thread

bb.t:                                             ; preds = %.thread139, %bb.q
  %.2102 = phi ptr [ %i.ah, %bb.q ], [ %i.n, %.thread139 ] ; 12 uses
  %i.at = load ptr, ptr @g_cb_download_complete, align 8, !tbaa !43
  %.not126 = icmp eq ptr %i.at, null
  br i1 %.not126, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.au = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #24
  %i.av = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.2102) #24
  %i.aw = add i64 %i.au, 2
  %i.ax = add i64 %i.aw, %i.av                    ; 2 uses
  %i.ay = tail call noalias ptr @malloc(i64 noundef %i.ax) #22 ; 8 uses
  %.not127 = icmp eq ptr %i.ay, null
  br i1 %.not127, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.az = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ay, i64 noundef %i.ax, ptr noundef nonnull @.str.77, ptr noundef nonnull %i.i, ptr noundef nonnull %.2102) #20 ; 0 uses
  %i.ba = tail call i32 @rename(ptr noundef nonnull %i.i, ptr noundef nonnull %i.ay) #20
  %i.bb = icmp eq i32 %i.ba, -1
  br i1 %i.bb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bc = tail call ptr @__errno_location() #21
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !8
  %i.be = tail call ptr @strerror(i32 noundef %i.bd) #20
  %i.bf = tail call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.78, ptr noundef nonnull %i.i, ptr noundef nonnull %i.ay, ptr noundef %i.be) #20 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.ay) #20
  br label %.thread

bb.x:                                             ; preds = %bb.v
  tail call void @free(ptr noundef nonnull %i.i) #20
  %i.bg = tail call i32 (i32, ptr, ...) @logg(i32 noundef 2, ptr noundef nonnull @.str.79) #20 ; 0 uses
  %i.bh = load ptr, ptr @g_cb_download_complete, align 8, !tbaa !43
  %i.bi = tail call i32 %i.bh(ptr noundef nonnull %i.ay, ptr noundef %1) #20 ; 4 uses
  %.not128 = icmp eq i32 %i.bi, 0
  br i1 %.not128, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bj = tail call ptr @fc_strerror(i32 noundef %i.bi) #20
  %i.bk = tail call i32 (i32, ptr, ...) @logg(i32 noundef 2, ptr noundef nonnull @.str.80, ptr noundef %i.bj, i32 noundef %i.bi) #20 ; 0 uses
  br label %.thread

bb.z:                                             ; preds = %bb.x, %bb.t
  %.1105 = phi ptr [ %i.i, %bb.t ], [ %i.ay, %bb.x ] ; 5 uses
  %i.bl = tail call i32 @rename(ptr noundef nonnull %.1105, ptr noundef nonnull %.2102) #20
  %i.bm = icmp eq i32 %i.bl, -1
  br i1 %i.bm, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bn = tail call ptr @__errno_location() #21
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !8
  %i.bp = tail call ptr @strerror(i32 noundef %i.bo) #20
  %i.bq = tail call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.81, ptr noundef nonnull %.1105, ptr noundef nonnull %.2102, ptr noundef %i.bp) #20 ; 0 uses
  br label %.thread

bb.ab:                                            ; preds = %bb.z
  %i.br = tail call i32 @cli_strbcasestr(ptr noundef nonnull %.2102, ptr noundef nonnull @.str.82) #20
  %.not129 = icmp eq i32 %i.br, 0
  br i1 %.not129, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bs = tail call i32 @cli_strbcasestr(ptr noundef nonnull %.2102, ptr noundef nonnull @.str.33) #20
  %.not130 = icmp eq i32 %i.bs, 0
  br i1 %.not130, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.bt = tail call ptr @cl_cvdhead(ptr noundef nonnull %.2102) #20 ; 4 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !28
  %i.bx = tail call i32 @cl_retflevel() #20       ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !29
  %i.ca = icmp ult i32 %i.bx, %i.bz
  br i1 %i.ca, label %bb.af, label %.thread148

bb.af:                                            ; preds = %bb.ae
  %i.cb = tail call i32 (i32, ptr, ...) @logg(i32 noundef 4, ptr noundef nonnull @.str.65) #20 ; 0 uses
  %i.cc = load i32, ptr %i.by, align 8, !tbaa !29
  %i.cd = tail call i32 (i32, ptr, ...) @logg(i32 noundef 4, ptr noundef nonnull @.str.66, i32 noundef %i.bx, i32 noundef %i.cc) #20 ; 0 uses
  %i.ce = tail call i32 (i32, ptr, ...) @logg(i32 noundef 0, ptr noundef nonnull @.str.67) #20 ; 0 uses
  br label %.thread148

.thread148:                                       ; preds = %bb.ae, %bb.af
  tail call void @cl_cvdfree(ptr noundef nonnull %i.bt) #20
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ad
  %i.cf = tail call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.83, ptr noundef nonnull %.2102) #20 ; 0 uses
  br label %.thread

bb.ah:                                            ; preds = %bb.ac
  %i.cg = tail call i32 @cli_strbcasestr(ptr noundef nonnull %.2102, ptr noundef nonnull @.str.84) #20
  %.not131 = icmp eq i32 %i.cg, 0
  br i1 %.not131, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ch = tail call i32 @countlines(ptr noundef nonnull %.2102) #20
  br label %bb.aj

bb.aj:                                            ; preds = %.thread148, %bb.ah, %bb.ai
  %.199 = phi i32 [ %i.bw, %.thread148 ], [ %i.ch, %bb.ai ], [ 1, %bb.ah ] ; 2 uses
  %i.ci = tail call i32 (i32, ptr, ...) @logg(i32 noundef 0, ptr noundef nonnull @.str.85, ptr noundef nonnull %.2102, i32 noundef %.199) #20 ; 0 uses
  store i32 %.199, ptr %3, align 4, !tbaa !8
  store i32 1, ptr %5, align 4, !tbaa !8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.m, %bb.aj, %bb.r
  %.2106 = phi ptr [ %i.i, %bb.r ], [ %.1105, %bb.aj ], [ %i.i, %bb.m ] ; 2 uses
  %.3103 = phi ptr [ %i.ah, %bb.r ], [ %.2102, %bb.aj ], [ %i.n, %bb.m ]
  %i.cj = tail call ptr @cli_safer_strdup(ptr noundef nonnull %.3103) #20 ; 2 uses
  store ptr %i.cj, ptr %4, align 8, !tbaa !9
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.al, label %.thread

bb.al:                                            ; preds = %bb.ak
  %i.cl = tail call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.86) #20 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.u, %bb.y, %bb.w, %bb.l, %bb.i, %bb.g, %bb.p, %bb.al, %bb.s, %bb.aa, %bb.ag, %bb.ak
  %.3107.ph = phi ptr [ %.2106, %bb.ak ], [ %i.i, %bb.p ], [ %i.i, %bb.l ], [ %.1105, %bb.ag ], [ %.1105, %bb.aa ], [ %i.i, %bb.s ], [ %.2106, %bb.al ], [ %i.i, %bb.g ], [ %i.i, %bb.i ], [ %i.i, %bb.u ], [ %i.ay, %bb.y ], [ %i.i, %bb.w ] ; 2 uses
  %.5.ph = phi i32 [ 0, %bb.ak ], [ 14, %bb.p ], [ 14, %bb.l ], [ 4, %bb.ag ], [ 10, %bb.aa ], [ %i.ap, %bb.s ], [ 15, %bb.al ], [ 14, %bb.g ], [ 14, %bb.i ], [ 8, %bb.u ], [ %i.bi, %bb.y ], [ 10, %bb.w ]
  %i.cm = tail call i32 @unlink(ptr noundef nonnull %.3107.ph) #20 ; 0 uses
  tail call void @free(ptr noundef nonnull %.3107.ph) #20
  br label %bb.am

bb.am:                                            ; preds = %bb.b, %bb.c, %.thread
  %.5159 = phi i32 [ %.5.ph, %.thread ], [ 16, %bb.b ], [ 14, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  ret i32 %.5159
}

declare ptr @cli_gentemp(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #12

declare i32 @cli_filecopy(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @cli_strbcasestr(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @countlines(ptr noundef) local_unnamed_addr #4

declare i32 @RAND_bytes(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #3

declare ptr @cli_strtok(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @cli_isnumber(ptr noundef) local_unnamed_addr #4

declare ptr @dnsquery(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 17) i32 @remote_cvdhead(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %2, i32 noundef %3, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [513 x i8], align 16              ; 5 uses
  %5 = alloca %struct.MemoryStruct, align 8       ; 8 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca [256 x i8], align 16              ; 6 uses
  %6 = alloca %struct.xfer_progress, align 8      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i64 0, ptr %i.d, align 8, !tbaa !27
  store ptr null, ptr %4, align 8, !tbaa !24
  %i.f = tail call i32 @strncasecmp(ptr noundef nonnull %2, ptr noundef nonnull @.str.122, i64 noundef 4) #24
  %.not79 = icmp eq i32 %i.f, 0                   ; 2 uses
  %.055 = zext i1 %.not79 to i32
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #24
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24
  %i.i = add i64 %i.g, 2
  %i.j = add i64 %i.i, %i.h                       ; 2 uses
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #22 ; 9 uses
  %i.l = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.k, i64 noundef %i.j, ptr noundef nonnull @.str.36, ptr noundef nonnull %2, ptr noundef nonnull %0) #20 ; 0 uses
  %i.m = tail call i32 (i32, ptr, ...) @logg(i32 noundef 0, ptr noundef nonnull @.str.123, ptr noundef %i.k) #20 ; 0 uses
  %i.n = call fastcc i32 @create_curl_handle(i32 noundef %.055, ptr noundef %i.b) ; 2 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = tail call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.124) #20 ; 0 uses
  br label %bb.ax

bb.c:                                             ; preds = %bb.a
  %i.p = load i16, ptr @mprintf_quiet, align 2, !tbaa !31
  %.not71 = icmp eq i16 %i.p, 0
  br i1 %.not71, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.q = load i16, ptr @mprintf_progress, align 2, !tbaa !31
  %.not72 = icmp eq i16 %i.q, 0
  br i1 %.not72, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr @stdout, align 8, !tbaa !33
  %i.s = tail call i32 @fileno(ptr noundef %i.r) #20
  %i.t = tail call i32 @isatty(i32 noundef %i.s) #20
  %.not73 = icmp eq i32 %i.t, 0
  br i1 %.not73, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i64 0, ptr %6, align 8, !tbaa !46
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !43   ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.u, ptr %i.v, align 8, !tbaa !48
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 0, ptr %i.w, align 8, !tbaa !49
  %i.x = tail call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef %i.u, i32 noundef 20219, ptr noundef nonnull @xferinfo) #20
  %.not74 = icmp eq i32 %i.x, 0
  br i1 %.not74, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = tail call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.125) #20 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.z = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef %i.u, i32 noundef 10057, ptr noundef nonnull %6) #20
  %.not75 = icmp eq i32 %i.z, 0
  br i1 %.not75, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.126) #20 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ab = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef %i.u, i32 noundef 43, i64 noundef 0) #20
  %.not76 = icmp eq i32 %i.ab, 0
  br i1 %.not76, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.127) #20 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.e, %bb.c
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !43  ; 11 uses
  %i.ae = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef %i.ad, i32 noundef 10002, ptr noundef %i.k) #20
  %.not77 = icmp eq i32 %i.ae, 0
  br i1 %.not77, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.128, ptr noundef %i.k) #20 ; 0 uses
  br label %bb.ax

bb.n:                                             ; preds = %bb.l
  br i1 %.not79, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.ag = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef %i.ad, i32 noundef 80, i64 noundef 1) #20
  %.not80 = icmp eq i32 %i.ag, 0
  br i1 %.not80, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.129) #20 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ai = call ptr @curl_slist_append(ptr noundef null, ptr noundef nonnull @.str.130) #20 ; 4 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef %i.ad, i32 noundef 10023, ptr noundef nonnull %i.ai) #20
  %.not82 = icmp eq i32 %i.ak, 0
  br i1 %.not82, label %bb.s, label %.sink.split

.sink.split:                                      ; preds = %bb.r, %bb.q
  %.str.131.sink = phi ptr [ @.str.131, %bb.q ], [ @.str.132, %bb.r ]
  %.1.ph = phi ptr [ null, %bb.q ], [ %i.ai, %bb.r ]
  %i.al = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull %.str.131.sink) #20 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.r, %bb.n
  %.1 = phi ptr [ null, %bb.n ], [ %i.ai, %bb.r ], [ %.1.ph, %.sink.split ] ; 12 uses
  %.not83 = icmp eq i32 %1, 0
  br i1 %.not83, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.am = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef %i.ad, i32 noundef 34, i32 noundef %1) #20
  %.not84 = icmp eq i32 %i.am, 0
  br i1 %.not84, label %bb.u, label %.sink.split125

bb.u:                                             ; preds = %bb.t
  %i.an = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef %i.ad, i32 noundef 33, i32 noundef 1) #20
  %.not85 = icmp eq i32 %i.an, 0
  br i1 %.not85, label %bb.v, label %.sink.split125

.sink.split125:                                   ; preds = %bb.u, %bb.t
  %.str.133.sink = phi ptr [ @.str.133, %bb.t ], [ @.str.134, %bb.u ]
  %i.ao = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull %.str.133.sink) #20 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %.sink.split125, %bb.u, %bb.s
  %i.ap = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef %i.ad, i32 noundef 10007, ptr noundef nonnull @.str.135) #20
  %.not86 = icmp eq i32 %i.ap, 0
  br i1 %.not86, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aq = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.136) #20 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ar = call noalias dereferenceable_or_null(1) ptr @malloc(i64 noundef 1) #22
  store ptr %i.ar, ptr %5, align 8, !tbaa !58
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.as, align 8, !tbaa !60
  %i.at = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef %i.ad, i32 noundef 20011, ptr noundef nonnull @WriteMemoryCallback) #20
  %.not87 = icmp eq i32 %i.at, 0
  br i1 %.not87, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.au = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.137) #20 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.av = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef %i.ad, i32 noundef 10001, ptr noundef nonnull %5) #20
  %.not88 = icmp eq i32 %i.av, 0
  br i1 %.not88, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aw = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.138) #20 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.c, i8 0, i64 256, i1 false)
  %i.ax = call i32 @curl_easy_perform(ptr noundef %i.ad) #20 ; 3 uses
  %.not89 = icmp eq i32 %i.ax, 0
  br i1 %.not89, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ay = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #24 ; 2 uses
  %.not102 = icmp eq i32 %3, 0
  %i.az = select i1 %.not102, i32 4, i32 5        ; 3 uses
  %i.ba = call i32 (i32, ptr, ...) @logg(i32 noundef %i.az, ptr noundef nonnull @.str.139, i32 noundef %i.ax) #20 ; 0 uses
  %.not103 = icmp eq i64 %i.ay, 0
  br i1 %.not103, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bb = getelementptr i8, ptr %i.c, i64 %i.ay
  %i.bc = getelementptr i8, ptr %i.bb, i64 -1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !18
  %.not104 = icmp eq i8 %i.bd, 10
  %i.be = select i1 %.not104, ptr @.str.142, ptr @.str.141
  %i.bf = call i32 (i32, ptr, ...) @logg(i32 noundef %i.az, ptr noundef nonnull @.str.140, ptr noundef nonnull %i.c, ptr noundef nonnull %i.be) #20 ; 0 uses
  br label %bb.ax

bb.ae:                                            ; preds = %bb.ac
  %i.bg = call ptr @curl_easy_strerror(i32 noundef %i.ax) #20
  %i.bh = call i32 (i32, ptr, ...) @logg(i32 noundef %i.az, ptr noundef nonnull @.str.143, ptr noundef %i.bg) #20 ; 0 uses
  br label %bb.ax

bb.af:                                            ; preds = %bb.ab
  %i.bi = call i32 (ptr, i32, ...) @curl_easy_getinfo(ptr noundef %i.ad, i32 noundef 2097154, ptr noundef nonnull %i.d) #20 ; 0 uses
  %i.bj = load i64, ptr %i.d, align 8, !tbaa !27  ; 3 uses
  switch i64 %i.bj, label %bb.am [
    i64 200, label %bb.ap
    i64 206, label %bb.ap
    i64 304, label %bb.ax
    i64 403, label %bb.ag
    i64 429, label %bb.ah
    i64 404, label %bb.ai
    i64 522, label %bb.al
  ]

bb.ag:                                            ; preds = %bb.af
  %i.bk = call i64 @time(ptr noundef null) #20
  %i.bl = add nsw i64 %i.bk, 86400
  %i.bm = load ptr, ptr @g_freshclamDat, align 8, !tbaa !12
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  store i64 %i.bl, ptr %i.bn, align 8, !tbaa !17
  %i.bo = call i32 @save_freshclam_dat()          ; 0 uses
  br label %bb.ap

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store i64 0, ptr %i.e, align 8, !tbaa !27
  %i.bp = call i32 (ptr, i32, ...) @curl_easy_getinfo(ptr noundef %i.ad, i32 noundef 6291513, ptr noundef nonnull %i.e) #20 ; 0 uses
  %i.bq = load i64, ptr %i.e, align 8, !tbaa !27
  %i.br = icmp sgt i64 %i.bq, 0
  %i.bs = call i64 @time(ptr noundef null) #20
  %i.bt = load i64, ptr %i.e, align 8
  %.sink.v = select i1 %i.br, i64 %i.bt, i64 14400
  %.sink = add nsw i64 %.sink.v, %i.bs
  %i.bu = load ptr, ptr @g_freshclamDat, align 8, !tbaa !12
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  store i64 %.sink, ptr %i.bv, align 8, !tbaa !17
  %i.bw = call i32 @save_freshclam_dat()          ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %bb.ap

bb.ai:                                            ; preds = %bb.af
  %i.bx = load ptr, ptr @g_proxyServer, align 8, !tbaa !9 ; 2 uses
  %.not90 = icmp eq ptr %i.bx, null
  br i1 %.not90, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.by = load i16, ptr @g_proxyPort, align 2, !tbaa !31
  %i.bz = zext i16 %i.by to i32
  %i.ca = call i32 (i32, ptr, ...) @logg(i32 noundef 4, ptr noundef nonnull @.str.144, ptr noundef %i.k, ptr noundef nonnull %i.bx, i32 noundef %i.bz) #20 ; 0 uses
  br label %bb.ax

bb.ak:                                            ; preds = %bb.ai
  %i.cb = call i32 (i32, ptr, ...) @logg(i32 noundef 4, ptr noundef nonnull @.str.145, ptr noundef %i.k) #20 ; 0 uses
  br label %bb.ax

bb.al:                                            ; preds = %bb.af
  %i.cc = call i32 (i32, ptr, ...) @logg(i32 noundef 4, ptr noundef nonnull @.str.146, ptr noundef %i.k) #20 ; 0 uses
  br label %bb.ax

bb.am:                                            ; preds = %bb.af
  %i.cd = load ptr, ptr @g_proxyServer, align 8, !tbaa !9 ; 2 uses
  %.not99 = icmp eq ptr %i.cd, null
  %.not100 = icmp eq i32 %3, 0
  %i.ce = select i1 %.not100, i32 4, i32 5        ; 2 uses
  br i1 %.not99, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cf = load i16, ptr @g_proxyPort, align 2, !tbaa !31
  %i.cg = zext i16 %i.cf to i32
  %i.ch = call i32 (i32, ptr, ...) @logg(i32 noundef %i.ce, ptr noundef nonnull @.str.147, i64 noundef %i.bj, ptr noundef nonnull %2, ptr noundef nonnull %i.cd, i32 noundef %i.cg) #20 ; 0 uses
  br label %bb.ax

bb.ao:                                            ; preds = %bb.am
  %i.ci = call i32 (i32, ptr, ...) @logg(i32 noundef %i.ce, ptr noundef nonnull @.str.148, i64 noundef %i.bj, ptr noundef nonnull %2) #20 ; 0 uses
  br label %bb.ax

bb.ap:                                            ; preds = %bb.af, %bb.af, %bb.ah, %bb.ag
  %i.cj = load i64, ptr %i.as, align 8, !tbaa !60
  %i.ck = icmp ult i64 %i.cj, 512
  br i1 %i.ck, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %.not98 = icmp eq i32 %3, 0
  %i.cl = select i1 %.not98, i32 4, i32 5
  %i.cm = call i32 (i32, ptr, ...) @logg(i32 noundef %i.cl, ptr noundef nonnull @.str.149) #20 ; 0 uses
  br label %bb.ax

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(513) %i.a, i8 0, i64 513, i1 false)
  %i.cn = load ptr, ptr %5, align 8, !tbaa !58    ; 3 uses
  %.not93 = icmp eq ptr %i.cn, null
  br i1 %.not93, label %.split112, label %.split.preheader

.split.preheader:                                 ; preds = %bb.ar
  %.pre = load i8, ptr %i.cn, align 1, !tbaa !18
  %.not94 = icmp eq i8 %.pre, 0
  br label %.split.a

.split.a:                                         ; preds = %.split.preheader, %bb.at
  %indvars.iv = phi i64 [ 0, %.split.preheader ], [ %indvars.iv.next.a, %bb.at ] ; 3 uses
  br i1 %.not94, label %.split112, label %bb.as

bb.as:                                            ; preds = %.split.a
  %7 = tail call ptr @__ctype_b_loc() #21
  %i.co = load ptr, ptr %7, align 8, !tbaa !61
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %indvars.iv
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !18  ; 2 uses
  %i.cr = sext i8 %i.cq to i64
  %i.cs = getelementptr inbounds [2 x i8], ptr %i.co, i64 %i.cr
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !31
  %i.cu = and i16 %i.ct, 16384
  %.not96 = icmp eq i16 %i.cu, 0
  br i1 %.not96, label %.split112, label %bb.at

.split112:                                        ; preds = %.split.a, %bb.as, %bb.ar
  %.not97 = icmp eq i32 %3, 0
  %i.cv = select i1 %.not97, i32 4, i32 5
  %i.cw = call i32 (i32, ptr, ...) @logg(i32 noundef %i.cv, ptr noundef nonnull @.str.150) #20 ; 0 uses
  br label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.cq, ptr %i.cx, align 1, !tbaa !18
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.a, 512
  br i1 %exitcond.not, label %bb.au, label %.split.a

bb.au:                                            ; preds = %bb.at
  %i.cy = call ptr @cl_cvdparse(ptr noundef nonnull %i.a) #20 ; 2 uses
  %.not91 = icmp eq ptr %i.cy, null
  br i1 %.not91, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %.not92 = icmp eq i32 %3, 0
  %i.cz = select i1 %.not92, i32 4, i32 5
  %i.da = call i32 (i32, ptr, ...) @logg(i32 noundef %i.cz, ptr noundef nonnull @.str.151) #20 ; 0 uses
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.db = call i32 (i32, ptr, ...) @logg(i32 noundef 0, ptr noundef nonnull @.str.152) #20 ; 0 uses
  store ptr %i.cy, ptr %4, align 8, !tbaa !24
  br label %bb.ax

bb.ax:                                            ; preds = %bb.an, %bb.ao, %bb.aj, %bb.ak, %bb.af, %bb.ad, %bb.ae, %bb.aw, %bb.av, %.split112, %bb.aq, %bb.al, %bb.m, %bb.b
  %.054 = phi i32 [ 11, %bb.al ], [ %i.n, %bb.b ], [ 11, %bb.m ], [ 1, %bb.af ], [ 11, %bb.aj ], [ 11, %bb.aq ], [ 11, %.split112 ], [ 0, %bb.aw ], [ 11, %bb.av ], [ 5, %bb.ad ], [ 5, %bb.ae ], [ 11, %bb.ak ], [ 11, %bb.ao ], [ 11, %bb.an ]
  %.2 = phi ptr [ %.1, %bb.al ], [ null, %bb.b ], [ null, %bb.m ], [ %.1, %bb.af ], [ %.1, %bb.aj ], [ %.1, %bb.aq ], [ %.1, %.split112 ], [ %.1, %bb.aw ], [ %.1, %bb.av ], [ %.1, %bb.ad ], [ %.1, %bb.ae ], [ %.1, %bb.ak ], [ %.1, %bb.ao ], [ %.1, %bb.an ] ; 2 uses
  %i.dc = load ptr, ptr %5, align 8, !tbaa !58    ; 2 uses
  %.not105 = icmp eq ptr %i.dc, null
  br i1 %.not105, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @free(ptr noundef nonnull %i.dc) #20
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.not106 = icmp eq ptr %.2, null
  br i1 %.not106, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @curl_slist_free_all(ptr noundef nonnull %.2) #20
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.dd = load ptr, ptr %i.b, align 8, !tbaa !43  ; 2 uses
  %.not107 = icmp eq ptr %i.dd, null
  br i1 %.not107, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @curl_easy_cleanup(ptr noundef nonnull %i.dd) #20
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.not108 = icmp eq ptr %i.k, null
  br i1 %.not108, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @free(ptr noundef nonnull %i.k) #20
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.054
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 17) i32 @create_curl_handle(i32 noundef range(i32 0, 2) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %1, align 8, !tbaa !43
  %i.b = tail call ptr @curl_easy_init() #20      ; 22 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.154) #20 ; 0 uses
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @g_userAgent, align 8, !tbaa !9 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 128) #20 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = tail call ptr @get_version() #20
  %i.h = load ptr, ptr @g_freshclamDat, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.155, ptr noundef %i.g, ptr noundef nonnull %i.i) #20 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 127
  store i8 0, ptr %i.k, align 1, !tbaa !18
  %i.l = load i16, ptr @mprintf_verbose, align 2, !tbaa !31
  %.not41 = icmp eq i16 %i.l, 0
  br i1 %.not41, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef nonnull %i.b, i32 noundef 41, i64 noundef 1) #20
  %.not42 = icmp eq i32 %i.m, 0
  br i1 %.not42, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.156) #20 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.o = load ptr, ptr @stdout, align 8, !tbaa !33
  %i.p = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef nonnull %i.b, i32 noundef 10037, ptr noundef %i.o) #20
  %.not43 = icmp eq i32 %i.p, 0
  br i1 %.not43, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.157) #20 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.f
  %.not44 = icmp eq i32 %0, 0
  br i1 %.not44, label %bb.y, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef nonnull %i.b, i32 noundef 10018, ptr noundef nonnull %i.a) #20
  %.not45 = icmp eq i32 %i.r, 0
  br i1 %.not45, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.158, ptr noundef nonnull %i.a) #20 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.t = load i32, ptr @g_connectTimeout, align 4, !tbaa !8
  %i.u = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef nonnull %i.b, i32 noundef 78, i32 noundef %i.t) #20
  %.not46 = icmp eq i32 %i.u, 0
  br i1 %.not46, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.v = load i32, ptr @g_connectTimeout, align 4, !tbaa !8
  %i.w = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.159, i32 noundef %i.v) #20 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.x = load i32, ptr @g_requestTimeout, align 4, !tbaa !8
  %i.y = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef nonnull %i.b, i32 noundef 20, i32 noundef %i.x) #20
  %.not47 = icmp eq i32 %i.y, 0
  br i1 %.not47, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.z = load i32, ptr @g_requestTimeout, align 4, !tbaa !8
  %i.aa = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.160, i32 noundef %i.z) #20 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ab = load i32, ptr @g_requestTimeout, align 4, !tbaa !8
  %.not48 = icmp eq i32 %i.ab, 0
  br i1 %.not48, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ac = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef nonnull %i.b, i32 noundef 19, i32 noundef 1) #20
  %.not49 = icmp eq i32 %i.ac, 0
  br i1 %.not49, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ad = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.161, i32 noundef 1) #20 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.t, %bb.s
  %i.ae = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef nonnull %i.b, i32 noundef 52, i64 noundef 1) #20
  %.not50 = icmp eq i32 %i.ae, 0
  br i1 %.not50, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.af = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.162) #20 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ag = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef nonnull %i.b, i32 noundef 68, i64 noundef 3) #20
  %.not51 = icmp eq i32 %i.ag, 0
  br i1 %.not51, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ah = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.163) #20 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.k
  %i.ai = load ptr, ptr @g_localIP, align 8, !tbaa !9 ; 4 uses
  %.not52 = icmp eq ptr %i.ai, null
  br i1 %.not52, label %bb.ai, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.aj = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ai, i32 noundef 58) #24
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
end_hunk_0
