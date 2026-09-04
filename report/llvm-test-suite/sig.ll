Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sig?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@_Z12printsignameP9ClassfileP8_IO_FILERPcS3_Pv:bb.a
.preheader194:                                    ; preds = %bb.a, %.preheader194
  %i.n = phi ptr [ %i.o, %.preheader194 ], [ %i.c, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 3 uses
  store ptr %i.o, ptr %2, align 8, !tbaa !18
  %i.p = load i8, ptr %i.n, align 1, !tbaa !8
  %.not154 = icmp eq i8 %i.p, 59
  br i1 %.not154, label %bb.h, label %.preheader194, !llvm.loop !12

bb.h:                                             ; preds = %.preheader194
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r
  %i.t = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.s) #13 ; 7 uses
  %i.u = load ptr, ptr %2, align 8, !tbaa !18
  %i.v = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.w = xor i64 %i.r, -1                         ; 2 uses
  %i.x = add i64 %i.v, %i.w
  %i.y = tail call ptr @strncpy(ptr noundef nonnull %i.t, ptr noundef nonnull %i.c, i64 noundef %i.x) #12 ; 0 uses
  %i.z = getelementptr i8, ptr %i.t, i64 %i.w
  %i.aa = getelementptr i8, ptr %i.z, i64 %i.v
  store i8 0, ptr %i.aa, align 1, !tbaa !8
  %i.ab = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(11) @.str.16, i64 noundef 10) #14
  %.not155 = icmp eq i32 %i.ab, 0
  br i1 %.not155, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.ac = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.t, i32 noundef 47) #14 ; 2 uses
  %.not156176 = icmp eq ptr %i.ac, null
  br i1 %.not156176, label %.loopexit, label %.lr.ph177

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 10
  br label %.loopexit

.lr.ph177:                                        ; preds = %.preheader, %.lr.ph177
  %i.ae = phi ptr [ %i.af, %.lr.ph177 ], [ %i.ac, %.preheader ] ; 2 uses
  store i8 46, ptr %i.ae, align 1, !tbaa !8
  %i.af = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ae, i32 noundef 47) #14 ; 2 uses
  %.not156 = icmp eq ptr %i.af, null
  br i1 %.not156, label %.loopexit, label %.lr.ph177, !llvm.loop !13

.loopexit:                                        ; preds = %.lr.ph177, %.preheader, %bb.i
  %i.ag = phi ptr [ %i.ad, %bb.i ], [ %i.t, %.preheader ], [ %i.t, %.lr.ph177 ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !30 ; 3 uses
  %.not157 = icmp eq ptr %i.ai, null
  br i1 %.not157, label %.thread, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.aj = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ai) #14
  %sext = shl i64 %i.aj, 32
  %i.ak = ashr exact i64 %sext, 32                ; 2 uses
  %i.al = tail call i32 @strncmp(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ai, i64 noundef %i.ak) #14
  %.not159 = icmp eq i32 %i.al, 0
  br i1 %.not159, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr i8, ptr %i.ag, i64 %i.ak
  %i.an = getelementptr i8, ptr %i.am, i64 1
  br label %.thread

.thread:                                          ; preds = %.loopexit, %bb.k, %bb.j
  %i.ao = phi ptr [ %i.ag, %.loopexit ], [ %i.an, %bb.k ], [ %i.ag, %bb.j ]
  %i.ap = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.17, ptr noundef %i.ao, ptr noundef %3) #12 ; 0 uses
  br label %bb.am

bb.l:                                             ; preds = %bb.a
  %i.aq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef %3) #12 ; 0 uses
  br label %bb.am

bb.m:                                             ; preds = %bb.a
  %i.ar = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef %3) #12 ; 0 uses
  br label %bb.am

.lr.ph173:                                        ; preds = %.preheader160, %.lr.ph173
  %.0135172 = phi i32 [ %i.ay, %.lr.ph173 ], [ 0, %.preheader160 ]
  %i.as = phi ptr [ %i.au, %.lr.ph173 ], [ %i.c, %.preheader160 ] ; 2 uses
  %i.at = mul nsw i32 %.0135172, 10
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 3 uses
  store ptr %i.au, ptr %2, align 8, !tbaa !18
  %i.av = load i8, ptr %i.as, align 1, !tbaa !8
  %i.aw = sext i8 %i.av to i32
  %i.ax = add i32 %i.at, -48
  %i.ay = add i32 %i.ax, %i.aw                    ; 3 uses
  %i.az = load i8, ptr %i.au, align 1, !tbaa !8
  %i.ba = add i8 %i.az, -48
  %or.cond = icmp ult i8 %i.ba, 10
  br i1 %or.cond, label %.lr.ph173, label %.critedge, !llvm.loop !14

.critedge:                                        ; preds = %.lr.ph173
  %i.bb = tail call noundef i32 @_Z12printsignameP9ClassfileP8_IO_FILERPcS3_Pv(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4) ; 0 uses
  %.not153 = icmp eq i32 %i.ay, 0
  br i1 %.not153, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.critedge
  %i.bc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %i.ay) #12 ; 0 uses
  br label %bb.am

bb.o:                                             ; preds = %.critedge.thread, %.critedge
  %i.bd = tail call i64 @fwrite(ptr nonnull @.str.21, i64 2, i64 1, ptr %1) ; 0 uses
  br label %bb.am

bb.p:                                             ; preds = %bb.a
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.be = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.bf = tail call i64 @fwrite(ptr nonnull @.str.22, i64 32, i64 1, ptr %i.be) #10 ; 0 uses
  br label %bb.am

bb.r:                                             ; preds = %bb.p
  store ptr %i.c, ptr %i.a, align 8, !tbaa !18
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %i.bg = phi ptr [ %i.bh, %bb.s ], [ %i.c, %bb.r ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1 ; 3 uses
  store ptr %i.bh, ptr %2, align 8, !tbaa !18
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !8
  %.not143 = icmp eq i8 %i.bi, 41
  br i1 %.not143, label %bb.t, label %bb.s, !llvm.loop !15

bb.t:                                             ; preds = %bb.s
  %i.bj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(9) @.str.23) #14
  %.not144 = icmp eq i32 %i.bj, 0
  br i1 %.not144, label %bb.am, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bh) #14
  %i.bl = add i64 %i.bk, 1
  %i.bm = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bl) #13 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 120
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !34
  %i.bo = load ptr, ptr %2, align 8, !tbaa !18
  %i.bp = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.bm, ptr noundef nonnull dereferenceable(1) %i.bo) #12 ; 0 uses
  %i.bq = tail call noundef i32 @_Z8sig2typePc(ptr noundef nonnull %i.bm)
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 128
  store i32 %i.bq, ptr %i.br, align 8, !tbaa !35
  %i.bs = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(7) @.str.24) #14
  %.not145 = icmp eq i32 %i.bs, 0
  br i1 %.not145, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bt = tail call noundef i32 @_Z12printsignameP9ClassfileP8_IO_FILERPcS3_Pv(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %3, ptr noundef nonnull %4) ; 0 uses
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !36
  %fputs = tail call i32 @fputs(ptr %i.bv, ptr %1) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %fputc = tail call i32 @fputc(i32 40, ptr %1)   ; 0 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 25 ; 6 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !37
  %i.by = add i8 %i.bx, 1                         ; 2 uses
  store i8 %i.by, ptr %i.bw, align 1, !tbaa !37
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.ca = load i16, ptr %i.bz, align 8, !tbaa !38
  %.not146 = icmp eq i16 %i.ca, 0
  br i1 %.not146, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.cb = zext i8 %i.by to i64
  %i.cc = shl nuw nsw i64 %i.cb, 3
  %i.cd = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cc) #13
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 3 uses
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !39
  %i.cf = load i8, ptr %i.bw, align 1, !tbaa !37
  %i.cg = zext i8 %i.cf to i64
  %i.ch = shl nuw nsw i64 %i.cg, 3
  %i.ci = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ch) #13
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 3 uses
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !40
  %i.ck = load i8, ptr %i.bw, align 1, !tbaa !37
  %i.cl = zext i8 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.cl, 2
  %i.cn = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cm) #13
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 3 uses
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !41
  %i.cp = load i8, ptr %i.bw, align 1, !tbaa !37
  %i.cq = zext i8 %i.cp to i64
  %i.cr = shl nuw nsw i64 %i.cq, 2
  %i.cs = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cr) #13 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 104
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !42
  %i.cu = load i8, ptr %i.bw, align 1, !tbaa !37  ; 3 uses
  %.not147163 = icmp eq i8 %i.cu, 0
  br i1 %.not147163, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.y
  %i.cv = zext i8 %i.cu to i64
  %i.cw = load ptr, ptr %i.cj, align 8, !tbaa !40
  %i.cx = load ptr, ptr %i.ce, align 8, !tbaa !39
  %i.cy = load ptr, ptr %i.co, align 8, !tbaa !41
  %i.cz = zext i8 %i.cu to i64                    ; 2 uses
  %i.da = shl nuw nsw i64 %i.cz, 2                ; 3 uses
  %i.db = add nsw i64 %i.da, -4
  %i.dc = add nuw nsw i64 %i.cv, 4294967295
  %5 = and i64 %i.dc, 4294967295                  ; 2 uses
  %i.dd = shl nuw nsw i64 %5, 2
  %i.de = sub nsw i64 %i.db, %i.dd                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cs, i64 %i.de
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.da, i1 false), !tbaa !7
  %i.df = shl nuw nsw i64 %i.cz, 3                ; 3 uses
  %i.dg = add nsw i64 %i.df, -8
  %i.dh = shl nuw nsw i64 %5, 3
  %i.di = sub nsw i64 %i.dg, %i.dh                ; 2 uses
  %scevgep180 = getelementptr i8, ptr %i.cw, i64 %i.di
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep180, i8 0, i64 %i.df, i1 false), !tbaa !18
  %scevgep181 = getelementptr i8, ptr %i.cx, i64 %i.di
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep181, i8 0, i64 %i.df, i1 false), !tbaa !18
  %scevgep182 = getelementptr i8, ptr %i.cy, i64 %i.de
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep182, i8 0, i64 %i.da, i1 false), !tbaa !43
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.y
  %i.dj = load i16, ptr %4, align 8, !tbaa !44
  %i.dk = and i16 %i.dj, 8
  %i.dl = icmp eq i16 %i.dk, 0
  br i1 %i.dl, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge
  %i.dm = load ptr, ptr %i.ce, align 8, !tbaa !39
  store ptr @.str.27, ptr %i.dm, align 8, !tbaa !18
  %i.dn = load ptr, ptr %i.cj, align 8, !tbaa !40
  store ptr @.str.28, ptr %i.dn, align 8, !tbaa !18
  %i.do = load ptr, ptr %i.co, align 8, !tbaa !41
  store i32 8, ptr %i.do, align 4, !tbaa !43
  store i32 0, ptr %i.cs, align 4, !tbaa !7
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge, %bb.z, %bb.x
  %i.dp = load i8, ptr %i.c, align 1, !tbaa !8
  %.not148165 = icmp eq i8 %i.dp, 41
  br i1 %.not148165, label %._crit_edge169, label %.lr.ph168

.lr.ph168:                                        ; preds = %bb.aa
  %i.dq = load i16, ptr %4, align 8, !tbaa !44
  %i.dr = and i16 %i.dq, 8
  %i.ds = icmp eq i16 %i.dr, 0
  %i.dt = zext i1 %i.ds to i32
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 104
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph168, %bb.aj
  %i.dy = phi ptr [ %i.c, %.lr.ph168 ], [ %.pre, %bb.aj ]
  %.1166 = phi i32 [ %i.dt, %.lr.ph168 ], [ %i.fv, %bb.aj ] ; 5 uses
  %i.dz = load i16, ptr %i.bz, align 8, !tbaa !38
  %.not150 = icmp eq i16 %i.dz, 0
  br i1 %.not150, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ea = load ptr, ptr %i.du, align 8, !tbaa !40
  %i.eb = sext i32 %.1166 to i64                  ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.eb
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !18
  %i.ee = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dy, ptr noundef nonnull dereferenceable(1) %i.ed) #14
  %.not151 = icmp eq i32 %i.ee, 0
  br i1 %.not151, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ef = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.eg = call i64 @fwrite(ptr nonnull @.str.29, i64 33, i64 1, ptr %i.ef) #10 ; 0 uses
  br label %bb.am

bb.ae:                                            ; preds = %bb.ac
  %i.eh = load ptr, ptr %i.dv, align 8, !tbaa !39
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.eb
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !18
  %i.ek = call noundef i32 @_Z12printsignameP9ClassfileP8_IO_FILERPcS3_Pv(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.ej, ptr noundef nonnull %4) ; 0 uses
  br label %bb.ag

bb.af:                                            ; preds = %bb.ab
  %i.el = call noalias noundef nonnull dereferenceable(6) ptr @_Znam(i64 noundef 6) #13 ; 2 uses
  %i.em = load ptr, ptr %i.dv, align 8, !tbaa !39
  %i.en = sext i32 %.1166 to i64                  ; 6 uses
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.em, i64 %i.en
  store ptr %i.el, ptr %i.eo, align 8, !tbaa !18
  %i.ep = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.el, ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %.1166) #12 ; 0 uses
  %i.eq = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %i.er = load ptr, ptr %i.dv, align 8, !tbaa !39
  %i.es = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.en
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !18
  %i.eu = call noundef i32 @_Z12printsignameP9ClassfileP8_IO_FILERPcS3_Pv(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.et, ptr noundef nonnull %4) ; 0 uses
  %i.ev = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = ptrtoint ptr %i.eq to i64               ; 2 uses
  %reass.sub = sub i64 %i.ew, %i.ex
  %i.ey = add i64 %reass.sub, 1
  %i.ez = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ey) #13 ; 2 uses
  %i.fa = load ptr, ptr %i.du, align 8, !tbaa !40
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.en ; 2 uses
  store ptr %i.ez, ptr %i.fb, align 8, !tbaa !18
  %i.fc = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.fd = ptrtoint ptr %i.fc to i64
  %i.fe = sub i64 %i.fd, %i.ex                    ; 2 uses
  %i.ff = call ptr @strncpy(ptr noundef nonnull %i.ez, ptr noundef %i.eq, i64 noundef %i.fe) #12 ; 0 uses
  %i.fg = load ptr, ptr %i.fb, align 8, !tbaa !18
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 %i.fe
  store i8 0, ptr %i.fh, align 1, !tbaa !8
  %i.fi = load ptr, ptr %i.du, align 8, !tbaa !40
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.en
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !18
  %i.fl = call noundef i32 @_Z8sig2typePc(ptr noundef %i.fk)
  %i.fm = load ptr, ptr %i.dw, align 8, !tbaa !41
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %i.en
  store i32 %i.fl, ptr %i.fn, align 4, !tbaa !43
  %i.fo = load ptr, ptr %i.dx, align 8, !tbaa !42
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.fo, i64 %i.en
  store i32 0, ptr %i.fp, align 4, !tbaa !7
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.fq = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %i.fq, i64 -1
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !8
  switch i8 %i.fs, label %bb.ai [
    i8 68, label %bb.ah
    i8 74, label %bb.ah
  ]

bb.ah:                                            ; preds = %bb.ag, %bb.ag
  %i.ft = add nsw i32 %.1166, 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %.2 = phi i32 [ %i.ft, %bb.ah ], [ %.1166, %bb.ag ]
  %i.fu = load i8, ptr %i.fq, align 1, !tbaa !8
  %.not152 = icmp eq i8 %i.fu, 41
  br i1 %.not152, label %._crit_edge169, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fv = add nsw i32 %.2, 1
  %i.fw = call i64 @fwrite(ptr nonnull @.str.31, i64 2, i64 1, ptr %1) ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %.pre184 = load i8, ptr %.pre, align 1, !tbaa !8
  %i.fx = icmp eq i8 %.pre184, 41
  br i1 %i.fx, label %._crit_edge169, label %bb.ab, !llvm.loop !16

._crit_edge169:                                   ; preds = %bb.ai, %bb.aj, %bb.aa
  %fputc149 = call i32 @fputc(i32 41, ptr %1)     ; 0 uses
  br label %bb.am

bb.ak:                                            ; preds = %bb.a
  %i.fy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.33, ptr noundef %3) #12 ; 0 uses
  br label %bb.am

bb.al:                                            ; preds = %bb.a
  %i.fz = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ga = tail call i64 @fwrite(ptr nonnull @.str.34, i64 30, i64 1, ptr %i.fz) #10 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.t, %bb.n, %bb.o, %bb.al, %bb.ak, %._crit_edge169, %bb.ad, %bb.q, %bb.m, %bb.l, %.thread, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0134 = phi i32 [ 1, %bb.al ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %.thread ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.ak ], [ 1, %bb.ad ], [ 0, %._crit_edge169 ], [ 0, %bb.n ], [ 0, %bb.q ], [ 0, %bb.o ], [ 0, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0134
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

attributes #0 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
