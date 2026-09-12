Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/planner?download=true
inline.NumInlined: 49
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@mkplan:bb.a
  %i.cv = and i32 %spec.select.3.i, 983039        ; 2 uses
  %i.cw = and i32 %i.cv, %i.bp
  %i.cx = icmp eq i32 %i.cw, %i.bq
  %spec.select.4.i = select i1 %i.cx, i32 %i.cv, i32 %spec.select.3.i ; 3 uses
  %.not.4.i = icmp eq i32 %spec.select.4.i, %.1.3.i
  br i1 %.not.4.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cy = zext nneg i32 %spec.select.4.i to i64
  %i.cz = and i64 %i.cu, -1048576
  %i.da = or i64 %i.cz, %i.cy                     ; 3 uses
  store i64 %i.da, ptr %3, align 8
  %i.db = call fastcc ptr @search0(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef nonnull %3) ; 2 uses
  %.not41.4.i = icmp eq ptr %i.db, null
  br i1 %.not41.4.i, label %bb.aa, label %search.exit

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dc = phi i64 [ %i.da, %bb.z ], [ %i.cu, %bb.y ] ; 2 uses
  %.1.4.i = phi i32 [ %spec.select.4.i, %bb.z ], [ %.1.3.i, %bb.y ]
  %.not43.i = icmp eq i32 %i.bq, %.1.4.i
  br i1 %.not43.i, label %search.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dd = and i64 %i.bo, 1048575
  %i.de = and i64 %i.dc, -1048576
  %i.df = or disjoint i64 %i.de, %i.dd            ; 2 uses
  store i64 %i.df, ptr %3, align 8
  %i.dg = call fastcc ptr @search0(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef nonnull %3)
  br label %search.exit

search.exit:                                      ; preds = %.thread105, %bb.t, %bb.v, %bb.x, %bb.z, %bb.aa, %bb.ab
  %i.dh = phi i64 [ %i.dc, %bb.aa ], [ %i.df, %bb.ab ], [ %i.bu, %.thread105 ], [ %i.cc, %bb.t ], [ %i.ck, %bb.v ], [ %i.cs, %bb.x ], [ %i.da, %bb.z ] ; 2 uses
  %.3.i = phi ptr [ null, %bb.aa ], [ %i.dg, %bb.ab ], [ %i.bv, %.thread105 ], [ %i.cd, %bb.t ], [ %i.cl, %bb.v ], [ %i.ct, %bb.x ], [ %i.db, %bb.z ] ; 2 uses
  %i.di = load ptr, ptr %i.f, align 8, !tbaa !74  ; 2 uses
  %.not88 = icmp eq ptr %i.di, null
  %i.dj = load i32, ptr %i.w, align 4, !tbaa !29  ; 2 uses
  br i1 %.not88, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %search.exit
  %i.dk = call i32 %i.di(i32 noundef %i.dj, ptr noundef nonnull %1) #8 ; 2 uses
  store i32 %i.dk, ptr %i.w, align 4, !tbaa !29
  br label %bb.ad

bb.ad:                                            ; preds = %search.exit, %bb.ac
  %.pr107 = phi i32 [ %i.dk, %bb.ac ], [ %i.dj, %search.exit ] ; 2 uses
  %i.dl = icmp eq i32 %.pr107, 2
  br i1 %i.dl, label %.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dm = load i32, ptr %i.m, align 8, !tbaa !48
  %.not89 = icmp eq i32 %i.dm, 0
  br i1 %.not89, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dn = load i64, ptr %i.b, align 4
  %i.do = and i64 %i.dn, 4286578688
  %.not90 = icmp eq i64 %i.do, 0
  br i1 %.not90, label %invoke_hook.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dp = or i64 %i.dh, 1048576
  br label %thread-pre-split106

bb.ah:                                            ; preds = %bb.ae
  %i.dq = and i64 %i.dh, -4286578689
  br label %thread-pre-split106

thread-pre-split106:                              ; preds = %bb.ah, %bb.ag
  %storemerge = phi i64 [ %i.dp, %bb.ag ], [ %i.dq, %bb.ah ]
  store i64 %storemerge, ptr %3, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %thread-pre-split106, %bb.p
  %i.dr = phi i32 [ %.pr107, %thread-pre-split106 ], [ %i.ac, %bb.p ]
  %.2 = phi ptr [ %.3.i, %thread-pre-split106 ], [ %i.bf, %bb.p ] ; 5 uses
  %switch = icmp ult i32 %i.dr, 2
  br i1 %switch, label %bb.aj, label %invoke_hook.exit

bb.aj:                                            ; preds = %bb.ai
  %.not91 = icmp eq ptr %.2, null
  br i1 %.not91, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ds = load i32, ptr %i.a, align 4, !tbaa !33
  call fastcc void @hinsert(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.ds)
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !55 ; 2 uses
  %.not.i92 = icmp eq ptr %i.du, null
  br i1 %.not.i92, label %invoke_hook.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void %i.du(ptr noundef nonnull %0, ptr noundef nonnull %.2, ptr noundef nonnull %1, i32 noundef 1) #8, !inline_history !73
  br label %invoke_hook.exit

bb.am:                                            ; preds = %bb.aj
  call fastcc void @hinsert(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, i32 noundef 4095)
  br label %invoke_hook.exit

.thread:                                          ; preds = %bb.o, %bb.k, %bb.n, %bb.ad, %.thread99, %bb.e
  %.3 = phi ptr [ null, %bb.e ], [ null, %.thread99 ], [ %.3.i, %bb.ad ], [ null, %bb.o ], [ null, %bb.k ], [ %i.bf, %bb.n ]
  call void @fftw_plan_destroy_internal(ptr noundef %.3) #8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 2, ptr %i.dv, align 4, !tbaa !29
  br label %invoke_hook.exit

invoke_hook.exit:                                 ; preds = %bb.j, %bb.al, %bb.ak, %bb.ai, %bb.am, %bb.af, %.thread
  %.169 = phi ptr [ null, %.thread ], [ %.2, %bb.al ], [ null, %bb.af ], [ %.2, %bb.ai ], [ null, %bb.am ], [ %.2, %bb.ak ], [ null, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret ptr %.169
}

; Function Attrs: nounwind uwtable
define internal void @forget(ptr nofree noundef captures(none) %0, i32 noundef %1) #0 {
bb.a:
  switch i32 %1, label %bb.d [
    i32 1, label %bb.b
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56
  tail call void @fftw_ifree(ptr noundef %i.b) #8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.a, i8 0, i64 44, i1 false)
  tail call fastcc void @hgrow(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56
  tail call void @fftw_ifree(ptr noundef %i.d) #8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.c, i8 0, i64 44, i1 false)
  tail call fastcc void @hgrow(ptr noundef nonnull %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @exprt(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.md5, align 4                ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @fftw_md5begin(ptr noundef nonnull %2) #8
  call void @fftw_md5unsigned(ptr noundef nonnull %2, i32 noundef 8) #8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !34
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %signature_of_configuration.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %indvars.iv.i ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !42
  call void @fftw_md5int(ptr noundef nonnull %2, i32 noundef %i.h) #8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  call void @fftw_md5puts(ptr noundef nonnull %2, ptr noundef %i.j) #8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.k = load i32, ptr %i.b, align 8, !tbaa !34
  %i.l = zext i32 %i.k to i64
  %i.m = icmp samesign ult i64 %indvars.iv.next.i, %i.l
  br i1 %i.m, label %bb.b, label %signature_of_configuration.exit, !llvm.loop !1

signature_of_configuration.exit:                  ; preds = %bb.b, %bb.a
  call void @fftw_md5end(ptr noundef nonnull %2) #8
  %i.n = load ptr, ptr %1, align 8, !tbaa !81
  %i.o = load i32, ptr %2, align 4, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !33
  call void (ptr, ptr, ...) %i.n(ptr noundef nonnull %1, ptr noundef nonnull @.str.2, i32 noundef %i.o, i32 noundef %i.q, i32 noundef %i.s, i32 noundef %i.u) #8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !57   ; 2 uses
  %.not31 = icmp eq i32 %i.w, 0
  br i1 %.not31, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %signature_of_configuration.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %i.y = phi i32 [ %i.w, %.lr.ph ], [ %i.az, %bb.g ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %indvars.iv ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 4            ; 5 uses
  %i.ad = and i64 %i.ac, 4194304
  %.not = icmp eq i64 %i.ad, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = lshr i64 %i.ac, 52                      ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4095
  br i1 %i.af, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !35
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %i.ae ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !41
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !42
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.028 = phi ptr [ %i.aj, %bb.e ], [ @stimeout, %bb.d ]
  %.027 = phi i32 [ %i.al, %bb.e ], [ 0, %bb.d ]
  %i.am = load ptr, ptr %1, align 8, !tbaa !81
  %i.an = trunc i64 %i.ac to i32
  %i.ao = and i32 %i.an, 1048575
  %i.ap = lshr i64 %i.ac, 32
  %i.aq = trunc nuw i64 %i.ap to i32
  %i.ar = and i32 %i.aq, 1048575
  %3 = lshr i64 %i.ac, 23
  %4 = trunc i64 %3 to i32
  %5 = and i32 %4, 511
  %i.as = load i32, ptr %i.aa, align 4, !tbaa !33
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !33
  %i.av = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !33
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !33
  call void (ptr, ptr, ...) %i.am(ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef %.028, i32 noundef %.027, i32 noundef %i.ao, i32 noundef %i.ar, i32 noundef %5, i32 noundef %i.as, i32 noundef %i.au, i32 noundef %i.aw, i32 noundef %i.ay) #8
  %.pre = load i32, ptr %i.v, align 8, !tbaa !57
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.az = phi i32 [ %.pre, %bb.f ], [ %i.y, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ba = zext i32 %i.az to i64
  %i.bb = icmp samesign ult i64 %indvars.iv.next, %i.ba
  br i1 %i.bb, label %bb.c, label %._crit_edge, !llvm.loop !79

._crit_edge:                                      ; preds = %bb.g, %signature_of_configuration.exit
  %i.bc = load ptr, ptr %1, align 8, !tbaa !81
  call void (ptr, ptr, ...) %i.bc(ptr noundef nonnull %1, ptr noundef nonnull @.str.4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @imprt(ptr nofree noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca [65 x i8], align 16               ; 6 uses
  %i.b = alloca [4 x i32], align 16               ; 11 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %2 = alloca %struct.flags_t, align 8            ; 6 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %.sroa.7 = alloca [40 x i8], align 8            ; 4 uses
  %3 = alloca %struct.md5, align 4                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.h = load ptr, ptr %1, align 8, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %i.l = call i32 (ptr, ptr, ...) %i.h(ptr noundef nonnull %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k) #8
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @fftw_md5begin(ptr noundef nonnull %3) #8
  call void @fftw_md5unsigned(ptr noundef nonnull %3, i32 noundef 8) #8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !34
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %signature_of_configuration.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !35
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %indvars.iv.i ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !42
  call void @fftw_md5int(ptr noundef nonnull %3, i32 noundef %i.s) #8
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !41
  call void @fftw_md5puts(ptr noundef nonnull %3, ptr noundef %i.u) #8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.v = load i32, ptr %i.m, align 8, !tbaa !34
  %i.w = zext i32 %i.v to i64
  %i.x = icmp samesign ult i64 %indvars.iv.next.i, %i.w
  br i1 %i.x, label %bb.c, label %signature_of_configuration.exit, !llvm.loop !1

signature_of_configuration.exit:                  ; preds = %bb.c, %bb.b
  call void @fftw_md5end(ptr noundef nonnull %3) #8
  %i.y = load i32, ptr %3, align 4, !tbaa !33
  %i.z = load i32, ptr %i.b, align 16, !tbaa !33
  %.not31 = icmp eq i32 %i.y, %i.z
  br i1 %.not31, label %bb.d, label %bb.x

bb.d:                                             ; preds = %signature_of_configuration.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !33
  %i.ac = load i32, ptr %i.i, align 4, !tbaa !33
  %.not32 = icmp eq i32 %i.ab, %i.ac
  br i1 %.not32, label %bb.e, label %bb.x

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !33
  %i.af = load i32, ptr %i.j, align 8, !tbaa !33
  %.not33 = icmp eq i32 %i.ae, %i.af
  br i1 %.not33, label %bb.f, label %bb.x

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !33
  %i.ai = load i32, ptr %i.k, align 4, !tbaa !33
  %.not34 = icmp eq i32 %i.ah, %i.ai
  br i1 %.not34, label %bb.g, label %bb.x

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !57 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %i.aj, i64 40, i1 false), !tbaa.struct !87
  %i.al = zext i32 %i.ak to i64                   ; 3 uses
  %i.am = mul nuw nsw i64 %i.al, 24
  %i.an = call ptr @fftw_malloc_plain(i64 noundef %i.am) #8 ; 7 uses
  %.not54 = icmp eq i32 %i.ak, 0
  br i1 %.not54, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %xtraiter = and i64 %i.al, 3                    ; 3 uses
  %i.ao = icmp ult i32 %i.ak, 4
  br i1 %i.ao, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.al, 4294967292
  br label %.lr.ph

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod65 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod65)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %indvars.iv.epil
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !56
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %indvars.iv.epil
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ap, ptr noundef nonnull align 4 dereferenceable(24) %i.ar, i64 24, i1 false), !tbaa.struct !88
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph.epil, !llvm.loop !82

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.epil, %bb.g
  %i.as = load ptr, ptr %1, align 8, !tbaa !86
  %i.at = call i32 (ptr, ptr, ...) %i.as(ptr noundef nonnull %1, ptr noundef nonnull @.str.5) #8
  %.not3552 = icmp eq i32 %i.at, 0
  br i1 %.not3552, label %.lr.ph53, label %._crit_edge

.lr.ph53:                                         ; preds = %.preheader
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 160
  br label %bb.h

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %indvars.iv
  %i.ax = load ptr, ptr %i.g, align 8, !tbaa !56
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.aw, ptr noundef nonnull align 4 dereferenceable(24) %i.ay, i64 24, i1 false), !tbaa.struct !88
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %indvars.iv.next
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !56
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %indvars.iv.next
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.az, ptr noundef nonnull align 4 dereferenceable(24) %i.bb, i64 24, i1 false), !tbaa.struct !88
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %indvars.iv.next.1
  %i.bd = load ptr, ptr %i.g, align 8, !tbaa !56
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %indvars.iv.next.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.bc, ptr noundef nonnull align 4 dereferenceable(24) %i.be, i64 24, i1 false), !tbaa.struct !88
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %indvars.iv.next.2
  %i.bg = load ptr, ptr %i.g, align 8, !tbaa !56
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %indvars.iv.next.2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.bf, ptr noundef nonnull align 4 dereferenceable(24) %i.bh, i64 24, i1 false), !tbaa.struct !88
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !83

bb.h:                                             ; preds = %.lr.ph53, %hlookup.exit.thread
  %i.bi = phi i64 [ undef, %.lr.ph53 ], [ %i.cp, %hlookup.exit.thread ]
  %i.bj = load ptr, ptr %1, align 8, !tbaa !86
  %i.bk = call i32 (ptr, ptr, ...) %i.bj(ptr noundef nonnull %1, ptr noundef nonnull @.str.6, i32 noundef 64, ptr noundef nonnull %i.a, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.b, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k) #8
  %.not36 = icmp eq i32 %i.bk, 0
  br i1 %.not36, label %slookup.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %lhsv = load i64, ptr %i.a, align 16
  %.not38 = icmp eq i64 %lhsv, 23737696997165396
  %i.bl = load i32, ptr %i.f, align 4             ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 0
  %or.cond = select i1 %.not38, i1 %i.bm, i1 false
  br i1 %or.cond, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = load i32, ptr %i.e, align 4, !tbaa !33
  %.not39 = icmp eq i32 %i.bn, 0
end_hunk_0
begin_hunk_1_@imprt:bb.a

bb.q:                                             ; preds = %bb.p
  call void @fftw_assertion_failed(ptr noundef nonnull @.str.7, i32 noundef 890, ptr noundef nonnull @.str.1) #8
  %.pre = load i32, ptr %i.d, align 4, !tbaa !33
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cr = phi i32 [ %.pre, %bb.q ], [ %i.cf, %bb.p ]
  %i.cs = icmp eq i32 %i.cg, %i.cr
  br i1 %i.cs, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @fftw_assertion_failed(ptr noundef nonnull @.str.8, i32 noundef 891, ptr noundef nonnull @.str.1) #8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ct = and i32 %i.cj, 511
  %i.cu = load i32, ptr %i.e, align 4, !tbaa !33
  %i.cv = icmp eq i32 %i.ct, %i.cu
  br i1 %i.cv, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @fftw_assertion_failed(ptr noundef nonnull @.str.9, i32 noundef 892, ptr noundef nonnull @.str.1) #8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cw = call fastcc ptr @htab_lookup(ptr noundef nonnull %i.g, ptr noundef nonnull readonly %i.b, ptr noundef nonnull readonly %2)
  %.not.i45 = icmp eq ptr %i.cw, null
  br i1 %.not.i45, label %hlookup.exit, label %hlookup.exit.thread

hlookup.exit:                                     ; preds = %bb.v
  %i.cx = call fastcc ptr @htab_lookup(ptr noundef nonnull %i.av, ptr noundef nonnull readonly %i.b, ptr noundef nonnull readonly %2)
  %.not40 = icmp eq ptr %i.cx, null
  br i1 %.not40, label %bb.w, label %hlookup.exit.thread

bb.w:                                             ; preds = %hlookup.exit
  call fastcc void @hinsert(ptr noundef nonnull %0, ptr noundef %i.b, ptr noundef %2, i32 noundef %.028)
  br label %hlookup.exit.thread

hlookup.exit.thread:                              ; preds = %bb.v, %bb.w, %hlookup.exit
  %i.cy = load ptr, ptr %1, align 8, !tbaa !86
  %i.cz = call i32 (ptr, ptr, ...) %i.cy(ptr noundef nonnull %1, ptr noundef nonnull @.str.5) #8
  %.not35 = icmp eq i32 %i.cz, 0
  br i1 %.not35, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %hlookup.exit.thread, %.preheader
  call void @fftw_ifree0(ptr noundef %i.an) #8
  br label %bb.x

slookup.exit.thread:                              ; preds = %bb.k, %slookup.exit, %bb.j, %bb.h, %bb.o
  %i.da = load ptr, ptr %i.g, align 8, !tbaa !56
  call void @fftw_ifree0(ptr noundef %i.da) #8
  store ptr %i.an, ptr %i.g, align 8, !tbaa !89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, i64 40, i1 false), !tbaa.struct !87
  br label %bb.x

bb.x:                                             ; preds = %signature_of_configuration.exit, %bb.d, %bb.e, %bb.f, %bb.a, %slookup.exit.thread, %._crit_edge
  %.029 = phi i32 [ 0, %bb.a ], [ 1, %._crit_edge ], [ 0, %slookup.exit.thread ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %signature_of_configuration.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.029
}

declare ptr @fftw_malloc_plain(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @fftw_planner_destroy(ptr noundef initializes((124, 128), (172, 176)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56
  tail call void @fftw_ifree(ptr noundef %i.b) #8
  store ptr null, ptr %i.a, align 8, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 0, ptr %i.c, align 4, !tbaa !58
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !56
  tail call void @fftw_ifree(ptr noundef %i.e) #8
  store ptr null, ptr %i.d, align 8, !tbaa !56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 0, ptr %i.f, align 4, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !34
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !40
  tail call void @fftw_solver_destroy(ptr noundef %i.l) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = load i32, ptr %i.g, align 8, !tbaa !34
  %i.n = zext i32 %i.m to i64
  %i.o = icmp samesign ult i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %bb.b, label %._crit_edge, !llvm.loop !90

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !35
  tail call void @fftw_ifree0(ptr noundef %i.q) #8
  tail call void @fftw_ifree(ptr noundef nonnull %0) #8
  ret void
}

declare void @fftw_solver_destroy(ptr noundef) local_unnamed_addr #3

declare void @fftw_ifree0(ptr noundef) local_unnamed_addr #3

declare void @fftw_ifree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @fftw_mkplan_d(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.d = tail call ptr %i.c(ptr noundef nonnull %0, ptr noundef %1) #8
  tail call void @fftw_problem_destroy(ptr noundef %1) #8
  ret ptr %i.d
}

declare void @fftw_problem_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @fftw_mkplan_f_d(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 4, !tbaa !52 ; 4 uses
  %i.b = xor i32 %4, -1                           ; 2 uses
  %i.c = lshr i64 %.sroa.0.0.copyload, 32
  %i.d = trunc nuw i64 %i.c to i32
  %i.e = and i32 %i.b, 1048575
  %i.f = and i32 %i.e, %i.d
  %i.g = and i64 %.sroa.0.0.copyload, -4503595333451776
  %i.h = trunc i64 %.sroa.0.0.copyload to i32
  %i.i = and i32 %i.h, %i.b
  %i.j = or i32 %i.i, %2
  %i.k = and i32 %i.j, 1048575
  %i.l = zext nneg i32 %i.k to i64
  %i.m = or disjoint i64 %i.g, %i.l
  %i.n = or i32 %3, %2
  %.masked = and i32 %i.n, 1048575
  %i.o = or i32 %i.f, %.masked
  %i.p = zext nneg i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 32
  %i.r = or disjoint i64 %i.q, %i.m
  store i64 %i.r, ptr %i.a, align 4
  %i.s = load ptr, ptr %0, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !60
  %i.v = tail call ptr %i.u(ptr noundef nonnull %0, ptr noundef %1) #8, !inline_history !91
  tail call void @fftw_problem_destroy(ptr noundef %1) #8
  store i64 %.sroa.0.0.copyload, ptr %i.a, align 4, !tbaa !52
  ret ptr %i.v
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @fftw_solver_use(ptr noundef) local_unnamed_addr #3

declare i32 @fftw_hash(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @hinsert(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %2, align 4
  %i.b = and i64 %i.a, 1048576
  %.not = icmp eq i64 %i.b, 0
  %.v = select i1 %.not, i64 160, i64 112
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.v ; 8 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8        ; 3 uses
  %.val.i = load i32, ptr %i.d, align 8, !tbaa !57 ; 4 uses
  %.val44.i = load i32, ptr %1, align 4, !tbaa !33
  %i.e = urem i32 %.val44.i, %.val.i              ; 4 uses
  %i.f = getelementptr i8, ptr %1, i64 4          ; 4 uses
  %.val46.i = load i32, ptr %i.f, align 4, !tbaa !33
  %i.g = add i32 %.val.i, -1
  %i.h = urem i32 %.val46.i, %i.g
  %i.i = add nuw i32 %i.h, 1                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %.not.i.i = icmp eq i32 %3, 4095
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 6 uses
  br i1 %.not.i.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.a, %md5eq.exit.thread.us.i
  %i.n = phi i32 [ %12, %md5eq.exit.thread.us.i ], [ %.val.i, %bb.a ] ; 7 uses
  %.036.us.i = phi i32 [ %i.az, %md5eq.exit.thread.us.i ], [ %i.e, %bb.a ] ; 2 uses
  %.035.us.i = phi ptr [ %.2.us.i, %md5eq.exit.thread.us.i ], [ null, %bb.a ] ; 10 uses
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.p = zext i32 %.036.us.i to i64
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.p ; 6 uses
  %i.r = load i32, ptr %i.j, align 8, !tbaa !61
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.j, align 8, !tbaa !61
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %i.u = load i64, ptr %i.t, align 4              ; 3 uses
  %4 = lshr i64 %i.u, 20
  %i.v = trunc i64 %4 to i32                      ; 2 uses
  %i.w = and i32 %i.v, 2
  %.not.us.i = icmp eq i32 %i.w, 0
  br i1 %.not.us.i, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %.split.us.i
  %i.x = and i32 %i.v, 4
  %.not38.us.i = icmp eq i32 %i.x, 0
  br i1 %.not38.us.i, label %md5eq.exit.thread.us.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load i32, ptr %1, align 4, !tbaa !33
  %i.z = load i32, ptr %i.q, align 4, !tbaa !33
  %i.aa = icmp eq i32 %i.y, %i.z
  br i1 %i.aa, label %bb.d, label %md5eq.exit.thread.us.i

bb.d:                                             ; preds = %bb.c
  %i.ab = load i32, ptr %i.f, align 4, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !33
  %i.ae = icmp eq i32 %i.ab, %i.ad
  br i1 %i.ae, label %bb.e, label %md5eq.exit.thread.us.i

bb.e:                                             ; preds = %bb.d
  %i.af = load i32, ptr %i.k, align 4, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !33
  %i.ai = icmp eq i32 %i.af, %i.ah
  br i1 %i.ai, label %md5eq.exit.us.i, label %md5eq.exit.thread.us.i

md5eq.exit.us.i:                                  ; preds = %bb.e
  %i.aj = load i32, ptr %i.l, align 4, !tbaa !33
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !33
  %.not58.us.i = icmp eq i32 %i.aj, %i.al
  br i1 %.not58.us.i, label %subsumes.exit.us.i.a, label %md5eq.exit.thread.us.i

subsumes.exit.us.i.a:                             ; preds = %md5eq.exit.us.i
  %i.am = load i64, ptr %2, align 4               ; 2 uses
  %5 = trunc i64 %i.am to i32
  %i.an = trunc i64 %i.u to i32
  %i.ao = and i32 %i.an, 1048575
  %i.ap = xor i32 %i.ao, 1048575
  %i.aq = and i32 %i.ap, %5
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %subsumes.exit.us.i, label %md5eq.exit.thread.us.i

subsumes.exit.us.i:                               ; preds = %subsumes.exit.us.i.a
  %6 = lshr i64 %i.am, 23
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 511
  %9 = lshr i64 %i.u, 23
  %10 = trunc i64 %9 to i32
  %11 = and i32 %10, 511
  %.not59.i = icmp samesign ugt i32 %8, %11
  br i1 %.not59.i, label %md5eq.exit.thread.us.i, label %bb.f

bb.f:                                             ; preds = %subsumes.exit.us.i
  %.not41.us.i = icmp eq ptr %.035.us.i, null
  %spec.select.us.i = select i1 %.not41.us.i, ptr %i.q, ptr %.035.us.i
  %i.as = load i32, ptr %i.m, align 4, !tbaa !58
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr %i.m, align 4, !tbaa !58
  %i.au = load i64, ptr %i.t, align 4
  %i.av = and i64 %i.au, -7340033
  %i.aw = or disjoint i64 %i.av, 2097152
  store i64 %i.aw, ptr %i.t, align 4
  %.pre61.i = load i32, ptr %i.d, align 8, !tbaa !57
  br label %md5eq.exit.thread.us.i

md5eq.exit.thread.us.i:                           ; preds = %bb.f, %subsumes.exit.us.i, %subsumes.exit.us.i.a, %md5eq.exit.us.i, %bb.e, %bb.d, %bb.c, %bb.b
  %12 = phi i32 [ %.pre61.i, %bb.f ], [ %i.n, %subsumes.exit.us.i ], [ %i.n, %md5eq.exit.us.i ], [ %i.n, %bb.b ], [ %i.n, %bb.c ], [ %i.n, %bb.e ], [ %i.n, %bb.d ], [ %i.n, %subsumes.exit.us.i.a ] ; 3 uses
  %.2.us.i = phi ptr [ %spec.select.us.i, %bb.f ], [ %.035.us.i, %subsumes.exit.us.i ], [ %.035.us.i, %md5eq.exit.us.i ], [ %.035.us.i, %bb.b ], [ %.035.us.i, %bb.c ], [ %.035.us.i, %bb.e ], [ %.035.us.i, %bb.d ], [ %.035.us.i, %subsumes.exit.us.i.a ] ; 2 uses
  %i.ax = add i32 %.036.us.i, %i.i                ; 2 uses
  %.not.i47.us.i = icmp ult i32 %i.ax, %12
  %i.ay = select i1 %.not.i47.us.i, i32 0, i32 %12
  %i.az = sub i32 %i.ax, %i.ay                    ; 2 uses
  %.not42.us.i = icmp eq i32 %i.az, %i.e
  br i1 %.not42.us.i, label %.thread.i, label %.split.us.i, !llvm.loop !92

.split.i:                                         ; preds = %bb.a, %md5eq.exit.thread.i
  %i.ba = phi i32 [ %i.cs, %md5eq.exit.thread.i ], [ %.val.i, %bb.a ] ; 7 uses
  %.036.i = phi i32 [ %i.cv, %md5eq.exit.thread.i ], [ %i.e, %bb.a ] ; 2 uses
  %.035.i = phi ptr [ %.2.i, %md5eq.exit.thread.i ], [ null, %bb.a ] ; 10 uses
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.bc = zext i32 %.036.i to i64
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %i.bc ; 6 uses
  %i.be = load i32, ptr %i.j, align 8, !tbaa !61
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr %i.j, align 8, !tbaa !61
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 4            ; 3 uses
  %13 = lshr i64 %i.bh, 20
  %i.bi = trunc i64 %13 to i32                    ; 2 uses
  %i.bj = and i32 %i.bi, 2
  %.not.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %.split.i
  %i.bk = and i32 %i.bi, 4
  %.not38.i = icmp eq i32 %i.bk, 0
  br i1 %.not38.i, label %md5eq.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = load i32, ptr %1, align 4, !tbaa !33
  %i.bm = load i32, ptr %i.bd, align 4, !tbaa !33
  %i.bn = icmp eq i32 %i.bl, %i.bm
  br i1 %i.bn, label %bb.i, label %md5eq.exit.thread.i

bb.i:                                             ; preds = %bb.h
  %i.bo = load i32, ptr %i.f, align 4, !tbaa !33
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !33
  %i.br = icmp eq i32 %i.bo, %i.bq
  br i1 %i.br, label %bb.j, label %md5eq.exit.thread.i

bb.j:                                             ; preds = %bb.i
  %i.bs = load i32, ptr %i.k, align 4, !tbaa !33
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !33
  %i.bv = icmp eq i32 %i.bs, %i.bu
  br i1 %i.bv, label %md5eq.exit.i, label %md5eq.exit.thread.i

md5eq.exit.i:                                     ; preds = %bb.j
  %i.bw = load i32, ptr %i.l, align 4, !tbaa !33
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !33
  %.not58.i = icmp eq i32 %i.bw, %i.by
  br i1 %.not58.i, label %bb.k, label %md5eq.exit.thread.i

bb.k:                                             ; preds = %md5eq.exit.i
  %i.bz = load i64, ptr %2, align 4               ; 2 uses
  %i.ca = lshr i64 %i.bz, 32
  %i.cb = trunc nuw i64 %i.ca to i32
  %i.cc = lshr i64 %i.bh, 32
  %i.cd = trunc nuw i64 %i.cc to i32
  %i.ce = and i32 %i.cd, 1048575
  %i.cf = xor i32 %i.ce, 1048575
  %i.cg = and i32 %i.cf, %i.cb
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %subsumes.exit.i, label %md5eq.exit.thread.i

subsumes.exit.i:                                  ; preds = %bb.k
  %14 = trunc i64 %i.bh to i32
  %i.ci = trunc i64 %i.bz to i32
  %i.cj = and i32 %i.ci, 1048575
  %i.ck = xor i32 %i.cj, 1048575
  %i.cl = and i32 %i.ck, %14
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.l, label %md5eq.exit.thread.i

bb.l:                                             ; preds = %subsumes.exit.i
  %.not41.i = icmp eq ptr %.035.i, null
  %spec.select.i = select i1 %.not41.i, ptr %i.bd, ptr %.035.i
  %i.cn = load i32, ptr %i.m, align 4, !tbaa !58
  %i.co = add i32 %i.cn, -1
  store i32 %i.co, ptr %i.m, align 4, !tbaa !58
  %i.cp = load i64, ptr %i.bg, align 4
  %i.cq = and i64 %i.cp, -7340033
  %i.cr = or disjoint i64 %i.cq, 2097152
  store i64 %i.cr, ptr %i.bg, align 4
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !57
  br label %md5eq.exit.thread.i

md5eq.exit.thread.i:                              ; preds = %bb.l, %subsumes.exit.i, %bb.k, %md5eq.exit.i, %bb.j, %bb.i, %bb.h, %bb.g
  %i.cs = phi i32 [ %.pre.i, %bb.l ], [ %i.ba, %subsumes.exit.i ], [ %i.ba, %md5eq.exit.i ], [ %i.ba, %bb.g ], [ %i.ba, %bb.h ], [ %i.ba, %bb.j ], [ %i.ba, %bb.i ], [ %i.ba, %bb.k ] ; 3 uses
  %.2.i = phi ptr [ %spec.select.i, %bb.l ], [ %.035.i, %subsumes.exit.i ], [ %.035.i, %md5eq.exit.i ], [ %.035.i, %bb.g ], [ %.035.i, %bb.h ], [ %.035.i, %bb.j ], [ %.035.i, %bb.i ], [ %.035.i, %bb.k ] ; 2 uses
  %i.ct = add i32 %.036.i, %i.i                   ; 2 uses
  %.not.i47.i = icmp ult i32 %i.ct, %i.cs
  %i.cu = select i1 %.not.i47.i, i32 0, i32 %i.cs
  %i.cv = sub i32 %i.ct, %i.cu                    ; 2 uses
  %.not42.i = icmp eq i32 %i.cv, %i.e
  br i1 %.not42.i, label %.thread.i, label %.split.i, !llvm.loop !92

.thread.i:                                        ; preds = %md5eq.exit.thread.i, %.split.i, %md5eq.exit.thread.us.i, %.split.us.i
  %.us-phi.i = phi ptr [ %.035.us.i, %.split.us.i ], [ %.2.us.i, %md5eq.exit.thread.us.i ], [ %.035.i, %.split.i ], [ %.2.i, %md5eq.exit.thread.i ] ; 6 uses
  %.not43.i = icmp eq ptr %.us-phi.i, null
  br i1 %.not43.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.thread.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 28 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !62
  %i.cy = add nsw i32 %i.cx, 1
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !62
  %i.cz = load i32, ptr %i.m, align 4, !tbaa !58
  %i.da = add i32 %i.cz, 1
  store i32 %i.da, ptr %i.m, align 4, !tbaa !58
  %i.db = load i64, ptr %2, align 4
  %i.dc = and i64 %i.db, 4503595332403200         ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 16 ; 4 uses
  %i.de = load i64, ptr %i.dd, align 4            ; 2 uses
  %i.df = and i64 %i.de, -4503595332403201
  %i.dg = or disjoint i64 %i.df, %i.dc            ; 2 uses
  store i64 %i.dg, ptr %i.dd, align 4
  %i.dh = load i64, ptr %2, align 4
  %i.di = and i64 %i.dh, 1048575                  ; 2 uses
  %i.dj = and i64 %i.dg, -1048576
  %i.dk = or disjoint i64 %i.dj, %i.di
  store i64 %i.dk, ptr %i.dd, align 4
  %i.dl = load i64, ptr %2, align 4
  %i.dm = and i64 %i.dl, 4286578688
  %i.dn = and i64 %i.de, 1048576
  %i.do = and i32 %3, 4095
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = shl nuw i64 %i.dp, 52
  %i.dr = or disjoint i64 %i.dn, %i.dq
  %i.ds = or disjoint i64 %i.dm, %i.dr
  %i.dt = or disjoint i64 %i.ds, %i.dc
  %i.du = or disjoint i64 %i.dt, %i.di
  %i.dv = or disjoint i64 %i.du, 6291456
  store i64 %i.dv, ptr %i.dd, align 4
  %i.dw = icmp ult i32 %3, 4096
  br i1 %i.dw, label %fill_slot.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @fftw_assertion_failed(ptr noundef nonnull @.str, i32 noundef 261, ptr noundef nonnull @.str.1) #8
  br label %fill_slot.exit.i

fill_slot.exit.i:                                 ; preds = %bb.n, %bb.m
  %i.dx = load i32, ptr %1, align 4, !tbaa !33
  store i32 %i.dx, ptr %.us-phi.i, align 4, !tbaa !33
  %i.dy = load i32, ptr %i.f, align 4, !tbaa !33
  %i.dz = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 4
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !33
  %i.ea = load i32, ptr %i.k, align 4, !tbaa !33
  %i.eb = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 8
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !33
  %i.ec = load i32, ptr %i.l, align 4, !tbaa !33
  %i.ed = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 12
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !33
  br label %htab_insert.exit

bb.o:                                             ; preds = %.thread.i
  tail call fastcc void @hgrow(ptr noundef nonnull %i.c)
  tail call fastcc void @hinsert0(ptr noundef nonnull %i.c, ptr noundef nonnull readonly %1, ptr noundef nonnull readonly %2, i32 noundef %3)
  br label %htab_insert.exit

htab_insert.exit:                                 ; preds = %fill_slot.exit.i, %bb.o
  ret void
}

declare void @fftw_plan_destroy_internal(ptr noundef) local_unnamed_addr #3

declare void @fftw_md5begin(ptr noundef) local_unnamed_addr #3

declare void @fftw_md5unsigned(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @fftw_md5int(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @fftw_md5end(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @htab_lookup(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load i32, ptr %i.a, align 8, !tbaa !57  ; 4 uses
  %.val38 = load i32, ptr %1, align 4, !tbaa !33
  %i.b = urem i32 %.val38, %.val                  ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val40 = load i32, ptr %i.c, align 4, !tbaa !33
  %i.d = add i32 %.val, -1
  %i.e = urem i32 %.val40, %i.d
  %i.f = add nuw i32 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !94
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !94
  %i.j = load ptr, ptr %0, align 8, !tbaa !56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.pre = load i32, ptr %i.k, align 8, !tbaa !95
  br label %bb.b

bb.b:                                             ; preds = %md5eq.exit.thread, %bb.a
  %i.n = phi i32 [ %.pre, %bb.a ], [ %i.q, %md5eq.exit.thread ]
  %.030 = phi i32 [ %i.b, %bb.a ], [ %i.bo, %md5eq.exit.thread ] ; 2 uses
  %.029 = phi ptr [ null, %bb.a ], [ %.1, %md5eq.exit.thread ] ; 13 uses
  %i.o = zext i32 %.030 to i64
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.o ; 6 uses
  %i.q = add nsw i32 %i.n, 1                      ; 2 uses
  store i32 %i.q, ptr %i.k, align 8, !tbaa !95
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = load i64, ptr %i.r, align 4              ; 7 uses
  %3 = lshr i64 %i.s, 20
  %i.t = trunc i64 %3 to i32                      ; 2 uses
  %i.u = and i32 %i.t, 2
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = and i32 %i.t, 4
  %.not32 = icmp eq i32 %i.v, 0
  br i1 %.not32, label %md5eq.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %1, align 4, !tbaa !33
  %i.x = load i32, ptr %i.p, align 4, !tbaa !33
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %bb.e, label %md5eq.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr %i.c, align 4, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !33
  %i.ac = icmp eq i32 %i.z, %i.ab
  br i1 %i.ac, label %bb.f, label %md5eq.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ad = load i32, ptr %i.l, align 4, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !33
  %i.ag = icmp eq i32 %i.ad, %i.af
  br i1 %i.ag, label %md5eq.exit, label %md5eq.exit.thread

md5eq.exit:                                       ; preds = %bb.f
  %i.ah = load i32, ptr %i.m, align 4, !tbaa !33
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !33
  %.not52 = icmp eq i32 %i.ah, %i.aj
  br i1 %.not52, label %bb.g, label %md5eq.exit.thread

bb.g:                                             ; preds = %md5eq.exit
  %.not.i = icmp ugt i64 %i.s, -4503599627370497
  br i1 %.not.i, label %.split.a, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = lshr i64 %i.s, 32
  %i.al = trunc nuw i64 %i.ak to i32
  %i.am = load i64, ptr %2, align 4               ; 2 uses
  %i.an = lshr i64 %i.am, 32
  %i.ao = trunc nuw i64 %i.an to i32
  %i.ap = and i32 %i.ao, 1048575
  %i.aq = xor i32 %i.ap, 1048575
  %i.ar = and i32 %i.aq, %i.al
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %.split, label %md5eq.exit.thread

.split:                                           ; preds = %bb.h
  %4 = trunc i64 %i.am to i32
  %5 = trunc i64 %i.s to i32
  %6 = and i32 %5, 1048575
  %7 = xor i32 %6, 1048575
  %8 = and i32 %7, %4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %bb.i, label %md5eq.exit.thread

.split.a:                                         ; preds = %bb.g
  %10 = trunc i64 %i.s to i32
  %i.at = load i64, ptr %2, align 4               ; 2 uses
  %i.au = trunc i64 %i.at to i32
  %i.av = and i32 %i.au, 1048575
  %i.aw = xor i32 %i.av, 1048575
  %i.ax = and i32 %i.aw, %10
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %subsumes.exit, label %md5eq.exit.thread

subsumes.exit:                                    ; preds = %.split.a
  %11 = lshr i64 %i.s, 23
  %i.az = trunc i64 %11 to i32
  %i.ba = and i32 %i.az, 511
  %12 = lshr i64 %i.at, 23
  %13 = trunc i64 %12 to i32
  %i.bb = and i32 %13, 511
  %.not55 = icmp samesign ugt i32 %i.ba, %i.bb
  br i1 %.not55, label %md5eq.exit.thread, label %bb.i

bb.i:                                             ; preds = %.split, %subsumes.exit
  %.not35 = icmp eq ptr %.029, null
  br i1 %.not35, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = lshr i64 %i.s, 32
  %i.bd = trunc nuw i64 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %.029, i64 16
  %i.bf = load i64, ptr %i.be, align 4
  %i.bg = lshr i64 %i.bf, 32
  %i.bh = trunc nuw i64 %i.bg to i32
  %i.bi = and i32 %i.bh, 1048575
  %i.bj = xor i32 %i.bi, 1048575
  %i.bk = and i32 %i.bj, %i.bd
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.k, label %md5eq.exit.thread

bb.k:                                             ; preds = %bb.j, %bb.i
  br label %md5eq.exit.thread

md5eq.exit.thread:                                ; preds = %.split, %.split.a, %bb.h, %bb.d, %bb.e, %bb.f, %bb.j, %bb.k, %subsumes.exit, %md5eq.exit, %bb.c
  %.1 = phi ptr [ %i.p, %bb.k ], [ %.029, %bb.j ], [ %.029, %subsumes.exit ], [ %.029, %md5eq.exit ], [ %.029, %bb.c ], [ %.029, %bb.d ], [ %.029, %bb.f ], [ %.029, %bb.e ], [ %.029, %bb.h ], [ %.029, %.split.a ], [ %.029, %.split ] ; 2 uses
  %i.bm = add i32 %i.f, %.030                     ; 2 uses
  %.not.i41 = icmp ult i32 %i.bm, %.val
  %i.bn = select i1 %.not.i41, i32 0, i32 %.val
  %i.bo = sub i32 %i.bm, %i.bn                    ; 2 uses
  %.not36 = icmp eq i32 %i.bo, %i.b
  br i1 %.not36, label %.thread, label %bb.b, !llvm.loop !93

.thread:                                          ; preds = %bb.b, %md5eq.exit.thread
  %.251 = phi ptr [ %.1, %md5eq.exit.thread ], [ %.029, %bb.b ] ; 2 uses
  %.not37 = icmp eq ptr %.251, null
  br i1 %.not37, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.thread
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !96
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !96
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread
  ret ptr %.251
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @search0(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 7 uses
  %i.b = load i64, ptr %i.a, align 4
  %i.c = and i64 %i.b, 8589934592
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !48
  %.not10.i = icmp eq i32 %i.e, 0
  br i1 %.not10.i, label %bb.c, label %timeout_p.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !32
  %i.h = fcmp ult double %i.g, 0.000000e+00
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.l = load i64, ptr %i.k, align 8
  %i.m = tail call double @fftw_elapsed_since(ptr noundef nonnull %0, ptr noundef %1, i64 %i.j, i64 %i.l) #8
  %i.n = load double, ptr %i.f, align 8, !tbaa !32
  %i.o = fcmp ult double %i.m, %i.n
  br i1 %i.o, label %bb.e, label %timeout_p.exit

timeout_p.exit:                                   ; preds = %bb.d
  store i32 1, ptr %i.d, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 252
  store i32 1, ptr %i.p, align 4, !tbaa !31
  br label %timeout_p.exit.thread

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 6 uses
  store i32 0, ptr %i.q, align 4, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.s = load ptr, ptr %1, align 8, !tbaa !50
  %i.t = load i32, ptr %i.s, align 8, !tbaa !53
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.0159 = load i32, ptr %i.v, align 4, !tbaa !33 ; 2 uses
  %i.ah = icmp sgt i32 %.0159, -1
  br i1 %i.ah, label %.lr.ph, label %timeout_p.exit.thread

.lr.ph:                                           ; preds = %bb.e, %bb.af
  %.0163 = phi i32 [ %.0, %bb.af ], [ %.0159, %bb.e ]
  %.052162 = phi i32 [ %.4106, %bb.af ], [ 1, %bb.e ] ; 3 uses
  %.056160 = phi ptr [ %.359104, %bb.af ], [ null, %bb.e ] ; 14 uses
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.aj = zext nneg i32 %.0163 to i64
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %i.aj ; 4 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !40 ; 2 uses
  %.val = load i64, ptr %3, align 4, !tbaa !52
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 4, !tbaa !52 ; 2 uses
  %i.am = load i32, ptr %i.x, align 8, !tbaa !30
  %i.an = and i64 %.val, -4286578689
  store i64 %i.an, ptr %i.a, align 4
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !45
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !54
  %i.ar = tail call ptr %i.aq(ptr noundef nonnull %i.al, ptr noundef nonnull %1, ptr noundef nonnull %0) #8, !inline_history !0 ; 15 uses
  store i32 %i.am, ptr %i.x, align 8, !tbaa !30
  store i64 %.sroa.0.0.copyload.i, ptr %i.a, align 4, !tbaa !52
  %i.as = load i32, ptr %i.q, align 4, !tbaa !31
  %.not67 = icmp eq i32 %i.as, 0
  br i1 %.not67, label %bb.j, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.at = and i64 %.sroa.0.0.copyload.i, 8589934592
  %.not.i75 = icmp eq i64 %i.at, 0
  br i1 %.not.i75, label %bb.g, label %timeout_p.exit80.thread96

bb.g:                                             ; preds = %bb.f
  %i.au = load i32, ptr %i.y, align 8, !tbaa !48
  %.not10.i79 = icmp eq i32 %i.au, 0
  br i1 %.not10.i79, label %bb.h, label %.thread123

bb.h:                                             ; preds = %bb.g
  %i.av = load double, ptr %i.z, align 8, !tbaa !32
  %i.aw = fcmp ult double %i.av, 0.000000e+00
  br i1 %i.aw, label %timeout_p.exit80.thread96, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = load i64, ptr %i.aa, align 8
  %i.ay = load i64, ptr %i.ab, align 8
  %i.az = tail call double @fftw_elapsed_since(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 %i.ax, i64 %i.ay) #8
  %i.ba = load double, ptr %i.z, align 8, !tbaa !32
  %i.bb = fcmp ult double %i.az, %i.ba
  br i1 %i.bb, label %timeout_p.exit80.thread96, label %timeout_p.exit80

timeout_p.exit80.thread96:                        ; preds = %bb.h, %bb.i, %bb.f
  store i32 0, ptr %i.q, align 4, !tbaa !31
  br label %bb.j

timeout_p.exit80:                                 ; preds = %bb.i
  store i32 1, ptr %i.y, align 8, !tbaa !48
  store i32 1, ptr %i.q, align 4, !tbaa !31
  br label %.thread123

.thread123:                                       ; preds = %bb.g, %timeout_p.exit80
  tail call void @fftw_plan_destroy_internal(ptr noundef %i.ar) #8
  tail call void @fftw_plan_destroy_internal(ptr noundef %.056160) #8
  br label %timeout_p.exit.thread

bb.j:                                             ; preds = %timeout_p.exit80.thread96, %.lr.ph
  %.not69 = icmp eq ptr %i.ar, null
  br i1 %.not69, label %bb.af, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 52
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !99
  %.not70 = icmp eq ptr %.056160, null
  br i1 %.not70, label %bb.ad, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not71 = icmp eq i32 %.052162, 0
  br i1 %.not71, label %evaluate_plan.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = load i64, ptr %i.a, align 4             ; 2 uses
  %i.bf = and i64 %i.be, 12884901888
  %or.cond.not.i = icmp eq i64 %i.bf, 4294967296
  br i1 %or.cond.not.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %.056160, i64 40
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !100
  %i.bi = fcmp oeq double %i.bh, 0.000000e+00
  br i1 %i.bi, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bj = load i32, ptr %i.ac, align 8, !tbaa !28
  %i.bk = add nsw i32 %i.bj, 1
  store i32 %i.bk, ptr %i.ac, align 8, !tbaa !28
  %i.bl = and i64 %i.be, 8589934592
  %.not25.i = icmp eq i64 %i.bl, 0
  br i1 %.not25.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.r, %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %.056160, i64 8
  %i.bn = load <2 x double>, ptr %i.bm, align 8, !tbaa !12
  %i.bo = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.bn)
  %i.bp = getelementptr inbounds nuw i8, ptr %.056160, i64 24
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !16
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bq, double 2.000000e+00, double %i.bo)
  %i.bs = getelementptr inbounds nuw i8, ptr %.056160, i64 32
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !17
  %i.bu = fadd double %i.br, %i.bt                ; 2 uses
  %i.bv = load ptr, ptr %i.ae, align 8, !tbaa !26 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i, label %fftw_iestimate_cost.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bw = tail call double %i.bv(ptr noundef nonnull %1, double noundef %i.bu, i32 noundef 1) #8, !inline_history !97
  br label %fftw_iestimate_cost.exit.i

fftw_iestimate_cost.exit.i:                       ; preds = %bb.q, %bb.p
  %.0.i.i = phi double [ %i.bw, %bb.q ], [ %i.bu, %bb.p ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.056160, i64 40
  store double %.0.i.i, ptr %i.bx, align 8, !tbaa !100
  %i.by = load double, ptr %i.af, align 8, !tbaa !101
end_hunk_1
