inline.NumInlined: 11
begin_hunk_0_@usage:bb.a
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.84, i32 noundef %i.ae, i32 noundef %i.ag) ; 0 uses
  %i.ai = load i32, ptr @nsf, align 4, !tbaa !4   ; 4 uses
  %.not138 = icmp eq i32 %i.ai, 2
  br i1 %.not138, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.aj = icmp sgt i32 %i.ai, 2
  br i1 %i.aj, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ak = add nsw i32 %i.ai, -1
  %i.al = zext nneg i32 %i.ak to i64
  %.not118 = icmp eq i64 %indvars.iv, %i.al
  br i1 %.not118, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.226) ; 0 uses
  %.pre135 = load i32, ptr @nsf, align 4, !tbaa !4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.an = phi i32 [ %.pre135, %bb.i ], [ %i.ai, %bb.h ]
  %i.ao = add nsw i32 %i.an, -2
  %i.ap = zext i32 %i.ao to i64
  %i.aq = icmp eq i64 %indvars.iv, %i.ap
  br i1 %i.aq, label %.sink.split, label %bb.k

.sink.split:                                      ; preds = %bb.j, %.lr.ph
  %.str.227.sink = phi ptr [ @.str.225, %.lr.ph ], [ @.str.227, %bb.j ]
  %i.ar = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.227.sink) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.g, %bb.j
  %i.as = trunc nuw nsw i64 %indvars.iv to i32
  %i.at = urem i32 %i.as, 11
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.av = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.228) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aw = load i32, ptr @nsf, align 4, !tbaa !4
  %i.ax = sext i32 %i.aw to i64
  %i.ay = icmp slt i64 %indvars.iv.next, %i.ax
  br i1 %i.ay, label %.lr.ph, label %._crit_edge, !llvm.loop !33

._crit_edge:                                      ; preds = %bb.m, %bb.d, %bb.b, %._crit_edge130, %._crit_edge133, %bb.a
  %puts105 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.113) ; 0 uses
  %puts106 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.114) ; 0 uses
  %puts107 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.115) ; 0 uses
  %puts108 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.116) ; 0 uses
  %puts109 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.117) ; 0 uses
  %puts110 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.118) ; 0 uses
  %puts111 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.119) ; 0 uses
  %puts112 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.120) ; 0 uses
  %puts113 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.121) ; 0 uses
  %puts114 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.122) ; 0 uses
  %puts115 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.123) ; 0 uses
  %puts116 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.124) ; 0 uses
  %puts117 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.125) ; 0 uses
  tail call void @exit(i32 noundef 1) #24
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef i32 @dummyDCTFilter(ptr noundef captures(none) %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5, i32 %6, ptr readnone captures(none) %7) #7 {
bb.a:
  %.sroa.16.8.extract.trunc = trunc i64 %2 to i32
  %.sroa.3.8.extract.shift = lshr i64 %2, 32
  %.sroa.3.8.extract.trunc = trunc nuw i64 %.sroa.3.8.extract.shift to i32
  %i.a = mul nsw i32 %.sroa.3.8.extract.trunc, %.sroa.16.8.extract.trunc ; 4 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.a, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check9 = icmp ult i32 %i.a, 16
  br i1 %min.iters.check9, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.c, align 2, !tbaa !35
  %wide.load10 = load <8 x i16>, ptr %i.d, align 2, !tbaa !35
  %i.e = sub <8 x i16> zeroinitializer, %wide.load
  %i.f = sub <8 x i16> zeroinitializer, %wide.load10
  store <8 x i16> %i.e, ptr %i.c, align 2, !tbaa !35
  store <8 x i16> %i.f, ptr %i.d, align 2, !tbaa !35
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.g = icmp eq i64 %index.next, %n.vec
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !40

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec12 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ] ; 2 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index13 ; 2 uses
  %wide.load14 = load <4 x i16>, ptr %i.h, align 2, !tbaa !35
  %i.i = sub <4 x i16> zeroinitializer, %wide.load14
  store <4 x i16> %i.i, ptr %i.h, align 2, !tbaa !35
  %index.next15 = add nuw i64 %index13, 4         ; 2 uses
  %i.j = icmp eq i64 %index.next15, %n.vec12
  br i1 %i.j, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !41

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %n.vec12, %wide.trip.count
  br i1 %cmp.n16, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec12, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !35
  %i.m = sub i16 0, %i.l
  store i16 %i.m, ptr %i.k, align 2, !tbaa !35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !42

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare ptr @tj3Init(i32 noundef) local_unnamed_addr #2

declare i32 @tj3Set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @tj3GetErrorCode(ptr noundef) local_unnamed_addr #2

declare i32 @tj3Get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #8

declare ptr @tj3LoadImage8(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @tj3LoadImage12(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @tj3LoadImage16(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @decompTest(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca [80 x i8], align 16               ; 6 uses
  %i.d = alloca [80 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr null, ptr %i.a, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.e = load i32, ptr @pf, align 4, !tbaa !4
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [4 x i8], ptr @tjPixelSize, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %.b748 = load i1, ptr @doTile, align 4
  %i.i = load i32, ptr @xformOp, align 4
  %i.j = icmp ne i32 %i.i, 0
  %or.cond = select i1 %.b748, i1 true, i1 %i.j
  %i.k = load i32, ptr @xformOpt, align 4
  %i.l = icmp ne i32 %i.k, 0
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.l
  %i.m = load ptr, ptr @customFilter, align 8
  %i.n = icmp ne ptr %i.m, null
  %or.cond5 = select i1 %or.cond3, i1 true, i1 %i.n ; 2 uses
  %i.o = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.241) ; 7 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = tail call ptr @__errno_location() #25
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4
  %i.s = tail call ptr @strerror(i32 noundef %i.r) #22
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 656, ptr noundef nonnull @.str.242, ptr noundef %i.s) ; 0 uses
  br label %.thread965

bb.c:                                             ; preds = %bb.a
  %i.u = tail call i32 @fseek(ptr noundef nonnull %i.o, i64 noundef 0, i32 noundef 2)
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = tail call i64 @ftell(ptr noundef nonnull %i.o) ; 5 uses
  store i64 %i.w, ptr %i.b, align 8, !tbaa !43
  %i.x = icmp eq i64 %i.w, -1
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.y = tail call ptr @__errno_location() #25
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4
  %i.aa = tail call ptr @strerror(i32 noundef %i.z) #22
  %i.ab = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 659, ptr noundef nonnull @.str.243, ptr noundef %i.aa) ; 0 uses
  br label %.thread948

bb.f:                                             ; preds = %bb.d
  %i.ac = tail call noalias ptr @malloc(i64 noundef %i.w) #26 ; 4 uses
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !10
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call ptr @__errno_location() #25
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.ag = tail call ptr @strerror(i32 noundef %i.af) #22
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 661, ptr noundef nonnull @.str.244, ptr noundef %i.ag) ; 0 uses
  br label %.thread948

bb.h:                                             ; preds = %bb.f
  %i.ai = tail call i32 @fseek(ptr noundef nonnull %i.o, i64 noundef 0, i32 noundef 0)
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = tail call ptr @__errno_location() #25
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.am = tail call ptr @strerror(i32 noundef %i.al) #22
  %i.an = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 663, ptr noundef nonnull @.str.245, ptr noundef %i.am) ; 0 uses
  br label %.thread948

bb.j:                                             ; preds = %bb.h
  %i.ao = tail call i64 @fread(ptr noundef nonnull %i.ac, i64 noundef %i.w, i64 noundef 1, ptr noundef nonnull %i.o)
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = tail call ptr @__errno_location() #25
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.as = tail call ptr @strerror(i32 noundef %i.ar) #22
  %i.at = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 665, ptr noundef nonnull @.str.246, ptr noundef %i.as) ; 0 uses
  br label %.thread948

bb.l:                                             ; preds = %bb.j
  %i.au = tail call i32 @fclose(ptr noundef nonnull %i.o) ; 0 uses
  %i.av = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 46) #23 ; 2 uses
  %.not = icmp eq ptr %i.av, null
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr %i.av, align 1, !tbaa !16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aw = tail call ptr @tj3Init(i32 noundef 2) #22 ; 98 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ay = tail call ptr @tj3GetErrorStr(ptr noundef null) #22
  %i.az = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, i32 noundef 672, ptr noundef %i.ay) ; 0 uses
  br label %.thread965

bb.p:                                             ; preds = %bb.n
  %.b742 = load i1, ptr @stopOnWarning, align 4
  %i.ba = zext i1 %.b742 to i32
  %i.bb = tail call i32 @tj3Set(ptr noundef nonnull %i.aw, i32 noundef 0, i32 noundef %i.ba) #22
  %i.bc = icmp eq i32 %i.bb, -1
  br i1 %i.bc, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.bd = tail call i32 @tj3GetErrorCode(ptr noundef nonnull %i.aw) #22
  %i.be = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.aw) #22 ; 4 uses
  %i.bf = tail call i32 @tj3Get(ptr noundef nonnull %i.aw, i32 noundef 0) #22
  %i.bg = icmp eq i32 %i.bf, 0
  %i.bh = icmp eq i32 %i.bd, 0                    ; 2 uses
  %or.cond7 = select i1 %i.bg, i1 %i.bh, i1 false
  br i1 %or.cond7, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.bi = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.be, i64 noundef 200) #23
  %.not768 = icmp eq i32 %i.bi, 0
  br i1 %.not768, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.b767 = load i1, ptr @tjErrorCode, align 4
  %i.bj = load i32, ptr @tjErrorLine, align 4
  %i.bk = icmp eq i32 %i.bj, 674
  %or.cond9.not = select i1 %.b767, i1 %i.bk, i1 false
  br i1 %or.cond9.not, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bl = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.be, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 674, ptr @tjErrorLine, align 4, !tbaa !4
  %i.bm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.109, i32 noundef 674, ptr noundef nonnull %i.be) ; 0 uses
  br label %.thread

bb.u:                                             ; preds = %bb.q
  %i.bn = select i1 %i.bh, ptr @.str.111, ptr @.str.112
  %i.bo = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.110, ptr noundef nonnull %i.bn, i32 noundef 674, ptr noundef %i.be) ; 0 uses
  br label %.thread965

.thread:                                          ; preds = %bb.s, %bb.t, %bb.p
  %.b738 = load i1, ptr @bottomUp, align 4
  %i.bp = zext i1 %.b738 to i32
  %i.bq = tail call i32 @tj3Set(ptr noundef nonnull %i.aw, i32 noundef 1, i32 noundef %i.bp) #22
  %i.br = icmp eq i32 %i.bq, -1
  br i1 %i.br, label %bb.v, label %.thread856

bb.v:                                             ; preds = %.thread
  %i.bs = tail call i32 @tj3GetErrorCode(ptr noundef nonnull %i.aw) #22
  %i.bt = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.aw) #22 ; 4 uses
  %i.bu = tail call i32 @tj3Get(ptr noundef nonnull %i.aw, i32 noundef 0) #22
  %i.bv = icmp eq i32 %i.bu, 0
  %i.bw = icmp eq i32 %i.bs, 0                    ; 2 uses
  %or.cond11 = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond11, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.bx = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.bt, i64 noundef 200) #23
  %.not770 = icmp eq i32 %i.bx, 0
  br i1 %.not770, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %.b766 = load i1, ptr @tjErrorCode, align 4
  %i.by = load i32, ptr @tjErrorLine, align 4
  %i.bz = icmp eq i32 %i.by, 676
  %or.cond13.not = select i1 %.b766, i1 %i.bz, i1 false
  br i1 %or.cond13.not, label %.thread856, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ca = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.bt, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 676, ptr @tjErrorLine, align 4, !tbaa !4
  %i.cb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.109, i32 noundef 676, ptr noundef nonnull %i.bt) ; 0 uses
  br label %.thread856

bb.z:                                             ; preds = %bb.v
  %i.cc = select i1 %i.bw, ptr @.str.111, ptr @.str.112
  %i.cd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.110, ptr noundef nonnull %i.cc, i32 noundef 676, ptr noundef %i.bt) ; 0 uses
  br label %.thread965

.thread856:                                       ; preds = %bb.x, %bb.y, %.thread
  %.b734 = load i1, ptr @noRealloc, align 4
  %not..b734 = xor i1 %.b734, true
  %i.ce = zext i1 %not..b734 to i32
  %i.cf = tail call i32 @tj3Set(ptr noundef nonnull %i.aw, i32 noundef 2, i32 noundef %i.ce) #22
  %i.cg = icmp eq i32 %i.cf, -1
  br i1 %i.cg, label %bb.aa, label %.thread860

bb.aa:                                            ; preds = %.thread856
  %i.ch = tail call i32 @tj3GetErrorCode(ptr noundef nonnull %i.aw) #22
  %i.ci = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.aw) #22 ; 4 uses
  %i.cj = tail call i32 @tj3Get(ptr noundef nonnull %i.aw, i32 noundef 0) #22
  %i.ck = icmp eq i32 %i.cj, 0
  %i.cl = icmp eq i32 %i.ch, 0                    ; 2 uses
  %or.cond15 = select i1 %i.ck, i1 %i.cl, i1 false
  br i1 %or.cond15, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.cm = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.ci, i64 noundef 200) #23
  %.not772 = icmp eq i32 %i.cm, 0
  br i1 %.not772, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %.b765 = load i1, ptr @tjErrorCode, align 4
  %i.cn = load i32, ptr @tjErrorLine, align 4
  %i.co = icmp eq i32 %i.cn, 678
  %or.cond17.not = select i1 %.b765, i1 %i.co, i1 false
  br i1 %or.cond17.not, label %.thread860, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cp = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.ci, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 678, ptr @tjErrorLine, align 4, !tbaa !4
  %i.cq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.109, i32 noundef 678, ptr noundef nonnull %i.ci) ; 0 uses
  br label %.thread860

bb.ae:                                            ; preds = %bb.aa
  %i.cr = select i1 %i.cl, ptr @.str.111, ptr @.str.112
  %i.cs = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.110, ptr noundef nonnull %i.cr, i32 noundef 678, ptr noundef %i.ci) ; 0 uses
  br label %.thread965

.thread860:                                       ; preds = %bb.ac, %bb.ad, %.thread856
  %.b740 = load i1, ptr @fastUpsample, align 4
  %i.ct = zext i1 %.b740 to i32
  %i.cu = tail call i32 @tj3Set(ptr noundef nonnull %i.aw, i32 noundef 9, i32 noundef %i.ct) #22
  %i.cv = icmp eq i32 %i.cu, -1
  br i1 %i.cv, label %bb.af, label %.thread864

bb.af:                                            ; preds = %.thread860
  %i.cw = tail call i32 @tj3GetErrorCode(ptr noundef nonnull %i.aw) #22
  %i.cx = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.aw) #22 ; 4 uses
  %i.cy = tail call i32 @tj3Get(ptr noundef nonnull %i.aw, i32 noundef 0) #22
  %i.cz = icmp eq i32 %i.cy, 0
  %i.da = icmp eq i32 %i.cw, 0                    ; 2 uses
  %or.cond19 = select i1 %i.cz, i1 %i.da, i1 false
  br i1 %or.cond19, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.db = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.cx, i64 noundef 200) #23
  %.not774 = icmp eq i32 %i.db, 0
  br i1 %.not774, label %bb.ah, label %bb.ai

end_hunk_0
begin_hunk_1_@decompTest:bb.a
  %i.dx = load i32, ptr @maxScans, align 4, !tbaa !4
  %i.dy = tail call i32 @tj3Set(ptr noundef nonnull %i.aw, i32 noundef 13, i32 noundef %i.dx) #22
  %i.dz = icmp eq i32 %i.dy, -1
  br i1 %i.dz, label %bb.ap, label %.thread872

bb.ap:                                            ; preds = %.thread868
  %i.ea = tail call i32 @tj3GetErrorCode(ptr noundef nonnull %i.aw) #22
  %i.eb = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.aw) #22 ; 4 uses
  %i.ec = tail call i32 @tj3Get(ptr noundef nonnull %i.aw, i32 noundef 0) #22
  %i.ed = icmp eq i32 %i.ec, 0
  %i.ee = icmp eq i32 %i.ea, 0                    ; 2 uses
  %or.cond27 = select i1 %i.ed, i1 %i.ee, i1 false
  br i1 %or.cond27, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.ef = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.eb, i64 noundef 200) #23
  %.not778 = icmp eq i32 %i.ef, 0
  br i1 %.not778, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %.b762 = load i1, ptr @tjErrorCode, align 4
  %i.eg = load i32, ptr @tjErrorLine, align 4
  %i.eh = icmp eq i32 %i.eg, 684
  %or.cond29.not = select i1 %.b762, i1 %i.eh, i1 false
  br i1 %or.cond29.not, label %.thread872, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.ei = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.eb, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 684, ptr @tjErrorLine, align 4, !tbaa !4
  %i.ej = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.109, i32 noundef 684, ptr noundef nonnull %i.eb) ; 0 uses
  br label %.thread872

bb.at:                                            ; preds = %bb.ap
  %i.ek = select i1 %i.ee, ptr @.str.111, ptr @.str.112
  %i.el = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.110, ptr noundef nonnull %i.ek, i32 noundef 684, ptr noundef %i.eb) ; 0 uses
  br label %.thread965

.thread872:                                       ; preds = %bb.ar, %bb.as, %.thread868
  %i.em = load i32, ptr @restartIntervalBlocks, align 4, !tbaa !4
  %i.en = tail call i32 @tj3Set(ptr noundef nonnull %i.aw, i32 noundef 18, i32 noundef %i.em) #22
  %i.eo = icmp eq i32 %i.en, -1
  br i1 %i.eo, label %bb.au, label %.thread876

bb.au:                                            ; preds = %.thread872
  %i.ep = tail call i32 @tj3GetErrorCode(ptr noundef nonnull %i.aw) #22
  %i.eq = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.aw) #22 ; 4 uses
  %i.er = tail call i32 @tj3Get(ptr noundef nonnull %i.aw, i32 noundef 0) #22
  %i.es = icmp eq i32 %i.er, 0
  %i.et = icmp eq i32 %i.ep, 0                    ; 2 uses
  %or.cond31 = select i1 %i.es, i1 %i.et, i1 false
  br i1 %or.cond31, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.eu = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.eq, i64 noundef 200) #23
  %.not780 = icmp eq i32 %i.eu, 0
  br i1 %.not780, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %.b761 = load i1, ptr @tjErrorCode, align 4
  %i.ev = load i32, ptr @tjErrorLine, align 4
  %i.ew = icmp eq i32 %i.ev, 686
  %or.cond33.not = select i1 %.b761, i1 %i.ew, i1 false
  br i1 %or.cond33.not, label %.thread876, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.ex = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.eq, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 686, ptr @tjErrorLine, align 4, !tbaa !4
  %i.ey = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.109, i32 noundef 686, ptr noundef nonnull %i.eq) ; 0 uses
  br label %.thread876

bb.ay:                                            ; preds = %bb.au
  %i.ez = select i1 %i.et, ptr @.str.111, ptr @.str.112
  %i.fa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.110, ptr noundef nonnull %i.ez, i32 noundef 686, ptr noundef %i.eq) ; 0 uses
  br label %.thread965

.thread876:                                       ; preds = %bb.aw, %bb.ax, %.thread872
  %i.fb = load i32, ptr @restartIntervalRows, align 4, !tbaa !4
  %i.fc = tail call i32 @tj3Set(ptr noundef nonnull %i.aw, i32 noundef 19, i32 noundef %i.fb) #22
  %i.fd = icmp eq i32 %i.fc, -1
  br i1 %i.fd, label %bb.az, label %.thread880

bb.az:                                            ; preds = %.thread876
  %i.fe = tail call i32 @tj3GetErrorCode(ptr noundef nonnull %i.aw) #22
  %i.ff = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.aw) #22 ; 4 uses
  %i.fg = tail call i32 @tj3Get(ptr noundef nonnull %i.aw, i32 noundef 0) #22
  %i.fh = icmp eq i32 %i.fg, 0
  %i.fi = icmp eq i32 %i.fe, 0                    ; 2 uses
  %or.cond35 = select i1 %i.fh, i1 %i.fi, i1 false
  br i1 %or.cond35, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.fj = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.ff, i64 noundef 200) #23
  %.not782 = icmp eq i32 %i.fj, 0
  br i1 %.not782, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %.b760 = load i1, ptr @tjErrorCode, align 4
  %i.fk = load i32, ptr @tjErrorLine, align 4
  %i.fl = icmp eq i32 %i.fk, 688
  %or.cond37.not = select i1 %.b760, i1 %i.fl, i1 false
  br i1 %or.cond37.not, label %.thread880, label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.fm = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.ff, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 688, ptr @tjErrorLine, align 4, !tbaa !4
  %i.fn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.109, i32 noundef 688, ptr noundef nonnull %i.ff) ; 0 uses
  br label %.thread880

bb.bd:                                            ; preds = %bb.az
  %i.fo = select i1 %i.fi, ptr @.str.111, ptr @.str.112
  %i.fp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.110, ptr noundef nonnull %i.fo, i32 noundef 688, ptr noundef %i.ff) ; 0 uses
  br label %.thread965

.thread880:                                       ; preds = %bb.bb, %bb.bc, %.thread876
  %i.fq = load i32, ptr @maxMemory, align 4, !tbaa !4
  %i.fr = tail call i32 @tj3Set(ptr noundef nonnull %i.aw, i32 noundef 23, i32 noundef %i.fq) #22
  %i.fs = icmp eq i32 %i.fr, -1
  br i1 %i.fs, label %bb.be, label %.thread884

bb.be:                                            ; preds = %.thread880
  %i.ft = tail call i32 @tj3GetErrorCode(ptr noundef nonnull %i.aw) #22
  %i.fu = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.aw) #22 ; 4 uses
  %i.fv = tail call i32 @tj3Get(ptr noundef nonnull %i.aw, i32 noundef 0) #22
  %i.fw = icmp eq i32 %i.fv, 0
  %i.fx = icmp eq i32 %i.ft, 0                    ; 2 uses
  %or.cond39 = select i1 %i.fw, i1 %i.fx, i1 false
  br i1 %or.cond39, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.fy = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.fu, i64 noundef 200) #23
  %.not784 = icmp eq i32 %i.fy, 0
  br i1 %.not784, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %.b759 = load i1, ptr @tjErrorCode, align 4
  %i.fz = load i32, ptr @tjErrorLine, align 4
  %i.ga = icmp eq i32 %i.fz, 690
  %or.cond41.not = select i1 %.b759, i1 %i.ga, i1 false
  br i1 %or.cond41.not, label %.thread884, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.gb = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.fu, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 690, ptr @tjErrorLine, align 4, !tbaa !4
  %i.gc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.109, i32 noundef 690, ptr noundef nonnull %i.fu) ; 0 uses
  br label %.thread884

bb.bi:                                            ; preds = %bb.be
  %i.gd = select i1 %i.fx, ptr @.str.111, ptr @.str.112
  %i.ge = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.110, ptr noundef nonnull %i.gd, i32 noundef 690, ptr noundef %i.fu) ; 0 uses
  br label %.thread965

.thread884:                                       ; preds = %bb.bg, %bb.bh, %.thread880
  %i.gf = load i32, ptr @maxPixels, align 4, !tbaa !4
  %i.gg = tail call i32 @tj3Set(ptr noundef nonnull %i.aw, i32 noundef 24, i32 noundef %i.gf) #22
  %i.gh = icmp eq i32 %i.gg, -1
  br i1 %i.gh, label %bb.bj, label %.thread888

bb.bj:                                            ; preds = %.thread884
  %i.gi = tail call i32 @tj3GetErrorCode(ptr noundef nonnull %i.aw) #22
  %i.gj = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.aw) #22 ; 4 uses
  %i.gk = tail call i32 @tj3Get(ptr noundef nonnull %i.aw, i32 noundef 0) #22
  %i.gl = icmp eq i32 %i.gk, 0
  %i.gm = icmp eq i32 %i.gi, 0                    ; 2 uses
  %or.cond43 = select i1 %i.gl, i1 %i.gm, i1 false
  br i1 %or.cond43, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %i.gn = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.gj, i64 noundef 200) #23
  %.not786 = icmp eq i32 %i.gn, 0
  br i1 %.not786, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %.b758 = load i1, ptr @tjErrorCode, align 4
  %i.go = load i32, ptr @tjErrorLine, align 4
  %i.gp = icmp eq i32 %i.go, 692
  %or.cond45.not = select i1 %.b758, i1 %i.gp, i1 false
  br i1 %or.cond45.not, label %.thread888, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.gq = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.gj, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 692, ptr @tjErrorLine, align 4, !tbaa !4
  %i.gr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.109, i32 noundef 692, ptr noundef nonnull %i.gj) ; 0 uses
  br label %.thread888

bb.bn:                                            ; preds = %bb.bj
  %i.gs = select i1 %i.gm, ptr @.str.111, ptr @.str.112
  %i.gt = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.110, ptr noundef nonnull %i.gs, i32 noundef 692, ptr noundef %i.gj) ; 0 uses
  br label %.thread965

.thread888:                                       ; preds = %bb.bl, %bb.bm, %.thread884
  %i.gu = tail call i32 @tj3DecompressHeader(ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ac, i64 noundef %i.w) #22
  %i.gv = icmp eq i32 %i.gu, -1
  br i1 %i.gv, label %bb.bo, label %.thread892

bb.bo:                                            ; preds = %.thread888
  %i.gw = tail call i32 @tj3GetErrorCode(ptr noundef nonnull %i.aw) #22
  %i.gx = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.aw) #22 ; 4 uses
  %i.gy = tail call i32 @tj3Get(ptr noundef nonnull %i.aw, i32 noundef 0) #22
  %i.gz = icmp eq i32 %i.gy, 0
  %i.ha = icmp eq i32 %i.gw, 0                    ; 2 uses
  %or.cond47 = select i1 %i.gz, i1 %i.ha, i1 false
  br i1 %or.cond47, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %bb.bo
  %i.hb = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.gx, i64 noundef 200) #23
  %.not788 = icmp eq i32 %i.hb, 0
  br i1 %.not788, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %.b757 = load i1, ptr @tjErrorCode, align 4
  %i.hc = load i32, ptr @tjErrorLine, align 4
  %i.hd = icmp eq i32 %i.hc, 695
  %or.cond49.not = select i1 %.b757, i1 %i.hd, i1 false
  br i1 %or.cond49.not, label %.thread892, label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.he = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.gx, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 695, ptr @tjErrorLine, align 4, !tbaa !4
  %i.hf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.109, i32 noundef 695, ptr noundef nonnull %i.gx) ; 0 uses
  br label %.thread892

bb.bs:                                            ; preds = %bb.bo
  %i.hg = select i1 %i.ha, ptr @.str.111, ptr @.str.112
  %i.hh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.110, ptr noundef nonnull %i.hg, i32 noundef 695, ptr noundef %i.gx) ; 0 uses
  br label %.thread965

.thread892:                                       ; preds = %bb.bq, %bb.br, %.thread888
  %i.hi = tail call i32 @tj3Get(ptr noundef nonnull %i.aw, i32 noundef 5) #22 ; 11 uses
  %i.hj = tail call i32 @tj3Get(ptr noundef nonnull %i.aw, i32 noundef 6) #22 ; 11 uses
  %i.hk = tail call i32 @tj3Get(ptr noundef nonnull %i.aw, i32 noundef 4) #22
  %.fr = freeze i32 %i.hk                         ; 6 uses
  %i.hl = tail call i32 @tj3Get(ptr noundef nonnull %i.aw, i32 noundef 7) #22
  store i32 %i.hl, ptr @precision, align 4, !tbaa !4
  %i.hm = tail call i32 @tj3Get(ptr noundef nonnull %i.aw, i32 noundef 12) #22
  %i.hn = icmp eq i32 %i.hm, 1
  br i1 %i.hn, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %.thread892
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.126) ; 0 uses
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.thread892
  %i.ho = tail call i32 @tj3Get(ptr noundef nonnull %i.aw, i32 noundef 14) #22
  %i.hp = icmp eq i32 %i.ho, 1
  br i1 %i.hp, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %puts790 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.127) ; 0 uses
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.b741 = load i1, ptr @progressive, align 4
  %i.hq = zext i1 %.b741 to i32
  %i.hr = tail call i32 @tj3Set(ptr noundef nonnull %i.aw, i32 noundef 12, i32 noundef %i.hq) #22
  %i.hs = icmp eq i32 %i.hr, -1
  br i1 %i.hs, label %bb.bx, label %.thread896

bb.bx:                                            ; preds = %bb.bw
  %i.ht = tail call i32 @tj3GetErrorCode(ptr noundef nonnull %i.aw) #22
  %i.hu = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.aw) #22 ; 4 uses
  %i.hv = tail call i32 @tj3Get(ptr noundef nonnull %i.aw, i32 noundef 0) #22
  %i.hw = icmp eq i32 %i.hv, 0
  %i.hx = icmp eq i32 %i.ht, 0                    ; 2 uses
  %or.cond51 = select i1 %i.hw, i1 %i.hx, i1 false
  br i1 %or.cond51, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %bb.bx
  %i.hy = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.hu, i64 noundef 200) #23
  %.not791 = icmp eq i32 %i.hy, 0
  br i1 %.not791, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %.b756 = load i1, ptr @tjErrorCode, align 4
  %i.hz = load i32, ptr @tjErrorLine, align 4
  %i.ia = icmp eq i32 %i.hz, 705
  %or.cond53.not = select i1 %.b756, i1 %i.ia, i1 false
  br i1 %or.cond53.not, label %.thread896, label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.ib = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.hu, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 705, ptr @tjErrorLine, align 4, !tbaa !4
  %i.ic = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.109, i32 noundef 705, ptr noundef nonnull %i.hu) ; 0 uses
  br label %.thread896

bb.cb:                                            ; preds = %bb.bx
  %i.id = select i1 %i.hx, ptr @.str.111, ptr @.str.112
  %i.ie = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.110, ptr noundef nonnull %i.id, i32 noundef 705, ptr noundef %i.hu) ; 0 uses
  br label %.thread965

.thread896:                                       ; preds = %bb.bz, %bb.ca, %bb.bw
  %.b735 = load i1, ptr @arithmetic, align 4
  %i.if = zext i1 %.b735 to i32
  %i.ig = tail call i32 @tj3Set(ptr noundef nonnull %i.aw, i32 noundef 14, i32 noundef %i.if) #22
  %i.ih = icmp eq i32 %i.ig, -1
  br i1 %i.ih, label %bb.cc, label %.thread900

bb.cc:                                            ; preds = %.thread896
  %i.ii = tail call i32 @tj3GetErrorCode(ptr noundef nonnull %i.aw) #22
  %i.ij = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.aw) #22 ; 4 uses
  %i.ik = tail call i32 @tj3Get(ptr noundef nonnull %i.aw, i32 noundef 0) #22
  %i.il = icmp eq i32 %i.ik, 0
  %i.im = icmp eq i32 %i.ii, 0                    ; 2 uses
  %or.cond55 = select i1 %i.il, i1 %i.im, i1 false
  br i1 %or.cond55, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %i.in = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.ij, i64 noundef 200) #23
  %.not793 = icmp eq i32 %i.in, 0
  br i1 %.not793, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %.b755 = load i1, ptr @tjErrorCode, align 4
  %i.io = load i32, ptr @tjErrorLine, align 4
  %i.ip = icmp eq i32 %i.io, 707
  %or.cond57.not = select i1 %.b755, i1 %i.ip, i1 false
  br i1 %or.cond57.not, label %.thread900, label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.iq = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.ij, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 707, ptr @tjErrorLine, align 4, !tbaa !4
  %i.ir = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.109, i32 noundef 707, ptr noundef nonnull %i.ij) ; 0 uses
  br label %.thread900

bb.cg:                                            ; preds = %bb.cc
  %i.is = select i1 %i.im, ptr @.str.111, ptr @.str.112
  %i.it = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.110, ptr noundef nonnull %i.is, i32 noundef 707, ptr noundef %i.ij) ; 0 uses
  br label %.thread965

.thread900:                                       ; preds = %bb.ce, %bb.cf, %.thread896
  %i.iu = tail call i32 @tj3Get(ptr noundef nonnull %i.aw, i32 noundef 15) #22
  store i32 %i.iu, ptr @lossless, align 4, !tbaa !4
  %i.iv = load i32, ptr @precision, align 4, !tbaa !4
  %i.iw = icmp slt i32 %i.iv, 9
  %i.ix = select i1 %i.iw, i32 1, i32 2
  store i32 %i.ix, ptr @sampleSize, align 4, !tbaa !4
  %i.iy = tail call i32 @tj3Get(ptr noundef nonnull %i.aw, i32 noundef 8) #22 ; 3 uses
  %i.iz = icmp slt i32 %i.hi, 1
  %i.ja = icmp slt i32 %i.hj, 1
  %or.cond59 = select i1 %i.iz, i1 true, i1 %i.ja
  br i1 %or.cond59, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %.thread900
  %i.jb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 713, ptr noundef nonnull @.str.249, ptr noundef nonnull @.str.250) ; 0 uses
  br label %.thread965

bb.ci:                                            ; preds = %.thread900
  %i.jc = add i32 %i.iy, -3
  %or.cond61 = icmp ult i32 %i.jc, 2
  br i1 %or.cond61, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  store i32 11, ptr @pf, align 4, !tbaa !4
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ci, %bb.cj
  %.0628 = phi i32 [ 4, %bb.cj ], [ %i.h, %bb.ci ]
  %i.jd = load i32, ptr @lossless, align 4, !tbaa !4
  %.not795 = icmp eq i32 %i.jd, 0
  br i1 %.not795, label %._crit_edge1146, label %bb.cl

._crit_edge1146:                                  ; preds = %bb.ck
  %.pre = load i64, ptr @sf, align 8
  br label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  store i64 4294967297, ptr @sf, align 8
  br label %bb.cm

bb.cm:                                            ; preds = %._crit_edge1146, %bb.cl
  %i.je = phi i64 [ %.pre, %._crit_edge1146 ], [ 4294967297, %bb.cl ]
  %i.jf = tail call i32 @tj3SetScalingFactor(ptr noundef nonnull %i.aw, i64 %i.je) #22
  %i.jg = icmp eq i32 %i.jf, -1
  br i1 %i.jg, label %bb.cn, label %.thread904

bb.cn:                                            ; preds = %bb.cm
  %i.jh = tail call i32 @tj3GetErrorCode(ptr noundef nonnull %i.aw) #22
  %i.ji = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.aw) #22 ; 4 uses
  %i.jj = tail call i32 @tj3Get(ptr noundef nonnull %i.aw, i32 noundef 0) #22
  %i.jk = icmp eq i32 %i.jj, 0
  %i.jl = icmp eq i32 %i.jh, 0                    ; 2 uses
  %or.cond63 = select i1 %i.jk, i1 %i.jl, i1 false
  br i1 %or.cond63, label %bb.co, label %bb.cr

bb.co:                                            ; preds = %bb.cn
  %i.jm = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.ji, i64 noundef 200) #23
end_hunk_1
