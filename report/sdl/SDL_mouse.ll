Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_mouse?download=true
inline.NumInlined: 74
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@SDL_PrivateSendMouseMotion:bb.a
  store <2 x float> %i.hi, ptr %i.hh, align 4
  %i.hj = getelementptr inbounds nuw i8, ptr %6, i64 36
  store float %.2, ptr %i.hj, align 4
  %i.hk = getelementptr inbounds nuw i8, ptr %6, i64 40
  store float %.2135, ptr %i.hk, align 8
  %i.hl = call zeroext i1 @SDL_PushEvent_REAL(ptr noundef nonnull %6) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.as

bb.as:                                            ; preds = %bb.ag, %SDL_GetMouseButtonState.exit169, %bb.am, %bb.x, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_SendMouseButtonClicks(i64 noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, i1 noundef zeroext %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  tail call fastcc void @SDL_PrivateSendMouseButton(i64 noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, i1 noundef zeroext %4, i32 noundef %i.a)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @SDL_PrivateSendMouseButton(i64 noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, i1 noundef zeroext %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %union.SDL_Event, align 8           ; 11 uses
  %i.a = zext i1 %4 to i8
  %.b.i = load i1, ptr @SDL_mouse_initialized, align 1
  br i1 %.b.i, label %.preheader.i, label %GetMouseInputSource.exit

.preheader.i:                                     ; preds = %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 256), align 8 ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0                     ; 2 uses
  br i1 %i.c, label %.lr.ph.i, label %.thread.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 264), align 8
  %wide.trip.count.i = zext nneg i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.thread.i, label %bb.c, !llvm.loop !25

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %indvars.iv.i ; 5 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp eq i32 %i.f, %2
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  br i1 %4, label %.loopexit, label %bb.e

.thread.i:                                        ; preds = %bb.b, %.preheader.i
  br i1 %4, label %.thread10.i, label %.thread3.i

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = zext i8 %3 to i32
  %i.k = add nsw i32 %i.j, -1
  %i.l = shl nuw i32 1, %i.k
  %i.m = and i32 %i.i, %i.l
  %.not38.i = icmp eq i32 %i.m, 0
  br i1 %.not38.i, label %.thread3.i, label %.loopexit

.thread3.i:                                       ; preds = %bb.e, %.thread.i
  %.03426.i = phi ptr [ %i.e, %bb.e ], [ null, %.thread.i ] ; 2 uses
  br i1 %i.c, label %.lr.ph18.i, label %._crit_edge.i

.lr.ph18.i:                                       ; preds = %.thread3.i
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 264), align 8
  %i.o = zext i8 %3 to i32
  %i.p = add nsw i32 %i.o, -1
  %i.q = shl nuw i32 1, %i.p
  %wide.trip.count26.i = zext nneg i32 %i.b to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1 ; 2 uses
  %exitcond27.not.i = icmp eq i64 %indvars.iv.next24.i, %wide.trip.count26.i
  br i1 %exitcond27.not.i, label %._crit_edge.i, label %bb.g, !llvm.loop !26

bb.g:                                             ; preds = %bb.f, %.lr.ph18.i
  %indvars.iv23.i = phi i64 [ 0, %.lr.ph18.i ], [ %indvars.iv.next24.i, %bb.f ] ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %indvars.iv23.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.t, %i.q
  %.not39.i = icmp eq i32 %i.u, 0
  br i1 %.not39.i, label %bb.f, label %.loopexit

._crit_edge.i:                                    ; preds = %bb.f, %.thread3.i
  %.not40.i = icmp eq ptr %.03426.i, null
  br i1 %.not40.i, label %.thread10.i, label %.loopexit

.thread10.i:                                      ; preds = %._crit_edge.i, %.thread.i
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 264), align 8
  %i.w = add nsw i32 %i.b, 1
  %i.x = sext i32 %i.w to i64
  %i.y = mul nsw i64 %i.x, 24
  %i.z = tail call ptr @SDL_realloc_REAL(ptr noundef %i.v, i64 noundef %i.y) #15 ; 3 uses
  %.not41.i = icmp eq ptr %i.z, null
  br i1 %.not41.i, label %GetMouseInputSource.exit, label %bb.h

bb.h:                                             ; preds = %.thread10.i
  store ptr %i.z, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 264), align 8
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 256), align 8 ; 2 uses
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 256), align 8
  %i.ac = sext i32 %i.aa to i64
  %i.ad = getelementptr inbounds [24 x i8], ptr %i.z, i64 %i.ac ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  store i32 %2, ptr %i.ad, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %._crit_edge.i, %bb.h, %bb.d, %bb.e
  %.036.i.ph = phi ptr [ %.03426.i, %._crit_edge.i ], [ %i.e, %bb.e ], [ %i.e, %bb.d ], [ %i.ad, %bb.h ], [ %i.r, %bb.g ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.036.i.ph, i64 4 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4            ; 3 uses
  %i.ag = load i8, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 237), align 1, !range !7, !noundef !8
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.i, label %bb.l

bb.i:                                             ; preds = %.loopexit
  %or.cond = icmp ult i32 %2, -2
  %i.ai = icmp eq i8 %3, 1
  %or.cond4 = and i1 %or.cond, %i.ai
  br i1 %or.cond4, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  store i1 %4, ptr @track_mouse_down, align 1
  %.not109 = icmp eq ptr %1, null
  br i1 %.not109, label %.thread.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = select i1 %4, i32 1792, i32 1793
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 144), align 8
  %i.am = load <2 x i32>, ptr %i.ak, align 8
  %i.an = sitofp <2 x i32> %i.am to <2 x float>
  %i.ao = fdiv <2 x float> %i.al, %i.an           ; 2 uses
  %i.ap = extractelement <2 x float> %i.ao, i64 0
  %i.aq = extractelement <2 x float> %i.ao, i64 1
  tail call void @SDL_SendTouch(i64 noundef %0, i64 noundef -1, i64 noundef 1, ptr noundef nonnull %1, i32 noundef %i.aj, float noundef %i.ap, float noundef %i.aq, float noundef 1.000000e+00) #13
  br label %.thread

bb.l:                                             ; preds = %bb.i, %.loopexit
  %i.ar = load i8, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 236), align 4, !range !7, !noundef !8
  %i.as = icmp eq i8 %i.ar, 0
  %i.at = icmp eq i32 %2, -1
  %or.cond14 = and i1 %i.at, %i.as
  br i1 %or.cond14, label %GetMouseInputSource.exit, label %.thread

.thread:                                          ; preds = %bb.k, %bb.l
  br i1 %4, label %bb.m, label %.thread126

.thread.thread:                                   ; preds = %bb.j
  br i1 %4, label %.thread154, label %.thread126

.thread154:                                       ; preds = %.thread.thread
  %i.au = or i32 %i.af, 1
  br label %bb.o

.thread126:                                       ; preds = %.thread.thread, %.thread
  %i.av = zext i8 %3 to i32
  %i.aw = add nsw i32 %i.av, -1
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = xor i32 %i.ax, -1
  %i.az = and i32 %i.af, %i.ay
  br label %bb.o

bb.m:                                             ; preds = %.thread
  %i.ba = zext i8 %3 to i32
  %i.bb = add nsw i32 %i.ba, -1
  %i.bc = shl nuw i32 1, %i.bb
  %i.bd = or i32 %i.af, %i.bc                     ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = load float, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 144), align 8
  %i.bf = load float, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 148), align 4
  %i.bg = tail call fastcc zeroext i1 @SDL_UpdateMouseFocus(ptr noundef %1, float noundef %i.be, float noundef %i.bf, i1 noundef zeroext true) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %.thread154, %.thread126, %bb.n, %bb.m
  %.0101131 = phi i32 [ %i.az, %.thread126 ], [ %i.bd, %bb.n ], [ %i.bd, %bb.m ], [ %i.au, %.thread154 ] ; 2 uses
  %.0102130 = phi i32 [ 1026, %.thread126 ], [ 1025, %bb.n ], [ 1025, %bb.m ], [ 1025, %.thread154 ] ; 2 uses
  %i.bh = load i32, ptr %i.ae, align 4
  %i.bi = icmp eq i32 %.0101131, %i.bh
  br i1 %i.bi, label %GetMouseInputSource.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %.0101131, ptr %i.ae, align 4
  %i.bj = icmp slt i32 %5, 0
  br i1 %i.bj, label %bb.q, label %GetMouseClickState.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.bk = zext i8 %3 to i32                       ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.036.i.ph, i64 8 ; 3 uses
  %i.bm = load i32, ptr %i.bl, align 8
  %.not.i = icmp sgt i32 %i.bm, %i.bk
  br i1 %.not.i, label %GetMouseClickState.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = add nuw nsw i32 %i.bk, 1                ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.036.i.ph, i64 16 ; 7 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = shl nuw nsw i32 %i.bn, 5
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = tail call ptr @SDL_realloc_REAL(ptr noundef %i.bp, i64 noundef %i.br) #15 ; 2 uses
  %.not24.i = icmp eq ptr %i.bs, null
  br i1 %.not24.i, label %GetMouseClickState.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.bs, ptr %i.bo, align 8
  %i.bt = load i32, ptr %i.bl, align 8            ; 4 uses
  %.not2526.i = icmp sgt i32 %i.bt, %i.bk
  br i1 %.not2526.i, label %._crit_edge.i120, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.s
  %i.bu = sext i32 %i.bt to i64                   ; 2 uses
  %7 = add nuw nsw i32 %i.bk, 1
  %i.bv = sub i32 %7, %i.bt
  %i.bw = sub i32 %i.bk, %i.bt
  %xtraiter = and i32 %i.bv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i116.prol.loopexit, label %.lr.ph.i116.prol

.lr.ph.i116.prol:                                 ; preds = %.lr.ph.preheader.i, %.lr.ph.i116.prol
  %indvars.iv.i117.prol = phi i64 [ %indvars.iv.next.i118.prol, %.lr.ph.i116.prol ], [ %i.bu, %.lr.ph.preheader.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i116.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.bx = load ptr, ptr %i.bo, align 8
  %i.by = getelementptr inbounds [32 x i8], ptr %i.bx, i64 %indvars.iv.i117.prol
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.by, i8 0, i64 32, i1 false)
  %indvars.iv.next.i118.prol = add nsw i64 %indvars.iv.i117.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i116.prol.loopexit, label %.lr.ph.i116.prol, !llvm.loop !27

.lr.ph.i116.prol.loopexit:                        ; preds = %.lr.ph.i116.prol, %.lr.ph.preheader.i
  %indvars.iv.i117.unr = phi i64 [ %i.bu, %.lr.ph.preheader.i ], [ %indvars.iv.next.i118.prol, %.lr.ph.i116.prol ]
  %i.bz = icmp ult i32 %i.bw, 3
  br i1 %i.bz, label %._crit_edge.i120, label %.lr.ph.i116

.lr.ph.i116:                                      ; preds = %.lr.ph.i116.prol.loopexit, %.lr.ph.i116
  %indvars.iv.i117 = phi i64 [ %indvars.iv.next.i118.3, %.lr.ph.i116 ], [ %indvars.iv.i117.unr, %.lr.ph.i116.prol.loopexit ] ; 5 uses
  %i.ca = load ptr, ptr %i.bo, align 8
  %i.cb = getelementptr inbounds [32 x i8], ptr %i.ca, i64 %indvars.iv.i117
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cb, i8 0, i64 32, i1 false)
  %i.cc = load ptr, ptr %i.bo, align 8
  %i.cd = getelementptr [32 x i8], ptr %i.cc, i64 %indvars.iv.i117
  %i.ce = getelementptr i8, ptr %i.cd, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ce, i8 0, i64 32, i1 false)
  %i.cf = load ptr, ptr %i.bo, align 8
  %i.cg = getelementptr [32 x i8], ptr %i.cf, i64 %indvars.iv.i117
  %i.ch = getelementptr i8, ptr %i.cg, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, i8 0, i64 32, i1 false)
  %i.ci = load ptr, ptr %i.bo, align 8
  %i.cj = getelementptr [32 x i8], ptr %i.ci, i64 %indvars.iv.i117
  %i.ck = getelementptr i8, ptr %i.cj, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ck, i8 0, i64 32, i1 false)
  %indvars.iv.next.i118.3 = add nsw i64 %indvars.iv.i117, 4 ; 2 uses
  %lftr.wideiv.i.3 = trunc i64 %indvars.iv.next.i118.3 to i32
  %exitcond.not.i119.3 = icmp eq i32 %i.bn, %lftr.wideiv.i.3
  br i1 %exitcond.not.i119.3, label %._crit_edge.i120, label %.lr.ph.i116, !llvm.loop !28

._crit_edge.i120:                                 ; preds = %.lr.ph.i116.prol.loopexit, %.lr.ph.i116, %bb.s
  store i32 %i.bn, ptr %i.bl, align 8
  br label %GetMouseClickState.exit

GetMouseClickState.exit:                          ; preds = %bb.q, %._crit_edge.i120
  %i.cl = getelementptr inbounds nuw i8, ptr %.036.i.ph, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %i.cn = zext i8 %3 to i64
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %i.cm, i64 %i.cn ; 13 uses
  %.not110 = icmp eq ptr %i.cm, null
  br i1 %.not110, label %GetMouseClickState.exit.thread, label %bb.t

bb.t:                                             ; preds = %GetMouseClickState.exit
  br i1 %4, label %bb.u, label %._crit_edge140

._crit_edge140:                                   ; preds = %bb.t
  %.phi.trans.insert141 = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %.pre142 = load i8, ptr %.phi.trans.insert141, align 8
  br label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.cp = tail call i64 @SDL_GetTicks_REAL() #13  ; 3 uses
  %i.cq = load i64, ptr %i.co, align 8
  %i.cr = load i32, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 228), align 4
  %i.cs = zext i32 %i.cr to i64
  %i.ct = add i64 %i.cq, %i.cs
  %.not111 = icmp ult i64 %i.cp, %i.ct
  br i1 %.not111, label %bb.v, label %.thread156

bb.v:                                             ; preds = %bb.u
  %i.cu = load double, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 176), align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cw = load double, ptr %i.cv, align 8
  %i.cx = fsub double %i.cu, %i.cw
  %i.cy = tail call double @SDL_fabs_REAL(double noundef %i.cx) #13
  %i.cz = load i32, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 232), align 8
  %i.da = sitofp i32 %i.cz to double
  %i.db = fcmp ogt double %i.cy, %i.da
  br i1 %i.db, label %.thread156, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dc = load double, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 184), align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.de = load double, ptr %i.dd, align 8
  %i.df = fsub double %i.dc, %i.de
  %i.dg = tail call double @SDL_fabs_REAL(double noundef %i.df) #13
  %i.dh = load i32, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 232), align 8
  %i.di = sitofp i32 %i.dh to double
  %i.dj = fcmp ogt double %i.dg, %i.di
  br i1 %i.dj, label %.thread156, label %bb.x

.thread156:                                       ; preds = %bb.u, %bb.v, %bb.w
  %i.dk = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  store i8 0, ptr %i.dk, align 8
  store i64 %i.cp, ptr %i.co, align 8
  %i.dl = load double, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 176), align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store double %i.dl, ptr %i.dm, align 8
  %i.dn = load double, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 184), align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store double %i.dn, ptr %i.do, align 8
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %.pre = load i8, ptr %.phi.trans.insert, align 8 ; 2 uses
  store i64 %i.cp, ptr %i.co, align 8
  %i.dp = load double, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 176), align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store double %i.dp, ptr %i.dq, align 8
  %i.dr = load double, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 184), align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store double %i.dr, ptr %i.ds, align 8
  %.not112 = icmp eq i8 %.pre, -1
  br i1 %.not112, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.thread156, %bb.x
  %i.dt = phi i8 [ 0, %.thread156 ], [ %.pre, %bb.x ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.dv = add nuw i8 %i.dt, 1                     ; 2 uses
  store i8 %i.dv, ptr %i.du, align 8
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge140, %bb.x, %bb.y
  %i.dw = phi i8 [ %.pre142, %._crit_edge140 ], [ -1, %bb.x ], [ %i.dv, %bb.y ]
  %i.dx = zext i8 %i.dw to i32
  br label %GetMouseClickState.exit.thread

GetMouseClickState.exit.thread:                   ; preds = %bb.r, %bb.z, %GetMouseClickState.exit, %bb.p
  %.1 = phi i32 [ %5, %bb.p ], [ %i.dx, %bb.z ], [ 1, %GetMouseClickState.exit ], [ 1, %bb.r ]
  %i.dy = tail call zeroext i1 @SDL_EventEnabled_REAL(i32 noundef %.0102130) #13
  br i1 %i.dy, label %bb.aa, label %bb.ah

bb.aa:                                            ; preds = %GetMouseClickState.exit.thread
  %i.dz = load i8, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 193), align 1, !range !7, !noundef !8
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.eb = load i8, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 198), align 2, !range !7, !noundef !8
  %i.ec = trunc nuw i8 %i.eb to i1
  %i.ed = icmp ult i32 %2, -2
  %or.cond115.not = and i1 %i.ed, %i.ec
  br i1 %or.cond115.not, label %bb.ae, label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %switch = icmp ugt i32 %2, -3
  br i1 %switch, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ee = load i32, ptr %.036.i.ph, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ab, %bb.ad
  %.0 = phi i32 [ %i.ee, %bb.ad ], [ 0, %bb.ab ], [ 0, %bb.ac ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  store i32 %.0102130, ptr %6, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %0, ptr %i.ef, align 8
  %i.eg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 136), align 8 ; 2 uses
  %.not114 = icmp eq ptr %i.eg, null
  br i1 %.not114, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eh = load i32, ptr %i.eg, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.ei = phi i32 [ %i.eh, %bb.af ], [ 0, %bb.ae ]
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %i.ei, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 %.0, ptr %i.ek, align 4
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 25
  store i8 %i.a, ptr %i.el, align 1
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 %3, ptr %i.em, align 8
  %i.en = tail call i32 @llvm.umin.i32(i32 %.1, i32 255)
  %i.eo = trunc nuw i32 %i.en to i8
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 26
  store i8 %i.eo, ptr %i.ep, align 2
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.er = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 144), align 8
  store <2 x float> %i.er, ptr %i.eq, align 4
  %i.es = call zeroext i1 @SDL_PushEvent_REAL(ptr noundef nonnull %6) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %GetMouseClickState.exit.thread
  %i.et = icmp eq ptr %1, null
  %or.cond11 = or i1 %i.et, %4
  br i1 %or.cond11, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eu = load float, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 144), align 8
  %i.ev = load float, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 148), align 4
  %i.ew = call fastcc zeroext i1 @SDL_UpdateMouseFocus(ptr noundef %1, float noundef %i.eu, float noundef %i.ev, i1 noundef zeroext true) ; 0 uses
end_hunk_0
