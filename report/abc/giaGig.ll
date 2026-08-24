Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaGig?download=true
inline.NumInlined: 182
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Gls_ManParse:bb.a
  %i.abu = zext nneg i32 %spec.select.i353 to i64
  %i.abv = shl nuw nsw i64 %i.abu, 2              ; 2 uses
  br i1 %.not9.i10.i355, label %bb.ig, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.abw = tail call ptr @realloc(ptr noundef nonnull %i.abt, i64 noundef %i.abv) #27
  br label %bb.ih

bb.ig:                                            ; preds = %bb.ie
  %i.abx = tail call noalias ptr @malloc(i64 noundef %i.abv) #25
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.if
  %i.aby = phi ptr [ %i.abw, %bb.if ], [ %i.abx, %bb.ig ]
  store ptr %i.aby, ptr %i.abs, align 8, !tbaa !24
  br label %Vec_IntGrow.exit11.sink.split.i356

Vec_IntGrow.exit11.sink.split.i356:               ; preds = %bb.ih, %Vec_IntGrow.exit.i359
  %spec.select.sink.i357 = phi i32 [ %spec.select.i353, %bb.ih ], [ 16, %Vec_IntGrow.exit.i359 ]
  store i32 %spec.select.sink.i357, ptr %i.abf, align 8, !tbaa !21
  %.pre481 = load i32, ptr %i.abg, align 4, !tbaa !25
  br label %Vec_IntPush.exit360

Vec_IntPush.exit360:                              ; preds = %bb.hy, %bb.id, %Vec_IntGrow.exit11.sink.split.i356
  %i.abz = phi i32 [ %i.abh, %bb.hy ], [ %i.abh, %bb.id ], [ %.pre481, %Vec_IntGrow.exit11.sink.split.i356 ] ; 2 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abf, i64 8
  %i.acb = load ptr, ptr %i.aca, align 8, !tbaa !24
  %i.acc = add nsw i32 %i.abz, 1
  store i32 %i.acc, ptr %i.abg, align 4, !tbaa !25
  %i.acd = sext i32 %i.abz to i64
  %i.ace = getelementptr inbounds [4 x i8], ptr %i.acb, i64 %i.acd
  store i32 %i.abe, ptr %i.ace, align 4, !tbaa !27
  %i.acf = load ptr, ptr %i.i, align 8, !tbaa !48 ; 6 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 4 ; 3 uses
  %i.ach = load i32, ptr %i.acg, align 4, !tbaa !25 ; 7 uses
  %i.aci = load i32, ptr %i.acf, align 8, !tbaa !21
  %i.acj = icmp eq i32 %i.ach, %i.aci
  br i1 %i.acj, label %bb.ii, label %Vec_IntPush.exit368

bb.ii:                                            ; preds = %Vec_IntPush.exit360
  %i.ack = icmp slt i32 %i.ach, 16
  br i1 %i.ack, label %bb.ij, label %bb.im

bb.ij:                                            ; preds = %bb.ii
  %i.acl = getelementptr inbounds nuw i8, ptr %i.acf, i64 8 ; 2 uses
  %i.acm = load ptr, ptr %i.acl, align 8, !tbaa !24 ; 2 uses
  %.not9.i.i366 = icmp eq ptr %i.acm, null
  br i1 %.not9.i.i366, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.acn = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.acm, i64 noundef 64) #27
  br label %Vec_IntGrow.exit.i367

bb.il:                                            ; preds = %bb.ij
  %i.aco = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit.i367

Vec_IntGrow.exit.i367:                            ; preds = %bb.il, %bb.ik
  %i.acp = phi ptr [ %i.acn, %bb.ik ], [ %i.aco, %bb.il ]
  store ptr %i.acp, ptr %i.acl, align 8, !tbaa !24
  br label %Vec_IntGrow.exit11.sink.split.i364

bb.im:                                            ; preds = %bb.ii
  %i.acq = icmp samesign ult i32 %i.ach, 1073741823
  %i.acr = shl nuw nsw i32 %i.ach, 1
  %spec.select.i361 = select i1 %i.acq, i32 %i.acr, i32 2147483647 ; 3 uses
  %.not.i9.i362 = icmp samesign ult i32 %i.ach, %spec.select.i361
  br i1 %.not.i9.i362, label %bb.in, label %Vec_IntPush.exit368

bb.in:                                            ; preds = %bb.im
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acf, i64 8 ; 2 uses
  %i.act = load ptr, ptr %i.acs, align 8, !tbaa !24 ; 2 uses
  %.not9.i10.i363 = icmp eq ptr %i.act, null
  %i.acu = zext nneg i32 %spec.select.i361 to i64
  %i.acv = shl nuw nsw i64 %i.acu, 2              ; 2 uses
  br i1 %.not9.i10.i363, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.acw = tail call ptr @realloc(ptr noundef nonnull %i.act, i64 noundef %i.acv) #27
  br label %bb.iq

bb.ip:                                            ; preds = %bb.in
  %i.acx = tail call noalias ptr @malloc(i64 noundef %i.acv) #25
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %bb.io
  %i.acy = phi ptr [ %i.acw, %bb.io ], [ %i.acx, %bb.ip ]
  store ptr %i.acy, ptr %i.acs, align 8, !tbaa !24
  br label %Vec_IntGrow.exit11.sink.split.i364

Vec_IntGrow.exit11.sink.split.i364:               ; preds = %bb.iq, %Vec_IntGrow.exit.i367
  %spec.select.sink.i365 = phi i32 [ %spec.select.i361, %bb.iq ], [ 16, %Vec_IntGrow.exit.i367 ]
  store i32 %spec.select.sink.i365, ptr %i.acf, align 8, !tbaa !21
  %.pre482 = load i32, ptr %i.acg, align 4, !tbaa !25
  br label %Vec_IntPush.exit368

Vec_IntPush.exit368:                              ; preds = %Vec_IntPush.exit360, %bb.im, %Vec_IntGrow.exit11.sink.split.i364
  %i.acz = phi i32 [ %i.ach, %Vec_IntPush.exit360 ], [ %i.ach, %bb.im ], [ %.pre482, %Vec_IntGrow.exit11.sink.split.i364 ] ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acf, i64 8
  %i.adb = load ptr, ptr %i.ada, align 8, !tbaa !24
  %i.adc = add nsw i32 %i.acz, 1
  store i32 %i.adc, ptr %i.acg, align 4, !tbaa !25
  %i.add = sext i32 %i.acz to i64
  %i.ade = getelementptr inbounds [4 x i8], ptr %i.adb, i64 %i.add
  store i32 %.018.i, ptr %i.ade, align 4, !tbaa !27
  br label %bb.ir

bb.ir:                                            ; preds = %bb.bu, %Vec_IntPush.exit226, %Vec_IntPush.exit313, %Vec_IntPush.exit368, %Vec_IntPush.exit268, %bb.bt, %Vec_IntPush.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.adf = tail call ptr @fgets(ptr noundef %i.b, i32 noundef 1000000, ptr noundef %0)
  %.not = icmp eq ptr %i.adf, null
  br i1 %.not, label %._crit_edge440, label %bb.b, !llvm.loop !68

._crit_edge440:                                   ; preds = %bb.ir, %bb.a
  %.not104 = icmp eq ptr %i.b, null
  br i1 %.not104, label %bb.it, label %bb.is

bb.is:                                            ; preds = %._crit_edge440
  tail call void @free(ptr noundef nonnull %i.b) #26
  br label %bb.it

bb.it:                                            ; preds = %._crit_edge440, %bb.is
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 1
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @Abc_TtReadHex(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #10 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !53      ; 2 uses
  %i.b = icmp eq i8 %i.a, 48
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !53
  %i.e = icmp eq i8 %i.d, 120
  %spec.select.idx = select i1 %i.e, i64 2, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.idx ; 2 uses
  %.pre = load i8, ptr %spec.select, align 1, !tbaa !53
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i8 [ %i.a, %bb.a ], [ %.pre, %bb.b ] ; 3 uses
  %.038 = phi ptr [ %1, %bb.a ], [ %spec.select, %bb.b ] ; 2 uses
  %i.g = add i8 %i.f, -58
  %or.cond.i50 = icmp ult i8 %i.g, -10
  %i.h = and i8 %i.f, -33
  %i.i = add i8 %i.h, -71
  %i.j = icmp ult i8 %i.i, -6
  %narrow.i.not51 = and i1 %or.cond.i50, %i.j
  br i1 %narrow.i.not51, label %.thread83, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.c ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.038, i64 %indvars.iv.next
  %i.l = load i8, ptr %i.k, align 1, !tbaa !53    ; 2 uses
  %i.m = add i8 %i.l, -58
  %or.cond.i = icmp ult i8 %i.m, -10
  %i.n = and i8 %i.l, -33
  %i.o = add i8 %i.n, -71
  %i.p = icmp ult i8 %i.o, -6
  %narrow.i.not = and i1 %or.cond.i, %i.p
  br i1 %narrow.i.not, label %._crit_edge, label %.lr.ph, !llvm.loop !69

._crit_edge:                                      ; preds = %.lr.ph
  %indvars = trunc i64 %indvars.iv.next to i32    ; 3 uses
  switch i32 %indvars, label %.lr.ph.preheader.i [
    i32 1, label %bb.d
    i32 0, label %.thread83
  ]

bb.d:                                             ; preds = %._crit_edge
  %switch.tableidx = add i8 %i.f, -48             ; 3 uses
  %i.q = icmp ult i8 %switch.tableidx, 23
  br i1 %i.q, label %switch.hole_check, label %.lr.ph57.preheader

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %i.r = add i32 %indvars, -1                     ; 2 uses
  %i.s = lshr i32 %i.r, 1
  %i.t = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.s, i1 false) ; 2 uses
  %i.u = sub nuw nsw i32 35, %i.t
  %i.v = icmp ult i32 %i.r, 16
  %i.w = sub nsw i32 29, %i.t
  %i.x = shl nuw nsw i32 1, %i.w
  %spec.select48 = select i1 %i.v, i32 1, i32 %i.x
  %i.y = zext nneg i32 %spec.select48 to i64
  %i.z = shl nuw nsw i64 %i.y, 3
  br label %.lr.ph57.preheader

.thread83:                                        ; preds = %._crit_edge, %bb.c
  store i64 0, ptr %0, align 8
  br label %.sink.split

.lr.ph57.preheader:                               ; preds = %switch.hole_check, %bb.d, %.lr.ph.preheader.i
  %.0.lcssa74 = phi i32 [ %indvars, %.lr.ph.preheader.i ], [ 1, %bb.d ], [ 1, %switch.hole_check ] ; 2 uses
  %.fr = phi i32 [ %i.u, %.lr.ph.preheader.i ], [ 2, %bb.d ], [ 2, %switch.hole_check ] ; 4 uses
  %i.aa = phi i64 [ %i.z, %.lr.ph.preheader.i ], [ 8, %bb.d ], [ 8, %switch.hole_check ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %0, i8 0, i64 %i.aa, i1 false), !tbaa !64
  %2 = sext i32 %.0.lcssa74 to i64
  %wide.trip.count = zext i32 %.0.lcssa74 to i64
  %3 = getelementptr i8, ptr %.038, i64 %2
  br label %.lr.ph57

.lr.ph57:                                         ; preds = %.lr.ph57.preheader, %Abc_TtReadHexDigit.exit
  %indvars.iv66 = phi i64 [ 0, %.lr.ph57.preheader ], [ %indvars.iv.next67, %Abc_TtReadHexDigit.exit ] ; 4 uses
  %4 = xor i64 %indvars.iv66, -1
  %i.ab = getelementptr i8, ptr %3, i64 %4
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !53  ; 4 uses
  %i.ad = sext i8 %i.ac to i64                    ; 3 uses
  %i.ae = add i8 %i.ac, -48
  %or.cond.i43 = icmp ult i8 %i.ae, 10
  br i1 %or.cond.i43, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph57
  %i.af = add nsw i64 %i.ad, -48
  br label %Abc_TtReadHexDigit.exit

bb.f:                                             ; preds = %.lr.ph57
  %i.ag = add i8 %i.ac, -65
  %or.cond5.i = icmp ult i8 %i.ag, 6
  br i1 %or.cond5.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = add nsw i64 %i.ad, -55
  br label %Abc_TtReadHexDigit.exit

bb.h:                                             ; preds = %bb.f
  %i.ai = add i8 %i.ac, -97
  %or.cond8.i = icmp ult i8 %i.ai, 6
  %i.aj = add nsw i64 %i.ad, -87
  %spec.select.i = select i1 %or.cond8.i, i64 %i.aj, i64 -1
  br label %Abc_TtReadHexDigit.exit

Abc_TtReadHexDigit.exit:                          ; preds = %bb.e, %bb.g, %bb.h
  %.0.i = phi i64 [ %i.af, %bb.e ], [ %i.ah, %bb.g ], [ %spec.select.i, %bb.h ]
  %i.ak = shl i64 %indvars.iv66, 2
  %i.al = and i64 %i.ak, 60
  %i.am = shl i64 %.0.i, %i.al
  %i.an = lshr i64 %indvars.iv66, 4
  %i.ao = and i64 %i.an, 268435455
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ao ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !64
  %i.ar = or i64 %i.aq, %i.am
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !64
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next67, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge58, label %.lr.ph57, !llvm.loop !70

._crit_edge58:                                    ; preds = %Abc_TtReadHexDigit.exit
  %i.as = icmp samesign ult i32 %.fr, 6
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge58
  %i.at = load i64, ptr %0, align 8, !tbaa !64    ; 4 uses
  %i.au = icmp samesign ult i32 %.fr, 3
  %i.av = and i64 %i.at, 15
  %i.aw = mul nuw nsw i64 %i.av, 17
  %spec.select86 = select i1 %i.au, i64 %i.aw, i64 %i.at
  %i.ax = icmp samesign ult i32 %.fr, 4
  %i.ay = and i64 %spec.select86, 255
  %i.az = mul nuw nsw i64 %i.ay, 257
  %i.ba = select i1 %i.ax, i64 %i.az, i64 %i.at
  %.not72 = icmp eq i32 %.fr, 5
  %i.bb = and i64 %i.ba, 65535
  %i.bc = mul nuw nsw i64 %i.bb, 65537
  %spec.select87 = select i1 %.not72, i64 %i.at, i64 %i.bc
  %i.bd = and i64 %spec.select87, 4294967295
  %i.be = mul nuw i64 %i.bd, 4294967297
  br label %.sink.split

switch.hole_check:                                ; preds = %bb.d
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 4325409, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %.lr.ph57.preheader

switch.lookup:                                    ; preds = %switch.hole_check
  %i.bf = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.Abc_TtReadHex, i64 %i.bf
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %.thread83, %bb.i, %switch.lookup
  %.sink = phi i64 [ %switch.load, %switch.lookup ], [ 0, %.thread83 ], [ %i.be, %bb.i ]
  store i64 %.sink, ptr %0, align 8, !tbaa !64
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %._crit_edge58
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @Gls_ManConstruct(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %calloc = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %calloc, i64 8
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 6 uses
  store i32 0, ptr %i.d, align 4, !tbaa !25
  store i32 16, ptr %i.c, align 8, !tbaa !21
  %i.e = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 6 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %.val152 = load i32, ptr %i.i, align 4, !tbaa !15
  %i.j = tail call ptr @Gia_ManStart(i32 noundef %.val152) #26 ; 18 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %Abc_UtilStrsav.exit.thread, label %bb.b

Abc_UtilStrsav.exit.thread:                       ; preds = %bb.a
  store ptr null, ptr %i.j, align 8, !tbaa !71
  br label %Abc_UtilStrsav.exit198

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #28
  %i.l = add i64 %i.k, 1
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #25 ; 2 uses
  %i.n = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull readonly dereferenceable(1) %1) #26 ; 0 uses
  store ptr %i.m, ptr %i.j, align 8, !tbaa !71
  %i.o = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #28
  %i.p = add i64 %i.o, 1
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.p) #25 ; 2 uses
  %i.r = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.q, ptr noundef nonnull readonly dereferenceable(1) %1) #26 ; 0 uses
  br label %Abc_UtilStrsav.exit198

Abc_UtilStrsav.exit198:                           ; preds = %Abc_UtilStrsav.exit.thread, %bb.b
  %i.s = phi ptr [ %i.q, %bb.b ], [ null, %Abc_UtilStrsav.exit.thread ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !84
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %.val = load i32, ptr %i.v, align 4, !tbaa !15  ; 3 uses
  %i.w = add i32 %.val, -1
  %or.cond.i.i = icmp ult i32 %i.w, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val ; 2 uses
  %.not.i.i = icmp ne i32 %spec.store.select.i.i, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.x = sext i32 %spec.store.select.i.i to i64
  %i.y = shl nsw i64 %i.x, 2
  %i.z = tail call noalias ptr @malloc(i64 noundef %i.y) #25 ; 16 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  %i.aa = sext i32 %.val to i64
  %i.ab = shl nsw i64 %i.aa, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.z, i8 -1, i64 %i.ab, i1 false)
  store i32 0, ptr %i.z, align 4, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 1, ptr %i.ac, align 4, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !45 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 4
  %.val193215 = load i32, ptr %i.af, align 4, !tbaa !25
  %i.ag = icmp sgt i32 %.val193215, 0
  br i1 %i.ag, label %.lr.ph, label %.critedge.preheader

.critedge.preheader:                              ; preds = %.lr.ph, %Abc_UtilStrsav.exit198
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !47 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  %.val192217 = load i32, ptr %i.aj, align 4, !tbaa !25
  %i.ak = icmp sgt i32 %.val192217, 0
  br i1 %i.ak, label %.critedge, label %.critedge2.preheader

.lr.ph:                                           ; preds = %Abc_UtilStrsav.exit198, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %Abc_UtilStrsav.exit198 ] ; 2 uses
  %i.al = phi ptr [ %i.as, %.lr.ph ], [ %i.ae, %Abc_UtilStrsav.exit198 ]
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %.val180 = load ptr, ptr %i.am, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.val180, i64 %indvars.iv
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !27
  %i.ap = tail call fastcc i32 @Gia_ManAppendCi(ptr noundef nonnull %i.j)
  %i.aq = sext i32 %i.ao to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.aq
  store i32 %i.ap, ptr %i.ar, align 4, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.as = load ptr, ptr %i.ad, align 8, !tbaa !45 ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 4
  %.val193 = load i32, ptr %i.at, align 4, !tbaa !25
  %i.au = sext i32 %.val193 to i64
  %i.av = icmp slt i64 %indvars.iv.next, %i.au
  br i1 %i.av, label %.lr.ph, label %.critedge.preheader, !llvm.loop !85

.critedge2.preheader:                             ; preds = %.critedge, %.critedge.preheader
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !48 ; 3 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 4
  %.val191223 = load i32, ptr %i.ay, align 4, !tbaa !25
  %i.az = icmp sgt i32 %.val191223, 0
  br i1 %i.az, label %.lr.ph225, label %.critedge4.preheader

.lr.ph225:                                        ; preds = %.critedge2.preheader
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bb = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.j, i64 32      ; 2 uses
  br label %bb.c

.critedge:                                        ; preds = %.critedge.preheader, %.critedge
  %indvars.iv244 = phi i64 [ %indvars.iv.next245, %.critedge ], [ 0, %.critedge.preheader ] ; 2 uses
  %i.bd = phi ptr [ %i.bk, %.critedge ], [ %i.ai, %.critedge.preheader ]
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  %.val179 = load ptr, ptr %i.be, align 8, !tbaa !24
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.val179, i64 %indvars.iv244
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !27
  %i.bh = tail call fastcc i32 @Gia_ManAppendCi(ptr noundef nonnull %i.j)
  %i.bi = sext i32 %i.bg to i64
end_hunk_0
