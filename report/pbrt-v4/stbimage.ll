Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/stbimage?download=true
inline.NumInlined: 826
inline.NumDeleted: 152
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 38
begin_hunk_0_@stbi_load_gif_from_memory:bb.a
  br i1 %.not11.i108.i, label %_ZL28stbi__load_gif_main_outofmemP9stbi__gifPhPPi.exit109.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.cu) #40
  br label %_ZL28stbi__load_gif_main_outofmemP9stbi__gifPhPPi.exit109.i

_ZL28stbi__load_gif_main_outofmemP9stbi__gifPhPPi.exit109.i: ; preds = %bb.t, %bb.s
  %i.cv = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.8, ptr %i.cv, align 8, !tbaa !19
  br label %.critedge.i

._crit_edge.i:                                    ; preds = %bb.o, %bb.j, %bb.i, %bb.d
  %.075.lcssa.i = phi i32 [ 0, %bb.d ], [ 1, %bb.i ], [ %i.ae, %bb.j ], [ %i.ay, %bb.o ] ; 2 uses
  %.072.lcssa.i = phi ptr [ null, %bb.d ], [ %i.u, %bb.i ], [ %i.ah, %bb.j ], [ %i.bb, %bb.o ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !48
  call void @free(ptr noundef %i.cx) #40
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !49
  call void @free(ptr noundef %i.cz) #40
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !50
  call void @free(ptr noundef %i.db) #40
  %i.dc = and i32 %7, -5
  %or.cond.not.i = icmp eq i32 %i.dc, 0
  br i1 %or.cond.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i
  %i.dd = load i32, ptr %8, align 8, !tbaa !44
  %i.de = mul nsw i32 %i.dd, %.075.lcssa.i
  %i.df = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !45
  %i.dh = call fastcc noundef ptr @_ZL20stbi__convert_formatPhiijj(ptr noundef %.072.lcssa.i, i32 noundef 4, i32 noundef %7, i32 noundef %i.de, i32 noundef %i.dg)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i
  %.4.i = phi ptr [ %i.dh, %bb.u ], [ %.072.lcssa.i, %._crit_edge.i ]
  store i32 %.075.lcssa.i, ptr %5, align 4, !tbaa !20
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.v, %_ZL28stbi__load_gif_main_outofmemP9stbi__gifPhPPi.exit109.i, %_ZL28stbi__load_gif_main_outofmemP9stbi__gifPhPPi.exit105.i, %.thread.i, %_ZL28stbi__load_gif_main_outofmemP9stbi__gifPhPPi.exit.i
  %.6.i = phi ptr [ %.4.i, %bb.v ], [ null, %_ZL28stbi__load_gif_main_outofmemP9stbi__gifPhPPi.exit105.i ], [ null, %_ZL28stbi__load_gif_main_outofmemP9stbi__gifPhPPi.exit109.i ], [ null, %_ZL28stbi__load_gif_main_outofmemP9stbi__gifPhPPi.exit.i ], [ null, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  br label %_ZL19stbi__load_gif_mainP13stbi__contextPPiS1_S1_S1_S1_i.exit

bb.w:                                             ; preds = %bb.a
  %i.di = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.31, ptr %i.di, align 8, !tbaa !19
  br label %_ZL19stbi__load_gif_mainP13stbi__contextPPiS1_S1_S1_S1_i.exit

_ZL19stbi__load_gif_mainP13stbi__contextPPiS1_S1_S1_S1_i.exit: ; preds = %.critedge.i, %bb.w
  %.7.i = phi ptr [ %.6.i, %.critedge.i ], [ null, %bb.w ] ; 2 uses
  %i.dj = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZL33stbi__vertically_flip_on_load_set)
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !20
  %.not = icmp eq i32 %i.dk, 0
  %i.dl = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZL35stbi__vertically_flip_on_load_local)
  %i.dm = load i32, ptr %i.dl, align 4
  %i.dn = load i32, ptr @_ZL36stbi__vertically_flip_on_load_global, align 4
  %i.do = select i1 %.not, i32 %i.dn, i32 %i.dm
  %.not13 = icmp eq i32 %i.do, 0
  br i1 %.not13, label %_ZL26stbi__vertical_flip_slicesPviiii.exit, label %bb.x

bb.x:                                             ; preds = %_ZL19stbi__load_gif_mainP13stbi__contextPPiS1_S1_S1_S1_i.exit
  %i.dp = load i32, ptr %4, align 4, !tbaa !20    ; 5 uses
  %i.dq = load i32, ptr %5, align 4, !tbaa !20    ; 2 uses
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %.lr.ph.i, label %_ZL26stbi__vertical_flip_slicesPviiii.exit

.lr.ph.i:                                         ; preds = %bb.x
  %i.ds = load i32, ptr %6, align 4, !tbaa !20    ; 2 uses
  %i.dt = load i32, ptr %3, align 4, !tbaa !20    ; 2 uses
  %i.du = mul i32 %i.ds, %i.dp
  %i.dv = mul i32 %i.du, %i.dt
  %i.dw = sext i32 %i.dt to i64
  %i.dx = sext i32 %i.ds to i64
  %i.dy = mul nsw i64 %i.dw, %i.dx                ; 10 uses
  %i.dz = ashr i32 %i.dp, 1                       ; 4 uses
  %i.ea = icmp slt i32 %i.dz, 1
  %.not32.i.i = icmp eq i64 %i.dy, 0
  %or.cond.i.i = select i1 %i.ea, i1 true, i1 %.not32.i.i
  %wide.trip.count.i.i = zext i32 %i.dz to i64    ; 2 uses
  %i.eb = sext i32 %i.dv to i64
  br i1 %or.cond.i.i, label %_ZL26stbi__vertical_flip_slicesPviiii.exit, label %.lr.ph.preheader.i.i.preheader

.lr.ph.preheader.i.i.preheader:                   ; preds = %.lr.ph.i
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.ec = icmp eq i32 %i.dz, 1
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod96 = trunc i32 %i.dz to i1
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.preheader.i.i.preheader, %_ZL19stbi__vertical_flipPviii.exit.loopexit.i
  %.014.i = phi ptr [ %i.fn, %_ZL19stbi__vertical_flipPviii.exit.loopexit.i ], [ %.7.i, %.lr.ph.preheader.i.i.preheader ] ; 7 uses
  %.01213.i = phi i32 [ %i.fo, %_ZL19stbi__vertical_flipPviii.exit.loopexit.i ], [ 0, %.lr.ph.preheader.i.i.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br i1 %i.ec, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.preheader.i.i, %._crit_edge.i.i.1
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %._crit_edge.i.i.1 ], [ 0, %.lr.ph.preheader.i.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %._crit_edge.i.i.1 ], [ 0, %.lr.ph.preheader.i.i ]
  %i.ed = mul i64 %indvars.iv.i.i, %i.dy
  %i.ee = getelementptr inbounds nuw i8, ptr %.014.i, i64 %i.ed
  %i.ef = trunc i64 %indvars.iv.i.i to i32
  %i.eg = xor i32 %i.ef, -1
  %i.eh = add i32 %i.dp, %i.eg
  %i.ei = sext i32 %i.eh to i64
  %i.ej = mul i64 %i.dy, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %.014.i, i64 %i.ej
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph.i.i
  %.02935.i.i = phi i64 [ %i.dy, %.lr.ph.i.i ], [ %i.eo, %bb.y ] ; 2 uses
  %.03034.i.i = phi ptr [ %i.ek, %.lr.ph.i.i ], [ %i.en, %bb.y ] ; 3 uses
  %.03133.i.i = phi ptr [ %i.ee, %.lr.ph.i.i ], [ %i.em, %bb.y ] ; 3 uses
  %i.el = call i64 @llvm.umin.i64(i64 %.02935.i.i, i64 2048) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.03133.i.i, i64 %i.el, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03133.i.i, ptr align 1 %.03034.i.i, i64 %i.el, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03034.i.i, ptr nonnull align 16 %i.a, i64 %i.el, i1 false)
  %i.em = getelementptr inbounds nuw i8, ptr %.03133.i.i, i64 %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %.03034.i.i, i64 %i.el
  %i.eo = sub nuw i64 %.02935.i.i, %i.el          ; 2 uses
  %.not.i.i = icmp eq i64 %i.eo, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.y, !llvm.loop !1

._crit_edge.i.i:                                  ; preds = %bb.y
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ep = mul i64 %indvars.iv.next.i.i, %i.dy
  %i.eq = getelementptr inbounds nuw i8, ptr %.014.i, i64 %i.ep
  %i.er = trunc i64 %indvars.iv.next.i.i to i32
  %i.es = xor i32 %i.er, -1
  %i.et = add i32 %i.dp, %i.es
  %i.eu = sext i32 %i.et to i64
  %i.ev = mul i64 %i.dy, %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %.014.i, i64 %i.ev
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %._crit_edge.i.i
  %.02935.i.i.1 = phi i64 [ %i.dy, %._crit_edge.i.i ], [ %i.fa, %bb.z ] ; 2 uses
  %.03034.i.i.1 = phi ptr [ %i.ew, %._crit_edge.i.i ], [ %i.ez, %bb.z ] ; 3 uses
  %.03133.i.i.1 = phi ptr [ %i.eq, %._crit_edge.i.i ], [ %i.ey, %bb.z ] ; 3 uses
  %i.ex = call i64 @llvm.umin.i64(i64 %.02935.i.i.1, i64 2048) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.03133.i.i.1, i64 %i.ex, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03133.i.i.1, ptr align 1 %.03034.i.i.1, i64 %i.ex, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03034.i.i.1, ptr nonnull align 16 %i.a, i64 %i.ex, i1 false)
  %i.ey = getelementptr inbounds nuw i8, ptr %.03133.i.i.1, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %.03034.i.i.1, i64 %i.ex
  %i.fa = sub nuw i64 %.02935.i.i.1, %i.ex        ; 2 uses
  %.not.i.i.1 = icmp eq i64 %i.fa, 0
  br i1 %.not.i.i.1, label %._crit_edge.i.i.1, label %bb.z, !llvm.loop !1

._crit_edge.i.i.1:                                ; preds = %bb.z
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZL19stbi__vertical_flipPviii.exit.loopexit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !2

_ZL19stbi__vertical_flipPviii.exit.loopexit.i.unr-lcssa: ; preds = %._crit_edge.i.i.1
  br i1 %lcmp.mod.not, label %_ZL19stbi__vertical_flipPviii.exit.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZL19stbi__vertical_flipPviii.exit.loopexit.i.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.1, %_ZL19stbi__vertical_flipPviii.exit.loopexit.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod96)
  %i.fb = mul i64 %indvars.iv.i.i.epil.init, %i.dy
  %i.fc = getelementptr inbounds nuw i8, ptr %.014.i, i64 %i.fb
  %i.fd = trunc i64 %indvars.iv.i.i.epil.init to i32
  %i.fe = xor i32 %i.fd, -1
  %i.ff = add i32 %i.dp, %i.fe
  %i.fg = sext i32 %i.ff to i64
  %i.fh = mul i64 %i.dy, %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %.014.i, i64 %i.fh
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i.i.epil.preheader
  %.02935.i.i.epil = phi i64 [ %i.dy, %.lr.ph.i.i.epil.preheader ], [ %i.fm, %bb.aa ] ; 2 uses
  %.03034.i.i.epil = phi ptr [ %i.fi, %.lr.ph.i.i.epil.preheader ], [ %i.fl, %bb.aa ] ; 3 uses
  %.03133.i.i.epil = phi ptr [ %i.fc, %.lr.ph.i.i.epil.preheader ], [ %i.fk, %bb.aa ] ; 3 uses
  %i.fj = call i64 @llvm.umin.i64(i64 %.02935.i.i.epil, i64 2048) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.03133.i.i.epil, i64 %i.fj, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03133.i.i.epil, ptr align 1 %.03034.i.i.epil, i64 %i.fj, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03034.i.i.epil, ptr nonnull align 16 %i.a, i64 %i.fj, i1 false)
  %i.fk = getelementptr inbounds nuw i8, ptr %.03133.i.i.epil, i64 %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %.03034.i.i.epil, i64 %i.fj
  %i.fm = sub nuw i64 %.02935.i.i.epil, %i.fj     ; 2 uses
  %.not.i.i.epil = icmp eq i64 %i.fm, 0
  br i1 %.not.i.i.epil, label %_ZL19stbi__vertical_flipPviii.exit.loopexit.i, label %bb.aa, !llvm.loop !1

_ZL19stbi__vertical_flipPviii.exit.loopexit.i:    ; preds = %bb.aa, %_ZL19stbi__vertical_flipPviii.exit.loopexit.i.unr-lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fn = getelementptr inbounds i8, ptr %.014.i, i64 %i.eb
  %i.fo = add nuw nsw i32 %.01213.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.fo, %i.dq
  br i1 %exitcond.not.i, label %_ZL26stbi__vertical_flip_slicesPviiii.exit, label %.lr.ph.preheader.i.i, !llvm.loop !140

_ZL26stbi__vertical_flip_slicesPviiii.exit:       ; preds = %_ZL19stbi__vertical_flipPviii.exit.loopexit.i, %.lr.ph.i, %bb.x, %_ZL19stbi__load_gif_mainP13stbi__contextPPiS1_S1_S1_S1_i.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  ret ptr %.7.i
}

; Function Attrs: mustprogress uwtable
define dso_local noalias noundef ptr @stbi_loadf_from_memory(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.a, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 0, ptr %i.b, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 184
  store i32 0, ptr %i.c, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 208
  store ptr %0, ptr %i.d, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 192
  store ptr %0, ptr %i.e, align 8, !tbaa !30
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %i.g, ptr %i.h, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %i.g, ptr %i.i, align 8, !tbaa !33
  %i.j = call fastcc noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  ret ptr %i.j
}

; Function Attrs: mustprogress uwtable
define internal fastcc noalias noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) unnamed_addr #5 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 8 uses
  %i.b = tail call fastcc noundef i32 @_ZL14stbi__hdr_testP13stbi__context(ptr noundef %0)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef ptr @_ZL14stbi__hdr_loadP13stbi__contextPiS1_S1_iP17stbi__result_info(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 9 uses
  %.not30 = icmp eq ptr %i.c, null
  br i1 %.not30, label %_ZL23stbi__float_postprocessPfPiS0_S0_i.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZL33stbi__vertically_flip_on_load_set)
  %i.e = load i32, ptr %i.d, align 4, !tbaa !20
  %.not.i = icmp eq i32 %i.e, 0
  %i.f = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZL35stbi__vertically_flip_on_load_local)
  %i.g = load i32, ptr %i.f, align 4
  %i.h = load i32, ptr @_ZL36stbi__vertically_flip_on_load_global, align 4
  %i.i = select i1 %.not.i, i32 %i.h, i32 %i.g
  %.not9.i = icmp eq i32 %i.i, 0
  br i1 %.not9.i, label %_ZL23stbi__float_postprocessPfPiS0_S0_i.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not10.i = icmp eq i32 %4, 0
  br i1 %.not10.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %3, align 4, !tbaa !20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = phi i32 [ %i.j, %bb.e ], [ %4, %bb.d ]
  %i.l = load i32, ptr %1, align 4, !tbaa !20
  %i.m = load i32, ptr %2, align 4, !tbaa !20     ; 4 uses
  %i.n = shl i32 %i.k, 2
  %i.o = sext i32 %i.l to i64
  %i.p = sext i32 %i.n to i64
  %i.q = mul nsw i64 %i.p, %i.o                   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.r = ashr i32 %i.m, 1                         ; 4 uses
  %i.s = icmp slt i32 %i.r, 1
  %.not32.i.i = icmp eq i64 %i.q, 0
  %or.cond.i.i = select i1 %i.s, i1 true, i1 %.not32.i.i
  br i1 %or.cond.i.i, label %_ZL19stbi__vertical_flipPviii.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %wide.trip.count.i.i = zext nneg i32 %i.r to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.t = icmp eq i32 %i.r, 1
  br i1 %i.t, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i.i.1, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.1, %._crit_edge.i.i.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %._crit_edge.i.i.1 ]
  %i.u = mul i64 %indvars.iv.i.i, %i.q
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.u
  %i.w = trunc i64 %indvars.iv.i.i to i32
  %i.x = xor i32 %i.w, -1
  %i.y = add i32 %i.m, %i.x
  %i.z = sext i32 %i.y to i64
  %i.aa = mul i64 %i.q, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aa
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.02935.i.i = phi i64 [ %i.q, %.lr.ph.i.i ], [ %i.af, %bb.g ] ; 2 uses
  %.03034.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %i.ae, %bb.g ] ; 3 uses
  %.03133.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %i.ad, %bb.g ] ; 3 uses
  %i.ac = tail call i64 @llvm.umin.i64(i64 %.02935.i.i, i64 2048) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.03133.i.i, i64 %i.ac, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03133.i.i, ptr align 1 %.03034.i.i, i64 %i.ac, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03034.i.i, ptr nonnull align 16 %i.a, i64 %i.ac, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.03133.i.i, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %.03034.i.i, i64 %i.ac
  %i.af = sub nuw i64 %.02935.i.i, %i.ac          ; 2 uses
  %.not.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.g, !llvm.loop !1

._crit_edge.i.i:                                  ; preds = %bb.g
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ag = mul i64 %indvars.iv.next.i.i, %i.q
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ag
  %i.ai = trunc i64 %indvars.iv.next.i.i to i32
  %i.aj = xor i32 %i.ai, -1
  %i.ak = add i32 %i.m, %i.aj
  %i.al = sext i32 %i.ak to i64
  %i.am = mul i64 %i.q, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.am
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %._crit_edge.i.i
  %.02935.i.i.1 = phi i64 [ %i.q, %._crit_edge.i.i ], [ %i.ar, %bb.h ] ; 2 uses
  %.03034.i.i.1 = phi ptr [ %i.an, %._crit_edge.i.i ], [ %i.aq, %bb.h ] ; 3 uses
  %.03133.i.i.1 = phi ptr [ %i.ah, %._crit_edge.i.i ], [ %i.ap, %bb.h ] ; 3 uses
  %i.ao = tail call i64 @llvm.umin.i64(i64 %.02935.i.i.1, i64 2048) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.03133.i.i.1, i64 %i.ao, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03133.i.i.1, ptr align 1 %.03034.i.i.1, i64 %i.ao, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03034.i.i.1, ptr nonnull align 16 %i.a, i64 %i.ao, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.03133.i.i.1, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %.03034.i.i.1, i64 %i.ao
  %i.ar = sub nuw i64 %.02935.i.i.1, %i.ao        ; 2 uses
  %.not.i.i.1 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.1, label %._crit_edge.i.i.1, label %bb.h, !llvm.loop !1

._crit_edge.i.i.1:                                ; preds = %bb.h
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZL19stbi__vertical_flipPviii.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !2

_ZL19stbi__vertical_flipPviii.exit.i.loopexit.unr-lcssa: ; preds = %._crit_edge.i.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL19stbi__vertical_flipPviii.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZL19stbi__vertical_flipPviii.exit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.1, %_ZL19stbi__vertical_flipPviii.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod51 = trunc i32 %i.r to i1
  tail call void @llvm.assume(i1 %lcmp.mod51)
  %i.as = mul i64 %indvars.iv.i.i.epil.init, %i.q
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.as
  %i.au = trunc i64 %indvars.iv.i.i.epil.init to i32
  %i.av = xor i32 %i.au, -1
  %i.aw = add i32 %i.m, %i.av
  %i.ax = sext i32 %i.aw to i64
  %i.ay = mul i64 %i.q, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ay
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.epil.preheader
  %.02935.i.i.epil = phi i64 [ %i.q, %.lr.ph.i.i.epil.preheader ], [ %i.bd, %bb.i ] ; 2 uses
  %.03034.i.i.epil = phi ptr [ %i.az, %.lr.ph.i.i.epil.preheader ], [ %i.bc, %bb.i ] ; 3 uses
  %.03133.i.i.epil = phi ptr [ %i.at, %.lr.ph.i.i.epil.preheader ], [ %i.bb, %bb.i ] ; 3 uses
  %i.ba = tail call i64 @llvm.umin.i64(i64 %.02935.i.i.epil, i64 2048) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.03133.i.i.epil, i64 %i.ba, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03133.i.i.epil, ptr align 1 %.03034.i.i.epil, i64 %i.ba, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03034.i.i.epil, ptr nonnull align 16 %i.a, i64 %i.ba, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.03133.i.i.epil, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %.03034.i.i.epil, i64 %i.ba
  %i.bd = sub nuw i64 %.02935.i.i.epil, %i.ba     ; 2 uses
  %.not.i.i.epil = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.epil, label %_ZL19stbi__vertical_flipPviii.exit.i, label %bb.i, !llvm.loop !1

_ZL19stbi__vertical_flipPviii.exit.i:             ; preds = %_ZL19stbi__vertical_flipPviii.exit.i.loopexit.unr-lcssa, %bb.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZL23stbi__float_postprocessPfPiS0_S0_i.exit

bb.j:                                             ; preds = %bb.a
  %i.be = tail call fastcc noundef ptr @_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 13 uses
  %.not28 = icmp eq ptr %i.be, null
  br i1 %.not28, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = load i32, ptr %1, align 4, !tbaa !20    ; 3 uses
  %i.bg = load i32, ptr %2, align 4, !tbaa !20    ; 4 uses
  %.not29 = icmp eq i32 %4, 0
  br i1 %.not29, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = load i32, ptr %3, align 4, !tbaa !20
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.bi = phi i32 [ %i.bh, %bb.l ], [ %4, %bb.k ] ; 8 uses
  %i.bj = or i32 %i.bg, %i.bf
  %or.cond.not.i.i.i.i = icmp sgt i32 %i.bj, -1
  br i1 %or.cond.not.i.i.i.i, label %bb.n, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i

bb.n:                                             ; preds = %bb.m
  %i.bk = icmp eq i32 %i.bg, 0
  br i1 %i.bk, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i.i:          ; preds = %bb.n
  %i.bl = udiv i32 2147483647, %i.bg
  %.not37.i.i.i = icmp sgt i32 %i.bf, %i.bl
  br i1 %.not37.i.i.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i

_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i: ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %bb.n
  %i.bm = mul nuw nsw i32 %i.bg, %i.bf            ; 7 uses
  %i.bn = or i32 %i.bi, %i.bm
  %or.cond.not.i16.i.i.i = icmp sgt i32 %i.bn, -1
  br i1 %or.cond.not.i16.i.i.i, label %bb.o, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i

bb.o:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i
  %i.bo = icmp eq i32 %i.bi, 0
  br i1 %i.bo, label %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit18.i.i.i

_ZL21stbi__mul2sizes_validii.exit18.i.i.i:        ; preds = %bb.o
  %i.bp = udiv i32 2147483647, %i.bi
  %.not.i.i.i = icmp sgt i32 %i.bm, %i.bp
  br i1 %.not.i.i.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, label %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i.i

_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i.i: ; preds = %_ZL21stbi__mul2sizes_validii.exit18.i.i.i, %bb.o
  %i.bq = mul nuw nsw i32 %i.bi, %i.bm            ; 2 uses
  %or.cond.i = icmp ugt i32 %i.bq, 536870911
  br i1 %or.cond.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, label %_ZL17stbi__malloc_mad4iiiii.exit.i

end_hunk_0
begin_hunk_1_@_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i:bb.a
  br i1 %i.by, label %.preheader48.lr.ph.i, label %.loopexit.i

.preheader48.lr.ph.i:                             ; preds = %bb.p
  %i.bz = icmp sgt i32 %.0.i, 0
  %i.ca = load float, ptr @_ZL15stbi__l2h_gamma, align 4 ; 5 uses
  %i.cb = load float, ptr @_ZL15stbi__l2h_scale, align 4 ; 5 uses
  br i1 %i.bz, label %.preheader48.preheader.i, label %._crit_edge51.split.i

.preheader48.preheader.i:                         ; preds = %.preheader48.lr.ph.i
  %i.cc = sext i32 %i.bi to i64
  %wide.trip.count58.i = zext nneg i32 %i.bm to i64
  %wide.trip.count.i = zext nneg i32 %.0.i to i64 ; 2 uses
  %xtraiter52 = and i64 %wide.trip.count.i, 3     ; 3 uses
  %i.cd = icmp ult i32 %.0.i, 4
  %unroll_iter55 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod53.not = icmp eq i64 %xtraiter52, 0
  %lcmp.mod54 = icmp ne i64 %xtraiter52, 0
  br label %.preheader48.i

.preheader48.i:                                   ; preds = %._crit_edge.i, %.preheader48.preheader.i
  %indvars.iv55.i = phi i64 [ 0, %.preheader48.preheader.i ], [ %indvars.iv.next56.i, %._crit_edge.i ] ; 2 uses
  %i.ce = mul nuw nsw i64 %indvars.iv55.i, %i.cc  ; 5 uses
  br i1 %i.cd, label %.epil.preheader, label %.preheader48.i.new

.preheader48.i.new:                               ; preds = %.preheader48.i, %.preheader48.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.preheader48.i.new ], [ 0, %.preheader48.i ] ; 5 uses
  %niter56 = phi i64 [ %niter56.next.3, %.preheader48.i.new ], [ 0, %.preheader48.i ]
  %i.cf = add nsw i64 %indvars.iv.i, %i.ce        ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %i.be, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !32
  %i.ci = uitofp i8 %i.ch to float
  %i.cj = fdiv float %i.ci, 2.550000e+02
  %i.ck = tail call noundef float @powf(float noundef %i.cj, float noundef %i.ca) #40
  %i.cl = fmul float %i.cb, %i.ck
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.cf
  store float %i.cl, ptr %i.cm, align 4, !tbaa !52
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.cn = add nsw i64 %indvars.iv.next.i, %i.ce   ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %i.be, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !32
  %i.cq = uitofp i8 %i.cp to float
  %i.cr = fdiv float %i.cq, 2.550000e+02
  %i.cs = tail call noundef float @powf(float noundef %i.cr, float noundef %i.ca) #40
  %i.ct = fmul float %i.cb, %i.cs
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.cn
  store float %i.ct, ptr %i.cu, align 4, !tbaa !52
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2
  %i.cv = add nsw i64 %indvars.iv.next.i.1, %i.ce ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %i.be, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !32
  %i.cy = uitofp i8 %i.cx to float
  %i.cz = fdiv float %i.cy, 2.550000e+02
  %i.da = tail call noundef float @powf(float noundef %i.cz, float noundef %i.ca) #40
  %i.db = fmul float %i.cb, %i.da
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.cv
  store float %i.db, ptr %i.dc, align 4, !tbaa !52
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3
  %i.dd = add nsw i64 %indvars.iv.next.i.2, %i.ce ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %i.be, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !32
  %i.dg = uitofp i8 %i.df to float
  %i.dh = fdiv float %i.dg, 2.550000e+02
  %i.di = tail call noundef float @powf(float noundef %i.dh, float noundef %i.ca) #40
  %i.dj = fmul float %i.cb, %i.di
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.dd
  store float %i.dj, ptr %i.dk, align 4, !tbaa !52
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter56.next.3 = add i64 %niter56, 4           ; 2 uses
  %niter56.ncmp.3 = icmp eq i64 %niter56.next.3, %unroll_iter55
  br i1 %niter56.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.preheader48.i.new, !llvm.loop !143

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader48.i.new
  br i1 %lcmp.mod53.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader48.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader48.i ], [ %indvars.iv.next.i.3, %._crit_edge.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod54)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.q ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.q ]
  %i.dl = add nsw i64 %indvars.iv.i.epil, %i.ce   ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.be, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !32
  %i.do = uitofp i8 %i.dn to float
  %i.dp = fdiv float %i.do, 2.550000e+02
  %i.dq = tail call noundef float @powf(float noundef %i.dp, float noundef %i.ca) #40
  %i.dr = fmul float %i.cb, %i.dq
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.dl
  store float %i.dr, ptr %i.ds, align 4, !tbaa !52
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter52
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.q, !llvm.loop !144

._crit_edge.i:                                    ; preds = %bb.q, %._crit_edge.i.unr-lcssa
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %exitcond59.not.i = icmp eq i64 %indvars.iv.next56.i, %wide.trip.count58.i
  br i1 %exitcond59.not.i, label %._crit_edge51.split.i, label %.preheader48.i, !llvm.loop !145

._crit_edge51.split.i:                            ; preds = %._crit_edge.i, %.preheader48.lr.ph.i
  br i1 %.not.i31, label %iter.check, label %.loopexit.i

iter.check:                                       ; preds = %._crit_edge51.split.i
  %i.dt = sext i32 %i.bi to i64                   ; 5 uses
  %i.du = sext i32 %.0.i to i64                   ; 5 uses
  %wide.trip.count63.i = zext nneg i32 %i.bm to i64 ; 2 uses
  %xtraiter57 = and i64 %wide.trip.count63.i, 3   ; 3 uses
  %i.dv = icmp ult i32 %i.bm, 4
  br i1 %i.dv, label %.lr.ph.i.epil.preheader, label %iter.check.new

iter.check.new:                                   ; preds = %iter.check
  %unroll_iter61 = and i64 %wide.trip.count63.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %iter.check.new
  %indvars.iv60.i = phi i64 [ 0, %iter.check.new ], [ %indvars.iv.next61.i.3, %.lr.ph.i ] ; 5 uses
  %niter62 = phi i64 [ 0, %iter.check.new ], [ %niter62.next.3, %.lr.ph.i ]
  %i.dw = mul nuw nsw i64 %indvars.iv60.i, %i.dt
  %i.dx = add nsw i64 %i.dw, %i.du                ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %i.be, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !32
  %i.ea = uitofp i8 %i.dz to float
  %i.eb = fdiv float %i.ea, 2.550000e+02
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.dx
  store float %i.eb, ptr %i.ec, align 4, !tbaa !52
  %indvars.iv.next61.i = or disjoint i64 %indvars.iv60.i, 1
  %i.ed = mul nuw nsw i64 %indvars.iv.next61.i, %i.dt
  %i.ee = add nsw i64 %i.ed, %i.du                ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %i.be, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !32
  %i.eh = uitofp i8 %i.eg to float
  %i.ei = fdiv float %i.eh, 2.550000e+02
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.ee
  store float %i.ei, ptr %i.ej, align 4, !tbaa !52
  %indvars.iv.next61.i.1 = or disjoint i64 %indvars.iv60.i, 2
  %i.ek = mul nuw nsw i64 %indvars.iv.next61.i.1, %i.dt
  %i.el = add nsw i64 %i.ek, %i.du                ; 2 uses
  %i.em = getelementptr inbounds i8, ptr %i.be, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !32
  %i.eo = uitofp i8 %i.en to float
  %i.ep = fdiv float %i.eo, 2.550000e+02
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.el
  store float %i.ep, ptr %i.eq, align 4, !tbaa !52
  %indvars.iv.next61.i.2 = or disjoint i64 %indvars.iv60.i, 3
  %i.er = mul nuw nsw i64 %indvars.iv.next61.i.2, %i.dt
  %i.es = add nsw i64 %i.er, %i.du                ; 2 uses
  %i.et = getelementptr inbounds i8, ptr %i.be, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !32
  %i.ev = uitofp i8 %i.eu to float
  %i.ew = fdiv float %i.ev, 2.550000e+02
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.es
  store float %i.ew, ptr %i.ex, align 4, !tbaa !52
  %indvars.iv.next61.i.3 = add nuw nsw i64 %indvars.iv60.i, 4 ; 2 uses
  %niter62.next.3 = add i64 %niter62, 4           ; 2 uses
  %niter62.ncmp.3 = icmp eq i64 %niter62.next.3, %unroll_iter61
  br i1 %niter62.ncmp.3, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !146

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod59.not = icmp eq i64 %xtraiter57, 0
  br i1 %lcmp.mod59.not, label %.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.i.loopexit.unr-lcssa, %iter.check
  %indvars.iv60.i.epil.init = phi i64 [ 0, %iter.check ], [ %indvars.iv.next61.i.3, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod60 = icmp ne i64 %xtraiter57, 0
  tail call void @llvm.assume(i1 %lcmp.mod60)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv60.i.epil = phi i64 [ %indvars.iv60.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next61.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter58 = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter58.next, %.lr.ph.i.epil ]
  %i.ey = mul nuw nsw i64 %indvars.iv60.i.epil, %i.dt
  %i.ez = add nsw i64 %i.ey, %i.du                ; 2 uses
  %i.fa = getelementptr inbounds i8, ptr %i.be, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !32
  %i.fc = uitofp i8 %i.fb to float
  %i.fd = fdiv float %i.fc, 2.550000e+02
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.ez
  store float %i.fd, ptr %i.fe, align 4, !tbaa !52
  %indvars.iv.next61.i.epil = add nuw nsw i64 %indvars.iv60.i.epil, 1
  %epil.iter58.next = add i64 %epil.iter58, 1     ; 2 uses
  %epil.iter58.cmp.not = icmp eq i64 %epil.iter58.next, %xtraiter57
  br i1 %epil.iter58.cmp.not, label %.loopexit.i, label %.lr.ph.i.epil, !llvm.loop !147

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %._crit_edge51.split.i, %bb.p
  tail call void @free(ptr noundef nonnull %i.be) #40
  br label %_ZL23stbi__float_postprocessPfPiS0_S0_i.exit

bb.r:                                             ; preds = %bb.j
  %i.ff = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.5, ptr %i.ff, align 8, !tbaa !19
  br label %_ZL23stbi__float_postprocessPfPiS0_S0_i.exit

_ZL23stbi__float_postprocessPfPiS0_S0_i.exit:     ; preds = %.loopexit.i, %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, %bb.b, %bb.c, %_ZL19stbi__vertical_flipPviii.exit.i, %bb.r
  %.0 = phi ptr [ null, %bb.r ], [ null, %bb.b ], [ %i.c, %_ZL19stbi__vertical_flipPviii.exit.i ], [ %i.c, %bb.c ], [ null, %_ZL17stbi__malloc_mad4iiiii.exit.thread.i ], [ %i.bt, %.loopexit.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noalias noundef ptr @stbi_loadf_from_callbacks(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !22
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %1, ptr %i.b, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 52
  store i32 128, ptr %i.c, align 4, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !30
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.j = call noundef i32 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 128), !inline_history !3 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !30
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !29
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8, !tbaa !28
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8, !tbaa !28
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 57
  store i8 0, ptr %i.f, align 8, !tbaa !32
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %.sink.i.i, ptr %i.w, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %.sink.i.i, ptr %i.x, align 8, !tbaa !34
  %i.y = call fastcc noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define dso_local noalias noundef ptr @stbi_loadf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
  %i.a = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str) ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.b, align 8, !tbaa !19
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) @_ZL21stbi__stdio_callbacks, i64 24, i1 false), !tbaa.struct !22
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.a, ptr %i.d, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.e, align 4, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 1, ptr %i.f, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 3 uses
  store i32 0, ptr %i.g, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 3 uses
  store ptr %i.h, ptr %i.j, align 8, !tbaa !30
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.l = call noundef i32 %i.k(ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, i32 noundef 128), !inline_history !148 ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !30
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !29
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = load i32, ptr %i.g, align 8, !tbaa !28
  %i.t = add nsw i32 %i.s, %i.r
  store i32 %i.t, ptr %i.g, align 8, !tbaa !28
  %i.u = icmp eq i32 %i.l, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 0, ptr %i.h, align 8, !tbaa !32
  br label %stbi_loadf_from_file.exit

bb.e:                                             ; preds = %bb.c
  %i.w = sext i32 %i.l to i64
  %i.x = getelementptr inbounds i8, ptr %i.h, i64 %i.w
  br label %stbi_loadf_from_file.exit

stbi_loadf_from_file.exit:                        ; preds = %bb.d, %bb.e
  %.sink.i.i.i.i = phi ptr [ %i.v, %bb.d ], [ %i.x, %bb.e ] ; 2 uses
  store ptr %i.h, ptr %i.j, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 200
  store ptr %.sink.i.i.i.i, ptr %i.y, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 216
  store ptr %.sink.i.i.i.i, ptr %i.z, align 8, !tbaa !34
  %i.aa = call fastcc noalias noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  %i.ab = call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %stbi_loadf_from_file.exit, %bb.b
  %.0 = phi ptr [ %i.aa, %stbi_loadf_from_file.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noalias noundef ptr @stbi_loadf_from_file(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @_ZL21stbi__stdio_callbacks, i64 24, i1 false), !tbaa.struct !22
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %0, ptr %i.b, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.c, align 4, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !30
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.j = call noundef i32 %i.i(ptr noundef %0, ptr noundef nonnull %i.f, i32 noundef 128), !inline_history !0 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !30
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !29
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8, !tbaa !28
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8, !tbaa !28
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 0, ptr %i.f, align 8, !tbaa !32
  br label %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit

_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 200
  store ptr %.sink.i.i.i, ptr %i.w, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 216
  store ptr %.sink.i.i.i, ptr %i.x, align 8, !tbaa !34
  %i.y = call fastcc noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @stbi_is_hdr_from_memory(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %2 = alloca %struct.stbi__context, align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.a, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 0, ptr %i.b, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 184
  store i32 0, ptr %i.c, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 208
  store ptr %0, ptr %i.d, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 192
  store ptr %0, ptr %i.e, align 8, !tbaa !30
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 216
  store ptr %i.g, ptr %i.h, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 200
  store ptr %i.g, ptr %i.i, align 8, !tbaa !33
  %i.j = call fastcc noundef i32 @_ZL14stbi__hdr_testP13stbi__context(ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  ret i32 %i.j
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL14stbi__hdr_testP13stbi__context(ptr noundef nonnull %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 27 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 32 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 16 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 23 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.pre12.i = load ptr, ptr %i.b, align 8, !tbaa !33
  br label %bb.c

bb.b:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, 11
  br i1 %.not.i, label %_ZL19stbi__hdr_test_coreP13stbi__contextPKc.exit, label %bb.c, !llvm.loop !149

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi ptr [ %.pre12.i, %bb.a ], [ %i.ah, %bb.b ] ; 3 uses
  %i.l = phi ptr [ %.pre.i, %bb.a ], [ %i.ai, %bb.b ] ; 4 uses
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr @.str.86, i64 %indvars.iv.i
  %i.n = icmp ult ptr %i.l, %i.k
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 2 uses
  store ptr %i.o, ptr %i.a, align 8, !tbaa !30
  %i.p = load i8, ptr %i.l, align 1, !tbaa !32
  br label %_ZL10stbi__get8P13stbi__context.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i32, ptr %i.c, align 8, !tbaa !27
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %_ZL10stbi__get8P13stbi__context.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.t = load i32, ptr %i.g, align 4, !tbaa !26
  %i.u = tail call noundef i32 %i.r(ptr noundef %i.s, ptr noundef nonnull %i.f, i32 noundef %i.t), !inline_history !150 ; 2 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = trunc i64 %i.z to i32
  %i.ab = load i32, ptr %i.i, align 8, !tbaa !28
  %i.ac = add nsw i32 %i.ab, %i.aa
  store i32 %i.ac, ptr %i.i, align 8, !tbaa !28
  %i.ad = icmp eq i32 %i.u, 0
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.c, align 8, !tbaa !27
  store i8 0, ptr %i.f, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.ae = sext i32 %i.u to i64
  %i.af = getelementptr inbounds i8, ptr %i.f, i64 %i.ae
  %.pre.i.i = load i8, ptr %i.f, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i: ; preds = %bb.h, %bb.g
  %i.ag = phi i8 [ 0, %bb.g ], [ %.pre.i.i, %bb.h ]
  %.sink.i.i.i = phi ptr [ %i.j, %bb.g ], [ %i.af, %bb.h ] ; 2 uses
  store ptr %.sink.i.i.i, ptr %i.b, align 8, !tbaa !33
  store ptr %i.j, ptr %i.a, align 8, !tbaa !30
  br label %_ZL10stbi__get8P13stbi__context.exit.i

_ZL10stbi__get8P13stbi__context.exit.i:           ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i, %bb.e, %bb.d
  %i.ah = phi ptr [ %i.k, %bb.d ], [ %.sink.i.i.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i ], [ %i.k, %bb.e ]
  %i.ai = phi ptr [ %i.o, %bb.d ], [ %i.j, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i ], [ %i.l, %bb.e ]
  %.0.i.i = phi i8 [ %i.p, %bb.d ], [ %i.ag, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i ], [ 0, %bb.e ]
  %i.aj = zext i8 %.0.i.i to i32
  %i.ak = load i8, ptr %i.m, align 1, !tbaa !32
  %i.al = sext i8 %i.ak to i32
  %.not8.i = icmp eq i32 %i.aj, %i.al
  br i1 %.not8.i, label %bb.b, label %bb.i

_ZL19stbi__hdr_test_coreP13stbi__contextPKc.exit: ; preds = %bb.b
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %_ZL19stbi__hdr_test_coreP13stbi__contextPKc.exit20

bb.i:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit.i
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !29  ; 6 uses
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !30
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 15 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !34 ; 3 uses
  store ptr %i.aq, ptr %i.b, align 8, !tbaa !33
  %i.ar = icmp ult ptr %i.ao, %i.aq
  br i1 %i.ar, label %bb.at, label %bb.au

bb.j:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit.i13
  %i.as = icmp ult ptr %i.gt, %i.gs
  br i1 %i.as, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = load i32, ptr %i.c, align 8, !tbaa !27
  %.not.i.i9.1 = icmp eq i32 %i.at, 0
  br i1 %.not.i.i9.1, label %_ZL19stbi__hdr_test_coreP13stbi__contextPKc.exit20, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.aw = load i32, ptr %i.g, align 4, !tbaa !26
  %i.ax = tail call noundef i32 %i.au(ptr noundef %i.av, ptr noundef nonnull %i.f, i32 noundef %i.aw), !inline_history !150 ; 2 uses
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.az = load ptr, ptr %i.h, align 8, !tbaa !29  ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
end_hunk_1
begin_hunk_2_@_ZL14stbi__pnm_loadP13stbi__contextPiS1_S1_iP17stbi__result_info:bb.a
  %i.c = tail call fastcc noundef i32 @_ZL14stbi__pnm_infoP13stbi__contextPiS1_S1_(ptr noundef %0, ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 2 uses
  store i32 %i.c, ptr %5, align 4, !tbaa !36
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 4, !tbaa !57
  %i.f = icmp ugt i32 %i.e, 16777216
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.6, ptr %i.g, align 8, !tbaa !19
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  %i.h = load i32, ptr %0, align 8, !tbaa !56     ; 2 uses
  %i.i = icmp ugt i32 %i.h, 16777216
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.6, ptr %i.j, align 8, !tbaa !19
  br label %bb.s

bb.f:                                             ; preds = %bb.d
  store i32 %i.h, ptr %1, align 4, !tbaa !20
  %i.k = load i32, ptr %i.a, align 4, !tbaa !57   ; 2 uses
  store i32 %i.k, ptr %2, align 4, !tbaa !20
  %.not = icmp eq ptr %3, null
  %.pre = load i32, ptr %i.b, align 8, !tbaa !58  ; 5 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %.pre, ptr %3, align 4, !tbaa !20
  %.pre57 = load i32, ptr %i.a, align 4, !tbaa !57
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.l = phi i32 [ %.pre57, %bb.g ], [ %i.k, %bb.f ] ; 5 uses
  %i.m = load i32, ptr %0, align 8, !tbaa !56     ; 5 uses
  %i.n = load i32, ptr %5, align 4, !tbaa !36     ; 2 uses
  %i.o = sdiv i32 %i.n, 8                         ; 4 uses
  %i.p = or i32 %i.m, %.pre
  %or.cond.not.i.i = icmp sgt i32 %i.p, -1
  br i1 %or.cond.not.i.i, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.q = icmp eq i32 %i.m, 0                      ; 2 uses
  br i1 %i.q, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i, label %_ZL21stbi__mul2sizes_validii.exit.i

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.i
  %i.r = udiv i32 2147483647, %i.m
  %.not37.i = icmp sgt i32 %.pre, %i.r
  br i1 %.not37.i, label %bb.l, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i

_ZL21stbi__mul2sizes_validii.exit.thread24.i:     ; preds = %_ZL21stbi__mul2sizes_validii.exit.i, %bb.i
  %i.s = mul i32 %i.m, %.pre                      ; 4 uses
  %i.t = or i32 %i.l, %i.s
  %or.cond.not.i16.i = icmp sgt i32 %i.t, -1
  br i1 %or.cond.not.i16.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread24.i
  %i.u = icmp eq i32 %i.l, 0                      ; 2 uses
  br i1 %i.u, label %_ZL21stbi__mul2sizes_validii.exit18.thread29.i, label %_ZL21stbi__mul2sizes_validii.exit18.i

_ZL21stbi__mul2sizes_validii.exit18.i:            ; preds = %bb.j
  %i.v = udiv i32 2147483647, %i.l
  %.not.i = icmp sgt i32 %i.s, %i.v
  br i1 %.not.i, label %bb.l, label %_ZL21stbi__mul2sizes_validii.exit18.thread29.i

_ZL21stbi__mul2sizes_validii.exit18.thread29.i:   ; preds = %_ZL21stbi__mul2sizes_validii.exit18.i, %bb.j
  %i.w = mul i32 %i.s, %i.l                       ; 4 uses
  %i.x = or i32 %i.o, %i.w
  %or.cond.not.i19.i = icmp sgt i32 %i.x, -1
  br i1 %or.cond.not.i19.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit18.thread29.i
  %.off = add i32 %i.n, 7
  %i.y = icmp ult i32 %.off, 15                   ; 2 uses
  br i1 %i.y, label %_ZL21stbi__mad4sizes_validiiiii.exit, label %_ZL21stbi__mul2sizes_validii.exit21.i

_ZL21stbi__mul2sizes_validii.exit21.i:            ; preds = %bb.k
  %i.z = udiv i32 2147483647, %i.o
  %.not38.i = icmp sgt i32 %i.w, %i.z
  br i1 %.not38.i, label %bb.l, label %_ZL21stbi__mad4sizes_validiiiii.exit

bb.l:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit21.i, %_ZL21stbi__mul2sizes_validii.exit18.i, %_ZL21stbi__mul2sizes_validii.exit.i, %_ZL21stbi__mul2sizes_validii.exit.thread24.i, %bb.h, %_ZL21stbi__mul2sizes_validii.exit18.thread29.i
  %i.aa = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.6, ptr %i.aa, align 8, !tbaa !19
  br label %bb.s

_ZL21stbi__mad4sizes_validiiiii.exit:             ; preds = %bb.k, %_ZL21stbi__mul2sizes_validii.exit21.i
  br i1 %i.q, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %_ZL21stbi__mad4sizes_validiiiii.exit
  %i.ab = udiv i32 2147483647, %i.m
  %.not37.i.i = icmp sgt i32 %.pre, %i.ab
  br i1 %.not37.i.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i

_ZL21stbi__mul2sizes_validii.exit.thread24.i.i:   ; preds = %_ZL21stbi__mad4sizes_validiiiii.exit, %_ZL21stbi__mul2sizes_validii.exit.i.i
  br i1 %i.u, label %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i, label %_ZL21stbi__mul2sizes_validii.exit18.i.i

_ZL21stbi__mul2sizes_validii.exit18.i.i:          ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i
  %i.ac = udiv i32 2147483647, %i.l
  %.not.i.i = icmp sgt i32 %i.s, %i.ac
  br i1 %.not.i.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i

_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i: ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i, %_ZL21stbi__mul2sizes_validii.exit18.i.i
  br i1 %i.y, label %_ZL17stbi__malloc_mad4iiiii.exit, label %_ZL21stbi__mul2sizes_validii.exit21.i.i

_ZL21stbi__mul2sizes_validii.exit21.i.i:          ; preds = %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i
  %i.ad = udiv i32 2147483647, %i.o
  %.not38.i.i = icmp sgt i32 %i.w, %i.ad
  br i1 %.not38.i.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread, label %_ZL17stbi__malloc_mad4iiiii.exit

_ZL17stbi__malloc_mad4iiiii.exit:                 ; preds = %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i, %_ZL21stbi__mul2sizes_validii.exit21.i.i
  %i.ae = mul i32 %i.o, %i.w                      ; 3 uses
  %i.af = sext i32 %i.ae to i64                   ; 3 uses
  %i.ag = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.af) #42 ; 7 uses
  %.not49 = icmp eq ptr %i.ag, null
  br i1 %.not49, label %_ZL17stbi__malloc_mad4iiiii.exit.thread, label %bb.m

_ZL17stbi__malloc_mad4iiiii.exit.thread:          ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %_ZL21stbi__mul2sizes_validii.exit18.i.i, %_ZL21stbi__mul2sizes_validii.exit21.i.i, %_ZL17stbi__malloc_mad4iiiii.exit
  %i.ah = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.8, ptr %i.ah, align 8, !tbaa !19
  br label %bb.s

bb.m:                                             ; preds = %_ZL17stbi__malloc_mad4iiiii.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !31 ; 2 uses
  %.not.i52 = icmp eq ptr %i.aj, null
  br i1 %.not.i52, label %..thread_crit_edge.i, label %bb.n

..thread_crit_edge.i:                             ; preds = %bb.m
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !30
  %.phi.trans.insert34.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.pre35.i = load ptr, ptr %.phi.trans.insert34.i, align 8, !tbaa !33
  br label %.thread.i

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !33 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !30 ; 3 uses
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 2 uses
  %i.ar = trunc i64 %i.aq to i32                  ; 2 uses
  %i.as = icmp sgt i32 %i.ae, %i.ar
  br i1 %i.as, label %bb.o, label %.thread.i

bb.o:                                             ; preds = %bb.n
  %sext.i = shl i64 %i.aq, 32
  %i.at = ashr exact i64 %sext.i, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr align 1 %i.an, i64 %i.at, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !25
  %i.aw = getelementptr inbounds i8, ptr %i.ag, i64 %i.at
  %i.ax = sub nsw i32 %i.ae, %i.ar
  %i.ay = tail call noundef i32 %i.aj(ptr noundef %i.av, ptr noundef nonnull %i.aw, i32 noundef %i.ax), !inline_history !103 ; 0 uses
  %i.az = load ptr, ptr %i.ak, align 8, !tbaa !33
  store ptr %i.az, ptr %i.am, align 8, !tbaa !30
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit

.thread.i:                                        ; preds = %bb.n, %..thread_crit_edge.i
  %i.ba = phi ptr [ %.pre35.i, %..thread_crit_edge.i ], [ %i.al, %bb.n ]
  %i.bb = phi ptr [ %.pre.i, %..thread_crit_edge.i ], [ %i.an, %bb.n ] ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %i.af ; 2 uses
  %.not32.i = icmp ugt ptr %i.bc, %i.ba
  br i1 %.not32.i, label %_ZL10stbi__getnP13stbi__contextPhi.exit, label %bb.p

bb.p:                                             ; preds = %.thread.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr align 1 %i.bb, i64 %i.af, i1 false)
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !30
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit

_ZL10stbi__getnP13stbi__contextPhi.exit:          ; preds = %bb.o, %.thread.i, %bb.p
  %.not50 = icmp eq i32 %4, 0
  br i1 %.not50, label %bb.s, label %bb.q

bb.q:                                             ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit
  %i.be = load i32, ptr %i.b, align 8, !tbaa !58  ; 2 uses
  %.not51 = icmp eq i32 %4, %i.be
  br i1 %.not51, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = load i32, ptr %0, align 8, !tbaa !56
  %i.bg = load i32, ptr %i.a, align 4, !tbaa !57
  %i.bh = tail call fastcc noundef ptr @_ZL20stbi__convert_formatPhiijj(ptr noundef nonnull %i.ag, i32 noundef %i.be, i32 noundef %4, i32 noundef %i.bf, i32 noundef %i.bg)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZL10stbi__getnP13stbi__contextPhi.exit, %bb.q, %bb.a, %_ZL17stbi__malloc_mad4iiiii.exit.thread, %bb.l, %bb.e, %bb.c
  %.041 = phi ptr [ null, %bb.l ], [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.a ], [ %i.bh, %bb.r ], [ null, %_ZL17stbi__malloc_mad4iiiii.exit.thread ], [ %i.ag, %bb.q ], [ %i.ag, %_ZL10stbi__getnP13stbi__contextPhi.exit ]
  ret ptr %.041
}

; Function Attrs: mustprogress uwtable
define internal fastcc noalias noundef ptr @_ZL14stbi__hdr_loadP13stbi__contextPiS1_S1_iP17stbi__result_info(ptr noundef nonnull %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4) unnamed_addr #5 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 17 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca [4 x i8], align 1                 ; 2 uses
  %i.d = alloca [4 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  %i.e = call fastcc noundef ptr @_ZL18stbi__hdr_gettokenP13stbi__contextPc(ptr noundef %0, ptr noundef %i.a) ; 0 uses
  %i.f = load i64, ptr %i.a, align 16
  %i.g = xor i64 %i.f, 5638868765947084579
  %i.h = getelementptr i8, ptr %i.a, i64 3
  %i.i = load i64, ptr %i.h, align 1
  %i.j = xor i64 %i.i, 19495776774865985
  %i.k = or i64 %i.g, %i.j
  %i.l = icmp ne i64 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i32, ptr %i.a, align 16
  %i.o = xor i32 %i.n, 1196572451
  %i.p = getelementptr i8, ptr %i.a, i64 3
  %i.q = load i32, ptr %i.p, align 1
  %i.r = xor i32 %i.q, 4538951
  %i.s = or i32 %i.o, %i.r
  %i.t = icmp ne i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %.not138 = icmp eq i32 %i.u, 0
  br i1 %.not138, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.76, ptr %i.v, align 8, !tbaa !19
  br label %._crit_edge57.thread

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.w = call fastcc noundef ptr @_ZL18stbi__hdr_gettokenP13stbi__contextPc(ptr noundef %0, ptr noundef %i.a) ; 0 uses
  %i.x = load i8, ptr %i.a, align 16, !tbaa !32
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.012336 = phi i32 [ %spec.select, %.lr.ph ], [ 0, %bb.d ]
  %i.z = load i128, ptr %i.a, align 16
  %i.aa = xor i128 %i.z, 144150481438637697380701673535474650950
  %i.ab = getelementptr i8, ptr %i.a, i64 7
  %i.ac = load i128, ptr %i.ab, align 1
  %i.ad = xor i128 %i.ac, 526417854750532455411190335003243059
  %i.ae = or i128 %i.aa, %i.ad
  %i.af = icmp ne i128 %i.ae, 0
  %i.ag = zext i1 %i.af to i32
  %i.ah = icmp eq i32 %i.ag, 0
  %spec.select = select i1 %i.ah, i32 1, i32 %.012336 ; 2 uses
  %i.ai = call fastcc noundef ptr @_ZL18stbi__hdr_gettokenP13stbi__contextPc(ptr noundef %0, ptr noundef %i.a) ; 0 uses
  %i.aj = load i8, ptr %i.a, align 16, !tbaa !32
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %._crit_edge, label %.lr.ph, !llvm.loop !273

._crit_edge:                                      ; preds = %.lr.ph
  %i.al = icmp eq i32 %spec.select, 0
  br i1 %i.al, label %._crit_edge.thread, label %bb.e

._crit_edge.thread:                               ; preds = %bb.d, %._crit_edge
  %i.am = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.78, ptr %i.am, align 8, !tbaa !19
  br label %._crit_edge57.thread

bb.e:                                             ; preds = %._crit_edge
  %i.an = call fastcc noundef ptr @_ZL18stbi__hdr_gettokenP13stbi__contextPc(ptr noundef %0, ptr noundef %i.a) ; 0 uses
  %i.ao = load i16, ptr %i.a, align 16
  %i.ap = xor i16 %i.ao, 22829
  %i.aq = getelementptr i8, ptr %i.a, i64 2
  %i.ar = load i8, ptr %i.aq, align 2
  %i.as = zext i8 %i.ar to i16
  %i.at = xor i16 %i.as, 32
  %i.au = or i16 %i.ap, %i.at
  %i.av = icmp ne i16 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %.not140 = icmp eq i32 %i.aw, 0
  br i1 %.not140, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.80, ptr %i.ax, align 8, !tbaa !19
  br label %._crit_edge57.thread

bb.g:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  store ptr %i.ay, ptr %i.b, align 8, !tbaa !19
  %i.az = call i64 @__isoc23_strtol(ptr noundef nonnull %i.ay, ptr noundef nonnull %i.b, i32 noundef 10) #40 ; 2 uses
  %i.ba = trunc i64 %i.az to i32                  ; 6 uses
  %.promoted = load ptr, ptr %i.b, align 8, !tbaa !19 ; 3 uses
  %i.bb = load i8, ptr %.promoted, align 1, !tbaa !32 ; 2 uses
  %i.bc = icmp eq i8 %i.bb, 32
  br i1 %i.bc, label %.lr.ph38, label %sub_0

.lr.ph38:                                         ; preds = %bb.g, %.lr.ph38
  %i.bd = phi ptr [ %i.be, %.lr.ph38 ], [ %.promoted, %bb.g ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1 ; 4 uses
  store ptr %i.be, ptr %i.b, align 8, !tbaa !19
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !32  ; 2 uses
  %i.bg = icmp eq i8 %i.bf, 32
  br i1 %i.bg, label %.lr.ph38, label %sub_0, !llvm.loop !274

sub_0:                                            ; preds = %.lr.ph38, %bb.g
  %i.bh = phi i8 [ %i.bb, %bb.g ], [ %i.bf, %.lr.ph38 ]
  %.lcssa35 = phi ptr [ %.promoted, %bb.g ], [ %i.be, %.lr.ph38 ] ; 3 uses
  %.not59 = icmp eq i8 %i.bh, 43
  br i1 %.not59, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.bi = getelementptr inbounds nuw i8, ptr %.lcssa35, i64 1
  %i.bj = load i8, ptr %i.bi, align 1
  %.not60 = icmp eq i8 %i.bj, 88
  br i1 %.not60, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.bk = getelementptr inbounds nuw i8, ptr %.lcssa35, i64 2
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = icmp eq i8 %i.bl, 32
  br i1 %i.bm, label %bb.h, label %.tail.thread

.tail.thread:                                     ; preds = %sub_1, %sub_0, %.tail
  %i.bn = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.80, ptr %i.bn, align 8, !tbaa !19
  br label %._crit_edge57.thread

bb.h:                                             ; preds = %.tail
  %i.bo = getelementptr inbounds nuw i8, ptr %.lcssa35, i64 3 ; 2 uses
  store ptr %i.bo, ptr %i.b, align 8, !tbaa !19
  %i.bp = call i64 @__isoc23_strtol(ptr noundef nonnull %i.bo, ptr noundef null, i32 noundef 10) #40 ; 4 uses
  %i.bq = trunc i64 %i.bp to i32                  ; 10 uses
  %i.br = icmp sgt i32 %i.ba, 16777216
  br i1 %i.br, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bs = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.6, ptr %i.bs, align 8, !tbaa !19
  br label %._crit_edge57.thread

bb.j:                                             ; preds = %bb.h
  %i.bt = icmp sgt i32 %i.bq, 16777216
  br i1 %i.bt, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bu = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.6, ptr %i.bu, align 8, !tbaa !19
  br label %._crit_edge57.thread

bb.l:                                             ; preds = %bb.j
  store i32 %i.bq, ptr %1, align 4, !tbaa !20
  store i32 %i.ba, ptr %2, align 4, !tbaa !20
  %.not142 = icmp eq ptr %3, null
  br i1 %.not142, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 3, ptr %3, align 4, !tbaa !20
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bv = icmp eq i32 %4, 0
  %spec.store.select = select i1 %i.bv, i32 3, i32 %4 ; 9 uses
  %i.bw = call fastcc noundef i32 @_ZL21stbi__mad4sizes_validiiiii(i32 noundef %i.bq, i32 noundef %i.ba, i32 noundef %spec.store.select, i32 noundef 4)
  %.not143 = icmp eq i32 %i.bw, 0
  br i1 %.not143, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bx = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.6, ptr %i.bx, align 8, !tbaa !19
  br label %._crit_edge57.thread

bb.p:                                             ; preds = %bb.n
  %i.by = call fastcc noundef ptr @_ZL17stbi__malloc_mad4iiiii(i32 noundef %i.bq, i32 noundef %i.ba, i32 noundef %spec.store.select, i32 noundef 4) ; 11 uses
  %.not144 = icmp eq ptr %i.by, null
  br i1 %.not144, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bz = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.8, ptr %i.bz, align 8, !tbaa !19
  br label %._crit_edge57.thread

bb.r:                                             ; preds = %bb.p
  %i.ca = add i32 %i.bq, -32768
  %or.cond = icmp ult i32 %i.ca, -32760
  br i1 %or.cond, label %bb.s, label %.preheader14

.preheader14:                                     ; preds = %bb.r
  %i.cb = icmp sgt i32 %i.ba, 0
  br i1 %i.cb, label %.lr.ph56, label %._crit_edge57.thread

.lr.ph56:                                         ; preds = %.preheader14
  %i.cc = shl i64 %i.bp, 2
  %i.cd = and i64 %i.cc, 4294967292
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 11 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 12 uses
end_hunk_2
begin_hunk_3_@_ZL14stbi__hdr_loadP13stbi__contextPiS1_S1_iP17stbi__result_info:bb.a
  %i.gx = load ptr, ptr %i.ce, align 8, !tbaa !30 ; 3 uses
  %i.gy = load ptr, ptr %i.cf, align 8, !tbaa !33
  %i.gz = icmp ult ptr %i.gx, %i.gy
  br i1 %i.gz, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph42
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 1
  store ptr %i.ha, ptr %i.ce, align 8, !tbaa !30
  %i.hb = load i8, ptr %i.gx, align 1, !tbaa !32
  br label %_ZL10stbi__get8P13stbi__context.exit162

bb.aq:                                            ; preds = %.lr.ph42
  %i.hc = load i32, ptr %i.cg, align 8, !tbaa !27
  %.not.i157 = icmp eq i32 %i.hc, 0
  br i1 %.not.i157, label %_ZL10stbi__get8P13stbi__context.exit162, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hd = load ptr, ptr %i.ch, align 8, !tbaa !31
  %i.he = load ptr, ptr %i.ci, align 8, !tbaa !25
  %i.hf = load i32, ptr %i.ck, align 4, !tbaa !26
  %i.hg = call noundef i32 %i.hd(ptr noundef %i.he, ptr noundef nonnull %i.cj, i32 noundef %i.hf), !inline_history !6 ; 2 uses
  %i.hh = load ptr, ptr %i.ce, align 8, !tbaa !30
  %i.hi = load ptr, ptr %i.cl, align 8, !tbaa !29
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = sub i64 %i.hj, %i.hk
  %i.hm = trunc i64 %i.hl to i32
  %i.hn = load i32, ptr %i.cm, align 8, !tbaa !28
  %i.ho = add nsw i32 %i.hn, %i.hm
  store i32 %i.ho, ptr %i.cm, align 8, !tbaa !28
  %i.hp = icmp eq i32 %i.hg, 0
  br i1 %i.hp, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.cg, align 8, !tbaa !27
  store i8 0, ptr %i.cj, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i159

bb.at:                                            ; preds = %bb.ar
  %i.hq = sext i32 %i.hg to i64
  %i.hr = getelementptr inbounds i8, ptr %i.cj, i64 %i.hq
  %.pre.i158 = load i8, ptr %i.cj, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i159

_ZL19stbi__refill_bufferP13stbi__context.exit.i159: ; preds = %bb.at, %bb.as
  %i.hs = phi i8 [ 0, %bb.as ], [ %.pre.i158, %bb.at ]
  %.sink.i.i160 = phi ptr [ %i.cn, %bb.as ], [ %i.hr, %bb.at ]
  store ptr %.sink.i.i160, ptr %i.cf, align 8, !tbaa !33
  store ptr %i.cn, ptr %i.ce, align 8, !tbaa !30
  br label %_ZL10stbi__get8P13stbi__context.exit162

_ZL10stbi__get8P13stbi__context.exit162:          ; preds = %bb.ap, %bb.aq, %_ZL19stbi__refill_bufferP13stbi__context.exit.i159
  %.0.i161 = phi i8 [ %i.hb, %bb.ap ], [ %i.hs, %_ZL19stbi__refill_bufferP13stbi__context.exit.i159 ], [ 0, %bb.aq ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ht = shl nsw i64 %indvars.iv, 2
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ht
  store i8 %.0.i161, ptr %gep, align 1, !tbaa !32
  %i.hu = add nuw nsw i32 %.141, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.hu, %i.ev
  br i1 %exitcond.not, label %.loopexit.loopexit63, label %.lr.ph42, !llvm.loop !279

.loopexit.loopexit:                               ; preds = %.lr.ph46, %middle.block
  %indvars.iv.next93.lcssa = phi i64 [ %i.fx, %middle.block ], [ %indvars.iv.next93, %.lr.ph46 ]
  %i.hv = trunc nsw i64 %indvars.iv.next93.lcssa to i32
  br label %.loopexit

.loopexit.loopexit63:                             ; preds = %_ZL10stbi__get8P13stbi__context.exit162
  %i.hw = trunc nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ad, %.loopexit.loopexit63, %.loopexit.loopexit, %.preheader10, %.preheader
  %.5 = phi i32 [ %i.hv, %.loopexit.loopexit ], [ %.211948, %.preheader ], [ %.211948, %.preheader10 ], [ %i.hw, %.loopexit.loopexit63 ], [ %.211948, %bb.ad ] ; 2 uses
  %i.hx = sub nsw i32 %i.bq, %.5                  ; 2 uses
  %i.hy = icmp slt i32 %i.hx, 1
  br i1 %i.hy, label %..critedge_crit_edge, label %bb.ab, !llvm.loop !280

..critedge_crit_edge:                             ; preds = %.loopexit
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next97, 4
  br i1 %exitcond99.not, label %.lr.ph52, label %.preheader12, !llvm.loop !281

bb.au:                                            ; preds = %.lr.ph52, %_ZL17stbi__hdr_convertPfPhi.exit
  %indvars.iv100 = phi i64 [ 0, %.lr.ph52 ], [ %indvars.iv.next101, %_ZL17stbi__hdr_convertPfPhi.exit ] ; 3 uses
  %i.hz = add nuw nsw i64 %indvars.iv100, %i.dv
  %i.ia = mul nsw i64 %i.hz, %i.cp
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.ia ; 11 uses
  %i.ic = shl nuw nsw i64 %indvars.iv100, 2
  %i.id = getelementptr inbounds nuw i8, ptr %.1122, i64 %i.ic ; 6 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 3
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !32  ; 2 uses
  %.not.i163 = icmp eq i8 %i.if, 0
  br i1 %.not.i163, label %bb.bb, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ig = zext i8 %i.if to i32
  %i.ih = add nsw i32 %i.ig, -136
  %i.ii = call noundef float @ldexpf(float noundef 1.000000e+00, i32 noundef %i.ih) #40 ; 4 uses
  %i.ij = load i8, ptr %i.id, align 1, !tbaa !32  ; 2 uses
  br i1 %i.co, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ik = zext i8 %i.ij to i32
  %i.il = getelementptr inbounds nuw i8, ptr %i.id, i64 1
  %i.im = load i8, ptr %i.il, align 1, !tbaa !32
  %i.in = zext i8 %i.im to i32
  %i.io = add nuw nsw i32 %i.in, %i.ik
  %i.ip = getelementptr inbounds nuw i8, ptr %i.id, i64 2
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !32
  %i.ir = zext i8 %i.iq to i32
  %i.is = add nuw nsw i32 %i.io, %i.ir
  %i.it = uitofp nneg i32 %i.is to float
  %i.iu = fmul float %i.ii, %i.it
  %i.iv = fdiv float %i.iu, 3.000000e+00
  store float %i.iv, ptr %i.ib, align 4, !tbaa !52
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.iw = uitofp i8 %i.ij to float
  %i.ix = fmul float %i.ii, %i.iw
  store float %i.ix, ptr %i.ib, align 4, !tbaa !52
  %i.iy = getelementptr inbounds nuw i8, ptr %i.id, i64 1
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !32
  %i.ja = uitofp i8 %i.iz to float
  %i.jb = fmul float %i.ii, %i.ja
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  store float %i.jb, ptr %i.jc, align 4, !tbaa !52
  %i.jd = getelementptr inbounds nuw i8, ptr %i.id, i64 2
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !32
  %i.jf = uitofp i8 %i.je to float
  %i.jg = fmul float %i.ii, %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  store float %i.jg, ptr %i.jh, align 4, !tbaa !52
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  switch i32 %4, label %_ZL17stbi__hdr_convertPfPhi.exit [
    i32 2, label %bb.az
    i32 4, label %bb.ba
  ]

bb.az:                                            ; preds = %bb.ay
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  store float 1.000000e+00, ptr %i.ji, align 4, !tbaa !52
  br label %_ZL17stbi__hdr_convertPfPhi.exit

bb.ba:                                            ; preds = %bb.ay
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ib, i64 12
  store float 1.000000e+00, ptr %i.jj, align 4, !tbaa !52
  br label %_ZL17stbi__hdr_convertPfPhi.exit

bb.bb:                                            ; preds = %bb.au
  switch i32 %spec.store.select, label %_ZL17stbi__hdr_convertPfPhi.exit [
    i32 4, label %bb.bc
    i32 3, label %bb.bd
    i32 2, label %bb.be
    i32 1, label %bb.bf
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ib, i64 12
  store float 1.000000e+00, ptr %i.jk, align 4, !tbaa !52
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  store float 0.000000e+00, ptr %i.jl, align 4, !tbaa !52
  store <2 x float> zeroinitializer, ptr %i.ib, align 4, !tbaa !52
  br label %_ZL17stbi__hdr_convertPfPhi.exit

bb.be:                                            ; preds = %bb.bb
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  store float 1.000000e+00, ptr %i.jm, align 4, !tbaa !52
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bb
  store float 0.000000e+00, ptr %i.ib, align 4, !tbaa !52
  br label %_ZL17stbi__hdr_convertPfPhi.exit

_ZL17stbi__hdr_convertPfPhi.exit:                 ; preds = %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bd, %bb.bf
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond103.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count
  br i1 %exitcond103.not, label %._crit_edge53, label %bb.au, !llvm.loop !282

._crit_edge53:                                    ; preds = %_ZL17stbi__hdr_convertPfPhi.exit
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %exitcond108.not = icmp eq i64 %indvars.iv.next105, %wide.trip.count107
  br i1 %exitcond108.not, label %._crit_edge57, label %bb.w, !llvm.loop !283

._crit_edge57:                                    ; preds = %._crit_edge53
  call void @free(ptr noundef nonnull %.1122) #40
  br label %._crit_edge57.thread

._crit_edge57.thread:                             ; preds = %.preheader14, %bb.an, %bb.ao, %bb.s, %._crit_edge57, %_ZL17stbi__malloc_mad2iii.exit.thread, %bb.z, %bb.q, %bb.o, %bb.k, %bb.i, %.tail.thread, %bb.f, %._crit_edge.thread, %bb.c
  %.3128 = phi ptr [ null, %bb.c ], [ null, %bb.f ], [ null, %.tail.thread ], [ null, %bb.i ], [ null, %bb.k ], [ null, %._crit_edge.thread ], [ null, %bb.z ], [ %i.by, %bb.s ], [ null, %_ZL17stbi__malloc_mad2iii.exit.thread ], [ null, %bb.q ], [ null, %bb.o ], [ null, %bb.an ], [ %i.by, %._crit_edge57 ], [ null, %bb.ao ], [ %i.by, %.preheader14 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret ptr %.3128
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @_ZL16stbi__hdr_to_ldrPfiii(ptr noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #12 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = or i32 %2, %1
  %or.cond.not.i.i.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i.i.i, label %bb.c, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %bb.c
  %i.c = udiv i32 2147483647, %2
  %.not23.i.i = icmp sgt i32 %1, %i.c
  br i1 %.not23.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i:   ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.c
  %i.d = mul nuw nsw i32 %2, %1                   ; 8 uses
  %i.e = or i32 %3, %i.d
  %or.cond.not.i10.i.i = icmp sgt i32 %i.e, -1
  br i1 %or.cond.not.i10.i.i, label %bb.d, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.d:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i
  %i.f = icmp eq i32 %3, 0
  br i1 %i.f, label %_ZL17stbi__malloc_mad3iiii.exit, label %_ZL21stbi__mul2sizes_validii.exit12.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i:          ; preds = %bb.d
  %i.g = udiv i32 2147483647, %3
  %.not.i.i = icmp sgt i32 %i.d, %i.g
  br i1 %.not.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL17stbi__malloc_mad3iiii.exit

_ZL17stbi__malloc_mad3iiii.exit:                  ; preds = %bb.d, %_ZL21stbi__mul2sizes_validii.exit12.i.i
  %i.h = mul nuw nsw i32 %i.d, %3
  %i.i = sext i32 %i.h to i64
  %i.j = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.i) #42 ; 13 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %bb.e

_ZL17stbi__malloc_mad3iiii.exit.thread:           ; preds = %bb.b, %_ZL21stbi__mul2sizes_validii.exit.i.i, %_ZL21stbi__mul2sizes_validii.exit12.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, %_ZL17stbi__malloc_mad3iiii.exit
  tail call void @free(ptr noundef nonnull %0) #40
  %i.l = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.8, ptr %i.l, align 8, !tbaa !19
  br label %bb.h

bb.e:                                             ; preds = %_ZL17stbi__malloc_mad3iiii.exit
  %i.m = and i32 %3, 1
  %sext = add i32 %3, -1
  %.046 = add i32 %sext, %i.m                     ; 6 uses
  %i.n = icmp sgt i32 %i.d, 0
  br i1 %i.n, label %.preheader.lr.ph, label %._crit_edge55

.preheader.lr.ph:                                 ; preds = %bb.e
  %i.o = icmp sgt i32 %.046, 0
  %i.p = load float, ptr @_ZL17stbi__h2l_scale_i, align 4 ; 3 uses
  %i.q = load float, ptr @_ZL17stbi__h2l_gamma_i, align 4 ; 3 uses
  br i1 %i.o, label %.preheader.us.preheader, label %.preheader.lr.ph.split

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.r = sext i32 %3 to i64
  %wide.trip.count66 = zext nneg i32 %i.d to i64
  %wide.trip.count61 = zext nneg i32 %.046 to i64 ; 2 uses
  %i.s = icmp slt i32 %.046, %3
  %i.t = zext nneg i32 %.046 to i64
  %xtraiter85 = and i64 %wide.trip.count61, 1
  %i.u = icmp eq i32 %.046, 1
  %unroll_iter = and i64 %wide.trip.count61, 2147483646
  %lcmp.mod86.not = icmp eq i64 %xtraiter85, 0
  %lcmp.mod87 = trunc i32 %.046 to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.g
  %indvars.iv63 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next64, %bb.g ] ; 2 uses
  %i.v = mul nuw nsw i64 %indvars.iv63, %i.r      ; 4 uses
  br i1 %i.u, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv58 = phi i64 [ %indvars.iv.next59.1, %.preheader.us.new ], [ 0, %.preheader.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.w = add nsw i64 %indvars.iv58, %i.v          ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %0, i64 %i.w
  %i.y = load float, ptr %i.x, align 4, !tbaa !52
  %i.z = fmul float %i.y, %i.p
  %i.aa = tail call noundef float @powf(float noundef %i.z, float noundef %i.q) #40
  %i.ab = fmul float %i.aa, 2.550000e+02
  %i.ac = fadd float %i.ab, 5.000000e-01          ; 2 uses
  %i.ad = fcmp olt float %i.ac, 0.000000e+00
  %spec.store.select.us = select i1 %i.ad, float 0.000000e+00, float %i.ac ; 2 uses
  %i.ae = fcmp ogt float %spec.store.select.us, 2.550000e+02
  %spec.store.select2.us = select i1 %i.ae, float 2.550000e+02, float %spec.store.select.us
  %i.af = fptosi float %spec.store.select2.us to i32
  %i.ag = trunc i32 %i.af to i8
  %i.ah = getelementptr inbounds i8, ptr %i.j, i64 %i.w
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !32
  %indvars.iv.next59 = or disjoint i64 %indvars.iv58, 1
  %i.ai = add nsw i64 %indvars.iv.next59, %i.v    ; 2 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ai
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !52
  %i.al = fmul float %i.ak, %i.p
  %i.am = tail call noundef float @powf(float noundef %i.al, float noundef %i.q) #40
  %i.an = fmul float %i.am, 2.550000e+02
  %i.ao = fadd float %i.an, 5.000000e-01          ; 2 uses
  %i.ap = fcmp olt float %i.ao, 0.000000e+00
  %spec.store.select.us.1 = select i1 %i.ap, float 0.000000e+00, float %i.ao ; 2 uses
  %i.aq = fcmp ogt float %spec.store.select.us.1, 2.550000e+02
  %spec.store.select2.us.1 = select i1 %i.aq, float 2.550000e+02, float %spec.store.select.us.1
  %i.ar = fptosi float %spec.store.select2.us.1 to i32
  %i.as = trunc i32 %i.ar to i8
  %i.at = getelementptr inbounds i8, ptr %i.j, i64 %i.ai
  store i8 %i.as, ptr %i.at, align 1, !tbaa !32
  %indvars.iv.next59.1 = add nuw nsw i64 %indvars.iv58, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !284

bb.f:                                             ; preds = %._crit_edge.us
  %i.au = add nsw i64 %i.v, %i.t                  ; 2 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %0, i64 %i.au
  %i.aw = load float, ptr %i.av, align 4, !tbaa !52
  %i.ax = fmul float %i.aw, 2.550000e+02
  %i.ay = fadd float %i.ax, 5.000000e-01          ; 2 uses
  %i.az = fcmp olt float %i.ay, 0.000000e+00
  %spec.store.select1.us = select i1 %i.az, float 0.000000e+00, float %i.ay ; 2 uses
  %i.ba = fcmp ogt float %spec.store.select1.us, 2.550000e+02
  %spec.store.select3.us = select i1 %i.ba, float 2.550000e+02, float %spec.store.select1.us
  %i.bb = fptosi float %spec.store.select3.us to i32
  %i.bc = trunc i32 %i.bb to i8
  %i.bd = getelementptr inbounds i8, ptr %i.j, i64 %i.au
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.us
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next64, %wide.trip.count66
  br i1 %exitcond67.not, label %._crit_edge55, label %.preheader.us, !llvm.loop !285

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod86.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv58.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next59.1, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod87)
  %i.be = add nsw i64 %indvars.iv58.epil.init, %i.v ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %0, i64 %i.be
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !52
  %i.bh = fmul float %i.bg, %i.p
  %i.bi = tail call noundef float @powf(float noundef %i.bh, float noundef %i.q) #40
  %i.bj = fmul float %i.bi, 2.550000e+02
  %i.bk = fadd float %i.bj, 5.000000e-01          ; 2 uses
  %i.bl = fcmp olt float %i.bk, 0.000000e+00
  %spec.store.select.us.epil = select i1 %i.bl, float 0.000000e+00, float %i.bk ; 2 uses
  %i.bm = fcmp ogt float %spec.store.select.us.epil, 2.550000e+02
  %spec.store.select2.us.epil = select i1 %i.bm, float 2.550000e+02, float %spec.store.select.us.epil
  %i.bn = fptosi float %spec.store.select2.us.epil to i32
  %i.bo = trunc i32 %i.bn to i8
  %i.bp = getelementptr inbounds i8, ptr %i.j, i64 %i.be
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !32
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  br i1 %i.s, label %bb.f, label %bb.g

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.bq = icmp sgt i32 %3, 0
  br i1 %i.bq, label %iter.check, label %._crit_edge55

iter.check:                                       ; preds = %.preheader.lr.ph.split
  %i.br = zext nneg i32 %3 to i64                 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 8 uses
  %min.iters.check = icmp ugt i32 %i.d, 7
  %ident.check.not = icmp eq i32 %3, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.main.loop.iter.check, label %.preheader.preheader

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check75 = icmp ult i32 %i.d, 32
  br i1 %min.iters.check75, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bs = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 96
  %wide.load = load <8 x float>, ptr %i.bt, align 4, !tbaa !52
  %wide.load76 = load <8 x float>, ptr %i.bu, align 4, !tbaa !52
  %wide.load77 = load <8 x float>, ptr %i.bv, align 4, !tbaa !52
  %wide.load78 = load <8 x float>, ptr %i.bw, align 4, !tbaa !52
  %i.bx = fmul <8 x float> %wide.load, splat (float 2.550000e+02)
  %i.by = fmul <8 x float> %wide.load76, splat (float 2.550000e+02)
  %i.bz = fmul <8 x float> %wide.load77, splat (float 2.550000e+02)
  %i.ca = fmul <8 x float> %wide.load78, splat (float 2.550000e+02)
  %i.cb = fadd <8 x float> %i.bx, splat (float 5.000000e-01) ; 2 uses
  %i.cc = fadd <8 x float> %i.by, splat (float 5.000000e-01) ; 2 uses
end_hunk_3
