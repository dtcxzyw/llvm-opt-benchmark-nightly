Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/x11_window?download=true
inline.NumInlined: 83
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_glfwPlatformCreateWindow:bb.a
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !259
  %.not91.i = icmp eq i32 %i.bt, 0
  br i1 %.not91.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, i8 0, i64 32, i1 false)
  store i64 2, ptr %9, align 8, !tbaa !132
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134272), align 8, !tbaa !89
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.bx = load i64, ptr %i.bm, align 8, !tbaa !112
  %i.by = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134048), align 8, !tbaa !133 ; 2 uses
  %i.bz = call i32 %i.bv(ptr noundef %i.bw, i64 noundef %i.bx, i64 noundef %i.by, i64 noundef %i.by, i32 noundef 32, i32 noundef 0, ptr noundef nonnull %9, i32 noundef 5) #21, !inline_history !244 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ca = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133928), align 8, !tbaa !134 ; 2 uses
  %.not92.i = icmp eq i64 %i.ca, 0
  br i1 %.not92.i, label %bb.x, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !135
  %.not93.i = icmp eq ptr %i.cc, null
  br i1 %.not93.i, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !260
  %i.cf = icmp eq i32 %i.ce, 0
  %i.cg = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133936), align 8 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 0
  %or.cond5.not.i = select i1 %i.cf, i1 true, i1 %i.ch ; 2 uses
  br i1 %or.cond5.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i64 %i.cg, ptr %i.f, align 16, !tbaa !66
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0.i = phi i32 [ 1, %bb.r ], [ 0, %bb.q ]      ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !261
  %.not94.i = icmp eq i32 %i.cj, 0
  br i1 %.not94.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ck = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133952), align 8, !tbaa !136 ; 2 uses
  %i.cl = icmp ne i64 %i.ck, 0
  %i.cm = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133960), align 8 ; 2 uses
  %i.cn = icmp ne i64 %i.cm, 0
  %or.cond.i = select i1 %i.cl, i1 %i.cn, i1 false
  br i1 %or.cond.i, label %.thread.i, label %bb.u

.thread.i:                                        ; preds = %bb.t
  %i.co = zext nneg i32 %.0.i to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.co ; 2 uses
  store i64 %i.ck, ptr %i.cp, align 8, !tbaa !66
  %i.cq = or disjoint i32 %.0.i, 2
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 %i.cm, ptr %i.cr, align 8, !tbaa !66
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 880
  store i32 1, ptr %i.cs, align 8, !tbaa !137
  br label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  br i1 %or.cond5.not.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread.i
  %.1114.i = phi i32 [ %i.cq, %.thread.i ], [ 1, %bb.u ]
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134272), align 8, !tbaa !89
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.cv = load i64, ptr %i.bm, align 8, !tbaa !112
  %i.cw = call i32 %i.ct(ptr noundef %i.cu, i64 noundef %i.cv, i64 noundef %i.ca, i64 noundef 4, i32 noundef 32, i32 noundef 0, ptr noundef nonnull %i.f, i32 noundef %.1114.i) #21, !inline_history !242 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.p, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #21
  %i.cx = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133864), align 8, !tbaa !138
  store i64 %i.cx, ptr %i.g, align 16, !tbaa !66
  %i.cy = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cz = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133904), align 8, !tbaa !139
  store i64 %i.cz, ptr %i.cy, align 8, !tbaa !66
  %i.da = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134848), align 8, !tbaa !262
  %i.db = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.dc = load i64, ptr %i.bm, align 8, !tbaa !112
  %i.dd = call i32 %i.da(ptr noundef %i.db, i64 noundef %i.dc, ptr noundef nonnull %i.g, i32 noundef 2) #21, !inline_history !242 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #21
  %i.de = call i32 @getpid() #21
  %i.df = sext i32 %i.de to i64
  store i64 %i.df, ptr %i.h, align 8, !tbaa !66
  %i.dg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134272), align 8, !tbaa !89
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.di = load i64, ptr %i.bm, align 8, !tbaa !112
  %i.dj = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133896), align 8, !tbaa !263
  %i.dk = call i32 %i.dg(ptr noundef %i.dh, i64 noundef %i.di, i64 noundef %i.dj, i64 noundef 6, i32 noundef 32, i32 noundef 0, ptr noundef nonnull %i.h, i32 noundef 1) #21, !inline_history !242 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  %i.dl = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133912), align 8, !tbaa !264 ; 2 uses
  %i.dm = icmp ne i64 %i.dl, 0
  %i.dn = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133920), align 8 ; 2 uses
  %i.do = icmp ne i64 %i.dn, 0
  %or.cond3.i = select i1 %i.dm, i1 %i.do, i1 false
  br i1 %or.cond3.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #21
  store i64 %i.dn, ptr %i.i, align 8, !tbaa !66
  %i.dp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134272), align 8, !tbaa !89
  %i.dq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.dr = load i64, ptr %i.bm, align 8, !tbaa !112
  %i.ds = call i32 %i.dp(ptr noundef %i.dq, i64 noundef %i.dr, i64 noundef %i.dl, i64 noundef 4, i32 noundef 32, i32 noundef 0, ptr noundef nonnull %i.i, i32 noundef 1) #21, !inline_history !242 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #21
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134264), align 8, !tbaa !265
  %i.du = call ptr %i.dt() #21, !inline_history !242 ; 5 uses
  %.not96.not.i = icmp eq ptr %i.du, null
  br i1 %.not96.not.i, label %.thread115.i, label %bb.aa

.thread115.i:                                     ; preds = %bb.z
  call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65541, ptr noundef nonnull @.str.35) #21
  br label %createNativeWindow.exit.thread

bb.aa:                                            ; preds = %bb.z
  store i64 2, ptr %i.du, align 8, !tbaa !267
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store i32 1, ptr %i.dv, align 4, !tbaa !268
  %i.dw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134832), align 8, !tbaa !269
  %i.dx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.dy = load i64, ptr %i.bm, align 8, !tbaa !112
  %i.dz = call i32 %i.dw(ptr noundef %i.dx, i64 noundef %i.dy, ptr noundef nonnull %i.du) #21, !inline_history !242 ; 0 uses
  %i.ea = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134456), align 8, !tbaa !92
  %i.eb = call i32 %i.ea(ptr noundef nonnull %i.du) #21, !inline_history !242 ; 0 uses
  %i.ec = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134256), align 8, !tbaa !140
  %i.ed = call ptr %i.ec() #21, !inline_history !245 ; 19 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !135
  %.not.i108.i = icmp eq ptr %i.ef, null
  br i1 %.not.i108.i, label %bb.ab, label %updateNormalHints.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !141
  %.not36.i.i = icmp eq i32 %i.eh, 0
  br i1 %.not36.i.i, label %.sink.split.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !142 ; 2 uses
  %.not37.i.i = icmp eq i32 %i.ej, -1
  br i1 %.not37.i.i, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !143 ; 2 uses
  %.not38.i.i = icmp eq i32 %i.el, -1
  br i1 %.not38.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.em = load i64, ptr %i.ed, align 8, !tbaa !145
  %i.en = or i64 %i.em, 16
  store i64 %i.en, ptr %i.ed, align 8, !tbaa !145
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  store i32 %i.ej, ptr %i.eo, align 8, !tbaa !146
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ed, i64 28
  store i32 %i.el, ptr %i.ep, align 4, !tbaa !147
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !148 ; 2 uses
  %.not39.i.i = icmp eq i32 %i.er, -1
  br i1 %.not39.i.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.et = load i32, ptr %i.es, align 4, !tbaa !149 ; 2 uses
  %.not40.i.i = icmp eq i32 %i.et, -1
  br i1 %.not40.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eu = load i64, ptr %i.ed, align 8, !tbaa !145
  %i.ev = or i64 %i.eu, 32
  store i64 %i.ev, ptr %i.ed, align 8, !tbaa !145
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  store i32 %i.er, ptr %i.ew, align 8, !tbaa !150
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ed, i64 36
  store i32 %i.et, ptr %i.ex, align 4, !tbaa !151
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !152 ; 2 uses
  %.not41.i.i = icmp eq i32 %i.ez, -1
  br i1 %.not41.i.i, label %updateNormalHints.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !153 ; 2 uses
  %.not42.i.i = icmp eq i32 %i.fb, -1
  %11 = insertelement <2 x i32> poison, i32 %i.ez, i64 0
  %12 = insertelement <2 x i32> %11, i32 %i.fb, i64 1
  br i1 %.not42.i.i, label %updateNormalHints.exit.i, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.aj, %bb.ab
  %.sink61.i.i = phi i64 [ 128, %bb.aj ], [ 48, %bb.ab ]
  %.sink58.i.i = phi i64 [ 56, %bb.aj ], [ 32, %bb.ab ]
  %.sink55.i.i = phi i64 [ 48, %bb.aj ], [ 24, %bb.ab ]
  %.sink52.i.i = phi i64 [ 60, %bb.aj ], [ 36, %bb.ab ]
  %.sink49.i.i = phi i64 [ 52, %bb.aj ], [ 28, %bb.ab ]
  %i.fc = phi <2 x i32> [ %12, %bb.aj ], [ %i.an, %bb.ab ] ; 2 uses
  %i.fd = load i64, ptr %i.ed, align 8, !tbaa !145
  %i.fe = or i64 %i.fd, %.sink61.i.i
  store i64 %i.fe, ptr %i.ed, align 8, !tbaa !145
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.sink58.i.i
  %i.fg = extractelement <2 x i32> %i.fc, i64 0   ; 2 uses
  store i32 %i.fg, ptr %i.ff, align 8, !tbaa !87
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.sink55.i.i
  store i32 %i.fg, ptr %i.fh, align 8, !tbaa !87
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.sink52.i.i
  %i.fj = extractelement <2 x i32> %i.fc, i64 1   ; 2 uses
  store i32 %i.fj, ptr %i.fi, align 4, !tbaa !87
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.sink49.i.i
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !87
  br label %updateNormalHints.exit.i

updateNormalHints.exit.i:                         ; preds = %.sink.split.i.i, %bb.aj, %bb.ai, %bb.aa
  %i.fl = load i64, ptr %i.ed, align 8, !tbaa !145
  %i.fm = or i64 %i.fl, 512
  store i64 %i.fm, ptr %i.ed, align 8, !tbaa !145
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ed, i64 72
  store i32 10, ptr %i.fn, align 8, !tbaa !154
  %i.fo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134840), align 8, !tbaa !155
  %i.fp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.fq = load i64, ptr %i.bm, align 8, !tbaa !112
  call void %i.fo(ptr noundef %i.fp, i64 noundef %i.fq, ptr noundef nonnull %i.ed) #21, !inline_history !245
  %i.fr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134456), align 8, !tbaa !92
  %i.fs = call i32 %i.fr(ptr noundef nonnull %i.ed) #21, !inline_history !245 ; 0 uses
  %i.ft = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134248), align 8, !tbaa !270
  %i.fu = call ptr %i.ft() #21, !inline_history !242 ; 8 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 2 uses
  %char0.i = load i8, ptr %i.fw, align 8
  %.not97.i = icmp eq i8 %char0.i, 0
  br i1 %.not97.i, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %updateNormalHints.exit.i
  %char098.i = load i8, ptr %i.fv, align 8
  %.not99.i = icmp eq i8 %char098.i, 0
  br i1 %.not99.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store ptr %i.fw, ptr %i.fu, align 8, !tbaa !272
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store ptr %i.fv, ptr %i.fx, align 8, !tbaa !273
  br label %bb.av

bb.am:                                            ; preds = %bb.ak, %updateNormalHints.exit.i
  %i.fy = call ptr @getenv(ptr noundef nonnull @.str.36) #21 ; 3 uses
  %.not100.i = icmp eq ptr %i.fy, null
  br i1 %.not100.i, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %char0101.i = load i8, ptr %i.fy, align 1
  %.not102.i = icmp eq i8 %char0101.i, 0
  br i1 %.not102.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store ptr %i.fy, ptr %i.fu, align 8, !tbaa !272
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !274
  br label %bb.as

bb.ap:                                            ; preds = %bb.an, %bb.am
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !274 ; 4 uses
  %char0103.i = load i8, ptr %i.ga, align 1
  %.not104.i = icmp eq i8 %char0103.i, 0
  br i1 %.not104.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store ptr %i.ga, ptr %i.fu, align 8, !tbaa !272
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  store ptr @.str.37, ptr %i.fu, align 8, !tbaa !272
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ao
  %i.gb = phi ptr [ %i.ga, %bb.aq ], [ %i.ga, %bb.ar ], [ %.pre.i, %bb.ao ] ; 2 uses
  %char0105.i = load i8, ptr %i.gb, align 1
  %.not106.i = icmp eq i8 %char0105.i, 0
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 2 uses
  br i1 %.not106.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  store ptr %i.gb, ptr %i.gc, align 8, !tbaa !273
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  store ptr @.str.38, ptr %i.gc, align 8, !tbaa !273
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.al
  %i.gd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134768), align 8, !tbaa !275
  %i.ge = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.gf = load i64, ptr %i.bm, align 8, !tbaa !112
  %i.gg = call i32 %i.gd(ptr noundef %i.ge, i64 noundef %i.gf, ptr noundef nonnull %i.fu) #21, !inline_history !242 ; 0 uses
  %i.gh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134456), align 8, !tbaa !92
  %i.gi = call i32 %i.gh(ptr noundef nonnull %i.fu) #21, !inline_history !242 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #21
  store i64 5, ptr %i.j, align 8, !tbaa !66
  %i.gj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134272), align 8, !tbaa !89
  %i.gk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.gl = load i64, ptr %i.bm, align 8, !tbaa !112
  %i.gm = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134056), align 8, !tbaa !276
  %i.gn = call i32 %i.gj(ptr noundef %i.gk, i64 noundef %i.gl, i64 noundef %i.gm, i64 noundef 4, i32 noundef 32, i32 noundef 0, ptr noundef nonnull %i.j, i32 noundef 1) #21, !inline_history !242 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #21
  %i.go = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130816), align 8, !tbaa !100 ; 2 uses
  %.not107.i = icmp eq ptr %i.go, null
  br i1 %.not107.i, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.gp = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @inputContextDestroyCallback, ptr %i.gp, align 8, !tbaa !97
  store ptr %0, ptr %7, align 8, !tbaa !98
  %i.gq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134344), align 8, !tbaa !99
  %i.gr = load i64, ptr %i.bm, align 8, !tbaa !112 ; 2 uses
  %i.gs = call ptr (ptr, ...) %i.gq(ptr noundef nonnull %i.go, ptr noundef nonnull @.str, i64 noundef 1032, ptr noundef nonnull @.str.1, i64 noundef %i.gr, ptr noundef nonnull @.str.2, i64 noundef %i.gr, ptr noundef nonnull @.str.3, ptr noundef nonnull %7, ptr noundef null) #21, !inline_history !246 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  store ptr %i.gs, ptr %i.gt, align 8, !tbaa !113
  %.not.i109.i = icmp eq ptr %i.gs, null
  br i1 %.not.i109.i, label %_glfwCreateInputContextX11.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.gu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134568), align 8, !tbaa !114
  %i.gv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.gw = load i64, ptr %i.bm, align 8, !tbaa !112
  %i.gx = call i32 %i.gu(ptr noundef %i.gv, i64 noundef %i.gw, ptr noundef nonnull %8) #21, !inline_history !246 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  store i64 0, ptr %i.e, align 8, !tbaa !66
  %i.gy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134504), align 8, !tbaa !115
  %i.gz = load ptr, ptr %i.gt, align 8, !tbaa !113
  %i.ha = call ptr (ptr, ...) %i.gy(ptr noundef %i.gz, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.e, ptr noundef null) #21, !inline_history !246
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.hc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134752), align 8, !tbaa !116
  %i.hd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.he = load i64, ptr %i.bm, align 8, !tbaa !112
  %i.hf = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !118
  %i.hh = load i64, ptr %i.e, align 8, !tbaa !66
  %i.hi = or i64 %i.hh, %i.hg
  %i.hj = call i32 %i.hc(ptr noundef %i.hd, i64 noundef %i.he, i64 noundef %i.hi) #21, !inline_history !246 ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %_glfwCreateInputContextX11.exit.i

_glfwCreateInputContextX11.exit.i:                ; preds = %bb.az, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.ba

createNativeWindow.exit.thread:                   ; preds = %.thread115.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.bl

bb.ba:                                            ; preds = %_glfwCreateInputContextX11.exit.i, %bb.av
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !274
  call void @_glfwPlatformSetWindowTitle(ptr noundef nonnull %0, ptr noundef %i.hl)
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 900
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.ho = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134872), align 8, !tbaa !156
  %i.hp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.hq = load i64, ptr %i.bm, align 8, !tbaa !112
  %i.hr = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130776), align 8, !tbaa !125
  %i.hs = call i32 %i.ho(ptr noundef %i.hp, i64 noundef %i.hq, i64 noundef %i.hr, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #21, !inline_history !247 ; 0 uses
  %i.ht = load i32, ptr %i.c, align 4, !tbaa !87
  store i32 %i.ht, ptr %i.hm, align 8, !tbaa !87
  %i.hu = load i32, ptr %i.d, align 4, !tbaa !87
  store i32 %i.hu, ptr %i.hn, align 4, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 888
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.hw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134568), align 8, !tbaa !114
  %i.hx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.hy = load i64, ptr %i.bm, align 8, !tbaa !112
  %i.hz = call i32 %i.hw(ptr noundef %i.hx, i64 noundef %i.hy, ptr noundef nonnull %6) #21, !inline_history !248 ; 0 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ib = load <2 x i32>, ptr %i.ia, align 8, !tbaa !87
  store <2 x i32> %i.ib, ptr %i.hv, align 8, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.ic = load i32, ptr %2, align 8, !tbaa !250
  %.not38 = icmp eq i32 %i.ic, 0
  br i1 %.not38, label %bb.bf, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.id = getelementptr inbounds nuw i8, ptr %2, i64 4
end_hunk_0
