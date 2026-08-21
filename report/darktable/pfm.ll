inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dt_read_pfm:bb.a
  br i1 %.not195, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %3, align 4, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not196 = icmp eq ptr %4, null                 ; 2 uses
  br i1 %.not196, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %4, align 4, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not197 = icmp eq ptr %1, null                 ; 10 uses
  br i1 %.not197, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %1, align 4, !tbaa !12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not198 = icmp eq ptr %0, null
  br i1 %.not198, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.g = load i8, ptr %0, align 1, !tbaa !13
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %.not197, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 1, ptr %1, align 4, !tbaa !12
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str) #8
  br label %bb.bg

bb.n:                                             ; preds = %bb.j
  %i.i = tail call ptr @dt_util_normalize_path(ptr noundef nonnull %0) #8 ; 2 uses
  %i.j = tail call noalias ptr @fopen(ptr noundef %i.i, ptr noundef nonnull @.str.1) ; 8 uses
  %.not199 = icmp eq ptr %i.j, null
  tail call void @g_free(ptr noundef %i.i) #8
  br i1 %.not199, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  br i1 %.not197, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 1, ptr %1, align 4, !tbaa !12
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.2, ptr noundef nonnull %0) #8
  br label %bb.bg

bb.r:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i16 22616, ptr %i.a, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.c, i8 0, i64 10, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.d, i8 0, i64 10, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.l = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.k) #8
  %i.m = icmp ne i32 %i.l, 2
  %i.n = load i8, ptr %i.a, align 2
  %i.o = icmp ne i8 %i.n, 80
  %or.cond = select i1 %i.m, i1 true, i1 %i.o
  br i1 %or.cond, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  br i1 %.not197, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 6, ptr %1, align 4, !tbaa !12
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.4, ptr noundef nonnull %0) #8
  br label %bb.bf

bb.v:                                             ; preds = %bb.r
  %i.p = load i8, ptr %i.k, align 1, !tbaa !13    ; 2 uses
  %i.q = icmp eq i8 %i.p, 70                      ; 2 uses
  br i1 %i.q, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.r = icmp eq i8 %i.p, 102
  br i1 %i.r, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %.not197, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i32 6, ptr %1, align 4, !tbaa !12
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.4, ptr noundef nonnull %0) #8
  br label %bb.bf

bb.aa:                                            ; preds = %bb.w, %bb.v
  %.0172 = phi i32 [ 3, %bb.v ], [ 1, %bb.w ]     ; 2 uses
  br i1 %.not196, label %.preheader277, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 %.0172, ptr %4, align 4, !tbaa !12
  br label %.preheader277

.preheader277:                                    ; preds = %bb.ab, %bb.aa
  br label %bb.ac

bb.ac:                                            ; preds = %.preheader277, %bb.ad
  %i.s = call i32 @fgetc(ptr noundef nonnull %i.j) ; 2 uses
  switch i32 %i.s, label %bb.ad [
    i32 -1, label %select.unfold
    i32 10, label %select.unfold
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.t = icmp slt i32 %i.s, 48
  br i1 %i.t, label %select.unfold, label %bb.ac

select.unfold:                                    ; preds = %bb.ad, %bb.ac, %bb.ac
  %.not203 = phi i1 [ false, %bb.ac ], [ false, %bb.ac ], [ true, %bb.ad ] ; 2 uses
  %i.u = call i32 @fseek(ptr noundef nonnull %i.j, i64 noundef 3, i32 noundef 0) ; 0 uses
  %i.v = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #8
  %.not200 = icmp eq i32 %i.v, 3
  br i1 %.not200, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %select.unfold
  br i1 %.not197, label %bb.bf, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 6, ptr %1, align 4, !tbaa !12
  br label %bb.bf

bb.ag:                                            ; preds = %select.unfold
  %i.w = call i64 @fread(ptr noundef nonnull %i.e, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %i.j)
  %i.x = and i64 %i.w, 4294967295
  %.not201 = icmp eq i64 %i.x, 1
  br i1 %.not201, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  br i1 %.not197, label %bb.bf, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i32 6, ptr %1, align 4, !tbaa !12
  br label %bb.bf

bb.aj:                                            ; preds = %bb.ag
  %i.y = call i64 @strtol(ptr noundef nonnull captures(none) %i.c, ptr noundef null, i32 noundef 0) #8 ; 2 uses
  %i.z = trunc i64 %i.y to i32                    ; 2 uses
  %i.aa = call i64 @strtol(ptr noundef nonnull captures(none) %i.d, ptr noundef null, i32 noundef 0) #8 ; 4 uses
  %i.ab = trunc i64 %i.aa to i32                  ; 2 uses
  %i.ac = icmp slt i32 %i.z, 1
  %i.ad = icmp slt i32 %i.ab, 1
  %or.cond7 = select i1 %i.ac, i1 true, i1 %i.ad
  br i1 %or.cond7, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  br i1 %.not197, label %bb.bf, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i32 6, ptr %1, align 4, !tbaa !12
  br label %bb.bf

bb.am:                                            ; preds = %bb.aj
  br i1 %.not, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i32 %i.z, ptr %2, align 4, !tbaa !12
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  br i1 %.not195, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i32 %i.ab, ptr %3, align 4, !tbaa !12
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.ae = call reassoc nsz arcp contract afn double @g_ascii_strtod(ptr noundef nonnull %i.b, ptr noundef null) #8
  %i.af = fcmp reassoc nsz arcp contract afn oge double %i.ae, f0xB690000000000000 ; 2 uses
  %i.ag = and i64 %i.y, 2147483647                ; 9 uses
  %i.ah = and i64 %i.aa, 2147483647               ; 4 uses
  %i.ai = mul nuw nsw i64 %i.ah, %i.ag            ; 4 uses
  %i.aj = shl nuw nsw i32 %.0172, 2
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = mul i64 %i.ai, %i.ak
  %i.am = call ptr @dt_alloc_aligned(i64 noundef %i.al) #8 ; 13 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.am, i64 64) ]
  %i.an = shl i64 %5, 2                           ; 3 uses
  %i.ao = mul i64 %i.an, %i.ai
  %i.ap = call ptr @dt_alloc_aligned(i64 noundef %i.ao) #8 ; 12 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ap, i64 64) ]
  %i.aq = icmp ne ptr %i.am, null
  %i.ar = icmp ne ptr %i.ap, null
  %or.cond9 = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond9, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  br i1 %.not197, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i32 7, ptr %1, align 4, !tbaa !12
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.6, ptr noundef nonnull %0) #8
  br label %bb.bf

bb.au:                                            ; preds = %bb.aq
  %i.as = call i64 @fread(ptr noundef nonnull %i.am, i64 noundef %i.ak, i64 noundef %i.ai, ptr noundef nonnull %i.j)
  %sext = shl i64 %i.as, 32
  %i.at = ashr exact i64 %sext, 32
  %.not202 = icmp eq i64 %i.at, %i.ai
  br i1 %.not202, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  br i1 %.not197, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store i32 7, ptr %1, align 4, !tbaa !12
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.7, ptr noundef nonnull %0) #8
  br label %bb.bf

bb.ay:                                            ; preds = %bb.au
  %.not231 = icmp eq i64 %i.ah, 0                 ; 2 uses
  br i1 %i.q, label %.preheader208, label %.preheader209

.preheader209:                                    ; preds = %bb.ay
  br i1 %.not231, label %.loopexit, label %.lr.ph217

.lr.ph217:                                        ; preds = %.preheader209
  %i.au = add i64 %i.aa, 4294967295
  %i.av = and i64 %i.au, 4294967295
  %.not229 = icmp eq i64 %i.ag, 0
  %.not230 = icmp eq i64 %5, 0
  br i1 %.not229, label %.loopexit, label %.lr.ph214.preheader

.lr.ph214.preheader:                              ; preds = %.lr.ph217
  %min.iters.check = icmp ult i64 %5, 4
  %min.iters.check269 = icmp ult i64 %5, 32
  %i.aw = and i64 %5, 28
  %n.vec = and i64 %5, -32                        ; 4 uses
  %cmp.n = icmp eq i64 %5, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.aw, 0
  %n.vec270 = and i64 %5, -4                      ; 3 uses
  %cmp.n275 = icmp eq i64 %5, %n.vec270
  br label %.lr.ph214

.preheader208:                                    ; preds = %bb.ay
  br i1 %.not231, label %.loopexit, label %.lr.ph227

.lr.ph227:                                        ; preds = %.preheader208
  %i.ax = add i64 %i.aa, 4294967295
  %i.ay = and i64 %i.ax, 4294967295
  %.not232 = icmp eq i64 %i.ag, 0
  %.not233 = icmp eq i64 %5, 0
  br i1 %.not232, label %.loopexit, label %.lr.ph224.preheader

.lr.ph224.preheader:                              ; preds = %.lr.ph227
  %6 = mul i64 %5, %i.ag
  %7 = shl i64 %6, 2
  %.4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.4..4..sroa_idx278 = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %.lr.ph224

.lr.ph224:                                        ; preds = %.lr.ph224.preheader, %._crit_edge225
  %.0168226 = phi i64 [ %i.bc, %._crit_edge225 ], [ 0, %.lr.ph224.preheader ] ; 4 uses
  %8 = mul i64 %7, %.0168226
  %i.az = sub nsw i64 %i.ay, %.0168226
  %i.ba = select i1 %.not203, i64 %i.az, i64 %.0168226
  %i.bb = mul nsw i64 %i.ba, %i.ag
  %9 = getelementptr i8, ptr %i.ap, i64 %8
  br label %bb.az

._crit_edge225:                                   ; preds = %._crit_edge221
  %i.bc = add nuw nsw i64 %.0168226, 1            ; 2 uses
  %exitcond239.not = icmp eq i64 %i.bc, %i.ah
  br i1 %exitcond239.not, label %.loopexit, label %.lr.ph224

bb.az:                                            ; preds = %.lr.ph224, %._crit_edge221
  %.0167222 = phi i64 [ 0, %.lr.ph224 ], [ %i.bt, %._crit_edge221 ] ; 3 uses
  %10 = mul i64 %i.an, %.0167222
  %scevgep = getelementptr i8, ptr %9, i64 %10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.bd = add nsw i64 %.0167222, %i.bb
  %.idx = mul i64 %i.bd, 12
  %i.be = getelementptr i8, ptr %i.am, i64 %.idx  ; 5 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !14 ; 2 uses
  br i1 %i.af, label %bb.ba, label %bb.bb

.lr.ph220:                                        ; preds = %.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep, ptr nonnull align 16 %i.f, i64 %i.an, i1 false), !tbaa !14
  br label %._crit_edge221

bb.ba:                                            ; preds = %bb.az
  %i.bg = bitcast float %i.bf to i32
  %i.bh = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bg) #9, !srcloc !16
  store i32 %i.bh, ptr %i.f, align 16, !tbaa !14
  %i.bi = getelementptr i8, ptr %i.be, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !14
  %i.bk = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bj) #9, !srcloc !16
  store i32 %i.bk, ptr %.4..4..sroa_idx278, align 4, !tbaa !14
  %i.bl = getelementptr i8, ptr %i.be, i64 8
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !14
  %i.bn = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bm) #9, !srcloc !16
  %i.bo = bitcast i32 %i.bn to float
  br label %.preheader

bb.bb:                                            ; preds = %bb.az
  store float %i.bf, ptr %i.f, align 16, !tbaa !14
  %i.bp = getelementptr i8, ptr %i.be, i64 4
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !14
  store float %i.bq, ptr %.4..4..sroa_idx, align 4, !tbaa !14
  %i.br = getelementptr i8, ptr %i.be, i64 8
  %i.bs = load float, ptr %i.br, align 4, !tbaa !14
  br label %.preheader

.preheader:                                       ; preds = %bb.bb, %bb.ba
  %.sroa.0.0.2 = phi nsz float [ %i.bo, %bb.ba ], [ %i.bs, %bb.bb ]
  store float %.sroa.0.0.2, ptr %.8..8..sroa_idx, align 8, !tbaa !14
  br i1 %.not233, label %._crit_edge221, label %.lr.ph220

._crit_edge221:                                   ; preds = %.lr.ph220, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bt = add nuw nsw i64 %.0167222, 1            ; 2 uses
  %exitcond238.not = icmp eq i64 %i.bt, %i.ag
  br i1 %exitcond238.not, label %._crit_edge225, label %bb.az

.lr.ph214:                                        ; preds = %.lr.ph214.preheader, %._crit_edge215
  %.0162216 = phi i64 [ %i.bz, %._crit_edge215 ], [ 0, %.lr.ph214.preheader ] ; 4 uses
  %i.bu = sub nsw i64 %i.av, %.0162216
  %i.bv = select i1 %.not203, i64 %i.bu, i64 %.0162216
  %i.bw = mul nsw i64 %i.bv, %i.ag
  %i.bx = getelementptr [4 x i8], ptr %i.am, i64 %i.bw
  %i.by = mul nuw nsw i64 %.0162216, %i.ag
  br label %bb.bc

._crit_edge215:                                   ; preds = %._crit_edge
  %i.bz = add nuw nsw i64 %.0162216, 1            ; 2 uses
  %exitcond236.not = icmp eq i64 %i.bz, %i.ah
  br i1 %exitcond236.not, label %.loopexit, label %.lr.ph214

bb.bc:                                            ; preds = %.lr.ph214, %._crit_edge
  %.0161212 = phi i64 [ 0, %.lr.ph214 ], [ %i.cp, %._crit_edge ] ; 3 uses
  %i.ca = getelementptr [4 x i8], ptr %i.bx, i64 %.0161212
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !14 ; 2 uses
  br i1 %i.af, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.cc = bitcast float %i.cb to i32
  %i.cd = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.cc) #9, !srcloc !17
  %i.ce = bitcast i32 %i.cd to float
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.sroa.0.1 = phi nsz float [ %i.ce, %bb.bd ], [ %i.cb, %bb.bc ] ; 3 uses
  br i1 %.not230, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.be
  %i.cf = add nuw nsw i64 %.0161212, %i.by
  %i.cg = mul i64 %i.cf, %5
  %i.ch = getelementptr [4 x i8], ptr %i.ap, i64 %i.cg ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check269, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <8 x float> poison, float %.sroa.0.1, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ci = getelementptr [4 x i8], ptr %i.ch, i64 %index ; 4 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 32
  %i.ck = getelementptr i8, ptr %i.ci, i64 64
  %i.cl = getelementptr i8, ptr %i.ci, i64 96
  store <8 x float> %broadcast.splat, ptr %i.ci, align 4, !tbaa !14
  store <8 x float> %broadcast.splat, ptr %i.cj, align 4, !tbaa !14
  store <8 x float> %broadcast.splat, ptr %i.ck, align 4, !tbaa !14
  store <8 x float> %broadcast.splat, ptr %i.cl, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !21

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert271 = insertelement <4 x float> poison, float %.sroa.0.1, i64 0
  %broadcast.splat272 = shufflevector <4 x float> %broadcast.splatinsert271, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index273 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next274, %vec.epilog.vector.body ] ; 2 uses
  %i.cn = getelementptr [4 x i8], ptr %i.ch, i64 %index273
  store <4 x float> %broadcast.splat272, ptr %i.cn, align 4, !tbaa !14
  %index.next274 = add nuw i64 %index273, 4       ; 2 uses
  %i.co = icmp eq i64 %index.next274, %n.vec270
  br i1 %i.co, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !22

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n275, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0211.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec270, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.be
  %i.cp = add nuw nsw i64 %.0161212, 1            ; 2 uses
  %exitcond235.not = icmp eq i64 %i.cp, %i.ag
  br i1 %exitcond235.not, label %._crit_edge215, label %bb.bc

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.0211 = phi i64 [ %i.cr, %vec.epilog.scalar.ph ], [ %.0211.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.cq = getelementptr [4 x i8], ptr %i.ch, i64 %.0211
  store float %.sroa.0.1, ptr %i.cq, align 4, !tbaa !14
  %i.cr = add nuw i64 %.0211, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.cr, %5
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !23

bb.bf:                                            ; preds = %bb.ax, %bb.at, %bb.ak, %bb.al, %bb.ah, %bb.ai, %bb.ae, %bb.af, %bb.z, %bb.u
  %.0169 = phi ptr [ null, %bb.z ], [ null, %bb.u ], [ null, %bb.af ], [ null, %bb.ae ], [ null, %bb.ai ], [ null, %bb.ah ], [ null, %bb.al ], [ null, %bb.ak ], [ %i.ap, %bb.at ], [ %i.ap, %bb.ax ]
  %.0164 = phi ptr [ null, %bb.z ], [ null, %bb.u ], [ null, %bb.af ], [ null, %bb.ae ], [ null, %bb.ai ], [ null, %bb.ah ], [ null, %bb.al ], [ null, %bb.ak ], [ %i.am, %bb.at ], [ %i.am, %bb.ax ]
  call void @free(ptr noundef %.0164) #8
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge215, %._crit_edge225, %.lr.ph227, %.preheader208, %.lr.ph217, %.preheader209, %bb.bf
  %.0169.sink = phi ptr [ %.0169, %bb.bf ], [ %i.am, %._crit_edge225 ], [ %i.am, %.lr.ph227 ], [ %i.am, %.preheader209 ], [ %i.am, %.lr.ph217 ], [ %i.am, %.preheader208 ], [ %i.am, %._crit_edge215 ]
  %.0159 = phi ptr [ null, %bb.bf ], [ %i.ap, %._crit_edge225 ], [ %i.ap, %.lr.ph227 ], [ %i.ap, %.preheader209 ], [ %i.ap, %.lr.ph217 ], [ %i.ap, %.preheader208 ], [ %i.ap, %._crit_edge215 ]
  call void @free(ptr noundef %.0169.sink) #8
  %i.cs = call i32 @fclose(ptr noundef nonnull %i.j) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.bg

bb.bg:                                            ; preds = %bb.q, %.loopexit, %bb.m
  %.2 = phi ptr [ null, %bb.m ], [ %.0159, %.loopexit ], [ null, %bb.q ]
  ret ptr %.2
}

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @dt_util_normalize_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #3

declare void @g_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #5

declare double @g_ascii_strtod(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #3

end_hunk_0
