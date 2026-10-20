Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mquickjs/original/mquickjs_build?download=true
inline.NumInlined: 26
inline.NumDeleted: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@build_atoms:bb.a
pred.store.continue289:                           ; preds = %pred.store.if288, %pred.store.continue287
  %i.md = extractelement <8 x i1> %i.lj, i64 7
  br i1 %i.md, label %pred.store.if290, label %pred.store.continue291

pred.store.if290:                                 ; preds = %pred.store.continue289
  %i.me = getelementptr inbounds nuw i8, ptr %i.a, i64 %index274
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 7
  store i8 95, ptr %i.mf, align 1, !tbaa !25
  br label %pred.store.continue291

pred.store.continue291:                           ; preds = %pred.store.if290, %pred.store.continue289
  %index.next292 = add nuw i64 %index274, 8       ; 2 uses
  %i.mg = icmp eq i64 %index.next292, %n.vec272
  br i1 %i.mg, label %vec.epilog.middle.block293, label %vec.epilog.vector.body273, !llvm.loop !71

vec.epilog.middle.block293:                       ; preds = %pred.store.continue291
  %cmp.n294 = icmp eq i64 %i.ja, %n.vec272
  br i1 %cmp.n294, label %cvt_name.exit.i77, label %vec.epilog.scalar.ph268.preheader

vec.epilog.scalar.ph268.preheader:                ; preds = %iter.check267, %vec.epilog.iter.check269, %vec.epilog.middle.block293
  %.020.i.i76.ph = phi i64 [ 0, %iter.check267 ], [ %n.vec227, %vec.epilog.iter.check269 ], [ %n.vec272, %vec.epilog.middle.block293 ]
  br label %vec.epilog.scalar.ph268

vec.epilog.scalar.ph268:                          ; preds = %vec.epilog.scalar.ph268.preheader, %bb.ad
  %.020.i.i76 = phi i64 [ %i.mj, %bb.ad ], [ %.020.i.i76.ph, %vec.epilog.scalar.ph268.preheader ] ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.020.i.i76 ; 2 uses
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !25
  switch i8 %i.mi, label %bb.ad [
    i8 60, label %bb.ac
    i8 62, label %bb.ac
    i8 45, label %bb.ac
  ]

bb.ac:                                            ; preds = %vec.epilog.scalar.ph268, %vec.epilog.scalar.ph268, %vec.epilog.scalar.ph268
  store i8 95, ptr %i.mh, align 1, !tbaa !25
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %vec.epilog.scalar.ph268
  %i.mj = add nuw nsw i64 %.020.i.i76, 1          ; 2 uses
  %exitcond.not.i63.i = icmp eq i64 %i.mj, %i.ja
  br i1 %exitcond.not.i63.i, label %cvt_name.exit.i77, label %vec.epilog.scalar.ph268, !llvm.loop !72

cvt_name.exit.i77:                                ; preds = %bb.ad, %middle.block264, %vec.epilog.middle.block293, %bb.ab
  %i.mk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.107, i32 noundef %i.iy, ptr noundef nonnull %i.a) ; 0 uses
  %indvars.iv.next86.i = add nuw nsw i64 %indvars.iv85.i, 1 ; 2 uses
  %i.ml = load i32, ptr %i.eu, align 8, !tbaa !21 ; 2 uses
  %i.mm = sext i32 %i.ml to i64
  %i.mn = icmp slt i64 %indvars.iv.next86.i, %i.mm
  br i1 %i.mn, label %.lr.ph76.i, label %dump_atoms.exit, !llvm.loop !73

dump_atoms.exit:                                  ; preds = %cvt_name.exit.i77, %._crit_edge73.i
  %.lcssa.i = phi i32 [ %i.iu, %._crit_edge73.i ], [ %i.ml, %cvt_name.exit.i77 ]
  %i.mo = add nsw i32 %.lcssa.i, 1
  %i.mp = load i32, ptr %i.io, align 8, !tbaa !41
  %i.mq = add nsw i32 %i.mo, %i.mp
  store i32 %i.mq, ptr %i.io, align 8, !tbaa !41
  %putchar61.i = call i32 @putchar(i32 10)        ; 0 uses
  call void @free(ptr noundef %i.ey) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.mr = call fastcc i32 @define_props(ptr noundef %6, ptr noundef %1, i32 noundef 0, ptr noundef null)
  %i.ms = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i32 %i.mr, ptr %i.ms, align 8, !tbaa !83
  %puts62 = call i32 @puts(ptr nonnull dereferenceable(1) @str.15) ; 0 uses
  %puts.i83 = call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.mu = load i32, ptr %i.mt, align 8, !tbaa !84
  %i.mv = icmp sgt i32 %i.mu, 0
  br i1 %i.mv, label %.lr.ph.i85, label %dump_cfuncs.exit

.lr.ph.i85:                                       ; preds = %dump_atoms.exit
  %i.mw = getelementptr inbounds nuw i8, ptr %6, i64 24
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.i85
  %indvars.iv.i86 = phi i64 [ 0, %.lr.ph.i85 ], [ %indvars.iv.next.i87, %bb.ae ] ; 2 uses
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !85
  %i.my = getelementptr inbounds nuw [40 x i8], ptr %i.mx, i64 %indvars.iv.i86 ; 5 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 24 ; 2 uses
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !43
  %i.nb = getelementptr inbounds nuw i8, ptr %i.my, i64 32
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !44
  %i.nd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.150, ptr noundef %i.na, ptr noundef %i.nc) ; 0 uses
  %i.ne = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.151) ; 0 uses
  %i.nf = load ptr, ptr %i.my, align 8, !tbaa !45
  %i.ng = call fastcc i32 @dump_atom(ptr noundef nonnull readonly %6, ptr noundef %i.nf, i32 noundef 0) ; 0 uses
  %puts12.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %i.nh = load ptr, ptr %i.mz, align 8, !tbaa !43
  %i.ni = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  %i.nj = load i32, ptr %i.ni, align 8, !tbaa !46
  %i.nk = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !47
  %i.nm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.152, ptr noundef %i.nh, i32 noundef %i.nj, ptr noundef %i.nl) ; 0 uses
  %indvars.iv.next.i87 = add nuw nsw i64 %indvars.iv.i86, 1 ; 2 uses
  %i.nn = load i32, ptr %i.mt, align 8, !tbaa !84
  %i.no = sext i32 %i.nn to i64
  %i.np = icmp slt i64 %indvars.iv.next.i87, %i.no
  br i1 %i.np, label %bb.ae, label %dump_cfuncs.exit, !llvm.loop !74

dump_cfuncs.exit:                                 ; preds = %bb.ae, %dump_atoms.exit
  %puts11.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.15) ; 0 uses
  %puts63 = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %puts.i88 = call i32 @puts(ptr nonnull dereferenceable(1) @str.14) ; 0 uses
  %.013.i = load ptr, ptr %i.ds, align 8, !tbaa !31 ; 2 uses
  %.not14.i = icmp eq ptr %.013.i, %i.dr
  br i1 %.not14.i, label %dump_cfinalizers.exit, label %.lr.ph.i89

.lr.ph.i89:                                       ; preds = %dump_cfuncs.exit, %bb.ah
  %.015.i = phi ptr [ %.0.i90, %bb.ah ], [ %.013.i, %dump_cfuncs.exit ] ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.015.i, i64 32
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !40 ; 3 uses
  %.not11.i = icmp eq ptr %i.nr, null
  br i1 %.not11.i, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i89
  %i.ns = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.nr, ptr noundef nonnull dereferenceable(5) @.str.98) #24
  %.not12.i = icmp eq i32 %i.ns, 0
  br i1 %.not12.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.nt = getelementptr inbounds nuw i8, ptr %.015.i, i64 40
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !39
  %i.nv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.154, ptr noundef %i.nu, ptr noundef nonnull %i.nr) ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %.lr.ph.i89
  %i.nw = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  %.0.i90 = load ptr, ptr %i.nw, align 8, !tbaa !31 ; 2 uses
  %.not.i91 = icmp eq ptr %.0.i90, %i.dr
  br i1 %.not.i91, label %dump_cfinalizers.exit, label %.lr.ph.i89, !llvm.loop !75

dump_cfinalizers.exit:                            ; preds = %bb.ah, %dump_cfuncs.exit
  %puts10.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.15) ; 0 uses
  %i.nx = load ptr, ptr %i.ds, align 8, !tbaa !80 ; 2 uses
  %.not13.i93 = icmp eq ptr %i.nx, %i.dr
  br i1 %.not13.i93, label %free_class_entries.exit100, label %.lr.ph.i94

.lr.ph.i94:                                       ; preds = %dump_cfinalizers.exit, %.lr.ph.i94
  %.01114.i95 = phi ptr [ %.0.i97, %.lr.ph.i94 ], [ %i.nx, %dump_cfinalizers.exit ] ; 4 uses
  %.0.in.i96 = getelementptr inbounds nuw i8, ptr %.01114.i95, i64 8
  %.0.i97 = load ptr, ptr %.0.in.i96, align 8, !tbaa !31 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.01114.i95, i64 40
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !39
  call void @free(ptr noundef %i.nz) #23
  %i.oa = getelementptr inbounds nuw i8, ptr %.01114.i95, i64 32
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !40
  call void @free(ptr noundef %i.ob) #23
  call void @free(ptr noundef %.01114.i95) #23
  %.not.i98 = icmp eq ptr %.0.i97, %i.dr
  br i1 %.not.i98, label %free_class_entries.exit100, label %.lr.ph.i94, !llvm.loop !64

free_class_entries.exit100:                       ; preds = %.lr.ph.i94, %dump_cfinalizers.exit
  store ptr %i.dr, ptr %i.dr, align 8, !tbaa !30
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !31
  %i.oc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef %0) ; 0 uses
  %puts64 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %puts65 = call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %puts66 = call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  %i.od = load i32, ptr %i.io, align 8, !tbaa !41
  %i.oe = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %i.od) ; 0 uses
  %i.of = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef 64) ; 0 uses
  %i.og = load i32, ptr %i.iq, align 4, !tbaa !82
  %i.oh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %i.og) ; 0 uses
  %i.oi = load i32, ptr %i.ms, align 8, !tbaa !83
  %i.oj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %i.oi) ; 0 uses
  %puts67 = call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  %puts68 = call i32 @puts(ptr nonnull dereferenceable(1) @str.15) ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %free_class_entries.exit100, %dump_atom_defines.exit, %bb.d, %bb.c
  %.055 = phi i32 [ 1, %bb.d ], [ 1, %bb.c ], [ 0, %dump_atom_defines.exit ], [ 0, %free_class_entries.exit100 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret i32 %.055
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @usage(ptr noundef %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.17, ptr noundef %0) #25 ; 0 uses
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.18, i64 231, i64 1, ptr %i.c) #27 ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @add_atom(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21   ; 5 uses
  %i.c = icmp sgt i32 %i.b, 0
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !22 ; 3 uses
  br i1 %i.c, label %.lr.ph.i, label %find_atom.exit.thread

.lr.ph.i:                                         ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %.pre.pre, i64 %indvars.iv.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24
  %i.f = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.e) #24
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %find_atom.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %find_atom.exit.thread, label %bb.b, !llvm.loop !0

find_atom.exit.thread:                            ; preds = %bb.c, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !86   ; 2 uses
  %.not = icmp slt i32 %i.b, %i.h
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %find_atom.exit.thread
  %2 = add nsw i32 %i.b, 1
  %i.i = mul nsw i32 %i.h, 3
  %i.j = sdiv i32 %i.i, 2
  %..i = tail call range(i32 -1073741824, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -2147483647, -2147483648) %2, i32 range(i32 -1073741824, 1073741824) %i.j) ; 2 uses
  store i32 %..i, ptr %i.g, align 4, !tbaa !86
  %i.k = sext i32 %..i to i64
  %i.l = shl nsw i64 %i.k, 4
  %i.m = tail call ptr @realloc(ptr noundef %.pre.pre, i64 noundef %i.l) #30 ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !22
  %.pre28 = load i32, ptr %i.a, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %find_atom.exit.thread
  %i.n = phi i32 [ %.pre28, %bb.d ], [ %i.b, %find_atom.exit.thread ] ; 2 uses
  %i.o = phi ptr [ %i.m, %bb.d ], [ %.pre.pre, %find_atom.exit.thread ]
  %3 = add nsw i32 %i.n, 1
  store i32 %3, ptr %i.a, align 8, !tbaa !21
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds [16 x i8], ptr %i.o, i64 %i.p ; 2 uses
  %i.r = tail call noalias ptr @strdup(ptr noundef %1) #23
  store ptr %i.r, ptr %i.q, align 8, !tbaa !24
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !27   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %i.t, ptr %i.u, align 8, !tbaa !26
  %i.v = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %i.w = load i32, ptr @JSW, align 4, !tbaa !14
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  %i.y = add i64 %i.v, %i.x
  %i.z = udiv i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = add i32 %i.t, 1
  %i.ac = add i32 %i.ab, %i.aa
  store i32 %i.ac, ptr %i.s, align 8, !tbaa !27
  br label %find_atom.exit

find_atom.exit:                                   ; preds = %bb.b, %bb.e
  ret void
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i32 @add_cfunc(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !88   ; 5 uses
  %i.c = icmp sgt i32 %i.b, 0
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !89 ; 3 uses
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %.pre.pre, i64 %indvars.iv ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !45
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.e) #24
  %.not41.a = icmp eq i32 %i.f, 0
  br i1 %.not41.a, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !46
  %i.i = icmp eq i32 %2, %i.h
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %i.k) #24
  %.not42.a = icmp eq i32 %i.l, 0
  br i1 %.not42.a, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !43
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %i.n) #24
  %.not43.a = icmp eq i32 %i.o, 0
  br i1 %.not43.a, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !44
  %i.r = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %i.q) #24
  %.not44 = icmp eq i32 %i.r, 0
  br i1 %.not44, label %.loopexit.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !87

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !90   ; 2 uses
  %.not = icmp slt i32 %i.b, %i.t
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %6 = add nsw i32 %i.b, 1
  %i.u = mul nsw i32 %i.t, 3
  %i.v = sdiv i32 %i.u, 2
  %..i = tail call range(i32 -1073741824, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -2147483647, -2147483648) %6, i32 range(i32 -1073741824, 1073741824) %i.v) ; 2 uses
  store i32 %..i, ptr %i.s, align 4, !tbaa !90
  %i.w = sext i32 %..i to i64
  %i.x = mul nsw i64 %i.w, 40
  %i.y = tail call ptr @realloc(ptr noundef %.pre.pre, i64 noundef %i.x) #30 ; 2 uses
  store ptr %i.y, ptr %0, align 8, !tbaa !89
  %.pre52 = load i32, ptr %i.a, align 8, !tbaa !88
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.z = phi i32 [ %.pre52, %bb.h ], [ %i.b, %._crit_edge ] ; 3 uses
  %i.aa = phi ptr [ %i.y, %bb.h ], [ %.pre.pre, %._crit_edge ]
  %7 = add nsw i32 %i.z, 1
  store i32 %7, ptr %i.a, align 8, !tbaa !88
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr inbounds [40 x i8], ptr %i.aa, i64 %i.ab ; 5 uses
  %i.ad = tail call noalias ptr @strdup(ptr noundef %1) #23
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !45
  %i.ae = tail call noalias ptr @strdup(ptr noundef %3) #23
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !47
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 %2, ptr %i.ag, align 8, !tbaa !46
  %i.ah = tail call noalias ptr @strdup(ptr noundef %4) #23
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !43
  %i.aj = tail call noalias ptr @strdup(ptr noundef %5) #23
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !44
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.f
  %i.al = trunc nuw nsw i64 %indvars.iv to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.i
  %.037 = phi i32 [ %i.z, %bb.i ], [ %i.al, %.loopexit.loopexit ]
  ret i32 %.037
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @define_atoms_props(ptr nofree noundef nonnull captures(address) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 6 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !33
  %.not18 = icmp eq i32 %i.b, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.i
  %.019 = phi ptr [ %i.t, %bb.i ], [ %1, %bb.a ]  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.019, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  tail call fastcc void @add_atom(ptr noundef %0, ptr noundef %i.d)
  %i.e = load i32, ptr %.019, align 8, !tbaa !33
  switch i32 %i.e, label %bb.i [
    i32 5, label %bb.b
    i32 7, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.019, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  tail call fastcc void @add_atom(ptr noundef %0, ptr noundef %i.g)
  br label %bb.i

bb.c:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.019, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25
  tail call fastcc void @define_atoms_class(ptr noundef %0, ptr noundef %i.i)
  br label %bb.i

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.j = getelementptr inbounds nuw i8, ptr %.019, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(5) @.str.98) #24
  %.not16 = icmp eq i32 %i.l, 0
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.99, ptr noundef %i.m) #23 ; 0 uses
  call fastcc void @add_atom(ptr noundef %0, ptr noundef nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.019, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(5) @.str.98) #24
  %.not17 = icmp eq i32 %i.q, 0
  br i1 %.not17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.s = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.100, ptr noundef %i.r) #23 ; 0 uses
  call fastcc void @add_atom(ptr noundef %0, ptr noundef nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.c, %bb.h, %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.019, i64 48 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !33
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !91

._crit_edge:                                      ; preds = %bb.i, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @define_props(ptr noundef nonnull %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef range(i32 0, 4) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 6 uses
  %i.b = icmp eq i32 %2, 0                        ; 4 uses
  %.not = icmp eq ptr %1, null
  %spec.store.select = select i1 %.not, ptr @define_props.dummy_props, ptr %1 ; 5 uses
  %i.c = load i32, ptr %spec.store.select, align 8, !tbaa !33 ; 2 uses
  %.not129144 = icmp eq i32 %i.c, 0
  br i1 %.not129144, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0116146 = phi ptr [ %i.e, %.lr.ph ], [ %spec.store.select, %bb.a ]
  %.0120145 = phi i32 [ %i.d, %.lr.ph ], [ 0, %bb.a ]
  %i.d = add nuw nsw i32 %.0120145, 1             ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0116146, i64 48 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !33
  %.not129 = icmp eq i32 %i.f, 0
  br i1 %.not129, label %._crit_edge, label %.lr.ph, !llvm.loop !92

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0120.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %.lr.ph ] ; 2 uses
  %i.g = add nsw i32 %2, -1
  %or.cond = icmp ult i32 %i.g, 2
  %i.h = zext i1 %or.cond to i32
  %spec.select = add nuw nsw i32 %.0120.lcssa, %i.h ; 7 uses
  %i.i = zext i32 %spec.select to i64             ; 3 uses
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #29 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 14 uses
  br label %bb.b

bb.b:                                             ; preds = %define_value.exit, %._crit_edge
  %i.n = phi i32 [ %.pre, %define_value.exit ], [ %i.c, %._crit_edge ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %define_value.exit ], [ 0, %._crit_edge ] ; 2 uses
  %.1117 = phi ptr [ %i.bt, %define_value.exit ], [ %spec.store.select, %._crit_edge ] ; 10 uses
  switch i32 %i.n, label %define_value.exit [
    i32 0, label %bb.s
    i32 3, label %bb.c
    i32 7, label %bb.g
    i32 2, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.1117, i64 16 ; 2 uses
  %i.p = load double, ptr %i.o, align 8, !tbaa !25 ; 4 uses
  %i.q = fcmp ult double %i.p, f0xC1D0000000000000
  %i.r = fcmp ugt double %i.p, f0x41CFFFFFFF800000
  %or.cond.i.not143 = or i1 %i.q, %i.r
  %i.s = fptosi double %i.p to i32
  %i.t = sitofp i32 %i.s to double
  %i.u = fcmp une double %i.p, %i.t
  %narrow.i.not = select i1 %or.cond.i.not143, i1 true, i1 %i.u
  br i1 %narrow.i.not, label %bb.d, label %define_value.exit

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr %i.m, align 8, !tbaa !41   ; 3 uses
  %i.w = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.131, i32 noundef %i.v), !inline_history !93 ; 0 uses
  %puts37.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.19), !inline_history !93 ; 0 uses
  %i.x = load i64, ptr %i.o, align 8, !tbaa !25   ; 3 uses
  %i.y = load i32, ptr @JSW, align 4, !tbaa !14
  %i.z = icmp eq i32 %i.y, 8
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.133, i64 noundef %i.x), !inline_history !93 ; 0 uses
  %putchar39.i = tail call i32 @putchar(i32 10), !inline_history !93 ; 0 uses
  %i.ab = load i32, ptr %i.m, align 8, !tbaa !41
  %i.ac = add nsw i32 %i.ab, 2
  store i32 %i.ac, ptr %i.m, align 8, !tbaa !41
  br label %define_value.exit

bb.f:                                             ; preds = %bb.d
  %i.ad = trunc i64 %i.x to i32
  %i.ae = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.134, i32 noundef %i.ad), !inline_history !93 ; 0 uses
  %i.af = lshr i64 %i.x, 32
  %i.ag = trunc nuw i64 %i.af to i32
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.134, i32 noundef %i.ag), !inline_history !93 ; 0 uses
  %putchar38.i = tail call i32 @putchar(i32 10), !inline_history !93 ; 0 uses
  %i.ai = load i32, ptr %i.m, align 8, !tbaa !41
  %i.aj = add nsw i32 %i.ai, 3
  store i32 %i.aj, ptr %i.m, align 8, !tbaa !41
  br label %define_value.exit

bb.g:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %.1117, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !25
  %i.am = tail call fastcc i32 @define_class(ptr noundef nonnull %0, ptr noundef %i.al), !inline_history !93
  br label %define_value.exit

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.an = getelementptr inbounds nuw i8, ptr %.1117, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.1117, i64 32 ; 2 uses
end_hunk_0
