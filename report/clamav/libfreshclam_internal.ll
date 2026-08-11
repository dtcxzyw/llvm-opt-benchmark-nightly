inline.NumInlined: 15
inline.NumDeleted: 9
begin_hunk_0_@create_curl_handle:bb.a

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
  %i.al = call i32 (i32, ptr, ...) @logg(i32 noundef 2, ptr noundef nonnull @.str.164, ptr noundef nonnull %i.ai) #20 ; 0 uses
  %i.am = load ptr, ptr @g_localIP, align 8, !tbaa !9
  %i.an = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef nonnull %i.b, i32 noundef 10222, ptr noundef %i.am) #20
  switch i32 %i.an, label %bb.ad [
    i32 43, label %bb.ab
    i32 48, label %bb.ac
    i32 4, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.ao = load ptr, ptr @g_localIP, align 8, !tbaa !9
  %i.ap = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.165, ptr noundef %i.ao) #20 ; 0 uses
  br label %bb.ax

bb.ac:                                            ; preds = %bb.aa, %bb.aa
  %i.aq = load ptr, ptr @g_localIP, align 8, !tbaa !9
  %i.ar = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.166, ptr noundef %i.aq) #20 ; 0 uses
  br label %bb.ax

bb.ad:                                            ; preds = %bb.aa
  %i.as = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef nonnull %i.b, i32 noundef 113, i32 noundef 1) #20
  %.not54 = icmp eq i32 %i.as, 0
  br i1 %.not54, label %bb.ai, label %.sink.split

bb.ae:                                            ; preds = %bb.z
  %i.at = call i32 (i32, ptr, ...) @logg(i32 noundef 2, ptr noundef nonnull @.str.168, ptr noundef nonnull %i.ai) #20 ; 0 uses
  %i.au = load ptr, ptr @g_localIP, align 8, !tbaa !9
  %i.av = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef nonnull %i.b, i32 noundef 10223, ptr noundef %i.au) #20
  switch i32 %i.av, label %bb.ah [
    i32 43, label %bb.af
    i32 48, label %bb.ag
    i32 4, label %bb.ag
  ]

bb.af:                                            ; preds = %bb.ae
  %i.aw = load ptr, ptr @g_localIP, align 8, !tbaa !9
  %i.ax = call i32 (i32, ptr, ...) @logg(i32 noundef 4, ptr noundef nonnull @.str.165, ptr noundef %i.aw) #20 ; 0 uses
  br label %bb.ax

bb.ag:                                            ; preds = %bb.ae, %bb.ae
  %i.ay = load ptr, ptr @g_localIP, align 8, !tbaa !9
  %i.az = call i32 (i32, ptr, ...) @logg(i32 noundef 4, ptr noundef nonnull @.str.166, ptr noundef %i.ay) #20 ; 0 uses
  br label %bb.ax

bb.ah:                                            ; preds = %bb.ae
  %i.ba = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef nonnull %i.b, i32 noundef 113, i32 noundef 2) #20
  %.not53 = icmp eq i32 %i.ba, 0
  br i1 %.not53, label %bb.ai, label %.sink.split

.sink.split:                                      ; preds = %bb.ah, %bb.ad
  %.str.167.sink = phi ptr [ @.str.167, %bb.ad ], [ @.str.169, %bb.ah ]
  %i.bb = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull %.str.167.sink) #20 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split, %bb.ad, %bb.ah, %bb.y
  %i.bc = load ptr, ptr @g_proxyServer, align 8, !tbaa !9 ; 2 uses
  %.not55 = icmp eq ptr %i.bc, null
  br i1 %.not55, label %bb.au, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bd = load i16, ptr @g_proxyPort, align 2, !tbaa !31
  %i.be = zext i16 %i.bd to i32
  %i.bf = call i32 (i32, ptr, ...) @logg(i32 noundef 2, ptr noundef nonnull @.str.170, ptr noundef nonnull %i.bc, i32 noundef %i.be) #20 ; 0 uses
  %i.bg = load ptr, ptr @g_proxyServer, align 8, !tbaa !9
  %i.bh = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef nonnull %i.b, i32 noundef 10004, ptr noundef %i.bg) #20
  %.not56 = icmp eq i32 %i.bh, 0
  br i1 %.not56, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bi = load ptr, ptr @g_proxyServer, align 8, !tbaa !9
  %i.bj = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.171, ptr noundef %i.bi) #20 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.bk = load i16, ptr @g_proxyPort, align 2, !tbaa !31
  %i.bl = zext i16 %i.bk to i32
  %i.bm = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef nonnull %i.b, i32 noundef 59, i32 noundef %i.bl) #20
  %.not57 = icmp eq i32 %i.bm, 0
  br i1 %.not57, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bn = load i16, ptr @g_proxyPort, align 2, !tbaa !31
  %i.bo = zext i16 %i.bn to i32
  %i.bp = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.172, i32 noundef %i.bo) #20 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.bq = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef nonnull %i.b, i32 noundef 61, i64 noundef 1) #20
  %.not58 = icmp eq i32 %i.bq, 0
  br i1 %.not58, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.br = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.173) #20 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.bs = load ptr, ptr @g_proxyUsername, align 8, !tbaa !9 ; 2 uses
  %.not59 = icmp eq ptr %i.bs, null
  br i1 %.not59, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bt = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef nonnull %i.b, i32 noundef 10175, ptr noundef nonnull %i.bs) #20
  %.not60 = icmp eq i32 %i.bt, 0
  br i1 %.not60, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bu = load ptr, ptr @g_proxyUsername, align 8, !tbaa !9
  %i.bv = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.174, ptr noundef %i.bu) #20 ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.bw = load ptr, ptr @g_proxyPassword, align 8, !tbaa !9
  %i.bx = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef nonnull %i.b, i32 noundef 10176, ptr noundef %i.bw) #20
  %.not61 = icmp eq i32 %i.bx, 0
  br i1 %.not61, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.by = load ptr, ptr @g_proxyPassword, align 8, !tbaa !9
  %i.bz = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.175, ptr noundef %i.by) #20 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.ap, %bb.at, %bb.as, %bb.ai
  call void @set_tls_ca_bundle(ptr noundef nonnull %i.b) #20
  %i.ca = call i32 @set_tls_client_certificate(ptr noundef nonnull %i.b) #20
  %.not62 = icmp eq i32 %i.ca, 0
  br i1 %.not62, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cb = call i32 (i32, ptr, ...) @logg(i32 noundef 2, ptr noundef nonnull @.str.176) #20 ; 0 uses
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  store ptr %i.b, ptr %1, align 8, !tbaa !43
  br label %.thread

bb.ax:                                            ; preds = %bb.ab, %bb.ac, %bb.af, %bb.ag, %bb.av
  %.0 = phi i32 [ 9, %bb.ag ], [ 9, %bb.ac ], [ 16, %bb.av ], [ 9, %bb.af ], [ 9, %bb.ab ]
  call void @curl_easy_cleanup(ptr noundef nonnull %i.b) #20
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.aw, %bb.ax
  %.066 = phi i32 [ 2, %bb.b ], [ %.0, %bb.ax ], [ 0, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.066
}

declare i32 @curl_easy_setopt(ptr noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @xferinfo(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, i64 %3, i64 %4) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 0, ptr %i.a, align 8, !tbaa !27
  %5 = uitofp nneg i64 %1 to double               ; 3 uses
  %i.d = icmp slt i64 %1, 1
  br i1 %i.d, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !49
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.ae

bb.c:                                             ; preds = %bb.b
  %i.g = sitofp i64 %2 to double
  %i.h = fdiv double %i.g, %5                     ; 3 uses
  %i.i = fmul double %i.h, 2.500000e+01
  %i.j = tail call double @llvm.round.f64(double %i.i)
  %i.k = fptoui double %i.j to i32                ; 4 uses
  %i.l = call i32 (ptr, i32, ...) @curl_easy_getinfo(ptr noundef %i.c, i32 noundef 6291506, ptr noundef nonnull %i.a) #20 ; 0 uses
  %i.m = load i64, ptr %i.a, align 8, !tbaa !27
  store i64 %i.m, ptr %0, align 8, !tbaa !46
  %i.n = load ptr, ptr @stdout, align 8, !tbaa !33
  %i.o = call i64 @fwrite(ptr nonnull @.str.177, i64 5, i64 1, ptr %i.n) ; 0 uses
  %i.p = fcmp ugt double %i.h, 0.000000e+00
  br i1 %i.p, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr @stdout, align 8, !tbaa !33
  %i.r = call i64 @fwrite(ptr nonnull @.str.178, i64 6, i64 1, ptr %i.q) ; 0 uses
  %i.s = load i64, ptr %i.a, align 8, !tbaa !27
  %i.t = sitofp i64 %i.s to double
  %i.u = fdiv double %i.t, 1.000000e+06           ; 7 uses
  %i.v = fcmp ult double %i.u, 3.600000e+03
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr @stdout, align 8, !tbaa !33
  %i.x = call double @fmod(double noundef %i.u, double noundef 3.600000e+03) #20
  %i.y = insertelement <2 x double> poison, double %i.u, i64 0
  %i.z = insertelement <2 x double> %i.y, double %i.x, i64 1
  %i.aa = fdiv <2 x double> %i.z, <double 3.600000e+03, double 6.000000e+01> ; 2 uses
  %i.ab = extractelement <2 x double> %i.aa, i64 0
  %i.ac = call double @llvm.trunc.f64(double %i.ab)
  %i.ad = extractelement <2 x double> %i.aa, i64 1
  %i.ae = call double @llvm.trunc.f64(double %i.ad)
  %i.af = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.w, ptr noundef nonnull @.str.189, double noundef %i.ac, double noundef %i.ae) #20 ; 0 uses
  br label %printTime.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = fcmp ult double %i.u, 6.000000e+01
  %i.ah = load ptr, ptr @stdout, align 8, !tbaa !33 ; 2 uses
  br i1 %i.ag, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = fdiv double %i.u, 6.000000e+01
  %i.aj = call double @llvm.trunc.f64(double %i.ai)
  %i.ak = frem double %i.u, 6.000000e+01
  %i.al = call double @llvm.trunc.f64(double %i.ak)
  %i.am = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ah, ptr noundef nonnull @.str.190, double noundef %i.aj, double noundef %i.al) #20 ; 0 uses
  br label %printTime.exit

bb.h:                                             ; preds = %bb.f
  %i.an = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ah, ptr noundef nonnull @.str.191, double noundef %i.u) #20 ; 0 uses
  br label %printTime.exit

printTime.exit:                                   ; preds = %bb.e, %bb.g, %bb.h
  %i.ao = load ptr, ptr @stdout, align 8, !tbaa !33
  %i.ap = call i64 @fwrite(ptr nonnull @.str.179, i64 15, i64 1, ptr %i.ao) ; 0 uses
  br label %bb.r

bb.i:                                             ; preds = %bb.c
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !27
  %i.ar = load ptr, ptr @stdout, align 8, !tbaa !33
  %i.as = call i64 @fwrite(ptr nonnull @.str.178, i64 6, i64 1, ptr %i.ar) ; 0 uses
  %i.at = load i64, ptr %i.a, align 8, !tbaa !27
  %i.au = sitofp i64 %i.at to double
  %i.av = sitofp i64 %i.aq to double              ; 2 uses
  %i.aw = insertelement <2 x double> poison, double %i.av, i64 0
  %i.ax = insertelement <2 x double> %i.aw, double %i.au, i64 1
  %i.ay = insertelement <2 x double> <double poison, double 1.000000e+06>, double %i.h, i64 0
  %i.az = fdiv <2 x double> %i.ax, %i.ay          ; 2 uses
  %i.ba = extractelement <2 x double> %i.az, i64 1 ; 7 uses
  %i.bb = extractelement <2 x double> %i.az, i64 0
  %i.bc = fsub double %i.bb, %i.av
  %i.bd = fptosi double %i.bc to i64
  %i.be = fcmp ult double %i.ba, 3.600000e+03
  br i1 %i.be, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = load ptr, ptr @stdout, align 8, !tbaa !33
  %i.bg = call double @fmod(double noundef %i.ba, double noundef 3.600000e+03) #20
  %i.bh = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.bi = insertelement <2 x double> %i.bh, double %i.bg, i64 1
  %i.bj = fdiv <2 x double> %i.bi, <double 3.600000e+03, double 6.000000e+01> ; 2 uses
  %i.bk = extractelement <2 x double> %i.bj, i64 0
  %i.bl = call double @llvm.trunc.f64(double %i.bk)
  %i.bm = extractelement <2 x double> %i.bj, i64 1
  %i.bn = call double @llvm.trunc.f64(double %i.bm)
  %i.bo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bf, ptr noundef nonnull @.str.189, double noundef %i.bl, double noundef %i.bn) #20 ; 0 uses
  br label %printTime.exit39

bb.k:                                             ; preds = %bb.i
  %i.bp = fcmp ult double %i.ba, 6.000000e+01
  %i.bq = load ptr, ptr @stdout, align 8, !tbaa !33 ; 2 uses
  br i1 %i.bp, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = fdiv double %i.ba, 6.000000e+01
  %i.bs = call double @llvm.trunc.f64(double %i.br)
  %i.bt = frem double %i.ba, 6.000000e+01
  %i.bu = call double @llvm.trunc.f64(double %i.bt)
  %i.bv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bq, ptr noundef nonnull @.str.190, double noundef %i.bs, double noundef %i.bu) #20 ; 0 uses
  br label %printTime.exit39

bb.m:                                             ; preds = %bb.k
  %i.bw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bq, ptr noundef nonnull @.str.191, double noundef %i.ba) #20 ; 0 uses
  br label %printTime.exit39

printTime.exit39:                                 ; preds = %bb.j, %bb.l, %bb.m
  %i.bx = load ptr, ptr @stdout, align 8, !tbaa !33
  %i.by = call i64 @fwrite(ptr nonnull @.str.180, i64 7, i64 1, ptr %i.bx) ; 0 uses
  %i.bz = sitofp i64 %i.bd to double
  %i.ca = fdiv double %i.bz, 1.000000e+06         ; 7 uses
  %i.cb = fcmp ult double %i.ca, 3.600000e+03
  br i1 %i.cb, label %bb.o, label %bb.n

bb.n:                                             ; preds = %printTime.exit39
  %i.cc = load ptr, ptr @stdout, align 8, !tbaa !33
  %i.cd = call double @fmod(double noundef %i.ca, double noundef 3.600000e+03) #20
  %i.ce = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.cf = insertelement <2 x double> %i.ce, double %i.cd, i64 1
  %i.cg = fdiv <2 x double> %i.cf, <double 3.600000e+03, double 6.000000e+01> ; 2 uses
  %i.ch = extractelement <2 x double> %i.cg, i64 0
  %i.ci = call double @llvm.trunc.f64(double %i.ch)
  %i.cj = extractelement <2 x double> %i.cg, i64 1
  %i.ck = call double @llvm.trunc.f64(double %i.cj)
  %i.cl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cc, ptr noundef nonnull @.str.189, double noundef %i.ci, double noundef %i.ck) #20 ; 0 uses
  br label %printTime.exit40

bb.o:                                             ; preds = %printTime.exit39
  %i.cm = fcmp ult double %i.ca, 6.000000e+01
  %i.cn = load ptr, ptr @stdout, align 8, !tbaa !33 ; 2 uses
  br i1 %i.cm, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.co = fdiv double %i.ca, 6.000000e+01
  %i.cp = call double @llvm.trunc.f64(double %i.co)
  %i.cq = frem double %i.ca, 6.000000e+01
  %i.cr = call double @llvm.trunc.f64(double %i.cq)
  %i.cs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cn, ptr noundef nonnull @.str.190, double noundef %i.cp, double noundef %i.cr) #20 ; 0 uses
  br label %printTime.exit40

bb.q:                                             ; preds = %bb.o
  %i.ct = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cn, ptr noundef nonnull @.str.191, double noundef %i.ca) #20 ; 0 uses
  br label %printTime.exit40

printTime.exit40:                                 ; preds = %bb.n, %bb.p, %bb.q
  %i.cu = load ptr, ptr @stdout, align 8, !tbaa !33
  %fputc = call i32 @fputc(i32 32, ptr %i.cu)     ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %printTime.exit40, %printTime.exit
  %i.cv = load ptr, ptr @stdout, align 8, !tbaa !33
  %fputc30 = call i32 @fputc(i32 91, ptr %i.cv)   ; 0 uses
  switch i32 %i.k, label %.lr.ph.preheader [
    i32 0, label %.lr.ph44.preheader
    i32 1, label %.thread58
  ]

.lr.ph.preheader:                                 ; preds = %bb.r
  %i.cw = add i32 %i.k, -2
  br label %.lr.ph

.thread58:                                        ; preds = %bb.r
  %i.cx = load ptr, ptr @stdout, align 8, !tbaa !33
  %fputc3360 = call i32 @fputc(i32 62, ptr %i.cx) ; 0 uses
  br label %.lr.ph44.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02742 = phi i32 [ %i.cz, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.cy = load ptr, ptr @stdout, align 8, !tbaa !33
  %fputc38 = call i32 @fputc(i32 61, ptr %i.cy)   ; 0 uses
  %i.cz = add nuw i32 %.02742, 1
  %exitcond.not = icmp eq i32 %.02742, %i.cw
  br i1 %exitcond.not, label %bb.s, label %.lr.ph

bb.s:                                             ; preds = %.lr.ph
  %i.da = load ptr, ptr @stdout, align 8, !tbaa !33
  %fputc33 = call i32 @fputc(i32 62, ptr %i.da)   ; 0 uses
  %i.db = icmp ult i32 %i.k, 25
  br i1 %i.db, label %.lr.ph44.preheader, label %._crit_edge

.lr.ph44.preheader:                               ; preds = %bb.r, %.thread58, %bb.s
  br label %.lr.ph44

.lr.ph44:                                         ; preds = %.lr.ph44.preheader, %.lr.ph44
  %.343 = phi i32 [ %i.dd, %.lr.ph44 ], [ %i.k, %.lr.ph44.preheader ]
  %i.dc = load ptr, ptr @stdout, align 8, !tbaa !33
  %fputc37 = call i32 @fputc(i32 32, ptr %i.dc)   ; 0 uses
  %i.dd = add i32 %.343, 1                        ; 2 uses
  %exitcond46.not = icmp eq i32 %i.dd, 25
  br i1 %exitcond46.not, label %._crit_edge, label %.lr.ph44

._crit_edge:                                      ; preds = %.lr.ph44, %bb.s
  %i.de = load ptr, ptr @stdout, align 8, !tbaa !33
  %i.df = call i64 @fwrite(ptr nonnull @.str.185, i64 2, i64 1, ptr %i.de) ; 0 uses
  %i.dg = icmp sgt i64 %2, 1048575
  br i1 %i.dg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge
  %i.dh = uitofp nneg i64 %2 to double
  %i.di = fmul nnan double %i.dh, f0x3EB0000000000000
  %i.dj = load ptr, ptr @stdout, align 8, !tbaa !33
  %i.dk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dj, ptr noundef nonnull @.str.192, double noundef %i.di) #20 ; 0 uses
  br label %printBytes.exit

bb.u:                                             ; preds = %._crit_edge
  %i.dl = icmp sgt i64 %2, 1023
  br i1 %i.dl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dm = uitofp nneg i64 %2 to double
  %i.dn = fmul nnan double %i.dm, f0x3F50000000000000
  %i.do = load ptr, ptr @stdout, align 8, !tbaa !33
  %i.dp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.do, ptr noundef nonnull @.str.194, double noundef %i.dn) #20 ; 0 uses
  br label %printBytes.exit

bb.w:                                             ; preds = %bb.u
  %i.dq = load ptr, ptr @stdout, align 8, !tbaa !33
  %i.dr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dq, ptr noundef nonnull @.str.196, i64 noundef %2) #20 ; 0 uses
  br label %printBytes.exit

printBytes.exit:                                  ; preds = %bb.t, %bb.v, %bb.w
  %i.ds = load ptr, ptr @stdout, align 8, !tbaa !33
  %fputc34 = call i32 @fputc(i32 47, ptr %i.ds)   ; 0 uses
  %i.dt = icmp samesign ugt i64 %1, 1048575
  br i1 %i.dt, label %bb.x, label %bb.y

bb.x:                                             ; preds = %printBytes.exit
  %i.du = fmul nnan double %5, f0x3EB0000000000000
  %i.dv = load ptr, ptr @stdout, align 8, !tbaa !33
  %i.dw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dv, ptr noundef nonnull @.str.193, double noundef %i.du) #20 ; 0 uses
  br label %printBytes.exit41

bb.y:                                             ; preds = %printBytes.exit
  %i.dx = icmp samesign ugt i64 %1, 1023
  br i1 %i.dx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dy = fmul nnan double %5, f0x3F50000000000000
  %i.dz = load ptr, ptr @stdout, align 8, !tbaa !33
  %i.ea = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dz, ptr noundef nonnull @.str.195, double noundef %i.dy) #20 ; 0 uses
  br label %printBytes.exit41

bb.aa:                                            ; preds = %bb.y
  %i.eb = load ptr, ptr @stdout, align 8, !tbaa !33
  %i.ec = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eb, ptr noundef nonnull @.str.197, i64 noundef %1) #20 ; 0 uses
  br label %printBytes.exit41

printBytes.exit41:                                ; preds = %bb.x, %bb.z, %bb.aa
  %i.ed = icmp slt i64 %2, %1
  %i.ee = load ptr, ptr @stdout, align 8, !tbaa !33 ; 2 uses
  br i1 %i.ed, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %printBytes.exit41
  %fputc36 = call i32 @fputc(i32 13, ptr %i.ee)   ; 0 uses
  br label %bb.ad

bb.ac:                                            ; preds = %printBytes.exit41
  %fputc35 = call i32 @fputc(i32 10, ptr %i.ee)   ; 0 uses
  store i8 1, ptr %i.e, align 8, !tbaa !49
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ef = load ptr, ptr @stdout, align 8, !tbaa !33
  %i.eg = call i64 @fwrite(ptr nonnull @.str.188, i64 5, i64 1, ptr %i.ef) ; 0 uses
  %i.eh = load ptr, ptr @stdout, align 8, !tbaa !33
  %i.ei = call i32 @fflush(ptr noundef %i.eh)     ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.b, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 0
}

declare ptr @curl_slist_append(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef i64 @WriteMemoryCallback(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef captures(address_is_null) %3) #0 {
bb.a:
  %i.a = mul i64 %2, %1                           ; 4 uses
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %3, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %3, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !60
  %i.g = add i64 %i.a, 1
  %i.h = add i64 %i.g, %i.f
  %i.i = tail call ptr @realloc(ptr noundef %i.d, i64 noundef %i.h) #25 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.198) #20 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store ptr %i.i, ptr %3, align 8, !tbaa !58
  %i.l = load i64, ptr %i.e, align 8, !tbaa !60   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 1 %0, i64 %i.a, i1 false)
  %i.n = add i64 %i.l, %i.a                       ; 2 uses
  store i64 %i.n, ptr %i.e, align 8, !tbaa !60
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.n
  store i8 0, ptr %i.o, align 1, !tbaa !18
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ 0, %bb.c ], [ %i.a, %bb.d ]
  ret i64 %.1
}

declare i32 @curl_easy_perform(ptr noundef) local_unnamed_addr #4

declare ptr @curl_easy_strerror(i32 noundef) local_unnamed_addr #4

declare i32 @curl_easy_getinfo(ptr noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #6

declare ptr @cl_cvdparse(ptr noundef) local_unnamed_addr #4

declare void @curl_slist_free_all(ptr noundef) local_unnamed_addr #4

declare void @curl_easy_cleanup(ptr noundef) local_unnamed_addr #4

declare ptr @curl_easy_init() local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #14

declare ptr @get_version() local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @set_tls_ca_bundle(ptr noundef) local_unnamed_addr #4

declare i32 @set_tls_client_certificate(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #15

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind uwtable
define internal noundef i64 @WriteFileCallback(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef captures(address_is_null) %3) #18 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %3, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = mul i64 %2, %1
  %i.d = load i32, ptr %3, align 8, !tbaa !50
  %i.e = tail call i64 @write(i32 noundef %i.d, ptr noundef nonnull %0, i64 noundef %i.c) #20 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !52
  %i.h = add i64 %i.g, %i.e
  store i64 %i.h, ptr %i.f, align 8, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

declare i32 @cli_cvdverify(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

declare ptr @cl_strerror(i32 noundef) local_unnamed_addr #4

declare zeroext i1 @cdiff_apply(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #12

declare i32 @cli_cvdunpack_and_verify(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

declare ptr @gzopen(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @tar_addfile(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #12

declare ptr @readdir(ptr noundef) local_unnamed_addr #4

declare i32 @gzclose(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
