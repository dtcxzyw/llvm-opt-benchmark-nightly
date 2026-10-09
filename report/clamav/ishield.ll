Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/ishield?download=true
inline.NumInlined: 36
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@cli_scanishield_msi:bb.a
bb.y:                                             ; preds = %bb.w, %bb.w, %bb.w
  %i.eb = load i32, ptr %i.ah, align 8, !tbaa !55
  %i.ec = zext i32 %i.eb to i64
  %i.ed = sub nsw i64 8192, %i.ec
  %i.ee = call i64 @cli_writen(i32 noundef %i.br, ptr noundef nonnull %i.a, i64 noundef %i.ed) #12
  %i.ef = icmp eq i64 %i.ee, -1
  br i1 %i.ef, label %.thread.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eg = load ptr, ptr %i.t, align 8, !tbaa !29
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 80
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !49 ; 3 uses
  %.not164 = icmp ne i64 %i.ei, 0
  %i.ej = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.ek = icmp ugt i64 %i.ej, %i.ei
  %or.cond = select i1 %.not164, i1 %i.ek, i1 false
  br i1 %or.cond, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.11, i64 noundef %i.ej, i64 noundef %i.ei) #12
  br label %.thread.thread

bb.ab:                                            ; preds = %bb.z
  %i.el = load i32, ptr %i.ah, align 8
  %.not165 = icmp eq i32 %i.el, 0
  br i1 %.not165, label %bb.w, label %.thread

.thread.thread:                                   ; preds = %bb.y, %bb.x, %bb.aa
  %.pn.ph = phi i64 [ %.020.i178, %bb.x ], [ %.0108231, %bb.aa ], [ %.020.i178, %bb.y ]
  %.3125.ph = phi i32 [ 0, %bb.x ], [ 0, %bb.aa ], [ 14, %bb.y ]
  %.4130280 = add i64 %.pn.ph, %.1127228
  br label %.loopexit.sink.split

.thread:                                          ; preds = %bb.ab
  %.4130 = add i64 %.020.i178, %.1127228          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %.not162 = icmp eq i64 %i.dz, 0
  br i1 %.not162, label %.loopexit, label %.lr.ph233

.loopexit.sink.split:                             ; preds = %.thread192, %.thread.thread
  %.1127216.ph = phi i64 [ %.4130280, %.thread.thread ], [ %.1127228, %.thread192 ]
  %.0122214.ph = phi i32 [ %.3125.ph, %.thread.thread ], [ 0, %.thread192 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %.loopexit

.loopexit:                                        ; preds = %.thread, %.loopexit.sink.split
  %.1127216 = phi i64 [ %.1127216.ph, %.loopexit.sink.split ], [ %.4130, %.thread ]
  %.0122214 = phi i32 [ %.0122214.ph, %.loopexit.sink.split ], [ 0, %.thread ] ; 2 uses
  %i.em = call i32 @inflateEnd(ptr noundef nonnull %3) #12 ; 0 uses
  %i.en = icmp eq i32 %.0122214, 0
  br i1 %i.en, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %.loopexit
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.12, ptr noundef nonnull %i.bq) #12
  %i.eo = call i64 @lseek(i32 noundef %i.br, i64 noundef 0, i32 noundef 0) #12
  %i.ep = icmp eq i64 %i.eo, -1
  br i1 %i.ep, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.13) #12
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.eq = call i32 @cli_magic_scan_desc(i32 noundef %i.br, ptr noundef nonnull %i.bq, ptr noundef %0, ptr noundef %i.bd, i32 noundef 0) #12
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.loopexit
  %.5 = phi i32 [ %i.eq, %bb.ae ], [ %.0122214, %.loopexit ] ; 2 uses
  %i.er = call i32 @close(i32 noundef %i.br) #12  ; 0 uses
  %i.es = load ptr, ptr %i.t, align 8, !tbaa !29
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !57
  %.not166 = icmp eq i32 %i.eu, 0
  br i1 %.not166, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ev = call i32 @cli_unlink(ptr noundef nonnull %i.bq) #12
  %.not167 = icmp eq i32 %i.ev, 0
  %spec.select = select i1 %.not167, i32 %.5, i32 10
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.6 = phi i32 [ %.5, %bb.af ], [ %spec.select, %bb.ag ] ; 2 uses
  call void @free(ptr noundef %i.bq) #12
  %.not168 = icmp eq ptr %i.bd, null
  br i1 %.not168, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @free(ptr noundef nonnull %i.bd) #12
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.not169 = icmp eq i32 %.6, 0
  br i1 %.not169, label %bb.ak, label %.thread199

bb.ak:                                            ; preds = %bb.aj
  %i.ew = add i32 %.0119237, 1                    ; 2 uses
  %i.ex = load ptr, ptr %i.t, align 8, !tbaa !29
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 92
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !58 ; 2 uses
  %i.fa = add i32 %i.ez, -1
  %or.cond177.not = icmp ult i32 %i.fa, %i.ew
  br i1 %or.cond177.not, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.14, i32 noundef %i.ez) #12
  br label %.thread199

.thread199:                                       ; preds = %bb.aj, %bb.m, %fmap_readn.exit.thread, %bb.o, %bb.r, %bb.al, %bb.j, %bb.p, %bb.s
  %.1.ph = phi i32 [ 9, %bb.s ], [ 20, %bb.p ], [ 0, %bb.j ], [ 20, %bb.o ], [ 0, %fmap_readn.exit.thread ], [ 25, %bb.al ], [ 9, %bb.r ], [ %.6, %bb.aj ], [ 0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %.loopexit211

bb.am:                                            ; preds = %bb.ak, %bb.l
  %.6132 = phi i64 [ %.1127216, %bb.ak ], [ %i.av, %bb.l ]
  %.1120 = phi i32 [ %i.ew, %bb.ak ], [ %.0119237, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %.not154 = icmp eq i32 %i.ak, 0
  br i1 %.not154, label %.loopexit211, label %bb.f

.loopexit211:                                     ; preds = %bb.am, %.thread199, %bb.c, %bb.e, %bb.b
  %.2 = phi i32 [ 0, %bb.b ], [ %.1.ph, %.thread199 ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.am ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare ptr @cli_safer_strdup(ptr noundef) local_unnamed_addr #2

declare ptr @cli_gentemp(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare i32 @inflateInit_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @cli_writen(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

declare i32 @cli_magic_scan_desc(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #2

declare i32 @cli_unlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @cli_scanishield(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 12 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 4 uses
  %i.f = getelementptr i8, ptr %i.d, i64 16
  %i.g = getelementptr i8, ptr %i.d, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  br label %.outer

.outer:                                           ; preds = %select.unfold, %bb.a
  %.sroa.25.0.ph = phi i32 [ %.sroa.25.2, %select.unfold ], [ 0, %bb.a ] ; 8 uses
  %.sroa.20.0.ph = phi i64 [ %.sroa.20.1, %select.unfold ], [ 0, %bb.a ] ; 6 uses
  %.sroa.13.0.ph = phi i64 [ %.sroa.13.1, %select.unfold ], [ -1, %bb.a ] ; 7 uses
  %.sroa.0.0.ph = phi ptr [ %.sroa.0.2, %select.unfold ], [ null, %bb.a ] ; 7 uses
  %.0118.ph = phi i64 [ %i.as, %select.unfold ], [ %2, %bb.a ]
  %.0111.ph = phi i64 [ %.3, %select.unfold ], [ %1, %bb.a ]
  %.0110.ph = phi i32 [ %i.aq, %select.unfold ], [ 0, %bb.a ]
  %i.i = icmp eq i64 %.sroa.13.0.ph, -1           ; 3 uses
  %.not315 = icmp eq i32 %.sroa.25.0.ph, 0        ; 4 uses
  %wide.trip.count = zext i32 %.sroa.25.0.ph to i64
  br label %bb.b

bb.b:                                             ; preds = %.outer, %.thread
  %.0110311 = phi i32 [ %.0110.ph, %.outer ], [ %i.aq, %.thread ] ; 2 uses
  %.0111310 = phi i64 [ %.0111.ph, %.outer ], [ %i.bx, %.thread ] ; 2 uses
  %.0118309 = phi i64 [ %.0118.ph, %.outer ], [ %i.as, %.thread ] ; 3 uses
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !83
  %i.k = call ptr %i.j(ptr noundef %i.d, i64 noundef %.0111310, i64 noundef 2048) #12, !inline_history !76 ; 7 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %.thread180, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #13
  %i.m = add i64 %.0111310, 1
  %i.n = add i64 %i.m, %i.l                       ; 2 uses
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !83
  %i.p = call ptr %i.o(ptr noundef nonnull %i.d, i64 noundef %i.n, i64 noundef 2048) #12, !inline_history !76 ; 3 uses
  %.not132 = icmp eq ptr %i.p, null
  br i1 %.not132, label %.thread180, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #13
  %i.r = add i64 %i.n, 1
  %i.s = add i64 %i.r, %i.q                       ; 2 uses
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !83
  %i.u = call ptr %i.t(ptr noundef nonnull %i.d, i64 noundef %i.s, i64 noundef 2048) #12, !inline_history !76 ; 3 uses
  %.not133 = icmp eq ptr %i.u, null
  br i1 %.not133, label %.thread180, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #13
  %i.w = add i64 %i.s, 1
  %i.x = add i64 %i.w, %i.v                       ; 2 uses
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !83
  %i.z = call ptr %i.y(ptr noundef nonnull %i.d, i64 noundef %i.x, i64 noundef 2048) #12, !inline_history !76 ; 6 uses
  %.not134 = icmp eq ptr %i.z, null
  br i1 %.not134, label %.thread180, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #13
  %i.ab = add i64 %i.aa, 1                        ; 2 uses
  %i.ac = add i64 %i.ab, %i.x                     ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab
  %i.ae = call i64 @__isoc23_strtol(ptr noundef nonnull %i.z, ptr noundef nonnull %i.b, i32 noundef 10) #12 ; 12 uses
  %or.cond = icmp ugt i64 %i.ae, 9223372036854775806
  br i1 %or.cond, label %.thread180, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load i8, ptr %i.z, align 1, !tbaa !28
  %i.ag = icmp eq i8 %i.af, 0
  %i.ah = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  %i.aj = icmp eq ptr %i.ah, %i.z
  %i.ak = or i1 %i.ai, %i.aj
  %or.cond148 = select i1 %i.ag, i1 true, i1 %i.ak
  br i1 %or.cond148, label %.thread180, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = load i8, ptr %i.ah, align 1, !tbaa !28
  %.not135 = icmp eq i8 %i.al, 0
  %.not136 = icmp ult i64 %i.ae, %.0118309
  %or.cond149 = select i1 %.not135, i1 %.not136, i1 false
  br i1 %or.cond149, label %bb.i, label %.thread180

bb.i:                                             ; preds = %bb.h
  %i.am = ptrtoint ptr %i.ad to i64
  %i.an = ptrtoint ptr %i.k to i64                ; 2 uses
  %i.ao = sub i64 %i.am, %i.an                    ; 3 uses
  %i.ap = sub nuw i64 %.0118309, %i.ae
  %.not137 = icmp ult i64 %i.ao, %i.ap
  br i1 %.not137, label %bb.j, label %.thread180

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.15, i64 noundef %i.ac, ptr noundef nonnull %i.k, ptr noundef nonnull %i.p, ptr noundef nonnull %i.u, i64 noundef %i.ae) #12
  %i.aq = add i32 %.0110311, 1                    ; 2 uses
  %i.ar = call i32 @cli_matchmeta(ptr noundef %0, ptr noundef nonnull %i.k, i64 noundef %i.ae, i64 noundef %i.ae, i32 noundef 0, i32 noundef %.0110311, i32 noundef 0) #12
  %.not138 = icmp eq i32 %i.ar, 0
  br i1 %.not138, label %bb.k, label %.thread193

bb.k:                                             ; preds = %bb.j
  %3 = add i64 %i.ae, %i.ao
  %i.as = sub i64 %.0118309, %3                   ; 2 uses
  %i.at = call i32 @strncasecmp(ptr noundef nonnull %i.k, ptr noundef nonnull @.str.16, i64 noundef 4) #13
  %.not139 = icmp eq i32 %i.at, 0
  br i1 %.not139, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 4 uses
  %i.av = call i32 @strcasecmp(ptr noundef nonnull %i.au, ptr noundef nonnull @.str.17) #13
  %.not140 = icmp eq i32 %i.av, 0
  br i1 %.not140, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.18) #12
  br label %select.unfold

bb.o:                                             ; preds = %bb.m
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.19) #12
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.aw = call i64 @__isoc23_strtol(ptr noundef nonnull %i.au, ptr noundef nonnull %i.b, i32 noundef 10) #12 ; 4 uses
  %i.ax = add i64 %i.aw, -1
  %or.cond5 = icmp ult i64 %i.ax, 65535
  br i1 %or.cond5, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.ay = load i8, ptr %i.au, align 1, !tbaa !28
  %i.az = icmp eq i8 %i.ay, 0
  %i.ba = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.bb = icmp eq ptr %i.ba, null
  %.not141 = icmp eq ptr %i.ba, %i.au
  %i.bc = or i1 %i.bb, %.not141
  %or.cond150 = select i1 %i.az, i1 true, i1 %i.bc
  br i1 %or.cond150, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = call i32 @strcasecmp(ptr noundef nonnull %i.ba, ptr noundef nonnull @.str.20) #13
  %.not142 = icmp eq i32 %i.bd, 0
  br i1 %.not142, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.r
  br i1 %.not315, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.s
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.s ], [ 0, %.preheader ] ; 4 uses
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph, i64 %indvars.iv
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !85
  %i.bg = zext i32 %i.bf to i64
  %.not143 = icmp eq i64 %indvars.iv, %i.bg
  br i1 %.not143, label %.critedge, label %bb.s

bb.s:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.thread, label %.lr.ph

.critedge:                                        ; preds = %.lr.ph
  %i.bh = trunc nuw i64 %indvars.iv to i32
  %i.bi = icmp eq i32 %.sroa.25.0.ph, %i.bh
  br i1 %i.bi, label %.critedge.thread, label %bb.u

.critedge.thread:                                 ; preds = %.preheader, %.critedge, %bb.s
  %i.bj = add i32 %.sroa.25.0.ph, 1               ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %i.bl = mul nuw nsw i64 %i.bk, 24
  %i.bm = call ptr @cli_max_realloc_or_free(ptr noundef %.sroa.0.0.ph, i64 noundef %i.bl) #12 ; 3 uses
  %.not144 = icmp eq ptr %i.bm, null
  br i1 %.not144, label %.thread193.thread, label %bb.t

bb.t:                                             ; preds = %.critedge.thread
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.21, i64 noundef %i.aw) #12
  %i.bn = trunc nuw nsw i64 %i.aw to i32
  %i.bo = zext i32 %.sroa.25.0.ph to i64
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.bo ; 3 uses
  store i32 %i.bn, ptr %i.bp, align 8, !tbaa !85
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 %i.ac, ptr %i.bq, align 8, !tbaa !86
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i64 %i.ae, ptr %i.br, align 8, !tbaa !87
  br label %select.unfold

bb.u:                                             ; preds = %.critedge
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.22, i64 noundef %i.aw) #12
  br label %.thread

select.unfold:                                    ; preds = %bb.t, %bb.n
  %.sroa.25.2 = phi i32 [ %.sroa.25.0.ph, %bb.n ], [ %i.bj, %bb.t ]
  %.sroa.20.1 = phi i64 [ %i.ae, %bb.n ], [ %.sroa.20.0.ph, %bb.t ]
  %.sroa.13.1 = phi i64 [ %i.ac, %bb.n ], [ %.sroa.13.0.ph, %bb.t ]
  %.sroa.0.2 = phi ptr [ %.sroa.0.0.ph, %bb.n ], [ %i.bm, %bb.t ]
  %.3 = add nsw i64 %i.ac, %i.ae
  br label %.outer

.thread:                                          ; preds = %bb.u, %bb.p, %bb.q, %bb.r, %bb.k
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !88
  %.val3.i = load i64, ptr %i.g, align 8, !tbaa !89
  %i.bs = ptrtoint ptr %.val.i to i64
  %i.bt = add i64 %.val3.i, %i.bs
  %i.bu = sub i64 %i.an, %i.bt
  %i.bv = load ptr, ptr %i.h, align 8, !tbaa !90
  call void %i.bv(ptr noundef nonnull %i.d, i64 noundef %i.bu, i64 noundef %i.ao) #12, !inline_history !77
  %i.bw = call fastcc i32 @is_dump_and_scan(ptr noundef %0, i64 noundef %i.ac, i64 noundef %i.ae) ; 2 uses
  %i.bx = add nsw i64 %i.ac, %i.ae
  %i.by = icmp eq i32 %i.bw, 0
  br i1 %i.by, label %bb.b, label %.thread193

.thread180:                                       ; preds = %bb.d, %bb.e, %bb.g, %bb.c, %bb.i, %bb.b, %bb.h, %bb.f
  %or.cond10.not = select i1 %.not315, i1 %i.i, i1 false
  br i1 %or.cond10.not, label %.thread193, label %bb.v

bb.v:                                             ; preds = %.thread180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.bz = load ptr, ptr %i.c, align 8, !tbaa !25  ; 21 uses
  %.not.i = icmp eq i64 %.sroa.13.0.ph, 0
  %.not234.i = icmp eq i64 %.sroa.20.0.ph, 0
  %or.cond230 = select i1 %.not.i, i1 true, i1 %.not234.i
  %or.cond231 = select i1 %or.cond230, i1 true, i1 %.not315
  br i1 %or.cond231, label %is_parse_hdr.exit.thread203, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 104 ; 5 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !27
  %i.cc = call ptr %i.cb(ptr noundef %i.bz, i64 noundef %.sroa.13.0.ph, i64 noundef range(i64 1, 0) %.sroa.20.0.ph, i32 noundef 1) #12, !inline_history !78 ; 12 uses
  %.not236.i = icmp eq ptr %i.cc, null
  br i1 %.not236.i, label %is_parse_hdr.exit.thread203, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.ce = load i32, ptr %i.cd, align 1, !tbaa !92 ; 3 uses
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cf
  %i.ch = load ptr, ptr %i.ca, align 8, !tbaa !27
  %i.ci = getelementptr i8, ptr %i.bz, i64 16     ; 13 uses
  %.val.i.i = load ptr, ptr %i.ci, align 8, !tbaa !88
  %i.cj = getelementptr i8, ptr %i.bz, i64 72     ; 13 uses
  %.val4.i.i = load i64, ptr %i.cj, align 8, !tbaa !89
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = ptrtoint ptr %.val.i.i to i64
  %i.cm = add i64 %.val4.i.i, %i.cl
  %i.cn = sub i64 %i.ck, %i.cm
  %i.co = call ptr %i.ch(ptr noundef nonnull %i.bz, i64 noundef %i.cn, i64 noundef 74, i32 noundef 1) #12, !inline_history !79 ; 5 uses
  %.not237.i = icmp eq ptr %i.co, null
  br i1 %.not237.i, label %is_parse_hdr.exit.thread203, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cp = load i32, ptr %i.cc, align 1, !tbaa !93
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.cr = load i32, ptr %i.cq, align 1, !tbaa !94
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ct = load i32, ptr %i.cs, align 1, !tbaa !95
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cv = load i32, ptr %i.cu, align 1, !tbaa !96
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.33, i32 noundef %i.cp, i32 noundef %i.cr, i32 noundef %i.ct, i32 noundef %i.ce, i32 noundef %i.cv) #12
  %i.cw = load i32, ptr %i.cc, align 1, !tbaa !93
  %.not238.i = icmp eq i32 %i.cw, 677598025
  br i1 %.not238.i, label %bb.z, label %is_parse_hdr.exit.thread203

bb.z:                                             ; preds = %bb.y
  %.val.i269.i = load ptr, ptr %i.ci, align 8, !tbaa !88
  %.val3.i.i = load i64, ptr %i.cj, align 8, !tbaa !89
  %i.cx = ptrtoint ptr %i.cc to i64
  %i.cy = ptrtoint ptr %.val.i269.i to i64
  %i.cz = add i64 %.val3.i.i, %i.cy
  %i.da = sub i64 %i.cx, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.bz, i64 128 ; 9 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !90
  call void %i.dc(ptr noundef nonnull %i.bz, i64 noundef %i.da, i64 noundef 20) #12, !inline_history !80
  %i.dd = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  %i.de = load i32, ptr %i.dd, align 1, !tbaa !99
  %i.df = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.dg = load i32, ptr %i.df, align 1, !tbaa !100 ; 3 uses
  %i.dh = add i32 %i.de, %i.ce                    ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.co, i64 44
  %i.dj = load i32, ptr %i.di, align 1, !tbaa !101
  %.val.i270.i = load ptr, ptr %i.ci, align 8, !tbaa !88
  %.val3.i271.i = load i64, ptr %i.cj, align 8, !tbaa !89
  %i.dk = ptrtoint ptr %i.co to i64
  %i.dl = ptrtoint ptr %.val.i270.i to i64
  %i.dm = add i64 %.val3.i271.i, %i.dl
  %i.dn = sub i64 %i.dk, %i.dm
  %i.do = load ptr, ptr %i.db, align 8, !tbaa !90
  call void %i.do(ptr noundef nonnull %i.bz, i64 noundef %i.dn, i64 noundef 74) #12, !inline_history !80
  %.not368.i = icmp eq i32 %i.dg, 0
  br i1 %.not368.i, label %is_parse_hdr.exit.thread, label %.lr.ph366.i

.lr.ph366.i:                                      ; preds = %bb.z
  %i.dp = add i32 %i.dj, %i.dh
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bz, i64 112 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 32
  %wide.trip.count.i = zext i32 %.sroa.25.0.ph to i64
  br label %.outer393

.outer393:                                        ; preds = %bb.bc, %.lr.ph366.i
  %.0199365.i.ph = phi i32 [ %.4.i, %bb.bc ], [ 22, %.lr.ph366.i ]
  %.0202364.i.ph = phi i32 [ %.3205.i, %bb.bc ], [ 0, %.lr.ph366.i ] ; 7 uses
end_hunk_0
