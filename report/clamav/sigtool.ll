Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/sigtool?download=true
inline.NumInlined: 31
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@cli_ac_chklsig

; Function Attrs: nounwind uwtable
define internal fastcc void @decodesigmod(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %char0 = load i8, ptr %0, align 1
  %.not = icmp eq i8 %char0, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %switch.lookup
  %.06 = phi i64 [ %i.e, %switch.lookup ], [ 0, %bb.a ] ; 2 uses
  tail call void (i32, ptr, ...) @mprintf(i32 noundef 0, ptr noundef nonnull @.str.269) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.06
  %i.b = load i8, ptr %i.a, align 1, !tbaa !87
  %switch.tableidx = add i8 %i.b, -97             ; 3 uses
  %i.c = icmp ult i8 %switch.tableidx, 23
  br i1 %i.c, label %switch.hole_check, label %._crit_edge

switch.hole_check:                                ; preds = %.lr.ph
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 4194593, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %._crit_edge

switch.lookup:                                    ; preds = %switch.hole_check
  %i.d = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.decodesigmod, i64 %i.d
  %switch.load = load ptr, ptr %switch.gep, align 8
  tail call void (i32, ptr, ...) @mprintf(i32 noundef 0, ptr noundef nonnull %switch.load) #23
  %i.e = add nuw i64 %.06, 1                      ; 2 uses
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %i.g = icmp ult i64 %i.e, %i.f
  br i1 %i.g, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %switch.lookup, %.lr.ph, %switch.hole_check, %bb.a
  %.str.49.sink = phi ptr [ @.str.49, %bb.a ], [ @.str.466, %switch.hole_check ], [ @.str.466, %.lr.ph ], [ @.str.49, %switch.lookup ]
  tail call void (i32, ptr, ...) @mprintf(i32 noundef 0, ptr noundef nonnull %.str.49.sink) #23
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @decodehex(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29 ; 6 uses
  %i.c = trunc i64 %i.b to i32                    ; 5 uses
  %i.d = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #29 ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 6 uses
  %.not237 = icmp eq ptr %i.d, %0
  br i1 %.not237, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.467) #23
  br label %bb.bp

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.i = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.h, i32 noundef 47) #29
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.468) #23
  br label %bb.bp

bb.f:                                             ; preds = %bb.d
  %i.k = add i64 %i.g, 1                          ; 3 uses
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = icmp ult i32 %i.l, %i.c
  br i1 %i.m, label %.lr.ph.preheader, label %.loopexit253

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.n = and i64 %i.k, 4294967295
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv = phi i64 [ %i.n, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.p = load i8, ptr %i.o, align 1, !tbaa !87
  %i.q = icmp eq i8 %i.p, 47
  br i1 %i.q, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.r = add nuw i64 %indvars.iv, 4294967295
  %i.s = and i64 %i.r, 4294967295
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !87
  %.not238 = icmp eq i8 %i.u, 92
  br i1 %.not238, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = trunc nuw i64 %indvars.iv to i32
  %i.w = xor i64 %i.g, -1
  %i.x = add i64 %indvars.iv, %i.w
  br label %.loopexit253

bb.i:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %lftr.wideiv, %i.c
  br i1 %exitcond.not, label %.loopexit253.thread, label %.lr.ph

.loopexit253:                                     ; preds = %bb.f, %bb.h
  %.0172264 = phi i32 [ %i.v, %bb.h ], [ %i.l, %bb.f ]
  %.0 = phi i64 [ %i.x, %bb.h ], [ 0, %bb.f ]     ; 5 uses
  %i.y = icmp eq i32 %.0172264, %i.c
  br i1 %i.y, label %.loopexit253.thread, label %bb.j

.loopexit253.thread:                              ; preds = %bb.i, %.loopexit253
  tail call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.468) #23
  br label %bb.bp

bb.j:                                             ; preds = %.loopexit253
  %i.z = and i64 %i.b, 4294967295
  %i.aa = add i64 %i.g, %.0
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = add i64 %i.ab, -2                       ; 3 uses
  %i.ad = tail call noalias ptr @calloc(i64 noundef %i.k, i64 noundef 1) #26 ; 7 uses
  %.not239 = icmp eq ptr %i.ad, null
  br i1 %.not239, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.469) #23
  br label %bb.bp

bb.l:                                             ; preds = %bb.j
  %i.ae = tail call ptr @strncpy(ptr noundef nonnull %i.ad, ptr noundef nonnull %0, i64 noundef %i.g) #23 ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.g
  store i8 0, ptr %i.af, align 1, !tbaa !87
  %i.ag = add i64 %.0, 1
  %i.ah = tail call noalias ptr @calloc(i64 noundef %i.ag, i64 noundef 1) #26 ; 6 uses
  %.not240 = icmp eq ptr %i.ah, null
  br i1 %.not240, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.470) #23
  tail call void @free(ptr noundef nonnull %i.ad) #23
  br label %bb.bp

bb.n:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ak = tail call ptr @strncpy(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.aj, i64 noundef %.0) #23 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.0
  store i8 0, ptr %i.al, align 1, !tbaa !87
  %.not241 = icmp eq i64 %i.ac, 0
  br i1 %.not241, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = add i64 %i.ab, -1
  %i.an = tail call noalias ptr @calloc(i64 noundef %i.am, i64 noundef 1) #26 ; 4 uses
  %.not242 = icmp eq ptr %i.an, null
  br i1 %.not242, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.471) #23
  tail call void @free(ptr noundef nonnull %i.ad) #23
  tail call void @free(ptr noundef nonnull %i.ah) #23
  br label %bb.bp

bb.q:                                             ; preds = %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.0
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.aq = tail call ptr @strncpy(ptr noundef nonnull %i.an, ptr noundef nonnull %i.ap, i64 noundef %i.ac) #23 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ac
  store i8 0, ptr %i.ar, align 1, !tbaa !87
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.q
  %.0162 = phi ptr [ %i.an, %bb.q ], [ null, %bb.n ] ; 3 uses
  tail call void (i32, ptr, ...) @mprintf(i32 noundef 0, ptr noundef nonnull @.str.472, ptr noundef nonnull %i.ad) #23
  tail call void (i32, ptr, ...) @mprintf(i32 noundef 0, ptr noundef nonnull @.str.473, ptr noundef nonnull %i.ah) #23
  %.not243 = icmp eq ptr %.0162, null             ; 2 uses
  %i.as = select i1 %.not243, ptr @.str.475, ptr %.0162
  tail call void (i32, ptr, ...) @mprintf(i32 noundef 0, ptr noundef nonnull @.str.474, ptr noundef nonnull %i.as) #23
  tail call void @free(ptr noundef nonnull %i.ad) #23
  tail call void @free(ptr noundef nonnull %i.ah) #23
  br i1 %.not243, label %bb.bp, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @free(ptr noundef nonnull %.0162) #23
  br label %bb.bp

bb.t:                                             ; preds = %bb.a
  %i.at = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 123) #29
  %.not211 = icmp eq ptr %i.at, null
  br i1 %.not211, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.au = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 91) #29
  %.not212 = icmp eq ptr %i.au, null
  br i1 %.not212, label %bb.bc, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.av = tail call noalias ptr @strdup(ptr noundef nonnull %0) #23 ; 9 uses
  %.not220 = icmp eq ptr %i.av, null
  br i1 %.not220, label %bb.bp, label %.preheader252

.preheader252:                                    ; preds = %bb.v
  %.not302 = icmp eq i32 %i.c, 0
  br i1 %.not302, label %.loopexit.sink.split, label %.lr.ph269.preheader

.lr.ph269.preheader:                              ; preds = %.preheader252
  %wide.trip.count = and i64 %i.b, 4294967295     ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 8
  br i1 %min.iters.check, label %.lr.ph269.preheader37, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph269.preheader
  %n.vec = and i64 %i.b, 4294967288               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %predphi, %vector.body ]
  %vec.phi8 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %predphi10, %vector.body ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %wide.load = load <4 x i8>, ptr %i.aw, align 1, !tbaa !87 ; 2 uses
  %wide.load9 = load <4 x i8>, ptr %i.ax, align 1, !tbaa !87 ; 2 uses
  %i.ay = icmp eq <4 x i8> %wide.load, splat (i8 42)
  %i.az = icmp eq <4 x i8> %wide.load9, splat (i8 42)
  %i.ba = and <4 x i8> %wide.load, splat (i8 -33)
  %i.bb = icmp eq <4 x i8> %i.ba, splat (i8 91)
  %i.bc = and <4 x i8> %wide.load9, splat (i8 -33)
  %i.bd = icmp eq <4 x i8> %i.bc, splat (i8 91)
  %i.be = or <4 x i1> %i.bb, %i.ay
  %i.bf = or <4 x i1> %i.bd, %i.az
  %i.bg = zext <4 x i1> %i.be to <4 x i32>
  %predphi = add <4 x i32> %vec.phi, %i.bg        ; 2 uses
  %i.bh = zext <4 x i1> %i.bf to <4 x i32>
  %predphi10 = add <4 x i32> %vec.phi8, %i.bh     ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !117

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %predphi10, %predphi
  %i.bj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph269.preheader37

.lr.ph269.preheader37:                            ; preds = %.lr.ph269.preheader, %middle.block
  %indvars.iv322.ph = phi i64 [ 0, %.lr.ph269.preheader ], [ %n.vec, %middle.block ]
  %.0168268.ph = phi i32 [ 0, %.lr.ph269.preheader ], [ %i.bj, %middle.block ]
  br label %.lr.ph269

.lr.ph269:                                        ; preds = %.lr.ph269.preheader37, %bb.x
  %indvars.iv322 = phi i64 [ %indvars.iv.next323, %bb.x ], [ %indvars.iv322.ph, %.lr.ph269.preheader37 ] ; 2 uses
  %.0168268 = phi i32 [ %.1169, %bb.x ], [ %.0168268.ph, %.lr.ph269.preheader37 ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv322
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !87
  switch i8 %i.bl, label %bb.x [
    i8 123, label %bb.w
    i8 91, label %bb.w
    i8 42, label %bb.w
  ]

bb.w:                                             ; preds = %.lr.ph269, %.lr.ph269, %.lr.ph269
  %i.bm = add i32 %.0168268, 1
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph269, %bb.w
  %.1169 = phi i32 [ %i.bm, %bb.w ], [ %.0168268, %.lr.ph269 ] ; 2 uses
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 1 ; 2 uses
  %exitcond325.not = icmp eq i64 %indvars.iv.next323, %wide.trip.count
  br i1 %exitcond325.not, label %._crit_edge, label %.lr.ph269, !llvm.loop !118

._crit_edge:                                      ; preds = %bb.x, %middle.block
  %.1169.lcssa = phi i32 [ %i.bj, %middle.block ], [ %.1169, %bb.x ]
  %i.bn = add i32 %.1169.lcssa, 1                 ; 3 uses
  %.not222280 = icmp ult i32 %i.bn, 2
  br i1 %.not222280, label %.loopexit.sink.split, label %.lr.ph291

.lr.ph291:                                        ; preds = %._crit_edge, %bb.bb
  %.0164289 = phi i32 [ %.2, %bb.bb ], [ 0, %._crit_edge ] ; 5 uses
  %.0165288 = phi i32 [ %.2167, %bb.bb ], [ 0, %._crit_edge ] ; 4 uses
  %.2174287 = phi i32 [ %i.cy, %bb.bb ], [ 1, %._crit_edge ] ; 2 uses
  %.0177286 = phi i32 [ %.2179, %bb.bb ], [ 0, %._crit_edge ] ; 3 uses
  %.0180282 = phi ptr [ %.2182, %bb.bb ], [ %i.av, %._crit_edge ] ; 5 uses
  %.0183281 = phi ptr [ %.2185, %bb.bb ], [ %i.av, %._crit_edge ] ; 3 uses
  %.not223 = icmp eq i32 %.2174287, %i.bn         ; 2 uses
  br i1 %.not223, label %bb.z, label %.preheader249

.preheader249:                                    ; preds = %.lr.ph291
  %i.bo = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0180282) #29 ; 2 uses
  %.not303 = icmp eq i64 %i.bo, 0
  br i1 %.not303, label %.loopexit250, label %.lr.ph277

.lr.ph277:                                        ; preds = %.preheader249, %bb.y
  %i.bp = phi i64 [ %i.bt, %bb.y ], [ 0, %.preheader249 ] ; 3 uses
  %.0171276 = phi i32 [ %i.bs, %bb.y ], [ 0, %.preheader249 ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.0180282, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !87
  switch i8 %i.br, label %bb.y [
    i8 123, label %.loopexit250.split.loop.exit271
    i8 91, label %.loopexit250.split.loop.exit271
    i8 42, label %.loopexit250.loopexit.split.loop.exit
  ]

bb.y:                                             ; preds = %.lr.ph277
  %i.bs = add i32 %.0171276, 1                    ; 2 uses
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %i.bu = icmp ugt i64 %i.bo, %i.bt
  br i1 %i.bu, label %.lr.ph277, label %.loopexit250

.loopexit250.split.loop.exit271:                  ; preds = %.lr.ph277, %.lr.ph277
  %i.bv = getelementptr inbounds nuw i8, ptr %.0180282, i64 %i.bp
  br label %.loopexit250

.loopexit250.loopexit.split.loop.exit:            ; preds = %.lr.ph277
  %i.bw = getelementptr inbounds nuw i8, ptr %.0180282, i64 %i.bp
  br label %.loopexit250

.loopexit250:                                     ; preds = %bb.y, %.loopexit250.loopexit.split.loop.exit, %.loopexit250.split.loop.exit271, %.preheader249
  %.1184 = phi ptr [ %.0183281, %.preheader249 ], [ %i.bv, %.loopexit250.split.loop.exit271 ], [ %i.bw, %.loopexit250.loopexit.split.loop.exit ], [ %.0183281, %bb.y ] ; 2 uses
  %.1178 = phi i32 [ %.0177286, %.preheader249 ], [ 0, %.loopexit250.split.loop.exit271 ], [ 1, %.loopexit250.loopexit.split.loop.exit ], [ %.0177286, %bb.y ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.1184, i64 1
  store i8 0, ptr %.1184, align 1, !tbaa !87
  br label %bb.z

bb.z:                                             ; preds = %.loopexit250, %.lr.ph291
  %.2185 = phi ptr [ %i.bx, %.loopexit250 ], [ %.0183281, %.lr.ph291 ] ; 10 uses
  %.2179 = phi i32 [ %.1178, %.loopexit250 ], [ %.0177286, %.lr.ph291 ] ; 2 uses
  %i.by = icmp ne i32 %.0165288, 0                ; 2 uses
  %i.bz = icmp ne i32 %.0164289, 0                ; 2 uses
  %or.cond = and i1 %i.by, %i.bz
  br i1 %or.cond, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.ca = icmp eq i32 %.0165288, %.0164289
  br i1 %i.ca, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void (i32, ptr, ...) @mprintf(i32 noundef 0, ptr noundef nonnull @.str.476, i32 noundef %.0164289) #23
  br label %bb.ah

bb.ac:                                            ; preds = %bb.aa
  tail call void (i32, ptr, ...) @mprintf(i32 noundef 0, ptr noundef nonnull @.str.477, i32 noundef %.0165288, i32 noundef %.0164289) #23
  br label %bb.ah

bb.ad:                                            ; preds = %bb.z
  br i1 %i.by, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  tail call void (i32, ptr, ...) @mprintf(i32 noundef 0, ptr noundef nonnull @.str.478, i32 noundef %.0165288) #23
  br label %bb.ah

bb.af:                                            ; preds = %bb.ad
  br i1 %i.bz, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  tail call void (i32, ptr, ...) @mprintf(i32 noundef 0, ptr noundef nonnull @.str.479, i32 noundef %.0164289) #23
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ae, %bb.ag, %bb.af, %bb.ab, %bb.ac
  %i.cb = call fastcc ptr @decodehexspecial(ptr noundef %.0180282, ptr noundef %i.a) ; 3 uses
  %.not224 = icmp eq ptr %i.cb, null
  br i1 %.not224, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  tail call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.480) #23
  tail call void @free(ptr noundef %i.av) #23
  br label %bb.bp

bb.aj:                                            ; preds = %bb.ah
  %i.cc = load i32, ptr %i.a, align 4, !tbaa !86
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  %i.ce = tail call i64 @write(i32 noundef 1, ptr noundef nonnull %i.cb, i64 noundef %i.cd) #23
  %.not225 = icmp eq i64 %i.ce, %i.cd
  br i1 %.not225, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void (i32, ptr, ...) @mprintf(i32 noundef 4, ptr noundef nonnull @.str.481) #23
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  tail call void @free(ptr noundef nonnull %i.cb) #23
  br i1 %.not223, label %.loopexit.sink.split, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.not226 = icmp eq i32 %.2179, 0
  br i1 %.not226, label %.critedge, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void (i32, ptr, ...) @mprintf(i32 noundef 0, ptr noundef nonnull @.str.482) #23
  br label %bb.bb

.critedge:                                        ; preds = %bb.am
  %i.cf = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.2185, i32 noundef 125) #29 ; 2 uses
  %.not227 = icmp eq ptr %i.cf, null
  br i1 %.not227, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.critedge
  %i.cg = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.2185, i32 noundef 93) #29 ; 2 uses
  %.not228 = icmp eq ptr %i.cg, null
  br i1 %.not228, label %.loopexit251, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.critedge
  %.1181 = phi ptr [ %i.cf, %.critedge ], [ %i.cg, %bb.ao ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.1181, i64 1 ; 2 uses
  store i8 0, ptr %.1181, align 1, !tbaa !87
  %i.ci = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.2185, i32 noundef 45) #29
  %.not229 = icmp eq ptr %i.ci, null
  br i1 %.not229, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.cj = tail call i32 @cli_isnumber(ptr noundef nonnull %.2185) #23
  %.not230 = icmp eq i32 %i.cj, 0
  br i1 %.not230, label %.loopexit251, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ck = tail call i64 @__isoc23_strtol(ptr noundef nonnull %.2185, ptr noundef null, i32 noundef 10) #23, !inline_history !1
  %i.cl = trunc i64 %i.ck to i32                  ; 3 uses
  %i.cm = icmp slt i32 %i.cl, 0
  br i1 %i.cm, label %.loopexit251, label %bb.bb

bb.as:                                            ; preds = %bb.ap
  %i.cn = tail call ptr @cli_strtok(ptr noundef nonnull %.2185, i32 noundef 0, ptr noundef nonnull @.str.483) #23 ; 6 uses
  %.not231 = icmp eq ptr %i.cn, null
  br i1 %.not231, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.co = tail call i32 @cli_isnumber(ptr noundef nonnull %i.cn) #23
  %.not232 = icmp eq i32 %i.co, 0
  br i1 %.not232, label %.loopexit251.sink.split, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cp = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.cn, ptr noundef null, i32 noundef 10) #23, !inline_history !1
  %i.cq = trunc i64 %i.cp to i32                  ; 2 uses
  %i.cr = icmp slt i32 %i.cq, 0
  br i1 %i.cr, label %.loopexit251.sink.split, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void @free(ptr noundef nonnull %i.cn) #23
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.as
  %.1166 = phi i32 [ %i.cq, %bb.av ], [ 0, %bb.as ]
  %i.cs = tail call ptr @cli_strtok(ptr noundef nonnull %.2185, i32 noundef 1, ptr noundef nonnull @.str.483) #23 ; 6 uses
  %.not233 = icmp eq ptr %i.cs, null
  br i1 %.not233, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ct = tail call i32 @cli_isnumber(ptr noundef nonnull %i.cs) #23
  %.not234 = icmp eq i32 %i.ct, 0
  br i1 %.not234, label %.loopexit251.sink.split, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cu = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.cs, ptr noundef null, i32 noundef 10) #23, !inline_history !1
  %i.cv = trunc i64 %i.cu to i32                  ; 2 uses
  %i.cw = icmp slt i32 %i.cv, 0
  br i1 %i.cw, label %.loopexit251.sink.split, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void @free(ptr noundef nonnull %i.cs) #23
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.aw
  %.1 = phi i32 [ %i.cv, %bb.az ], [ 0, %bb.aw ]
  %i.cx = tail call ptr @cli_strtok(ptr noundef nonnull %.2185, i32 noundef 2, ptr noundef nonnull @.str.483) #23 ; 2 uses
  %.not235 = icmp eq ptr %i.cx, null
  br i1 %.not235, label %bb.bb, label %.loopexit251.sink.split

bb.bb:                                            ; preds = %bb.an, %bb.ar, %bb.ba
  %.2182 = phi ptr [ %i.ch, %bb.ar ], [ %i.ch, %bb.ba ], [ %.2185, %bb.an ]
  %.2167 = phi i32 [ %i.cl, %bb.ar ], [ %.1166, %bb.ba ], [ 0, %bb.an ]
  %.2 = phi i32 [ %i.cl, %bb.ar ], [ %.1, %bb.ba ], [ 0, %bb.an ]
  %i.cy = add i32 %.2174287, 1                    ; 2 uses
  %.not222 = icmp ugt i32 %i.cy, %i.bn
  br i1 %.not222, label %.loopexit.sink.split, label %.lr.ph291

.loopexit251.sink.split:                          ; preds = %bb.ba, %bb.ax, %bb.ay, %bb.at, %bb.au
  %.lcssa377.sink = phi ptr [ %i.cs, %bb.ax ], [ %i.cn, %bb.at ], [ %i.cn, %bb.au ], [ %i.cs, %bb.ay ], [ %i.cx, %bb.ba ]
  tail call void @free(ptr noundef nonnull %.lcssa377.sink) #23
  br label %.loopexit251

.loopexit251:                                     ; preds = %bb.aq, %bb.ar, %bb.ao, %.loopexit251.sink.split
  tail call void @free(ptr noundef %i.av) #23
  br label %bb.bp

bb.bc:                                            ; preds = %bb.u
  %i.cz = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 42) #29
  %.not213 = icmp eq ptr %i.cz, null
  br i1 %.not213, label %bb.bl, label %.preheader

.preheader:                                       ; preds = %bb.bc
  %.not304 = icmp eq i32 %i.c, 0
  br i1 %.not304, label %.loopexit, label %.lr.ph295.preheader

.lr.ph295.preheader:                              ; preds = %.preheader
  %wide.trip.count329 = and i64 %i.b, 4294967295  ; 3 uses
  %min.iters.check12 = icmp samesign ult i64 %wide.trip.count329, 8
  br i1 %min.iters.check12, label %.lr.ph295.preheader31, label %vector.ph13

vector.ph13:                                      ; preds = %.lr.ph295.preheader
  %n.vec14 = and i64 %i.b, 4294967288             ; 3 uses
  br label %vector.body15

vector.body15:                                    ; preds = %vector.body15, %vector.ph13
  %index16 = phi i64 [ 0, %vector.ph13 ], [ %index.next21, %vector.body15 ] ; 2 uses
  %vec.phi17 = phi <4 x i32> [ zeroinitializer, %vector.ph13 ], [ %i.dg, %vector.body15 ]
  %vec.phi18 = phi <4 x i32> [ zeroinitializer, %vector.ph13 ], [ %i.dh, %vector.body15 ]
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 %index16 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %wide.load19 = load <4 x i8>, ptr %i.da, align 1, !tbaa !87
  %wide.load20 = load <4 x i8>, ptr %i.db, align 1, !tbaa !87
  %i.dc = icmp eq <4 x i8> %wide.load19, splat (i8 42)
  %i.dd = icmp eq <4 x i8> %wide.load20, splat (i8 42)
  %i.de = zext <4 x i1> %i.dc to <4 x i32>
  %i.df = zext <4 x i1> %i.dd to <4 x i32>
  %i.dg = add <4 x i32> %vec.phi17, %i.de         ; 2 uses
  %i.dh = add <4 x i32> %vec.phi18, %i.df         ; 2 uses
  %index.next21 = add nuw i64 %index16, 8         ; 2 uses
  %i.di = icmp eq i64 %index.next21, %n.vec14
  br i1 %i.di, label %middle.block22, label %vector.body15, !llvm.loop !119

middle.block22:                                   ; preds = %vector.body15
  %bin.rdx23 = add <4 x i32> %i.dh, %i.dg
  %i.dj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx23) ; 2 uses
  %cmp.n24 = icmp eq i64 %wide.trip.count329, %n.vec14
  br i1 %cmp.n24, label %._crit_edge296, label %.lr.ph295.preheader31

.lr.ph295.preheader31:                            ; preds = %.lr.ph295.preheader, %middle.block22
  %indvars.iv326.ph = phi i64 [ 0, %.lr.ph295.preheader ], [ %n.vec14, %middle.block22 ]
  %.3294.ph = phi i32 [ 0, %.lr.ph295.preheader ], [ %i.dj, %middle.block22 ]
  br label %.lr.ph295

.lr.ph295:                                        ; preds = %.lr.ph295.preheader31, %.lr.ph295
  %indvars.iv326 = phi i64 [ %indvars.iv.next327, %.lr.ph295 ], [ %indvars.iv326.ph, %.lr.ph295.preheader31 ] ; 2 uses
  %.3294 = phi i32 [ %spec.select246, %.lr.ph295 ], [ %.3294.ph, %.lr.ph295.preheader31 ]
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv326
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !87
  %i.dm = icmp eq i8 %i.dl, 42
  %i.dn = zext i1 %i.dm to i32
  %spec.select246 = add i32 %.3294, %i.dn         ; 2 uses
  %indvars.iv.next327 = add nuw nsw i64 %indvars.iv326, 1 ; 2 uses
  %exitcond330.not = icmp eq i64 %indvars.iv.next327, %wide.trip.count329
  br i1 %exitcond330.not, label %._crit_edge296, label %.lr.ph295, !llvm.loop !120

._crit_edge296:                                   ; preds = %.lr.ph295, %middle.block22
  %spec.select246.lcssa = phi i32 [ %i.dj, %middle.block22 ], [ %spec.select246, %.lr.ph295 ]
  %i.do = add i32 %spec.select246.lcssa, 1        ; 3 uses
  %.not217298 = icmp ult i32 %i.do, 2
  br i1 %.not217298, label %.loopexit, label %.lr.ph301

.lr.ph301:                                        ; preds = %._crit_edge296, %bb.bk
  %.4176299 = phi i32 [ %i.dx, %bb.bk ], [ 1, %._crit_edge296 ] ; 4 uses
  %i.dp = add i32 %.4176299, -1
  %i.dq = tail call ptr @cli_strtok(ptr noundef nonnull %0, i32 noundef %i.dp, ptr noundef nonnull @.str.168) #23 ; 4 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.lr.ph301
  tail call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.484, i32 noundef %.4176299) #23
  br label %bb.bp

bb.be:                                            ; preds = %.lr.ph301
  %i.ds = call fastcc ptr @decodehexspecial(ptr noundef nonnull %i.dq, ptr noundef %i.a) ; 3 uses
  %.not218 = icmp eq ptr %i.ds, null
  br i1 %.not218, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  tail call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.480) #23
  tail call void @free(ptr noundef nonnull %i.dq) #23
  br label %bb.bp

bb.bg:                                            ; preds = %bb.be
  %i.dt = load i32, ptr %i.a, align 4, !tbaa !86
  %i.du = zext i32 %i.dt to i64                   ; 2 uses
  %i.dv = tail call i64 @write(i32 noundef 1, ptr noundef nonnull %i.ds, i64 noundef %i.du) #23
  %.not219 = icmp eq i64 %i.dv, %i.du
  br i1 %.not219, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void (i32, ptr, ...) @mprintf(i32 noundef 4, ptr noundef nonnull @.str.481) #23
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  tail call void @free(ptr noundef nonnull %i.ds) #23
  %i.dw = icmp ult i32 %.4176299, %i.do
  br i1 %i.dw, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  tail call void (i32, ptr, ...) @mprintf(i32 noundef 0, ptr noundef nonnull @.str.482) #23
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  tail call void @free(ptr noundef nonnull %i.dq) #23
  %i.dx = add i32 %.4176299, 1                    ; 2 uses
  %.not217 = icmp ugt i32 %i.dx, %i.do
  br i1 %.not217, label %.loopexit, label %.lr.ph301

bb.bl:                                            ; preds = %bb.bc
  %i.dy = call fastcc ptr @decodehexspecial(ptr noundef nonnull %0, ptr noundef %i.a) ; 4 uses
  %.not214 = icmp eq ptr %i.dy, null
  br i1 %.not214, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  tail call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.480) #23
  br label %bb.bp

bb.bn:                                            ; preds = %bb.bl
  %i.dz = load i32, ptr %i.a, align 4, !tbaa !86
  %i.ea = zext i32 %i.dz to i64                   ; 2 uses
  %i.eb = tail call i64 @write(i32 noundef 1, ptr noundef nonnull %i.dy, i64 noundef %i.ea) #23
  %.not215 = icmp eq i64 %i.eb, %i.ea
  br i1 %.not215, label %.loopexit.sink.split, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  tail call void (i32, ptr, ...) @mprintf(i32 noundef 4, ptr noundef nonnull @.str.481) #23
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.bb, %bb.al, %._crit_edge, %.preheader252, %bb.bn, %bb.bo
  %.sink = phi ptr [ %i.dy, %bb.bn ], [ %i.dy, %bb.bo ], [ %i.av, %.preheader252 ], [ %i.av, %._crit_edge ], [ %i.av, %bb.al ], [ %i.av, %bb.bb ]
  tail call void @free(ptr noundef %.sink) #23
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bk, %.loopexit.sink.split, %.preheader, %._crit_edge296
  tail call void (i32, ptr, ...) @mprintf(i32 noundef 0, ptr noundef nonnull @.str.49) #23
  br label %bb.bp

bb.bp:                                            ; preds = %bb.v, %bb.c, %bb.e, %.loopexit253.thread, %bb.k, %bb.m, %bb.p, %bb.s, %bb.r, %.loopexit, %bb.bm, %bb.bf, %bb.bd, %.loopexit251, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @matchsig(ptr noundef %0, ptr nofree noundef readnone captures(address_is_null) %1, i32 noundef range(i32 0, -1) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %3 = alloca %struct.stat, align 8               ; 4 uses
  %4 = alloca %struct.cli_ctx_tag, align 8        ; 12 uses
  %5 = alloca %struct.cl_scan_options, align 4    ; 5 uses
  %6 = alloca %struct.cli_lsig_tdb, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr null, ptr %i.a, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %4, i8 0, i64 176, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %6, i8 0, i64 136, i1 false)
  tail call void (i32, ptr, ...) @mprintf(i32 noundef 0, ptr noundef nonnull @.str.519, ptr noundef %0) #23
  %i.b = tail call i64 @lseek(i32 noundef %2, i64 noundef 0, i32 noundef 0) #23 ; 0 uses
  %i.c = call i32 @fstat(i32 noundef %2, ptr noundef nonnull %3) #23 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !29
  %i.f = tail call ptr @fmap_new(i32 noundef %2, i64 noundef 0, i64 noundef %i.e, ptr noundef null, ptr noundef null) #23 ; 6 uses
  %i.g = icmp eq ptr %i.f, null                   ; 2 uses
  br i1 %i.g, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @cl_engine_new() #23       ; 14 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.520) #23
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.i = tail call i32 @cl_engine_set_num(ptr noundef nonnull %i.h, i32 noundef 10, i64 noundef 1) #23 ; 0 uses
  %i.j = tail call i32 @cli_initroots(ptr noundef nonnull %i.h, i32 noundef 0) #23
  %.not38 = icmp eq i32 %i.j, 0
  br i1 %.not38, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.521) #23
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !51
  %i.n = call i32 @readdb_parse_ldb_subsignature(ptr noundef %i.m, ptr noundef nonnull @.str.166, ptr noundef %0, ptr noundef nonnull @.str.168, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %6) #23
  %.not39 = icmp eq i32 %i.n, 0
  br i1 %.not39, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.522) #23
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.o = call i32 @cl_engine_compile(ptr noundef nonnull %i.h) #23
  %.not40 = icmp eq i32 %i.o, 0
  br i1 %.not40, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.523) #23
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.h, ptr %i.p, align 8, !tbaa !63
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %5, ptr %i.q, align 8, !tbaa !64
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 -1, ptr %i.r, align 4, !tbaa !66
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !67
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 104
  store ptr %i.t, ptr %i.u, align 8, !tbaa !68
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.w = load i32, ptr %i.v, align 8, !tbaa !69   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i32 %i.w, ptr %i.x, align 8, !tbaa !70
  %i.y = zext i32 %i.w to i64
  %i.z = call noalias ptr @calloc(i64 noundef 104, i64 noundef %i.y) #26 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !71
  %.not41 = icmp eq ptr %i.z, null
  br i1 %.not41, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.f, ptr %i.ab, align 8, !tbaa !74
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !76
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !77
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 88
  store ptr %i.f, ptr %i.af, align 8, !tbaa !78
  %i.ag = call i32 @cli_scan_fmap(ptr noundef nonnull %4, i32 noundef 0, i1 noundef zeroext false, ptr noundef null, i32 noundef 1, ptr noundef nonnull %i.a) #23 ; 0 uses
  %.02952 = load ptr, ptr %i.a, align 8, !tbaa !122 ; 2 uses
  %.not4253 = icmp eq ptr %.02952, null
  br i1 %.not4253, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %.02955 = phi ptr [ %.029, %.lr.ph ], [ %.02952, %bb.k ]
  %.02854 = phi i32 [ %i.ah, %.lr.ph ], [ 0, %bb.k ] ; 2 uses
  %i.ah = add i32 %.02854, 1                      ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.02955, i64 24
  %.029 = load ptr, ptr %i.ai, align 8, !tbaa !122 ; 2 uses
  %.not42 = icmp eq ptr %.029, null
  br i1 %.not42, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %.not43 = icmp eq i32 %i.ah, 0
  br i1 %.not43, label %._crit_edge.thread, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %.not44 = icmp eq ptr %1, null
  %i.aj = select i1 %.not44, ptr @.str.526, ptr @.str.525
  %.not45 = icmp eq i32 %.02854, 0
  %i.ak = select i1 %.not45, ptr @.str.528, ptr @.str.527
  call void (i32, ptr, ...) @mprintf(i32 noundef 0, ptr noundef nonnull @.str.524, ptr noundef nonnull %i.aj, i32 noundef %i.ah, ptr noundef nonnull %i.ak) #23
  %.156 = load ptr, ptr %i.a, align 8, !tbaa !122 ; 2 uses
  %.not4657 = icmp eq ptr %.156, null
  br i1 %.not4657, label %._crit_edge61, label %.lr.ph60

.lr.ph60:                                         ; preds = %bb.l, %.lr.ph60
  %.158 = phi ptr [ %.1, %.lr.ph60 ], [ %.156, %bb.l ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.158, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !124
  %i.an = trunc i64 %i.am to i32
  call void (i32, ptr, ...) @mprintf(i32 noundef 0, ptr noundef nonnull @.str.529, i32 noundef %i.an) #23
  %i.ao = getelementptr inbounds nuw i8, ptr %.158, i64 24
  %.1 = load ptr, ptr %i.ao, align 8, !tbaa !122  ; 2 uses
  %.not46 = icmp eq ptr %.1, null
  br i1 %.not46, label %._crit_edge61, label %.lr.ph60

._crit_edge61:                                    ; preds = %.lr.ph60, %bb.l
  call void (i32, ptr, ...) @mprintf(i32 noundef 0, ptr noundef nonnull @.str.530) #23
  br label %bb.m

._crit_edge.thread:                               ; preds = %bb.k, %._crit_edge
  call void (i32, ptr, ...) @mprintf(i32 noundef 0, ptr noundef nonnull @.str.531) #23
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge61, %._crit_edge.thread, %bb.j, %bb.a, %bb.i, %bb.g, %bb.e, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ %i.h, %bb.e ], [ %i.h, %bb.g ], [ %i.h, %bb.i ], [ %i.h, %._crit_edge61 ], [ %i.h, %._crit_edge.thread ], [ %i.h, %bb.j ], [ null, %bb.c ] ; 2 uses
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !122 ; 2 uses
  %.not4762 = icmp eq ptr %i.ap, null
  br i1 %.not4762, label %._crit_edge65, label %.lr.ph64

.lr.ph64:                                         ; preds = %bb.m, %.lr.ph64
  %i.aq = phi ptr [ %i.at, %.lr.ph64 ], [ %i.ap, %bb.m ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !125
  store ptr %i.as, ptr %i.a, align 8, !tbaa !122
  call void @free(ptr noundef nonnull %i.aq) #23
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !122 ; 2 uses
  %.not47 = icmp eq ptr %i.at, null
  br i1 %.not47, label %._crit_edge65, label %.lr.ph64

._crit_edge65:                                    ; preds = %.lr.ph64, %bb.m
  br i1 %i.g, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge65
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !79
  call void %i.av(ptr noundef nonnull %i.f) #23, !inline_history !0
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge65
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !71 ; 3 uses
  %.not49 = icmp eq ptr %i.ax, null
  br i1 %.not49, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 76
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !80
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [104 x i8], ptr %i.ax, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !81 ; 2 uses
  %.not50 = icmp eq ptr %i.bd, null
  br i1 %.not50, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @evidence_free(ptr noundef nonnull %i.bd) #23
  %.pre = load ptr, ptr %i.aw, align 8, !tbaa !71
end_hunk_0
