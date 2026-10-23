Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/asn?download=true
inline.NumInlined: 284
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 75
begin_hunk_0_@ParseCertRelative:bb.a
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !270 ; 4 uses
  %.not215 = icmp eq ptr %i.ep, null
  br i1 %.not215, label %.critedge, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  switch i32 %2, label %bb.at [
    i32 5, label %bb.as
    i32 3, label %bb.as
    i32 1, label %bb.as
  ]

bb.as:                                            ; preds = %bb.ar, %bb.ar, %bb.ar
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !120
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !59 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !104 ; 2 uses
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !105
  %i.fa = sub i32 %i.ez, %i.ev
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !118
  %i.fd = load i32, ptr %i.ep, align 8, !tbaa !119
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !106
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !107
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !103
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !108
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !109
  %i.fq = tail call i32 @ConfirmSignature(ptr noundef nonnull %i.e, ptr noundef %i.ex, i32 noundef %i.fa, ptr noundef %i.fc, i32 noundef %i.fd, i32 noundef %i.er, ptr noundef %i.ff, i32 noundef %i.fh, i32 noundef %i.fj, ptr noundef %i.fn, i32 noundef %i.fp, ptr poison) ; 2 uses
  %.not216 = icmp eq i32 %i.fq, 0
  br i1 %.not216, label %bb.at, label %.critedge

bb.at:                                            ; preds = %bb.ar, %bb.as
  %.4 = phi i32 [ 0, %bb.as ], [ %.3, %bb.ar ]    ; 3 uses
  switch i32 %2, label %.thread238 [
    i32 5, label %bb.au
    i32 4, label %bb.au
    i32 3, label %bb.au
    i32 1, label %bb.au
  ]

bb.au:                                            ; preds = %bb.at, %bb.at, %bb.at, %bb.at
  %i.fr = load ptr, ptr %i.eo, align 8, !tbaa !270 ; 6 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %.critedge, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 48
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !121 ; 3 uses
  %i.fv = icmp eq ptr %i.fu, null
  br i1 %i.fv, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 40
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !122
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fr, i64 14
  %i.ga = load i8, ptr %i.fz, align 2
  %i.gb = and i8 %i.ga, 4
  %.not.i = icmp eq i8 %i.gb, 0
  br i1 %.not.i, label %.thread238, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.gg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fr, i64 40 ; 2 uses
  br label %bb.az

bb.az:                                            ; preds = %.critedge.i, %bb.ay
  %indvars.iv.i = phi i64 [ 0, %bb.ay ], [ %indvars.iv.next.i, %.critedge.i ] ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr @__const.ConfirmNameConstraints.nameTypes, i64 %indvars.iv.i
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !15  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.gs = zext i8 %i.gr to i32
  switch i8 %i.gr, label %.loopexit.i [
    i8 2, label %bb.ba
    i8 7, label %bb.bb
    i8 1, label %bb.bc
    i8 4, label %bb.be
    i8 6, label %bb.bg
    i8 0, label %bb.bh
    i8 8, label %bb.bi
  ]

bb.ba:                                            ; preds = %bb.az
  %i.gt = load ptr, ptr %i.gc, align 8, !tbaa !75 ; 2 uses
  %i.gu = load ptr, ptr %i.gn, align 8, !tbaa !73 ; 2 uses
  %.not59.i = icmp ne ptr %i.gu, null
  %i.gv = icmp eq ptr %i.gt, null
  %or.cond.i = select i1 %.not59.i, i1 %i.gv, i1 false
  br i1 %or.cond.i, label %.thread.i, label %bb.bj

.thread.i:                                        ; preds = %bb.ba
  store i32 2, ptr %i.gg, align 8, !tbaa !113
  %i.gw = load i32, ptr %i.go, align 8, !tbaa !88 ; 2 uses
  store i32 %i.gw, ptr %i.gi, align 4, !tbaa !69
  store ptr %i.gu, ptr %i.gj, align 8, !tbaa !68
  br label %._crit_edge.i

bb.bb:                                            ; preds = %bb.az
  %i.gx = load ptr, ptr %i.gc, align 8, !tbaa !75
  br label %bb.bj

bb.bc:                                            ; preds = %bb.az
  %i.gy = load ptr, ptr %i.gk, align 8, !tbaa !76 ; 2 uses
  %i.gz = load ptr, ptr %i.gl, align 8, !tbaa !89 ; 2 uses
  %.not58.i = icmp eq ptr %i.gz, null
  br i1 %.not58.i, label %bb.bj, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store i32 1, ptr %i.gg, align 8, !tbaa !113
  %i.ha = load i32, ptr %i.gm, align 8, !tbaa !90 ; 2 uses
  store i32 %i.ha, ptr %i.gi, align 4, !tbaa !69
  store ptr %i.gz, ptr %i.gj, align 8, !tbaa !68
  br label %bb.bj

bb.be:                                            ; preds = %bb.az
  %i.hb = load ptr, ptr %i.ge, align 8, !tbaa !77 ; 2 uses
  %i.hc = load ptr, ptr %i.gf, align 8, !tbaa !86 ; 2 uses
  %.not57.i = icmp eq ptr %i.hc, null
  br i1 %.not57.i, label %bb.bj, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store i32 4, ptr %i.gg, align 8, !tbaa !113
  %i.hd = load i32, ptr %i.gh, align 8, !tbaa !87 ; 2 uses
  store i32 %i.hd, ptr %i.gi, align 4, !tbaa !69
  store ptr %i.hc, ptr %i.gj, align 8, !tbaa !68
  br label %bb.bj

bb.bg:                                            ; preds = %bb.az
  %i.he = load ptr, ptr %i.gc, align 8, !tbaa !75
  br label %bb.bj

bb.bh:                                            ; preds = %bb.az
  %i.hf = load ptr, ptr %i.gd, align 8, !tbaa !78
  br label %bb.bj

bb.bi:                                            ; preds = %bb.az
  %i.hg = load ptr, ptr %i.gc, align 8, !tbaa !75
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba
  %i.hh = phi i1 [ false, %bb.bh ], [ false, %bb.bi ], [ false, %bb.ba ], [ false, %bb.bb ], [ true, %bb.bd ], [ false, %bb.bc ], [ true, %bb.bf ], [ false, %bb.be ], [ false, %bb.bg ] ; 2 uses
  %i.hi = phi i32 [ 0, %bb.bh ], [ 0, %bb.bi ], [ 0, %bb.ba ], [ 0, %bb.bb ], [ %i.ha, %bb.bd ], [ 0, %bb.bc ], [ %i.hd, %bb.bf ], [ 0, %bb.be ], [ 0, %bb.bg ] ; 2 uses
  %.0.i = phi ptr [ %i.hf, %bb.bh ], [ %i.hg, %bb.bi ], [ %i.gt, %bb.ba ], [ %i.gx, %bb.bb ], [ %i.gy, %bb.bd ], [ %i.gy, %bb.bc ], [ %i.hb, %bb.bf ], [ %i.hb, %bb.be ], [ %i.he, %bb.bg ] ; 2 uses
  %.not6067.i = icmp eq ptr %.0.i, null
  br i1 %.not6067.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bj, %bb.bm
  %.168.i = phi ptr [ %i.hp, %bb.bm ], [ %.0.i, %bb.bj ] ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.168.i, i64 8
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !113
  %i.hl = icmp eq i32 %i.hk, %i.gs
  br i1 %i.hl, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %.lr.ph.i
  %i.hm = tail call fastcc i32 @IsInExcludedList(ptr noundef %.168.i, ptr noundef %i.fu, i8 noundef zeroext %i.gr)
  %.not63.i = icmp eq i32 %i.hm, 0
  br i1 %.not63.i, label %bb.bl, label %.loopexit.i

bb.bl:                                            ; preds = %bb.bk
  %i.hn = load ptr, ptr %i.gp, align 8, !tbaa !122
  %i.ho = tail call fastcc i32 @PermittedListOk(ptr noundef %.168.i, ptr noundef %i.hn, i8 noundef zeroext %i.gr)
  %.not64.not.i = icmp eq i32 %i.ho, 0
  br i1 %.not64.not.i, label %.loopexit.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %.lr.ph.i
  %i.hp = load ptr, ptr %.168.i, align 8, !tbaa !66 ; 2 uses
  %.not60.i = icmp eq ptr %i.hp, null
  br i1 %.not60.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !266

._crit_edge.i:                                    ; preds = %bb.bm, %bb.bj, %.thread.i
  %i.hq = phi i32 [ %i.gw, %.thread.i ], [ %i.hi, %bb.bj ], [ %i.hi, %bb.bm ]
  %i.hr = phi i1 [ true, %.thread.i ], [ %i.hh, %bb.bj ], [ %i.hh, %bb.bm ]
  %i.hs = icmp sgt i32 %i.hq, 0
  %or.cond4.i = and i1 %i.hs, %i.hr
  br i1 %or.cond4.i, label %bb.bn, label %.critedge.i

bb.bn:                                            ; preds = %._crit_edge.i
  %i.ht = call fastcc i32 @IsInExcludedList(ptr noundef %5, ptr noundef %i.fu, i8 noundef zeroext %i.gr)
  %.not61.i = icmp eq i32 %i.ht, 0
  br i1 %.not61.i, label %bb.bo, label %.loopexit.i

bb.bo:                                            ; preds = %bb.bn
  %i.hu = load ptr, ptr %i.gp, align 8, !tbaa !122
  %i.hv = call fastcc i32 @PermittedListOk(ptr noundef %5, ptr noundef %i.hu, i8 noundef zeroext %i.gr)
  %.not62.not.i = icmp eq i32 %i.hv, 0
  br i1 %.not62.not.i, label %.loopexit.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.bo, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 7
  br i1 %exitcond.not.i, label %ConfirmNameConstraints.exit, label %bb.az, !llvm.loop !267

.loopexit.i:                                      ; preds = %bb.bo, %bb.bn, %bb.az, %bb.bl, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %.critedge

ConfirmNameConstraints.exit:                      ; preds = %.critedge.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.fr, i64 14
  %i.hx = load i8, ptr %i.hw, align 2
  %i.hy = and i8 %i.hx, 6
  %or.cond65.not.i.not = icmp eq i8 %i.hy, 6
  br i1 %or.cond65.not.i.not, label %.critedge, label %.thread238

.thread238:                                       ; preds = %bb.ax, %bb.ae, %bb.an, %bb.at, %switch.early.test220, %switch.early.test220, %bb.ap, %ConfirmNameConstraints.exit
  %.5 = phi i32 [ %.4, %ConfirmNameConstraints.exit ], [ %.4, %bb.at ], [ %.3, %switch.early.test220 ], [ %.3, %bb.ap ], [ %.3, %switch.early.test220 ], [ %.2, %bb.ae ], [ %.2, %bb.an ], [ %.4, %bb.ax ]
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !269 ; 2 uses
  %i.ib = icmp ne i32 %i.ia, 0
  %i.ic = icmp ne i32 %2, 5
  %or.cond28 = and i1 %i.ic, %i.ib
  br i1 %or.cond28, label %.critedge, label %bb.bp

bb.bp:                                            ; preds = %.thread238
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 1028
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !271 ; 2 uses
  %.not218 = icmp eq i32 %i.ie, 0
  %.5. = select i1 %.not218, i32 %.5, i32 %i.ie
  br label %.critedge

.critedge:                                        ; preds = %.loopexit.i, %bb.au, %bb.i, %bb.h, %bb.bp, %.thread238, %bb.aq, %ConfirmNameConstraints.exit, %bb.an, %bb.ae, %bb.r, %bb.o, %bb.j, %bb.e, %bb.a, %bb.as
  %.4172 = phi i32 [ -173, %bb.a ], [ -226, %bb.j ], [ -132, %bb.o ], [ -188, %bb.aq ], [ %.5., %bb.bp ], [ %i.ia, %.thread238 ], [ -238, %bb.an ], [ %i.fq, %bb.as ], [ -198, %ConfirmNameConstraints.exit ], [ -238, %bb.ae ], [ %.1167, %bb.r ], [ %i.j, %bb.e ], [ -140, %bb.i ], [ -140, %bb.h ], [ -198, %bb.au ], [ -198, %.loopexit.i ]
  ret i32 %.4172
}

; Function Attrs: nounwind uwtable
define i32 @wc_ParseCert(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @ParseCert(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -202, 1) i32 @wc_GetDecodedCertSubject(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 413 ; 2 uses
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #25 ; 2 uses
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %2, align 4, !tbaa !26
  %i.h = icmp ult i32 %i.g, %i.e
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = and i64 %i.d, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %i.c, i64 %i.i, i1 false)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.d
  %.0.ph = phi i32 [ 0, %bb.d ], [ -202, %bb.b ]
  store i32 %i.e, ptr %2, align 4, !tbaa !26
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c, %bb.a
  %.0 = phi i32 [ -173, %bb.a ], [ -132, %bb.c ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -202, 1) i32 @wc_GetDecodedCertIssuer(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 157 ; 2 uses
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #25 ; 2 uses
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %2, align 4, !tbaa !26
  %i.h = icmp ult i32 %i.g, %i.e
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = and i64 %i.d, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %i.c, i64 %i.i, i1 false)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.d
  %.0.ph = phi i32 [ 0, %bb.d ], [ -202, %bb.b ]
  store i32 %i.e, ptr %2, align 4, !tbaa !26
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c, %bb.a
  %.0 = phi i32 [ -173, %bb.a ], [ -132, %bb.c ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -202, 1) i32 @wc_GetDecodedCertSerial(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 736
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.e = load i32, ptr %2, align 4, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !102  ; 2 uses
  %i.h = icmp ult i32 %i.e, %i.g
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.j = sext i32 %i.g to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 8 %i.i, i64 %i.j, i1 false)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.e
  %.sink.in = phi ptr [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  %.0.ph = phi i32 [ 0, %bb.e ], [ -202, %bb.c ]
  %.sink = load i32, ptr %.sink.in, align 8, !tbaa !102
  store i32 %.sink, ptr %2, align 4, !tbaa !26
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d, %bb.a
  %.0 = phi i32 [ -173, %bb.a ], [ -132, %bb.d ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 1) i32 @wc_GetSubjectPubKeyInfoDerFromCert(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca [1 x %struct.DecodedCert], align 16 ; 12 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq i32 %1, 0
  %or.cond = or i1 %i.b, %i.c
  %i.d = icmp eq ptr %3, null
  %or.cond3 = or i1 %or.cond, %i.d
  br i1 %or.cond3, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1240) %4, i8 0, i64 1240, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 156
  store i8 12, ptr %i.e, align 4, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 680
  store ptr %0, ptr %i.f, align 8, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 692
  store i32 %1, ptr %i.g, align 4, !tbaa !60
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 854
  store i16 127, ptr %i.h, align 2, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 952
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.i, i8 0, i64 72, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 992
  store i32 -2, ptr %i.j, align 16, !tbaa !63
end_hunk_0
