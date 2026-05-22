inline.NumInlined: 25
inline.NumDeleted: 9
begin_hunk_0_@evictionPoolPopulate:bb.a
  br i1 %i.bu, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bv = call i64 @kvobjGetExpire(ptr noundef %i.at) #13
  %i.bw = xor i64 %i.bv, -1
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 167, ptr noundef nonnull @.str.1) #13
  call void @abort() #15
  unreachable

bb.k:                                             ; preds = %LFUDecrAndReturn.exit, %bb.i, %bb.d
  %.075 = phi i64 [ %.0.i, %bb.d ], [ %i.bt, %LFUDecrAndReturn.exit ], [ %i.bw, %bb.i ] ; 17 uses
  %i.bx = load ptr, ptr %i.k, align 8, !tbaa !58  ; 3 uses
  %.not81 = icmp eq ptr %i.bx, null
  br i1 %.not81, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = load i64, ptr %2, align 8, !tbaa !59
  %i.bz = icmp ult i64 %i.by, %.075
  br i1 %i.bz, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.ca = load ptr, ptr %i.o, align 8, !tbaa !58
  %.not81.1 = icmp eq ptr %i.ca, null
  br i1 %.not81.1, label %.critedge.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = load i64, ptr %i.l, align 8, !tbaa !59
  %i.cc = icmp ult i64 %i.cb, %.075
  br i1 %i.cc, label %bb.o, label %.critedge.thread

bb.o:                                             ; preds = %bb.n
  %i.cd = load ptr, ptr %i.p, align 8, !tbaa !58
  %.not81.2 = icmp eq ptr %i.cd, null
  br i1 %.not81.2, label %.critedge.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = load i64, ptr %i.q, align 8, !tbaa !59
  %i.cf = icmp ult i64 %i.ce, %.075
  br i1 %i.cf, label %bb.q, label %.critedge.thread

bb.q:                                             ; preds = %bb.p
  %i.cg = load ptr, ptr %i.r, align 8, !tbaa !58
  %.not81.3 = icmp eq ptr %i.cg, null
  br i1 %.not81.3, label %.critedge.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ch = load i64, ptr %i.s, align 8, !tbaa !59
  %i.ci = icmp ult i64 %i.ch, %.075
  br i1 %i.ci, label %bb.s, label %.critedge.thread

bb.s:                                             ; preds = %bb.r
  %i.cj = load ptr, ptr %i.t, align 8, !tbaa !58
  %.not81.4 = icmp eq ptr %i.cj, null
  br i1 %.not81.4, label %.critedge.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ck = load i64, ptr %i.u, align 8, !tbaa !59
  %i.cl = icmp ult i64 %i.ck, %.075
  br i1 %i.cl, label %bb.u, label %.critedge.thread

bb.u:                                             ; preds = %bb.t
  %i.cm = load ptr, ptr %i.v, align 8, !tbaa !58
  %.not81.5 = icmp eq ptr %i.cm, null
  br i1 %.not81.5, label %.critedge.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cn = load i64, ptr %i.w, align 8, !tbaa !59
  %i.co = icmp ult i64 %i.cn, %.075
  br i1 %i.co, label %bb.w, label %.critedge.thread

bb.w:                                             ; preds = %bb.v
  %i.cp = load ptr, ptr %i.x, align 8, !tbaa !58
  %.not81.6 = icmp eq ptr %i.cp, null
  br i1 %.not81.6, label %.critedge.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cq = load i64, ptr %i.y, align 8, !tbaa !59
  %i.cr = icmp ult i64 %i.cq, %.075
  br i1 %i.cr, label %bb.y, label %.critedge.thread

bb.y:                                             ; preds = %bb.x
  %i.cs = load ptr, ptr %i.z, align 8, !tbaa !58
  %.not81.7 = icmp eq ptr %i.cs, null
  br i1 %.not81.7, label %.critedge.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ct = load i64, ptr %i.aa, align 8, !tbaa !59
  %i.cu = icmp ult i64 %i.ct, %.075
  br i1 %i.cu, label %bb.aa, label %.critedge.thread

bb.aa:                                            ; preds = %bb.z
  %i.cv = load ptr, ptr %i.ab, align 8, !tbaa !58
  %.not81.8 = icmp eq ptr %i.cv, null
  br i1 %.not81.8, label %.critedge.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cw = load i64, ptr %i.ac, align 8, !tbaa !59
  %i.cx = icmp ult i64 %i.cw, %.075
  br i1 %i.cx, label %bb.ac, label %.critedge.thread

bb.ac:                                            ; preds = %bb.ab
  %i.cy = load ptr, ptr %i.ad, align 8, !tbaa !58
  %.not81.9 = icmp eq ptr %i.cy, null
  br i1 %.not81.9, label %.critedge.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cz = load i64, ptr %i.ae, align 8, !tbaa !59
  %i.da = icmp ult i64 %i.cz, %.075
  br i1 %i.da, label %bb.ae, label %.critedge.thread

bb.ae:                                            ; preds = %bb.ad
  %i.db = load ptr, ptr %i.af, align 8, !tbaa !58
  %.not81.10 = icmp eq ptr %i.db, null
  br i1 %.not81.10, label %.critedge.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dc = load i64, ptr %i.ag, align 8, !tbaa !59
  %i.dd = icmp ult i64 %i.dc, %.075
  br i1 %i.dd, label %bb.ag, label %.critedge.thread

bb.ag:                                            ; preds = %bb.af
  %i.de = load ptr, ptr %i.ah, align 8, !tbaa !58
  %.not81.11 = icmp eq ptr %i.de, null
  br i1 %.not81.11, label %.critedge.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.df = load i64, ptr %i.ai, align 8, !tbaa !59
  %i.dg = icmp ult i64 %i.df, %.075
  br i1 %i.dg, label %bb.ai, label %.critedge.thread

bb.ai:                                            ; preds = %bb.ah
  %i.dh = load ptr, ptr %i.aj, align 8, !tbaa !58
  %.not81.12 = icmp eq ptr %i.dh, null
  br i1 %.not81.12, label %.critedge.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.di = load i64, ptr %i.ak, align 8, !tbaa !59
  %i.dj = icmp ult i64 %i.di, %.075
  br i1 %i.dj, label %bb.ak, label %.critedge.thread

bb.ak:                                            ; preds = %bb.aj
  %i.dk = load ptr, ptr %i.al, align 8, !tbaa !58
  %.not81.13 = icmp eq ptr %i.dk, null
  br i1 %.not81.13, label %.critedge.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dl = load i64, ptr %i.am, align 8, !tbaa !59
  %i.dm = icmp ult i64 %i.dl, %.075
  br i1 %i.dm, label %bb.am, label %.critedge.thread

bb.am:                                            ; preds = %bb.al
  %i.dn = load ptr, ptr %i.an, align 8, !tbaa !58
  %.not81.14 = icmp eq ptr %i.dn, null
  br i1 %.not81.14, label %.critedge.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.do = load i64, ptr %i.ao, align 8, !tbaa !59
  %i.dp = icmp ult i64 %i.do, %.075
  br i1 %i.dp, label %bb.ao, label %.critedge.thread

bb.ao:                                            ; preds = %bb.an
  %i.dq = load ptr, ptr %i.ap, align 8, !tbaa !58
  %.not81.15 = icmp eq ptr %i.dq, null
  br i1 %.not81.15, label %.critedge.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dr = load i64, ptr %i.aq, align 8, !tbaa !59
  %i.ds = icmp ult i64 %i.dr, %.075
  br i1 %i.ds, label %.loopexit.thread, label %.critedge.thread

.critedge:                                        ; preds = %bb.l, %bb.k
  %i.dt = load ptr, ptr %i.i, align 8, !tbaa !58
  %.not82 = icmp eq ptr %i.dt, null
  br i1 %.not82, label %.critedge.thread, label %bb.bg

.critedge.thread:                                 ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %.critedge
  %.07493.lcssa104 = phi i32 [ 0, %.critedge ], [ 15, %bb.ap ], [ 15, %bb.ao ], [ 14, %bb.an ], [ 14, %bb.am ], [ 13, %bb.al ], [ 13, %bb.ak ], [ 12, %bb.aj ], [ 12, %bb.ai ], [ 11, %bb.ah ], [ 11, %bb.ag ], [ 10, %bb.af ], [ 10, %bb.ae ], [ 9, %bb.ad ], [ 9, %bb.ac ], [ 8, %bb.ab ], [ 8, %bb.aa ], [ 7, %bb.z ], [ 7, %bb.y ], [ 6, %bb.x ], [ 6, %bb.w ], [ 5, %bb.v ], [ 5, %bb.u ], [ 4, %bb.t ], [ 4, %bb.s ], [ 3, %bb.r ], [ 3, %bb.q ], [ 2, %bb.p ], [ 2, %bb.o ], [ 1, %bb.n ], [ 1, %bb.m ] ; 6 uses
  %i.du = zext nneg i32 %.07493.lcssa104 to i64
  %i.dv = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !58
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %bb.at, label %.loopexit

.loopexit:                                        ; preds = %.critedge.thread
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !58
  %i.dz = icmp eq ptr %.pre, null
  br i1 %i.dz, label %bb.aq, label %.loopexit.thread

bb.aq:                                            ; preds = %.loopexit
  %i.ea = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.eb = zext nneg i32 %.07493.lcssa104 to i64   ; 2 uses
  %i.ec = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.eb ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.ee = shl nuw nsw i32 %.07493.lcssa104, 5
  %i.ef = xor i32 %i.ee, 480
  %i.eg = zext nneg i32 %i.ef to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ed, ptr align 8 %i.ec, i64 %i.eg, i1 false)
  br label %.sink.split

.loopexit.thread:                                 ; preds = %bb.ap, %.loopexit
  %.07492106 = phi i32 [ %.07493.lcssa104, %.loopexit ], [ 16, %bb.ap ]
  %i.eh = add nsw i32 %.07492106, -1              ; 2 uses
  %i.ei = load ptr, ptr %i.j, align 8, !tbaa !47  ; 2 uses
  %.not83 = icmp eq ptr %i.bx, %i.ei
  br i1 %.not83, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.loopexit.thread
  call void @sdsfree(ptr noundef %i.bx) #13
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.loopexit.thread
  %i.ej = sext i32 %i.eh to i64                   ; 2 uses
  %i.ek = shl nsw i64 %i.ej, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %i.l, i64 %i.ek, i1 false)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.aq, %bb.as
  %i.el = phi i64 [ %i.ej, %bb.as ], [ %i.eb, %bb.aq ]
  %.sink = phi ptr [ %i.ei, %bb.as ], [ %i.ea, %bb.aq ]
  %.1.ph = phi i32 [ %i.eh, %bb.as ], [ %.07493.lcssa104, %bb.aq ]
  %i.em = getelementptr inbounds [32 x i8], ptr %2, i64 %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store ptr %.sink, ptr %i.en, align 8, !tbaa !47
  br label %bb.at

bb.at:                                            ; preds = %.sink.split, %.critedge.thread
  %.1 = phi i32 [ %.07493.lcssa104, %.critedge.thread ], [ %.1.ph, %.sink.split ] ; 2 uses
  %i.eo = getelementptr i8, ptr %i.au, i64 -1
  %.val.i = load i8, ptr %i.eo, align 1, !tbaa !60 ; 2 uses
  %i.ep = and i8 %.val.i, 7
  switch i8 %i.ep, label %sdslen.exit.thread [
    i8 0, label %bb.au
    i8 1, label %bb.av
    i8 2, label %bb.aw
    i8 3, label %bb.ax
    i8 4, label %bb.ay
  ]

bb.au:                                            ; preds = %bb.at
  %i.eq = lshr i8 %.val.i, 3
  %i.er = zext nneg i8 %i.eq to i64
  br label %sdslen.exit

bb.av:                                            ; preds = %bb.at
  %i.es = getelementptr inbounds i8, ptr %i.au, i64 -3
  %i.et = load i8, ptr %i.es, align 1, !tbaa !60
  %i.eu = zext i8 %i.et to i64
  br label %sdslen.exit

bb.aw:                                            ; preds = %bb.at
  %i.ev = getelementptr inbounds i8, ptr %i.au, i64 -5
  %i.ew = load i16, ptr %i.ev, align 1, !tbaa !61
  %i.ex = zext i16 %i.ew to i64
  br label %sdslen.exit

bb.ax:                                            ; preds = %bb.at
  %i.ey = getelementptr inbounds i8, ptr %i.au, i64 -9
  %i.ez = load i32, ptr %i.ey, align 1, !tbaa !9
  %i.fa = zext i32 %i.ez to i64
  br label %sdslen.exit

bb.ay:                                            ; preds = %bb.at
  %i.fb = getelementptr inbounds i8, ptr %i.au, i64 -17
  %i.fc = load i64, ptr %i.fb, align 1, !tbaa !63
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay
  %.0.i86 = phi i64 [ %i.fc, %bb.ay ], [ %i.er, %bb.au ], [ %i.eu, %bb.av ], [ %i.ex, %bb.aw ], [ %i.fa, %bb.ax ] ; 2 uses
  %i.fd = trunc i64 %.0.i86 to i32
  %i.fe = icmp sgt i32 %i.fd, 255
  br i1 %i.fe, label %bb.az, label %sdslen.exit.thread

bb.az:                                            ; preds = %sdslen.exit
  %i.ff = call ptr @sdsdup(ptr noundef nonnull %i.au) #13
  %i.fg = sext i32 %.1 to i64
  br label %bb.bf

sdslen.exit.thread:                               ; preds = %bb.at, %sdslen.exit
  %.0.i8689 = phi i64 [ %.0.i86, %sdslen.exit ], [ 0, %bb.at ] ; 5 uses
  %i.fh = sext i32 %.1 to i64                     ; 2 uses
  %i.fi = getelementptr inbounds [32 x i8], ptr %2, i64 %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 3 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !47
  %i.fl = shl i64 %.0.i8689, 32                   ; 2 uses
  %sext = add i64 %i.fl, 4294967296
  %i.fm = ashr exact i64 %sext, 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fk, ptr nonnull align 1 %i.au, i64 %i.fm, i1 false)
  %i.fn = load ptr, ptr %i.fj, align 8, !tbaa !47 ; 5 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 -1     ; 2 uses
  %.val.i87 = load i8, ptr %i.fo, align 1, !tbaa !60
  %i.fp = and i8 %.val.i87, 7
  switch i8 %i.fp, label %sdssetlen.exit [
    i8 0, label %bb.ba
    i8 1, label %bb.bb
    i8 2, label %bb.bc
    i8 3, label %bb.bd
    i8 4, label %bb.be
  ]

bb.ba:                                            ; preds = %sdslen.exit.thread
  %.tr.i = trunc i64 %.0.i8689 to i8
  %i.fq = shl i8 %.tr.i, 3
  store i8 %i.fq, ptr %i.fo, align 1, !tbaa !60
  br label %sdssetlen.exit

bb.bb:                                            ; preds = %sdslen.exit.thread
  %i.fr = trunc i64 %.0.i8689 to i8
  %i.fs = getelementptr inbounds i8, ptr %i.fn, i64 -3
  store i8 %i.fr, ptr %i.fs, align 1, !tbaa !60
  br label %sdssetlen.exit

bb.bc:                                            ; preds = %sdslen.exit.thread
  %i.ft = trunc i64 %.0.i8689 to i16
  %i.fu = getelementptr inbounds i8, ptr %i.fn, i64 -5
  store i16 %i.ft, ptr %i.fu, align 1, !tbaa !61
  br label %sdssetlen.exit

bb.bd:                                            ; preds = %sdslen.exit.thread
  %i.fv = trunc i64 %.0.i8689 to i32
  %i.fw = getelementptr inbounds i8, ptr %i.fn, i64 -9
  store i32 %i.fv, ptr %i.fw, align 1, !tbaa !9
  br label %sdssetlen.exit

bb.be:                                            ; preds = %sdslen.exit.thread
  %i.fx = ashr exact i64 %i.fl, 32
  %i.fy = getelementptr inbounds i8, ptr %i.fn, i64 -17
  store i64 %i.fx, ptr %i.fy, align 1, !tbaa !63
  br label %sdssetlen.exit

sdssetlen.exit:                                   ; preds = %sdslen.exit.thread, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be
  %i.fz = load ptr, ptr %i.fj, align 8, !tbaa !47
  br label %bb.bf

bb.bf:                                            ; preds = %sdssetlen.exit, %bb.az
  %.sink109 = phi ptr [ %i.fz, %sdssetlen.exit ], [ %i.ff, %bb.az ]
  %.pre-phi = phi i64 [ %i.fh, %sdssetlen.exit ], [ %i.fg, %bb.az ] ; 2 uses
  %i.ga = getelementptr inbounds [32 x i8], ptr %2, i64 %.pre-phi
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store ptr %.sink109, ptr %i.gb, align 8, !tbaa !58
  %i.gc = getelementptr inbounds [32 x i8], ptr %2, i64 %.pre-phi ; 3 uses
  store i64 %.075, ptr %i.gc, align 8, !tbaa !59
  %i.gd = load i32, ptr %i.n, align 8, !tbaa !64
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  store i32 %i.gd, ptr %i.ge, align 8, !tbaa !49
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 28
  store i32 %i.d, ptr %i.gf, align 4, !tbaa !67
  br label %bb.bg

bb.bg:                                            ; preds = %.critedge, %bb.bf
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit90, label %bb.c, !llvm.loop !68

.loopexit90:                                      ; preds = %bb.bg, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.g, %bb.b ], [ %i.g, %bb.bg ]
  ret i32 %.0
}

declare i32 @kvstoreGetFairRandomDictIndex(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @randomEvictionShouldSkipDictIndex(i32 noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @clusterCanAccessKeysInSlot(i32 noundef %0) #13
  %.not = icmp eq i32 %i.a, 0
  %i.b = zext i1 %.not to i32
  ret i32 %i.b
}

declare i32 @kvstoreDictGetSomeKeys(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @kvobjGetKey(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 0, 256) i64 @LFUDecrAndReturn(ptr noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = lshr i64 %i.a, 40
  %i.c = and i64 %i.b, 255                        ; 2 uses
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7784), align 8, !tbaa !56
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %i.a, 48                        ; 2 uses
  %i.f = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8040) seq_cst, align 8, !tbaa !57
  %i.g = sdiv i64 %i.f, 60
  %i.h = and i64 %i.g, 65535                      ; 2 uses
  %.not.i = icmp samesign ult i64 %i.h, %i.e
  %i.i = sub nsw i64 %i.h, %i.e                   ; 2 uses
  %i.j = add nsw i64 %i.i, 65535
  %.0.i = select i1 %.not.i, i64 %i.j, i64 %i.i   ; 2 uses
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7784), align 8, !tbaa !56
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = udiv i64 %.0.i, %i.l
  %.not9 = icmp ult i64 %.0.i, %i.l
  %i.n = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 %i.m)
  %cond.fr = freeze i1 %.not9
  br i1 %cond.fr, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.a, %bb.b
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.o = phi i64 [ %i.c, %.thread ], [ %i.n, %bb.b ]
  ret i64 %i.o
}

declare i64 @kvobjGetExpire(ptr noundef) local_unnamed_addr #1

declare void @_serverPanic(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

declare void @sdsfree(ptr noundef) local_unnamed_addr #1

end_hunk_0
