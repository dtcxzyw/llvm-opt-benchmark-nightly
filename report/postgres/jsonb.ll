Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/jsonb?download=true
inline.NumInlined: 135
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@datum_to_jsonb_internal:bb.a
  %i.gb = tail call ptr @JsonbIteratorInit(ptr noundef nonnull %i.ga) #10
  store ptr %i.gb, ptr %i.m, align 8
  %i.gc = load i32, ptr %i.ga, align 4
  %i.gd = and i32 %i.gc, 268435456
  %.not = icmp ne i32 %i.gd, 0                    ; 2 uses
  br i1 %.not, label %bb.ay, label %.preheader

.preheader:                                       ; preds = %bb.ax
  %i.ge = call i32 @JsonbIteratorNext(ptr noundef nonnull %i.m, ptr noundef nonnull %8, i1 noundef zeroext false) #10 ; 2 uses
  %.not106116 = icmp eq i32 %i.ge, 0
  br i1 %.not106116, label %.loopexit, label %.lr.ph

bb.ay:                                            ; preds = %bb.ax
  %i.gf = call i32 @JsonbIteratorNext(ptr noundef nonnull %i.m, ptr noundef nonnull %8, i1 noundef zeroext true) #10 ; 0 uses
  %i.gg = call i32 @JsonbIteratorNext(ptr noundef nonnull %i.m, ptr noundef nonnull %8, i1 noundef zeroext true) #10 ; 0 uses
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.gh = phi i32 [ %i.gk, %.lr.ph ], [ %i.ge, %.preheader ] ; 2 uses
  %i.gi = and i32 %i.gh, -4
  %i.gj = icmp eq i32 %i.gi, 4
  %. = select i1 %i.gj, ptr null, ptr %8
  call void @pushJsonbValue(ptr noundef %2, i32 noundef %i.gh, ptr noundef %.) #10
  %i.gk = call i32 @JsonbIteratorNext(ptr noundef nonnull %i.m, ptr noundef nonnull %8, i1 noundef zeroext false) #10 ; 2 uses
  %.not106 = icmp eq i32 %i.gk, 0
  br i1 %.not106, label %.loopexit, label %.lr.ph, !llvm.loop !16

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #10
  br label %checkStringLen.exit

bb.az:                                            ; preds = %bb.e
  switch i32 %4, label %bb.bf [
    i32 1047, label %bb.ba
    i32 1045, label %bb.ba
    i32 47, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az, %bb.az, %bb.az
  %i.gl = inttoptr i64 %0 to ptr
  %i.gm = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.gl) #10 ; 5 uses
  %i.gn = load i8, ptr %i.gm, align 1             ; 2 uses
  %i.go = zext i8 %i.gn to i32                    ; 2 uses
  %i.gp = icmp eq i8 %i.gn, 1
  br i1 %i.gp, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.gq = getelementptr i8, ptr %i.gm, i64 1
  %.val.i109 = load i8, ptr %i.gq, align 1        ; 2 uses
  %i.gr = add i8 %.val.i109, -1
  %or.cond.i.i.i = icmp ult i8 %i.gr, 3
  %i.gs = icmp eq i8 %.val.i109, 18
  %i.gt = select i1 %i.gs, i32 16, i32 0
  %i.gu = select i1 %or.cond.i.i.i, i32 8, i32 %i.gt
  br label %VARSIZE_ANY_EXHDR.exit

bb.bc:                                            ; preds = %bb.ba
  %i.gv = and i32 %i.go, 1
  %.not.i = icmp eq i32 %i.gv, 0
  br i1 %.not.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gw = lshr i32 %i.go, 1
  %i.gx = add nsw i32 %i.gw, -1
  br label %VARSIZE_ANY_EXHDR.exit

bb.be:                                            ; preds = %bb.bc
  %i.gy = load i32, ptr %i.gm, align 4
  %i.gz = lshr i32 %i.gy, 2
  %i.ha = add nsw i32 %i.gz, -4
  br label %VARSIZE_ANY_EXHDR.exit

VARSIZE_ANY_EXHDR.exit:                           ; preds = %bb.bb, %bb.bd, %bb.be
  %.0.i108 = phi i32 [ %i.gu, %bb.bb ], [ %i.gx, %bb.bd ], [ %i.ha, %bb.be ] ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.0.i108, ptr %i.hb, align 8
  %i.hc = load i8, ptr %i.gm, align 1
  %i.hd = and i8 %i.hc, 1
  %.not.i110 = icmp eq i8 %i.hd, 0
  %.v.i = select i1 %.not.i110, i64 4, i64 1
  %i.he = getelementptr inbounds nuw i8, ptr %i.gm, i64 %.v.i
  br label %bb.bg

bb.bf:                                            ; preds = %bb.az
  %i.hf = tail call ptr @OidOutputFunctionCall(i32 noundef %4, i64 noundef %0) #10 ; 2 uses
  %i.hg = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hf) #9
  %i.hh = trunc i64 %i.hg to i32                  ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.hh, ptr %i.hi, align 8
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %VARSIZE_ANY_EXHDR.exit
  %.sink132 = phi ptr [ %i.hf, %bb.bf ], [ %i.he, %VARSIZE_ANY_EXHDR.exit ]
  %i.hj = phi i32 [ %i.hh, %bb.bf ], [ %.0.i108, %VARSIZE_ANY_EXHDR.exit ]
  %i.hk = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %.sink132, ptr %i.hk, align 8
  store i32 1, ptr %8, align 8
  %i.hl = icmp ult i32 %i.hj, 268435456
  br i1 %i.hl, label %checkStringLen.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hm = tail call zeroext i1 @errsave_start(ptr noundef null, ptr noundef null) #10
  br i1 %i.hm, label %bb.bi, label %checkStringLen.exit

bb.bi:                                            ; preds = %bb.bh
  %i.hn = tail call i32 @errcode(i32 noundef 261) #10 ; 0 uses
  %i.ho = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.38) #10 ; 0 uses
  %i.hp = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.39, i32 noundef 268435455) #10 ; 0 uses
  tail call void @errsave_finish(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 276, ptr noundef nonnull @__func__.checkStringLen) #10
  br label %checkStringLen.exit

checkStringLen.exit:                              ; preds = %bb.bi, %bb.bh, %bb.bg, %.loopexit, %bb.aw, %composite_to_jsonb.exit, %array_to_jsonb_internal.exit
  %.1 = phi i1 [ false, %bb.aw ], [ %.not, %.loopexit ], [ false, %array_to_jsonb_internal.exit ], [ false, %composite_to_jsonb.exit ], [ false, %bb.bg ], [ false, %bb.bh ], [ false, %bb.bi ]
  %i.hq = add i32 %3, -11
  %i.hr = icmp ult i32 %i.hq, -5
  %or.cond23.not = or i1 %i.hr, %.1
  br i1 %or.cond23.not, label %checkStringLen.exit.thread, label %bb.bo

checkStringLen.exit.thread:                       ; preds = %bb.b, %bb.as, %bb.at, %bb.au, %bb.ah, %bb.ag, %bb.ar, %.critedge, %checkStringLen.exit
  %i.hs = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ht = load ptr, ptr %i.hs, align 8            ; 2 uses
  %i.hu = icmp eq ptr %i.ht, null
  br i1 %i.hu, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %checkStringLen.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  store i32 16, ptr %11, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hw = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i8 1, ptr %i.hw, align 8
  store i32 1, ptr %i.hv, align 8
  call void @pushJsonbValue(ptr noundef nonnull %2, i32 noundef 4, ptr noundef nonnull %11) #10
  call void @pushJsonbValue(ptr noundef nonnull %2, i32 noundef 3, ptr noundef nonnull %8) #10
  call void @pushJsonbValue(ptr noundef nonnull %2, i32 noundef 5, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  br label %bb.bo

bb.bk:                                            ; preds = %checkStringLen.exit.thread
  %i.hx = load i32, ptr %i.ht, align 8
  switch i32 %i.hx, label %bb.bn [
    i32 16, label %bb.bl
    i32 17, label %bb.bm
  ]

bb.bl:                                            ; preds = %bb.bk
  call void @pushJsonbValue(ptr noundef nonnull %2, i32 noundef 3, ptr noundef nonnull %8) #10
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bk
  %i.hy = select i1 %5, i32 1, i32 2
  call void @pushJsonbValue(ptr noundef nonnull %2, i32 noundef %i.hy, ptr noundef nonnull %8) #10
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bk
  %i.hz = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.ia = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.37) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 887, ptr noundef nonnull @__func__.datum_to_jsonb_internal) #10
  unreachable

bb.bo:                                            ; preds = %bb.bj, %bb.bm, %bb.bl, %checkStringLen.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  ret void
}

declare ptr @JsonbValueToJsonb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @jsonb_build_object_worker(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 12 uses
  %i.b = alloca i32, align 4                      ; 12 uses
  %6 = alloca %struct.JsonbInState, align 8       ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.c = and i32 %0, 1
  %.not24 = icmp eq i32 %i.c, 0
  br i1 %.not24, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.e = tail call i32 @errcode(i32 noundef 50856066) #10 ; 0 uses
  %i.f = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.17) #10 ; 0 uses
  %i.g = tail call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1142, ptr noundef nonnull @__func__.jsonb_build_object_worker) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = zext i1 %5 to i8
  %i.i = zext i1 %4 to i8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false)
  call void @pushJsonbValue(ptr noundef nonnull %6, i32 noundef 6, ptr noundef null) #10
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i8 %i.h, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 49
  store i8 %i.i, ptr %i.m, align 1
  %i.n = icmp sgt i32 %0, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %7 = zext nneg i32 %0 to i64                    ; 3 uses
  br i1 %4, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %5, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %add_jsonb.exit.us.us
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %add_jsonb.exit.us.us ], [ 0, %.lr.ph.split.us ] ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv47
  %i.p = load i8, ptr %i.o, align 1, !range !6, !noundef !7
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %.split.us, label %.critedge.us.us

.critedge.us.us:                                  ; preds = %.lr.ph.split.us.split.us
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv47
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv47
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.split29.us, label %add_jsonb.exit.us.us

add_jsonb.exit.us.us:                             ; preds = %.critedge.us.us
  call void @json_categorize_type(i32 noundef %i.u, i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #10
  %.pre.i.us.us = load i32, ptr %i.a, align 4
  %.pre6.i.us.us = load i32, ptr %i.b, align 4
  call fastcc void @datum_to_jsonb_internal(i64 noundef %i.s, i1 noundef zeroext false, ptr noundef nonnull %6, i32 noundef %.pre.i.us.us, i32 noundef %.pre6.i.us.us, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %8 = or disjoint i64 %indvars.iv47, 1           ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %8
  %i.z = load i8, ptr %i.y, align 1, !range !6, !noundef !7
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %8
  %i.ac = load i32, ptr %i.ab, align 4
  call fastcc void @add_jsonb(i64 noundef %i.x, i1 noundef zeroext %i.aa, ptr noundef %6, i32 noundef %i.ac, i1 noundef zeroext false)
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 2 ; 2 uses
  %9 = icmp samesign ult i64 %indvars.iv.next48, %7
  br i1 %9, label %.lr.ph.split.us.split.us, label %._crit_edge, !llvm.loop !17

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %bb.e
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %bb.e ], [ 0, %.lr.ph.split.us ] ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv44 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !range !6, !noundef !7
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %.split.us, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us.split
  %i.ag = getelementptr i8, ptr %i.ad, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !range !6, !noundef !7
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.e, label %.critedge.us

.critedge.us:                                     ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv44
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv44
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.split29.us, label %add_jsonb.exit.us

add_jsonb.exit.us:                                ; preds = %.critedge.us
  call void @json_categorize_type(i32 noundef %i.am, i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #10
  %.pre.i.us = load i32, ptr %i.a, align 4
  %.pre6.i.us = load i32, ptr %i.b, align 4
  call fastcc void @datum_to_jsonb_internal(i64 noundef %i.ak, i1 noundef zeroext false, ptr noundef nonnull %6, i32 noundef %.pre.i.us, i32 noundef %.pre6.i.us, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %10 = or disjoint i64 %indvars.iv44, 1          ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %10
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %10
  %i.ar = load i8, ptr %i.aq, align 1, !range !6, !noundef !7
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %10
  %i.au = load i32, ptr %i.at, align 4
  call fastcc void @add_jsonb(i64 noundef %i.ap, i1 noundef zeroext %i.as, ptr noundef %6, i32 noundef %i.au, i1 noundef zeroext false)
  br label %bb.e

bb.e:                                             ; preds = %add_jsonb.exit.us, %bb.d
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 2 ; 2 uses
  %11 = icmp samesign ult i64 %indvars.iv.next45, %7
  br i1 %11, label %.lr.ph.split.us.split, label %._crit_edge, !llvm.loop !17

.lr.ph.split:                                     ; preds = %.lr.ph, %add_jsonb.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %add_jsonb.exit ], [ 0, %.lr.ph ] ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.aw = load i8, ptr %i.av, align 1, !range !6, !noundef !7
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %.split.us, label %.critedge

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split.us
  %.us-phi.in = phi i64 [ %indvars.iv44, %.lr.ph.split.us.split ], [ %indvars.iv47, %.lr.ph.split.us.split.us ], [ %indvars.iv, %.lr.ph.split ]
  %.us-phi = trunc i64 %.us-phi.in to i32
  %i.ay = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.az = call i32 @errcode(i32 noundef 50856066) #10 ; 0 uses
  %i.ba = or disjoint i32 %.us-phi, 1
  %i.bb = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.20, i32 noundef %i.ba) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1158, ptr noundef nonnull @__func__.jsonb_build_object_worker) #10
  unreachable

.critedge:                                        ; preds = %.lr.ph.split
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %.split29.us, label %add_jsonb.exit

.split29.us:                                      ; preds = %.critedge, %.critedge.us, %.critedge.us.us
  %i.bh = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.bi = call i32 @errcode(i32 noundef 50856066) #10 ; 0 uses
  %i.bj = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.16) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1061, ptr noundef nonnull @__func__.add_jsonb) #10
  unreachable

add_jsonb.exit:                                   ; preds = %.critedge
  call void @json_categorize_type(i32 noundef %i.bf, i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #10
  %.pre.i = load i32, ptr %i.a, align 4
  %.pre6.i = load i32, ptr %i.b, align 4
  call fastcc void @datum_to_jsonb_internal(i64 noundef %i.bd, i1 noundef zeroext false, ptr noundef nonnull %6, i32 noundef %.pre.i, i32 noundef %.pre6.i, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %12 = or disjoint i64 %indvars.iv, 1            ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %12
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 %12
  %i.bn = load i8, ptr %i.bm, align 1, !range !6, !noundef !7
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %12
  %i.bq = load i32, ptr %i.bp, align 4
  call fastcc void @add_jsonb(i64 noundef %i.bl, i1 noundef zeroext %i.bo, ptr noundef %6, i32 noundef %i.bq, i1 noundef zeroext false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %13 = icmp samesign ult i64 %indvars.iv.next, %7
  br i1 %13, label %.lr.ph.split, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %add_jsonb.exit, %bb.e, %add_jsonb.exit.us.us, %bb.c
  call void @pushJsonbValue(ptr noundef nonnull %6, i32 noundef 7, ptr noundef null) #10
  %i.br = load ptr, ptr %6, align 8
  %i.bs = call ptr @JsonbValueToJsonb(ptr noundef %i.br) #10
  %i.bt = ptrtoint ptr %i.bs to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  ret i64 %i.bt
}

declare i32 @errhint(ptr noundef, ...) local_unnamed_addr #3

declare void @pushJsonbValue(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @add_jsonb(i64 noundef %0, i1 noundef zeroext %1, ptr noundef nonnull %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = icmp eq i32 %3, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.e = tail call i32 @errcode(i32 noundef 50856066) #10 ; 0 uses
  %i.f = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.16) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1061, ptr noundef nonnull @__func__.add_jsonb) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.a, align 4
  store i32 0, ptr %i.b, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @json_categorize_type(i32 noundef %3, i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #10
  %.pre = load i32, ptr %i.a, align 4
  %.pre6 = load i32, ptr %i.b, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = phi i32 [ %.pre6, %bb.e ], [ 0, %bb.d ]
  %i.h = phi i32 [ %.pre, %bb.e ], [ 0, %bb.d ]
  call fastcc void @datum_to_jsonb_internal(i64 noundef %0, i1 noundef zeroext %1, ptr noundef nonnull %2, i32 noundef %i.h, i32 noundef %i.g, i1 noundef zeroext %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @jsonb_build_object(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.d = call i32 @extract_variadic_args(ptr noundef %0, i32 noundef 0, i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #10 ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.f, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = call i64 @jsonb_build_object_worker(i32 noundef %i.d, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ 0, %bb.b ], [ %i.j, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i64 %.0
}

declare i32 @extract_variadic_args(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @jsonb_build_object_noargs(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.JsonbInState, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  call void @pushJsonbValue(ptr noundef nonnull %1, i32 noundef 6, ptr noundef null) #10
  call void @pushJsonbValue(ptr noundef nonnull %1, i32 noundef 7, ptr noundef null) #10
  %i.a = load ptr, ptr %1, align 8
  %i.b = call ptr @JsonbValueToJsonb(ptr noundef %i.a) #10
  %i.c = ptrtoint ptr %i.b to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i64 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local i64 @jsonb_build_array_worker(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.JsonbInState, align 8       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  call void @pushJsonbValue(ptr noundef nonnull %5, i32 noundef 4, ptr noundef null) #10
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count17 = zext nneg i32 %0 to i64    ; 2 uses
  br i1 %4, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.c
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %bb.c ], [ 0, %.lr.ph ] ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv14
  %i.c = load i8, ptr %i.b, align 1, !range !6, !noundef !7
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv14
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv14
  %i.h = load i32, ptr %i.g, align 4
  call fastcc void @add_jsonb(i64 noundef %i.f, i1 noundef zeroext false, ptr noundef %5, i32 noundef %i.h, i1 noundef zeroext false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1 ; 2 uses
  %exitcond18.not = icmp eq i64 %indvars.iv.next15, %wide.trip.count17
  br i1 %exitcond18.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !1

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph ] ; 4 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.l = load i8, ptr %i.k, align 1, !range !6, !noundef !7
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4
  call fastcc void @add_jsonb(i64 noundef %i.j, i1 noundef zeroext %i.m, ptr noundef %5, i32 noundef %i.o, i1 noundef zeroext false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count17
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !1

._crit_edge:                                      ; preds = %.lr.ph.split, %bb.c, %bb.a
  call void @pushJsonbValue(ptr noundef nonnull %5, i32 noundef 5, ptr noundef null) #10
  %i.p = load ptr, ptr %5, align 8
  %i.q = call ptr @JsonbValueToJsonb(ptr noundef %i.p) #10
  %i.r = ptrtoint ptr %i.q to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret i64 %i.r
}

; Function Attrs: nounwind uwtable
define dso_local i64 @jsonb_build_array(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.JsonbInState, align 8       ; 7 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.d = call i32 @extract_variadic_args(ptr noundef %0, i32 noundef 0, i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #10 ; 3 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.f, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = load ptr, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  call void @pushJsonbValue(ptr noundef nonnull %1, i32 noundef 4, ptr noundef null) #10
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %jsonb_build_array_worker.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %wide.trip.count17.i = zext nneg i32 %i.d to i64
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.split.i ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.i
  %i.m = load i8, ptr %i.l, align 1, !range !6, !noundef !7
end_hunk_0
