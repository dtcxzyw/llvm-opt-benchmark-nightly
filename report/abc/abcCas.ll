Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcCas?download=true
inline.NumInlined: 693
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 37
begin_hunk_0_@Abc_TtReadHex:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i8 [ %i.a, %bb.a ], [ %.pre, %bb.b ] ; 3 uses
  %.038 = phi ptr [ %1, %bb.a ], [ %spec.select, %bb.b ] ; 2 uses
  %i.g = add i8 %i.f, -58
  %or.cond.i46 = icmp ult i8 %i.g, -10
  %i.h = and i8 %i.f, -33
  %i.i = add i8 %i.h, -71
  %i.j = icmp ult i8 %i.i, -6
  %narrow.i.not47 = and i1 %or.cond.i46, %i.j
  br i1 %narrow.i.not47, label %.lr.ph51.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.c ]
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.038, i64 %indvars.iv.next
  %i.l = load i8, ptr %i.k, align 1, !tbaa !67    ; 2 uses
  %i.m = add i8 %i.l, -58
  %or.cond.i = icmp ult i8 %i.m, -10
  %i.n = and i8 %i.l, -33
  %i.o = add i8 %i.n, -71
  %i.p = icmp ult i8 %i.o, -6
  %narrow.i.not = and i1 %or.cond.i, %i.p
  br i1 %narrow.i.not, label %._crit_edge, label %.lr.ph, !llvm.loop !339

._crit_edge:                                      ; preds = %.lr.ph
  %indvars = trunc i64 %indvars.iv.next to i32    ; 6 uses
  switch i32 %indvars, label %.thread71 [
    i32 1, label %bb.d
    i32 0, label %.lr.ph51.preheader
  ]

bb.d:                                             ; preds = %._crit_edge
  %switch.tableidx = add i8 %i.f, -48             ; 4 uses
  %i.q = icmp ult i8 %switch.tableidx, 23
  br i1 %i.q, label %switch.hole_check, label %.lr.ph51.preheader

.thread71:                                        ; preds = %._crit_edge
  %i.r = add i32 %indvars, -1
  %i.s = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.r, i1 false) ; 2 uses
  %i.t = sub nuw nsw i32 34, %i.s                 ; 2 uses
  %i.u = icmp ult i32 %indvars, 17
  br i1 %i.u, label %.lr.ph51.preheader, label %.thread

.thread:                                          ; preds = %.thread71
  %i.v = sub nsw i32 28, %i.s
  %i.w = shl nuw i32 1, %i.v
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 3
  br label %.lr.ph51.preheader

.lr.ph51.preheader:                               ; preds = %._crit_edge, %switch.hole_check, %bb.d, %.thread, %bb.c, %.thread71
  %i.z = phi i64 [ %i.y, %.thread ], [ 8, %bb.d ], [ 8, %.thread71 ], [ 8, %bb.c ], [ 8, %._crit_edge ], [ 8, %switch.hole_check ]
  %i.aa = phi i32 [ %i.t, %.thread ], [ 2, %bb.d ], [ %i.t, %.thread71 ], [ 2, %bb.c ], [ 2, %._crit_edge ], [ 2, %switch.hole_check ] ; 7 uses
  %.0.lcssa6978 = phi i32 [ %indvars, %.thread ], [ 1, %bb.d ], [ %indvars, %.thread71 ], [ 0, %bb.c ], [ %indvars, %._crit_edge ], [ 1, %switch.hole_check ] ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %0, i8 0, i64 %i.z, i1 false), !tbaa !72
  %.not = icmp eq i32 %.0.lcssa6978, 0
  br i1 %.not, label %._crit_edge54, label %.lr.ph53.preheader

.lr.ph53.preheader:                               ; preds = %.lr.ph51.preheader
  %i.ab = sext i32 %.0.lcssa6978 to i64
  %wide.trip.count = zext i32 %.0.lcssa6978 to i64
  %i.ac = getelementptr i8, ptr %.038, i64 %i.ab
  br label %.lr.ph53

.lr.ph53:                                         ; preds = %.lr.ph53.preheader, %Abc_TtReadHexDigit.exit
  %indvars.iv62 = phi i64 [ 0, %.lr.ph53.preheader ], [ %indvars.iv.next63, %Abc_TtReadHexDigit.exit ] ; 4 uses
  %i.ad = xor i64 %indvars.iv62, -1
  %i.ae = getelementptr i8, ptr %i.ac, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !67  ; 4 uses
  %i.ag = sext i8 %i.af to i64                    ; 3 uses
  %i.ah = add i8 %i.af, -48
  %or.cond.i42 = icmp ult i8 %i.ah, 10
  br i1 %or.cond.i42, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph53
  %i.ai = add nsw i64 %i.ag, -48
  br label %Abc_TtReadHexDigit.exit

bb.f:                                             ; preds = %.lr.ph53
  %i.aj = add i8 %i.af, -65
  %or.cond5.i = icmp ult i8 %i.aj, 6
  br i1 %or.cond5.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = add nsw i64 %i.ag, -55
  br label %Abc_TtReadHexDigit.exit

bb.h:                                             ; preds = %bb.f
  %i.al = add i8 %i.af, -97
  %or.cond8.i = icmp ult i8 %i.al, 6
  %i.am = add nsw i64 %i.ag, -87
  %spec.select.i = select i1 %or.cond8.i, i64 %i.am, i64 -1
  br label %Abc_TtReadHexDigit.exit

Abc_TtReadHexDigit.exit:                          ; preds = %bb.e, %bb.g, %bb.h
  %.0.i = phi i64 [ %i.ai, %bb.e ], [ %i.ak, %bb.g ], [ %spec.select.i, %bb.h ]
  %i.an = shl i64 %indvars.iv62, 2
  %i.ao = and i64 %i.an, 60
  %i.ap = shl i64 %.0.i, %i.ao
  %i.aq = lshr i64 %indvars.iv62, 4
  %i.ar = and i64 %i.aq, 268435455
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ar ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !72
  %i.au = or i64 %i.at, %i.ap
  store i64 %i.au, ptr %i.as, align 8, !tbaa !72
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next63, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge54, label %.lr.ph53, !llvm.loop !340

._crit_edge54:                                    ; preds = %Abc_TtReadHexDigit.exit, %.lr.ph51.preheader
  %i.av = icmp samesign ult i32 %i.aa, 6
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge54
  %i.aw = load i64, ptr %0, align 8, !tbaa !72    ; 5 uses
  %i.ax = icmp samesign ult i32 %i.aa, 2
  %i.ay = and i64 %i.aw, 3
  %i.az = mul nuw nsw i64 %i.ay, 5
  %.126.i = select i1 %i.ax, i64 %i.az, i64 %i.aw
  %i.ba = icmp samesign ult i32 %i.aa, 3
  %i.bb = and i64 %.126.i, 15
  %i.bc = mul nuw nsw i64 %i.bb, 17
  %.227.i = select i1 %i.ba, i64 %i.bc, i64 %i.aw
  %i.bd = icmp samesign ult i32 %i.aa, 4
  %i.be = and i64 %.227.i, 255
  %i.bf = mul nuw nsw i64 %i.be, 257
  %.328.i = select i1 %i.bd, i64 %i.bf, i64 %i.aw
  %.not85 = icmp eq i32 %i.aa, 5
  %i.bg = and i64 %.328.i, 65535
  %i.bh = mul nuw nsw i64 %i.bg, 65537
  %.429.i = select i1 %.not85, i64 %i.aw, i64 %i.bh
  %i.bi = and i64 %.429.i, 4294967295
  %i.bj = mul nuw i64 %i.bi, 4294967297
  br label %.sink.split

switch.hole_check:                                ; preds = %bb.d
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 4325409, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %.lr.ph51.preheader

switch.lookup:                                    ; preds = %switch.hole_check
  %i.bk = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.Abc_TtReadHex, i64 %i.bk
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.bl = zext nneg i8 %switch.tableidx to i64
  %switch.gep86 = getelementptr inbounds nuw i8, ptr @switch.table.Abc_TtReadHex.81, i64 %i.bl
  %switch.load87 = load i8, ptr %switch.gep86, align 1
  %switch.ext = zext i8 %switch.load87 to i32
  br label %.sink.split

.sink.split:                                      ; preds = %switch.lookup, %bb.i
  %.5.i.sink = phi i64 [ %i.bj, %bb.i ], [ %switch.load, %switch.lookup ]
  %.039.ph = phi i32 [ %i.aa, %bb.i ], [ %switch.ext, %switch.lookup ]
  store i64 %.5.i.sink, ptr %0, align 8, !tbaa !72
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %._crit_edge54
  %.039 = phi i32 [ %i.aa, %._crit_edge54 ], [ %.039.ph, %.sink.split ]
  ret i32 %.039
}

; Function Attrs: nounwind uwtable
define void @Abc_NtkLutCascadeFile(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16) local_unnamed_addr #0 {
bb.a:
  %17 = alloca %struct.timespec, align 8          ; 5 uses
  %18 = alloca %struct.timespec, align 8          ; 5 uses
  %19 = alloca %struct.timespec, align 8          ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca [1000 x i8], align 16             ; 6 uses
  %i.d = alloca [50 x i32], align 16              ; 5 uses
  %i.e = alloca [50 x i32], align 16              ; 5 uses
  %i.f = alloca [50 x i32], align 16              ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  %i.h = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %19) #30
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %19, align 8, !tbaa !27
  %i.k = mul nsw i64 %i.j, 1000000
  %i.l = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !28
  %i.n = sdiv i64 %i.m, 1000
  %i.o = add nsw i64 %i.n, %i.k
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.o, %bb.b ], [ -1, %bb.a ]  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i32 0, ptr %i.a, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i32 0, ptr %i.b, align 4, !tbaa !60
  %i.p = icmp slt i32 %1, 7                       ; 2 uses
  %i.q = add nsw i32 %1, -6                       ; 2 uses
  %i.r = shl nuw i32 1, %i.q                      ; 2 uses
  %i.s = select i1 %i.p, i32 1, i32 %i.r          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1000) %i.c, i8 0, i64 1000, i1 false)
  %i.t = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.57) #33
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.c, label %Vec_WrdReadBin.exit

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.u = call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull @.str.52) ; 8 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, ptr noundef nonnull %0) ; 0 uses
  br label %Vec_WrdReadBin.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.x = call i32 @fseek(ptr noundef nonnull %i.u, i64 noundef 0, i32 noundef 2) ; 0 uses
  %i.y = call i64 @ftell(ptr noundef nonnull %i.u) ; 2 uses
  %i.z = trunc i64 %i.y to i32                    ; 4 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %puts25.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  %i.ab = call i32 @fclose(ptr noundef nonnull %i.u) ; 0 uses
  br label %Vec_WrdReadBin.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.ac = srem i32 %i.z, 8                        ; 2 uses
  %i.ad = sdiv i32 %i.z, 8                        ; 6 uses
  %i.ae = icmp sgt i32 %i.ac, 0
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.112, i32 noundef %i.ac) ; 0 uses
  %i.ag = call i32 @fclose(ptr noundef nonnull %i.u) ; 0 uses
  br label %Vec_WrdReadBin.exit.thread

bb.i:                                             ; preds = %bb.g
  call void @rewind(ptr noundef nonnull %i.u)
  %i.ah = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 5 uses
  %i.ai = add nsw i32 %i.ad, -1
  %or.cond.i.i.i = icmp ult i32 %i.ai, 15
  %spec.store.select.i.i.i = select i1 %or.cond.i.i.i, i32 16, i32 %i.ad ; 3 uses
  store i32 %spec.store.select.i.i.i, ptr %i.ah, align 8, !tbaa !83
  %.not.i.i.i = icmp eq i32 %spec.store.select.i.i.i, 0
  br i1 %.not.i.i.i, label %Vec_WrdStart.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = sext i32 %spec.store.select.i.i.i to i64
  %i.ak = shl nsw i64 %i.aj, 3
  %i.al = call noalias ptr @malloc(i64 noundef %i.ak) #31
  br label %Vec_WrdStart.exit.i

Vec_WrdStart.exit.i:                              ; preds = %bb.j, %bb.i
  %i.am = phi ptr [ %i.al, %bb.j ], [ null, %bb.i ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !71
  store i32 %i.ad, ptr %i.an, align 4, !tbaa !84
  %i.ap = sext i32 %i.ad to i64
  %i.aq = shl nsw i64 %i.ap, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.am, i8 0, i64 %i.aq, i1 false)
  %sext.i = shl i64 %i.y, 32
  %i.ar = ashr exact i64 %sext.i, 32
  %i.as = call i64 @fread(ptr noundef %i.am, i64 noundef 1, i64 noundef %i.ar, ptr noundef nonnull %i.u)
  %i.at = trunc i64 %i.as to i32
  %i.au = call i32 @fclose(ptr noundef nonnull %i.u) ; 0 uses
  %.not.i = icmp eq i32 %i.at, %i.z
  br i1 %.not.i, label %Vec_WrdReadBin.exit.thread300, label %bb.k

bb.k:                                             ; preds = %Vec_WrdStart.exit.i
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  br label %Vec_WrdReadBin.exit.thread300

Vec_WrdReadBin.exit:                              ; preds = %Abc_Clock.exit
  %i.av = call ptr @Abc_NtkLutCasReadTruths(ptr noundef nonnull %0, i32 noundef %1) ; 3 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %Vec_WrdReadBin.exit.thread, label %Vec_WrdReadBin.exit.Vec_WrdReadBin.exit.thread300_crit_edge

Vec_WrdReadBin.exit.Vec_WrdReadBin.exit.thread300_crit_edge: ; preds = %Vec_WrdReadBin.exit
  %.phi.trans.insert = getelementptr i8, ptr %i.av, i64 4
  %.0185.val234.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !84
  br label %Vec_WrdReadBin.exit.thread300

Vec_WrdReadBin.exit.thread300:                    ; preds = %Vec_WrdReadBin.exit.Vec_WrdReadBin.exit.thread300_crit_edge, %Vec_WrdStart.exit.i, %bb.k
  %.0185.val234 = phi i32 [ %.0185.val234.pre, %Vec_WrdReadBin.exit.Vec_WrdReadBin.exit.thread300_crit_edge ], [ %i.ad, %bb.k ], [ %i.ad, %Vec_WrdStart.exit.i ] ; 3 uses
  %.0185302 = phi ptr [ %i.av, %Vec_WrdReadBin.exit.Vec_WrdReadBin.exit.thread300_crit_edge ], [ %i.ah, %bb.k ], [ %i.ah, %Vec_WrdStart.exit.i ] ; 5 uses
  %i.ax = sdiv i32 %.0185.val234, %i.s            ; 11 uses
  %i.ay = select i1 %i.p, i32 0, i32 %i.q         ; 2 uses
  %i.az = shl i32 %i.ax, %i.ay
  %.not212 = icmp eq i32 %.0185.val234, %i.az
  br i1 %.not212, label %bb.n, label %bb.l

bb.l:                                             ; preds = %Vec_WrdReadBin.exit.thread300
  %i.ba = shl nsw i32 %.0185.val234, 3
  %i.bb = shl nsw i32 %i.s, 3
  %i.bc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.58, i32 noundef %i.ba, i32 noundef %i.bb, i32 noundef %i.ax) ; 0 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0185302, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !71 ; 2 uses
  %.not.i236 = icmp eq ptr %i.be, null
  br i1 %.not.i236, label %Vec_WrdFree.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.be) #30
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %bb.l, %bb.m
  call void @free(ptr noundef nonnull %.0185302) #30
  br label %Vec_WrdReadBin.exit.thread

bb.n:                                             ; preds = %Vec_WrdReadBin.exit.thread300
  %i.bf = call i32 @Abc_Random(i32 noundef 1) #30 ; 0 uses
  %i.bg = icmp sgt i32 %8, 0
  br i1 %i.bg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.n, %.lr.ph
  %.0193307 = phi i32 [ %i.bi, %.lr.ph ], [ 0, %bb.n ]
  %i.bh = call i32 @Abc_Random(i32 noundef 0) #30 ; 0 uses
  %i.bi = add nuw nsw i32 %.0193307, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.bi, %8
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !341

._crit_edge:                                      ; preds = %.lr.ph, %bb.n
  %i.bj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.59, i32 noundef %i.ax, i32 noundef %1, ptr noundef nonnull %0) ; 0 uses
  %i.bk = sext i32 %i.s to i64
  %i.bl = shl nsw i64 %i.bk, 3
  %i.bm = call noalias ptr @malloc(i64 noundef %i.bl) #31 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.d, i8 0, i64 200, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.e, i8 0, i64 200, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.f, i8 0, i64 200, i1 false)
  %i.bn = call ptr (...) @Abc_BSEvalAlloc() #30   ; 2 uses
  %i.bo = icmp sgt i32 %i.ax, 0
  br i1 %i.bo, label %.lr.ph316, label %._crit_edge317

.lr.ph316:                                        ; preds = %._crit_edge
  %i.bp = getelementptr i8, ptr %.0185302, i64 8
  %i.bq = icmp sgt i32 %i.s, 0                    ; 2 uses
  %wide.trip.count.i = zext i32 %i.s to i64       ; 2 uses
  %.not221 = icmp eq i32 %10, 0                   ; 4 uses
  %i.br = or i32 %10, %9
  %or.cond.not = icmp eq i32 %i.br, 0             ; 5 uses
  %i.bs = icmp samesign ugt i32 %1, 5
  %i.bt = add nsw i32 %1, -2                      ; 2 uses
  %i.bu = icmp slt i32 %1, 2                      ; 3 uses
  %20 = icmp samesign ult i32 %1, 7
  %21 = select i1 %20, i32 1, i32 %i.r            ; 2 uses
  %.not22.i = icmp slt i32 %21, 1                 ; 3 uses
  %22 = zext nneg i32 %21 to i64
  %.idx.i = shl nuw nsw i64 %22, 3                ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.bt
  %i.bv = xor i32 %notmask.i, -1
  %i.bw = select i1 %i.bs, i32 15, i32 %i.bv
  %i.bx = zext nneg i32 %i.bw to i64              ; 3 uses
  %i.by = add i32 %1, -1
  %or.cond.i.i = icmp ult i32 %i.by, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %1 ; 3 uses
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  %i.bz = sext i32 %spec.store.select.i.i to i64
  %i.ca = shl nsw i64 %i.bz, 2
  %i.cb = icmp sgt i32 %1, 0
  %wide.trip.count.i242 = zext i32 %1 to i64      ; 3 uses
  %i.cc = getelementptr i8, ptr %i.bm, i64 %.idx.i
  %.01521.i263 = getelementptr i8, ptr %i.cc, i64 -8
  %.not229 = icmp eq i32 %16, 0
  %i.cd = shl nuw i32 1, %i.bt
  %i.ce = add nuw nsw i32 %i.cd, 1
  %i.cf = sext i32 %i.ce to i64
  %23 = shl nuw nsw i64 %wide.trip.count.i, 3
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %wide.trip.count.i242, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i242
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph316, %bb.bi
  %.0314 = phi i32 [ 0, %.lr.ph316 ], [ %.1, %bb.bi ] ; 2 uses
  %.0181313 = phi i32 [ 0, %.lr.ph316 ], [ %.1182, %bb.bi ] ; 3 uses
  %.0183312 = phi ptr [ null, %.lr.ph316 ], [ %.3, %bb.bi ] ; 5 uses
  %.0186311 = phi i32 [ 0, %.lr.ph316 ], [ %.1187, %bb.bi ] ; 5 uses
  %.0188310 = phi i32 [ 0, %.lr.ph316 ], [ %.1189, %bb.bi ] ; 5 uses
  %.0190309 = phi i32 [ 0, %.lr.ph316 ], [ %.2192, %bb.bi ] ; 7 uses
  %.1194308 = phi i32 [ 0, %.lr.ph316 ], [ %i.hk, %bb.bi ] ; 8 uses
  %i.cg = shl i32 %.1194308, %i.ay
  %.0185.val = load ptr, ptr %i.bp, align 8, !tbaa !71
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr [8 x i8], ptr %.0185.val, i64 %i.ch ; 7 uses
  br i1 %i.bq, label %.lr.ph.i.preheader, label %Abc_TtCopy.exit

.lr.ph.i.preheader:                               ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bm, ptr noundef nonnull align 8 dereferenceable(1) %i.ci, i64 %23, i1 false), !tbaa !72
  br label %Abc_TtCopy.exit

Abc_TtCopy.exit:                                  ; preds = %.lr.ph.i.preheader, %bb.o
  br i1 %.not221, label %bb.q, label %bb.p

bb.p:                                             ; preds = %Abc_TtCopy.exit
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %Abc_TtCopy.exit
  br i1 %or.cond.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60, i32 noundef %.1194308) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  br i1 %.not221, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ck = load ptr, ptr @stdout, align 8, !tbaa !62 ; 2 uses
  br i1 %i.bu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cl = load i64, ptr %i.ci, align 8, !tbaa !72
  %i.cm = trunc i64 %i.cl to i32
  %i.cn = and i32 %i.cm, 15                       ; 3 uses
  %i.co = icmp samesign ult i32 %i.cn, 10
  %i.cp = or disjoint i32 %i.cn, 48
  %i.cq = add nuw nsw i32 %i.cn, 55
  %.0.i.i = select i1 %i.co, i32 %i.cp, i32 %i.cq
  %fputc17.i = call i32 @fputc(i32 %.0.i.i, ptr %i.ck) ; 0 uses
  br label %Abc_TtPrintHexRev.exit

bb.v:                                             ; preds = %bb.t
  br i1 %.not22.i, label %Abc_TtPrintHexRev.exit, label %.lr.ph.i237

.lr.ph.i237:                                      ; preds = %bb.v
  %i.cr = getelementptr i8, ptr %i.ci, i64 %.idx.i
  %.01521.i = getelementptr i8, ptr %i.cr, i64 -8
  br label %bb.w

.loopexit.i:                                      ; preds = %bb.x
  %.015.i = getelementptr inbounds i8, ptr %.01523.i, i64 -8 ; 2 uses
  %.not.i240 = icmp ult ptr %.015.i, %i.ci
  br i1 %.not.i240, label %Abc_TtPrintHexRev.exit, label %bb.w, !llvm.loop !2

bb.w:                                             ; preds = %.loopexit.i, %.lr.ph.i237
  %.01523.i = phi ptr [ %.01521.i, %.lr.ph.i237 ], [ %.015.i, %.loopexit.i ] ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %indvars.iv.i238 = phi i64 [ %i.bx, %bb.w ], [ %indvars.iv.next.i239, %bb.x ] ; 3 uses
  %i.cs = load i64, ptr %.01523.i, align 8, !tbaa !72
  %i.ct = shl nsw i64 %indvars.iv.i238, 2
  %i.cu = and i64 %i.ct, 4294967292
  %i.cv = lshr i64 %i.cs, %i.cu
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = and i32 %i.cw, 15                       ; 3 uses
  %i.cy = icmp samesign ult i32 %i.cx, 10
  %i.cz = or disjoint i32 %i.cx, 48
  %i.da = add nuw nsw i32 %i.cx, 55
  %.0.i18.i = select i1 %i.cy, i32 %i.cz, i32 %i.da
  %fputc.i = call i32 @fputc(i32 %.0.i18.i, ptr %i.ck) ; 0 uses
  %indvars.iv.next.i239 = add nsw i64 %indvars.iv.i238, -1
  %i.db = icmp sgt i64 %indvars.iv.i238, 0
  br i1 %i.db, label %bb.x, label %.loopexit.i, !llvm.loop !3

Abc_TtPrintHexRev.exit:                           ; preds = %.loopexit.i, %bb.u, %bb.v
  %putchar222 = call i32 @putchar(i32 10)         ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %Abc_TtPrintHexRev.exit, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  store i32 -1, ptr %i.g, align 4, !tbaa !60
  %i.dc = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  store i32 %spec.store.select.i.i, ptr %i.dc, align 8, !tbaa !81
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.de = call noalias ptr @malloc(i64 noundef %i.ca) #31
  br label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.i:                              ; preds = %bb.z, %bb.y
  %i.df = phi ptr [ %i.de, %bb.z ], [ null, %bb.y ] ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 2 uses
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !82
  br i1 %i.cb, label %.lr.ph.i243.preheader, label %Vec_IntStartNatural.exit

.lr.ph.i243.preheader:                            ; preds = %Vec_IntAlloc.exit.i
  br i1 %min.iters.check, label %.lr.ph.i243.preheader361, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i243.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i243.preheader ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %vec.ind.next, %vector.body ], [ <i32 0, i32 1, i32 2, i32 3>, %.lr.ph.i243.preheader ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %index ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store <4 x i32> %vec.ind, ptr %i.dh, align 4, !tbaa !60
  store <4 x i32> %step.add, ptr %i.di, align 4, !tbaa !60
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !342

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %Vec_IntStartNatural.exit, label %.lr.ph.i243.preheader361

.lr.ph.i243.preheader361:                         ; preds = %.lr.ph.i243.preheader, %middle.block
  %indvars.iv.i244.ph = phi i64 [ 0, %.lr.ph.i243.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i243

.lr.ph.i243:                                      ; preds = %.lr.ph.i243.preheader361, %.lr.ph.i243
  %indvars.iv.i244 = phi i64 [ %indvars.iv.next.i245, %.lr.ph.i243 ], [ %indvars.iv.i244.ph, %.lr.ph.i243.preheader361 ] ; 3 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.i244
  %i.dl = trunc nuw nsw i64 %indvars.iv.i244 to i32
  store i32 %i.dl, ptr %i.dk, align 4, !tbaa !60
  %indvars.iv.next.i245 = add nuw nsw i64 %indvars.iv.i244, 1 ; 2 uses
  %exitcond.not.i246 = icmp eq i64 %indvars.iv.next.i245, %wide.trip.count.i242
  br i1 %exitcond.not.i246, label %Vec_IntStartNatural.exit, label %.lr.ph.i243, !llvm.loop !343

Vec_IntStartNatural.exit:                         ; preds = %.lr.ph.i243, %middle.block, %Vec_IntAlloc.exit.i
  call fastcc void @Abc_TtMinimumBase(ptr noundef %i.ci, ptr noundef %i.df, i32 noundef %1, ptr noundef %i.g)
  %i.dm = load i32, ptr %i.g, align 4, !tbaa !60  ; 4 uses
  store i32 %i.dm, ptr %i.dd, align 4, !tbaa !80
  br i1 %.not221, label %.split, label %bb.aa

bb.aa:                                            ; preds = %Vec_IntStartNatural.exit
  %.not223 = icmp eq i32 %1, %i.dm
  br i1 %.not223, label %.split198, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %1, i32 noundef %i.dm) ; 0 uses
  br label %.split198

.split198:                                        ; preds = %bb.ab, %bb.aa
  %i.do = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.61, i32 noundef %i.dm, i32 noundef %4, i32 noundef %2) ; 0 uses
  br label %.split

.split:                                           ; preds = %Vec_IntStartNatural.exit, %.split198
  %.sink359 = phi i32 [ %10, %.split198 ], [ 0, %Vec_IntStartNatural.exit ]
  %i.dp = icmp sgt i32 %.0181313, -1
  %i.dq = zext i1 %i.dp to i32
  %i.dr = call ptr @Abc_LutCascadeDec(ptr noundef %i.bn, ptr noundef null, ptr noundef %i.ci, i32 noundef %1, ptr noundef nonnull %i.dc, i32 noundef %4, i32 noundef %2, i32 noundef %3, i32 noundef %i.dq, i32 noundef %7, i32 noundef %13, i32 noundef %.sink359, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %14, i32 noundef %15) ; 12 uses
  %i.ds = load ptr, ptr %i.dg, align 8, !tbaa !82 ; 2 uses
  %.not.i247 = icmp eq ptr %i.ds, null
  br i1 %.not.i247, label %Vec_IntFree.exit, label %bb.ac

bb.ac:                                            ; preds = %.split
  call void @free(ptr noundef nonnull %i.ds) #30
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.split, %bb.ac
  call void @free(ptr noundef nonnull %i.dc) #30
  %i.dt = load i32, ptr %i.b, align 4, !tbaa !60  ; 2 uses
  %i.du = icmp slt i32 %i.dt, 50
  %i.dv = icmp eq i32 %.0181313, 0
  %or.cond3 = and i1 %i.dv, %i.du
  br i1 %or.cond3, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %Vec_IntFree.exit
  %i.dw = sext i32 %i.dt to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.dw ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !60
  %i.dz = add nsw i32 %i.dy, 1
  store i32 %i.dz, ptr %i.dx, align 4, !tbaa !60
  %i.ea = add nsw i32 %.0314, 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %Vec_IntFree.exit
  %.1 = phi i32 [ %i.ea, %bb.ad ], [ %.0314, %Vec_IntFree.exit ] ; 2 uses
  %i.eb = icmp eq ptr %i.dr, null
  br i1 %i.eb, label %bb.af, label %bb.ao

bb.af:                                            ; preds = %bb.ae
  %i.ec = add nsw i32 %.0181313, 1                ; 2 uses
  %i.ed = icmp slt i32 %i.ec, %5
  br i1 %i.ed, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ee = add nsw i32 %.1194308, -1
  br label %bb.bi

bb.ah:                                            ; preds = %bb.af
  br i1 %or.cond.not, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %puts228 = call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  br i1 %.not229, label %bb.bi, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ef = icmp eq ptr %.0183312, null
  br i1 %i.ef, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.eg = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) @.str.63, ptr noundef nonnull %0) #30 ; 0 uses
end_hunk_0
begin_hunk_1_@Abc_NtkLutCascadeFile:bb.a
  br i1 %.not.i292, label %Vec_WrdFree.exit293, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @free(ptr noundef nonnull %i.hp) #30
  br label %Vec_WrdFree.exit293

Vec_WrdFree.exit293:                              ; preds = %bb.bk, %bb.bl
  call void @free(ptr noundef nonnull %.0185302) #30
  %.not214 = icmp eq i32 %11, 0
  br i1 %.not214, label %.loopexit305, label %bb.bm

bb.bm:                                            ; preds = %Vec_WrdFree.exit293
  %i.hq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.70, i32 noundef %4) ; 0 uses
  %i.hr = call i32 @llvm.smax.i32(i32 %i.ax, i32 1)
  %i.hs = uitofp nneg i32 %i.hr to double
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bp
  %indvars.iv = phi i64 [ 0, %bb.bm ], [ %indvars.iv.next, %bb.bp ] ; 3 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !60 ; 3 uses
  %.not220 = icmp eq i32 %i.hu, 0
  br i1 %.not220, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hv = sitofp i32 %i.hu to double
  %i.hw = fmul nnan double %i.hv, 1.000000e+02
  %i.hx = fdiv double %i.hw, %i.hs
  %i.hy = fdiv double %i.hx, %.0.lcssa
  %i.hz = trunc nuw nsw i64 %indvars.iv to i32
  %i.ia = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.71, i32 noundef %i.hz, i32 noundef %i.hu, double noundef %i.hy) ; 0 uses
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond326.not = icmp eq i64 %indvars.iv.next, 50
  br i1 %exitcond326.not, label %.loopexit305, label %bb.bn, !llvm.loop !345

.loopexit305:                                     ; preds = %bb.bp, %Vec_WrdFree.exit293
  %.not215 = icmp eq i32 %12, 0
  br i1 %.not215, label %.loopexit305..loopexit_crit_edge, label %bb.bq

.loopexit305..loopexit_crit_edge:                 ; preds = %.loopexit305
  %.pre = call i32 @llvm.smax.i32(i32 %i.ax, i32 1)
  %.pre336 = uitofp nneg i32 %.pre to double
  br label %.loopexit

bb.bq:                                            ; preds = %.loopexit305
  %i.ib = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.72, i32 noundef %4) ; 0 uses
  %i.ic = call i32 @llvm.smax.i32(i32 %i.ax, i32 1)
  %i.id = uitofp nneg i32 %i.ic to double         ; 2 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bt
  %indvars.iv327 = phi i64 [ 0, %bb.bq ], [ %indvars.iv.next328, %bb.bt ] ; 3 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv327
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !60 ; 3 uses
  %.not219 = icmp eq i32 %i.if, 0
  br i1 %.not219, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ig = sitofp i32 %i.if to double
  %i.ih = fmul nnan double %i.ig, 1.000000e+02
  %i.ii = fdiv double %i.ih, %i.id
  %i.ij = trunc nuw nsw i64 %indvars.iv327 to i32
  %i.ik = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.73, i32 noundef %i.ij, i32 noundef %i.if, double noundef %i.ii) ; 0 uses
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs
  %indvars.iv.next328 = add nuw nsw i64 %indvars.iv327, 1 ; 2 uses
  %exitcond330.not = icmp eq i64 %indvars.iv.next328, 50
  br i1 %exitcond330.not, label %.loopexit, label %bb.br, !llvm.loop !346

.loopexit:                                        ; preds = %bb.bt, %.loopexit305..loopexit_crit_edge
  %.pre-phi337 = phi double [ %.pre336, %.loopexit305..loopexit_crit_edge ], [ %i.id, %bb.bt ] ; 3 uses
  %i.il = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.74, i32 noundef %4) ; 0 uses
  br label %bb.bu

bb.bu:                                            ; preds = %.loopexit, %bb.bw
  %indvars.iv331 = phi i64 [ 0, %.loopexit ], [ %indvars.iv.next332, %bb.bw ] ; 3 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv331
  %i.in = load i32, ptr %i.im, align 4, !tbaa !60 ; 3 uses
  %.not218 = icmp eq i32 %i.in, 0
  br i1 %.not218, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.io = sitofp i32 %i.in to double
  %i.ip = fmul nnan double %i.io, 1.000000e+02
  %i.iq = fdiv double %i.ip, %.pre-phi337
  %i.ir = trunc nuw nsw i64 %indvars.iv331 to i32
  %i.is = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, i32 noundef %i.ir, i32 noundef %2, i32 noundef %i.in, double noundef %i.iq) ; 0 uses
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bu, %bb.bv
  %indvars.iv.next332 = add nuw nsw i64 %indvars.iv331, 1 ; 2 uses
  %exitcond334.not = icmp eq i64 %indvars.iv.next332, 50
  br i1 %exitcond334.not, label %bb.bx, label %bb.bu, !llvm.loop !347

bb.bx:                                            ; preds = %bb.bw
  %i.it = sub nsw i32 %i.ax, %.0188.lcssa         ; 3 uses
  %i.iu = sitofp i32 %i.it to double
  %i.iv = fmul nnan double %i.iu, 1.000000e+02
  %i.iw = fdiv double %i.iv, %.pre-phi337
  %i.ix = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.it, double noundef %i.iw) ; 0 uses
  %.not216 = icmp eq i32 %.0190.lcssa, 0
  br i1 %.not216, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.iy = sitofp i32 %.0190.lcssa to double
  %i.iz = fmul nnan double %i.iy, 1.000000e+02
  %i.ja = fdiv double %i.iz, %.pre-phi337
  %i.jb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %.0190.lcssa, double noundef %i.ja) ; 0 uses
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.jc = sitofp i32 %.0188.lcssa to double
  %i.jd = fdiv double %.0186.lcssa, %i.jc
  %i.je = sitofp i32 %i.ax to double
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  %i.jf = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %18) #30
  %i.jg = icmp slt i32 %i.jf, 0
  br i1 %i.jg, label %Abc_Clock.exit295, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jh = load i64, ptr %18, align 8, !tbaa !27
  %i.ji = mul nsw i64 %i.jh, 1000000
  %i.jj = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !28
  %i.jl = sdiv i64 %i.jk, 1000
  %i.jm = add nsw i64 %i.jl, %i.ji
  br label %Abc_Clock.exit295

Abc_Clock.exit295:                                ; preds = %bb.bz, %bb.ca
  %.0.i294 = phi i64 [ %i.jm, %bb.ca ], [ -1, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  %i.jn = sub nsw i64 %.0.i294, %.0.i
  %i.jo = sitofp i64 %i.jn to double
  %i.jp = fdiv double %i.jo, 1.000000e+06
  %i.jq = fdiv double %i.je, %i.jp
  %i.jr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.78, i32 noundef %i.ax, double noundef %i.jd, double noundef %i.jq) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  %i.js = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %17) #30
  %i.jt = icmp slt i32 %i.js, 0
  br i1 %i.jt, label %Abc_Clock.exit297, label %bb.cb

bb.cb:                                            ; preds = %Abc_Clock.exit295
  %i.ju = load i64, ptr %17, align 8, !tbaa !27
  %i.jv = mul nsw i64 %i.ju, 1000000
  %i.jw = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !28
  %i.jy = sdiv i64 %i.jx, 1000
  %i.jz = add nsw i64 %i.jy, %i.jv
  br label %Abc_Clock.exit297

Abc_Clock.exit297:                                ; preds = %Abc_Clock.exit295, %bb.cb
  %.0.i296 = phi i64 [ %i.jz, %bb.cb ], [ -1, %Abc_Clock.exit295 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  %i.ka = sub nsw i64 %.0.i296, %.0.i
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.79)
  %i.kb = sitofp i64 %i.ka to double
  %i.kc = fdiv double %i.kb, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.3, double noundef %i.kc)
  %.not217 = icmp eq ptr %.0183.lcssa, null
  br i1 %.not217, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %Abc_Clock.exit297
  %i.kd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, i32 noundef %i.it, ptr noundef nonnull %i.c) ; 0 uses
  %i.ke = call i32 @fclose(ptr noundef nonnull %.0183.lcssa) ; 0 uses
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %Abc_Clock.exit297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  br label %Vec_WrdReadBin.exit.thread

Vec_WrdReadBin.exit.thread:                       ; preds = %bb.h, %bb.f, %bb.d, %Vec_WrdFree.exit, %bb.cd, %Vec_WrdReadBin.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #22

; Function Attrs: nofree nounwind uwtable
define void @Vec_WrdWriteTruthHex(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.64) ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, ptr noundef %0) ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %2, 7                       ; 2 uses
  %i.e = add nsw i32 %2, -6                       ; 2 uses
  %i.f = shl nuw i32 1, %i.e                      ; 2 uses
  %i.g = select i1 %i.d, i32 1, i32 %i.f
  %i.h = getelementptr i8, ptr %1, i64 4
  %.val16 = load i32, ptr %i.h, align 4, !tbaa !84
  %i.i = sdiv i32 %.val16, %i.g                   ; 4 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.k = select i1 %i.d, i32 0, i32 %i.e
  %i.l = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.m = icmp samesign ugt i32 %2, 5
  %i.n = add nsw i32 %2, -2
  %i.o = icmp slt i32 %2, 2
  %3 = icmp samesign ult i32 %2, 7
  %4 = select i1 %3, i32 1, i32 %i.f              ; 2 uses
  %i.p = zext nneg i32 %4 to i64
  %.idx.i = shl nuw nsw i64 %i.p, 3
  %notmask.i = shl nsw i32 -1, %i.n
  %i.q = xor i32 %notmask.i, -1
  %i.r = select i1 %i.m, i32 15, i32 %i.q
  %i.s = zext nneg i32 %i.r to i64
  br i1 %i.o, label %Abc_TtPrintHexRev.exit.us, label %.lr.ph.split

Abc_TtPrintHexRev.exit.us:                        ; preds = %.lr.ph, %Abc_TtPrintHexRev.exit.us
  %.017.us = phi i32 [ %i.ab, %Abc_TtPrintHexRev.exit.us ], [ 0, %.lr.ph ] ; 2 uses
  %.val.us = load ptr, ptr %i.l, align 8, !tbaa !71
  %i.t = zext nneg i32 %.017.us to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.val.us, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !72
  %i.w = trunc i64 %i.v to i32
  %i.x = and i32 %i.w, 15                         ; 3 uses
  %i.y = icmp samesign ult i32 %i.x, 10
  %i.z = or disjoint i32 %i.x, 48
  %i.aa = add nuw nsw i32 %i.x, 55
  %.0.i.i.us = select i1 %i.y, i32 %i.z, i32 %i.aa
  %fputc17.i.us = tail call i32 @fputc(i32 %.0.i.i.us, ptr nonnull %i.a) ; 0 uses
  %fputc.us = tail call i32 @fputc(i32 10, ptr nonnull %i.a) ; 0 uses
  %i.ab = add nuw nsw i32 %.017.us, 1             ; 2 uses
  %exitcond25.not = icmp eq i32 %i.ab, %i.i
  br i1 %exitcond25.not, label %._crit_edge, label %Abc_TtPrintHexRev.exit.us, !llvm.loop !348

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not22.i = icmp slt i32 %4, 1
  br i1 %.not22.i, label %Abc_TtPrintHexRev.exit.us20, label %.lr.ph.i

Abc_TtPrintHexRev.exit.us20:                      ; preds = %.lr.ph.split, %Abc_TtPrintHexRev.exit.us20
  %.017.us18 = phi i32 [ %i.ac, %Abc_TtPrintHexRev.exit.us20 ], [ 0, %.lr.ph.split ]
  %fputc.us21 = tail call i32 @fputc(i32 10, ptr nonnull %i.a) ; 0 uses
  %i.ac = add nuw nsw i32 %.017.us18, 1           ; 2 uses
  %exitcond24.not = icmp eq i32 %i.ac, %i.i
  br i1 %exitcond24.not, label %._crit_edge, label %Abc_TtPrintHexRev.exit.us20, !llvm.loop !348

.lr.ph.i:                                         ; preds = %.lr.ph.split, %Abc_TtPrintHexRev.exit.loopexit
  %.017 = phi i32 [ %i.ar, %Abc_TtPrintHexRev.exit.loopexit ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.ad = shl i32 %.017, %i.k
  %.val = load ptr, ptr %i.l, align 8, !tbaa !71
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.ae ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 %.idx.i
  %.01521.i = getelementptr i8, ptr %i.ag, i64 -8
  br label %bb.d

.loopexit.i:                                      ; preds = %bb.e
  %.015.i = getelementptr inbounds i8, ptr %.01523.i, i64 -8 ; 2 uses
  %.not.i = icmp ult ptr %.015.i, %i.af
  br i1 %.not.i, label %Abc_TtPrintHexRev.exit.loopexit, label %bb.d, !llvm.loop !2

bb.d:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %.01523.i = phi ptr [ %.01521.i, %.lr.ph.i ], [ %.015.i, %.loopexit.i ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.i = phi i64 [ %i.s, %bb.d ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %i.ah = load i64, ptr %.01523.i, align 8, !tbaa !72
  %i.ai = shl nsw i64 %indvars.iv.i, 2
  %i.aj = and i64 %i.ai, 4294967292
  %i.ak = lshr i64 %i.ah, %i.aj
  %i.al = trunc i64 %i.ak to i32
  %i.am = and i32 %i.al, 15                       ; 3 uses
  %i.an = icmp samesign ult i32 %i.am, 10
  %i.ao = or disjoint i32 %i.am, 48
  %i.ap = add nuw nsw i32 %i.am, 55
  %.0.i18.i = select i1 %i.an, i32 %i.ao, i32 %i.ap
  %fputc.i = tail call i32 @fputc(i32 %.0.i18.i, ptr nonnull %i.a) ; 0 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.aq = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.aq, label %bb.e, label %.loopexit.i, !llvm.loop !3

Abc_TtPrintHexRev.exit.loopexit:                  ; preds = %.loopexit.i
  %fputc = tail call i32 @fputc(i32 10, ptr nonnull %i.a) ; 0 uses
  %i.ar = add nuw nsw i32 %.017, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ar, %i.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !348

._crit_edge:                                      ; preds = %Abc_TtPrintHexRev.exit.loopexit, %Abc_TtPrintHexRev.exit.us20, %Abc_TtPrintHexRev.exit.us, %bb.c
  %i.as = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_NtkSuppMinFile(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca [1000 x i8], align 16             ; 40 uses
  %i.c = tail call i32 @Gia_FileSize(ptr noundef %0) #30 ; 4 uses
  %i.d = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.52) ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, ptr noundef %0) ; 0 uses
  br label %bb.ao

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noalias dereferenceable_or_null(256) ptr @calloc(i64 noundef 32, i64 noundef 8) #34 ; 13 uses
  %i.h = sext i32 %i.c to i64
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #31 ; 5 uses
  %i.j = sdiv i32 %i.c, 16
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 3
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #31 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i32 -1, ptr %i.a, align 4, !tbaa !60
  %i.n = tail call ptr @fgets(ptr noundef %i.i, i32 noundef %i.c, ptr noundef nonnull %i.d)
  %.not101 = icmp eq ptr %i.n, null
  br i1 %.not101, label %.loopexit, label %.lr.ph108

.lr.ph108:                                        ; preds = %bb.c, %bb.v
  %.059105 = phi i32 [ %i.bw, %bb.v ], [ 0, %bb.c ] ; 3 uses
  %.sroa.8.0104 = phi i32 [ %.sroa.8.1, %bb.v ], [ 0, %bb.c ] ; 4 uses
  %.sroa.0.0103 = phi i32 [ %.sroa.0.1, %bb.v ], [ 0, %bb.c ] ; 4 uses
  %.060102 = phi i32 [ %.1, %bb.v ], [ 0, %bb.c ] ; 4 uses
  %i.o = tail call ptr @strtok(ptr noundef %i.i, ptr noundef nonnull @.str.54) #30 ; 5 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.v, label %bb.d

bb.d:                                             ; preds = %.lr.ph108
  %i.q = load i8, ptr %i.o, align 1, !tbaa !67
  %i.r = icmp eq i8 %i.q, 48
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !67
  %i.u = icmp eq i8 %i.t, 120
  %spec.select.idx = select i1 %i.u, i64 2, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %i.o, i64 %spec.select.idx
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.061 = phi ptr [ %i.o, %bb.d ], [ %spec.select, %bb.e ] ; 3 uses
  %i.v = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.061) #33
  %i.w = trunc i64 %i.v to i32                    ; 5 uses
  %i.x = icmp ult i32 %i.w, 2
  %i.y = add i32 %i.w, -1
  %i.z = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.y, i1 true)
  %i.aa = sub nuw nsw i32 32, %i.z
  %.09.i = select i1 %i.x, i32 %i.w, i32 %i.aa    ; 2 uses
  %i.ab = shl nuw i32 1, %.09.i
  %.not72 = icmp eq i32 %i.ab, %i.w
  br i1 %.not72, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.81, i32 noundef %i.w, i32 noundef %.059105) ; 0 uses
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.ad = add nsw i32 %.09.i, 2                   ; 3 uses
  store i32 %i.ad, ptr %i.a, align 4, !tbaa !60
  %i.ae = tail call fastcc i32 @Abc_TtReadHex(ptr noundef %i.m, ptr noundef %.061)
  %.not73 = icmp eq i32 %i.ae, 0
  br i1 %.not73, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.56, i32 noundef %.059105, ptr noundef nonnull %.061) ; 0 uses
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.ag = add nsw i32 %i.ad, %.sroa.0.0103
  call fastcc void @Abc_TtMinimumBase(ptr noundef %i.m, ptr noundef null, i32 noundef %i.ad, ptr noundef %i.a)
  %i.ah = load i32, ptr %i.a, align 4, !tbaa !60  ; 4 uses
  %i.ai = add nsw i32 %i.ah, %.sroa.8.0104
  %i.aj = sext i32 %i.ah to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.aj ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !89 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.an = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 0, ptr %i.ao, align 4, !tbaa !84
  store i32 10000, ptr %i.an, align 8, !tbaa !83
  %i.ap = tail call noalias dereferenceable_or_null(80000) ptr @malloc(i64 noundef 80000) #31
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !71
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !89
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ar = phi ptr [ %i.an, %bb.k ], [ %i.al, %bb.j ] ; 4 uses
  %i.as = icmp slt i32 %i.ah, 7
  %i.at = add nsw i32 %i.ah, -6
  %i.au = shl nuw i32 1, %i.at
  %i.av = select i1 %i.as, i32 1, i32 %i.au       ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %wide.trip.count = zext nneg i32 %i.av to i64
  %.pre = load i32, ptr %i.ax, align 4, !tbaa !84
  %.pre179 = load i32, ptr %i.ar, align 8, !tbaa !83
  br label %bb.m

._crit_edge:                                      ; preds = %Vec_WrdPush.exit, %bb.l
  %i.az = add nsw i32 %.060102, 1
  br label %bb.v

bb.m:                                             ; preds = %.lr.ph, %Vec_WrdPush.exit
  %i.ba = phi i32 [ %.pre179, %.lr.ph ], [ %i.bs, %Vec_WrdPush.exit ] ; 8 uses
  %i.bb = phi i32 [ %.pre, %.lr.ph ], [ %i.bt, %Vec_WrdPush.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_WrdPush.exit ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !72
  %i.be = icmp eq i32 %i.bb, %i.ba
  br i1 %i.be, label %bb.n, label %.Vec_WrdPush.exit_crit_edge

.Vec_WrdPush.exit_crit_edge:                      ; preds = %bb.m
  %.pre180 = load ptr, ptr %i.ay, align 8, !tbaa !71
  br label %Vec_WrdPush.exit

bb.n:                                             ; preds = %bb.m
  %i.bf = icmp slt i32 %i.ba, 16
  br i1 %i.bf, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bg = load ptr, ptr %i.ay, align 8, !tbaa !71 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.bg, null
end_hunk_1
