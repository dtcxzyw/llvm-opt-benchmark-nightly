Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/parsedate?download=true
inline.NumInlined: 17
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@parsedate:bb.a
  %.not9.4.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not9.4.i.i, label %.preheader.5.i.i, label %.thread61.i

.preheader.5.i.i:                                 ; preds = %.preheader.4.i.i
  %i.bp = call i32 @curl_strnequal(ptr noundef nonnull %.272, ptr noundef nonnull @.str.12, i64 noundef 3) #4
  %.not9.5.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not9.5.i.i, label %.preheader.6.i.i, label %.thread61.i

.preheader.6.i.i:                                 ; preds = %.preheader.5.i.i
  %i.bq = call i32 @curl_strnequal(ptr noundef nonnull %.272, ptr noundef nonnull @.str.13, i64 noundef 3) #4
  %.not9.6.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not9.6.i.i, label %.preheader.7.i.i, label %.thread61.i

.preheader.7.i.i:                                 ; preds = %.preheader.6.i.i
  %i.br = call i32 @curl_strnequal(ptr noundef nonnull %.272, ptr noundef nonnull @.str.14, i64 noundef 3) #4
  %.not9.7.i.i = icmp eq i32 %i.br, 0
  br i1 %.not9.7.i.i, label %.preheader.8.i.i, label %.thread61.i

.preheader.8.i.i:                                 ; preds = %.preheader.7.i.i
  %i.bs = call i32 @curl_strnequal(ptr noundef nonnull %.272, ptr noundef nonnull @.str.15, i64 noundef 3) #4
  %.not9.8.i.i = icmp eq i32 %i.bs, 0
  br i1 %.not9.8.i.i, label %.preheader.9.i.i, label %.thread61.i

.preheader.9.i.i:                                 ; preds = %.preheader.8.i.i
  %i.bt = call i32 @curl_strnequal(ptr noundef nonnull %.272, ptr noundef nonnull @.str.16, i64 noundef 3) #4
  %.not9.9.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not9.9.i.i, label %.preheader.10.i.i, label %.thread61.i

.preheader.10.i.i:                                ; preds = %.preheader.9.i.i
  %i.bu = call i32 @curl_strnequal(ptr noundef nonnull %.272, ptr noundef nonnull @.str.17, i64 noundef 3) #4
  %.not9.10.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not9.10.i.i, label %.preheader.11.i.i, label %.thread61.i

.preheader.11.i.i:                                ; preds = %.preheader.10.i.i
  %i.bv = call i32 @curl_strnequal(ptr noundef nonnull %.272, ptr noundef nonnull @.str.18, i64 noundef 3) #4
  %.not9.11.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not9.11.i.i, label %select.unfold.i, label %.thread61.i

select.unfold.i:                                  ; preds = %bb.h, %.preheader.11.i.i, %bb.w
  %i.bw = icmp eq i32 %.sroa.39.0140, -1
  %i.bx = icmp samesign ult i64 %.032.i, 5
  %or.cond72.i = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %or.cond72.i, label %bb.x, label %datestring.exit

bb.x:                                             ; preds = %select.unfold.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  call void @curlx_strcopy(ptr noundef nonnull %2, i64 noundef 5, ptr noundef nonnull %.272, i64 noundef range(i64 13, 12) %.032.i) #4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.aa, %bb.x
  %.021.i.i.i = phi i64 [ %.1.i.i.i, %bb.aa ], [ 69, %bb.x ] ; 2 uses
  %.01620.i.i.i = phi i64 [ %.117.i.i.i, %bb.aa ], [ 0, %bb.x ] ; 2 uses
  %i.by = add i64 %.01620.i.i.i, %.021.i.i.i
  %i.bz = lshr i64 %i.by, 1                       ; 3 uses
  %i.ca = shl i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr @tz, i64 %i.ca ; 2 uses
  %i.cc = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %i.cb) #5 ; 2 uses
  %i.cd = icmp slt i32 %i.cc, 0
  br i1 %i.cd, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i.i, label %checktz.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ce = add nuw i64 %i.bz, 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph.i.i.i
  %.117.i.i.i = phi i64 [ %i.ce, %bb.z ], [ %.01620.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.1.i.i.i = phi i64 [ %.021.i.i.i, %bb.z ], [ %i.bz, %.lr.ph.i.i.i ] ; 2 uses
  %i.cf = icmp ult i64 %.117.i.i.i, %.1.i.i.i
  br i1 %i.cf, label %.lr.ph.i.i.i, label %checktz.exit.thread56.i, !llvm.loop !13

checktz.exit.thread56.i:                          ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  br label %datestring.exit

checktz.exit.i:                                   ; preds = %bb.y
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 6
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !22
  %i.ci = sext i16 %i.ch to i32
  %i.cj = mul nsw i32 %i.ci, 60
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  br label %.thread61.i

.thread61.i:                                      ; preds = %.preheader.preheader.i.i, %.preheader.1.i.i, %.preheader.2.i.i, %.preheader.3.i.i, %.preheader.4.i.i, %.preheader.5.i.i, %.preheader.6.i.i, %.preheader.7.i.i, %.preheader.8.i.i, %.preheader.9.i.i, %.preheader.10.i.i, %.preheader.11.i.i, %bb.j, %bb.l, %bb.n, %bb.p, %bb.r, %bb.t, %bb.v, %checktz.exit.i
  %.sroa.0.3 = phi i32 [ %.sroa.0.0133, %checktz.exit.i ], [ 0, %bb.j ], [ 5, %bb.t ], [ 3, %bb.p ], [ 4, %bb.r ], [ 2, %bb.n ], [ 6, %bb.v ], [ 1, %bb.l ], [ %.sroa.0.0133, %.preheader.11.i.i ], [ %.sroa.0.0133, %.preheader.10.i.i ], [ %.sroa.0.0133, %.preheader.9.i.i ], [ %.sroa.0.0133, %.preheader.8.i.i ], [ %.sroa.0.0133, %.preheader.7.i.i ], [ %.sroa.0.0133, %.preheader.6.i.i ], [ %.sroa.0.0133, %.preheader.5.i.i ], [ %.sroa.0.0133, %.preheader.4.i.i ], [ %.sroa.0.0133, %.preheader.3.i.i ], [ %.sroa.0.0133, %.preheader.2.i.i ], [ %.sroa.0.0133, %.preheader.1.i.i ], [ %.sroa.0.0133, %.preheader.preheader.i.i ]
  %.sroa.6.3 = phi i32 [ %.sroa.6.0134, %checktz.exit.i ], [ %.sroa.6.0134, %bb.j ], [ %.sroa.6.0134, %bb.t ], [ %.sroa.6.0134, %bb.p ], [ %.sroa.6.0134, %bb.r ], [ %.sroa.6.0134, %bb.n ], [ %.sroa.6.0134, %bb.v ], [ %.sroa.6.0134, %bb.l ], [ 11, %.preheader.11.i.i ], [ 10, %.preheader.10.i.i ], [ 9, %.preheader.9.i.i ], [ 8, %.preheader.8.i.i ], [ 7, %.preheader.7.i.i ], [ 6, %.preheader.6.i.i ], [ 5, %.preheader.5.i.i ], [ 4, %.preheader.4.i.i ], [ 3, %.preheader.3.i.i ], [ 2, %.preheader.2.i.i ], [ 1, %.preheader.1.i.i ], [ 0, %.preheader.preheader.i.i ]
  %.sroa.39.2 = phi i32 [ %i.cj, %checktz.exit.i ], [ %.sroa.39.0140, %bb.j ], [ %.sroa.39.0140, %bb.t ], [ %.sroa.39.0140, %bb.p ], [ %.sroa.39.0140, %bb.r ], [ %.sroa.39.0140, %bb.n ], [ %.sroa.39.0140, %bb.v ], [ %.sroa.39.0140, %bb.l ], [ %.sroa.39.0140, %.preheader.11.i.i ], [ %.sroa.39.0140, %.preheader.10.i.i ], [ %.sroa.39.0140, %.preheader.9.i.i ], [ %.sroa.39.0140, %.preheader.8.i.i ], [ %.sroa.39.0140, %.preheader.7.i.i ], [ %.sroa.39.0140, %.preheader.6.i.i ], [ %.sroa.39.0140, %.preheader.5.i.i ], [ %.sroa.39.0140, %.preheader.4.i.i ], [ %.sroa.39.0140, %.preheader.3.i.i ], [ %.sroa.39.0140, %.preheader.2.i.i ], [ %.sroa.39.0140, %.preheader.1.i.i ], [ %.sroa.39.0140, %.preheader.preheader.i.i ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.272, i64 %.032.i
  br label %bb.aq

bb.ab:                                            ; preds = %skip.exit
  %i.cl = add i8 %i.p, -48
  %or.cond17 = icmp ult i8 %i.cl, 10
  br i1 %or.cond17, label %bb.ac, label %bb.aq

bb.ac:                                            ; preds = %bb.ab
  %i.cm = icmp eq i32 %.sroa.28.0138, -1
  br i1 %i.cm, label %bb.ad, label %match_time.exit.thread.i

bb.ad:                                            ; preds = %bb.ac
  %i.cn = zext nneg i8 %i.p to i32
  %i.co = add nsw i32 %i.cn, -48                  ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.272, i64 1 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !15  ; 2 uses
  %i.cr = add i8 %i.cq, -48
  %or.cond.i.i.i = icmp ult i8 %i.cr, 10          ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.272, i64 2
  %i.ct = mul nuw nsw i32 %i.co, 10
  %i.cu = zext nneg i8 %i.cq to i32
  %i.cv = add nsw i32 %i.ct, -48
  %i.cw = add nsw i32 %i.cv, %i.cu
  %.1.i.i = select i1 %or.cond.i.i.i, ptr %i.cs, ptr %i.cp ; 4 uses
  %.0.i.i.i = select i1 %or.cond.i.i.i, i32 %i.cw, i32 %i.co ; 5 uses
  %i.cx = icmp slt i32 %.0.i.i.i, 24
  br i1 %i.cx, label %bb.ae, label %match_time.exit.thread.i

bb.ae:                                            ; preds = %bb.ad
  %i.cy = load i8, ptr %.1.i.i, align 1, !tbaa !15
  %i.cz = icmp eq i8 %i.cy, 58
  br i1 %i.cz, label %bb.af, label %match_time.exit.thread.i

bb.af:                                            ; preds = %bb.ae
  %i.da = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !15  ; 2 uses
  %i.dc = add i8 %i.db, -48
  %or.cond.i.i = icmp ult i8 %i.dc, 10
  br i1 %or.cond.i.i, label %bb.ag, label %match_time.exit.thread.i

bb.ag:                                            ; preds = %bb.af
  %i.dd = zext nneg i8 %i.db to i32
  %i.de = add nsw i32 %i.dd, -48                  ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !15  ; 3 uses
  %i.dh = add i8 %i.dg, -48
  %or.cond.i18.i.i = icmp ult i8 %i.dh, 10
  br i1 %or.cond.i18.i.i, label %oneortwodigit.exit20.i.i, label %oneortwodigit.exit20.thread.i.i

oneortwodigit.exit20.i.i:                         ; preds = %bb.ag
  %i.di = mul nuw nsw i32 %i.de, 10
  %i.dj = zext nneg i8 %i.dg to i32
  %i.dk = add nsw i32 %i.di, -48
  %i.dl = add nsw i32 %i.dk, %i.dj                ; 2 uses
  %i.dm = icmp samesign ult i32 %i.dl, 60
  br i1 %i.dm, label %thread-pre-split.i.i, label %match_time.exit.thread.i

thread-pre-split.i.i:                             ; preds = %oneortwodigit.exit20.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 3 ; 2 uses
  %.pr.i.i = load i8, ptr %i.dn, align 1, !tbaa !15
  br label %oneortwodigit.exit20.thread.i.i

oneortwodigit.exit20.thread.i.i:                  ; preds = %thread-pre-split.i.i, %bb.ag
  %i.do = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.dg, %bb.ag ]
  %.0.i1930.i.i = phi i32 [ %i.dl, %thread-pre-split.i.i ], [ %i.de, %bb.ag ] ; 4 uses
  %.229.i.i = phi ptr [ %i.dn, %thread-pre-split.i.i ], [ %i.df, %bb.ag ] ; 5 uses
  %i.dp = icmp eq i8 %i.do, 58
  br i1 %i.dp, label %bb.ah, label %bb.aq

bb.ah:                                            ; preds = %oneortwodigit.exit20.thread.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.229.i.i, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !15  ; 2 uses
  %i.ds = add i8 %i.dr, -48
  %or.cond17.i.i = icmp ult i8 %i.ds, 10
  br i1 %or.cond17.i.i, label %bb.ai, label %bb.aq

bb.ai:                                            ; preds = %bb.ah
  %i.dt = zext nneg i8 %i.dr to i32
  %i.du = add nsw i32 %i.dt, -48                  ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.229.i.i, i64 2 ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !15  ; 2 uses
  %i.dx = add i8 %i.dw, -48
  %or.cond.i21.i.i = icmp ult i8 %i.dx, 10
  br i1 %or.cond.i21.i.i, label %oneortwodigit.exit23.i.i, label %bb.aq

oneortwodigit.exit23.i.i:                         ; preds = %bb.ai
  %i.dy = getelementptr inbounds nuw i8, ptr %.229.i.i, i64 3
  %i.dz = mul nuw nsw i32 %i.du, 10
  %i.ea = zext nneg i8 %i.dw to i32
  %i.eb = add nsw i32 %i.dz, -48
  %i.ec = add nsw i32 %i.eb, %i.ea                ; 2 uses
  %i.ed = icmp samesign ult i32 %i.ec, 61
  br i1 %i.ed, label %bb.aq, label %match_time.exit.thread.i

match_time.exit.thread.i:                         ; preds = %oneortwodigit.exit23.i.i, %oneortwodigit.exit20.i.i, %bb.af, %bb.ae, %bb.ad, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store ptr %.272, ptr %i.b, align 8, !tbaa !19
  %i.ee = call i32 @curlx_str_number(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i64 noundef 99999999) #4
  %.not79.i = icmp eq i32 %i.ee, 0
  br i1 %.not79.i, label %bb.aj, label %.critedge.i20

bb.aj:                                            ; preds = %match_time.exit.thread.i
  %i.ef = load ptr, ptr %i.b, align 8, !tbaa !19  ; 2 uses
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = ptrtoint ptr %.272 to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = trunc i64 %i.ei to i32                  ; 2 uses
  %i.ek = load i64, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.el = trunc i64 %i.ek to i32                  ; 9 uses
  %i.em = icmp eq i32 %.sroa.39.0140, -1
  %i.en = icmp eq i32 %i.ej, 4
  %or.cond.i21 = select i1 %i.em, i1 %i.en, i1 false
  %i.eo = icmp ult i32 %i.el, 1401
  %or.cond3.i = select i1 %or.cond.i21, i1 %i.eo, i1 false
  %i.ep = icmp ult ptr %0, %.272
  %or.cond81.i = and i1 %i.ep, %or.cond3.i
  br i1 %or.cond81.i, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.eq = getelementptr inbounds i8, ptr %.272, i64 -1
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !15  ; 2 uses
  switch i8 %i.er, label %.thread.i [
    i8 43, label %bb.al
    i8 45, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ak
  %.lhs.trunc.i = trunc i64 %i.ek to i16          ; 2 uses
  %i.es = udiv i16 %.lhs.trunc.i, 100
  %narrow.i = mul nuw nsw i16 %i.es, 60
  %i.et = urem i16 %.lhs.trunc.i, 100
  %narrow108.i = add nuw nsw i16 %narrow.i, %i.et
  %i.eu = zext nneg i16 %narrow108.i to i32
  %i.ev = mul nuw nsw i32 %i.eu, 60               ; 2 uses
  %i.ew = icmp eq i8 %i.er, 43
  %i.ex = sub nsw i32 0, %i.ev
  %i.ey = select i1 %i.ew, i32 %i.ex, i32 %i.ev
  br label %.thread101.i

bb.am:                                            ; preds = %bb.aj
  %i.ez = icmp eq i32 %i.ej, 8
  %i.fa = icmp eq i32 %.sroa.33.0139, -1
  %or.cond99 = select i1 %i.ez, i1 %i.fa, i1 false
  %i.fb = icmp eq i32 %.sroa.6.0134, -1
  %or.cond100 = select i1 %or.cond99, i1 %i.fb, i1 false
  %i.fc = icmp eq i32 %.sroa.13.0135, -1
  %or.cond101 = select i1 %or.cond100, i1 %i.fc, i1 false
  br i1 %or.cond101, label %bb.an, label %.thread.i

bb.an:                                            ; preds = %bb.am
  %i.fd = udiv i32 %i.el, 10000
  %3 = urem i32 %i.el, 10000
  %.lhs.trunc106.i = trunc nuw nsw i32 %3 to i16
  %i.fe = udiv i16 %.lhs.trunc106.i, 100
  %.zext107.i = zext nneg i16 %i.fe to i32
  %i.ff = add nsw i32 %.zext107.i, -1
  %4 = urem i32 %i.el, 100
  br label %.thread101.i

.thread.i:                                        ; preds = %bb.am, %bb.ak
  %i.fg = icmp eq i32 %.0132, 0
  br i1 %i.fg, label %bb.ao, label %.thread114.i

bb.ao:                                            ; preds = %.thread.i
  %i.fh = icmp eq i32 %.sroa.13.0135, -1
  br i1 %i.fh, label %bb.ap, label %.critedge.i20

bb.ap:                                            ; preds = %bb.ao
  %i.fi = add i32 %i.el, -1
  %or.cond7.i = icmp ult i32 %i.fi, 31
  br i1 %or.cond7.i, label %.thread101.i, label %.thread114.i

.thread114.i:                                     ; preds = %.thread.i, %bb.ap
  %i.fj = icmp eq i32 %.sroa.33.0139, -1
  br i1 %i.fj, label %.thread96.i, label %.critedge.i20

.thread96.i:                                      ; preds = %.thread114.i
  %i.fk = icmp slt i32 %i.el, 100
  %i.fl = icmp sgt i32 %i.el, 70
  %..i = select i1 %i.fl, i32 1900, i32 2000
  %i.fm = select i1 %i.fk, i32 %..i, i32 0
  %storemerge.i = add nsw i32 %i.fm, %i.el
  %i.fn = icmp ne i32 %.sroa.13.0135, -1
  %spec.select.i = zext i1 %i.fn to i32
  br label %.thread101.i

.thread101.i:                                     ; preds = %bb.ap, %.thread96.i, %bb.an, %bb.al
  %.sroa.6.5 = phi i32 [ %i.ff, %bb.an ], [ %.sroa.6.0134, %.thread96.i ], [ %.sroa.6.0134, %bb.al ], [ %.sroa.6.0134, %bb.ap ]
  %.sroa.13.2 = phi i32 [ %4, %bb.an ], [ %.sroa.13.0135, %.thread96.i ], [ %.sroa.13.0135, %bb.al ], [ %i.el, %bb.ap ]
  %.sroa.33.2 = phi i32 [ %i.fd, %bb.an ], [ %storemerge.i, %.thread96.i ], [ %.sroa.33.0139, %bb.al ], [ %.sroa.33.0139, %bb.ap ]
  %.sroa.39.4 = phi i32 [ %.sroa.39.0140, %bb.an ], [ %.sroa.39.0140, %.thread96.i ], [ %i.ey, %bb.al ], [ %.sroa.39.0140, %bb.ap ]
  %.16699.i = phi i32 [ %.0132, %bb.an ], [ %spec.select.i, %.thread96.i ], [ %.0132, %bb.al ], [ 1, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.aq

.critedge.i20:                                    ; preds = %.thread114.i, %bb.ao, %match_time.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %datestring.exit

bb.aq:                                            ; preds = %bb.ab, %.thread61.i, %oneortwodigit.exit20.thread.i.i, %bb.ah, %bb.ai, %oneortwodigit.exit23.i.i, %.thread101.i
  %.171.ph = phi ptr [ %i.dv, %bb.ai ], [ %.229.i.i, %oneortwodigit.exit20.thread.i.i ], [ %.229.i.i, %bb.ah ], [ %i.dy, %oneortwodigit.exit23.i.i ], [ %i.ef, %.thread101.i ], [ %i.ck, %.thread61.i ], [ %.272, %bb.ab ] ; 2 uses
  %.169.ph = phi i32 [ %.0132, %bb.ai ], [ %.0132, %oneortwodigit.exit20.thread.i.i ], [ %.0132, %bb.ah ], [ %.0132, %oneortwodigit.exit23.i.i ], [ %.16699.i, %.thread101.i ], [ %.0132, %.thread61.i ], [ %.0132, %bb.ab ]
  %.sroa.0.1.ph = phi i32 [ %.sroa.0.0133, %bb.ai ], [ %.sroa.0.0133, %oneortwodigit.exit20.thread.i.i ], [ %.sroa.0.0133, %bb.ah ], [ %.sroa.0.0133, %oneortwodigit.exit23.i.i ], [ %.sroa.0.0133, %.thread101.i ], [ %.sroa.0.3, %.thread61.i ], [ %.sroa.0.0133, %bb.ab ]
  %.sroa.6.1.ph = phi i32 [ %.sroa.6.0134, %bb.ai ], [ %.sroa.6.0134, %oneortwodigit.exit20.thread.i.i ], [ %.sroa.6.0134, %bb.ah ], [ %.sroa.6.0134, %oneortwodigit.exit23.i.i ], [ %.sroa.6.5, %.thread101.i ], [ %.sroa.6.3, %.thread61.i ], [ %.sroa.6.0134, %bb.ab ] ; 2 uses
  %.sroa.13.1.ph = phi i32 [ %.sroa.13.0135, %bb.ai ], [ %.sroa.13.0135, %oneortwodigit.exit20.thread.i.i ], [ %.sroa.13.0135, %bb.ah ], [ %.sroa.13.0135, %oneortwodigit.exit23.i.i ], [ %.sroa.13.2, %.thread101.i ], [ %.sroa.13.0135, %.thread61.i ], [ %.sroa.13.0135, %bb.ab ] ; 2 uses
  %.sroa.20.1.ph = phi i32 [ %.0.i.i.i, %bb.ai ], [ %.0.i.i.i, %oneortwodigit.exit20.thread.i.i ], [ %.0.i.i.i, %bb.ah ], [ %.0.i.i.i, %oneortwodigit.exit23.i.i ], [ %.sroa.20.0136, %.thread101.i ], [ %.sroa.20.0136, %.thread61.i ], [ %.sroa.20.0136, %bb.ab ] ; 2 uses
  %.sroa.24.1.ph = phi i32 [ %.0.i1930.i.i, %bb.ai ], [ %.0.i1930.i.i, %oneortwodigit.exit20.thread.i.i ], [ %.0.i1930.i.i, %bb.ah ], [ %.0.i1930.i.i, %oneortwodigit.exit23.i.i ], [ %.sroa.24.0137, %.thread101.i ], [ %.sroa.24.0137, %.thread61.i ], [ %.sroa.24.0137, %bb.ab ] ; 2 uses
  %.sroa.28.1.ph = phi i32 [ %i.du, %bb.ai ], [ 0, %oneortwodigit.exit20.thread.i.i ], [ 0, %bb.ah ], [ %i.ec, %oneortwodigit.exit23.i.i ], [ %.sroa.28.0138, %.thread101.i ], [ %.sroa.28.0138, %.thread61.i ], [ %.sroa.28.0138, %bb.ab ] ; 2 uses
  %.sroa.33.1.ph = phi i32 [ %.sroa.33.0139, %bb.ai ], [ %.sroa.33.0139, %oneortwodigit.exit20.thread.i.i ], [ %.sroa.33.0139, %bb.ah ], [ %.sroa.33.0139, %oneortwodigit.exit23.i.i ], [ %.sroa.33.2, %.thread101.i ], [ %.sroa.33.0139, %.thread61.i ], [ %.sroa.33.0139, %bb.ab ] ; 2 uses
  %.sroa.39.1.ph = phi i32 [ %.sroa.39.0140, %bb.ai ], [ %.sroa.39.0140, %oneortwodigit.exit20.thread.i.i ], [ %.sroa.39.0140, %bb.ah ], [ %.sroa.39.0140, %oneortwodigit.exit23.i.i ], [ %.sroa.39.4, %.thread101.i ], [ %.sroa.39.2, %.thread61.i ], [ %.sroa.39.0140, %bb.ab ] ; 2 uses
  %i.fo = add nuw nsw i32 %.09141, 1
  %i.fp = load i8, ptr %.171.ph, align 1, !tbaa !15 ; 2 uses
  %i.fq = icmp ne i8 %i.fp, 0
  %i.fr = icmp samesign ult i32 %.09141, 5
  %i.fs = select i1 %i.fq, i1 %i.fr, i1 false
  br i1 %i.fs, label %.lr.ph, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %bb.aq, %bb.a
  %.sroa.6.0.lcssa = phi i32 [ -1, %bb.a ], [ %.sroa.6.1.ph, %bb.aq ] ; 4 uses
  %.sroa.13.0.lcssa = phi i32 [ -1, %bb.a ], [ %.sroa.13.1.ph, %bb.aq ] ; 3 uses
  %.sroa.20.0.lcssa = phi i32 [ -1, %bb.a ], [ %.sroa.20.1.ph, %bb.aq ]
  %.sroa.24.0.lcssa = phi i32 [ -1, %bb.a ], [ %.sroa.24.1.ph, %bb.aq ]
  %.sroa.28.0.lcssa = phi i32 [ -1, %bb.a ], [ %.sroa.28.1.ph, %bb.aq ] ; 2 uses
  %.sroa.33.0.lcssa = phi i32 [ -1, %bb.a ], [ %.sroa.33.1.ph, %bb.aq ] ; 3 uses
  %.sroa.39.0.lcssa = phi i32 [ -1, %bb.a ], [ %.sroa.39.1.ph, %bb.aq ] ; 2 uses
  %i.ft = icmp eq i32 %.sroa.28.0.lcssa, -1       ; 3 uses
  %.sroa.20.4 = select i1 %i.ft, i32 0, i32 %.sroa.20.0.lcssa
  %.sroa.24.4 = select i1 %i.ft, i32 0, i32 %.sroa.24.0.lcssa ; 2 uses
  %.sroa.28.4 = select i1 %i.ft, i32 0, i32 %.sroa.28.0.lcssa ; 2 uses
  %i.fu = icmp eq i32 %.sroa.13.0.lcssa, -1
  %i.fv = icmp eq i32 %.sroa.6.0.lcssa, -1
  %or.cond102 = select i1 %i.fu, i1 true, i1 %i.fv
  %i.fw = icmp slt i32 %.sroa.33.0.lcssa, 1583
  %or.cond103 = select i1 %or.cond102, i1 true, i1 %i.fw
  br i1 %or.cond103, label %datestring.exit, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge
  %i.fx = icmp slt i32 %.sroa.13.0.lcssa, 32
  %i.fy = icmp slt i32 %.sroa.6.0.lcssa, 12
  %or.cond.i22.not154 = and i1 %i.fy, %i.fx
  %i.fz = icmp slt i32 %.sroa.24.4, 60
  %or.cond105.not149 = select i1 %or.cond.i22.not154, i1 %i.fz, i1 false
  %i.ga = icmp slt i32 %.sroa.28.4, 61
  %or.cond107 = select i1 %or.cond105.not149, i1 %i.ga, i1 false
  br i1 %or.cond107, label %.thread.i26, label %datestring.exit

.thread.i26:                                      ; preds = %bb.ar
  %i.gb = icmp slt i32 %.sroa.6.0.lcssa, 2
  %.neg.i = sext i1 %i.gb to i32
  %i.gc = add nsw i32 %.sroa.33.0.lcssa, %.neg.i  ; 3 uses
  %i.gd = lshr i32 %i.gc, 2
  %.neg12.i97 = udiv i32 %i.gc, 100
  %i.ge = udiv i32 %i.gc, 400
  %i.gf = add nsw i32 %i.gd, -477
  %i.gg = sub nsw i32 %i.gf, %.neg12.i97
  %i.gh = add nsw i32 %i.gg, %i.ge
  %i.gi = add nsw i32 %.sroa.33.0.lcssa, -1970
  %i.gj = sext i32 %i.gi to i64
  %i.gk = mul nsw i64 %i.gj, 365
  %i.gl = sext i32 %i.gh to i64
  %i.gm = zext nneg i32 %.sroa.6.0.lcssa to i64
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr @time2epoch.cumulative_days, i64 %i.gm
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !23
  %i.gp = sext i32 %i.go to i64
  %i.gq = sext i32 %.sroa.13.0.lcssa to i64
  %i.gr = add nsw i64 %i.gk, %i.gq
  %i.gs = add nsw i64 %i.gr, %i.gl
  %i.gt = add nsw i64 %i.gs, %i.gp
  %i.gu = mul nsw i64 %i.gt, 24
  %i.gv = sext i32 %.sroa.20.4 to i64
  %i.gw = add nsw i64 %i.gv, -24
  %i.gx = add nsw i64 %i.gw, %i.gu
  %i.gy = mul nsw i64 %i.gx, 60
  %i.gz = sext i32 %.sroa.24.4 to i64
  %i.ha = add nsw i64 %i.gy, %i.gz
  %i.hb = mul nsw i64 %i.ha, 60
  %i.hc = sext i32 %.sroa.28.4 to i64
  %i.hd = icmp eq i32 %.sroa.39.0.lcssa, -1
  %spec.select = select i1 %i.hd, i32 0, i32 %.sroa.39.0.lcssa
  %i.he = sext i32 %spec.select to i64
  %i.hf = add nsw i64 %i.he, %i.hc
  %i.hg = add nsw i64 %i.hf, %i.hb
  store i64 %i.hg, ptr %1, align 8, !tbaa !10
  br label %datestring.exit

datestring.exit:                                  ; preds = %.critedge.i, %select.unfold.i, %bb.ar, %._crit_edge, %checktz.exit.thread56.i, %.critedge.i20, %.thread.i26
  %.010 = phi i32 [ 0, %.thread.i26 ], [ -1, %._crit_edge ], [ -1, %.critedge.i20 ], [ -1, %checktz.exit.thread56.i ], [ -1, %bb.ar ], [ -1, %select.unfold.i ], [ -1, %.critedge.i ]
  ret i32 %.010
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @Curl_getdate_capped(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @parsedate(ptr noundef %0, ptr noundef %1)
  %i.b = icmp eq i32 %i.a, -1
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

declare i32 @curl_strnequal(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @curlx_strcopy(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

declare i32 @curlx_str_number(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"long", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = distinct !{!11, !16}
!12 = distinct !{!12, !16}
!13 = distinct !{!13, !16}
!14 = distinct !{!14, !16}
!15 = !{!5, !5, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"any pointer", !5, i64 0}
!18 = !{!"p1 omnipotent char", !17, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"short", !5, i64 0}
!21 = !{!"tzinfo", !5, i64 0, !20, i64 6}
!22 = !{!21, !20, i64 6}
!23 = !{!6, !6, i64 0}
end_hunk_0
