inline.NumInlined: 14
inline.NumDeleted: 4
begin_hunk_0_@scan_files:bb.a
bb.o:                                             ; preds = %bb.n
  %i.an = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.187, ptr noundef nonnull %i.ae) #22 ; 0 uses
  call void @free(ptr noundef %i.ae) #22
  %i.ao = call i32 @fclose(ptr noundef nonnull %i.ag) ; 0 uses
  br label %scanstdin.exit

bb.p:                                             ; preds = %.preheader.i
  %i.ap = call i32 @fclose(ptr noundef nonnull %i.ag) ; 0 uses
  %i.aq = call ptr @optget(ptr noundef %1, ptr noundef nonnull @.str.188) #22 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !17
  %.not60.i = icmp eq i32 %i.as, 0
  br i1 %.not60.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !18
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.044.i = phi ptr [ %i.au, %bb.q ], [ null, %bb.p ] ; 3 uses
  %i.av = call ptr @optget(ptr noundef %1, ptr noundef nonnull @.str.189) #22 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !17
  %.not61.i = icmp eq i32 %i.ax, 0
  br i1 %.not61.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.046.i = phi ptr [ %i.az, %bb.s ], [ null, %bb.r ]
  %i.ba = call ptr @optget(ptr noundef %1, ptr noundef nonnull @.str.190) #22
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !17
  %.not62.i = icmp eq i32 %i.bc, 0
  %spec.select.i = select i1 %.not62.i, ptr null, ptr %i.d
  %i.bd = call ptr @optget(ptr noundef %1, ptr noundef nonnull @.str.191) #22 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !17
  %.not63.i = icmp eq i32 %i.bf, 0
  br i1 %.not63.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !18
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.043.i = phi ptr [ %i.bh, %bb.u ], [ null, %bb.t ]
  %i.bi = call ptr @optget(ptr noundef %1, ptr noundef nonnull @.str.192) #22
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !17
  %.not64.i = icmp eq i32 %i.bk, 0
  %spec.select73.i = select i1 %.not64.i, ptr null, ptr %i.e
  %i.bl = call i32 (i32, ptr, ...) @logg(i32 noundef 2, ptr noundef nonnull @.str.193, ptr noundef nonnull %i.ae) #22 ; 0 uses
  %i.bm = load i32, ptr getelementptr inbounds nuw (i8, ptr @info, i64 8), align 8, !tbaa !60
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr getelementptr inbounds nuw (i8, ptr @info, i64 8), align 8, !tbaa !60
  %i.bo = load i64, ptr getelementptr inbounds nuw (i8, ptr @info, i64 32), align 8, !tbaa !61
  %i.bp = add i64 %i.bo, %.048.i
  store i64 %i.bp, ptr getelementptr inbounds nuw (i8, ptr @info, i64 32), align 8, !tbaa !61
  store ptr @.str.194, ptr %i.r, align 8, !tbaa !40
  store ptr null, ptr %5, align 8, !tbaa !51
  %i.bq = call i32 @cl_scanfile_ex(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @info, i64 24), ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %5, ptr noundef %.046.i, ptr noundef %spec.select.i, ptr noundef %.044.i, ptr noundef %.043.i, ptr noundef %spec.select73.i) #22 ; 3 uses
  %i.br = load i32, ptr %i.a, align 4, !tbaa !59
  switch i32 %i.br, label %bb.ah [
    i32 0, label %bb.w
    i32 1, label %bb.ad
    i32 2, label %bb.af
    i32 3, label %bb.af
  ]

bb.w:                                             ; preds = %bb.v
  %i.bs = icmp eq i32 %i.bq, 0
  %i.bt = load i16, ptr @printinfected, align 2, !tbaa !62
  %.not68.i = icmp eq i16 %i.bt, 0                ; 2 uses
  br i1 %i.bs, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  br i1 %.not68.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void (i32, ptr, ...) @mprintf(i32 noundef 0, ptr noundef nonnull @.str.195) #22
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bu = load i32, ptr getelementptr inbounds nuw (i8, ptr @info, i64 8), align 8, !tbaa !60
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr getelementptr inbounds nuw (i8, ptr @info, i64 8), align 8, !tbaa !60
  br label %bb.ah

bb.aa:                                            ; preds = %bb.w
  br i1 %.not68.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bw = call ptr @cl_strerror(i32 noundef %i.bq) #22
  %i.bx = call i32 (i32, ptr, ...) @logg(i32 noundef 0, ptr noundef nonnull @.str.196, ptr noundef %i.bw) #22 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.by = load i32, ptr getelementptr inbounds nuw (i8, ptr @info, i64 16), align 8, !tbaa !64
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr getelementptr inbounds nuw (i8, ptr @info, i64 16), align 8, !tbaa !64
  br label %bb.ah

bb.ad:                                            ; preds = %bb.v
  %i.ca = load i16, ptr @printinfected, align 2, !tbaa !62
  %.not66.i = icmp eq i16 %i.ca, 0
  br i1 %.not66.i, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  call void (i32, ptr, ...) @mprintf(i32 noundef 0, ptr noundef nonnull @.str.195) #22
  br label %bb.ah

bb.af:                                            ; preds = %bb.v, %bb.v
  %i.cb = load i32, ptr getelementptr inbounds nuw (i8, ptr @info, i64 12), align 4, !tbaa !38
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr getelementptr inbounds nuw (i8, ptr @info, i64 12), align 4, !tbaa !38
  %i.cd = load i16, ptr @bell, align 2, !tbaa !62
  %.not65.i = icmp eq i16 %i.cd, 0
  br i1 %.not65.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ce = load ptr, ptr @stderr, align 8, !tbaa !19
  %fputc.i = call i32 @fputc(i32 7, ptr %i.ce)    ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.z, %bb.v
  %i.cf = load ptr, ptr %i.d, align 8, !tbaa !57  ; 2 uses
  %.not69.i = icmp eq ptr %i.cf, null
  br i1 %.not69.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cg = icmp eq ptr %.044.i, null
  %spec.store.select.i = select i1 %i.cg, ptr @.str.198, ptr %.044.i
  %i.ch = call i32 (i32, ptr, ...) @logg(i32 noundef 0, ptr noundef nonnull @.str.199, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.cf, ptr noundef nonnull %spec.store.select.i) #22 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ci = load ptr, ptr %i.e, align 8, !tbaa !57  ; 2 uses
  %.not70.i = icmp eq ptr %i.ci, null
  br i1 %.not70.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cj = call i32 (i32, ptr, ...) @logg(i32 noundef 0, ptr noundef nonnull @.str.200, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ci) #22 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ck = load ptr, ptr %i.d, align 8, !tbaa !57  ; 2 uses
  %.not71.i = icmp eq ptr %i.ck, null
  br i1 %.not71.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @free(ptr noundef nonnull %i.ck) #22
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.cl = load ptr, ptr %i.e, align 8, !tbaa !57  ; 2 uses
  %.not72.i = icmp eq ptr %i.cl, null
  br i1 %.not72.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @free(ptr noundef nonnull %i.cl) #22
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.cm = call i32 @unlink(ptr noundef nonnull %i.ae) #22 ; 0 uses
  call void @free(ptr noundef nonnull %i.ae) #22
  br label %scanstdin.exit

scanstdin.exit:                                   ; preds = %bb.i, %bb.k, %bb.m, %bb.o, %bb.ap
  %.049.i = phi i32 [ 2, %bb.i ], [ 2, %bb.o ], [ %i.bq, %bb.ap ], [ 2, %bb.m ], [ 2, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  store i32 %.049.i, ptr %i.f, align 4, !tbaa !59
  br label %bb.bg

.tail.thread:                                     ; preds = %sub_0, %.tail
  %i.cn = call i32 @lstat(ptr noundef nonnull %i.t, ptr noundef nonnull %6) #22
  %i.co = icmp eq i32 %i.cn, -1
  br i1 %i.co, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.tail.thread
  call void @perror(ptr noundef nonnull %i.t) #26
  %i.cp = call i32 (i32, ptr, ...) @logg(i32 noundef 4, ptr noundef nonnull @.str.180, ptr noundef nonnull %i.t) #22 ; 0 uses
  store i32 2, ptr %i.f, align 4, !tbaa !59
  br label %bb.bg

bb.ar:                                            ; preds = %.tail.thread
  %i.cq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #23
  %i.cr = trunc i64 %i.cq to i32
  %.058 = add i32 %i.cr, -1                       ; 2 uses
  %i.cs = icmp sgt i32 %.058, 0
  br i1 %i.cs, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ar, %bb.as
  %.059 = phi i32 [ %.0, %bb.as ], [ %.058, %bb.ar ] ; 3 uses
  %7 = zext nneg i32 %.059 to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.t, i64 %7 ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !21
  %i.cv = icmp eq i8 %i.cu, 47
  br i1 %i.cv, label %bb.as, label %._crit_edge

bb.as:                                            ; preds = %.lr.ph
  store i8 0, ptr %i.ct, align 1, !tbaa !21
  %.0 = add nsw i32 %.059, -1
  %i.cw = icmp sgt i32 %.059, 1
  br i1 %i.cw, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.as, %.lr.ph, %bb.ar
  %i.cx = load i32, ptr %i.n, align 8, !tbaa !26
  %i.cy = trunc i32 %i.cx to i16
  %trunc = and i16 %i.cy, -4096
  switch i16 %trunc, label %bb.bf [
    i16 -24576, label %bb.at
    i16 -32768, label %bb.bd
    i16 16384, label %bb.be
  ]

bb.at:                                            ; preds = %._crit_edge
  br i1 %or.cond, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.cz = load i16, ptr @printinfected, align 2, !tbaa !62
  %.not56 = icmp eq i16 %i.cz, 0
  br i1 %.not56, label %bb.av, label %bb.bg

bb.av:                                            ; preds = %bb.au
  %i.da = call i32 (i32, ptr, ...) @logg(i32 noundef 0, ptr noundef nonnull @.str.181, ptr noundef nonnull %i.t) #22 ; 0 uses
  br label %bb.bg

bb.aw:                                            ; preds = %bb.at
  %i.db = call i32 @stat(ptr noundef nonnull %i.t, ptr noundef nonnull %6) #22
  %.not54 = icmp eq i32 %i.db, -1
  br i1 %.not54, label %bb.bg, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dc = load i32, ptr %i.n, align 8, !tbaa !26
  %i.dd = and i32 %i.dc, 61440                    ; 2 uses
  %i.de = icmp eq i32 %i.dd, 32768
  %or.cond3 = and i1 %i.p, %i.de
  br i1 %or.cond3, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call fastcc void @scanfile(ptr noundef %i.t, ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %bb.bg

bb.az:                                            ; preds = %bb.ax
  %i.df = icmp eq i32 %i.dd, 16384
  %or.cond5 = and i1 %i.q, %i.df
  br i1 %or.cond5, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.dg = load i64, ptr %6, align 8, !tbaa !36
  call fastcc void @scandirs(ptr noundef %i.t, ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 1, i64 noundef %i.dg)
  br label %bb.bg

bb.bb:                                            ; preds = %bb.az
  %i.dh = load i16, ptr @printinfected, align 2, !tbaa !62
  %.not55 = icmp eq i16 %i.dh, 0
  br i1 %.not55, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.di = call i32 (i32, ptr, ...) @logg(i32 noundef 0, ptr noundef nonnull @.str.181, ptr noundef nonnull %i.t) #22 ; 0 uses
  br label %bb.bg

bb.bd:                                            ; preds = %._crit_edge
  call fastcc void @scanfile(ptr noundef %i.t, ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %bb.bg

bb.be:                                            ; preds = %._crit_edge
  %i.dj = load i64, ptr %6, align 8, !tbaa !36
  call fastcc void @scandirs(ptr noundef %i.t, ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 1, i64 noundef %i.dj)
  br label %bb.bg

bb.bf:                                            ; preds = %._crit_edge
  %i.dk = call i32 (i32, ptr, ...) @logg(i32 noundef 4, ptr noundef nonnull @.str.182, ptr noundef nonnull %i.t) #22 ; 0 uses
  store i32 2, ptr %i.f, align 4, !tbaa !59
  br label %bb.bg

bb.bg:                                            ; preds = %bb.aw, %bb.ba, %bb.bc, %bb.bb, %bb.ay, %bb.au, %bb.av, %bb.be, %bb.bf, %bb.bd, %bb.aq, %scanstdin.exit
  call void @free(ptr noundef %i.t) #22
  %i.dl = call ptr @filelist(ptr noundef %1, ptr noundef nonnull %i.f) #22 ; 2 uses
  %.not51 = icmp eq ptr %i.dl, null
  br i1 %.not51, label %.critedge, label %bb.e

.critedge:                                        ; preds = %bb.e, %bb.bg, %bb.d
  %i.dm = load i32, ptr %i.f, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  ret i32 %i.dm
}

; Function Attrs: nounwind
declare ptr @getcwd(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @scandirs(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %4, i64 noundef %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.stat, align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.a = tail call ptr @optget(ptr noundef %2, ptr noundef nonnull @.str.217) #22 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !17
  %i.d = icmp ne i32 %i.c, 0
  %i.e = icmp ne ptr %i.a, null
  %or.cond10 = and i1 %i.e, %i.d
  br i1 %or.cond10, label %.preheader113, label %.loopexit114

.preheader113:                                    ; preds = %bb.a, %bb.d
  %.0 = phi ptr [ %i.m, %bb.d ], [ %i.a, %bb.a ]  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.h = tail call i32 @match_regex(ptr noundef nonnull %0, ptr noundef %i.g) #22
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.preheader113
  %i.j = load i16, ptr @printinfected, align 2, !tbaa !62
  %.not102 = icmp eq i16 %i.j, 0
  br i1 %.not102, label %bb.c, label %bb.ah

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 (i32, ptr, ...) @logg(i32 noundef 0, ptr noundef nonnull @.str.203, ptr noundef nonnull %0) #22 ; 0 uses
  br label %bb.ah

bb.d:                                             ; preds = %.preheader113
  %i.l = getelementptr inbounds nuw i8, ptr %.0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22   ; 2 uses
  %.old9.not = icmp eq ptr %i.m, null
  br i1 %.old9.not, label %.loopexit114, label %.preheader113

.loopexit114:                                     ; preds = %bb.d, %bb.a
  %i.n = tail call ptr @optget(ptr noundef %2, ptr noundef nonnull @.str.218) #22 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !17
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %.loopexit112, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit114, %bb.e
  %.1116 = phi ptr [ %i.v, %bb.e ], [ %i.n, %.loopexit114 ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.1116, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !18
  %i.s = tail call i32 @match_regex(ptr noundef nonnull %0, ptr noundef %i.r) #22
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %.loopexit112, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %.1116, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !22   ; 2 uses
  %.not84 = icmp eq ptr %i.v, null
  br i1 %.not84, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %bb.e
  %i.w = load i16, ptr @printinfected, align 2, !tbaa !62
  %.not86 = icmp eq i16 %i.w, 0
  br i1 %.not86, label %bb.f, label %bb.ah

bb.f:                                             ; preds = %.critedge
  %i.x = tail call i32 (i32, ptr, ...) @logg(i32 noundef 0, ptr noundef nonnull @.str.203, ptr noundef nonnull %0) #22 ; 0 uses
  br label %bb.ah

.loopexit112:                                     ; preds = %.lr.ph, %.loopexit114
  %i.y = tail call ptr @optget(ptr noundef %2, ptr noundef nonnull @.str.219) #22
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !9
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = icmp ugt i32 %4, %i.ab
  br i1 %i.ac, label %bb.ah, label %bb.g

bb.g:                                             ; preds = %.loopexit112
  %i.ad = tail call ptr @optget(ptr noundef %2, ptr noundef nonnull @.str) #22
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !9
  %i.ag = trunc i64 %i.af to i32                  ; 2 uses
  %i.ah = tail call ptr @optget(ptr noundef %2, ptr noundef nonnull @.str.2) #22
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !9
  %i.ak = trunc i64 %i.aj to i32                  ; 2 uses
  %i.al = tail call noalias ptr @opendir(ptr noundef nonnull %0) ; 4 uses
  %.not87 = icmp eq ptr %i.al, null
  br i1 %.not87, label %bb.ae, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = load i32, ptr getelementptr inbounds nuw (i8, ptr @info, i64 4), align 4, !tbaa !65
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr getelementptr inbounds nuw (i8, ptr @info, i64 4), align 4, !tbaa !65
  %i.ao = add i32 %4, 1                           ; 2 uses
  %i.ap = tail call ptr @readdir(ptr noundef nonnull %i.al) #22 ; 2 uses
  %.not89117 = icmp eq ptr %i.ap, null
  br i1 %.not89117, label %.loopexit, label %.lr.ph118

.lr.ph118:                                        ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.as = icmp ne i32 %i.ag, 2
  %i.at = icmp ne i32 %i.ak, 2
  %or.cond = select i1 %i.as, i1 %i.at, i1 false
  %i.au = icmp eq i32 %i.ak, 2
  %i.av = icmp eq i32 %i.ag, 2
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph118, %.backedge
  %i.aw = phi ptr [ %i.ap, %.lr.ph118 ], [ %i.cb, %.backedge ] ; 5 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !66
  %.not90 = icmp eq i64 %i.ax, 0
  br i1 %.not90, label %.backedge, label %sub_0
end_hunk_0
