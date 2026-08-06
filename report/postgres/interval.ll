begin_hunk_0_@EncodeInterval:bb.a
  %.12 = phi i8 [ %.10, %AddVerboseIntPart.exit292 ], [ %.11, %bb.ay ] ; 3 uses
  %.7 = phi i8 [ %.6, %AddVerboseIntPart.exit292 ], [ 0, %bb.ay ] ; 2 uses
  %.0.i295 = phi ptr [ %.0.i290, %AddVerboseIntPart.exit292 ], [ %i.hd, %bb.ay ] ; 4 uses
  %i.he = icmp eq i32 %i.j, 0
  br i1 %i.he, label %AddVerboseIntPart.exit302, label %bb.az

bb.az:                                            ; preds = %AddVerboseIntPart.exit297
  %i.hf = trunc nuw i8 %.7 to i1
  br i1 %i.hf, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %.lobit.i301 = lshr i32 %i.j, 31
  %i.hg = trunc nuw nsw i32 %.lobit.i301 to i8
  %i.hh = tail call i32 @llvm.abs.i32(i32 %i.j, i1 false)
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.hi = trunc nuw i8 %.12 to i1
  %i.hj = sub i32 0, %i.j
  %spec.select.i298 = select i1 %i.hi, i32 %i.hj, i32 %i.j
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.13 = phi i8 [ %i.hg, %bb.ba ], [ %.12, %bb.bb ]
  %.015.i299 = phi i32 [ %i.hh, %bb.ba ], [ %spec.select.i298, %bb.bb ] ; 2 uses
  %i.hk = icmp eq i32 %.015.i299, 1
  %i.hl = select i1 %i.hk, ptr @.str.10, ptr @.str.18
  %i.hm = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %.0.i295, ptr noundef nonnull @.str.27, i32 noundef %.015.i299, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.hl) #13 ; 0 uses
  %i.hn = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i295) #14
  %i.ho = getelementptr inbounds nuw i8, ptr %.0.i295, i64 %i.hn
  br label %AddVerboseIntPart.exit302

AddVerboseIntPart.exit302:                        ; preds = %AddVerboseIntPart.exit297, %bb.bc
  %.14 = phi i8 [ %.12, %AddVerboseIntPart.exit297 ], [ %.13, %bb.bc ] ; 4 uses
  %.8 = phi i8 [ %.7, %AddVerboseIntPart.exit297 ], [ 0, %bb.bc ] ; 2 uses
  %.0.i300 = phi ptr [ %.0.i295, %AddVerboseIntPart.exit297 ], [ %i.ho, %bb.bc ] ; 7 uses
  %i.hp = icmp ne i32 %1, 0
  %i.hq = or i32 %i.k, %1
  %or.cond71.not = icmp eq i32 %i.hq, 0
  br i1 %or.cond71.not, label %bb.bk, label %bb.bd

bb.bd:                                            ; preds = %AddVerboseIntPart.exit302
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.i300, i64 1 ; 3 uses
  store i8 32, ptr %.0.i300, align 1
  %i.hs = icmp slt i32 %i.k, 0
  br i1 %i.hs, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ht = icmp eq i32 %i.k, 0
  %i.hu = icmp slt i32 %1, 0
  %or.cond73 = and i1 %i.hu, %i.ht
  br i1 %or.cond73, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.hv = trunc nuw i8 %.8 to i1
  %i.hw = trunc nuw i8 %.14 to i1
  %or.cond349 = select i1 %i.hv, i1 true, i1 %i.hw
  br i1 %or.cond349, label %bb.bh, label %.sink.split

bb.bg:                                            ; preds = %bb.be
  %i.hx = trunc nuw i8 %.14 to i1
  br i1 %i.hx, label %.sink.split, label %bb.bh

.sink.split:                                      ; preds = %bb.bg, %bb.bf
  %.0331.ph = phi i8 [ 0, %bb.bf ], [ 1, %bb.bg ]
  %i.hy = getelementptr inbounds nuw i8, ptr %.0.i300, i64 2
  store i8 45, ptr %i.hr, align 1
  br label %bb.bh

bb.bh:                                            ; preds = %.sink.split, %bb.bf, %bb.bg
  %.0331 = phi i8 [ 0, %bb.bg ], [ 1, %bb.bf ], [ %.0331.ph, %.sink.split ]
  %.3 = phi ptr [ %i.hr, %bb.bg ], [ %i.hr, %bb.bf ], [ %i.hy, %.sink.split ] ; 5 uses
  %i.hz = icmp eq i32 %1, 0
  %i.ia = tail call i32 @llvm.abs.i32(i32 %i.k, i1 false) ; 3 uses
  br i1 %i.hz, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.ib = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %.3, ptr noundef nonnull @.str.22, i32 noundef %i.ia) #13 ; 0 uses
  br label %.thread343

bb.bj:                                            ; preds = %bb.bh
  %i.ic = tail call i32 @llvm.abs.i32(i32 %1, i1 false)
  %i.id = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %.3, ptr noundef nonnull @.str.24, i32 noundef %i.ia, i32 noundef 6, i32 noundef %i.ic) #13 ; 0 uses
  tail call void @TrimTrailingZeros(ptr noundef nonnull %.3) #13
  br label %.thread343

.thread343:                                       ; preds = %bb.bj, %bb.bi
  %i.ie = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.3) #14
  %i.if = getelementptr inbounds nuw i8, ptr %.3, i64 %i.ie ; 2 uses
  %i.ig = icmp ne i32 %i.ia, 1
  %i.ih = or i1 %i.hp, %i.ig
  %i.ii = select i1 %i.ih, ptr @.str.18, ptr @.str.10
  %i.ij = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.if, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.ii) #13 ; 0 uses
  br label %bb.bm

bb.bk:                                            ; preds = %AddVerboseIntPart.exit302
  %i.ik = trunc nuw i8 %.8 to i1
  br i1 %i.ik, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %.0.i300)
  %endptr = getelementptr inbounds i8, ptr %.0.i300, i64 %strlen
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr, ptr noundef nonnull align 1 dereferenceable(3) @.str.19, i64 3, i1 false)
  br label %bb.bm

bb.bm:                                            ; preds = %.thread343, %bb.bl, %bb.bk
  %.4348 = phi ptr [ %i.if, %.thread343 ], [ %.0.i300, %bb.bl ], [ %.0.i300, %bb.bk ] ; 2 uses
  %.1332347 = phi i8 [ %.0331, %.thread343 ], [ %.14, %bb.bl ], [ %.14, %bb.bk ]
  %i.il = trunc nuw i8 %.1332347 to i1
  br i1 %i.il, label %bb.bn, label %AppendSeconds.exit

bb.bn:                                            ; preds = %bb.bm
  %strlen260 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %.4348)
  %endptr261 = getelementptr inbounds i8, ptr %.4348, i64 %strlen260
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %endptr261, ptr noundef nonnull align 1 dereferenceable(5) @.str.20, i64 5, i1 false)
  br label %AppendSeconds.exit

AppendSeconds.exit:                               ; preds = %AddISO8601IntPart.exit265, %bb.ak, %bb.aj, %bb.k, %bb.j, %bb.g, %bb.m, %bb.p, %bb.o, %bb.bm, %bb.bn, %AddPostgresIntPart.exit279, %AppendSeconds.exit270, %AddISO8601IntPart.exit269, %bb.r
  ret void
}

declare i32 @pg_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @AppendSeconds(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  %i.b = tail call i32 @llvm.abs.i32(i32 %1, i1 false) ; 3 uses
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %i.b) #13 ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %i.b) #13 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.e = tail call i32 @llvm.abs.i32(i32 %2, i1 false)
  %.str.23..str.24 = select i1 %3, ptr @.str.23, ptr @.str.24
  %i.f = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef %0, ptr noundef nonnull %.str.23..str.24, i32 noundef %i.b, i32 noundef 6, i32 noundef %i.e) #13 ; 0 uses
  tail call void @TrimTrailingZeros(ptr noundef %0) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @PGTYPESinterval_new() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @pgtypes_alloc(i64 noundef 16) #13
  ret ptr %i.a
}

declare ptr @pgtypes_alloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @PGTYPESinterval_free(ptr noundef captures(none) %0) local_unnamed_addr #9 {
bb.a:
  tail call void @free(ptr noundef %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define ptr @PGTYPESinterval_from_asc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 19 uses
  %i.b = alloca i32, align 4                      ; 12 uses
  %i.c = alloca double, align 8                   ; 12 uses
  %i.d = alloca i32, align 4                      ; 31 uses
  %2 = alloca %struct.tm, align 8                 ; 39 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca [25 x ptr], align 16              ; 4 uses
  %i.h = alloca [25 x i32], align 16              ; 4 uses
  %i.i = alloca [153 x i8], align 16              ; 3 uses
  %i.j = alloca ptr, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #13
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 13 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  store i32 0, ptr %i.d, align 4
  %i.p = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #14
  %i.q = icmp ugt i64 %i.p, 128
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = tail call ptr @__errno_location() #15
  store i32 330, ptr %i.r, align 4
  br label %bb.bu

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  %i.s = select i1 %.not, ptr %i.j, ptr %1
  %i.t = call i32 @ParseDateTime(ptr noundef nonnull %0, ptr noundef nonnull %i.i, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.f, ptr noundef nonnull %i.s) #13
  %.not22 = icmp eq i32 %i.t, 0
  br i1 %.not22, label %bb.d, label %bb.bo

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %i.f, align 4
  %i.v = call i32 @DecodeInterval(ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, i32 noundef %i.u, ptr noundef nonnull %i.e, ptr noundef nonnull %2, ptr noundef nonnull %i.d)
  %.not23 = icmp eq i32 %i.v, 0
  br i1 %.not23, label %bb.bp, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 17, ptr %i.e, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  store i32 0, ptr %i.d, align 4
  %i.w = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #14
  %i.x = icmp ult i64 %i.w, 2
  br i1 %i.x, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load i8, ptr %0, align 1
  %.not.i = icmp eq i8 %i.y, 80
  br i1 %.not.i, label %bb.g, label %.sink.split

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  store ptr %i.z, ptr %i.a, align 8
  %i.aa = load i8, ptr %i.z, align 1              ; 2 uses
  %.not91165.i = icmp eq i8 %i.aa, 0
  br i1 %.not91165.i, label %.sink.split176, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %AdjustFractDays.exit.i
  %i.ab = phi i8 [ %i.me, %AdjustFractDays.exit.i ], [ %i.aa, %bb.g ] ; 3 uses
  %i.ac = phi ptr [ %i.md, %AdjustFractDays.exit.i ], [ %i.z, %bb.g ] ; 7 uses
  %.077167.i = phi i1 [ %.178.i, %AdjustFractDays.exit.i ], [ true, %bb.g ]
  %.080166.i = phi i8 [ %.181.i, %AdjustFractDays.exit.i ], [ 0, %bb.g ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.ad = icmp eq i8 %i.ab, 84
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  store ptr %i.ae, ptr %i.a, align 8
  br label %AdjustFractDays.exit.i, !llvm.loop !5

bb.i:                                             ; preds = %.lr.ph.i
  %i.af = tail call ptr @__ctype_b_loc() #15      ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = zext i8 %i.ab to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2
  %.fr25.i.i = freeze i16 %i.aj
  %i.ak = and i16 %.fr25.i.i, 2048
  %.not.i.i = icmp ne i16 %i.ak, 0
  %i.al = add i8 %i.ab, -45
  %i.am = icmp ult i8 %i.al, 2
  %or.cond24.i.i = or i1 %i.am, %.not.i.i
  br i1 %or.cond24.i.i, label %bb.j, label %.sink.split.sink.split

bb.j:                                             ; preds = %bb.i
  %i.an = tail call ptr @__errno_location() #15   ; 6 uses
  store i32 0, ptr %i.an, align 4
  %i.ao = call double @strtod(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.a) #13 ; 6 uses
  %i.ap = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.aq = icmp eq ptr %i.ap, %i.ac
  br i1 %i.aq, label %.sink.split.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = load i32, ptr %i.an, align 4
  %.not20.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not20.i.i, label %bb.l, label %.sink.split.sink.split

bb.l:                                             ; preds = %bb.k
  %i.as = fcmp olt double %i.ao, f0xC1E0000000000000
  %i.at = fcmp ogt double %i.ao, f0x41DFFFFFFFC00000
  %or.cond.i.i = or i1 %i.as, %i.at
  br i1 %or.cond.i.i, label %.sink.split.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = fcmp ult double %i.ao, 0.000000e+00
  br i1 %i.au, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = call double @llvm.floor.f64(double %i.ao)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.aw = fneg double %i.ao
  %i.ax = call double @llvm.floor.f64(double %i.aw)
  %i.ay = fneg double %i.ax
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %storemerge.in.i.i = phi double [ %i.ay, %bb.o ], [ %i.av, %bb.n ]
  %storemerge.i.i = fptosi double %storemerge.in.i.i to i32 ; 18 uses
  store i32 %storemerge.i.i, ptr %i.b, align 4
  %i.az = sitofp i32 %storemerge.i.i to double
  %i.ba = fsub double %i.ao, %i.az                ; 24 uses
  store double %i.ba, ptr %i.c, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 24 uses
  store ptr %i.bb, ptr %i.a, align 8
  %i.bc = load i8, ptr %i.ap, align 1             ; 5 uses
  br i1 %.077167.i, label %bb.q, label %bb.aq

bb.q:                                             ; preds = %bb.p
  switch i8 %i.bc, label %.sink.split.sink.split [
    i8 89, label %bb.r
    i8 77, label %bb.s
    i8 87, label %bb.v
    i8 68, label %bb.y
    i8 84, label %bb.aa
    i8 0, label %bb.aa
    i8 45, label %._crit_edge.i
  ]

._crit_edge.i:                                    ; preds = %bb.q
  %.pre188.i = trunc nuw i8 %.080166.i to i1
  br i1 %.pre188.i, label %.sink.split.sink.split, label %.thread.i

.thread.i:                                        ; preds = %._crit_edge.i
  %i.bd = load i32, ptr %i.k, align 4
  %i.be = add i32 %i.bd, %storemerge.i.i
  store i32 %i.be, ptr %i.k, align 4
  %i.bf = fmul double %i.ba, 1.200000e+01
  %i.bg = call double @llvm.rint.f64(double %i.bf)
  %i.bh = load i32, ptr %i.l, align 8
  %i.bi = sitofp i32 %i.bh to double
  %i.bj = fadd double %i.bg, %i.bi
  %i.bk = fptosi double %i.bj to i32
  store i32 %i.bk, ptr %i.l, align 8
  br label %bb.af

bb.r:                                             ; preds = %bb.q
  %i.bl = load i32, ptr %i.k, align 4
  %i.bm = add i32 %i.bl, %storemerge.i.i
  store i32 %i.bm, ptr %i.k, align 4
  %i.bn = fmul double %i.ba, 1.200000e+01
  %i.bo = call double @llvm.rint.f64(double %i.bn)
  %i.bp = load i32, ptr %i.l, align 8
  %i.bq = sitofp i32 %i.bp to double
  %i.br = fadd double %i.bo, %i.bq
  %i.bs = fptosi double %i.br to i32
  store i32 %i.bs, ptr %i.l, align 8
  br label %AdjustFractDays.exit.i

bb.s:                                             ; preds = %bb.q
  %i.bt = load i32, ptr %i.l, align 8
  %i.bu = add i32 %i.bt, %storemerge.i.i
  store i32 %i.bu, ptr %i.l, align 8
  %i.bv = fcmp oeq double %i.ba, 0.000000e+00
  br i1 %i.bv, label %AdjustFractDays.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = fmul double %i.ba, 3.000000e+01         ; 2 uses
  %i.bx = fptosi double %i.bw to i32              ; 2 uses
  %i.by = load i32, ptr %i.m, align 4
  %i.bz = add i32 %i.by, %i.bx
  store i32 %i.bz, ptr %i.m, align 4
  %i.ca = sitofp i32 %i.bx to double
  %i.cb = fsub double %i.bw, %i.ca                ; 2 uses
  %i.cc = fcmp oeq double %i.cb, 0.000000e+00
  br i1 %i.cc, label %AdjustFractDays.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = fmul double %i.cb, 8.640000e+04         ; 2 uses
  %i.ce = fptosi double %i.cd to i32              ; 2 uses
  %i.cf = load i32, ptr %2, align 8
  %i.cg = add i32 %i.cf, %i.ce
  store i32 %i.cg, ptr %2, align 8
  %i.ch = sitofp i32 %i.ce to double
  %i.ci = fsub double %i.cd, %i.ch
  %i.cj = fmul double %i.ci, 1.000000e+06
  %i.ck = call double @llvm.rint.f64(double %i.cj)
  %i.cl = load i32, ptr %i.d, align 4
  %i.cm = sitofp i32 %i.cl to double
  %i.cn = fadd double %i.ck, %i.cm
  %i.co = fptosi double %i.cn to i32
  store i32 %i.co, ptr %i.d, align 4
  br label %AdjustFractDays.exit.i

bb.v:                                             ; preds = %bb.q
  %i.cp = mul i32 %storemerge.i.i, 7
  %i.cq = load i32, ptr %i.m, align 4
  %i.cr = add i32 %i.cq, %i.cp                    ; 2 uses
  store i32 %i.cr, ptr %i.m, align 4
  %i.cs = fcmp oeq double %i.ba, 0.000000e+00
  br i1 %i.cs, label %AdjustFractDays.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = fmul double %i.ba, 7.000000e+00         ; 2 uses
  %i.cu = fptosi double %i.ct to i32              ; 2 uses
  %i.cv = add i32 %i.cr, %i.cu
  store i32 %i.cv, ptr %i.m, align 4
  %i.cw = sitofp i32 %i.cu to double
  %i.cx = fsub double %i.ct, %i.cw                ; 2 uses
  %i.cy = fcmp oeq double %i.cx, 0.000000e+00
  br i1 %i.cy, label %AdjustFractDays.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cz = fmul double %i.cx, 8.640000e+04         ; 2 uses
  %i.da = fptosi double %i.cz to i32              ; 2 uses
  %i.db = load i32, ptr %2, align 8
  %i.dc = add i32 %i.db, %i.da
  store i32 %i.dc, ptr %2, align 8
  %i.dd = sitofp i32 %i.da to double
  %i.de = fsub double %i.cz, %i.dd
  %i.df = fmul double %i.de, 1.000000e+06
  %i.dg = call double @llvm.rint.f64(double %i.df)
  %i.dh = load i32, ptr %i.d, align 4
  %i.di = sitofp i32 %i.dh to double
  %i.dj = fadd double %i.dg, %i.di
  %i.dk = fptosi double %i.dj to i32
  store i32 %i.dk, ptr %i.d, align 4
  br label %AdjustFractDays.exit.i

bb.y:                                             ; preds = %bb.q
  %i.dl = load i32, ptr %i.m, align 4
  %i.dm = add i32 %i.dl, %storemerge.i.i
  store i32 %i.dm, ptr %i.m, align 4
  %i.dn = fcmp oeq double %i.ba, 0.000000e+00
  br i1 %i.dn, label %AdjustFractDays.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.do = fmul double %i.ba, 8.640000e+04         ; 2 uses
  %i.dp = fptosi double %i.do to i32              ; 2 uses
  %i.dq = load i32, ptr %2, align 8
  %i.dr = add i32 %i.dq, %i.dp
  store i32 %i.dr, ptr %2, align 8
  %i.ds = sitofp i32 %i.dp to double
  %i.dt = fsub double %i.do, %i.ds
  %i.du = fmul double %i.dt, 1.000000e+06
  %i.dv = call double @llvm.rint.f64(double %i.du)
  %i.dw = load i32, ptr %i.d, align 4
  %i.dx = sitofp i32 %i.dw to double
  %i.dy = fadd double %i.dv, %i.dx
  %i.dz = fptosi double %i.dy to i32
  store i32 %i.dz, ptr %i.d, align 4
  br label %AdjustFractDays.exit.i

bb.aa:                                            ; preds = %bb.q, %bb.q
  %i.ea = load i8, ptr %i.ac, align 1
  %i.eb = icmp eq i8 %i.ea, 45
  %spec.select.idx.i.i = zext i1 %i.eb to i64
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 %spec.select.idx.i.i
  %i.ec = call i64 @strspn(ptr noundef nonnull readonly %spec.select.i.i, ptr noundef nonnull @.str.28) #14
  %i.ed = and i64 %i.ec, 4294967295
  %i.ee = icmp ne i64 %i.ed, 8
  %i.ef = trunc nuw i8 %.080166.i to i1           ; 2 uses
  %or.cond.i = select i1 %i.ee, i1 true, i1 %i.ef
  br i1 %or.cond.i, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eg = sdiv i32 %storemerge.i.i, 10000
  %i.eh = load i32, ptr %i.k, align 4
  %i.ei = add i32 %i.eh, %i.eg
  store i32 %i.ei, ptr %i.k, align 4
  %i.ej = sdiv i32 %storemerge.i.i, 100
  %3 = srem i32 %i.ej, 100
  %4 = load i32, ptr %i.l, align 8
  %5 = add i32 %4, %3
  store i32 %5, ptr %i.l, align 8
  %6 = srem i32 %storemerge.i.i, 100
  %7 = load i32, ptr %i.m, align 4
  %8 = add i32 %7, %6
  store i32 %8, ptr %i.m, align 4
  %i.ek = fcmp oeq double %i.ba, 0.000000e+00
  br i1 %i.ek, label %AdjustFractSeconds.exit101.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.el = fmul double %i.ba, 8.640000e+04         ; 2 uses
  %i.em = fptosi double %i.el to i32              ; 2 uses
  %i.en = load i32, ptr %2, align 8
  %i.eo = add i32 %i.en, %i.em
  store i32 %i.eo, ptr %2, align 8
  %i.ep = sitofp i32 %i.em to double
  %i.eq = fsub double %i.el, %i.ep
  %i.er = fmul double %i.eq, 1.000000e+06
  %i.es = call double @llvm.rint.f64(double %i.er)
  %i.et = load i32, ptr %i.d, align 4
  %i.eu = sitofp i32 %i.et to double
  %i.ev = fadd double %i.es, %i.eu
  %i.ew = fptosi double %i.ev to i32
  store i32 %i.ew, ptr %i.d, align 4
  br label %AdjustFractSeconds.exit101.i

AdjustFractSeconds.exit101.i:                     ; preds = %bb.ac, %bb.ab
  %i.ex = icmp eq i8 %i.bc, 0
  br i1 %i.ex, label %.sink.split176.sink.split, label %AdjustFractDays.exit.i

bb.ad:                                            ; preds = %bb.aa
  br i1 %i.ef, label %.sink.split.sink.split, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ey = load i32, ptr %i.k, align 4
  %i.ez = add i32 %i.ey, %storemerge.i.i
  store i32 %i.ez, ptr %i.k, align 4
  %i.fa = fmul double %i.ba, 1.200000e+01
  %i.fb = call double @llvm.rint.f64(double %i.fa)
  %i.fc = load i32, ptr %i.l, align 8
  %i.fd = sitofp i32 %i.fc to double
  %i.fe = fadd double %i.fb, %i.fd
  %i.ff = fptosi double %i.fe to i32
  store i32 %i.ff, ptr %i.l, align 8
  switch i8 %i.bc, label %bb.af [
    i8 0, label %.sink.split176.sink.split
    i8 84, label %AdjustFractDays.exit.i
  ], !llvm.loop !5

bb.af:                                            ; preds = %bb.ae, %.thread.i
  %i.fg = load ptr, ptr %i.af, align 8
  %i.fh = load i8, ptr %i.bb, align 1             ; 2 uses
  %i.fi = zext i8 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.fg, i64 %i.fi
  %i.fk = load i16, ptr %i.fj, align 2
  %.fr25.i102.i = freeze i16 %i.fk
  %i.fl = and i16 %.fr25.i102.i, 2048
  %.not.i103.i = icmp ne i16 %i.fl, 0
  %i.fm = add i8 %i.fh, -45
  %i.fn = icmp ult i8 %i.fm, 2
  %or.cond24.i104.i = or i1 %i.fn, %.not.i103.i
  br i1 %or.cond24.i104.i, label %bb.ag, label %.sink.split.sink.split

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.an, align 4
  %i.fo = call double @strtod(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.a) #13 ; 6 uses
  %i.fp = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.fq = icmp eq ptr %i.fp, %i.bb
  br i1 %i.fq, label %.sink.split.sink.split, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fr = load i32, ptr %i.an, align 4
  %.not20.i106.i = icmp eq i32 %i.fr, 0
  br i1 %.not20.i106.i, label %bb.ai, label %.sink.split.sink.split

bb.ai:                                            ; preds = %bb.ah
  %i.fs = fcmp olt double %i.fo, f0xC1E0000000000000
  %i.ft = fcmp ogt double %i.fo, f0x41DFFFFFFFC00000
  %or.cond.i107.i = or i1 %i.fs, %i.ft
  br i1 %or.cond.i107.i, label %.sink.split.sink.split, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fu = fcmp ult double %i.fo, 0.000000e+00
  br i1 %i.fu, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fv = call double @llvm.floor.f64(double %i.fo)
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.fw = fneg double %i.fo
  %i.fx = call double @llvm.floor.f64(double %i.fw)
  %i.fy = fneg double %i.fx
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %storemerge.in.i108.i = phi double [ %i.fy, %bb.al ], [ %i.fv, %bb.ak ]
  %storemerge.i109.i = fptosi double %storemerge.in.i108.i to i32 ; 3 uses
  store i32 %storemerge.i109.i, ptr %i.b, align 4
  %i.fz = sitofp i32 %storemerge.i109.i to double
  %i.ga = fsub double %i.fo, %i.fz                ; 2 uses
  store double %i.ga, ptr %i.c, align 8
  %i.gb = load i32, ptr %i.l, align 8
  %i.gc = add i32 %i.gb, %storemerge.i109.i
  store i32 %i.gc, ptr %i.l, align 8
  call fastcc void @AdjustFractDays(double noundef %i.ga, ptr noundef nonnull %2, ptr noundef nonnull %i.d, i32 noundef 30)
  %i.gd = load i8, ptr %i.fp, align 1
  switch i8 %i.gd, label %.sink.split.sink.split [
    i8 0, label %.sink.split176.sink.split
    i8 84, label %AdjustFractDays.exit.i
    i8 45, label %bb.an
  ], !llvm.loop !5

bb.an:                                            ; preds = %bb.am
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fp, i64 1 ; 2 uses
  store ptr %i.ge, ptr %i.a, align 8
  %i.gf = call fastcc i32 @ParseISO8601Number(ptr noundef nonnull %i.ge, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c)
  %.not98.i = icmp eq i32 %i.gf, 0
  br i1 %.not98.i, label %bb.ao, label %.sink.split.sink.split

bb.ao:                                            ; preds = %bb.an
  %i.gg = load i32, ptr %i.b, align 4
  %i.gh = load i32, ptr %i.m, align 4
  %i.gi = add i32 %i.gh, %i.gg
  store i32 %i.gi, ptr %i.m, align 4
  %i.gj = load double, ptr %i.c, align 8          ; 2 uses
  %i.gk = fcmp oeq double %i.gj, 0.000000e+00
  br i1 %i.gk, label %AdjustFractSeconds.exit111.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gl = fmul double %i.gj, 8.640000e+04         ; 2 uses
  %i.gm = fptosi double %i.gl to i32              ; 2 uses
  %i.gn = load i32, ptr %2, align 8
  %i.go = add i32 %i.gn, %i.gm
  store i32 %i.go, ptr %2, align 8
  %i.gp = sitofp i32 %i.gm to double
  %i.gq = fsub double %i.gl, %i.gp
  %i.gr = fmul double %i.gq, 1.000000e+06
  %i.gs = call double @llvm.rint.f64(double %i.gr)
  %i.gt = load i32, ptr %i.d, align 4
  %i.gu = sitofp i32 %i.gt to double
  %i.gv = fadd double %i.gs, %i.gu
  %i.gw = fptosi double %i.gv to i32
  store i32 %i.gw, ptr %i.d, align 4
  br label %AdjustFractSeconds.exit111.i

AdjustFractSeconds.exit111.i:                     ; preds = %bb.ap, %bb.ao
  %i.gx = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.gy = load i8, ptr %i.gx, align 1
  switch i8 %i.gy, label %.sink.split.sink.split [
    i8 0, label %.sink.split176.sink.split
    i8 84, label %AdjustFractDays.exit.i
  ], !llvm.loop !5

bb.aq:                                            ; preds = %bb.p
  switch i8 %i.bc, label %.sink.split.sink.split [
    i8 72, label %bb.ar
    i8 77, label %bb.at
    i8 83, label %bb.av
    i8 0, label %bb.ax
    i8 58, label %.loopexit140.loopexit.i
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.gz = load i32, ptr %i.n, align 8
  %i.ha = add i32 %i.gz, %storemerge.i.i
  store i32 %i.ha, ptr %i.n, align 8
  %i.hb = fcmp oeq double %i.ba, 0.000000e+00
  br i1 %i.hb, label %AdjustFractDays.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hc = fmul double %i.ba, 3.600000e+03         ; 2 uses
  %i.hd = fptosi double %i.hc to i32              ; 2 uses
  %i.he = load i32, ptr %2, align 8
  %i.hf = add i32 %i.he, %i.hd
  store i32 %i.hf, ptr %2, align 8
  %i.hg = sitofp i32 %i.hd to double
  %i.hh = fsub double %i.hc, %i.hg
  %i.hi = fmul double %i.hh, 1.000000e+06
  %i.hj = call double @llvm.rint.f64(double %i.hi)
  %i.hk = load i32, ptr %i.d, align 4
  %i.hl = sitofp i32 %i.hk to double
  %i.hm = fadd double %i.hj, %i.hl
  %i.hn = fptosi double %i.hm to i32
  store i32 %i.hn, ptr %i.d, align 4
  br label %AdjustFractDays.exit.i

bb.at:                                            ; preds = %bb.aq
  %i.ho = load i32, ptr %i.o, align 4
  %i.hp = add i32 %i.ho, %storemerge.i.i
  store i32 %i.hp, ptr %i.o, align 4
  %i.hq = fcmp oeq double %i.ba, 0.000000e+00
  br i1 %i.hq, label %AdjustFractDays.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hr = fmul double %i.ba, 6.000000e+01         ; 2 uses
  %i.hs = fptosi double %i.hr to i32              ; 2 uses
  %i.ht = load i32, ptr %2, align 8
  %i.hu = add i32 %i.ht, %i.hs
  store i32 %i.hu, ptr %2, align 8
  %i.hv = sitofp i32 %i.hs to double
  %i.hw = fsub double %i.hr, %i.hv
  %i.hx = fmul double %i.hw, 1.000000e+06
  %i.hy = call double @llvm.rint.f64(double %i.hx)
  %i.hz = load i32, ptr %i.d, align 4
  %i.ia = sitofp i32 %i.hz to double
  %i.ib = fadd double %i.hy, %i.ia
  %i.ic = fptosi double %i.ib to i32
  store i32 %i.ic, ptr %i.d, align 4
  br label %AdjustFractDays.exit.i

bb.av:                                            ; preds = %bb.aq
  %i.id = load i32, ptr %2, align 8
  %i.ie = add i32 %i.id, %storemerge.i.i          ; 2 uses
  store i32 %i.ie, ptr %2, align 8
  %i.if = fcmp oeq double %i.ba, 0.000000e+00
  br i1 %i.if, label %AdjustFractDays.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ig = fptosi double %i.ba to i32              ; 2 uses
  %i.ih = add i32 %i.ie, %i.ig
  store i32 %i.ih, ptr %2, align 8
  %i.ii = sitofp i32 %i.ig to double
  %i.ij = fsub double %i.ba, %i.ii
  %i.ik = fmul double %i.ij, 1.000000e+06
  %i.il = call double @llvm.rint.f64(double %i.ik)
  %i.im = load i32, ptr %i.d, align 4
  %i.in = sitofp i32 %i.im to double
  %i.io = fadd double %i.il, %i.in
  %i.ip = fptosi double %i.io to i32
  store i32 %i.ip, ptr %i.d, align 4
  br label %AdjustFractDays.exit.i

bb.ax:                                            ; preds = %bb.aq
  %i.iq = load i8, ptr %i.ac, align 1
  %i.ir = icmp eq i8 %i.iq, 45
  %spec.select.idx.i115.i = zext i1 %i.ir to i64
  %spec.select.i116.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 %spec.select.idx.i115.i
  %i.is = call i64 @strspn(ptr noundef nonnull readonly %spec.select.i116.i, ptr noundef nonnull @.str.28) #14
  %i.it = and i64 %i.is, 4294967295
  %i.iu = icmp ne i64 %i.it, 6
  %i.iv = trunc nuw i8 %.080166.i to i1           ; 2 uses
  %or.cond3.i = select i1 %i.iu, i1 true, i1 %i.iv
  br i1 %or.cond3.i, label %.loopexit140.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.iw = sdiv i32 %storemerge.i.i, 10000
  %i.ix = load i32, ptr %i.n, align 8
  %i.iy = add i32 %i.ix, %i.iw
  store i32 %i.iy, ptr %i.n, align 8
  %i.iz = sdiv i32 %storemerge.i.i, 100
  %9 = srem i32 %i.iz, 100
  %10 = load i32, ptr %i.o, align 4
  %11 = add i32 %10, %9
  store i32 %11, ptr %i.o, align 4
  %12 = srem i32 %storemerge.i.i, 100
  %13 = load i32, ptr %2, align 8
  %14 = add i32 %13, %12                          ; 2 uses
  store i32 %14, ptr %2, align 8
  %i.ja = fcmp oeq double %i.ba, 0.000000e+00
  br i1 %i.ja, label %.sink.split176.sink.split, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jb = fptosi double %i.ba to i32              ; 2 uses
  %i.jc = add i32 %14, %i.jb
  store i32 %i.jc, ptr %2, align 8
  %i.jd = sitofp i32 %i.jb to double
  %i.je = fsub double %i.ba, %i.jd
  %i.jf = fmul double %i.je, 1.000000e+06
  %i.jg = call double @llvm.rint.f64(double %i.jf)
  %i.jh = load i32, ptr %i.d, align 4
  %i.ji = sitofp i32 %i.jh to double
  %i.jj = fadd double %i.jg, %i.ji
  %i.jk = fptosi double %i.jj to i32
  store i32 %i.jk, ptr %i.d, align 4
  br label %.sink.split176.sink.split

.loopexit140.loopexit.i:                          ; preds = %bb.aq
  %.pre.i = trunc nuw i8 %.080166.i to i1
  br i1 %.pre.i, label %.sink.split.sink.split, label %bb.ba

.loopexit140.i:                                   ; preds = %bb.ax
  br i1 %i.iv, label %.sink.split.sink.split, label %bb.ba

bb.ba:                                            ; preds = %.loopexit140.i, %.loopexit140.loopexit.i
  %i.jl = load i32, ptr %i.n, align 8
  %i.jm = add i32 %i.jl, %storemerge.i.i
  store i32 %i.jm, ptr %i.n, align 8
  %i.jn = fcmp oeq double %i.ba, 0.000000e+00
  br i1 %i.jn, label %AdjustFractSeconds.exit118.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jo = fmul double %i.ba, 3.600000e+03         ; 2 uses
  %i.jp = fptosi double %i.jo to i32              ; 2 uses
  %i.jq = load i32, ptr %2, align 8
  %i.jr = add i32 %i.jq, %i.jp
  store i32 %i.jr, ptr %2, align 8
  %i.js = sitofp i32 %i.jp to double
  %i.jt = fsub double %i.jo, %i.js
  %i.ju = fmul double %i.jt, 1.000000e+06
  %i.jv = call double @llvm.rint.f64(double %i.ju)
  %i.jw = load i32, ptr %i.d, align 4
  %i.jx = sitofp i32 %i.jw to double
  %i.jy = fadd double %i.jv, %i.jx
  %i.jz = fptosi double %i.jy to i32
  store i32 %i.jz, ptr %i.d, align 4
  br label %AdjustFractSeconds.exit118.i

AdjustFractSeconds.exit118.i:                     ; preds = %bb.bb, %bb.ba
  %i.ka = icmp eq i8 %i.bc, 0
  br i1 %i.ka, label %.sink.split176.sink.split, label %bb.bc

bb.bc:                                            ; preds = %AdjustFractSeconds.exit118.i
  %i.kb = load ptr, ptr %i.af, align 8
  %i.kc = load i8, ptr %i.bb, align 1             ; 2 uses
  %i.kd = zext i8 %i.kc to i64
  %i.ke = getelementptr inbounds nuw [2 x i8], ptr %i.kb, i64 %i.kd
  %i.kf = load i16, ptr %i.ke, align 2
  %.fr25.i119.i = freeze i16 %i.kf
  %i.kg = and i16 %.fr25.i119.i, 2048
  %.not.i120.i = icmp ne i16 %i.kg, 0
  %i.kh = add i8 %i.kc, -45
  %i.ki = icmp ult i8 %i.kh, 2
  %or.cond24.i121.i = or i1 %i.ki, %.not.i120.i
  br i1 %or.cond24.i121.i, label %bb.bd, label %.sink.split.sink.split

bb.bd:                                            ; preds = %bb.bc
  store i32 0, ptr %i.an, align 4
  %i.kj = call double @strtod(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.a) #13 ; 6 uses
  %i.kk = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.kl = icmp eq ptr %i.kk, %i.bb
  br i1 %i.kl, label %.sink.split.sink.split, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.km = load i32, ptr %i.an, align 4
  %.not20.i123.i = icmp eq i32 %i.km, 0
  br i1 %.not20.i123.i, label %bb.bf, label %.sink.split.sink.split

bb.bf:                                            ; preds = %bb.be
  %i.kn = fcmp olt double %i.kj, f0xC1E0000000000000
  %i.ko = fcmp ogt double %i.kj, f0x41DFFFFFFFC00000
  %or.cond.i124.i = or i1 %i.kn, %i.ko
  br i1 %or.cond.i124.i, label %.sink.split.sink.split, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.kp = fcmp ult double %i.kj, 0.000000e+00
  br i1 %i.kp, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.kq = call double @llvm.floor.f64(double %i.kj)
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.kr = fneg double %i.kj
  %i.ks = call double @llvm.floor.f64(double %i.kr)
  %i.kt = fneg double %i.ks
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %storemerge.in.i125.i = phi double [ %i.kt, %bb.bi ], [ %i.kq, %bb.bh ]
  %storemerge.i126.i = fptosi double %storemerge.in.i125.i to i32 ; 3 uses
  store i32 %storemerge.i126.i, ptr %i.b, align 4
  %i.ku = sitofp i32 %storemerge.i126.i to double
  %i.kv = fsub double %i.kj, %i.ku                ; 3 uses
  store double %i.kv, ptr %i.c, align 8
  %i.kw = load i32, ptr %i.o, align 4
  %i.kx = add i32 %i.kw, %storemerge.i126.i
  store i32 %i.kx, ptr %i.o, align 4
  %i.ky = fcmp oeq double %i.kv, 0.000000e+00
  br i1 %i.ky, label %AdjustFractSeconds.exit128.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.kz = fmul double %i.kv, 6.000000e+01         ; 2 uses
  %i.la = fptosi double %i.kz to i32              ; 2 uses
  %i.lb = load i32, ptr %2, align 8
  %i.lc = add i32 %i.lb, %i.la
  store i32 %i.lc, ptr %2, align 8
  %i.ld = sitofp i32 %i.la to double
  %i.le = fsub double %i.kz, %i.ld
  %i.lf = fmul double %i.le, 1.000000e+06
  %i.lg = call double @llvm.rint.f64(double %i.lf)
  %i.lh = load i32, ptr %i.d, align 4
  %i.li = sitofp i32 %i.lh to double
  %i.lj = fadd double %i.lg, %i.li
  %i.lk = fptosi double %i.lj to i32
  store i32 %i.lk, ptr %i.d, align 4
  br label %AdjustFractSeconds.exit128.i

AdjustFractSeconds.exit128.i:                     ; preds = %bb.bk, %bb.bj
  %i.ll = load i8, ptr %i.kk, align 1
  switch i8 %i.ll, label %.sink.split.sink.split [
    i8 0, label %.sink.split176.sink.split
    i8 58, label %bb.bl
  ]

bb.bl:                                            ; preds = %AdjustFractSeconds.exit128.i
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kk, i64 1 ; 2 uses
  store ptr %i.lm, ptr %i.a, align 8
  %i.ln = call fastcc i32 @ParseISO8601Number(ptr noundef nonnull %i.lm, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c)
  %.not95.i = icmp eq i32 %i.ln, 0
  br i1 %.not95.i, label %bb.bm, label %.sink.split.sink.split

bb.bm:                                            ; preds = %bb.bl
  %i.lo = load i32, ptr %i.b, align 4
  %i.lp = load i32, ptr %2, align 8
  %i.lq = add i32 %i.lp, %i.lo                    ; 2 uses
  store i32 %i.lq, ptr %2, align 8
  %i.lr = load double, ptr %i.c, align 8          ; 3 uses
  %i.ls = fcmp oeq double %i.lr, 0.000000e+00
  br i1 %i.ls, label %DecodeISO8601Interval.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.lt = fptosi double %i.lr to i32              ; 2 uses
  %i.lu = add i32 %i.lq, %i.lt
  store i32 %i.lu, ptr %2, align 8
  %i.lv = sitofp i32 %i.lt to double
  %i.lw = fsub double %i.lr, %i.lv
  %i.lx = fmul double %i.lw, 1.000000e+06
  %i.ly = call double @llvm.rint.f64(double %i.lx)
  %i.lz = load i32, ptr %i.d, align 4
  %i.ma = sitofp i32 %i.lz to double
  %i.mb = fadd double %i.ly, %i.ma
  %i.mc = fptosi double %i.mb to i32
  store i32 %i.mc, ptr %i.d, align 4
  br label %DecodeISO8601Interval.exit

AdjustFractDays.exit.i:                           ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %AdjustFractSeconds.exit111.i, %bb.am, %bb.ae, %AdjustFractSeconds.exit101.i, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.h
  %i.md = phi ptr [ %i.ae, %bb.h ], [ %i.bb, %bb.aw ], [ %i.bb, %bb.y ], [ %i.bb, %bb.ar ], [ %i.bb, %bb.at ], [ %i.bb, %bb.av ], [ %i.bb, %bb.w ], [ %i.bb, %bb.z ], [ %i.bb, %bb.as ], [ %i.bb, %bb.ae ], [ %i.bb, %bb.au ], [ %i.bb, %bb.r ], [ %i.bb, %bb.x ], [ %i.fp, %bb.am ], [ %i.bb, %bb.u ], [ %i.bb, %AdjustFractSeconds.exit101.i ], [ %i.bb, %bb.s ], [ %i.bb, %bb.t ], [ %i.bb, %bb.v ], [ %i.gx, %AdjustFractSeconds.exit111.i ] ; 2 uses
  %.181.i = phi i8 [ 0, %bb.h ], [ 1, %bb.aw ], [ 1, %bb.y ], [ 1, %bb.ar ], [ 1, %bb.at ], [ 1, %bb.av ], [ 1, %bb.w ], [ 1, %bb.z ], [ 1, %bb.as ], [ 0, %bb.ae ], [ 1, %bb.au ], [ 1, %bb.r ], [ 1, %bb.x ], [ 0, %bb.am ], [ 1, %bb.u ], [ 0, %AdjustFractSeconds.exit101.i ], [ 1, %bb.s ], [ 1, %bb.t ], [ 1, %bb.v ], [ 0, %AdjustFractSeconds.exit111.i ]
  %.178.i = phi i1 [ false, %bb.h ], [ false, %bb.aw ], [ true, %bb.y ], [ false, %bb.ar ], [ false, %bb.at ], [ false, %bb.av ], [ true, %bb.w ], [ true, %bb.z ], [ false, %bb.as ], [ false, %bb.ae ], [ false, %bb.au ], [ true, %bb.r ], [ true, %bb.x ], [ false, %bb.am ], [ true, %bb.u ], [ false, %AdjustFractSeconds.exit101.i ], [ true, %bb.s ], [ true, %bb.t ], [ true, %bb.v ], [ false, %AdjustFractSeconds.exit111.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.me = load i8, ptr %i.md, align 1             ; 2 uses
  %.not91.i = icmp eq i8 %i.me, 0
  br i1 %.not91.i, label %.sink.split176, label %.lr.ph.i

DecodeISO8601Interval.exit:                       ; preds = %bb.bm, %bb.bn
  %i.mf = load ptr, ptr %i.a, align 8
  %i.mg = load i8, ptr %i.mf, align 1
  %.not53 = icmp eq i8 %i.mg, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not53, label %bb.bp, label %bb.bo

.sink.split.sink.split:                           ; preds = %bb.ag, %bb.ah, %bb.ai, %bb.j, %bb.k, %bb.l, %bb.aq, %bb.ad, %bb.i, %bb.an, %bb.q, %bb.af, %._crit_edge.i, %AdjustFractSeconds.exit111.i, %bb.am, %AdjustFractSeconds.exit128.i, %bb.be, %bb.bl, %bb.bf, %bb.bd, %.loopexit140.i, %.loopexit140.loopexit.i, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.bo

bb.bo:                                            ; preds = %.sink.split, %DecodeISO8601Interval.exit, %bb.c
  %i.mh = tail call ptr @__errno_location() #15
  store i32 330, ptr %i.mh, align 4
  br label %bb.bu

.sink.split176.sink.split:                        ; preds = %AdjustFractSeconds.exit111.i, %AdjustFractSeconds.exit101.i, %bb.am, %bb.ae, %AdjustFractSeconds.exit128.i, %bb.ay, %bb.az, %AdjustFractSeconds.exit118.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %.sink.split176

.sink.split176:                                   ; preds = %AdjustFractDays.exit.i, %.sink.split176.sink.split, %bb.g
end_hunk_0
