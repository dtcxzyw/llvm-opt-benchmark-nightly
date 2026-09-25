Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/libfreshclam_internal?download=true
inline.NumInlined: 15
inline.NumDeleted: 9
begin_hunk_0_@create_curl_handle:bb.a
    i32 43, label %bb.af
    i32 48, label %bb.ag
    i32 4, label %bb.ag
  ]

bb.af:                                            ; preds = %bb.ae
  %i.aw = load ptr, ptr @g_localIP, align 8, !tbaa !11
  %i.ax = call i32 (i32, ptr, ...) @logg(i32 noundef 4, ptr noundef nonnull @.str.165, ptr noundef %i.aw) #20 ; 0 uses
  br label %bb.ax

bb.ag:                                            ; preds = %bb.ae, %bb.ae
  %i.ay = load ptr, ptr @g_localIP, align 8, !tbaa !11
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
  %i.bc = load ptr, ptr @g_proxyServer, align 8, !tbaa !11 ; 2 uses
  %.not55 = icmp eq ptr %i.bc, null
  br i1 %.not55, label %bb.au, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bd = load i16, ptr @g_proxyPort, align 2, !tbaa !27
  %i.be = zext i16 %i.bd to i32
  %i.bf = call i32 (i32, ptr, ...) @logg(i32 noundef 2, ptr noundef nonnull @.str.170, ptr noundef nonnull %i.bc, i32 noundef %i.be) #20 ; 0 uses
  %i.bg = load ptr, ptr @g_proxyServer, align 8, !tbaa !11
  %i.bh = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef nonnull %i.b, i32 noundef 10004, ptr noundef %i.bg) #20
  %.not56 = icmp eq i32 %i.bh, 0
  br i1 %.not56, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bi = load ptr, ptr @g_proxyServer, align 8, !tbaa !11
  %i.bj = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.171, ptr noundef %i.bi) #20 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.bk = load i16, ptr @g_proxyPort, align 2, !tbaa !27
  %i.bl = zext i16 %i.bk to i32
  %i.bm = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef nonnull %i.b, i32 noundef 59, i32 noundef %i.bl) #20
  %.not57 = icmp eq i32 %i.bm, 0
  br i1 %.not57, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bn = load i16, ptr @g_proxyPort, align 2, !tbaa !27
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
  %i.bs = load ptr, ptr @g_proxyUsername, align 8, !tbaa !11 ; 2 uses
  %.not59 = icmp eq ptr %i.bs, null
  br i1 %.not59, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bt = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef nonnull %i.b, i32 noundef 10175, ptr noundef nonnull %i.bs) #20
  %.not60 = icmp eq i32 %i.bt, 0
  br i1 %.not60, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bu = load ptr, ptr @g_proxyUsername, align 8, !tbaa !11
  %i.bv = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.174, ptr noundef %i.bu) #20 ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.bw = load ptr, ptr @g_proxyPassword, align 8, !tbaa !11
  %i.bx = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef nonnull %i.b, i32 noundef 10176, ptr noundef %i.bw) #20
  %.not61 = icmp eq i32 %i.bx, 0
  br i1 %.not61, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.by = load ptr, ptr @g_proxyPassword, align 8, !tbaa !11
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
  store ptr %i.b, ptr %1, align 8, !tbaa !34
  br label %.thread

bb.ax:                                            ; preds = %bb.ab, %bb.ac, %bb.af, %bb.ag, %bb.av
  %.034 = phi i32 [ 9, %bb.ag ], [ 9, %bb.ac ], [ 16, %bb.av ], [ 9, %bb.af ], [ 9, %bb.ab ]
  call void @curl_easy_cleanup(ptr noundef nonnull %i.b) #20
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.aw, %bb.ax
  %.03466 = phi i32 [ 2, %bb.b ], [ %.034, %bb.ax ], [ 0, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.03466
}

declare i32 @curl_easy_setopt(ptr noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @xferinfo(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, i64 %3, i64 %4) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 0, ptr %i.a, align 8, !tbaa !23
  %i.d = uitofp nneg i64 %1 to double             ; 3 uses
  %i.e = icmp slt i64 %1, 1
  br i1 %i.e, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !38
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.ae

bb.c:                                             ; preds = %bb.b
  %i.h = sitofp i64 %2 to double
  %i.i = fdiv double %i.h, %i.d                   ; 3 uses
  %i.j = fmul double %i.i, 2.500000e+01
  %i.k = tail call double @llvm.round.f64(double %i.j)
  %i.l = fptoui double %i.k to i32                ; 4 uses
  %i.m = call i32 (ptr, i32, ...) @curl_easy_getinfo(ptr noundef %i.c, i32 noundef 6291506, ptr noundef nonnull %i.a) #20 ; 0 uses
  %i.n = load i64, ptr %i.a, align 8, !tbaa !23
  store i64 %i.n, ptr %0, align 8, !tbaa !36
  %i.o = load ptr, ptr @stdout, align 8, !tbaa !29
  %fwrite = call i64 @fwrite(ptr nonnull @.str.177, i64 5, i64 1, ptr %i.o) ; 0 uses
  %i.p = fcmp ugt double %i.i, 0.000000e+00
  br i1 %i.p, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr @stdout, align 8, !tbaa !29
  %fwrite34 = call i64 @fwrite(ptr nonnull @.str.178, i64 6, i64 1, ptr %i.q) ; 0 uses
  %i.r = load i64, ptr %i.a, align 8, !tbaa !23
  %i.s = sitofp i64 %i.r to double
  %i.t = fdiv double %i.s, 1.000000e+06           ; 7 uses
  %i.u = fcmp ult double %i.t, 3.600000e+03
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr @stdout, align 8, !tbaa !29
  %i.w = call double @fmod(double noundef %i.t, double noundef 3.600000e+03) #20
  %i.x = insertelement <2 x double> poison, double %i.t, i64 0
  %i.y = insertelement <2 x double> %i.x, double %i.w, i64 1
  %i.z = fdiv <2 x double> %i.y, <double 3.600000e+03, double 6.000000e+01> ; 2 uses
  %i.aa = extractelement <2 x double> %i.z, i64 0
  %i.ab = call double @llvm.trunc.f64(double %i.aa)
  %i.ac = extractelement <2 x double> %i.z, i64 1
  %i.ad = call double @llvm.trunc.f64(double %i.ac)
  %i.ae = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.189, double noundef %i.ab, double noundef %i.ad) #20 ; 0 uses
  br label %printTime.exit

bb.f:                                             ; preds = %bb.d
  %i.af = fcmp ult double %i.t, 6.000000e+01
  %i.ag = load ptr, ptr @stdout, align 8, !tbaa !29 ; 2 uses
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = fdiv double %i.t, 6.000000e+01
  %i.ai = call double @llvm.trunc.f64(double %i.ah)
  %i.aj = frem double %i.t, 6.000000e+01
  %i.ak = call double @llvm.trunc.f64(double %i.aj)
  %i.al = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ag, ptr noundef nonnull @.str.190, double noundef %i.ai, double noundef %i.ak) #20 ; 0 uses
  br label %printTime.exit

bb.h:                                             ; preds = %bb.f
  %i.am = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ag, ptr noundef nonnull @.str.191, double noundef %i.t) #20 ; 0 uses
  br label %printTime.exit

printTime.exit:                                   ; preds = %bb.e, %bb.g, %bb.h
  %i.an = load ptr, ptr @stdout, align 8, !tbaa !29
  %fwrite35 = call i64 @fwrite(ptr nonnull @.str.179, i64 15, i64 1, ptr %i.an) ; 0 uses
  br label %bb.r

bb.i:                                             ; preds = %bb.c
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !23
  %i.ap = load ptr, ptr @stdout, align 8, !tbaa !29
  %fwrite31 = call i64 @fwrite(ptr nonnull @.str.178, i64 6, i64 1, ptr %i.ap) ; 0 uses
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !23
  %i.ar = sitofp i64 %i.ao to double              ; 2 uses
  %i.as = sitofp i64 %i.aq to double
  %i.at = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.au = insertelement <2 x double> %i.at, double %i.as, i64 1
  %i.av = insertelement <2 x double> <double poison, double 1.000000e+06>, double %i.i, i64 0
  %i.aw = fdiv <2 x double> %i.au, %i.av          ; 2 uses
  %i.ax = extractelement <2 x double> %i.aw, i64 1 ; 7 uses
  %i.ay = extractelement <2 x double> %i.aw, i64 0
  %i.az = fsub double %i.ay, %i.ar
  %i.ba = fptosi double %i.az to i64
  %i.bb = fcmp ult double %i.ax, 3.600000e+03
  br i1 %i.bb, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = load ptr, ptr @stdout, align 8, !tbaa !29
  %i.bd = call double @fmod(double noundef %i.ax, double noundef 3.600000e+03) #20
  %i.be = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.bd, i64 1
  %i.bg = fdiv <2 x double> %i.bf, <double 3.600000e+03, double 6.000000e+01> ; 2 uses
  %i.bh = extractelement <2 x double> %i.bg, i64 0
  %i.bi = call double @llvm.trunc.f64(double %i.bh)
  %i.bj = extractelement <2 x double> %i.bg, i64 1
  %i.bk = call double @llvm.trunc.f64(double %i.bj)
  %i.bl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bc, ptr noundef nonnull @.str.189, double noundef %i.bi, double noundef %i.bk) #20 ; 0 uses
  br label %printTime.exit54

bb.k:                                             ; preds = %bb.i
  %i.bm = fcmp ult double %i.ax, 6.000000e+01
  %i.bn = load ptr, ptr @stdout, align 8, !tbaa !29 ; 2 uses
  br i1 %i.bm, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = fdiv double %i.ax, 6.000000e+01
  %i.bp = call double @llvm.trunc.f64(double %i.bo)
  %i.bq = frem double %i.ax, 6.000000e+01
  %i.br = call double @llvm.trunc.f64(double %i.bq)
  %i.bs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bn, ptr noundef nonnull @.str.190, double noundef %i.bp, double noundef %i.br) #20 ; 0 uses
  br label %printTime.exit54

bb.m:                                             ; preds = %bb.k
  %i.bt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bn, ptr noundef nonnull @.str.191, double noundef %i.ax) #20 ; 0 uses
  br label %printTime.exit54

printTime.exit54:                                 ; preds = %bb.j, %bb.l, %bb.m
  %i.bu = load ptr, ptr @stdout, align 8, !tbaa !29
  %fwrite32 = call i64 @fwrite(ptr nonnull @.str.180, i64 7, i64 1, ptr %i.bu) ; 0 uses
  %i.bv = sitofp i64 %i.ba to double
  %i.bw = fdiv double %i.bv, 1.000000e+06         ; 7 uses
  %i.bx = fcmp ult double %i.bw, 3.600000e+03
  br i1 %i.bx, label %bb.o, label %bb.n

bb.n:                                             ; preds = %printTime.exit54
  %i.by = load ptr, ptr @stdout, align 8, !tbaa !29
  %i.bz = call double @fmod(double noundef %i.bw, double noundef 3.600000e+03) #20
  %i.ca = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.cb = insertelement <2 x double> %i.ca, double %i.bz, i64 1
  %i.cc = fdiv <2 x double> %i.cb, <double 3.600000e+03, double 6.000000e+01> ; 2 uses
  %i.cd = extractelement <2 x double> %i.cc, i64 0
  %i.ce = call double @llvm.trunc.f64(double %i.cd)
  %i.cf = extractelement <2 x double> %i.cc, i64 1
  %i.cg = call double @llvm.trunc.f64(double %i.cf)
  %i.ch = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.by, ptr noundef nonnull @.str.189, double noundef %i.ce, double noundef %i.cg) #20 ; 0 uses
  br label %printTime.exit55

bb.o:                                             ; preds = %printTime.exit54
  %i.ci = fcmp ult double %i.bw, 6.000000e+01
  %i.cj = load ptr, ptr @stdout, align 8, !tbaa !29 ; 2 uses
  br i1 %i.ci, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ck = fdiv double %i.bw, 6.000000e+01
  %i.cl = call double @llvm.trunc.f64(double %i.ck)
  %i.cm = frem double %i.bw, 6.000000e+01
  %i.cn = call double @llvm.trunc.f64(double %i.cm)
  %i.co = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cj, ptr noundef nonnull @.str.190, double noundef %i.cl, double noundef %i.cn) #20 ; 0 uses
  br label %printTime.exit55

bb.q:                                             ; preds = %bb.o
  %i.cp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cj, ptr noundef nonnull @.str.191, double noundef %i.bw) #20 ; 0 uses
  br label %printTime.exit55

printTime.exit55:                                 ; preds = %bb.n, %bb.p, %bb.q
  %i.cq = load ptr, ptr @stdout, align 8, !tbaa !29
  %fputc = call i32 @fputc(i32 32, ptr %i.cq)     ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %printTime.exit55, %printTime.exit
  %i.cr = load ptr, ptr @stdout, align 8, !tbaa !29
  %fputc37 = call i32 @fputc(i32 91, ptr %i.cr)   ; 0 uses
  switch i32 %i.l, label %.lr.ph.preheader [
    i32 0, label %.lr.ph59.preheader
    i32 1, label %.thread73
  ]

.lr.ph.preheader:                                 ; preds = %bb.r
  %i.cs = add i32 %i.l, -2
  br label %.lr.ph

.thread73:                                        ; preds = %bb.r
  %i.ct = load ptr, ptr @stdout, align 8, !tbaa !29
  %fputc4175 = call i32 @fputc(i32 62, ptr %i.ct) ; 0 uses
  br label %.lr.ph59.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.057 = phi i32 [ %i.cv, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.cu = load ptr, ptr @stdout, align 8, !tbaa !29
  %fputc53 = call i32 @fputc(i32 61, ptr %i.cu)   ; 0 uses
  %i.cv = add nuw i32 %.057, 1
  %exitcond.not = icmp eq i32 %.057, %i.cs
  br i1 %exitcond.not, label %bb.s, label %.lr.ph

bb.s:                                             ; preds = %.lr.ph
  %i.cw = load ptr, ptr @stdout, align 8, !tbaa !29
  %fputc41 = call i32 @fputc(i32 62, ptr %i.cw)   ; 0 uses
  %i.cx = icmp ult i32 %i.l, 25
  br i1 %i.cx, label %.lr.ph59.preheader, label %._crit_edge

.lr.ph59.preheader:                               ; preds = %bb.r, %.thread73, %bb.s
  br label %.lr.ph59

.lr.ph59:                                         ; preds = %.lr.ph59.preheader, %.lr.ph59
  %.358 = phi i32 [ %i.cz, %.lr.ph59 ], [ %i.l, %.lr.ph59.preheader ]
  %i.cy = load ptr, ptr @stdout, align 8, !tbaa !29
  %fputc51 = call i32 @fputc(i32 32, ptr %i.cy)   ; 0 uses
  %i.cz = add i32 %.358, 1                        ; 2 uses
  %exitcond61.not = icmp eq i32 %i.cz, 25
  br i1 %exitcond61.not, label %._crit_edge, label %.lr.ph59

._crit_edge:                                      ; preds = %.lr.ph59, %bb.s
  %i.da = load ptr, ptr @stdout, align 8, !tbaa !29
  %fwrite42 = call i64 @fwrite(ptr nonnull @.str.185, i64 2, i64 1, ptr %i.da) ; 0 uses
  %i.db = icmp sgt i64 %2, 1048575
  br i1 %i.db, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge
  %i.dc = uitofp nneg i64 %2 to double
  %i.dd = fmul nnan double %i.dc, f0x3EB0000000000000
  %i.de = load ptr, ptr @stdout, align 8, !tbaa !29
  %i.df = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.de, ptr noundef nonnull @.str.192, double noundef %i.dd) #20 ; 0 uses
  br label %printBytes.exit

bb.u:                                             ; preds = %._crit_edge
  %i.dg = icmp sgt i64 %2, 1023
  br i1 %i.dg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dh = uitofp nneg i64 %2 to double
  %i.di = fmul nnan double %i.dh, f0x3F50000000000000
  %i.dj = load ptr, ptr @stdout, align 8, !tbaa !29
  %i.dk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dj, ptr noundef nonnull @.str.194, double noundef %i.di) #20 ; 0 uses
  br label %printBytes.exit

bb.w:                                             ; preds = %bb.u
  %i.dl = load ptr, ptr @stdout, align 8, !tbaa !29
  %i.dm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dl, ptr noundef nonnull @.str.196, i64 noundef %2) #20 ; 0 uses
  br label %printBytes.exit

printBytes.exit:                                  ; preds = %bb.t, %bb.v, %bb.w
  %i.dn = load ptr, ptr @stdout, align 8, !tbaa !29
  %fputc44 = call i32 @fputc(i32 47, ptr %i.dn)   ; 0 uses
  %i.do = icmp samesign ugt i64 %1, 1048575
  br i1 %i.do, label %bb.x, label %bb.y

bb.x:                                             ; preds = %printBytes.exit
  %i.dp = fmul nnan double %i.d, f0x3EB0000000000000
  %i.dq = load ptr, ptr @stdout, align 8, !tbaa !29
  %i.dr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dq, ptr noundef nonnull @.str.193, double noundef %i.dp) #20 ; 0 uses
  br label %printBytes.exit56

bb.y:                                             ; preds = %printBytes.exit
  %i.ds = icmp samesign ugt i64 %1, 1023
  br i1 %i.ds, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dt = fmul nnan double %i.d, f0x3F50000000000000
  %i.du = load ptr, ptr @stdout, align 8, !tbaa !29
  %i.dv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.du, ptr noundef nonnull @.str.195, double noundef %i.dt) #20 ; 0 uses
  br label %printBytes.exit56

bb.aa:                                            ; preds = %bb.y
  %i.dw = load ptr, ptr @stdout, align 8, !tbaa !29
  %i.dx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dw, ptr noundef nonnull @.str.197, i64 noundef %1) #20 ; 0 uses
  br label %printBytes.exit56

printBytes.exit56:                                ; preds = %bb.x, %bb.z, %bb.aa
  %i.dy = icmp slt i64 %2, %1
  %i.dz = load ptr, ptr @stdout, align 8, !tbaa !29 ; 2 uses
  br i1 %i.dy, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %printBytes.exit56
  %fputc48 = call i32 @fputc(i32 13, ptr %i.dz)   ; 0 uses
  br label %bb.ad

bb.ac:                                            ; preds = %printBytes.exit56
  %fputc46 = call i32 @fputc(i32 10, ptr %i.dz)   ; 0 uses
  store i8 1, ptr %i.f, align 8, !tbaa !38
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ea = load ptr, ptr @stdout, align 8, !tbaa !29
  %fwrite49 = call i64 @fwrite(ptr nonnull @.str.188, i64 5, i64 1, ptr %i.ea) ; 0 uses
  %i.eb = load ptr, ptr @stdout, align 8, !tbaa !29
  %i.ec = call i32 @fflush(ptr noundef %i.eb)     ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.b, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 0
}
end_hunk_0
