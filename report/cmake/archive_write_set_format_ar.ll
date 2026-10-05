Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_write_set_format_ar?download=true
inline.NumInlined: 7
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@archive_write_ar_header:bb.a
bb.g:                                             ; preds = %.tail.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) %i.a, ptr noundef nonnull align 1 dereferenceable(7) @.str.10, i64 7, i1 false)
  br label %bb.aa

bb.h:                                             ; preds = %.tail.thread
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(10) @.str.11) #13
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.i, label %sub_0140

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %i.a, ptr noundef nonnull align 1 dereferenceable(9) @.str.11, i64 9, i1 false)
  br label %bb.aa

sub_0140:                                         ; preds = %bb.h
  br i1 %.not150, label %sub_1141, label %.tail139.thread

sub_1141:                                         ; preds = %sub_0140
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.w = load i8, ptr %i.v, align 1
  %.not152 = icmp eq i8 %i.w, 47
  br i1 %.not152, label %.tail139, label %.tail139.thread

.tail139:                                         ; preds = %sub_1141
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.y = load i8, ptr %i.x, align 1
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.j, label %.tail139.thread

bb.j:                                             ; preds = %.tail139
  store i32 1, ptr %i.d, align 8, !tbaa !30
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 47, ptr %i.aa, align 1, !tbaa !31
  store i8 47, ptr %i.a, align 16, !tbaa !31
  br label %bb.bc

.tail139.thread:                                  ; preds = %sub_1141, %sub_0140, %.tail139
  %i.ab = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.f) #13 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.f, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 -1     ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !31
  %i.af = icmp eq i8 %i.ae, 47
  br i1 %i.af, label %ar_basename.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.tail139.thread
  %i.ag = icmp sgt i64 %i.ab, 1
  br i1 %i.ag, label %.lr.ph, label %.preheader.i._crit_edge

.preheader.i:                                     ; preds = %.lr.ph
  %i.ah = icmp ugt ptr %i.ai, %i.f
  br i1 %i.ah, label %.lr.ph, label %.preheader.i._crit_edge, !llvm.loop !38

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %.0.i186 = phi ptr [ %i.ai, %.preheader.i ], [ %i.ad, %.preheader.i.preheader ] ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %.0.i186, i64 -1 ; 4 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !31
  %.not.i = icmp eq i8 %i.aj, 47
  br i1 %.not.i, label %._crit_edge, label %.preheader.i, !llvm.loop !38

ar_basename.exit:                                 ; preds = %.tail139.thread
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 22, ptr noundef nonnull @.str.6) #11
  br label %bb.bj

._crit_edge:                                      ; preds = %.lr.ph
  br label %.preheader.i._crit_edge, !llvm.loop !38

.preheader.i._crit_edge:                          ; preds = %.preheader.i, %._crit_edge, %.preheader.i.preheader
  %.0.i.lcssa = phi ptr [ %i.ad, %.preheader.i.preheader ], [ %.0.i186, %._crit_edge ], [ %i.ai, %.preheader.i ] ; 12 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !27
  switch i32 %i.al, label %bb.aa [
    i32 458753, label %bb.k
    i32 458754, label %bb.u
  ]

bb.k:                                             ; preds = %.preheader.i._crit_edge
  %i.am = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i.lcssa) #13 ; 4 uses
  %i.an = icmp ult i64 %i.am, 16
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %.0.i.lcssa, i64 %i.am, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.am
  store i8 47, ptr %i.ao, align 1, !tbaa !31
  br label %bb.aa

bb.m:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !34
  %i.ar = icmp slt i32 %i.aq, 1
  br i1 %i.ar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 22, ptr noundef nonnull @.str.13) #11
  br label %bb.bj

bb.o:                                             ; preds = %bb.m
  %i.as = add i64 %i.am, 3
  %i.at = tail call noalias ptr @malloc(i64 noundef %i.as) #14 ; 5 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 12, ptr noundef nonnull @.str.14) #11
  br label %bb.bj

bb.q:                                             ; preds = %bb.o
  %i.av = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i.lcssa) #13 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr nonnull align 1 %.0.i.lcssa, i64 %i.av, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.aw, ptr noundef nonnull align 1 dereferenceable(3) @.str.15, i64 3, i1 false) #11
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !35 ; 2 uses
  %i.az = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(1) %i.at) #13 ; 2 uses
  tail call void @free(ptr noundef nonnull %i.at) #11
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 22, ptr noundef nonnull @.str.16) #11
  br label %bb.bj

bb.s:                                             ; preds = %bb.q
  store i8 47, ptr %i.a, align 16, !tbaa !31
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.bf = call fastcc i32 @format_decimal(i64 noundef %i.bd, ptr noundef %i.be, i32 noundef 15)
  %.not94 = icmp eq i32 %i.bf, 0
  br i1 %.not94, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 34, ptr noundef nonnull @.str.17) #11
  br label %bb.bj

bb.u:                                             ; preds = %.preheader.i._crit_edge
  %i.bg = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i.lcssa) #13 ; 5 uses
  %i.bh = icmp ult i64 %i.bg, 17
  br i1 %i.bh, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bi = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.0.i.lcssa, i32 noundef 32) #13
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %.0.i.lcssa, i64 %i.bg, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bg
  store i8 32, ptr %i.bk, align 1, !tbaa !31
  br label %bb.aa

bb.x:                                             ; preds = %bb.v, %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) %i.a, ptr noundef nonnull align 1 dereferenceable(3) @.str.18, i64 3, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.bm = call fastcc i32 @format_decimal(i64 noundef %i.bg, ptr noundef %i.bl, i32 noundef 13)
  %.not93 = icmp eq i32 %i.bm, 0
  br i1 %.not93, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 34, ptr noundef nonnull @.str.19) #11
  br label %bb.bj

bb.z:                                             ; preds = %bb.x
  %i.bn = add i64 %i.bg, %i.e
  br label %bb.aa

bb.aa:                                            ; preds = %.preheader.i._crit_edge, %bb.s, %bb.l, %bb.w, %bb.z, %bb.i, %bb.g, %bb.f
  %.080 = phi i32 [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.l ], [ 0, %bb.s ], [ 0, %bb.w ], [ 1, %bb.z ], [ 0, %.preheader.i._crit_edge ] ; 2 uses
  %.078 = phi ptr [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.i ], [ %.0.i.lcssa, %bb.l ], [ %.0.i.lcssa, %bb.s ], [ %.0.i.lcssa, %bb.w ], [ %.0.i.lcssa, %bb.z ], [ %.0.i.lcssa, %.preheader.i._crit_edge ] ; 2 uses
  %.0 = phi i64 [ %i.e, %bb.f ], [ %i.e, %bb.g ], [ %i.e, %bb.i ], [ %i.e, %bb.l ], [ %i.e, %bb.s ], [ %i.e, %bb.w ], [ %i.bn, %bb.z ], [ %i.e, %.preheader.i._crit_edge ] ; 2 uses
  %i.bo = tail call i64 @archive_entry_mtime(ptr noundef %1) #11 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bq = icmp slt i64 %i.bo, 0
  br i1 %i.bq, label %format_decimal.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 3 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %.028.i = phi i64 [ %i.bo, %bb.ab ], [ %i.bw, %bb.ac ] ; 4 uses
  %.127.i = phi ptr [ %i.br, %bb.ab ], [ %i.bv, %bb.ac ]
  %.024.i = phi i32 [ 12, %bb.ab ], [ %i.bx, %bb.ac ] ; 4 uses
  %i.bs = urem i64 %.028.i, 10
  %i.bt = trunc nuw nsw i64 %i.bs to i8
  %i.bu = or disjoint i8 %i.bt, 48
  %i.bv = getelementptr inbounds i8, ptr %.127.i, i64 -1 ; 4 uses
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !31
  %i.bw = udiv i64 %.028.i, 10
  %i.bx = add nsw i32 %.024.i, -1                 ; 2 uses
  %i.by = icmp samesign ugt i32 %.024.i, 1
  %i.bz = icmp samesign ugt i64 %.028.i, 9
  %i.ca = select i1 %i.by, i1 %i.bz, i1 false
  br i1 %i.ca, label %bb.ac, label %bb.ad, !llvm.loop !1

bb.ad:                                            ; preds = %bb.ac
  %i.cb = icmp samesign ult i64 %.028.i, 10
  br i1 %i.cb, label %bb.ae, label %.preheader32.preheader.i

.preheader32.preheader.i:                         ; preds = %bb.ad
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bv, i8 57, i64 range(i64 0, 16) 12, i1 false), !tbaa !31
  br label %format_decimal.exit

bb.ae:                                            ; preds = %bb.ad
  %i.cc = sub nsw i32 13, %.024.i
  %i.cd = sext i32 %i.cc to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.bp, ptr nonnull align 1 %i.bv, i64 %i.cd, i1 false)
  %i.ce = icmp sgt i32 %.024.i, 1
  br i1 %i.ce, label %.lr.ph.preheader.i, label %bb.af

.lr.ph.preheader.i:                               ; preds = %bb.ae
  %i.cf = zext nneg i32 %i.bx to i64              ; 2 uses
  %i.cg = sub nsw i64 0, %i.cf
  %i.ch = getelementptr i8, ptr %i.br, i64 %i.cg
  call void @llvm.memset.p0.i64(ptr align 1 %i.ch, i8 32, i64 range(i64 0, 15) %i.cf, i1 false), !tbaa !31
  br label %bb.af

format_decimal.exit:                              ; preds = %bb.aa, %.preheader32.preheader.i
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 34, ptr noundef nonnull @.str.20) #11
  br label %bb.bj

bb.af:                                            ; preds = %bb.ae, %.lr.ph.preheader.i
  %i.ci = tail call i64 @archive_entry_uid(ptr noundef %1) #11 ; 13 uses
  %i.cj = icmp slt i64 %i.ci, 0
  br i1 %i.cj, label %format_decimal.exit111, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 34 ; 2 uses
  %i.cl = urem i64 %i.ci, 10
  %i.cm = udiv i64 %i.ci, 10                      ; 2 uses
  %i.cn = trunc nuw nsw i64 %i.cl to i8
  %i.co = or disjoint i8 %i.cn, 48
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 33 ; 2 uses
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !31
  %i.cq = icmp samesign ugt i64 %i.ci, 9
  br i1 %i.cq, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.cr = urem i64 %i.cm, 10
  %i.cs = trunc nuw nsw i64 %i.cr to i8
  %i.ct = or disjoint i8 %i.cs, 48
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i8 %i.ct, ptr %i.cu, align 16, !tbaa !31
  %i.cv = icmp ugt i64 %i.ci, 99
  br i1 %i.cv, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.cw = udiv i64 %i.ci, 100                     ; 2 uses
  %i.cx = urem i64 %i.cw, 10
  %i.cy = trunc nuw nsw i64 %i.cx to i8
  %i.cz = or disjoint i8 %i.cy, 48
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 31 ; 2 uses
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !31
  %i.db = icmp ugt i64 %i.ci, 999
  br i1 %i.db, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.dc = udiv i64 %i.ci, 1000                    ; 2 uses
  %i.dd = urem i64 %i.dc, 10
  %i.de = trunc nuw nsw i64 %i.dd to i8
  %i.df = or disjoint i8 %i.de, 48
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 30 ; 2 uses
  store i8 %i.df, ptr %i.dg, align 2, !tbaa !31
  %i.dh = icmp ugt i64 %i.ci, 9999
  br i1 %i.dh, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.di = udiv i64 %i.ci, 10000                   ; 2 uses
  %i.dj = urem i64 %i.di, 10
  %i.dk = trunc nuw nsw i64 %i.dj to i8
  %i.dl = or disjoint i8 %i.dk, 48
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 29 ; 2 uses
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !31
  %i.dn = icmp ugt i64 %i.ci, 99999
  br i1 %i.dn, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.do = udiv i64 %i.ci, 100000                  ; 2 uses
  %i.dp = urem i64 %i.do, 10
  %i.dq = trunc nuw nsw i64 %i.dp to i8
  %i.dr = or disjoint i8 %i.dq, 48
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 2 uses
  store i8 %i.dr, ptr %i.ds, align 4, !tbaa !31
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.028.i104.lcssa = phi i64 [ %i.ci, %bb.ag ], [ %i.cm, %bb.ah ], [ %i.cw, %bb.ai ], [ %i.dc, %bb.aj ], [ %i.di, %bb.ak ], [ %i.do, %bb.al ]
  %i.dt = phi i1 [ true, %bb.ag ], [ true, %bb.ah ], [ true, %bb.ai ], [ true, %bb.aj ], [ true, %bb.ak ], [ false, %bb.al ]
  %.024.i106.lcssa = phi i64 [ 1, %bb.ag ], [ 2, %bb.ah ], [ 3, %bb.ai ], [ 4, %bb.aj ], [ 5, %bb.ak ], [ 6, %bb.al ]
  %.lcssa192 = phi ptr [ %i.cp, %bb.ag ], [ %i.cu, %bb.ah ], [ %i.da, %bb.ai ], [ %i.dg, %bb.aj ], [ %i.dm, %bb.ak ], [ %i.ds, %bb.al ] ; 2 uses
  %.lcssa191 = phi i64 [ 5, %bb.ag ], [ 4, %bb.ah ], [ 3, %bb.ai ], [ 2, %bb.aj ], [ 1, %bb.ak ], [ 0, %bb.al ] ; 2 uses
  %i.du = icmp samesign ult i64 %.028.i104.lcssa, 10
  br i1 %i.du, label %bb.an, label %.preheader32.preheader.i107

.preheader32.preheader.i107:                      ; preds = %bb.am
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.lcssa192, i8 57, i64 range(i64 0, 16) 6, i1 false), !tbaa !31
  br label %format_decimal.exit111

bb.an:                                            ; preds = %bb.am
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.br, ptr noundef nonnull align 1 dereferenceable(1) %.lcssa192, i64 %.024.i106.lcssa, i1 false)
  br i1 %i.dt, label %.lr.ph.preheader.i109, label %bb.ao

.lr.ph.preheader.i109:                            ; preds = %bb.an
  %i.dv = sub nsw i64 0, %.lcssa191
  %i.dw = getelementptr i8, ptr %i.ck, i64 %i.dv
  call void @llvm.memset.p0.i64(ptr align 1 %i.dw, i8 32, i64 range(i64 0, 15) %.lcssa191, i1 false), !tbaa !31
  br label %bb.ao

format_decimal.exit111:                           ; preds = %bb.af, %.preheader32.preheader.i107
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 34, ptr noundef nonnull @.str.21) #11
  br label %bb.bj

bb.ao:                                            ; preds = %bb.an, %.lr.ph.preheader.i109
  %i.dx = tail call i64 @archive_entry_gid(ptr noundef %1) #11 ; 13 uses
  %i.dy = icmp slt i64 %i.dx, 0
  br i1 %i.dy, label %format_decimal.exit119, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.ea = urem i64 %i.dx, 10
  %i.eb = udiv i64 %i.dx, 10                      ; 2 uses
  %i.ec = trunc nuw nsw i64 %i.ea to i8
  %i.ed = or disjoint i8 %i.ec, 48
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 39 ; 2 uses
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !31
  %i.ef = icmp samesign ugt i64 %i.dx, 9
  br i1 %i.ef, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %bb.ap
  %i.eg = urem i64 %i.eb, 10
  %i.eh = trunc nuw nsw i64 %i.eg to i8
  %i.ei = or disjoint i8 %i.eh, 48
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 38 ; 2 uses
  store i8 %i.ei, ptr %i.ej, align 2, !tbaa !31
  %i.ek = icmp ugt i64 %i.dx, 99
  br i1 %i.ek, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  %i.el = udiv i64 %i.dx, 100                     ; 2 uses
  %i.em = urem i64 %i.el, 10
  %i.en = trunc nuw nsw i64 %i.em to i8
  %i.eo = or disjoint i8 %i.en, 48
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 37 ; 2 uses
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !31
  %i.eq = icmp ugt i64 %i.dx, 999
  br i1 %i.eq, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.er = udiv i64 %i.dx, 1000                    ; 2 uses
  %i.es = urem i64 %i.er, 10
  %i.et = trunc nuw nsw i64 %i.es to i8
  %i.eu = or disjoint i8 %i.et, 48
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 2 uses
  store i8 %i.eu, ptr %i.ev, align 4, !tbaa !31
  %i.ew = icmp ugt i64 %i.dx, 9999
  br i1 %i.ew, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.ex = udiv i64 %i.dx, 10000                   ; 2 uses
  %i.ey = urem i64 %i.ex, 10
  %i.ez = trunc nuw nsw i64 %i.ey to i8
  %i.fa = or disjoint i8 %i.ez, 48
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 35 ; 2 uses
  store i8 %i.fa, ptr %i.fb, align 1, !tbaa !31
  %i.fc = icmp ugt i64 %i.dx, 99999
  br i1 %i.fc, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.fd = udiv i64 %i.dx, 100000                  ; 2 uses
  %i.fe = urem i64 %i.fd, 10
  %i.ff = trunc nuw nsw i64 %i.fe to i8
  %i.fg = or disjoint i8 %i.ff, 48
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 34 ; 2 uses
  store i8 %i.fg, ptr %i.fh, align 2, !tbaa !31
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap
  %.028.i112.lcssa = phi i64 [ %i.dx, %bb.ap ], [ %i.eb, %bb.aq ], [ %i.el, %bb.ar ], [ %i.er, %bb.as ], [ %i.ex, %bb.at ], [ %i.fd, %bb.au ]
  %i.fi = phi i1 [ true, %bb.ap ], [ true, %bb.aq ], [ true, %bb.ar ], [ true, %bb.as ], [ true, %bb.at ], [ false, %bb.au ]
  %.024.i114.lcssa = phi i64 [ 1, %bb.ap ], [ 2, %bb.aq ], [ 3, %bb.ar ], [ 4, %bb.as ], [ 5, %bb.at ], [ 6, %bb.au ]
  %.lcssa190 = phi ptr [ %i.ee, %bb.ap ], [ %i.ej, %bb.aq ], [ %i.ep, %bb.ar ], [ %i.ev, %bb.as ], [ %i.fb, %bb.at ], [ %i.fh, %bb.au ] ; 2 uses
  %.lcssa189 = phi i64 [ 5, %bb.ap ], [ 4, %bb.aq ], [ 3, %bb.ar ], [ 2, %bb.as ], [ 1, %bb.at ], [ 0, %bb.au ] ; 2 uses
  %i.fj = icmp samesign ult i64 %.028.i112.lcssa, 10
  br i1 %i.fj, label %bb.aw, label %.preheader32.preheader.i115

.preheader32.preheader.i115:                      ; preds = %bb.av
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.lcssa190, i8 57, i64 range(i64 0, 16) 6, i1 false), !tbaa !31
  br label %format_decimal.exit119

bb.aw:                                            ; preds = %bb.av
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.ck, ptr noundef nonnull align 1 dereferenceable(1) %.lcssa190, i64 %.024.i114.lcssa, i1 false)
  br i1 %i.fi, label %.lr.ph.preheader.i117, label %bb.ax

.lr.ph.preheader.i117:                            ; preds = %bb.aw
  %i.fk = sub nsw i64 0, %.lcssa189
  %i.fl = getelementptr i8, ptr %i.dz, i64 %i.fk
  call void @llvm.memset.p0.i64(ptr align 1 %i.fl, i8 32, i64 range(i64 0, 15) %.lcssa189, i1 false), !tbaa !31
  br label %bb.ax

format_decimal.exit119:                           ; preds = %bb.ao, %.preheader32.preheader.i115
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 34, ptr noundef nonnull @.str.22) #11
  br label %bb.bj

bb.ax:                                            ; preds = %bb.aw, %.lr.ph.preheader.i117
  %i.fm = tail call i32 @archive_entry_mode(ptr noundef %1) #11
  %i.fn = zext i32 %i.fm to i64
  %i.fo = call fastcc i32 @format_octal(i64 noundef %i.fn, ptr noundef %i.dz)
  %.not98 = icmp eq i32 %i.fo, 0
  br i1 %.not98, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 34, ptr noundef nonnull @.str.23) #11
  br label %bb.bj

bb.az:                                            ; preds = %bb.ax
  %.not99 = icmp eq ptr %.078, null
  br i1 %.not99, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fp = tail call i32 @archive_entry_filetype(ptr noundef %1) #11
  %.not100 = icmp eq i32 %i.fp, 32768
  br i1 %.not100, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 22, ptr noundef nonnull @.str.24) #11
  br label %bb.bj

bb.bc:                                            ; preds = %bb.az, %bb.ba, %bb.j
  %.181 = phi i32 [ %.080, %bb.ba ], [ %.080, %bb.az ], [ 0, %bb.j ]
  %.179 = phi ptr [ %.078, %bb.ba ], [ null, %bb.az ], [ null, %bb.j ] ; 3 uses
  %.1 = phi i64 [ %.0, %bb.ba ], [ %.0, %bb.az ], [ %i.e, %bb.j ] ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.fr = icmp slt i64 %.1, 0
  br i1 %i.fr, label %format_decimal.exit127, label %.preheader

.preheader:                                       ; preds = %bb.bc, %.preheader
  %.028.i120 = phi i64 [ %i.fw, %.preheader ], [ %.1, %bb.bc ] ; 4 uses
  %.127.i121 = phi ptr [ %i.fv, %.preheader ], [ %i.n, %bb.bc ]
  %.024.i122 = phi i32 [ %i.fx, %.preheader ], [ 10, %bb.bc ] ; 4 uses
  %i.fs = urem i64 %.028.i120, 10
  %i.ft = trunc nuw nsw i64 %i.fs to i8
  %i.fu = or disjoint i8 %i.ft, 48
  %i.fv = getelementptr inbounds i8, ptr %.127.i121, i64 -1 ; 4 uses
  store i8 %i.fu, ptr %i.fv, align 1, !tbaa !31
  %i.fw = udiv i64 %.028.i120, 10
  %i.fx = add nsw i32 %.024.i122, -1              ; 2 uses
  %i.fy = icmp samesign ugt i32 %.024.i122, 1
  %i.fz = icmp samesign ugt i64 %.028.i120, 9
  %i.ga = select i1 %i.fy, i1 %i.fz, i1 false
  br i1 %i.ga, label %.preheader, label %bb.bd, !llvm.loop !1

bb.bd:                                            ; preds = %.preheader
  %i.gb = icmp samesign ult i64 %.028.i120, 10
  br i1 %i.gb, label %bb.be, label %.preheader32.preheader.i123

.preheader32.preheader.i123:                      ; preds = %bb.bd
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.fv, i8 57, i64 range(i64 0, 16) 10, i1 false), !tbaa !31
  br label %format_decimal.exit127

bb.be:                                            ; preds = %bb.bd
  %i.gc = sub nsw i32 11, %.024.i122
  %i.gd = sext i32 %i.gc to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.fq, ptr nonnull align 1 %i.fv, i64 %i.gd, i1 false)
  %i.ge = icmp sgt i32 %.024.i122, 1
  br i1 %i.ge, label %.lr.ph.preheader.i125, label %bb.bf

.lr.ph.preheader.i125:                            ; preds = %bb.be
  %i.gf = zext nneg i32 %i.fx to i64              ; 2 uses
  %i.gg = sub nsw i64 0, %i.gf
  %i.gh = getelementptr i8, ptr %i.n, i64 %i.gg
  call void @llvm.memset.p0.i64(ptr align 1 %i.gh, i8 32, i64 range(i64 0, 15) %i.gf, i1 false), !tbaa !31
  br label %bb.bf

format_decimal.exit127:                           ; preds = %bb.bc, %.preheader32.preheader.i123
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 34, ptr noundef nonnull @.str.25) #11
  br label %bb.bj

bb.bf:                                            ; preds = %bb.be, %.lr.ph.preheader.i125
  %i.gi = call i32 @__archive_write_output(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 60) #11 ; 2 uses
  %.not102 = icmp eq i32 %i.gi, 0
  br i1 %.not102, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  store i64 %.1, ptr %i.c, align 8, !tbaa !36
  %i.gj = and i64 %.1, 1
  %i.gk = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.gj, ptr %i.gk, align 8, !tbaa !37
  %.not138 = icmp eq i32 %.181, 0
  br i1 %.not138, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gl = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.179) #13
  %i.gm = call i32 @__archive_write_output(ptr noundef nonnull %0, ptr noundef nonnull %.179, i64 noundef %i.gl) #11 ; 2 uses
  %.not103 = icmp eq i32 %i.gm, 0
  br i1 %.not103, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.gn = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.179) #13
  %i.go = load i64, ptr %i.c, align 8, !tbaa !36
  %i.gp = sub i64 %i.go, %i.gn
  store i64 %i.gp, ptr %i.c, align 8, !tbaa !36
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bg, %bb.bi, %bb.bh, %bb.bf, %format_decimal.exit127, %bb.bb, %bb.ay, %format_decimal.exit119, %format_decimal.exit111, %format_decimal.exit, %bb.y, %bb.t, %bb.r, %bb.p, %bb.n, %ar_basename.exit, %bb.c
  %.082 = phi i32 [ -20, %bb.c ], [ -20, %format_decimal.exit ], [ -20, %format_decimal.exit111 ], [ -20, %format_decimal.exit119 ], [ -20, %bb.ay ], [ -20, %bb.bb ], [ -20, %format_decimal.exit127 ], [ -20, %bb.y ], [ %i.gi, %bb.bf ], [ %i.gm, %bb.bh ], [ -20, %ar_basename.exit ], [ -20, %bb.n ], [ -30, %bb.p ], [ -20, %bb.r ], [ -20, %bb.t ], [ 0, %bb.bi ], [ 0, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.082
}

; Function Attrs: nounwind uwtable
define internal i64 @archive_write_ar_data(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !36
  %spec.select = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.c) ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !30
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !34
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 22, ptr noundef nonnull @.str.26) #11
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.j = add i64 %spec.select, 1
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #14 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.k, ptr %i.l, align 8, !tbaa !35
  %i.m = icmp eq ptr %i.k, null
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 12, ptr noundef nonnull @.str.27) #11
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %1, i64 %spec.select, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %spec.select
  store i8 0, ptr %i.n, align 1, !tbaa !31
  store i32 1, ptr %i.g, align 4, !tbaa !34
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %i.o = tail call i32 @__archive_write_output(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %spec.select) #11 ; 2 uses
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = sext i32 %i.o to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.q = load i64, ptr %i.b, align 8, !tbaa !36
  %i.r = sub i64 %i.q, %spec.select
  store i64 %i.r, ptr %i.b, align 8, !tbaa !36
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.e, %bb.c
  %.025 = phi i64 [ -20, %bb.c ], [ -30, %bb.e ], [ %i.p, %bb.h ], [ %spec.select, %bb.i ]
  ret i64 %.025
}

; Function Attrs: nounwind uwtable
define internal i32 @archive_write_ar_close(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !32
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.c, align 8, !tbaa !32
  %i.e = tail call i32 @__archive_write_output(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, i64 noundef 8) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal noundef i32 @archive_write_ar_free(ptr nofree noundef captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !34
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35
  tail call void @free(ptr noundef %i.h) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @free(ptr noundef nonnull %i.b) #11
  store ptr null, ptr %i.a, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @archive_write_ar_finish_entry(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !36
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.28) #11
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !37   ; 2 uses
  switch i64 %i.e, label %bb.d [
    i64 0, label %bb.f
    i64 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.29, i64 noundef %i.e) #11
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = tail call i32 @__archive_write_output(ptr noundef nonnull %0, ptr noundef nonnull @.str.30, i64 noundef 1) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ -20, %bb.b ], [ %i.f, %bb.e ], [ -20, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

declare i64 @archive_entry_size(ptr noundef) local_unnamed_addr #2

declare ptr @archive_entry_pathname(ptr noundef) local_unnamed_addr #2

declare i32 @__archive_write_output(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -1, 1) i32 @format_decimal(i64 noundef %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef range(i32 6, 16) %2) unnamed_addr #9 {
bb.a:
  %i.a = icmp slt i64 %0, 0
  %i.b = zext nneg i32 %2 to i64                  ; 3 uses
  br i1 %i.a, label %.preheader.preheader, label %bb.b

.preheader.preheader:                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, i8 48, i64 range(i64 0, 16) %i.b, i1 false), !tbaa !31
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 %i.b       ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.028 = phi i64 [ %0, %bb.b ], [ %i.h, %bb.c ]  ; 4 uses
  %.127 = phi ptr [ %i.c, %bb.b ], [ %i.g, %bb.c ]
  %.024 = phi i32 [ %2, %bb.b ], [ %i.i, %bb.c ]  ; 3 uses
  %i.d = urem i64 %.028, 10
  %i.e = trunc nuw nsw i64 %i.d to i8
  %i.f = or disjoint i8 %i.e, 48
  %i.g = getelementptr inbounds i8, ptr %.127, i64 -1 ; 4 uses
  store i8 %i.f, ptr %i.g, align 1, !tbaa !31
  %i.h = udiv i64 %.028, 10
  %i.i = add nsw i32 %.024, -1                    ; 3 uses
  %i.j = icmp samesign ugt i32 %.024, 1
  %i.k = icmp samesign ugt i64 %.028, 9
  %i.l = select i1 %i.j, i1 %i.k, i1 false
  br i1 %i.l, label %bb.c, label %bb.d, !llvm.loop !1

bb.d:                                             ; preds = %bb.c
  %i.m = icmp samesign ult i64 %.028, 10
  br i1 %i.m, label %bb.e, label %.preheader32.preheader

.preheader32.preheader:                           ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.g, i8 57, i64 range(i64 0, 16) %i.b, i1 false), !tbaa !31
  br label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.n = sub nsw i32 %2, %i.i
  %i.o = sext i32 %i.n to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %i.g, i64 %i.o, i1 false)
  %i.p = icmp sgt i32 %.024, 1
  br i1 %i.p, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.q = zext nneg i32 %i.i to i64                ; 2 uses
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr i8, ptr %i.c, i64 %i.r
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.s, i8 32, i64 range(i64 0, 15) %i.q, i1 false), !tbaa !31
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader32.preheader, %.lr.ph.preheader, %.preheader.preheader, %bb.e
  %.029 = phi i32 [ 0, %bb.e ], [ 0, %.lr.ph.preheader ], [ -1, %.preheader.preheader ], [ -1, %.preheader32.preheader ]
  ret i32 %.029
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

declare i64 @archive_entry_mtime(ptr noundef) local_unnamed_addr #2

declare i64 @archive_entry_uid(ptr noundef) local_unnamed_addr #2

declare i64 @archive_entry_gid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -1, 1) i32 @format_octal(i64 noundef range(i64 0, 4294967296) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = trunc i64 %0 to i8
  %i.c = and i8 %i.b, 7
  %i.d = or disjoint i8 %i.c, 48
  %i.e = getelementptr i8, ptr %1, i64 7          ; 2 uses
  store i8 %i.d, ptr %i.e, align 1, !tbaa !31
  %i.f = lshr i64 %0, 3                           ; 2 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = trunc i64 %i.f to i8
  %i.h = and i8 %i.g, 7
  %i.i = or disjoint i8 %i.h, 48
  %i.j = getelementptr i8, ptr %1, i64 6          ; 2 uses
  store i8 %i.i, ptr %i.j, align 1, !tbaa !31
  %i.k = lshr i64 %0, 6                           ; 2 uses
  %.not5 = icmp eq i64 %i.k, 0
  br i1 %.not5, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = trunc i64 %i.k to i8
  %i.m = and i8 %i.l, 7
  %i.n = or disjoint i8 %i.m, 48
  %i.o = getelementptr i8, ptr %1, i64 5          ; 2 uses
  store i8 %i.n, ptr %i.o, align 1, !tbaa !31
  %i.p = lshr i64 %0, 9                           ; 2 uses
  %.not6 = icmp eq i64 %i.p, 0
  br i1 %.not6, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = trunc i64 %i.p to i8
  %i.r = and i8 %i.q, 7
  %i.s = or disjoint i8 %i.r, 48
  %i.t = getelementptr i8, ptr %1, i64 4          ; 2 uses
  store i8 %i.s, ptr %i.t, align 1, !tbaa !31
  %i.u = lshr i64 %0, 12                          ; 2 uses
  %.not7 = icmp eq i64 %i.u, 0
  br i1 %.not7, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = trunc i64 %i.u to i8
  %i.w = and i8 %i.v, 7
  %i.x = or disjoint i8 %i.w, 48
  %i.y = getelementptr i8, ptr %1, i64 3          ; 2 uses
  store i8 %i.x, ptr %i.y, align 1, !tbaa !31
  %i.z = lshr i64 %0, 15                          ; 2 uses
  %.not8 = icmp eq i64 %i.z, 0
  br i1 %.not8, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = trunc i64 %i.z to i8
  %i.ab = and i8 %i.aa, 7
  %i.ac = or disjoint i8 %i.ab, 48
  %i.ad = getelementptr i8, ptr %1, i64 2         ; 2 uses
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !31
  %i.ae = lshr i64 %0, 18                         ; 2 uses
  %.not9 = icmp eq i64 %i.ae, 0
  br i1 %.not9, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = trunc i64 %i.ae to i8
  %i.ag = and i8 %i.af, 7
  %i.ah = or disjoint i8 %i.ag, 48
  %i.ai = getelementptr i8, ptr %1, i64 1         ; 2 uses
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !31
  %i.aj = lshr i64 %0, 21                         ; 2 uses
  %.not10 = icmp eq i64 %i.aj, 0
  br i1 %.not10, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = trunc i64 %i.aj to i8
  %i.al = and i8 %i.ak, 7
  %i.am = or disjoint i8 %i.al, 48
  store i8 %i.am, ptr %1, align 1, !tbaa !31
  %i.an = icmp samesign ugt i64 %0, 16777215
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.ao = phi i1 [ true, %bb.a ], [ true, %bb.b ], [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.g ], [ false, %bb.h ]
  %.024.lcssa.neg = phi i64 [ 1, %bb.a ], [ 2, %bb.b ], [ 3, %bb.c ], [ 4, %bb.d ], [ 5, %bb.e ], [ 6, %bb.f ], [ 7, %bb.g ], [ 8, %bb.h ]
  %.lcssa4 = phi ptr [ %i.e, %bb.a ], [ %i.j, %bb.b ], [ %i.o, %bb.c ], [ %i.t, %bb.d ], [ %i.y, %bb.e ], [ %i.ad, %bb.f ], [ %i.ai, %bb.g ], [ %1, %bb.h ] ; 2 uses
  %.lcssa3 = phi i64 [ 7, %bb.a ], [ 6, %bb.b ], [ 5, %bb.c ], [ 4, %bb.d ], [ 3, %bb.e ], [ 2, %bb.f ], [ 1, %bb.g ], [ 0, %bb.h ] ; 2 uses
  %.lcssa = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.g ], [ %i.an, %bb.h ]
  br i1 %.lcssa, label %.preheader.preheader, label %bb.j

.preheader.preheader:                             ; preds = %bb.i
  store i64 3978709506094217015, ptr %.lcssa4, align 1
  br label %.loopexit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %.lcssa4, i64 %.024.lcssa.neg, i1 false)
  br i1 %i.ao, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.ap = sub nsw i64 0, %.lcssa3
  %i.aq = getelementptr i8, ptr %i.a, i64 %i.ap
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aq, i8 32, i64 range(i64 0, 8) %.lcssa3, i1 false), !tbaa !31
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %.lr.ph.preheader, %bb.j
  %.029 = phi i32 [ 0, %bb.j ], [ 0, %.lr.ph.preheader ], [ -1, %.preheader.preheader ]
  ret i32 %.029
}

declare i32 @archive_entry_mode(ptr noundef) local_unnamed_addr #2

declare i32 @archive_entry_filetype(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind allocsize(0) }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{null}
!1 = distinct !{!1, !33}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS14archive_vtable", !11, i64 0}
!13 = !{!"p1 omnipotent char", !11, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!"archive_string", !13, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!"p1 _ZTS19archive_string_conv", !11, i64 0}
!17 = !{!"archive", !8, i64 0, !8, i64 4, !12, i64 8, !8, i64 16, !13, i64 24, !8, i64 32, !8, i64 36, !13, i64 40, !15, i64 48, !13, i64 72, !8, i64 80, !8, i64 84, !16, i64 88, !13, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !7, i64 128, !14, i64 136}
!18 = !{!"p1 _ZTS20archive_write_filter", !11, i64 0}
!19 = !{!"archive_write", !17, i64 0, !8, i64 144, !14, i64 152, !14, i64 160, !13, i64 168, !14, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !8, i64 224, !8, i64 228, !18, i64 232, !18, i64 240, !11, i64 248, !13, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !13, i64 320, !11, i64 328, !11, i64 336}
!20 = !{!19, !11, i64 312}
!21 = !{!19, !11, i64 248}
!22 = !{!19, !13, i64 256}
!23 = !{!19, !11, i64 288}
!24 = !{!19, !11, i64 296}
!25 = !{!19, !11, i64 304}
!26 = !{!19, !11, i64 280}
!27 = !{!19, !8, i64 16}
!28 = !{!19, !13, i64 24}
!29 = !{!"ar_w", !14, i64 0, !14, i64 8, !8, i64 16, !8, i64 20, !7, i64 24, !13, i64 32}
!30 = !{!29, !8, i64 16}
!31 = !{!7, !7, i64 0}
!32 = !{!29, !7, i64 24}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!29, !8, i64 20}
!35 = !{!29, !13, i64 32}
!36 = !{!29, !14, i64 0}
!37 = !{!29, !14, i64 8}
!38 = distinct !{!38, !33}
end_hunk_0
