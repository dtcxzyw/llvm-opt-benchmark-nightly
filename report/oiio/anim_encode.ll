Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/anim_encode?download=true
inline.NumInlined: 118
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@SetFrame:bb.a
  store i32 0, ptr %6, align 8, !tbaa !129
  br label %bb.q

.thread100:                                       ; preds = %bb.n, %.critedge, %bb.j
  %.pr = load i32, ptr %6, align 8, !tbaa !129
  %.not74 = icmp eq i32 %.pr, 0
  br i1 %.not74, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.thread100.thread104, %.thread100
  %i.ch = call fastcc i32 @GenerateCandidates(ptr noundef %0, ptr noundef %5, i32 noundef 0, i32 noundef %i.c, i32 noundef %2, ptr noundef %6, ptr noundef %8, ptr noundef %9) ; 2 uses
  %.not75 = icmp eq i32 %i.ch, 0
  br i1 %.not75, label %bb.p, label %bb.av

bb.p:                                             ; preds = %bb.o, %.thread100
  %.pr106 = load i32, ptr %7, align 8, !tbaa !129
  %.not76 = icmp eq i32 %.pr106, 0
  br i1 %.not76, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.thread107, %bb.p
  %i.ci = call fastcc i32 @GenerateCandidates(ptr noundef %0, ptr noundef %5, i32 noundef 1, i32 noundef %i.c, i32 noundef %2, ptr noundef %7, ptr noundef %8, ptr noundef %9) ; 2 uses
  %.not77 = icmp eq i32 %i.ci, 0
  br i1 %.not77, label %bb.r, label %bb.av

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 3 uses
  %i.ck = load i32, ptr %i.cj, align 16, !tbaa !97
  %.not43.i = icmp eq i32 %i.ck, 0                ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cm = load i64, ptr %i.cl, align 8            ; 4 uses
  %.not.i92 = icmp eq i64 %i.cm, -1
  %narrow = select i1 %.not43.i, i1 true, i1 %.not.i92
  %.240.i = sext i1 %narrow to i32                ; 2 uses
  %.2.i = select i1 %.not43.i, i64 -1, i64 %i.cm  ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 5 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !97 ; 3 uses
  %.not43.1.i = icmp eq i32 %i.cp, 0              ; 3 uses
  br i1 %.not43.1.i, label %bb.al, label %bb.ak

.preheader.split.preheader.i:                     ; preds = %.preheader.i
  br i1 %.not43.i, label %.preheader.split.1.i, label %bb.an

.preheader.split.us.preheader.i:                  ; preds = %.preheader.i
  br i1 %.not43.i, label %.preheader.split.us.1.i, label %bb.s

bb.s:                                             ; preds = %.preheader.split.us.preheader.i
  %i.cq = icmp eq i32 %.240.3.i, 0
  br i1 %i.cq, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @WebPMemoryWriterClear(ptr noundef nonnull %5) #14
  store i32 0, ptr %i.cj, align 16, !tbaa !97
  %.pre117 = load i32, ptr %i.co, align 8, !tbaa !97
  br label %.preheader.split.us.1.i

bb.u:                                             ; preds = %bb.s
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fg, ptr noundef nonnull align 16 dereferenceable(48) %i.cr, i64 48, i1 false), !tbaa.struct !130
  %.val.us.i = load ptr, ptr %5, align 16, !tbaa !90
  store ptr %.val.us.i, ptr %i.fg, align 8, !tbaa !55
  store i64 %i.cm, ptr %i.fh, align 8, !tbaa !77
  %i.cs = load i64, ptr %i.fl, align 8, !tbaa !59
  %.val.i.us.i = load ptr, ptr %i.fm, align 8, !tbaa !40
  %.val13.i.us.i = load i64, ptr %i.fn, align 8, !tbaa !69
  %i.ct = getelementptr [104 x i8], ptr %.val.i.us.i, i64 %.val13.i.us.i
  %i.cu = getelementptr [104 x i8], ptr %i.ct, i64 %i.cs ; 3 uses
  %i.cv = load i32, ptr %i.fo, align 8, !tbaa !75
  %.not.i.us.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i.us.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cw = getelementptr i8, ptr %i.cu, i64 -176
  store i32 %i.fk, ptr %i.cw, align 8, !tbaa !79
  br label %.preheader.split.us.1.thread.i

bb.w:                                             ; preds = %bb.u
  %i.cx = getelementptr i8, ptr %i.cu, i64 -112
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !72
  %.not12.i.us.i = icmp eq i32 %i.cy, 0
  %i.cz = select i1 %.not12.i.us.i, i64 -176, i64 -128
  br label %.preheader.split.us.1.thread.i

.preheader.split.us.1.i:                          ; preds = %bb.t, %.preheader.split.us.preheader.i
  %i.da = phi i32 [ %.pre117, %bb.t ], [ %i.cp, %.preheader.split.us.preheader.i ]
  %.not.us.1.i = icmp eq i32 %i.da, 0
  br i1 %.not.us.1.i, label %.preheader.split.us.2.i, label %bb.x

.preheader.split.us.1.thread.i:                   ; preds = %bb.w, %bb.v
  %.sink14.i.us.i = phi i64 [ %i.cz, %bb.w ], [ -128, %bb.v ]
  %i.db = getelementptr i8, ptr %i.cu, i64 %.sink14.i.us.i
  store i32 %i.fk, ptr %i.db, align 8, !tbaa !83
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fp, ptr noundef nonnull align 16 dereferenceable(16) %i.dc, i64 16, i1 false), !tbaa.struct !80
  br i1 %.not43.1.i, label %.preheader.split.us.2.i, label %.thread.i

bb.x:                                             ; preds = %.preheader.split.us.1.i
  %i.dd = icmp eq i32 %.240.3.i, 1
  br i1 %i.dd, label %bb.y, label %.thread.i

.thread.i:                                        ; preds = %bb.x, %.preheader.split.us.1.thread.i
  call void @WebPMemoryWriterClear(ptr noundef nonnull %i.cn) #14
  store i32 0, ptr %i.co, align 8, !tbaa !97
  br label %.preheader.split.us.2.i

bb.y:                                             ; preds = %bb.x
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fg, ptr noundef nonnull align 8 dereferenceable(48) %i.de, i64 48, i1 false), !tbaa.struct !130
  %.val.us.1.i = load ptr, ptr %i.cn, align 8, !tbaa !90
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 112
  %.val45.us.1.i = load i64, ptr %i.df, align 16, !tbaa !91
  store ptr %.val.us.1.i, ptr %i.fg, align 8, !tbaa !55
  store i64 %.val45.us.1.i, ptr %i.fh, align 8, !tbaa !77
  %i.dg = load i64, ptr %i.fl, align 8, !tbaa !59
  %.val.i.us.1.i = load ptr, ptr %i.fm, align 8, !tbaa !40
  %.val13.i.us.1.i = load i64, ptr %i.fn, align 8, !tbaa !69
  %i.dh = getelementptr [104 x i8], ptr %.val.i.us.1.i, i64 %.val13.i.us.1.i
  %i.di = getelementptr [104 x i8], ptr %i.dh, i64 %i.dg ; 3 uses
  %i.dj = load i32, ptr %i.fo, align 8, !tbaa !75
  %.not.i.us.1.i = icmp eq i32 %i.dj, 0
  br i1 %.not.i.us.1.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dk = getelementptr i8, ptr %i.di, i64 -176
  store i32 %i.fk, ptr %i.dk, align 8, !tbaa !79
  br label %SetPreviousDisposeMethod.exit.us.1.i

bb.aa:                                            ; preds = %bb.y
  %i.dl = getelementptr i8, ptr %i.di, i64 -112
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !72
  %.not12.i.us.1.i = icmp eq i32 %i.dm, 0
  %i.dn = select i1 %.not12.i.us.1.i, i64 -176, i64 -128
  br label %SetPreviousDisposeMethod.exit.us.1.i

SetPreviousDisposeMethod.exit.us.1.i:             ; preds = %bb.aa, %bb.z
  %.sink14.i.us.1.i = phi i64 [ %i.dn, %bb.aa ], [ -128, %bb.z ]
  %i.do = getelementptr i8, ptr %i.di, i64 %.sink14.i.us.1.i
  store i32 %i.fk, ptr %i.do, align 8, !tbaa !83
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fp, ptr noundef nonnull align 8 dereferenceable(16) %i.dp, i64 16, i1 false), !tbaa.struct !80
  br label %.preheader.split.us.2.i

.preheader.split.us.2.i:                          ; preds = %SetPreviousDisposeMethod.exit.us.1.i, %.thread.i, %.preheader.split.us.1.thread.i, %.preheader.split.us.1.i
  %i.dq = load i32, ptr %i.ev, align 16, !tbaa !97
  %.not.us.2.i = icmp eq i32 %i.dq, 0
  br i1 %.not.us.2.i, label %.preheader.split.us.3.i, label %bb.ab

bb.ab:                                            ; preds = %.preheader.split.us.2.i
  %i.dr = icmp eq i32 %.240.3.i, 2
  br i1 %i.dr, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @WebPMemoryWriterClear(ptr noundef nonnull %i.eu) #14
  store i32 0, ptr %i.ev, align 16, !tbaa !97
  br label %.preheader.split.us.3.i

bb.ad:                                            ; preds = %bb.ab
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fg, ptr noundef nonnull align 16 dereferenceable(48) %i.ds, i64 48, i1 false), !tbaa.struct !130
  %.val.us.2.i = load ptr, ptr %i.eu, align 16, !tbaa !90
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 216
  %.val45.us.2.i = load i64, ptr %i.dt, align 8, !tbaa !91
  store ptr %.val.us.2.i, ptr %i.fg, align 8, !tbaa !55
  store i64 %.val45.us.2.i, ptr %i.fh, align 8, !tbaa !77
  %i.du = load i64, ptr %i.fl, align 8, !tbaa !59
  %.val.i.us.2.i = load ptr, ptr %i.fm, align 8, !tbaa !40
  %.val13.i.us.2.i = load i64, ptr %i.fn, align 8, !tbaa !69
  %i.dv = getelementptr [104 x i8], ptr %.val.i.us.2.i, i64 %.val13.i.us.2.i
  %i.dw = getelementptr [104 x i8], ptr %i.dv, i64 %i.du ; 3 uses
  %i.dx = load i32, ptr %i.fo, align 8, !tbaa !75
  %.not.i.us.2.i = icmp eq i32 %i.dx, 0
  br i1 %.not.i.us.2.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dy = getelementptr i8, ptr %i.dw, i64 -176
  store i32 %i.fk, ptr %i.dy, align 8, !tbaa !79
  br label %.preheader.split.us.3.thread.i

bb.af:                                            ; preds = %bb.ad
  %i.dz = getelementptr i8, ptr %i.dw, i64 -112
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !72
  %.not12.i.us.2.i = icmp eq i32 %i.ea, 0
  %i.eb = select i1 %.not12.i.us.2.i, i64 -176, i64 -128
  br label %.preheader.split.us.3.thread.i

.preheader.split.us.3.i:                          ; preds = %bb.ac, %.preheader.split.us.2.i
  %i.ec = load i32, ptr %i.fb, align 8, !tbaa !97
  %.not.us.3.i = icmp eq i32 %i.ec, 0
  br i1 %.not.us.3.i, label %PickBestCandidate.exit, label %bb.ag

.preheader.split.us.3.thread.i:                   ; preds = %bb.af, %bb.ae
  %.sink14.i.us.2.i = phi i64 [ %i.eb, %bb.af ], [ -128, %bb.ae ]
  %i.ed = getelementptr i8, ptr %i.dw, i64 %.sink14.i.us.2.i
  store i32 %i.fk, ptr %i.ed, align 8, !tbaa !83
  %i.ee = getelementptr inbounds nuw i8, ptr %5, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fp, ptr noundef nonnull align 16 dereferenceable(16) %i.ee, i64 16, i1 false), !tbaa.struct !80
  %i.ef = load i32, ptr %i.fb, align 8, !tbaa !97
  %.not.us.355.i = icmp eq i32 %i.ef, 0
  br i1 %.not.us.355.i, label %PickBestCandidate.exit, label %.thread56.i

bb.ag:                                            ; preds = %.preheader.split.us.3.i
  br i1 %i.ff, label %bb.ah, label %.thread56.i

.thread56.i:                                      ; preds = %bb.ag, %.preheader.split.us.3.thread.i
  call void @WebPMemoryWriterClear(ptr noundef nonnull %i.fa) #14
  store i32 0, ptr %i.fb, align 8, !tbaa !97
  br label %PickBestCandidate.exit

bb.ah:                                            ; preds = %bb.ag
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fg, ptr noundef nonnull align 8 dereferenceable(48) %i.eg, i64 48, i1 false), !tbaa.struct !130
  %.val.us.3.i = load ptr, ptr %i.fa, align 8, !tbaa !90
  %.val45.us.3.i = load i64, ptr %i.fd, align 16, !tbaa !91
  store ptr %.val.us.3.i, ptr %i.fg, align 8, !tbaa !55
  store i64 %.val45.us.3.i, ptr %i.fh, align 8, !tbaa !77
  %i.eh = load i64, ptr %i.fl, align 8, !tbaa !59
  %.val.i.us.3.i = load ptr, ptr %i.fm, align 8, !tbaa !40
  %.val13.i.us.3.i = load i64, ptr %i.fn, align 8, !tbaa !69
  %i.ei = getelementptr [104 x i8], ptr %.val.i.us.3.i, i64 %.val13.i.us.3.i
  %i.ej = getelementptr [104 x i8], ptr %i.ei, i64 %i.eh ; 3 uses
  %i.ek = load i32, ptr %i.fo, align 8, !tbaa !75
  %.not.i.us.3.i = icmp eq i32 %i.ek, 0
  br i1 %.not.i.us.3.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.el = getelementptr i8, ptr %i.ej, i64 -176
  store i32 %i.fk, ptr %i.el, align 8, !tbaa !79
  br label %SetPreviousDisposeMethod.exit.us.3.i

bb.aj:                                            ; preds = %bb.ah
  %i.em = getelementptr i8, ptr %i.ej, i64 -112
  %i.en = load i32, ptr %i.em, align 8, !tbaa !72
  %.not12.i.us.3.i = icmp eq i32 %i.en, 0
  %i.eo = select i1 %.not12.i.us.3.i, i64 -176, i64 -128
  br label %SetPreviousDisposeMethod.exit.us.3.i

SetPreviousDisposeMethod.exit.us.3.i:             ; preds = %bb.aj, %bb.ai
  %.sink14.i.us.3.i = phi i64 [ %i.eo, %bb.aj ], [ -128, %bb.ai ]
  %i.ep = getelementptr i8, ptr %i.ej, i64 %.sink14.i.us.3.i
  store i32 %i.fk, ptr %i.ep, align 8, !tbaa !83
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fp, ptr noundef nonnull align 8 dereferenceable(16) %i.eq, i64 16, i1 false), !tbaa.struct !80
  br label %PickBestCandidate.exit

bb.ak:                                            ; preds = %bb.r
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.es = load i64, ptr %i.er, align 16, !tbaa !131 ; 2 uses
  %i.et = icmp ult i64 %i.es, %.2.i
  %spec.select.1.i = select i1 %i.et, i32 1, i32 %.240.i
  %spec.select44.1.i = call i64 @llvm.umin.i64(i64 %i.es, i64 %.2.i)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.r
  %.240.1.i = phi i32 [ %spec.select.1.i, %bb.ak ], [ %.240.i, %bb.r ] ; 2 uses
  %.2.1.i = phi i64 [ %spec.select44.1.i, %bb.ak ], [ %.2.i, %bb.r ] ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %5, i64 304 ; 5 uses
  %i.ew = load i32, ptr %i.ev, align 16, !tbaa !97
  %.not43.2.i = icmp eq i32 %i.ew, 0
  br i1 %.not43.2.i, label %.preheader.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ex = getelementptr inbounds nuw i8, ptr %5, i64 216
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !131 ; 2 uses
  %i.ez = icmp ult i64 %i.ey, %.2.1.i
  %spec.select.2.i = select i1 %i.ez, i32 2, i32 %.240.1.i
  %spec.select44.2.i = call i64 @llvm.umin.i64(i64 %i.ey, i64 %.2.1.i)
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.am, %bb.al
  %.240.2.i = phi i32 [ %spec.select.2.i, %bb.am ], [ %.240.1.i, %bb.al ]
  %.2.2.i = phi i64 [ %spec.select44.2.i, %bb.am ], [ %.2.1.i, %bb.al ]
  %i.fa = getelementptr inbounds nuw i8, ptr %5, i64 312 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %5, i64 408 ; 7 uses
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !97
  %.not43.3.i = icmp ne i32 %i.fc, 0
  %i.fd = getelementptr inbounds nuw i8, ptr %5, i64 320 ; 3 uses
  %i.fe = load i64, ptr %i.fd, align 16
  %10 = icmp ult i64 %i.fe, %.2.2.i
  %i.ff = select i1 %.not43.3.i, i1 %10, i1 false ; 3 uses
  %.240.3.i = select i1 %i.ff, i32 3, i32 %.240.2.i ; 7 uses
  %.idx.i = select i1 %.not64, i64 0, i64 48
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.i ; 17 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 8 uses
  %i.fi = and i32 %.240.3.i, -3
  %i.fj = icmp ne i32 %i.fi, 0
  %i.fk = zext i1 %i.fj to i32                    ; 8 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 4 uses
  %i.fm = getelementptr i8, ptr %0, i64 1088      ; 4 uses
  %i.fn = getelementptr i8, ptr %0, i64 1104      ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 8 uses
  br i1 %.not64, label %.preheader.split.us.preheader.i, label %.preheader.split.preheader.i

bb.an:                                            ; preds = %.preheader.split.preheader.i
  %i.fq = icmp eq i32 %.240.3.i, 0
  br i1 %i.fq, label %.preheader.split.1.thread.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @WebPMemoryWriterClear(ptr noundef nonnull %5) #14
  store i32 0, ptr %i.cj, align 16, !tbaa !97
  %.pre = load i32, ptr %i.co, align 8, !tbaa !97
  br label %.preheader.split.1.i

.preheader.split.1.i:                             ; preds = %bb.ao, %.preheader.split.preheader.i
  %i.fr = phi i32 [ %.pre, %bb.ao ], [ %i.cp, %.preheader.split.preheader.i ]
  %.not.1.i = icmp eq i32 %i.fr, 0
  br i1 %.not.1.i, label %.preheader.split.2.i, label %bb.ap

.preheader.split.1.thread.i:                      ; preds = %bb.an
  %i.fs = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fg, ptr noundef nonnull align 16 dereferenceable(48) %i.fs, i64 48, i1 false), !tbaa.struct !130
  %.val.i = load ptr, ptr %5, align 16, !tbaa !90
  store ptr %.val.i, ptr %i.fg, align 8, !tbaa !55
  store i64 %i.cm, ptr %i.fh, align 8, !tbaa !77
  %i.ft = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fp, ptr noundef nonnull align 16 dereferenceable(16) %i.ft, i64 16, i1 false), !tbaa.struct !80
  br i1 %.not43.1.i, label %.preheader.split.2.i, label %.thread58.i

bb.ap:                                            ; preds = %.preheader.split.1.i
  %i.fu = icmp eq i32 %.240.3.i, 1
  br i1 %i.fu, label %bb.aq, label %.thread58.i

.thread58.i:                                      ; preds = %bb.ap, %.preheader.split.1.thread.i
  call void @WebPMemoryWriterClear(ptr noundef nonnull %i.cn) #14
  store i32 0, ptr %i.co, align 8, !tbaa !97
  br label %.preheader.split.2.i

bb.aq:                                            ; preds = %bb.ap
  %i.fv = getelementptr inbounds nuw i8, ptr %5, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fg, ptr noundef nonnull align 8 dereferenceable(48) %i.fv, i64 48, i1 false), !tbaa.struct !130
  %.val.1.i = load ptr, ptr %i.cn, align 8, !tbaa !90
  %i.fw = getelementptr inbounds nuw i8, ptr %5, i64 112
  %.val45.1.i = load i64, ptr %i.fw, align 16, !tbaa !91
  store ptr %.val.1.i, ptr %i.fg, align 8, !tbaa !55
  store i64 %.val45.1.i, ptr %i.fh, align 8, !tbaa !77
  %i.fx = getelementptr inbounds nuw i8, ptr %5, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fp, ptr noundef nonnull align 8 dereferenceable(16) %i.fx, i64 16, i1 false), !tbaa.struct !80
  br label %.preheader.split.2.i

.preheader.split.2.i:                             ; preds = %bb.aq, %.thread58.i, %.preheader.split.1.thread.i, %.preheader.split.1.i
  %i.fy = load i32, ptr %i.ev, align 16, !tbaa !97
  %.not.2.i = icmp eq i32 %i.fy, 0
  br i1 %.not.2.i, label %.preheader.split.3.i, label %bb.ar

bb.ar:                                            ; preds = %.preheader.split.2.i
  %i.fz = icmp eq i32 %.240.3.i, 2
  br i1 %i.fz, label %.preheader.split.3.thread.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @WebPMemoryWriterClear(ptr noundef nonnull %i.eu) #14
  store i32 0, ptr %i.ev, align 16, !tbaa !97
  br label %.preheader.split.3.i

.preheader.split.3.i:                             ; preds = %bb.as, %.preheader.split.2.i
  %i.ga = load i32, ptr %i.fb, align 8, !tbaa !97
  %.not.3.i = icmp eq i32 %i.ga, 0
  br i1 %.not.3.i, label %PickBestCandidate.exit, label %bb.at

.preheader.split.3.thread.i:                      ; preds = %bb.ar
  %i.gb = getelementptr inbounds nuw i8, ptr %5, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fg, ptr noundef nonnull align 16 dereferenceable(48) %i.gb, i64 48, i1 false), !tbaa.struct !130
  %.val.2.i = load ptr, ptr %i.eu, align 16, !tbaa !90
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 216
  %.val45.2.i = load i64, ptr %i.gc, align 8, !tbaa !91
  store ptr %.val.2.i, ptr %i.fg, align 8, !tbaa !55
  store i64 %.val45.2.i, ptr %i.fh, align 8, !tbaa !77
  %i.gd = getelementptr inbounds nuw i8, ptr %5, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fp, ptr noundef nonnull align 16 dereferenceable(16) %i.gd, i64 16, i1 false), !tbaa.struct !80
  %i.ge = load i32, ptr %i.fb, align 8, !tbaa !97
  %.not.359.i = icmp eq i32 %i.ge, 0
  br i1 %.not.359.i, label %PickBestCandidate.exit, label %.thread60.i

bb.at:                                            ; preds = %.preheader.split.3.i
  br i1 %i.ff, label %bb.au, label %.thread60.i

.thread60.i:                                      ; preds = %bb.at, %.preheader.split.3.thread.i
  call void @WebPMemoryWriterClear(ptr noundef nonnull %i.fa) #14
  store i32 0, ptr %i.fb, align 8, !tbaa !97
  br label %PickBestCandidate.exit

bb.au:                                            ; preds = %bb.at
  %i.gf = getelementptr inbounds nuw i8, ptr %5, i64 344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fg, ptr noundef nonnull align 8 dereferenceable(48) %i.gf, i64 48, i1 false), !tbaa.struct !130
  %.val.3.i = load ptr, ptr %i.fa, align 8, !tbaa !90
  %.val45.3.i = load i64, ptr %i.fd, align 16, !tbaa !91
  store ptr %.val.3.i, ptr %i.fg, align 8, !tbaa !55
  store i64 %.val45.3.i, ptr %i.fh, align 8, !tbaa !77
  %i.gg = getelementptr inbounds nuw i8, ptr %5, i64 392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fp, ptr noundef nonnull align 8 dereferenceable(16) %i.gg, i64 16, i1 false), !tbaa.struct !80
  br label %PickBestCandidate.exit

bb.av:                                            ; preds = %DisposeFrameRectangle.exit, %bb.e, %bb.q, %bb.o
  %.4 = phi i32 [ %i.ch, %bb.o ], [ %i.ci, %bb.q ], [ 4, %bb.e ], [ 4, %DisposeFrameRectangle.exit ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.gi = load i32, ptr %i.gh, align 16, !tbaa !97
  %.not78 = icmp eq i32 %i.gi, 0
  br i1 %.not78, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @WebPMemoryWriterClear(ptr noundef nonnull %5) #14
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %i.gj = getelementptr inbounds nuw i8, ptr %5, i64 200
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !97
  %.not78.1 = icmp eq i32 %i.gk, 0
  br i1 %.not78.1, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gl = getelementptr inbounds nuw i8, ptr %5, i64 104
  call void @WebPMemoryWriterClear(ptr noundef nonnull %i.gl) #14
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.gm = getelementptr inbounds nuw i8, ptr %5, i64 304
  %i.gn = load i32, ptr %i.gm, align 16, !tbaa !97
  %.not78.2 = icmp eq i32 %i.gn, 0
  br i1 %.not78.2, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.go = getelementptr inbounds nuw i8, ptr %5, i64 208
  call void @WebPMemoryWriterClear(ptr noundef nonnull %i.go) #14
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.gp = getelementptr inbounds nuw i8, ptr %5, i64 408
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !97
  %.not78.3 = icmp eq i32 %i.gq, 0
  br i1 %.not78.3, label %PickBestCandidate.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gr = getelementptr inbounds nuw i8, ptr %5, i64 312
  call void @WebPMemoryWriterClear(ptr noundef nonnull %i.gr) #14
  br label %PickBestCandidate.exit

PickBestCandidate.exit:                           ; preds = %bb.bb, %bb.bc, %bb.au, %.thread60.i, %.preheader.split.3.thread.i, %.preheader.split.3.i, %SetPreviousDisposeMethod.exit.us.3.i, %.thread56.i, %.preheader.split.us.3.thread.i, %.preheader.split.us.3.i, %IsEmptyRect.exit.thread
  %.5 = phi i32 [ 0, %IsEmptyRect.exit.thread ], [ 0, %bb.au ], [ 0, %.preheader.split.us.3.i ], [ 0, %.preheader.split.us.3.thread.i ], [ 0, %.thread56.i ], [ 0, %SetPreviousDisposeMethod.exit.us.3.i ], [ 0, %.preheader.split.3.i ], [ 0, %.preheader.split.3.thread.i ], [ 0, %.thread60.i ], [ %.4, %bb.bc ], [ %.4, %bb.bb ]
  call void @WebPPictureFree(ptr noundef nonnull %i.q) #14
  call void @WebPPictureFree(ptr noundef nonnull %i.s) #14
  call void @WebPPictureFree(ptr noundef nonnull %i.v) #14
  call void @WebPPictureFree(ptr noundef nonnull %i.x) #14
  br label %SubFrameParamsInit.exit.thread

SubFrameParamsInit.exit.thread:                   ; preds = %bb.d, %bb.c, %SubFrameParamsInit.exit, %SubFrameParamsInit.exit90, %PickBestCandidate.exit
  %.058 = phi i32 [ %.5, %PickBestCandidate.exit ], [ 4, %SubFrameParamsInit.exit ], [ 4, %SubFrameParamsInit.exit90 ], [ 4, %bb.c ], [ 4, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret i32 %.058
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @GetSubRects(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef nonnull %1, i32 noundef range(i32 0, 2) %2, i32 noundef %3, float noundef %4, ptr noundef nonnull initializes((8, 24)) %5) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 11 uses
  store i32 0, ptr %i.a, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 8 uses
  store i32 0, ptr %i.b, align 4, !tbaa !133
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !51   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store i32 %i.d, ptr %i.e, align 8, !tbaa !134
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !52   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 6 uses
  store i32 %i.g, ptr %i.h, align 4, !tbaa !135
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !93
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.l = icmp eq i32 %2, 0
  %i.m = icmp ne i32 %3, 0
  %or.cond.i = or i1 %i.l, %i.m                   ; 2 uses
  br i1 %or.cond.i, label %bb.b, label %MinimizeChangeRectangle.exit

bb.b:                                             ; preds = %bb.a
  %i.n = fpext float %4 to double
  %i.o = fdiv double %i.n, 1.000000e+02
  %i.p = tail call double @pow(double noundef %i.o, double noundef 5.000000e-01) #14, !tbaa !13 ; 0 uses
  %i.q = load i32, ptr %i.e, align 8, !tbaa !46   ; 4 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph.i, label %.loopexit121.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.s = load i32, ptr %i.a, align 8, !tbaa !44   ; 4 uses
  %i.t = load i32, ptr %i.h, align 4, !tbaa !47   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !48
  %i.aa = load i32, ptr %i.v, align 8, !tbaa !49  ; 2 uses
  %i.ab = load i32, ptr %i.b, align 4, !tbaa !45  ; 2 uses
  %i.ac = mul nsw i32 %i.ab, %i.aa
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !48
  %i.ae = load i32, ptr %i.x, align 8, !tbaa !49  ; 2 uses
  %i.af = mul nsw i32 %i.ae, %i.ab
  %i.ag = sext i32 %i.ae to i64
  %i.ah = sext i32 %i.aa to i64
  %i.ai = sext i32 %i.s to i64
  %i.aj = sext i32 %i.ac to i64
  %i.ak = sext i32 %i.af to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.z, i64 %i.aj
  %invariant.gep272 = getelementptr [4 x i8], ptr %i.ad, i64 %i.ak
  br label %.lr.ph.i84.us

.lr.ph.i84.us:                                    ; preds = %.loopexit159.us, %.lr.ph.i.split.us
  %i.al = phi i32 [ %i.at, %.loopexit159.us ], [ %i.s, %.lr.ph.i.split.us ] ; 2 uses
  %.pr.i125.us = phi i32 [ %i.as, %.loopexit159.us ], [ %i.q, %.lr.ph.i.split.us ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit159.us ], [ %i.ai, %.lr.ph.i.split.us ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep273 = getelementptr [4 x i8], ptr %invariant.gep272, i64 %indvars.iv
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i84.us
  %.in.i85.us = phi i32 [ %i.t, %.lr.ph.i84.us ], [ %i.ao, %bb.d ] ; 2 uses
  %.0811.i86.us = phi ptr [ %gep273, %.lr.ph.i84.us ], [ %i.ap, %bb.d ] ; 2 uses
  %.0910.i87.us = phi ptr [ %gep, %.lr.ph.i84.us ], [ %i.aq, %bb.d ] ; 2 uses
  %i.am = load i32, ptr %.0811.i86.us, align 4, !tbaa !13
  %i.an = load i32, ptr %.0910.i87.us, align 4, !tbaa !13
  %.not.i88.us = icmp eq i32 %i.am, %i.an
  br i1 %.not.i88.us, label %bb.d, label %.loopexit121.i

bb.d:                                             ; preds = %bb.c
  %i.ao = add nsw i32 %.in.i85.us, -1
  %i.ap = getelementptr inbounds [4 x i8], ptr %.0811.i86.us, i64 %i.ag
  %i.aq = getelementptr inbounds [4 x i8], ptr %.0910.i87.us, i64 %i.ah
  %i.ar = icmp sgt i32 %.in.i85.us, 1
  br i1 %i.ar, label %bb.c, label %.loopexit159.us, !llvm.loop !5

.loopexit159.us:                                  ; preds = %bb.d
  %i.as = add nsw i32 %.pr.i125.us, -1            ; 3 uses
  store i32 %i.as, ptr %i.e, align 8, !tbaa !46
  %i.at = add nsw i32 %i.al, 1                    ; 2 uses
  store i32 %i.at, ptr %i.a, align 8, !tbaa !44
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.au = add i32 %i.al, %.pr.i125.us
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %indvars.iv.next, %i.av
  br i1 %i.aw, label %.lr.ph.i84.us, label %.loopexit121.i, !llvm.loop !1

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.ax = add i32 %i.q, %i.s                      ; 2 uses
  %i.ay = add i32 %i.s, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 %i.ay) ; 2 uses
  %i.az = sub i32 %i.ax, %smax                    ; 2 uses
  store i32 %i.az, ptr %i.e, align 8, !tbaa !46
  store i32 %smax, ptr %i.a, align 8, !tbaa !44
  br label %.loopexit121.i

.loopexit121.i:                                   ; preds = %.loopexit159.us, %bb.c, %.lr.ph.i.split, %bb.b
  %.promoted171 = phi i32 [ %.pr.i125.us, %bb.c ], [ %i.q, %bb.b ], [ %i.az, %.lr.ph.i.split ], [ %i.as, %.loopexit159.us ] ; 5 uses
  %i.ba = icmp eq i32 %.promoted171, 0
  br i1 %i.ba, label %MinimizeChangeRectangle.exit.thread, label %bb.e

bb.e:                                             ; preds = %.loopexit121.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %.not105.not132.i = icmp sgt i32 %.promoted171, 0
  %.pre = load i32, ptr %i.h, align 4, !tbaa !47  ; 5 uses
  br i1 %.not105.not132.i, label %.lr.ph134.i, label %.thread112.thread.i

.lr.ph134.i:                                      ; preds = %bb.e
  %i.bc = load i32, ptr %i.a, align 8, !tbaa !44  ; 4 uses
  %i.bd = add i32 %i.bc, %.promoted171            ; 2 uses
  %i.be = icmp sgt i32 %.pre, 0
  br i1 %i.be, label %.lr.ph134.i.split.us, label %.lr.ph134.i.split

.lr.ph134.i.split.us:                             ; preds = %.lr.ph134.i
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 80
end_hunk_0
