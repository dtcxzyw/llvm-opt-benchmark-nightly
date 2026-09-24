Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/identify?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN6LibRaw8identifyEv:bb.a
bb.ic:                                            ; preds = %bb.ib, %bb.ia
  %i.akp = load i32, ptr %i.k, align 8, !tbaa !82 ; 5 uses
  %i.akq = icmp ugt i32 %i.akp, 999
  br i1 %i.akq, label %bb.id, label %bb.if

bb.id:                                            ; preds = %bb.ic
  %i.akr = load i32, ptr %i.dk, align 4, !tbaa !99
  %i.aks = icmp eq i32 %i.akr, 3
  br i1 %i.aks, label %bb.ie, label %bb.if

bb.ie:                                            ; preds = %bb.id
  %i.akt = lshr i32 %i.akp, 2
  %i.aku = and i32 %i.akt, 572662306
  %i.akv = shl i32 %i.akp, 2
  %i.akw = and i32 %i.akv, -2004318072
  %i.akx = or disjoint i32 %i.aku, %i.akw
  %i.aky = shl i32 %i.akp, 1
  %i.akz = and i32 %i.akx, %i.aky
  %i.ala = or i32 %i.akz, %i.akp
  store i32 %i.ala, ptr %i.k, align 8, !tbaa !82
  br label %bb.if

bb.if:                                            ; preds = %bb.ic, %bb.id, %bb.ie, %bb.ct
  %i.alb = load i32, ptr %i.m, align 8, !tbaa !83 ; 2 uses
  %i.alc = icmp eq i32 %i.alb, -1
  br i1 %i.alc, label %bb.ig, label %.thread476

bb.ig:                                            ; preds = %bb.if
  %i.ald = load i32, ptr %i.n, align 4, !tbaa !84 ; 2 uses
  %i.ale = icmp eq i32 %i.ald, -1
  %spec.store.select = select i1 %i.ale, i32 0, i32 %i.ald ; 2 uses
  store i32 %spec.store.select, ptr %i.m, align 8
  br label %.thread476

.thread476:                                       ; preds = %bb.ig, %bb.if
  %i.alf = phi i32 [ %spec.store.select, %bb.ig ], [ %i.alb, %bb.if ] ; 2 uses
  %i.alg = add i32 %i.alf, -90
  %or.cond448 = icmp ult i32 %i.alg, -179
  br i1 %or.cond448, label %bb.ih, label %bb.ik

bb.ih:                                            ; preds = %.thread476
  %i.alh = add nsw i32 %i.alf, 3600
  %i.ali = srem i32 %i.alh, 360
  switch i32 %i.ali, label %bb.ik [
    i32 270, label %.sink.split655
    i32 180, label %bb.ii
    i32 90, label %bb.ij
  ]

bb.ii:                                            ; preds = %bb.ih
  br label %.sink.split655

bb.ij:                                            ; preds = %bb.ih
  br label %.sink.split655

.sink.split655:                                   ; preds = %bb.ih, %bb.ij, %bb.ii
  %.sink656 = phi i32 [ 6, %bb.ij ], [ 3, %bb.ii ], [ 5, %bb.ih ]
  store i32 %.sink656, ptr %i.m, align 8, !tbaa !83
  br label %bb.ik

bb.ik:                                            ; preds = %.sink.split655, %.thread476, %bb.ih
  %i.alj = getelementptr inbounds nuw i8, ptr %0, i64 381912
  %i.alk = load i32, ptr %i.alj, align 8, !tbaa !141 ; 2 uses
  %.not411 = icmp eq i32 %i.alk, 0
  br i1 %.not411, label %bb.il, label %bb.io

bb.il:                                            ; preds = %bb.ik
  %.unpack413 = load i64, ptr %i.cl, align 8, !tbaa !119 ; 3 uses
  %.unpack415 = load i64, ptr %.repack235, align 8, !tbaa !119
  %i.all = icmp eq i64 %.unpack413, ptrtoint (ptr @_ZN6LibRaw18phase_one_load_rawEv to i64)
  %i.alm = icmp eq i64 %.unpack415, 0
  %i.aln = icmp eq i64 %.unpack413, ptrtoint (ptr @_ZN6LibRaw20phase_one_load_raw_sEv to i64)
  %i.alo = or i1 %i.all, %i.aln
  %i.alp = icmp eq i64 %.unpack413, ptrtoint (ptr @_ZN6LibRaw20phase_one_load_raw_cEv to i64)
  %or.cond450479 = or i1 %i.alp, %i.alo
  %or.cond452 = and i1 %i.alm, %or.cond450479
  br i1 %or.cond452, label %bb.im, label %bb.in

bb.im:                                            ; preds = %bb.il
  %i.alq = getelementptr inbounds nuw i8, ptr %0, i64 153476
  %i.alr = load i32, ptr %i.alq, align 4, !tbaa !230
  br label %bb.io

bb.in:                                            ; preds = %bb.il
  %i.als = load i32, ptr %i.co, align 4, !tbaa !127
  br label %bb.io

bb.io:                                            ; preds = %bb.ik, %bb.im, %bb.in
  %.sink657 = phi i32 [ %i.alr, %bb.im ], [ %i.als, %bb.in ], [ %i.alk, %bb.ik ]
  %i.alt = getelementptr inbounds nuw i8, ptr %0, i64 192676
  store i32 %.sink657, ptr %i.alt, align 4, !tbaa !231
  %i.alu = getelementptr inbounds nuw i8, ptr %0, i64 768264
  %i.alv = load ptr, ptr %i.alu, align 8, !tbaa !213 ; 2 uses
  %.not416 = icmp eq ptr %i.alv, null
  br i1 %.not416, label %bb.ir, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.alw = getelementptr inbounds nuw i8, ptr %0, i64 768272
  %i.alx = load ptr, ptr %i.alw, align 8, !tbaa !214
  %i.aly = call noundef i32 %i.alv(ptr noundef %i.alx, i32 noundef 2, i32 noundef 1, i32 noundef 2)
  %.not417 = icmp eq i32 %i.aly, 0
  br i1 %.not417, label %bb.ir, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.alz = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 6, ptr %i.alz, align 16, !tbaa !188
  call void @__cxa_throw(ptr nonnull %i.alz, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #21
  unreachable

bb.ir:                                            ; preds = %bb.io, %bb.ip, %bb.fz, %bb.ga, %bb.fa, %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare noundef i32 @_ZN6LibRaw20parse_custom_camerasEjP22libraw_custom_camera_tPPc(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #5

declare noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #5

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #9

declare noundef ptr @_ZN6LibRaw6memmemEPcmS0_m(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN6LibRaw15parse_phase_oneEx(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef) local_unnamed_addr #5

declare noundef i32 @_ZN6LibRaw10parse_tiffEx(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef) local_unnamed_addr #5

declare void @_ZN6LibRaw10apply_tiffEv(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #5

declare void @_ZN6LibRaw10parse_ciffExii(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN6LibRaw14canon_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare void @_ZN6LibRaw13parse_kyoceraEv(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

declare void @_ZN6LibRaw22quicktake_100_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare void @_ZN6LibRaw19kodak_radc_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN6LibRaw10parse_fujiEx(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef) local_unnamed_addr #5

declare void @_ZN6LibRaw17unpacked_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare void @_ZN6LibRaw20parse_fuji_thumbnailEx(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef) local_unnamed_addr #5

declare void @_ZN6LibRaw10parse_riffEi(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef) local_unnamed_addr #5

declare void @_ZN6LibRaw8parse_qtEx(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef) local_unnamed_addr #5

declare void @_ZN6LibRaw14nokia_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare void @_ZN6LibRaw18eight_bit_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare void @_ZN6LibRaw12parse_rolleiEv(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #5

declare void @_ZN6LibRaw14parse_sinar_iaEv(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #5

declare void @_ZN6LibRaw13parse_minoltaEx(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef) local_unnamed_addr #5

declare void @_ZN6LibRaw10parse_cineEv(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #5

declare noundef i32 @_ZN6LibRaw8parseCR3EyyRsPcS0_S0_y(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, i64 noundef, ptr noundef nonnull align 2 dereferenceable(2), ptr noundef, ptr noundef nonnull align 2 dereferenceable(2), ptr noundef nonnull align 2 dereferenceable(2), i64 noundef) local_unnamed_addr #5

declare void @_ZN6LibRaw14selectCRXTrackEv(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #5

declare void @_ZN6LibRaw22minolta_rd175_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare void @_ZN6LibRaw22android_loose_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare void @_ZN6LibRaw22android_tight_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare void @_ZN6LibRaw15packed_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare void @_ZN6LibRaw26unpacked_load_raw_reversedEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare void @_ZN6LibRaw10parse_smalExx(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, i64 noundef) local_unnamed_addr #5

declare noundef i32 @_ZN6LibRaw10parse_jpegEx(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef) local_unnamed_addr #5

declare void @_ZN6LibRaw14parse_broadcomEv(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #5

declare void @_ZN6LibRaw17broadcom_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN6LibRaw24identify_finetune_pentaxEv(ptr nofree noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.b = load i32, ptr %i.a, align 4, !tbaa !131
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 381760
  %i.d = load i64, ptr %i.c, align 8, !tbaa !118  ; 2 uses
  %.not10 = icmp eq i64 %i.d, 0
  br i1 %.not10, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 381712
  %i.f = load i32, ptr %i.e, align 8, !tbaa !88   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 433512
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.d, !llvm.loop !232

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw [33472 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !233
  %i.l = icmp eq i64 %i.k, %i.d
  br i1 %i.l, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !234
  %i.o = icmp eq i32 %i.n, 34892
  br i1 %i.o, label %.thread41, label %.thread

.thread:                                          ; preds = %bb.c, %.preheader, %bb.e, %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.q = load i32, ptr %i.p, align 4, !tbaa !79   ; 2 uses
  switch i32 %i.q, label %.thread41 [
    i32 49, label %bb.f
    i32 59, label %bb.f
    i32 56, label %.thread._crit_edge
  ]

.thread._crit_edge:                               ; preds = %.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.pre = load i16, ptr %.phi.trans.insert, align 4, !tbaa !126
  br label %bb.ab

bb.f:                                             ; preds = %.thread, %.thread
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 10 uses
  %i.s = load i16, ptr %i.r, align 4, !tbaa !126  ; 2 uses
  switch i16 %i.s, label %thread-pre-split.thread [
    i16 2624, label %bb.g
    i16 3136, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.u = load i16, ptr %i.t, align 2, !tbaa !125
  %i.v = icmp eq i16 %i.u, 3936
  br i1 %i.v, label %.thread12, label %thread-pre-split.thread

.thread12:                                        ; preds = %bb.g
  store i16 2616, ptr %i.r, align 4, !tbaa !126
  store i16 3896, ptr %i.t, align 2, !tbaa !125
  br label %thread-pre-split.thread

bb.h:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !125
  %i.y = icmp eq i16 %i.x, 4864
  br i1 %i.y, label %bb.i, label %thread-pre-split.thread

bb.i:                                             ; preds = %bb.h
  store i16 3124, ptr %i.r, align 4, !tbaa !126
  store i16 4688, ptr %i.w, align 2, !tbaa !125
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 370546198, ptr %i.z, align 8, !tbaa !82
  br label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %bb.f, %bb.g, %.thread12, %bb.h, %bb.i
  %i.aa = phi i16 [ 2616, %.thread12 ], [ %i.s, %bb.f ], [ 3136, %bb.h ], [ 3124, %bb.i ], [ 2624, %bb.g ]
  switch i32 %i.q, label %.thread41 [
    i32 49, label %bb.j
    i32 56, label %bb.ab
  ]

bb.j:                                             ; preds = %thread-pre-split.thread
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 7 uses
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !125 ; 6 uses
  %i.ae = icmp eq i16 %i.ad, 4352
  br i1 %i.ae, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 381696
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !87
  switch i64 %i.ag, label %.thread31 [
    i64 77420, label %bb.l
    i64 77310, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  store i16 4309, ptr %i.ac, align 2, !tbaa !125
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 370546198, ptr %i.ah, align 8, !tbaa !82
  br label %.thread31

bb.m:                                             ; preds = %bb.j
  %i.ai = icmp ugt i16 %i.ad, 4959
  br i1 %i.ai, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 381696
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !87 ; 2 uses
  switch i64 %i.ak, label %thread-pre-split15 [
    i64 77430, label %.thread17
    i64 77680, label %.thread17
    i64 77681, label %.thread17
  ]

.thread17:                                        ; preds = %bb.n, %bb.n, %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 10, ptr %i.al, align 2, !tbaa !129
  store i16 4950, ptr %i.ac, align 2, !tbaa !125
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 370546198, ptr %i.am, align 8, !tbaa !82
  br label %.thread31

thread-pre-split15:                               ; preds = %bb.n
  switch i16 %i.ad, label %.thread31 [
    i16 6080, label %bb.o
    i16 6304, label %bb.t
  ]

bb.o:                                             ; preds = %thread-pre-split15
  %i.an = icmp eq i64 %i.ak, 78370
  br i1 %i.an, label %bb.p, label %thread-pre-split22.thread67

bb.p:                                             ; preds = %bb.o
  store <4 x i16> <i16 4016, i16 6020, i16 32, i16 60>, ptr %i.r, align 4, !tbaa !85
  br label %.thread31

.critedge:                                        ; preds = %bb.m
  %i.ao = icmp eq i16 %i.ad, 4736
  br i1 %i.ao, label %bb.q, label %.thread31

bb.q:                                             ; preds = %.critedge
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 381696
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !87
  %i.ar = icmp eq i64 %i.aq, 77240
  br i1 %i.ar, label %.thread47, label %.thread31

.thread47:                                        ; preds = %bb.q
  store i16 3122, ptr %i.r, align 4, !tbaa !126
  store i16 4684, ptr %i.ac, align 2, !tbaa !125
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 370546198, ptr %i.as, align 8, !tbaa !82
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 2, ptr %i.at, align 8, !tbaa !128
  br label %.thread41

thread-pre-split22.thread67:                      ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 381696
  %i.av = load i64, ptr %i.au, align 8, !tbaa !87
  %i.aw = icmp eq i64 %i.av, 78520
  br i1 %i.aw, label %.thread27, label %bb.r

.thread27:                                        ; preds = %thread-pre-split22.thread67
  store <4 x i16> <i16 4024, i16 6024, i16 28, i16 56>, ptr %i.r, align 4, !tbaa !85
  br label %.thread41

bb.r:                                             ; preds = %thread-pre-split22.thread67
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 381696
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !87
  %i.az = icmp eq i64 %i.ay, 77980
  br i1 %i.az, label %bb.s, label %.thread31

bb.s:                                             ; preds = %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 4, ptr %i.ba, align 2, !tbaa !129
  store i16 6040, ptr %i.ac, align 2, !tbaa !125
  br label %.thread41

bb.t:                                             ; preds = %thread-pre-split15
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 381696
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !87
  switch i64 %i.bc, label %.thread41 [
    i64 78420, label %bb.u
    i64 78550, label %.thread42.thread
  ]

end_hunk_0
begin_hunk_1_@_ZN6LibRaw21identify_finetune_dcrEPcxx:bb.a
    i16 12, label %bb.nl
    i16 0, label %bb.nm
    i16 27, label %bb.nn
  ]

bb.nk:                                            ; preds = %bb.nj
  %i.aqp = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 4692, ptr %i.aqp, align 2, !tbaa !125
  br label %.loopexit

bb.nl:                                            ; preds = %bb.nj
  %i.aqq = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 4624, ptr %i.aqq, align 2, !tbaa !125
  %i.aqr = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 3080, ptr %i.aqr, align 4, !tbaa !126
  br label %.loopexit

bb.nm:                                            ; preds = %bb.nj
  %i.aqs = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 3516, ptr %i.aqs, align 2, !tbaa !125
  %i.aqt = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 2344, ptr %i.aqt, align 4, !tbaa !126
  br label %.loopexit

bb.nn:                                            ; preds = %bb.nj
  %i.aqu = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.aqv = load i16, ptr %i.aqu, align 2, !tbaa !125
  %i.aqw = add i16 %i.aqv, -12
  store i16 %i.aqw, ptr %i.aqu, align 2, !tbaa !125
  br label %.loopexit

bb.no:                                            ; preds = %bb.nj
  %i.aqx = getelementptr inbounds nuw i8, ptr %0, i64 5596 ; 2 uses
  %i.aqy = load i32, ptr %i.aqx, align 4, !tbaa !139
  %i.aqz = or i32 %i.aqy, 33554432
  store i32 %i.aqz, ptr %i.aqx, align 4, !tbaa !139
  br label %.loopexit

bb.np:                                            ; preds = %bb.mt, %bb.mt, %bb.mt
  switch i16 %i.and, label %bb.ns [
    i16 6656, label %bb.nq
    i16 6272, label %bb.nr
  ]

bb.nq:                                            ; preds = %bb.np
  %i.ara = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 6240, ptr %i.ara, align 2, !tbaa !125
  %i.arb = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 4168, ptr %i.arb, align 4, !tbaa !126
  br label %.loopexit

bb.nr:                                            ; preds = %bb.np
  %i.arc = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 6240, ptr %i.arc, align 2, !tbaa !125
  br label %.loopexit

bb.ns:                                            ; preds = %bb.np
  %i.ard = add i16 %i.and, -32
  %i.are = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 %i.ard, ptr %i.are, align 2, !tbaa !125
  br label %.loopexit

bb.nt:                                            ; preds = %bb.mt
  %i.arf = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.alx, ptr noundef nonnull dereferenceable(10) @.str.150) #20
  %.not337 = icmp eq i32 %i.arf, 0
  br i1 %.not337, label %bb.nu, label %.loopexit

bb.nu:                                            ; preds = %bb.nt
  %i.arg = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.arh = load i16, ptr %i.arg, align 2, !tbaa !125 ; 2 uses
  %i.ari = icmp eq i16 %i.arh, 3880
  %i.arj = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.ark = load i16, ptr %i.arj, align 4, !tbaa !126 ; 2 uses
  br i1 %i.ari, label %bb.nv, label %bb.nw

bb.nv:                                            ; preds = %bb.nu
  %i.arl = add i16 %i.ark, -1
  store i16 %i.arl, ptr %i.arj, align 4, !tbaa !126
  %i.arm = add i16 %i.and, 1                      ; 2 uses
  store i16 %i.arm, ptr %i.anc, align 2, !tbaa !123
  br label %bb.nx

bb.nw:                                            ; preds = %bb.nu
  %i.arn = add i16 %i.ark, -4
  store i16 %i.arn, ptr %i.arj, align 4, !tbaa !126
  %i.aro = add i16 %i.arh, -4
  %i.arp = getelementptr inbounds nuw i8, ptr %0, i64 381728
  store i16 19789, ptr %i.arp, align 8, !tbaa !102
  %i.arq = getelementptr inbounds nuw i8, ptr %0, i64 381860
  store i32 2, ptr %i.arq, align 4, !tbaa !130
  br label %bb.nx

bb.nx:                                            ; preds = %bb.nw, %bb.nv
  %.sink531 = phi i16 [ %i.arm, %bb.nv ], [ %i.aro, %bb.nw ]
  store i16 %.sink531, ptr %i.arg, align 2, !tbaa !125
  %i.arr = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 1633771873, ptr %i.arr, align 8, !tbaa !82
  br label %.loopexit

.thread399:                                       ; preds = %bb.jz, %bb.li
  %i.ars = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 26 uses
  %i.art = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ars, ptr noundef nonnull dereferenceable(5) @.str.151) #20
  %.not282 = icmp eq i32 %i.art, 0
  br i1 %.not282, label %bb.ny, label %bb.nz

bb.ny:                                            ; preds = %.thread399
  %i.aru = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 4, ptr %i.aru, align 8, !tbaa !128
  %i.arv = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.arw = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 32, ptr %i.arw, align 2, !tbaa !129
  %i.arx = load <2 x i16>, ptr %i.arv, align 4, !tbaa !85
  %i.ary = add <2 x i16> %i.arx, <i16 -4, i16 -32>
  store <2 x i16> %i.ary, ptr %i.arv, align 4, !tbaa !85
  tail call void @_ZN6LibRaw11gamma_curveEddii(ptr noundef nonnull align 8 dereferenceable(768512) %0, double noundef 0.000000e+00, double noundef 7.000000e+00, i32 noundef 1, i32 noundef 255)
  br label %.loopexit

bb.nz:                                            ; preds = %.thread399
  %i.arz = add i32 %i.afe, -3                     ; 2 uses
  %i.asa = tail call i32 @llvm.fshl.i32(i32 %i.arz, i32 %i.arz, i32 31)
  switch i32 %i.asa, label %.thread405 [
    i32 13, label %bb.oa
    i32 16, label %bb.pl
    i32 0, label %bb.pn
    i32 27, label %bb.pt
  ]

bb.oa:                                            ; preds = %bb.nz
  %i.asb = tail call i32 @strncasecmp(ptr noundef nonnull %i.ars, ptr noundef nonnull @.str.152, i64 noundef 9) #20
  %.not301 = icmp eq i32 %i.asb, 0
  br i1 %.not301, label %bb.ob, label %bb.oc

bb.ob:                                            ; preds = %bb.oa
  %i.asc = getelementptr inbounds nuw i8, ptr %0, i64 381760 ; 2 uses
  %i.asd = load i64, ptr %i.asc, align 8, !tbaa !118
  %i.ase = icmp slt i64 %i.asd, 86016
  %i.asf = select i1 %i.ase, i64 86016, i64 94208
  store i64 %i.asf, ptr %i.asc, align 8, !tbaa !118
  store i64 ptrtoint (ptr @_ZN6LibRaw15packed_load_rawEv to i64), ptr %i.aeu, align 8, !tbaa !119
  store i64 0, ptr %.elt278, align 8, !tbaa !119
  br label %.loopexit

bb.oc:                                            ; preds = %bb.oa
  %i.asg = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ars, ptr noundef nonnull dereferenceable(5) @.str.48) #20
  %.not303 = icmp eq i32 %i.asg, 0
  br i1 %.not303, label %bb.of, label %bb.od

bb.od:                                            ; preds = %bb.oc
  %i.ash = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ars, ptr noundef nonnull dereferenceable(5) @.str.153) #20
  %.not304 = icmp eq i32 %i.ash, 0
  br i1 %.not304, label %bb.of, label %bb.oe

bb.oe:                                            ; preds = %bb.od
  %i.asi = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ars, ptr noundef nonnull dereferenceable(5) @.str.154) #20
  %.not305 = icmp eq i32 %i.asi, 0
  br i1 %.not305, label %bb.of, label %bb.om

bb.of:                                            ; preds = %bb.oe, %bb.od, %bb.oc
  %i.asj = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.ask = getelementptr inbounds nuw i8, ptr %0, i64 381728
  store i16 18761, ptr %i.ask, align 8, !tbaa !102
  %i.asl = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.asm = load i32, ptr %i.asl, align 8, !tbaa !82
  %.not306 = icmp eq i32 %i.asm, 0
  br i1 %.not306, label %bb.oi, label %bb.og

bb.og:                                            ; preds = %bb.of
  %i.asn = getelementptr inbounds nuw i8, ptr %0, i64 381760
  %i.aso = load i64, ptr %i.asn, align 8, !tbaa !118 ; 2 uses
  %.not307 = icmp eq i64 %i.aso, 0
  br i1 %.not307, label %bb.oi, label %bb.oh

bb.oh:                                            ; preds = %bb.og
  %i.asp = load ptr, ptr %i.asj, align 8, !tbaa !103 ; 2 uses
  %i.asq = icmp slt i64 %i.aso, 4096
  %i.asr = select i1 %i.asq, i64 168, i64 5252
  %i.ass = load ptr, ptr %i.asp, align 8, !tbaa !105
  %i.ast = getelementptr inbounds nuw i8, ptr %i.ass, i64 32
  %i.asu = load ptr, ptr %i.ast, align 8
  %i.asv = tail call noundef i32 %i.asu(ptr noundef nonnull align 8 dereferenceable(8) %i.asp, i64 noundef %i.asr, i32 noundef 0), !call_target !114 ; 0 uses
  %i.asw = getelementptr inbounds nuw i8, ptr %0, i64 5600
  tail call void @_ZN6LibRaw11read_shortsEPtj(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.asw, i32 noundef 256)
  br label %bb.oj

bb.oi:                                            ; preds = %bb.og, %bb.of
  tail call void @_ZN6LibRaw11gamma_curveEddii(ptr noundef nonnull align 8 dereferenceable(768512) %0, double noundef 0.000000e+00, double noundef 3.875000e+00, i32 noundef 1, i32 noundef 255)
  br label %bb.oj

bb.oj:                                            ; preds = %bb.oi, %bb.oh
  %i.asx = load i32, ptr %i.asl, align 8, !tbaa !82
  %.not308 = icmp eq i32 %i.asx, 0
  br i1 %.not308, label %bb.ok, label %bb.ol

bb.ok:                                            ; preds = %bb.oj
  %i.asy = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ars, ptr noundef nonnull dereferenceable(5) @.str.153) #20
  %.not309 = icmp eq i32 %i.asy, 0
  %i.asz = select i1 %.not309, { i64, i64 } { i64 ptrtoint (ptr @_ZN6LibRaw19kodak_c330_load_rawEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN6LibRaw19kodak_c603_load_rawEv to i64), i64 0 }
  br label %bb.ol

bb.ol:                                            ; preds = %bb.oj, %bb.ok
  %i.ata = phi { i64, i64 } [ %i.asz, %bb.ok ], [ { i64 ptrtoint (ptr @_ZN6LibRaw18eight_bit_load_rawEv to i64), i64 0 }, %bb.oj ] ; 2 uses
  %.elt = extractvalue { i64, i64 } %i.ata, 0
  store i64 %.elt, ptr %i.aeu, align 8, !tbaa !119
  %.elt311 = extractvalue { i64, i64 } %i.ata, 1
  store i64 %.elt311, ptr %.elt278, align 8, !tbaa !119
  %i.atb = getelementptr inbounds nuw i8, ptr %0, i64 381836 ; 2 uses
  %i.atc = load i32, ptr %i.atb, align 4, !tbaa !127
  %i.atd = icmp ugt i32 %i.atc, 16
  %i.ate = zext i1 %i.atd to i32
  %i.atf = getelementptr inbounds nuw i8, ptr %0, i64 381860
  store i32 %i.ate, ptr %i.atf, align 4, !tbaa !130
  store i32 8, ptr %i.atb, align 4, !tbaa !127
  br label %.loopexit

bb.om:                                            ; preds = %bb.oe
  %i.atg = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ars, ptr noundef nonnull dereferenceable(7) @.str.155, i64 noundef 6) #20
  %.not312 = icmp eq i32 %i.atg, 0
  br i1 %.not312, label %bb.op, label %bb.on

bb.on:                                            ; preds = %bb.om
  %i.ath = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ars, ptr noundef nonnull dereferenceable(7) @.str.156, i64 noundef 6) #20
  %.not313 = icmp eq i32 %i.ath, 0
  br i1 %.not313, label %bb.op, label %bb.oo

bb.oo:                                            ; preds = %bb.on
  %i.ati = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ars, ptr noundef nonnull dereferenceable(5) @.str.157, i64 noundef 4) #20
  %.not314 = icmp eq i32 %i.ati, 0
  br i1 %.not314, label %bb.op, label %bb.oq

bb.op:                                            ; preds = %bb.oo, %bb.on, %bb.om
  %i.atj = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.atk = load i16, ptr %i.atj, align 2, !tbaa !125
  %i.atl = add i16 %i.atk, -4
  store i16 %i.atl, ptr %i.atj, align 2, !tbaa !125
  %i.atm = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 2, ptr %i.atm, align 2, !tbaa !129
  br label %bb.ov

bb.oq:                                            ; preds = %bb.oo
  %i.atn = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ars, ptr noundef nonnull dereferenceable(8) @.str.158) #20
  %.not315 = icmp eq i32 %i.atn, 0
  br i1 %.not315, label %bb.or, label %bb.os

bb.or:                                            ; preds = %bb.oq
  %i.ato = getelementptr inbounds nuw i8, ptr %0, i64 153088
  store i32 214, ptr %i.ato, align 8, !tbaa !95
  br label %bb.ov

bb.os:                                            ; preds = %bb.oq
  %i.atp = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ars, ptr noundef nonnull dereferenceable(11) @.str.159) #20
  %.not316 = icmp eq i32 %i.atp, 0
  br i1 %.not316, label %bb.ot, label %bb.ov

bb.ot:                                            ; preds = %bb.os
  %i.atq = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 1633771873, ptr %i.atq, align 8, !tbaa !82
  %i.atr = getelementptr inbounds nuw i8, ptr %0, i64 153088 ; 2 uses
  %i.ats = load i32, ptr %i.atr, align 8, !tbaa !95
  %.not317 = icmp eq i32 %i.ats, 0
  br i1 %.not317, label %bb.ou, label %bb.ov

bb.ou:                                            ; preds = %bb.ot
  %i.att = getelementptr inbounds nuw i8, ptr %0, i64 6000
  %i.atu = load i16, ptr %i.att, align 8, !tbaa !85
  %i.atv = zext i16 %i.atu to i32
  store i32 %i.atv, ptr %i.atr, align 8, !tbaa !95
  br label %bb.ov

bb.ov:                                            ; preds = %bb.or, %bb.ot, %bb.ou, %bb.os, %bb.op
  %i.atw = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 3 uses
  %i.atx = load i32, ptr %i.atw, align 8, !tbaa !82
  %i.aty = icmp eq i32 %i.atx, -1
  br i1 %i.aty, label %bb.ow, label %bb.ox

bb.ow:                                            ; preds = %bb.ov
  store i32 1633771873, ptr %i.atw, align 8, !tbaa !82
  br label %bb.ox

bb.ox:                                            ; preds = %bb.ow, %bb.ov
  %i.atz = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.aua = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.atz, ptr noundef nonnull dereferenceable(4) @.str.160) #20
  %.not318 = icmp eq i32 %i.aua, 0
  br i1 %.not318, label %bb.oy, label %bb.oz

bb.oy:                                            ; preds = %bb.ox
  %i.aub = getelementptr inbounds nuw i8, ptr %0, i64 620
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.aub, ptr noundef nonnull align 1 dereferenceable(5) @.str.161, i64 5, i1 false) #19
  br label %bb.oz

bb.oz:                                            ; preds = %bb.oy, %bb.ox
  %i.auc = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ars, ptr noundef nonnull dereferenceable(5) @.str.162) #20
  %.not319 = icmp eq i32 %i.auc, 0
  br i1 %.not319, label %bb.pa, label %sub_0468

bb.pa:                                            ; preds = %bb.oz
  %i.aud = getelementptr inbounds nuw i8, ptr %0, i64 381760
  store i64 15424, ptr %i.aud, align 8, !tbaa !118
  br label %sub_0468

sub_0468:                                         ; preds = %bb.oz, %bb.pa
  %i.aue = load i8, ptr %i.ars, align 4
  %.not506 = icmp eq i8 %i.aue, 68
  br i1 %.not506, label %sub_1469, label %.tail467.thread

sub_1469:                                         ; preds = %sub_0468
  %i.auf = getelementptr inbounds nuw i8, ptr %0, i64 269
  %i.aug = load i8, ptr %i.auf, align 1
  %.not507 = icmp eq i8 %i.aug, 67
  br i1 %.not507, label %.tail467, label %.tail467.thread

.tail467:                                         ; preds = %sub_1469
  %i.auh = getelementptr inbounds nuw i8, ptr %0, i64 270
  %i.aui = load i8, ptr %i.auh, align 2
  %i.auj = icmp eq i8 %i.aui, 50
  br i1 %i.auj, label %bb.pb, label %.tail467.thread

bb.pb:                                            ; preds = %.tail467
  %i.auk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aul = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 242, ptr %i.aul, align 4, !tbaa !126
  store i16 244, ptr %i.auk, align 8, !tbaa !124
  %i.aum = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ars, ptr noundef nonnull dereferenceable(6) @.str.164, i64 noundef 5) #20
  %.not321 = icmp eq i32 %i.aum, 0
  br i1 %.not321, label %bb.pc, label %bb.pd

bb.pc:                                            ; preds = %bb.pb
  %i.aun = getelementptr inbounds nuw i8, ptr %0, i64 192688
  store float 1.000000e+02, ptr %i.aun, align 8, !tbaa !239
  br label %bb.pd

bb.pd:                                            ; preds = %bb.pc, %bb.pb
  %i.auo = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ars, ptr noundef nonnull dereferenceable(6) @.str.165, i64 noundef 5) #20
  %.not322 = icmp eq i32 %i.auo, 0
  br i1 %.not322, label %bb.pe, label %bb.pf

bb.pe:                                            ; preds = %bb.pd
  %i.aup = getelementptr inbounds nuw i8, ptr %0, i64 192688
  store float 7.000000e+01, ptr %i.aup, align 8, !tbaa !239
  br label %bb.pf

bb.pf:                                            ; preds = %bb.pe, %bb.pd
  %i.auq = icmp slt i64 %3, 100000                ; 3 uses
  %.sink534 = select i1 %i.auq, i16 256, i16 512
  %.sink533 = select i1 %i.auq, i16 249, i16 501
  %.sink532 = select i1 %i.auq, double f0x3FF4BBCD47A00AF7, double f0x3FE46E0C46F4C1D3
  %i.aur = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %.sink534, ptr %i.aur, align 2, !tbaa !123
  %i.aus = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 %.sink533, ptr %i.aus, align 2, !tbaa !125
  %i.aut = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.sink532, ptr %i.aut, align 8, !tbaa !98
  %i.auu = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 1, ptr %i.auu, align 2, !tbaa !129
  %i.auv = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 1, ptr %i.auv, align 8, !tbaa !128
  %i.auw = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i32 4, ptr %i.auw, align 4, !tbaa !99
  store i32 -1920103027, ptr %i.atw, align 8, !tbaa !82
  tail call void @_ZN6LibRaw12simple_coeffEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 1)
  %i.aux = getelementptr inbounds nuw i8, ptr %0, i64 153272
  store <2 x float> <float 1.179000e+00, float 1.209000e+00>, ptr %i.aux, align 8, !tbaa !90
  %i.auy = getelementptr inbounds nuw i8, ptr %0, i64 153280
  store float 1.036000e+00, ptr %i.auy, align 8, !tbaa !90
  store i64 ptrtoint (ptr @_ZN6LibRaw18eight_bit_load_rawEv to i64), ptr %i.aeu, align 8, !tbaa !119
  store i64 0, ptr %.elt278, align 8, !tbaa !119
  br label %.loopexit

.tail467.thread:                                  ; preds = %sub_1469, %sub_0468, %.tail467
  %i.auz = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ars, ptr noundef nonnull dereferenceable(5) @.str.166) #20
  %.not324 = icmp eq i32 %i.auz, 0
  br i1 %.not324, label %.loopexit.loopexit, label %bb.pg

.loopexit.loopexit:                               ; preds = %.tail467.thread
  %i.ava = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 512, ptr %i.ava, align 4, !tbaa !126
  %i.avb = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 768, ptr %i.avb, align 2, !tbaa !125
  %i.avc = getelementptr inbounds nuw i8, ptr %0, i64 381760
  store i64 1152, ptr %i.avc, align 8, !tbaa !118
  store i64 ptrtoint (ptr @_ZN6LibRaw19kodak_radc_load_rawEv to i64), ptr %i.aeu, align 8, !tbaa !119
  store i64 0, ptr %.elt278, align 8, !tbaa !119
  %i.avd = getelementptr inbounds nuw i8, ptr %0, i64 381836
  store i32 12, ptr %i.avd, align 4, !tbaa !127
  %i.ave = getelementptr inbounds nuw i8, ptr %0, i64 153252
  store <4 x float> splat (float 1.000000e+00), ptr %i.ave, align 4, !tbaa !90
  br label %.loopexit

bb.pg:                                            ; preds = %.tail467.thread
  %i.avf = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ars, ptr noundef nonnull dereferenceable(5) @.str.167) #20
  %.not326 = icmp eq i32 %i.avf, 0
  br i1 %.not326, label %.loopexit.loopexit508, label %bb.ph

.loopexit.loopexit508:                            ; preds = %bb.pg
  %i.avg = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 512, ptr %i.avg, align 4, !tbaa !126
  %i.avh = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 768, ptr %i.avh, align 2, !tbaa !125
  %i.avi = getelementptr inbounds nuw i8, ptr %0, i64 192688
  store float 8.400000e+01, ptr %i.avi, align 8, !tbaa !239
  %i.avj = getelementptr inbounds nuw i8, ptr %0, i64 381760
  store i64 19712, ptr %i.avj, align 8, !tbaa !118
  store i64 ptrtoint (ptr @_ZN6LibRaw19kodak_radc_load_rawEv to i64), ptr %i.aeu, align 8, !tbaa !119
  store i64 0, ptr %.elt278, align 8, !tbaa !119
  %i.avk = getelementptr inbounds nuw i8, ptr %0, i64 153252
  store <4 x float> splat (float 1.000000e+00), ptr %i.avk, align 4, !tbaa !90
end_hunk_1
