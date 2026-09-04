Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_video?download=true
inline.NumInlined: 254
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 13
begin_hunk_0_@SDL_VideoInit:bb.a
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ad = load ptr, ptr @X11_bootstrap, align 8
  %i.ae = tail call i64 @SDL_strlen_REAL(ptr noundef %i.ad) #19
  %i.af = icmp eq i64 %i.q, %i.ae
  br i1 %i.af, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ag = load ptr, ptr @X11_bootstrap, align 8
  %i.ah = tail call i32 @SDL_strncasecmp_REAL(ptr noundef %i.ag, ptr noundef nonnull %.0137161, i64 noundef %i.q) #19
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @X11_bootstrap, i64 16), align 8
  %i.ak = tail call ptr %i.aj() #19               ; 2 uses
  %.not71.1 = icmp eq ptr %i.ak, null
  br i1 %.not71.1, label %bb.t, label %select.unfold

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %i.al = load i8, ptr getelementptr inbounds nuw (i8, ptr @Wayland_bootstrap, i64 32), align 8, !range !10, !noundef !11
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = load ptr, ptr @Wayland_bootstrap, align 8
  %i.ao = tail call i64 @SDL_strlen_REAL(ptr noundef %i.an) #19
  %i.ap = icmp eq i64 %i.q, %i.ao
  br i1 %i.ap, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.aq = load ptr, ptr @Wayland_bootstrap, align 8
  %i.ar = tail call i32 @SDL_strncasecmp_REAL(ptr noundef %i.aq, ptr noundef nonnull %.0137161, i64 noundef %i.q) #19
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @Wayland_bootstrap, i64 16), align 8
  %i.au = tail call ptr %i.at() #19               ; 2 uses
  %.not71.2 = icmp eq ptr %i.au, null
  br i1 %.not71.2, label %bb.x, label %select.unfold

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %i.av = load i8, ptr getelementptr inbounds nuw (i8, ptr @KMSDRM_bootstrap, i64 32), align 8, !range !10, !noundef !11
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ax = load ptr, ptr @KMSDRM_bootstrap, align 8
  %i.ay = tail call i64 @SDL_strlen_REAL(ptr noundef %i.ax) #19
  %i.az = icmp eq i64 %i.q, %i.ay
  br i1 %i.az, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.ba = load ptr, ptr @KMSDRM_bootstrap, align 8
  %i.bb = tail call i32 @SDL_strncasecmp_REAL(ptr noundef %i.ba, ptr noundef nonnull %.0137161, i64 noundef %i.q) #19
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @KMSDRM_bootstrap, i64 16), align 8
  %i.be = tail call ptr %i.bd() #19               ; 2 uses
  %.not71.3 = icmp eq ptr %i.be, null
  br i1 %.not71.3, label %bb.ab, label %select.unfold

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %i.bf = load i8, ptr getelementptr inbounds nuw (i8, ptr @OFFSCREEN_bootstrap, i64 32), align 8, !range !10, !noundef !11
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bh = load ptr, ptr @OFFSCREEN_bootstrap, align 8
  %i.bi = tail call i64 @SDL_strlen_REAL(ptr noundef %i.bh) #19
  %i.bj = icmp eq i64 %i.q, %i.bi
  br i1 %i.bj, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.bk = load ptr, ptr @OFFSCREEN_bootstrap, align 8
  %i.bl = tail call i32 @SDL_strncasecmp_REAL(ptr noundef %i.bk, ptr noundef nonnull %.0137161, i64 noundef %i.q) #19
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @OFFSCREEN_bootstrap, i64 16), align 8
  %i.bo = tail call ptr %i.bn() #19               ; 2 uses
  %.not71.4 = icmp eq ptr %i.bo, null
  br i1 %.not71.4, label %bb.af, label %select.unfold

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %i.bp = load i8, ptr getelementptr inbounds nuw (i8, ptr @DUMMY_bootstrap, i64 32), align 8, !range !10, !noundef !11
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.br = load ptr, ptr @DUMMY_bootstrap, align 8
  %i.bs = tail call i64 @SDL_strlen_REAL(ptr noundef %i.br) #19
  %i.bt = icmp eq i64 %i.q, %i.bs
  br i1 %i.bt, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.bu = load ptr, ptr @DUMMY_bootstrap, align 8
  %i.bv = tail call i32 @SDL_strncasecmp_REAL(ptr noundef %i.bu, ptr noundef nonnull %.0137161, i64 noundef %i.q) #19
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @DUMMY_bootstrap, i64 16), align 8
  %i.by = tail call ptr %i.bx() #19               ; 2 uses
  %.not71.5 = icmp eq ptr %i.by, null
  br i1 %.not71.5, label %bb.aj, label %select.unfold

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  %i.bz = load i8, ptr getelementptr inbounds nuw (i8, ptr @DUMMY_evdev_bootstrap, i64 32), align 8, !range !10, !noundef !11
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cb = load ptr, ptr @DUMMY_evdev_bootstrap, align 8
  %i.cc = tail call i64 @SDL_strlen_REAL(ptr noundef %i.cb) #19
  %i.cd = icmp eq i64 %i.q, %i.cc
  br i1 %i.cd, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.ce = load ptr, ptr @DUMMY_evdev_bootstrap, align 8
  %i.cf = tail call i32 @SDL_strncasecmp_REAL(ptr noundef %i.ce, ptr noundef nonnull %.0137161, i64 noundef %i.q) #19
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ch = load ptr, ptr getelementptr inbounds nuw (i8, ptr @DUMMY_evdev_bootstrap, i64 16), align 8
  %i.ci = tail call ptr %i.ch() #19               ; 2 uses
  %.not71.6 = icmp eq ptr %i.ci, null
  br i1 %.not71.6, label %bb.an, label %select.unfold

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj
  br label %select.unfold

select.unfold:                                    ; preds = %bb.an, %bb.am, %bb.ai, %bb.ae, %bb.aa, %bb.w, %bb.s, %bb.o
  %.1.lcssa = phi i64 [ 0, %bb.o ], [ 7, %bb.an ], [ 1, %bb.s ], [ 6, %bb.am ], [ 2, %bb.w ], [ 4, %bb.ae ], [ 3, %bb.aa ], [ 5, %bb.ai ] ; 2 uses
  %.348 = phi ptr [ %i.aa, %bb.o ], [ null, %bb.an ], [ %i.ak, %bb.s ], [ %i.ci, %bb.am ], [ %i.au, %bb.w ], [ %i.bo, %bb.ae ], [ %i.be, %bb.aa ], [ %i.by, %bb.ai ] ; 3 uses
  br i1 %.not69, label %.critedge, label %select.unfold.preheader

bb.ao:                                            ; preds = %.thread, %bb.i
  %.not6178 = phi i1 [ false, %.thread ], [ true, %bb.i ]
  %.04976 = phi ptr [ %.04974, %.thread ], [ null, %bb.i ]
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @Wayland_preferred_bootstrap, i64 16), align 8
  %i.ck = tail call ptr %i.cj() #19               ; 2 uses
  %.not64 = icmp eq ptr %i.ck, null
  br i1 %.not64, label %bb.ap, label %.critedge.thread87

bb.ap:                                            ; preds = %bb.ao
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @X11_bootstrap, i64 16), align 8
  %i.cm = tail call ptr %i.cl() #19               ; 2 uses
  %.not64.1 = icmp eq ptr %i.cm, null
  br i1 %.not64.1, label %bb.aq, label %.critedge.thread87

bb.aq:                                            ; preds = %bb.ap
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @Wayland_bootstrap, i64 16), align 8
  %i.co = tail call ptr %i.cn() #19               ; 2 uses
  %.not64.2 = icmp eq ptr %i.co, null
  br i1 %.not64.2, label %bb.ar, label %.critedge.thread87

bb.ar:                                            ; preds = %bb.aq
  %i.cp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @KMSDRM_bootstrap, i64 16), align 8
  %i.cq = tail call ptr %i.cp() #19               ; 2 uses
  %.not64.3 = icmp eq ptr %i.cq, null
  br i1 %.not64.3, label %bb.as, label %.critedge.thread87

bb.as:                                            ; preds = %bb.ar
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @OFFSCREEN_bootstrap, i64 16), align 8
  %i.cs = tail call ptr %i.cr() #19               ; 2 uses
  %.not64.4 = icmp eq ptr %i.cs, null
  br i1 %.not64.4, label %bb.at, label %.critedge.thread87

bb.at:                                            ; preds = %bb.as
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @DUMMY_bootstrap, i64 16), align 8
  %i.cu = tail call ptr %i.ct() #19               ; 2 uses
  %.not64.5 = icmp eq ptr %i.cu, null
  br i1 %.not64.5, label %bb.au, label %.critedge.thread87

bb.au:                                            ; preds = %bb.at
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @DUMMY_evdev_bootstrap, i64 16), align 8
  %i.cw = tail call ptr %i.cv() #19               ; 2 uses
  %.not64.6 = icmp eq ptr %i.cw, null
  br i1 %.not64.6, label %.critedge.thread, label %.critedge.thread87

.critedge.thread:                                 ; preds = %bb.au
  br i1 %.not6178, label %bb.aw, label %bb.av

.critedge:                                        ; preds = %select.unfold.preheader, %select.unfold, %select.unfold.preheader.preheader
  %.045.lcssa = phi ptr [ null, %select.unfold.preheader.preheader ], [ %.348, %select.unfold ], [ %.348, %select.unfold.preheader ] ; 2 uses
  %.039.lcssa = phi i64 [ 0, %select.unfold.preheader.preheader ], [ %.1.lcssa, %select.unfold ], [ %.1.lcssa, %select.unfold.preheader ]
  %.not68 = icmp eq ptr %.045.lcssa, null
  br i1 %.not68, label %bb.av, label %.critedge.thread87

.critedge.thread87:                               ; preds = %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %.critedge
  %.394 = phi i64 [ %.039.lcssa, %.critedge ], [ 0, %bb.ao ], [ 1, %bb.ap ], [ 2, %bb.aq ], [ 3, %bb.ar ], [ 4, %bb.as ], [ 5, %bb.at ], [ 6, %bb.au ]
  %.593 = phi ptr [ %.045.lcssa, %.critedge ], [ %i.ck, %bb.ao ], [ %i.cm, %bb.ap ], [ %i.co, %bb.aq ], [ %i.cq, %bb.ar ], [ %i.cs, %bb.as ], [ %i.cu, %bb.at ], [ %i.cw, %bb.au ] ; 2 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr @bootstrap, i64 %.394
  %i.cy = load ptr, ptr %i.cx, align 8            ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8
  tail call void @SDL_DebugLogBackend(ptr noundef nonnull @.str.5, ptr noundef %i.cz) #19
  store ptr %.593, ptr @_this, align 8
  %i.da = load ptr, ptr %i.cy, align 8
  store ptr %i.da, ptr %.593, align 8
  %i.db = tail call i64 @SDL_GetCurrentThreadID_REAL() #19
  %i.dc = load ptr, ptr @_this, align 8           ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 784
  store i64 %i.db, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 1040
  store i32 0, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 1304
  store ptr null, ptr %i.df, align 8
  tail call void @SDL_GL_ResetAttributes_REAL()
  %i.dg = load ptr, ptr @_this, align 8           ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = tail call zeroext i1 %i.di(ptr noundef %i.dg) #19
  br i1 %i.dj, label %bb.ay, label %bb.ax

bb.av:                                            ; preds = %.critedge, %.critedge.thread
  %.049758695 = phi ptr [ %.04976, %.critedge.thread ], [ %.04974, %.critedge ]
  %i.dk = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.6, ptr noundef nonnull %.049758695) #19 ; 0 uses
  br label %.thread104

bb.aw:                                            ; preds = %.critedge.thread
  %i.dl = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.7) #19 ; 0 uses
  br label %.thread104

bb.ax:                                            ; preds = %.critedge.thread87
  tail call void @SDL_VideoQuit()
  br label %.thread129.thread131

bb.ay:                                            ; preds = %.critedge.thread87
  %i.dm = load ptr, ptr @_this, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 808
  %i.do = load i32, ptr %i.dn, align 8
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  tail call void @SDL_VideoQuit()
  %i.dq = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.8) #19
  br label %.thread129.thread131

bb.ba:                                            ; preds = %bb.ay
  %i.dr = tail call zeroext i1 @SDL_AddHintCallback_REAL(ptr noundef nonnull @.str.9, ptr noundef nonnull @SDL_SyncHintWatcher, ptr noundef null) #19 ; 0 uses
  %i.ds = tail call zeroext i1 @SDL_GetHintBoolean_REAL(ptr noundef nonnull @.str.10, i1 noundef zeroext false) #19
  br i1 %i.ds, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dt = tail call zeroext i1 @SDL_DisableScreenSaver_REAL() ; 0 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  tail call void @SDL_PostInitMouse() #19
  br label %.thread129.thread131

.thread104:                                       ; preds = %bb.av, %bb.aw
  tail call void @SDL_QuitPen() #19
  br label %.thread117

.thread117:                                       ; preds = %.thread104, %bb.g
  tail call void @SDL_QuitTouch() #19
  br label %.thread129

.thread129:                                       ; preds = %bb.f, %.thread117
  tail call void @SDL_QuitMouse() #19
  br label %.thread129.thread.sink.split

.thread129.thread.sink.split:                     ; preds = %bb.e, %.thread129
  tail call void @SDL_QuitKeyboard() #19
  br label %.thread129.thread

.thread129.thread:                                ; preds = %.thread129.thread.sink.split, %bb.d
  tail call void @SDL_QuitSubSystem_REAL(i32 noundef 16384) #19
  br label %.thread129.thread131

.thread129.thread131:                             ; preds = %bb.c, %.thread129.thread, %bb.bc, %bb.az, %bb.ax
  %.050 = phi i1 [ %i.dq, %bb.az ], [ true, %bb.bc ], [ false, %bb.ax ], [ false, %.thread129.thread ], [ false, %bb.c ]
  ret i1 %.050
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_VideoQuit() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8            ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 925
  store i8 1, ptr %i.b, align 1
  tail call void @SDL_QuitTouch() #19
  tail call void @SDL_QuitMouse() #19
  tail call void @SDL_QuitKeyboard() #19
  tail call void @SDL_QuitSubSystem_REAL(i32 noundef 16384) #19
  %i.c = load ptr, ptr @_this, align 8            ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %SDL_EnableScreenSaver_REAL.exit

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 794 ; 2 uses
  %i.f = load i8, ptr %i.e, align 2, !range !10, !noundef !11
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.e, label %SDL_EnableScreenSaver_REAL.exit

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.e, align 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 600
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not3.i = icmp eq ptr %i.i, null
  br i1 %.not3.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call zeroext i1 %i.i(ptr noundef nonnull %i.c) #19, !inline_history !23 ; 0 uses
  br label %SDL_EnableScreenSaver_REAL.exit

bb.g:                                             ; preds = %bb.e
  %i.k = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.25) #19 ; 0 uses
  br label %SDL_EnableScreenSaver_REAL.exit

SDL_EnableScreenSaver_REAL.exit:                  ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %i.l = load ptr, ptr @_this, align 8            ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 840
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not714 = icmp eq ptr %i.n, null
  br i1 %.not714, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %SDL_EnableScreenSaver_REAL.exit, %.lr.ph
  %i.o = phi ptr [ %i.r, %.lr.ph ], [ %i.n, %SDL_EnableScreenSaver_REAL.exit ]
  tail call void @SDL_DestroyWindow_REAL(ptr noundef nonnull %i.o)
  %i.p = load ptr, ptr @_this, align 8            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 840
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not7 = icmp eq ptr %i.r, null
  br i1 %.not7, label %._crit_edge, label %.lr.ph, !llvm.loop !21

._crit_edge:                                      ; preds = %.lr.ph, %SDL_EnableScreenSaver_REAL.exit
  %.lcssa = phi ptr [ %i.l, %SDL_EnableScreenSaver_REAL.exit ], [ %i.p, %.lr.ph ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.lcssa, i64 1040
  %i.t = load i32, ptr %i.s, align 8
  %.not8 = icmp eq i32 %i.t, 0
  br i1 %.not8, label %bb.j, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %.lcssa, i64 432
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.v, null
  br i1 %.not9, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void %i.v(ptr noundef nonnull %.lcssa) #19
  %i.w = load ptr, ptr @_this, align 8            ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1040
  store i32 0, ptr %i.x, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge
  %i.y = phi ptr [ %i.w, %bb.i ], [ %.lcssa, %bb.h ], [ %.lcssa, %._crit_edge ] ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1392
  %i.aa = load i32, ptr %i.z, align 8
  %.not10 = icmp eq i32 %i.aa, 0
  br i1 %.not10, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 512
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not11 = icmp eq ptr %i.ac, null
  br i1 %.not11, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void %i.ac(ptr noundef nonnull %i.y) #19
  %i.ad = load ptr, ptr @_this, align 8           ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1392
  store i32 0, ptr %i.ae, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.af = phi ptr [ %i.ad, %bb.l ], [ %i.y, %bb.k ], [ %i.y, %bb.j ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull %i.af) #19
  %i.ai = load ptr, ptr @_this, align 8           ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 808
  %i.ak = load i32, ptr %i.aj, align 8            ; 2 uses
  %.not1215 = icmp eq i32 %i.ak, 0
  br i1 %.not1215, label %._crit_edge19, label %.lr.ph18.preheader

.lr.ph18.preheader:                               ; preds = %bb.m
  %i.al = sext i32 %i.ak to i64
  br label %.lr.ph18

.lr.ph18:                                         ; preds = %.lr.ph18.preheader, %.lr.ph18
  %indvars.iv = phi i64 [ %i.al, %.lr.ph18.preheader ], [ %indvars.iv.next, %.lr.ph18 ]
end_hunk_0
