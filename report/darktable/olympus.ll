Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/olympus?download=true
inline.NumInlined: 16
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN6LibRaw22getOlympus_CameraType2Ev:bb.a
  %i.x = or i64 %i.v, %i.w                        ; 2 uses
  store i64 %i.x, ptr %i.a, align 8, !tbaa !78
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 3138
  %i.z = load i8, ptr %i.y, align 2, !tbaa !92    ; 3 uses
  %i.aa = sext i8 %i.z to i32
  %i.ab = tail call i32 @isspace(i32 noundef %i.aa) #9
  %.not10.1 = icmp eq i32 %i.ab, 0
  br i1 %.not10.1, label %bb.g, label %bb.d

bb.g:                                             ; preds = %bb.f
  %.not8.2 = icmp eq i8 %i.z, 0
  br i1 %.not8.2, label %.critedgethread-pre-split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3138
  %i.ad = shl i64 %i.x, 8
  %i.ae = sext i8 %i.z to i64
  %i.af = or i64 %i.ad, %i.ae                     ; 2 uses
  store i64 %i.af, ptr %i.a, align 8, !tbaa !78
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 3139
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !92  ; 3 uses
  %i.ai = sext i8 %i.ah to i32
  %i.aj = tail call i32 @isspace(i32 noundef %i.ai) #9
  %.not10.2 = icmp eq i32 %i.aj, 0
  br i1 %.not10.2, label %bb.i, label %bb.d

bb.i:                                             ; preds = %bb.h
  %.not8.3 = icmp eq i8 %i.ah, 0
  br i1 %.not8.3, label %.critedgethread-pre-split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 3139
  %i.al = shl i64 %i.af, 8
  %i.am = sext i8 %i.ah to i64
  %i.an = or i64 %i.al, %i.am                     ; 2 uses
  store i64 %i.an, ptr %i.a, align 8, !tbaa !78
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 3140
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !92  ; 3 uses
  %i.aq = sext i8 %i.ap to i32
  %i.ar = tail call i32 @isspace(i32 noundef %i.aq) #9
  %.not10.3 = icmp eq i32 %i.ar, 0
  br i1 %.not10.3, label %bb.k, label %bb.d

bb.k:                                             ; preds = %bb.j
  %.not8.4 = icmp eq i8 %i.ap, 0
  br i1 %.not8.4, label %.critedgethread-pre-split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 3140
  %i.at = shl i64 %i.an, 8
  %i.au = sext i8 %i.ap to i64
  %i.av = or i64 %i.at, %i.au                     ; 2 uses
  store i64 %i.av, ptr %i.a, align 8, !tbaa !78
  %i.aw = tail call i32 @isspace(i32 noundef 0) #9
  %.not10.4 = icmp eq i32 %i.aw, 0
  br i1 %.not10.4, label %.critedge, label %bb.d

.critedgethread-pre-split:                        ; preds = %bb.d, %bb.k, %bb.i, %bb.g, %bb.e, %bb.b
  %.pr = load i64, ptr %i.a, align 8, !tbaa !78
  br label %.critedge

.critedge:                                        ; preds = %.critedgethread-pre-split, %bb.l
  %i.ax = phi i64 [ %.pr, %.critedgethread-pre-split ], [ %i.av, %bb.l ] ; 7 uses
  %i.ay = icmp eq i64 %i.ax, 336338242881
  br i1 %i.ay, label %.thread, label %bb.m

.thread:                                          ; preds = %.critedge
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ba = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.az, ptr noundef nonnull dereferenceable(8) @.str.18) #9
  %.not11 = icmp eq i32 %i.ba, 0
  %. = select i1 %.not11, i64 0, i64 292933546546 ; 4 uses
  store i64 %., ptr %i.a, align 8, !tbaa !78
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 381696
  store i64 %., ptr %i.bb, align 8, !tbaa !111
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i64 %., ptr %i.bc, align 8, !tbaa !74
  br label %switch.early.test.i

bb.m:                                             ; preds = %.critedge
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 381696
  store i64 %i.ax, ptr %i.bd, align 8, !tbaa !111
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i64 %i.ax, ptr %i.be, align 8, !tbaa !74
  %i.bf = and i64 %i.ax, 1099494850560
  %i.bg = icmp eq i64 %i.bf, 357287591936
  br i1 %i.bg, label %bb.o, label %switch.early.test.i

switch.early.test.i:                              ; preds = %.thread, %bb.m
  %i.bh = phi i64 [ %., %.thread ], [ %i.ax, %bb.m ] ; 3 uses
  switch i64 %i.bh, label %bb.r [
    i64 322931012917, label %bb.n
    i64 292933350449, label %bb.n
    i64 292933350448, label %bb.n
    i64 292933679157, label %.sink.split.i
    i64 292933679158, label %.sink.split.i
    i64 292933679411, label %.sink.split.i
    i64 292933742643, label %.sink.split.i
    i64 292933742645, label %.sink.split.i
    i64 292933678134, label %.sink.split.i
    i64 292933678898, label %bb.q
    i64 292933677873, label %bb.q
  ]

bb.n:                                             ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i16 8, ptr %i.bi, align 8, !tbaa !75
  %i.bj = icmp samesign ult i64 %i.bh, 292933350450
  br i1 %i.bj, label %_ZN6LibRaw22setOlympusBodyFeaturesEy.exit, label %switch.early.test30.i

bb.o:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i16 8, ptr %i.bk, align 8, !tbaa !75
  %i.bl = add i64 %i.ax, -357290750003
  %or.cond25.i = icmp ult i64 %i.bl, 262
  br i1 %or.cond25.i, label %_ZN6LibRaw22setOlympusBodyFeaturesEy.exit, label %switch.early.test30.i

switch.early.test30.i:                            ; preds = %bb.o, %bb.n
  %i.bm = phi i64 [ %i.ax, %bb.o ], [ %i.bh, %bb.n ]
  switch i64 %i.bm, label %bb.p [
    i64 357290750771, label %_ZN6LibRaw22setOlympusBodyFeaturesEy.exit
    i64 357290750768, label %_ZN6LibRaw22setOlympusBodyFeaturesEy.exit
    i64 357290750521, label %_ZN6LibRaw22setOlympusBodyFeaturesEy.exit
    i64 357290750515, label %_ZN6LibRaw22setOlympusBodyFeaturesEy.exit
  ]

bb.p:                                             ; preds = %switch.early.test30.i
  br label %_ZN6LibRaw22setOlympusBodyFeaturesEy.exit

bb.q:                                             ; preds = %switch.early.test.i, %switch.early.test.i
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.q, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i
  %.sink.i = phi i16 [ 7, %bb.q ], [ 6, %switch.early.test.i ], [ 6, %switch.early.test.i ], [ 6, %switch.early.test.i ], [ 6, %switch.early.test.i ], [ 6, %switch.early.test.i ], [ 6, %switch.early.test.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i16 %.sink.i, ptr %i.bn, align 8, !tbaa !75
  br label %bb.r

bb.r:                                             ; preds = %.sink.split.i, %switch.early.test.i
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1354
  store i16 43, ptr %i.bo, align 2, !tbaa !76
  br label %_ZN6LibRaw22setOlympusBodyFeaturesEy.exit

_ZN6LibRaw22setOlympusBodyFeaturesEy.exit:        ; preds = %bb.n, %bb.o, %switch.early.test30.i, %switch.early.test30.i, %switch.early.test30.i, %switch.early.test30.i, %bb.p, %bb.r
  %.sink36.i = phi i64 [ 1338, %bb.r ], [ 1354, %bb.p ], [ 1354, %switch.early.test30.i ], [ 1354, %switch.early.test30.i ], [ 1354, %switch.early.test30.i ], [ 1354, %switch.early.test30.i ], [ 1354, %bb.o ], [ 1354, %bb.n ]
  %.sink34.i = phi i16 [ 43, %bb.r ], [ 10, %bb.p ], [ 9, %switch.early.test30.i ], [ 9, %switch.early.test30.i ], [ 9, %switch.early.test30.i ], [ 9, %switch.early.test30.i ], [ 9, %bb.o ], [ 9, %bb.n ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %.sink36.i
  store i16 %.sink34.i, ptr %i.bp, align 2, !tbaa !77
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %_ZN6LibRaw22setOlympusBodyFeaturesEy.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw28getOlympus_SensorTemperatureEj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 381704 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !78
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 5 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %i.e = icmp eq i64 %i.d, 292933350448
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %i.d, 357290750774
  %i.g = icmp ne i32 %1, 1
  %or.cond = or i1 %i.g, %i.f
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = sitofp reassoc nsz arcp contract afn i16 %i.c to float
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.i = and i16 %i.c, 32767
  %or.cond4.not = icmp eq i16 %i.i, 0
  br i1 %or.cond4.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = icmp sgt i16 %i.c, 199
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = uitofp nneg i16 %i.c to float
  %i.l = fmul reassoc nnan nsz arcp contract afn float %i.k, 1.202280e-01
  %i.m = fsub reassoc nsz arcp contract afn float f0x42ACF32E, %i.l
  br label %.sink.split

bb.h:                                             ; preds = %bb.f
  %i.n = sitofp reassoc nsz arcp contract afn i16 %i.c to float
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.g, %bb.d
  %.sink = phi float [ %i.h, %bb.d ], [ %i.m, %bb.g ], [ %i.n, %bb.h ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4804
  store float %.sink, ptr %i.o, align 4, !tbaa !93
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.e, %bb.a
  ret void
}

declare noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw22parseOlympus_EquipmentEjjjj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 7 uses
  switch i32 %1, label %bb.ad [
    i32 256, label %bb.b
    i32 257, label %bb.c
    i32 258, label %bb.e
    i32 513, label %bb.f
    i32 514, label %bb.i
    i32 515, label %bb.k
    i32 517, label %bb.l
    i32 518, label %bb.m
    i32 519, label %bb.n
    i32 520, label %bb.o
    i32 522, label %bb.q
    i32 769, label %bb.r
    i32 771, label %bb.s
    i32 1027, label %bb.ac
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6LibRaw22getOlympus_CameraType2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  br label %bb.ad

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5110 ; 2 uses
  %i.c = load i8, ptr %i.b, align 2, !tbaa !92
  %i.d = icmp eq i8 %i.c, 0
  %i.e = icmp eq i32 %4, 0
  %or.cond = and i1 %i.e, %i.d
  br i1 %or.cond, label %bb.d, label %bb.ad

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @llvm.umin.i32(i32 %3, i32 64)
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !79
  %i.j = tail call noundef i32 @_ZN6LibRaw6streadEPcmP26LibRaw_abstract_datastream(ptr noundef nonnull %i.b, i64 noundef %i.g, ptr noundef %i.i) ; 0 uses
  br label %bb.ad

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 5174
  %i.l = tail call i32 @llvm.umin.i32(i32 %3, i32 64)
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !79
  %i.p = tail call noundef i32 @_ZN6LibRaw6streadEPcmP26LibRaw_abstract_datastream(ptr noundef nonnull %i.k, i64 noundef %i.m, ptr noundef %i.o) ; 0 uses
  br label %bb.ad

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !79   ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !81
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call noundef i32 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 4), !call_target !91 ; 0 uses
  %i.w = load i8, ptr %i.a, align 4, !tbaa !92    ; 2 uses
  %i.x = zext i8 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.aa = load i8, ptr %i.z, align 2, !tbaa !92
  %i.ab = zext i8 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !92
  %i.af = zext i8 %i.ae to i64                    ; 2 uses
  %i.ag = or disjoint i64 %i.ac, %i.y
  %i.ah = or disjoint i64 %i.ag, %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1200
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !112
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1338 ; 2 uses
  store i16 9, ptr %i.aj, align 2, !tbaa !113
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1336
  store i16 8, ptr %i.ak, align 8, !tbaa !114
  %i.al = add i8 %i.w, -2
  %or.cond22 = icmp ult i8 %i.al, 3
  %i.am = and i64 %i.af, 16
  %.not21 = icmp eq i64 %i.am, 0
  %or.cond25 = select i1 %or.cond22, i1 true, i1 %.not21
  br i1 %or.cond25, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i16 10, ptr %i.aj, align 2, !tbaa !113
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.ad

bb.i:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 916 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 4, !tbaa !92
  %.not20 = icmp eq i8 %i.ao, 0
  br i1 %.not20, label %bb.j, label %bb.ad

bb.j:                                             ; preds = %bb.i
  %i.ap = tail call i32 @llvm.umin.i32(i32 %3, i32 128)
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !79
  %i.at = tail call noundef i32 @_ZN6LibRaw6streadEPcmP26LibRaw_abstract_datastream(ptr noundef nonnull %i.an, i64 noundef %i.aq, ptr noundef %i.as) ; 0 uses
  br label %bb.ad

bb.k:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.av = tail call i32 @llvm.umin.i32(i32 %3, i32 128)
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !79
  %i.az = tail call noundef i32 @_ZN6LibRaw6streadEPcmP26LibRaw_abstract_datastream(ptr noundef nonnull %i.au, i64 noundef %i.aw, ptr noundef %i.ay) ; 0 uses
  br label %bb.ad

bb.l:                                             ; preds = %bb.a
  %i.ba = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bb = uitofp i16 %i.ba to float
  %i.bc = fmul reassoc nnan nsz arcp contract afn float %i.bb, 3.906250e-03 ; 2 uses
  %or.cond.i.i = fcmp reassoc nsz arcp contract afn ogt float %i.bc, 6.400000e+01
  %i.bd = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float f0x3FB504F3, float %i.bc)
  %i.be = select reassoc nsz arcp contract afn i1 %or.cond.i.i, float 0.000000e+00, float %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1464
  store float %i.be, ptr %i.bf, align 8, !tbaa !115
  br label %bb.ad

bb.m:                                             ; preds = %bb.a
  %i.bg = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bh = uitofp i16 %i.bg to float
  %i.bi = fmul reassoc nnan nsz arcp contract afn float %i.bh, 3.906250e-03 ; 2 uses
  %or.cond.i.i23 = fcmp reassoc nsz arcp contract afn ogt float %i.bi, 6.400000e+01
  %i.bj = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float f0x3FB504F3, float %i.bi)
  %i.bk = select reassoc nsz arcp contract afn i1 %or.cond.i.i23, float 0.000000e+00, float %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1468
  store float %i.bk, ptr %i.bl, align 4, !tbaa !116
  br label %bb.ad

bb.n:                                             ; preds = %bb.a
  %i.bm = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bn = uitofp reassoc nsz arcp contract afn i16 %i.bm to float
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1456
  store float %i.bn, ptr %i.bo, align 8, !tbaa !117
  br label %bb.ad

bb.o:                                             ; preds = %bb.a
  %i.bp = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.bq = uitofp reassoc nsz arcp contract afn i16 %i.bp to float
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1460 ; 2 uses
  store float %i.bq, ptr %i.br, align 4, !tbaa !118
  %i.bs = icmp ugt i16 %i.bp, 1000
  br i1 %i.bs, label %bb.p, label %bb.ad

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.bu = load float, ptr %i.bt, align 8, !tbaa !117
  store float %i.bu, ptr %i.br, align 4, !tbaa !118
  br label %bb.ad

bb.q:                                             ; preds = %bb.a
  %i.bv = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bw = uitofp i16 %i.bv to float
  %i.bx = fmul reassoc nnan nsz arcp contract afn float %i.bw, 3.906250e-03 ; 2 uses
  %or.cond.i.i24 = fcmp reassoc nsz arcp contract afn ogt float %i.bx, 6.400000e+01
  %i.by = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float f0x3FB504F3, float %i.bx)
  %i.bz = select reassoc nsz arcp contract afn i1 %or.cond.i.i24, float 0.000000e+00, float %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1496
  store float %i.bz, ptr %i.ca, align 8, !tbaa !119
  br label %bb.ad

bb.r:                                             ; preds = %bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !79 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !81
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = tail call noundef i32 %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %i.cc), !call_target !96
  %i.ch = shl i32 %i.cg, 8
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1520 ; 3 uses
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !120
  %i.ck = load ptr, ptr %i.cb, align 8, !tbaa !79 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !81
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = tail call noundef i32 %i.cn(ptr noundef nonnull align 8 dereferenceable(8) %i.ck), !call_target !96 ; 0 uses
  %i.cp = load i64, ptr %i.cj, align 8, !tbaa !120
  %i.cq = load ptr, ptr %i.cb, align 8, !tbaa !79 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !81
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = tail call noundef i32 %i.ct(ptr noundef nonnull align 8 dereferenceable(8) %i.cq), !call_target !96
  %i.cv = sext i32 %i.cu to i64
  %i.cw = or i64 %i.cp, %i.cv
  store i64 %i.cw, ptr %i.cj, align 8, !tbaa !120
  br label %bb.ad

bb.s:                                             ; preds = %bb.a
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1528 ; 6 uses
  %i.cy = tail call i32 @llvm.umin.i32(i32 %3, i32 128)
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !79
  %i.dc = tail call noundef i32 @_ZN6LibRaw6streadEPcmP26LibRaw_abstract_datastream(ptr noundef nonnull %i.cx, i64 noundef %i.cz, ptr noundef %i.db) ; 0 uses
  %char0 = load i8, ptr %i.cx, align 8
  %.not = icmp eq i8 %char0, 0
  br i1 %.not, label %bb.t, label %bb.ad

bb.t:                                             ; preds = %bb.s
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 5 uses
  %i.de = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.dd, i32 noundef 43) #9
  %.not15 = icmp eq ptr %i.de, null
  br i1 %.not15, label %bb.ad, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.df = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.dd, ptr noundef nonnull dereferenceable(1) @.str.21) #9
  %.not16 = icmp eq ptr %i.df, null
  br i1 %.not16, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.cx, ptr noundef nonnull align 1 dereferenceable(6) @.str.21, i64 6, i1 false) #10
  br label %bb.ad

bb.w:                                             ; preds = %bb.u
  %i.dg = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.dd, ptr noundef nonnull dereferenceable(1) @.str.22) #9
  %.not17 = icmp eq ptr %i.dg, null
  br i1 %.not17, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.cx, ptr noundef nonnull align 1 dereferenceable(6) @.str.22, i64 6, i1 false) #10
  br label %bb.ad

bb.y:                                             ; preds = %bb.w
  %i.dh = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.dd, ptr noundef nonnull dereferenceable(1) @.str.23) #9
  %.not18 = icmp eq ptr %i.dh, null
  br i1 %.not18, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.cx, ptr noundef nonnull align 1 dereferenceable(6) @.str.23, i64 6, i1 false) #10
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.di = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.dd, ptr noundef nonnull dereferenceable(1) @.str.24) #9
  %.not19 = icmp eq ptr %i.di, null
  br i1 %.not19, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.cx, ptr noundef nonnull align 1 dereferenceable(6) @.str.24, i64 6, i1 false) #10
  br label %bb.ad

bb.ac:                                            ; preds = %bb.a
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1800
  %i.dk = tail call i32 @llvm.umin.i32(i32 %3, i32 128)
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !79
  %i.do = tail call noundef i32 @_ZN6LibRaw6streadEPcmP26LibRaw_abstract_datastream(ptr noundef nonnull %i.dj, i64 noundef %i.dl, ptr noundef %i.dn) ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.s, %bb.t, %bb.x, %bb.aa, %bb.ab, %bb.z, %bb.v, %bb.o, %bb.p, %bb.i, %bb.j, %bb.c, %bb.d, %bb.ac, %bb.r, %bb.q, %bb.n, %bb.m, %bb.l, %bb.k, %bb.h, %bb.e, %bb.b, %bb.a
  ret void
}

declare noundef i32 @_ZN6LibRaw6streadEPcmP26LibRaw_abstract_datastream(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw27parseOlympus_CameraSettingsExjjjj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 align 2 {
bb.a:
  switch i32 %2, label %.loopexit [
    i32 257, label %bb.b
    i32 258, label %bb.d
    i32 512, label %bb.f
    i32 514, label %bb.g
    i32 769, label %bb.h
    i32 772, label %.preheader
    i32 773, label %.preheader21
    i32 774, label %bb.k
    i32 775, label %.preheader23
    i32 1025, label %bb.l
    i32 1287, label %bb.m
    i32 1536, label %bb.r
    i32 1537, label %bb.s
    i32 1540, label %bb.t
    i32 2052, label %bb.u
  ]

.preheader23:                                     ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3532
  %i.b = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i16 %i.b, ptr %i.a, align 4, !tbaa !77
  %i.c = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3534
  store i16 %i.c, ptr %i.d, align 2, !tbaa !77
  %i.e = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3536
  store i16 %i.e, ptr %i.f, align 8, !tbaa !77
  br label %.loopexit

.preheader21:                                     ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3488
  %i.h = tail call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %3)
  store double %i.h, ptr %i.g, align 8, !tbaa !123
  %i.i = tail call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %3)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3496
  store double %i.i, ptr %i.j, align 8, !tbaa !123
  %i.k = tail call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %3)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3504
  store double %i.k, ptr %i.l, align 8, !tbaa !123
  %i.m = tail call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %3)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3512
  store double %i.m, ptr %i.n, align 8, !tbaa !123
  %i.o = tail call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %3)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3520
  store double %i.o, ptr %i.p, align 8, !tbaa !123
  br label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3228
  br label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.r = icmp eq i32 %5, 0
  br i1 %i.r, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.s = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.t = zext i32 %i.s to i64
  %i.u = add nsw i64 %1, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 381632
  store i64 %i.u, ptr %i.v, align 8, !tbaa !124
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.w = icmp eq i32 %5, 0
  br i1 %i.w, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.x = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 193496
  store i32 %i.x, ptr %i.y, align 8, !tbaa !125
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  %i.z = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5104
  store i16 %i.z, ptr %i.aa, align 8, !tbaa !126
  br label %.loopexit

bb.g:                                             ; preds = %bb.a
  %i.ab = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 5100
  store i16 %i.ab, ptr %i.ac, align 4, !tbaa !127
  br label %.loopexit

bb.h:                                             ; preds = %bb.a
  %i.ad = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 3220
  store i16 %i.ad, ptr %i.ae, align 4, !tbaa !77
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5098
  store i16 %i.ad, ptr %i.af, align 2, !tbaa !97
  %i.ag = icmp eq i32 %4, 2
  br i1 %i.ag, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.ah = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 3222
  store i16 %i.ah, ptr %i.ai, align 2, !tbaa !77
  br label %.loopexit

bb.j:                                             ; preds = %.preheader, %bb.j
  %indvars.iv42 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next43, %bb.j ] ; 2 uses
  %i.aj = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv42
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !98
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next43, 64
  br i1 %exitcond45.not, label %.loopexit, label %bb.j, !llvm.loop !121

bb.k:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !79 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !81
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef i32 %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.am), !call_target !96
  %i.ar = trunc i32 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 3530
  store i8 %i.ar, ptr %i.as, align 2, !tbaa !129
  br label %.loopexit

bb.l:                                             ; preds = %bb.a
  %i.at = tail call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %3)
  %i.au = fptrunc reassoc nsz arcp contract afn double %i.at to float
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4792
  store float %i.au, ptr %i.av, align 8, !tbaa !130
  br label %.loopexit

bb.m:                                             ; preds = %bb.a
  %i.aw = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 3218
  store i16 %i.aw, ptr %i.ax, align 2, !tbaa !99
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4856 ; 4 uses
  switch i16 %i.aw, label %bb.q [
    i16 0, label %bb.n
    i16 1, label %bb.o
    i16 2, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  store i16 1, ptr %i.ay, align 8, !tbaa !100
  br label %.loopexit

bb.o:                                             ; preds = %bb.m
  store i16 2, ptr %i.ay, align 8, !tbaa !100
  br label %.loopexit

bb.p:                                             ; preds = %bb.m
  store i16 4, ptr %i.ay, align 8, !tbaa !100
  br label %.loopexit

bb.q:                                             ; preds = %bb.m
  store i16 255, ptr %i.ay, align 8, !tbaa !100
  br label %.loopexit

bb.r:                                             ; preds = %bb.a
  %i.az = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 3208 ; 2 uses
  store i16 %i.az, ptr %i.ba, align 8, !tbaa !77
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 5096
  store i16 %i.az, ptr %i.bb, align 8, !tbaa !131
  %i.bc = icmp sgt i32 %4, 1
  br i1 %i.bc, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.r
  %i.bd = tail call i32 @llvm.umin.i32(i32 %4, i32 5)
  %wide.trip.count = zext nneg i32 %i.bd to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.be = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %indvars.iv
  store i16 %i.be, ptr %i.bf, align 2, !tbaa !77
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !122

bb.s:                                             ; preds = %bb.a
  %i.bg = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 3592
  store i16 %i.bg, ptr %i.bh, align 8, !tbaa !132
  %i.bi = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 3594
  store i16 %i.bi, ptr %i.bj, align 2, !tbaa !133
  br label %.loopexit

bb.t:                                             ; preds = %bb.a
  %i.bk = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bl = trunc i32 %i.bk to i16
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 5108
  store i16 %i.bl, ptr %i.bm, align 4, !tbaa !134
  br label %.loopexit

bb.u:                                             ; preds = %bb.a
  %i.bn = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 3576 ; 2 uses
  store i32 %i.bn, ptr %i.bo, align 8, !tbaa !98
  %i.bp = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 3580
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !98
  %i.br = load i32, ptr %i.bo, align 8, !tbaa !98
  %i.bs = icmp eq i32 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 3584 ; 2 uses
  br i1 %i.bs, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i8 1, ptr %i.bt, align 8, !tbaa !135
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 3588
  store i32 %i.bp, ptr %i.bu, align 4, !tbaa !136
  br label %.loopexit

bb.w:                                             ; preds = %bb.u
  store i8 0, ptr %i.bt, align 8, !tbaa !135
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.j, %.preheader23, %.preheader21, %bb.r, %bb.v, %bb.w, %bb.n, %bb.o, %bb.p, %bb.q, %bb.h, %bb.i, %bb.d, %bb.e, %bb.b, %bb.c, %bb.t, %bb.s, %bb.l, %bb.k, %bb.g, %bb.f, %bb.a
  ret void
}

declare noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #5

declare noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw28parseOlympus_ImageProcessingEjjjj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 256
  %i.b = icmp eq i32 %4, 0                        ; 23 uses
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.d = uitofp reassoc nsz arcp contract afn i16 %i.c to float
  %i.e = fmul reassoc nnan nsz arcp contract afn float %i.d, 3.906250e-03
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 153252
  store float %i.e, ptr %i.f, align 4, !tbaa !101
  %i.g = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.h = uitofp reassoc nsz arcp contract afn i16 %i.g to float
  %i.i = fmul reassoc nnan nsz arcp contract afn float %i.h, 3.906250e-03
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 153260
  store float %i.i, ptr %i.j, align 4, !tbaa !101
  br label %.thread270.thread

bb.c:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %1, 257
  %i.l = icmp eq i32 %3, 2                        ; 2 uses
  %or.cond3 = and i1 %i.k, %i.l
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 381704
  %i.n = load i64, ptr %i.m, align 8, !tbaa !78
  switch i64 %i.n, label %.thread270.thread [
    i64 357290750259, label %vector.ph
    i64 357290750256, label %vector.ph
  ]

vector.ph:                                        ; preds = %bb.d, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 187224 ; 32 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 191320 ; 8 uses
  %wide.gep = getelementptr inbounds nuw [20 x i8], ptr %i.p, <8 x i64> <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7> ; 2 uses
  %wide.gep338 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 16
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> splat (float 2.560000e+02), <8 x ptr> align 4 %wide.gep338, <8 x i1> splat (i1 true)), !tbaa !101
  %wide.gep339 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> splat (float 2.560000e+02), <8 x ptr> align 4 %wide.gep339, <8 x i1> splat (i1 true)), !tbaa !101
  %wide.gep340 = getelementptr inbounds nuw [16 x i8], ptr %i.o, <8 x i64> <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7> ; 2 uses
  %wide.gep341 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep340, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep341, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep342 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep340, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep342, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.1 = getelementptr inbounds nuw [20 x i8], ptr %i.p, <8 x i64> <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15> ; 2 uses
  %wide.gep338.1 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.1, i64 16
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> splat (float 2.560000e+02), <8 x ptr> align 4 %wide.gep338.1, <8 x i1> splat (i1 true)), !tbaa !101
  %wide.gep339.1 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.1, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> splat (float 2.560000e+02), <8 x ptr> align 4 %wide.gep339.1, <8 x i1> splat (i1 true)), !tbaa !101
  %wide.gep340.1 = getelementptr inbounds nuw [16 x i8], ptr %i.o, <8 x i64> <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15> ; 2 uses
  %wide.gep341.1 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep340.1, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep341.1, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep342.1 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep340.1, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep342.1, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.2 = getelementptr inbounds nuw [20 x i8], ptr %i.p, <8 x i64> <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23> ; 2 uses
  %wide.gep338.2 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.2, i64 16
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> splat (float 2.560000e+02), <8 x ptr> align 4 %wide.gep338.2, <8 x i1> splat (i1 true)), !tbaa !101
  %wide.gep339.2 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.2, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> splat (float 2.560000e+02), <8 x ptr> align 4 %wide.gep339.2, <8 x i1> splat (i1 true)), !tbaa !101
  %wide.gep340.2 = getelementptr inbounds nuw [16 x i8], ptr %i.o, <8 x i64> <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23> ; 2 uses
  %wide.gep341.2 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep340.2, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep341.2, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep342.2 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep340.2, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep342.2, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.3 = getelementptr inbounds nuw [20 x i8], ptr %i.p, <8 x i64> <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31> ; 2 uses
  %wide.gep338.3 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.3, i64 16
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> splat (float 2.560000e+02), <8 x ptr> align 4 %wide.gep338.3, <8 x i1> splat (i1 true)), !tbaa !101
  %wide.gep339.3 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.3, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> splat (float 2.560000e+02), <8 x ptr> align 4 %wide.gep339.3, <8 x i1> splat (i1 true)), !tbaa !101
  %wide.gep340.3 = getelementptr inbounds nuw [16 x i8], ptr %i.o, <8 x i64> <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31> ; 2 uses
  %wide.gep341.3 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep340.3, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep341.3, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep342.3 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep340.3, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep342.3, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.4 = getelementptr inbounds nuw [20 x i8], ptr %i.p, <8 x i64> <i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39> ; 2 uses
  %wide.gep338.4 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.4, i64 16
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> splat (float 2.560000e+02), <8 x ptr> align 4 %wide.gep338.4, <8 x i1> splat (i1 true)), !tbaa !101
  %wide.gep339.4 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.4, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> splat (float 2.560000e+02), <8 x ptr> align 4 %wide.gep339.4, <8 x i1> splat (i1 true)), !tbaa !101
  %wide.gep340.4 = getelementptr inbounds nuw [16 x i8], ptr %i.o, <8 x i64> <i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39> ; 2 uses
  %wide.gep341.4 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep340.4, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep341.4, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep342.4 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep340.4, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep342.4, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.5 = getelementptr inbounds nuw [20 x i8], ptr %i.p, <8 x i64> <i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47> ; 2 uses
  %wide.gep338.5 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.5, i64 16
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> splat (float 2.560000e+02), <8 x ptr> align 4 %wide.gep338.5, <8 x i1> splat (i1 true)), !tbaa !101
  %wide.gep339.5 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.5, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> splat (float 2.560000e+02), <8 x ptr> align 4 %wide.gep339.5, <8 x i1> splat (i1 true)), !tbaa !101
  %wide.gep340.5 = getelementptr inbounds nuw [16 x i8], ptr %i.o, <8 x i64> <i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47> ; 2 uses
  %wide.gep341.5 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep340.5, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep341.5, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep342.5 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep340.5, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep342.5, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.6 = getelementptr inbounds nuw [20 x i8], ptr %i.p, <8 x i64> <i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55> ; 2 uses
  %wide.gep338.6 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.6, i64 16
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> splat (float 2.560000e+02), <8 x ptr> align 4 %wide.gep338.6, <8 x i1> splat (i1 true)), !tbaa !101
  %wide.gep339.6 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.6, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> splat (float 2.560000e+02), <8 x ptr> align 4 %wide.gep339.6, <8 x i1> splat (i1 true)), !tbaa !101
  %wide.gep340.6 = getelementptr inbounds nuw [16 x i8], ptr %i.o, <8 x i64> <i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55> ; 2 uses
  %wide.gep341.6 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep340.6, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep341.6, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep342.6 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep340.6, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep342.6, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.7 = getelementptr inbounds nuw [20 x i8], ptr %i.p, <8 x i64> <i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63> ; 2 uses
  %wide.gep338.7 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.7, i64 16
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> splat (float 2.560000e+02), <8 x ptr> align 4 %wide.gep338.7, <8 x i1> splat (i1 true)), !tbaa !101
  %wide.gep339.7 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.7, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> splat (float 2.560000e+02), <8 x ptr> align 4 %wide.gep339.7, <8 x i1> splat (i1 true)), !tbaa !101
  %wide.gep340.7 = getelementptr inbounds nuw [16 x i8], ptr %i.o, <8 x i64> <i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63> ; 2 uses
  %wide.gep341.7 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep340.7, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep341.7, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep342.7 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep340.7, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep342.7, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep347 = getelementptr inbounds nuw [16 x i8], ptr %i.o, <8 x i64> <i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71> ; 2 uses
  %wide.gep348 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep348, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep349 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep349, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep347.1 = getelementptr inbounds nuw [16 x i8], ptr %i.o, <8 x i64> <i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79> ; 2 uses
  %wide.gep348.1 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347.1, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep348.1, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep349.1 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347.1, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep349.1, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep347.2 = getelementptr inbounds nuw [16 x i8], ptr %i.o, <8 x i64> <i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87> ; 2 uses
  %wide.gep348.2 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347.2, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep348.2, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep349.2 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347.2, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep349.2, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep347.3 = getelementptr inbounds nuw [16 x i8], ptr %i.o, <8 x i64> <i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95> ; 2 uses
  %wide.gep348.3 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347.3, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep348.3, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep349.3 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347.3, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep349.3, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep347.4 = getelementptr inbounds nuw [16 x i8], ptr %i.o, <8 x i64> <i64 96, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 103> ; 2 uses
  %wide.gep348.4 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347.4, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep348.4, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep349.4 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347.4, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep349.4, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep347.5 = getelementptr inbounds nuw [16 x i8], ptr %i.o, <8 x i64> <i64 104, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 111> ; 2 uses
  %wide.gep348.5 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347.5, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep348.5, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep349.5 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347.5, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep349.5, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep347.6 = getelementptr inbounds nuw [16 x i8], ptr %i.o, <8 x i64> <i64 112, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119> ; 2 uses
  %wide.gep348.6 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347.6, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep348.6, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep349.6 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347.6, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep349.6, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep347.7 = getelementptr inbounds nuw [16 x i8], ptr %i.o, <8 x i64> <i64 120, i64 121, i64 122, i64 123, i64 124, i64 125, i64 126, i64 127> ; 2 uses
  %wide.gep348.7 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347.7, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep348.7, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep349.7 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347.7, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep349.7, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep347.8 = getelementptr inbounds nuw [16 x i8], ptr %i.o, <8 x i64> <i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135> ; 2 uses
  %wide.gep348.8 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347.8, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep348.8, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep349.8 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347.8, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep349.8, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep347.9 = getelementptr inbounds nuw [16 x i8], ptr %i.o, <8 x i64> <i64 136, i64 137, i64 138, i64 139, i64 140, i64 141, i64 142, i64 143> ; 2 uses
  %wide.gep348.9 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347.9, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep348.9, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep349.9 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347.9, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep349.9, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep347.10 = getelementptr inbounds nuw [16 x i8], ptr %i.o, <8 x i64> <i64 144, i64 145, i64 146, i64 147, i64 148, i64 149, i64 150, i64 151> ; 2 uses
  %wide.gep348.10 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347.10, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep348.10, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep349.10 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347.10, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep349.10, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep347.11 = getelementptr inbounds nuw [16 x i8], ptr %i.o, <8 x i64> <i64 152, i64 153, i64 154, i64 155, i64 156, i64 157, i64 158, i64 159> ; 2 uses
  %wide.gep348.11 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347.11, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep348.11, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep349.11 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347.11, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep349.11, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep347.12 = getelementptr inbounds nuw [16 x i8], ptr %i.o, <8 x i64> <i64 160, i64 161, i64 162, i64 163, i64 164, i64 165, i64 166, i64 167> ; 2 uses
  %wide.gep348.12 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347.12, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep348.12, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep349.12 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347.12, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep349.12, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep347.13 = getelementptr inbounds nuw [16 x i8], ptr %i.o, <8 x i64> <i64 168, i64 169, i64 170, i64 171, i64 172, i64 173, i64 174, i64 175> ; 2 uses
  %wide.gep348.13 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347.13, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep348.13, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep349.13 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347.13, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep349.13, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep347.14 = getelementptr inbounds nuw [16 x i8], ptr %i.o, <8 x i64> <i64 176, i64 177, i64 178, i64 179, i64 180, i64 181, i64 182, i64 183> ; 2 uses
  %wide.gep348.14 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347.14, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep348.14, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep349.14 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347.14, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep349.14, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep347.15 = getelementptr inbounds nuw [16 x i8], ptr %i.o, <8 x i64> <i64 184, i64 185, i64 186, i64 187, i64 188, i64 189, i64 190, i64 191> ; 2 uses
  %wide.gep348.15 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347.15, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep348.15, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep349.15 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347.15, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep349.15, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep347.16 = getelementptr inbounds nuw [16 x i8], ptr %i.o, <8 x i64> <i64 192, i64 193, i64 194, i64 195, i64 196, i64 197, i64 198, i64 199> ; 2 uses
  %wide.gep348.16 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347.16, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep348.16, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep349.16 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347.16, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep349.16, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep347.17 = getelementptr inbounds nuw [16 x i8], ptr %i.o, <8 x i64> <i64 200, i64 201, i64 202, i64 203, i64 204, i64 205, i64 206, i64 207> ; 2 uses
  %wide.gep348.17 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347.17, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep348.17, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep349.17 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347.17, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep349.17, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep347.18 = getelementptr inbounds nuw [16 x i8], ptr %i.o, <8 x i64> <i64 208, i64 209, i64 210, i64 211, i64 212, i64 213, i64 214, i64 215> ; 2 uses
  %wide.gep348.18 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347.18, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep348.18, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep349.18 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347.18, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep349.18, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep347.19 = getelementptr inbounds nuw [16 x i8], ptr %i.o, <8 x i64> <i64 216, i64 217, i64 218, i64 219, i64 220, i64 221, i64 222, i64 223> ; 2 uses
  %wide.gep348.19 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347.19, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep348.19, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep349.19 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep347.19, i64 4
end_hunk_0
begin_hunk_1_@_ZN6LibRaw28parseOlympus_ImageProcessingEjjjj:bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 187224
  %i.bf = sext i32 %.0.i219 to i64
  %i.bg = getelementptr inbounds [16 x i8], ptr %i.be, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store i32 %i.bd, ptr %i.bh, align 4, !tbaa !98
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i32 %i.bc, ptr %i.bi, align 4, !tbaa !98
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  br i1 %.not208, label %.thread270.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = uitofp i16 %i.ba to float
  %i.bk = zext nneg i32 %1 to i64
  %i.bl = getelementptr [20 x i8], ptr %0, i64 %i.bk ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 186168
  store float %i.bj, ptr %i.bm, align 4, !tbaa !101
  %i.bn = uitofp i16 %i.bb to float
  %i.bo = getelementptr i8, ptr %i.bl, i64 186176
  store float %i.bn, ptr %i.bo, align 4, !tbaa !101
  br label %.thread270.thread

bb.u:                                             ; preds = %bb.e
  %i.bp = add i32 %1, -274                        ; 3 uses
  %or.cond7 = icmp ult i32 %i.bp, 13
  br i1 %or.cond7, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %bb.u
  %i.bq = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.br = zext i16 %i.bq to i32                   ; 2 uses
  %i.bs = shl nuw nsw i32 %i.bp, 1                ; 2 uses
  %i.bt = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw12Oly_wb_list2E, i64 8), align 8, !tbaa !103 ; 2 uses
  %i.bu = icmp ult i32 %i.bs, %i.bt
  br i1 %i.bu, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bv = load ptr, ptr @_ZN6LibRaw12Oly_wb_list2E, align 8, !tbaa !104
  %i.bw = zext nneg i32 %i.bs to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !98
  br label %_ZNK21libraw_static_table_tixEj.exit216

bb.x:                                             ; preds = %bb.v
  %.not.i213 = icmp eq i32 %i.bt, 0
  br i1 %.not.i213, label %_ZNK21libraw_static_table_tixEj.exit216, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bz = load ptr, ptr @_ZN6LibRaw12Oly_wb_list2E, align 8, !tbaa !104 ; 2 uses
  %.not6.i214 = icmp eq ptr %i.bz, null
  br i1 %.not6.i214, label %_ZNK21libraw_static_table_tixEj.exit216, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !98
  br label %_ZNK21libraw_static_table_tixEj.exit216

_ZNK21libraw_static_table_tixEj.exit216:          ; preds = %bb.w, %bb.x, %bb.y, %bb.z
  %.0.i215 = phi i32 [ %i.by, %bb.w ], [ %i.ca, %bb.z ], [ 0, %bb.y ], [ 0, %bb.x ] ; 2 uses
  %.not205 = icmp eq i32 %i.bp, 0
  br i1 %.not205, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit216
  %i.cb = uitofp i16 %i.bq to float               ; 2 uses
  %i.cc = zext nneg i32 %1 to i64
  %i.cd = getelementptr [20 x i8], ptr %0, i64 %i.cc ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 185836
  store float %i.cb, ptr %i.ce, align 4, !tbaa !101
  %i.cf = getelementptr i8, ptr %i.cd, i64 185828
  store float %i.cb, ptr %i.cf, align 4, !tbaa !101
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZNK21libraw_static_table_tixEj.exit216
  %.not206 = icmp eq i32 %.0.i215, 256
  br i1 %.not206, label %.thread270.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 187224
  %i.ch = sext i32 %.0.i215 to i64
  %i.ci = getelementptr inbounds [16 x i8], ptr %i.cg, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  store i32 %i.br, ptr %i.cj, align 4, !tbaa !98
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store i32 %i.br, ptr %i.ck, align 4, !tbaa !98
  br label %.thread270.thread

bb.ad:                                            ; preds = %bb.u
  switch i32 %1, label %bb.aq [
    i32 287, label %bb.ae
    i32 289, label %bb.ao
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.cl = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.cm = zext i16 %i.cl to i32                   ; 10 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 187288
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !98
  %.not203 = icmp eq i32 %i.co, 0
  br i1 %.not203, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 187300
  store i32 %i.cm, ptr %i.cp, align 4, !tbaa !98
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 187292
  store i32 %i.cm, ptr %i.cq, align 4, !tbaa !98
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 188664
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !98
  %.not204 = icmp eq i32 %i.cs, 0
  br i1 %.not204, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 188676
  store i32 %i.cm, ptr %i.ct, align 4, !tbaa !98
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 188668
  store i32 %i.cm, ptr %i.cu, align 4, !tbaa !98
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 188680
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !98
  %.not204.1 = icmp eq i32 %i.cw, 0
  br i1 %.not204.1, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 188692
  store i32 %i.cm, ptr %i.cx, align 4, !tbaa !98
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 188684
  store i32 %i.cm, ptr %i.cy, align 4, !tbaa !98
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 188696
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !98
  %.not204.2 = icmp eq i32 %i.da, 0
  br i1 %.not204.2, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 188708
  store i32 %i.cm, ptr %i.db, align 4, !tbaa !98
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 188700
  store i32 %i.cm, ptr %i.dc, align 4, !tbaa !98
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 188712
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !98
  %.not204.3 = icmp eq i32 %i.de, 0
  br i1 %.not204.3, label %.thread270.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 188724
  store i32 %i.cm, ptr %i.df, align 4, !tbaa !98
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 188716
  store i32 %i.cm, ptr %i.dg, align 4, !tbaa !98
  br label %.thread270.thread

bb.ao:                                            ; preds = %bb.ad
  %i.dh = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.di = zext i16 %i.dh to i32
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 187288
  store i32 %i.di, ptr %i.dj, align 8, !tbaa !98
  %i.dk = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.dl = zext i16 %i.dk to i32
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 187296
  store i32 %i.dl, ptr %i.dm, align 8, !tbaa !98
  %i.dn = icmp eq i32 %3, 4
  br i1 %i.dn, label %bb.ap, label %.thread270.thread

bb.ap:                                            ; preds = %bb.ao
  %i.do = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.dp = zext i16 %i.do to i32
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 187292
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !98
  %i.dr = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ds = zext i16 %i.dr to i32
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 187300
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !98
  br label %.thread270.thread

bb.aq:                                            ; preds = %bb.ad
  %i.du = icmp eq i32 %1, 512
  %or.cond9 = and i1 %i.du, %i.b
  br i1 %or.cond9, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.dw = load i64, ptr %i.dv, align 1
  %i.dx = icmp ne i64 %i.dw, 13852941198112630
  %i.dy = zext i1 %i.dx to i32
  %.not = icmp eq i32 %i.dy, 0
  br i1 %.not, label %.thread270.thread, label %.preheader275

.preheader275:                                    ; preds = %bb.ar
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 3218 ; 3 uses
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !99
  %.not202 = icmp eq i16 %i.ea, 0                 ; 3 uses
  %i.eb = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ec = sitofp reassoc nsz arcp contract afn i16 %i.eb to float
  %i.ed = fmul reassoc nnan nsz arcp contract afn float %i.ec, 3.906250e-03
  %. = select i1 %.not202, i64 153284, i64 153332
  %.336 = select i1 %.not202, i64 153288, i64 153336
  %.337 = select i1 %.not202, i64 153292, i64 153340
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 %.
  store float %i.ed, ptr %i.ee, align 4, !tbaa !101
  %i.ef = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.eg = sitofp reassoc nsz arcp contract afn i16 %i.ef to float
  %i.eh = fmul reassoc nnan nsz arcp contract afn float %i.eg, 3.906250e-03
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 %.336
  store float %i.eh, ptr %i.ei, align 8, !tbaa !101
  %i.ej = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ek = sitofp reassoc nsz arcp contract afn i16 %i.ej to float
  %i.el = fmul reassoc nnan nsz arcp contract afn float %i.ek, 3.906250e-03
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 %.337
  store float %i.el, ptr %i.em, align 4, !tbaa !101
  %i.en = load i16, ptr %i.dz, align 2, !tbaa !99
  %.not202.1 = icmp eq i16 %i.en, 0               ; 3 uses
  %.sink = select i1 %.not202.1, i64 153300, i64 153348
  %.sink332 = select i1 %.not202.1, i64 153304, i64 153352
  %.sink329 = select i1 %.not202.1, i64 153308, i64 153356
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %i.ep = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.eq = sitofp reassoc nsz arcp contract afn i16 %i.ep to float
  %i.er = fmul reassoc nnan nsz arcp contract afn float %i.eq, 3.906250e-03
  store float %i.er, ptr %i.eo, align 4, !tbaa !101
  %i.es = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.et = sitofp reassoc nsz arcp contract afn i16 %i.es to float
  %i.eu = fmul reassoc nnan nsz arcp contract afn float %i.et, 3.906250e-03
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 %.sink332
  store float %i.eu, ptr %i.ev, align 8, !tbaa !101
  %i.ew = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ex = sitofp reassoc nsz arcp contract afn i16 %i.ew to float
  %i.ey = fmul reassoc nnan nsz arcp contract afn float %i.ex, 3.906250e-03
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 %.sink329
  store float %i.ey, ptr %i.ez, align 4, !tbaa !101
  %i.fa = load i16, ptr %i.dz, align 2, !tbaa !99
  %.not202.2 = icmp eq i16 %i.fa, 0
  %i.fb = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.fc = sitofp reassoc nsz arcp contract afn i16 %i.fb to float
  %i.fd = fmul reassoc nnan nsz arcp contract afn float %i.fc, 3.906250e-03 ; 2 uses
  br i1 %.not202.2, label %.preheader272.2, label %.preheader273.2

.preheader273.2:                                  ; preds = %.preheader275
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 153364
  store float %i.fd, ptr %i.fe, align 4, !tbaa !101
  %i.ff = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.fg = sitofp reassoc nsz arcp contract afn i16 %i.ff to float
  %i.fh = fmul reassoc nnan nsz arcp contract afn float %i.fg, 3.906250e-03
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 153368
  store float %i.fh, ptr %i.fi, align 8, !tbaa !101
  %i.fj = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.fk = sitofp reassoc nsz arcp contract afn i16 %i.fj to float
  %i.fl = fmul reassoc nnan nsz arcp contract afn float %i.fk, 3.906250e-03
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 153372
  store float %i.fl, ptr %i.fm, align 4, !tbaa !101
  br label %.thread270.thread

.preheader272.2:                                  ; preds = %.preheader275
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 153316
  store float %i.fd, ptr %i.fn, align 4, !tbaa !101
  %i.fo = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.fp = sitofp reassoc nsz arcp contract afn i16 %i.fo to float
  %i.fq = fmul reassoc nnan nsz arcp contract afn float %i.fp, 3.906250e-03
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 153320
  store float %i.fq, ptr %i.fr, align 8, !tbaa !101
  %i.fs = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ft = sitofp reassoc nsz arcp contract afn i16 %i.fs to float
  %i.fu = fmul reassoc nnan nsz arcp contract afn float %i.ft, 3.906250e-03
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 153324
  store float %i.fu, ptr %i.fv, align 4, !tbaa !101
  br label %.thread270.thread

bb.as:                                            ; preds = %bb.aq
  %i.fw = icmp eq i32 %1, 1536
  %or.cond11 = and i1 %i.fw, %i.b
  br i1 %or.cond11, label %.preheader277, label %bb.at

.preheader277:                                    ; preds = %bb.as
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 136672
  %i.fy = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.fz = zext i16 %i.fy to i32
  store i32 %i.fz, ptr %i.fx, align 8, !tbaa !98
  %i.ga = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.gb = zext i16 %i.ga to i32
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 136676
  store i32 %i.gb, ptr %i.gc, align 4, !tbaa !98
  %i.gd = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ge = zext i16 %i.gd to i32
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 136684
  store i32 %i.ge, ptr %i.gf, align 4, !tbaa !98
  %i.gg = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.gh = zext i16 %i.gg to i32
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 136680
  store i32 %i.gh, ptr %i.gi, align 8, !tbaa !98
  br label %.thread270.thread

bb.at:                                            ; preds = %bb.as
  %i.gj = icmp eq i32 %1, 1553
  %or.cond13 = and i1 %i.gj, %i.b
  br i1 %or.cond13, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gk = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 3142
  store i16 %i.gk, ptr %i.gl, align 2, !tbaa !105
  br label %.thread270.thread

bb.av:                                            ; preds = %bb.at
  %i.gm = icmp eq i32 %1, 1554
  %or.cond15 = and i1 %i.gm, %i.b
  br i1 %or.cond15, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.gn = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 182
  store i16 %i.gn, ptr %i.go, align 2, !tbaa !107
  br label %.thread270.thread

bb.ax:                                            ; preds = %bb.av
  %i.gp = icmp eq i32 %1, 1555
  %or.cond17 = and i1 %i.gp, %i.b
  br i1 %or.cond17, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.gq = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i16 %i.gq, ptr %i.gr, align 8, !tbaa !108
  br label %.thread270.thread

bb.az:                                            ; preds = %bb.ax
  %i.gs = icmp eq i32 %1, 1556
  %or.cond19 = and i1 %i.gs, %i.b
  br i1 %or.cond19, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gt = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 %i.gt, ptr %i.gu, align 2, !tbaa !109
  br label %.thread270.thread

bb.bb:                                            ; preds = %bb.az
  %i.gv = icmp eq i32 %1, 1557
  %or.cond21 = and i1 %i.gv, %i.b
  br i1 %or.cond21, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.gw = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 %i.gw, ptr %i.gx, align 4, !tbaa !110
  br label %.thread270.thread

bb.bd:                                            ; preds = %bb.bb
  %i.gy = icmp eq i32 %1, 1600
  %or.cond23 = and i1 %i.gy, %i.b
  br i1 %or.cond23, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.gz = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ha = zext i16 %i.gz to i32
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 3144
  store i32 %i.ha, ptr %i.hb, align 8, !tbaa !137
  br label %.thread270.thread

bb.bf:                                            ; preds = %bb.bd
  %i.hc = icmp eq i32 %1, 1601
  %or.cond25 = and i1 %i.hc, %i.b
  br i1 %or.cond25, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.hd = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.he = zext i16 %i.hd to i32
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 3148
  store i32 %i.he, ptr %i.hf, align 4, !tbaa !138
  br label %.thread270.thread

bb.bh:                                            ; preds = %bb.bf
  %i.hg = icmp eq i32 %1, 1602
  %or.cond27 = and i1 %i.hg, %i.b
  br i1 %or.cond27, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.hh = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.hi = zext i16 %i.hh to i32
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 3152
  store i32 %i.hi, ptr %i.hj, align 8, !tbaa !139
  br label %.thread270.thread

bb.bj:                                            ; preds = %bb.bh
  %i.hk = icmp eq i32 %1, 1603
  %or.cond29 = and i1 %i.hk, %i.b
  br i1 %or.cond29, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.hl = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.hm = zext i16 %i.hl to i32
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 3156
  store i32 %i.hm, ptr %i.hn, align 4, !tbaa !140
  br label %.thread270.thread

bb.bl:                                            ; preds = %bb.bj
  %i.ho = icmp eq i32 %1, 1604
  %or.cond31 = and i1 %i.ho, %i.b
  br i1 %or.cond31, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.hp = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.hq = zext i16 %i.hp to i32
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 3160
  store i32 %i.hq, ptr %i.hr, align 8, !tbaa !141
  br label %.thread270.thread

bb.bn:                                            ; preds = %bb.bl
  %i.hs = icmp eq i32 %1, 1605
  %or.cond33 = and i1 %i.hs, %i.b
  br i1 %or.cond33, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ht = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.hu = zext i16 %i.ht to i32
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 3164
  store i32 %i.hu, ptr %i.hv, align 4, !tbaa !142
  br label %.thread270.thread

bb.bp:                                            ; preds = %bb.bn
  %i.hw = icmp eq i32 %1, 1606
  %or.cond35 = and i1 %i.hw, %i.b
  br i1 %or.cond35, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.hx = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.hy = zext i16 %i.hx to i32
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 3168
  store i32 %i.hy, ptr %i.hz, align 8, !tbaa !143
  br label %.thread270.thread

bb.br:                                            ; preds = %bb.bp
  %i.ia = icmp eq i32 %1, 1607
  %or.cond37 = and i1 %i.ia, %i.b
  br i1 %or.cond37, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.ib = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ic = zext i16 %i.ib to i32
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 3172
  store i32 %i.ic, ptr %i.id, align 4, !tbaa !144
  br label %.thread270.thread

bb.bt:                                            ; preds = %bb.br
  %i.ie = icmp eq i32 %1, 1608
  %or.cond39 = and i1 %i.ie, %i.b
  br i1 %or.cond39, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.if = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ig = zext i16 %i.if to i32
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 3176
  store i32 %i.ig, ptr %i.ih, align 8, !tbaa !145
  br label %.thread270.thread

bb.bv:                                            ; preds = %bb.bt
  %i.ii = icmp eq i32 %1, 1609
  %or.cond41 = and i1 %i.ii, %i.b
  br i1 %or.cond41, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.ij = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ik = zext i16 %i.ij to i32
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 3180
  store i32 %i.ik, ptr %i.il, align 4, !tbaa !146
  br label %.thread270.thread

bb.bx:                                            ; preds = %bb.bv
  %i.im = icmp eq i32 %1, 1616
  %or.cond43 = and i1 %i.im, %i.b
  br i1 %or.cond43, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.in = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.io = zext i16 %i.in to i32
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 3184
  store i32 %i.io, ptr %i.ip, align 8, !tbaa !147
  br label %.thread270.thread

bb.bz:                                            ; preds = %bb.bx
  %i.iq = icmp eq i32 %1, 1617
  %or.cond45 = and i1 %i.iq, %i.b
  br i1 %or.cond45, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.ir = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.is = zext i16 %i.ir to i32
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 3188
  store i32 %i.is, ptr %i.it, align 4, !tbaa !148
  br label %.thread270.thread

bb.cb:                                            ; preds = %bb.bz
  %i.iu = icmp eq i32 %1, 1618
  %or.cond47 = and i1 %i.iu, %i.b
  br i1 %or.cond47, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.iv = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.iw = zext i16 %i.iv to i32
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 3192
  store i32 %i.iw, ptr %i.ix, align 8, !tbaa !149
  br label %.thread270.thread

bb.cd:                                            ; preds = %bb.cb
  %i.iy = icmp eq i32 %1, 1619
  %or.cond49 = and i1 %i.iy, %i.b
  br i1 %or.cond49, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.iz = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ja = zext i16 %i.iz to i32
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 3196
  store i32 %i.ja, ptr %i.jb, align 4, !tbaa !150
  br label %.thread270.thread

bb.cf:                                            ; preds = %bb.cd
  %i.jc = icmp eq i32 %1, 2053
  %or.cond51 = and i1 %i.jc, %i.l
  br i1 %or.cond51, label %bb.cg, label %.thread270

bb.cg:                                            ; preds = %bb.cf
  %i.jd = tail call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %2)
  %i.je = fptosi double %i.jd to i32
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 3200 ; 2 uses
  store i32 %i.je, ptr %i.jf, align 8, !tbaa !98
  %i.jg = tail call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %2)
  %i.jh = fptosi double %i.jg to i32
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 3204
  store i32 %i.jh, ptr %i.ji, align 4, !tbaa !98
  br i1 %i.b, label %bb.ch, label %.thread270.thread

bb.ch:                                            ; preds = %bb.cg
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 381704
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !78
  %.not201 = icmp eq i64 %i.jk, 292933611569
  br i1 %.not201, label %.thread270.thread, label %.preheader279

.preheader279:                                    ; preds = %bb.ch
  %i.jl = load <1 x i32>, ptr %i.jf, align 8
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 153100
  %i.jn = shufflevector <1 x i32> %i.jl, <1 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.jn, ptr %i.jm, align 4, !tbaa !98
  br label %.thread270.thread

.thread270:                                       ; preds = %bb.cf
  switch i32 %1, label %.thread270.thread [
    i32 4370, label %bb.ci
    i32 4371, label %bb.ct
    i32 4870, label %bb.cu
  ]

bb.ci:                                            ; preds = %.thread270
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 381728 ; 3 uses
  %i.jp = load i16, ptr %i.jo, align 8, !tbaa !151
  store i16 19789, ptr %i.jo, align 8, !tbaa !151
  %i.jq = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i16 %i.jp, ptr %i.jo, align 8, !tbaa !151
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 10 uses
  switch i16 %i.jq, label %bb.cs [
    i16 257, label %bb.cj
    i16 2305, label %bb.cj
    i16 2313, label %bb.cj
    i16 260, label %bb.ck
    i16 1025, label %bb.ck
    i16 513, label %bb.cl
    i16 514, label %bb.cl
    i16 769, label %bb.cm
    i16 771, label %bb.cm
    i16 1028, label %bb.cn
    i16 1285, label %bb.co
    i16 1542, label %bb.cp
    i16 1799, label %bb.cq
    i16 2056, label %bb.cr
  ]

bb.cj:                                            ; preds = %bb.ci, %bb.ci, %bb.ci
  store i16 1333, ptr %i.jr, align 4, !tbaa !152
  br label %.thread270.thread

bb.ck:                                            ; preds = %bb.ci, %bb.ci
  store i16 1000, ptr %i.jr, align 4, !tbaa !152
  br label %.thread270.thread

bb.cl:                                            ; preds = %bb.ci, %bb.ci
  store i16 1500, ptr %i.jr, align 4, !tbaa !152
  br label %.thread270.thread

bb.cm:                                            ; preds = %bb.ci, %bb.ci
  store i16 1777, ptr %i.jr, align 4, !tbaa !152
  br label %.thread270.thread

bb.cn:                                            ; preds = %bb.ci
  store i16 1000, ptr %i.jr, align 4, !tbaa !152
  br label %.thread270.thread

bb.co:                                            ; preds = %bb.ci
  store i16 1250, ptr %i.jr, align 4, !tbaa !152
  br label %.thread270.thread

bb.cp:                                            ; preds = %bb.ci
  store i16 1166, ptr %i.jr, align 4, !tbaa !152
  br label %.thread270.thread

bb.cq:                                            ; preds = %bb.ci
  store i16 1200, ptr %i.jr, align 4, !tbaa !152
  br label %.thread270.thread

bb.cr:                                            ; preds = %bb.ci
  store i16 1400, ptr %i.jr, align 4, !tbaa !152
  br label %.thread270.thread

bb.cs:                                            ; preds = %bb.ci
  store i16 1, ptr %i.jr, align 4, !tbaa !152
  br label %.thread270.thread

bb.ct:                                            ; preds = %.thread270
  %i.js = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 3568
  store i16 %i.js, ptr %i.jt, align 8, !tbaa !77
  %i.ju = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 3570
  store i16 %i.ju, ptr %i.jv, align 2, !tbaa !77
  %i.jw = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 3572
  store i16 %i.jw, ptr %i.jx, align 4, !tbaa !77
  %i.jy = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 3574
  store i16 %i.jy, ptr %i.jz, align 2, !tbaa !77
  br label %.thread270.thread

bb.cu:                                            ; preds = %.thread270
  %i.ka = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 4 uses
  %i.kb = zext i16 %i.ka to i32
  switch i16 %i.ka, label %bb.cv [
    i16 100, label %.thread270.thread
    i16 0, label %.thread270.thread
  ]

bb.cv:                                            ; preds = %bb.cu
  %i.kc = icmp ult i16 %i.ka, 61
  br i1 %i.kc, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.kd = uitofp nneg i16 %i.ka to float
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cv
  %i.ke = add nsw i32 %i.kb, -32
  %i.kf = uitofp nneg i32 %i.ke to float
  %i.kg = fmul reassoc nnan nsz arcp contract afn float %i.kf, f0x3F0E38E4
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.kh = phi float [ %i.kd, %bb.cw ], [ %i.kg, %bb.cx ] ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 4800 ; 2 uses
  store float %i.kh, ptr %i.ki, align 8, !tbaa !153
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 4824
  %i.kk = load float, ptr %i.kj, align 8, !tbaa !154 ; 2 uses
  %i.kl = fcmp reassoc nsz arcp contract afn ogt float %i.kk, -2.731500e+02
  br i1 %i.kl, label %bb.cz, label %.thread270.thread

bb.cz:                                            ; preds = %bb.cy
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 381704
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !78
  switch i64 %i.kn, label %.thread270.thread [
    i64 292933679411, label %bb.da
    i64 292933742643, label %bb.da
    i64 292933742645, label %bb.da
  ]

bb.da:                                            ; preds = %bb.cz, %bb.cz, %bb.cz
  %i.ko = fadd reassoc nsz arcp contract afn float %i.kh, %i.kk
  store float %i.ko, ptr %i.ki, align 8, !tbaa !153
  br label %.thread270.thread

.thread270.thread:                                ; preds = %vector.ph, %.preheader273.2, %.preheader272.2, %bb.am, %bb.an, %.preheader279, %.preheader277, %bb.ar, %bb.d, %bb.cz, %bb.cu, %bb.cu, %.thread270, %bb.ac, %bb.ab, %bb.ap, %bb.ao, %bb.aw, %bb.ba, %bb.be, %bb.bi, %bb.bm, %bb.bq, %bb.bu, %bb.by, %bb.cc, %bb.ch, %bb.cg, %bb.ct, %bb.da, %bb.cy, %bb.cj, %bb.ck, %bb.cl, %bb.cm, %bb.cn, %bb.co, %bb.cp, %bb.cq, %bb.cr, %bb.cs, %bb.ce, %bb.ca, %bb.bw, %bb.bs, %bb.bo, %bb.bk, %bb.bg, %bb.bc, %bb.ay, %bb.au, %bb.p, %bb.t, %bb.s, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw20parseOlympus_RawInfoEjjjj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 272
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.c = load i64, ptr %i.b, align 1
  %i.d = icmp ne i64 %i.c, 13852941198112630
  %i.e = zext i1 %i.d to i32
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.g = zext i16 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 187224 ; 32 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 188536
  store i32 %i.g, ptr %i.i, align 8, !tbaa !98
  %i.j = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.k = zext i16 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 188544
  store i32 %i.k, ptr %i.l, align 8, !tbaa !98
  %i.m = icmp eq i32 %3, 2
  br i1 %i.m, label %vector.body, label %.thread78

vector.body:                                      ; preds = %bb.c
  %wide.gep = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7> ; 2 uses
  %wide.gep129 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep130 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep130, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.1 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15> ; 2 uses
  %wide.gep129.1 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.1, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.1, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep130.1 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.1, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep130.1, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.2 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23> ; 2 uses
  %wide.gep129.2 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.2, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.2, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep130.2 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.2, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep130.2, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.3 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31> ; 2 uses
  %wide.gep129.3 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.3, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.3, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep130.3 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.3, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep130.3, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.4 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39> ; 2 uses
  %wide.gep129.4 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.4, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.4, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep130.4 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.4, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep130.4, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.5 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47> ; 2 uses
  %wide.gep129.5 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.5, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.5, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep130.5 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.5, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep130.5, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.6 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55> ; 2 uses
  %wide.gep129.6 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.6, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.6, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep130.6 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.6, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep130.6, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.7 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63> ; 2 uses
  %wide.gep129.7 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.7, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.7, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep130.7 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.7, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep130.7, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.8 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71> ; 2 uses
  %wide.gep129.8 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.8, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.8, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep130.8 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.8, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep130.8, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.9 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79> ; 2 uses
  %wide.gep129.9 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.9, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.9, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep130.9 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.9, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep130.9, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.10 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87> ; 2 uses
  %wide.gep129.10 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.10, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.10, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep130.10 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.10, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep130.10, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.11 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95> ; 2 uses
  %wide.gep129.11 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.11, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.11, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep130.11 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.11, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep130.11, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.12 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 96, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 103> ; 2 uses
  %wide.gep129.12 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.12, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.12, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep130.12 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.12, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep130.12, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.13 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 104, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 111> ; 2 uses
  %wide.gep129.13 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.13, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.13, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep130.13 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.13, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep130.13, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.14 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 112, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119> ; 2 uses
  %wide.gep129.14 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.14, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.14, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep130.14 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.14, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep130.14, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.15 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 120, i64 121, i64 122, i64 123, i64 124, i64 125, i64 126, i64 127> ; 2 uses
  %wide.gep129.15 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.15, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.15, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep130.15 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.15, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep130.15, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.16 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135> ; 2 uses
  %wide.gep129.16 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.16, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.16, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep130.16 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.16, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep130.16, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.17 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 136, i64 137, i64 138, i64 139, i64 140, i64 141, i64 142, i64 143> ; 2 uses
  %wide.gep129.17 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.17, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.17, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep130.17 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.17, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep130.17, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.18 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 144, i64 145, i64 146, i64 147, i64 148, i64 149, i64 150, i64 151> ; 2 uses
  %wide.gep129.18 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.18, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.18, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep130.18 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.18, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep130.18, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.19 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 152, i64 153, i64 154, i64 155, i64 156, i64 157, i64 158, i64 159> ; 2 uses
  %wide.gep129.19 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.19, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.19, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep130.19 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.19, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep130.19, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.20 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 160, i64 161, i64 162, i64 163, i64 164, i64 165, i64 166, i64 167> ; 2 uses
  %wide.gep129.20 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.20, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.20, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep130.20 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.20, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep130.20, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.21 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 168, i64 169, i64 170, i64 171, i64 172, i64 173, i64 174, i64 175> ; 2 uses
  %wide.gep129.21 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.21, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.21, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep130.21 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.21, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep130.21, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.22 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 176, i64 177, i64 178, i64 179, i64 180, i64 181, i64 182, i64 183> ; 2 uses
  %wide.gep129.22 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.22, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.22, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep130.22 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.22, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep130.22, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.23 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 184, i64 185, i64 186, i64 187, i64 188, i64 189, i64 190, i64 191> ; 2 uses
  %wide.gep129.23 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.23, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.23, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep130.23 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.23, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep130.23, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.24 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 192, i64 193, i64 194, i64 195, i64 196, i64 197, i64 198, i64 199> ; 2 uses
  %wide.gep129.24 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.24, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.24, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep130.24 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.24, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep130.24, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.25 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 200, i64 201, i64 202, i64 203, i64 204, i64 205, i64 206, i64 207> ; 2 uses
  %wide.gep129.25 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.25, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.25, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep130.25 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.25, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep130.25, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.26 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 208, i64 209, i64 210, i64 211, i64 212, i64 213, i64 214, i64 215> ; 2 uses
  %wide.gep129.26 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.26, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.26, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep130.26 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.26, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep130.26, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.27 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 216, i64 217, i64 218, i64 219, i64 220, i64 221, i64 222, i64 223> ; 2 uses
  %wide.gep129.27 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.27, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.27, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep130.27 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.27, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep130.27, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.28 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 224, i64 225, i64 226, i64 227, i64 228, i64 229, i64 230, i64 231> ; 2 uses
  %wide.gep129.28 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.28, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.28, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep130.28 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.28, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep130.28, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.29 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 232, i64 233, i64 234, i64 235, i64 236, i64 237, i64 238, i64 239> ; 2 uses
  %wide.gep129.29 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.29, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.29, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep130.29 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.29, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep130.29, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.30 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 240, i64 241, i64 242, i64 243, i64 244, i64 245, i64 246, i64 247> ; 2 uses
  %wide.gep129.30 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.30, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.30, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep130.30 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.30, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep130.30, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep.31 = getelementptr inbounds nuw [16 x i8], ptr %i.h, <8 x i64> <i64 248, i64 249, i64 250, i64 251, i64 252, i64 253, i64 254, i64 255> ; 2 uses
  %wide.gep129.31 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.31, i64 12
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep129.31, <8 x i1> splat (i1 true)), !tbaa !98
  %wide.gep130.31 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.31, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 256), <8 x ptr> align 4 %wide.gep130.31, <8 x i1> splat (i1 true)), !tbaa !98
  br label %.thread78

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.n = icmp samesign ult i32 %1, 293
  %i.o = add i32 %1, -288                         ; 2 uses
  %or.cond = icmp ult i32 %i.o, 5
  %i.p = and i32 %1, -4
  %or.cond3 = icmp eq i32 %i.p, 304
  %or.cond64 = or i1 %or.cond, %or.cond3
  br i1 %or.cond64, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.r = load i64, ptr %i.q, align 1
  %i.s = icmp ne i64 %i.r, 13852941198112630
  %i.t = zext i1 %i.s to i32
  %.not62 = icmp eq i32 %i.t, 0
  br i1 %.not62, label %.thread78, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = add nsw i32 %1, -299
  %.058 = select i1 %i.n, i32 %i.o, i32 %i.u      ; 4 uses
  %i.v = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.w = zext i16 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 187224 ; 2 uses
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw12Oly_wb_list1E, i64 8), align 8, !tbaa !103 ; 2 uses
  %i.z = icmp ult i32 %.058, %i.y
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr @_ZN6LibRaw12Oly_wb_list1E, align 8, !tbaa !104
  %i.ab = zext i32 %.058 to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !98
  br label %_ZNK21libraw_static_table_tixEj.exit

bb.h:                                             ; preds = %bb.f
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %_ZNK21libraw_static_table_tixEj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr @_ZN6LibRaw12Oly_wb_list1E, align 8, !tbaa !104 ; 2 uses
  %.not6.i = icmp eq ptr %i.ae, null
  br i1 %.not6.i, label %_ZNK21libraw_static_table_tixEj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !98
  br label %_ZNK21libraw_static_table_tixEj.exit

_ZNK21libraw_static_table_tixEj.exit:             ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %.0.i = phi i32 [ %i.ad, %bb.g ], [ %i.af, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ]
  %i.ag = sext i32 %.0.i to i64
  %i.ah = getelementptr inbounds [16 x i8], ptr %i.x, i64 %i.ag
  store i32 %i.w, ptr %i.ah, align 8, !tbaa !98
  %i.ai = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aj = zext i16 %i.ai to i32
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw12Oly_wb_list1E, i64 8), align 8, !tbaa !103 ; 2 uses
  %i.al = icmp ult i32 %.058, %i.ak
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK21libraw_static_table_tixEj.exit
  %i.am = load ptr, ptr @_ZN6LibRaw12Oly_wb_list1E, align 8, !tbaa !104
  %i.an = zext i32 %.058 to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !98
  br label %_ZNK21libraw_static_table_tixEj.exit68

bb.l:                                             ; preds = %_ZNK21libraw_static_table_tixEj.exit
  %.not.i65 = icmp eq i32 %i.ak, 0
  br i1 %.not.i65, label %_ZNK21libraw_static_table_tixEj.exit68, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = load ptr, ptr @_ZN6LibRaw12Oly_wb_list1E, align 8, !tbaa !104 ; 2 uses
  %.not6.i66 = icmp eq ptr %i.aq, null
  br i1 %.not6.i66, label %_ZNK21libraw_static_table_tixEj.exit68, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !98
  br label %_ZNK21libraw_static_table_tixEj.exit68

_ZNK21libraw_static_table_tixEj.exit68:           ; preds = %bb.k, %bb.l, %bb.m, %bb.n
  %.0.i67 = phi i32 [ %i.ap, %bb.k ], [ %i.ar, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ]
  %i.as = sext i32 %.0.i67 to i64
  %i.at = getelementptr inbounds [16 x i8], ptr %i.x, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 %i.aj, ptr %i.au, align 8, !tbaa !98
  br label %.thread78

bb.o:                                             ; preds = %bb.d
  %i.av = icmp eq i32 %1, 512
  %i.aw = icmp eq i32 %4, 0                       ; 6 uses
  %or.cond5 = and i1 %i.av, %i.aw
  br i1 %or.cond5, label %.preheader82, label %bb.p

.preheader82:                                     ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 3218 ; 3 uses
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !99
  %.not63 = icmp eq i16 %i.ay, 0                  ; 3 uses
  %i.az = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ba = sitofp reassoc nsz arcp contract afn i16 %i.az to float
  %i.bb = fmul reassoc nnan nsz arcp contract afn float %i.ba, 3.906250e-03
  %. = select i1 %.not63, i64 153284, i64 153332
  %.127 = select i1 %.not63, i64 153288, i64 153336
  %.128 = select i1 %.not63, i64 153292, i64 153340
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %.
  store float %i.bb, ptr %i.bc, align 4, !tbaa !101
  %i.bd = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.be = sitofp reassoc nsz arcp contract afn i16 %i.bd to float
  %i.bf = fmul reassoc nnan nsz arcp contract afn float %i.be, 3.906250e-03
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %.127
  store float %i.bf, ptr %i.bg, align 8, !tbaa !101
  %i.bh = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bi = sitofp reassoc nsz arcp contract afn i16 %i.bh to float
  %i.bj = fmul reassoc nnan nsz arcp contract afn float %i.bi, 3.906250e-03
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %.128
  store float %i.bj, ptr %i.bk, align 4, !tbaa !101
  %i.bl = load i16, ptr %i.ax, align 2, !tbaa !99
  %.not63.1 = icmp eq i16 %i.bl, 0                ; 3 uses
  %.sink = select i1 %.not63.1, i64 153300, i64 153348
  %.sink123 = select i1 %.not63.1, i64 153304, i64 153352
  %.sink120 = select i1 %.not63.1, i64 153308, i64 153356
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %i.bn = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bo = sitofp reassoc nsz arcp contract afn i16 %i.bn to float
  %i.bp = fmul reassoc nnan nsz arcp contract afn float %i.bo, 3.906250e-03
  store float %i.bp, ptr %i.bm, align 4, !tbaa !101
  %i.bq = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.br = sitofp reassoc nsz arcp contract afn i16 %i.bq to float
  %i.bs = fmul reassoc nnan nsz arcp contract afn float %i.br, 3.906250e-03
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %.sink123
  store float %i.bs, ptr %i.bt, align 8, !tbaa !101
  %i.bu = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bv = sitofp reassoc nsz arcp contract afn i16 %i.bu to float
  %i.bw = fmul reassoc nnan nsz arcp contract afn float %i.bv, 3.906250e-03
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink120
  store float %i.bw, ptr %i.bx, align 4, !tbaa !101
  %i.by = load i16, ptr %i.ax, align 2, !tbaa !99
  %.not63.2 = icmp eq i16 %i.by, 0
  %i.bz = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ca = sitofp reassoc nsz arcp contract afn i16 %i.bz to float
  %i.cb = fmul reassoc nnan nsz arcp contract afn float %i.ca, 3.906250e-03 ; 2 uses
  br i1 %.not63.2, label %.preheader.2, label %.preheader80.2

.preheader80.2:                                   ; preds = %.preheader82
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 153364
  store float %i.cb, ptr %i.cc, align 4, !tbaa !101
  %i.cd = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ce = sitofp reassoc nsz arcp contract afn i16 %i.cd to float
  %i.cf = fmul reassoc nnan nsz arcp contract afn float %i.ce, 3.906250e-03
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 153368
  store float %i.cf, ptr %i.cg, align 8, !tbaa !101
  %i.ch = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ci = sitofp reassoc nsz arcp contract afn i16 %i.ch to float
  %i.cj = fmul reassoc nnan nsz arcp contract afn float %i.ci, 3.906250e-03
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 153372
  store float %i.cj, ptr %i.ck, align 4, !tbaa !101
  br label %.thread78

.preheader.2:                                     ; preds = %.preheader82
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 153316
  store float %i.cb, ptr %i.cl, align 4, !tbaa !101
  %i.cm = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.cn = sitofp reassoc nsz arcp contract afn i16 %i.cm to float
  %i.co = fmul reassoc nnan nsz arcp contract afn float %i.cn, 3.906250e-03
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 153320
  store float %i.co, ptr %i.cp, align 8, !tbaa !101
  %i.cq = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.cr = sitofp reassoc nsz arcp contract afn i16 %i.cq to float
  %i.cs = fmul reassoc nnan nsz arcp contract afn float %i.cr, 3.906250e-03
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 153324
  store float %i.cs, ptr %i.ct, align 4, !tbaa !101
  br label %.thread78

bb.p:                                             ; preds = %bb.o
  %i.cu = icmp eq i32 %1, 1536
  %or.cond7 = and i1 %i.cu, %i.aw
  br i1 %or.cond7, label %.preheader83, label %bb.q

.preheader83:                                     ; preds = %bb.p
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 136672
  %i.cw = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.cx = zext i16 %i.cw to i32
  store i32 %i.cx, ptr %i.cv, align 8, !tbaa !98
  %i.cy = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.cz = zext i16 %i.cy to i32
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 136676
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !98
  %i.db = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.dc = zext i16 %i.db to i32
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 136684
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !98
  %i.de = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.df = zext i16 %i.de to i32
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 136680
  store i32 %i.df, ptr %i.dg, align 8, !tbaa !98
  br label %.thread78

bb.q:                                             ; preds = %bb.p
  %i.dh = icmp eq i32 %1, 1554
  %or.cond9 = and i1 %i.dh, %i.aw
  br i1 %or.cond9, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.di = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 182
  store i16 %i.di, ptr %i.dj, align 2, !tbaa !107
  br label %.thread78

bb.s:                                             ; preds = %bb.q
  %i.dk = icmp eq i32 %1, 1555
  %or.cond11 = and i1 %i.dk, %i.aw
  br i1 %or.cond11, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dl = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i16 %i.dl, ptr %i.dm, align 8, !tbaa !108
  br label %.thread78

bb.u:                                             ; preds = %bb.s
  %i.dn = icmp eq i32 %1, 1556
  %or.cond13 = and i1 %i.dn, %i.aw
  br i1 %or.cond13, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.do = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 %i.do, ptr %i.dp, align 2, !tbaa !109
  br label %.thread78

bb.w:                                             ; preds = %bb.u
  %i.dq = icmp eq i32 %1, 1557
  %or.cond15 = and i1 %i.dq, %i.aw
  br i1 %or.cond15, label %bb.x, label %.thread78

bb.x:                                             ; preds = %bb.w
  %i.dr = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 %i.dr, ptr %i.ds, align 4, !tbaa !110
  br label %.thread78

.thread78:                                        ; preds = %vector.body, %.preheader80.2, %.preheader.2, %.preheader83, %bb.e, %_ZNK21libraw_static_table_tixEj.exit68, %bb.t, %bb.w, %bb.x, %bb.v, %bb.r, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw22parseOlympusMakernotesExjjjj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = and i32 %2, -65536
  switch i32 %i.a, label %bb.f [
    i32 537919488, label %bb.b
    i32 538968064, label %bb.c
    i32 541065216, label %bb.d
    i32 805306368, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %2, 65535
  tail call void @_ZN6LibRaw22parseOlympus_EquipmentEjjjj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.b, i32 poison, i32 noundef %4, i32 noundef %5)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.c = and i32 %2, 65535
  tail call void @_ZN6LibRaw27parseOlympus_CameraSettingsExjjjj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %1, i32 noundef %i.c, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.d = and i32 %2, 65535
  tail call void @_ZN6LibRaw28parseOlympus_ImageProcessingEjjjj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.d, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.e = and i32 %2, 65535
  tail call void @_ZN6LibRaw20parseOlympus_RawInfoEjjjj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.e, i32 poison, i32 noundef %4, i32 noundef %5)
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  switch i32 %2, label %.loopexit [
    i32 512, label %.preheader
    i32 519, label %bb.g
    i32 1028, label %bb.h
    i32 4122, label %bb.h
    i32 4098, label %bb.j
    i32 4103, label %bb.k
    i32 4104, label %bb.l
    i32 4107, label %bb.m
    i32 4109, label %bb.p
    i32 4110, label %bb.r
    i32 4113, label %bb.t
    i32 4114, label %bb.u
    i32 4119, label %bb.v
    i32 4120, label %bb.x
    i32 4140, label %bb.z
    i32 4152, label %bb.ab
    i32 4155, label %bb.ac
    i32 4156, label %bb.ae
    i32 540016904, label %bb.ag
    i32 540082441, label %bb.ag
    i32 542114313, label %bb.ah
    i32 542114560, label %bb.ai
    i32 542114561, label %bb.aj
    i32 542114563, label %bb.ak
    i32 542114564, label %bb.al
    i32 542114565, label %bb.am
    i32 542114568, label %bb.ap
    i32 542119168, label %bb.aq
  ]

.preheader:                                       ; preds = %bb.f
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3540
  %i.g = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.h = icmp ugt i32 %i.g, 254
  %spec.select = select i1 %i.h, i32 -1, i32 %i.g
  store i32 %spec.select, ptr %i.f, align 4, !tbaa !98
  %i.i = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3544
  %i.k = icmp ugt i32 %i.i, 254
  %spec.select.1 = select i1 %i.k, i32 -1, i32 %i.i
  store i32 %spec.select.1, ptr %i.j, align 8, !tbaa !98
  %i.l = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3548
  %i.n = icmp ugt i32 %i.l, 254
  %spec.select.2 = select i1 %i.n, i32 -1, i32 %i.l
  store i32 %spec.select.2, ptr %i.m, align 4, !tbaa !98
  br label %.loopexit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN6LibRaw22getOlympus_CameraType2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  br label %.loopexit

bb.h:                                             ; preds = %bb.f, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5110 ; 2 uses
  %i.p = load i8, ptr %i.o, align 2, !tbaa !92
  %i.q = icmp eq i8 %i.p, 0
  %i.r = icmp eq i32 %5, 0
  %or.cond9 = and i1 %i.r, %i.q
  br i1 %or.cond9, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.s = tail call i32 @llvm.umin.i32(i32 %4, i32 64)
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !79
  %i.w = tail call noundef i32 @_ZN6LibRaw6streadEPcmP26LibRaw_abstract_datastream(ptr noundef nonnull %i.o, i64 noundef %i.t, ptr noundef %i.v) ; 0 uses
  br label %.loopexit

bb.j:                                             ; preds = %bb.f
  %i.x = tail call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %3)
  %i.y = fptrunc reassoc nsz arcp contract afn double %i.x to float
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, 5.000000e-01 ; 2 uses
  %i.aa = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.z)
  %or.cond.i.i = fcmp reassoc nsz arcp contract afn ogt float %i.aa, 6.400000e+01
  %exp2 = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.z)
  %i.ab = select reassoc nsz arcp contract afn i1 %or.cond.i.i, float 0.000000e+00, float %exp2
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1492
  store float %i.ab, ptr %i.ac, align 4, !tbaa !155
  br label %.loopexit

bb.k:                                             ; preds = %bb.f
  %i.ad = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ae = uitofp reassoc nsz arcp contract afn i16 %i.ad to float
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4804
  store float %i.ae, ptr %i.af, align 4, !tbaa !93
  br label %.loopexit

bb.l:                                             ; preds = %bb.f
  %i.ag = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ah = uitofp reassoc nsz arcp contract afn i16 %i.ag to float
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4812
  store float %i.ah, ptr %i.ai, align 4, !tbaa !156
  br label %.loopexit

bb.m:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 3220 ; 3 uses
  %i.ak = load i16, ptr %i.aj, align 4, !tbaa !77
  %i.al = icmp eq i16 %i.ak, -1
  br i1 %i.al, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.am = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 3 uses
  store i16 %i.am, ptr %i.aj, align 4, !tbaa !77
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 5098 ; 2 uses
  store i16 %i.am, ptr %i.an, align 2, !tbaa !97
  %i.ao = icmp eq i16 %i.am, 1
  br i1 %i.ao, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  store i16 10, ptr %i.aj, align 4, !tbaa !77
  store i16 10, ptr %i.an, align 2, !tbaa !97
  br label %.loopexit

bb.p:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 3552 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 8, !tbaa !157
  %i.ar = icmp eq i16 %i.aq, -1
  br i1 %i.ar, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.as = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i16 %i.as, ptr %i.ap, align 8, !tbaa !157
  br label %.loopexit

bb.r:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 3554 ; 2 uses
  %i.au = load i16, ptr %i.at, align 2, !tbaa !158
  %i.av = icmp eq i16 %i.au, -1
  br i1 %i.av, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.aw = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i16 %i.aw, ptr %i.at, align 2, !tbaa !158
  br label %.loopexit

bb.t:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.ay = load i64, ptr %i.ax, align 1
  %i.az = icmp ne i64 %i.ay, 13852941198112630    ; 2 uses
  %i.ba = zext i1 %i.az to i32                    ; 0 uses
  %i.bb = icmp eq i32 %5, 0
  %or.cond11 = and i1 %i.bb, %i.az
  br i1 %or.cond11, label %.preheader76, label %.loopexit

.preheader76:                                     ; preds = %bb.t
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 3218 ; 3 uses
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !99
  %.not = icmp eq i16 %i.bd, 0                    ; 3 uses
  %i.be = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bf = sitofp reassoc nsz arcp contract afn i16 %i.be to float
  %i.bg = fmul reassoc nnan nsz arcp contract afn float %i.bf, 3.906250e-03
  %. = select i1 %.not, i64 153284, i64 153332
  %.108 = select i1 %.not, i64 153288, i64 153336
  %.109 = select i1 %.not, i64 153292, i64 153340
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %.
  store float %i.bg, ptr %i.bh, align 4, !tbaa !101
  %i.bi = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bj = sitofp reassoc nsz arcp contract afn i16 %i.bi to float
  %i.bk = fmul reassoc nnan nsz arcp contract afn float %i.bj, 3.906250e-03
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 %.108
  store float %i.bk, ptr %i.bl, align 8, !tbaa !101
  %i.bm = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bn = sitofp reassoc nsz arcp contract afn i16 %i.bm to float
  %i.bo = fmul reassoc nnan nsz arcp contract afn float %i.bn, 3.906250e-03
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %.109
  store float %i.bo, ptr %i.bp, align 4, !tbaa !101
  %i.bq = load i16, ptr %i.bc, align 2, !tbaa !99
  %.not.1 = icmp eq i16 %i.bq, 0                  ; 3 uses
  %.sink = select i1 %.not.1, i64 153300, i64 153348
  %.sink103 = select i1 %.not.1, i64 153304, i64 153352
  %.sink100 = select i1 %.not.1, i64 153308, i64 153356
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %i.bs = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bt = sitofp reassoc nsz arcp contract afn i16 %i.bs to float
  %i.bu = fmul reassoc nnan nsz arcp contract afn float %i.bt, 3.906250e-03
  store float %i.bu, ptr %i.br, align 4, !tbaa !101
  %i.bv = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bw = sitofp reassoc nsz arcp contract afn i16 %i.bv to float
  %i.bx = fmul reassoc nnan nsz arcp contract afn float %i.bw, 3.906250e-03
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %.sink103
  store float %i.bx, ptr %i.by, align 8, !tbaa !101
  %i.bz = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ca = sitofp reassoc nsz arcp contract afn i16 %i.bz to float
  %i.cb = fmul reassoc nnan nsz arcp contract afn float %i.ca, 3.906250e-03
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 %.sink100
  store float %i.cb, ptr %i.cc, align 4, !tbaa !101
  %i.cd = load i16, ptr %i.bc, align 2, !tbaa !99
  %.not.2 = icmp eq i16 %i.cd, 0
  %i.ce = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.cf = sitofp reassoc nsz arcp contract afn i16 %i.ce to float
  %i.cg = fmul reassoc nnan nsz arcp contract afn float %i.cf, 3.906250e-03 ; 2 uses
  br i1 %.not.2, label %.preheader72.2, label %.preheader74.2

.preheader74.2:                                   ; preds = %.preheader76
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 153364
  store float %i.cg, ptr %i.ch, align 4, !tbaa !101
  %i.ci = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.cj = sitofp reassoc nsz arcp contract afn i16 %i.ci to float
  %i.ck = fmul reassoc nnan nsz arcp contract afn float %i.cj, 3.906250e-03
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 153368
  store float %i.ck, ptr %i.cl, align 8, !tbaa !101
  %i.cm = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.cn = sitofp reassoc nsz arcp contract afn i16 %i.cm to float
  %i.co = fmul reassoc nnan nsz arcp contract afn float %i.cn, 3.906250e-03
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 153372
  store float %i.co, ptr %i.cp, align 4, !tbaa !101
  br label %.loopexit

.preheader72.2:                                   ; preds = %.preheader76
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 153316
  store float %i.cg, ptr %i.cq, align 4, !tbaa !101
  %i.cr = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.cs = sitofp reassoc nsz arcp contract afn i16 %i.cr to float
  %i.ct = fmul reassoc nnan nsz arcp contract afn float %i.cs, 3.906250e-03
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 153320
  store float %i.ct, ptr %i.cu, align 8, !tbaa !101
  %i.cv = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.cw = sitofp reassoc nsz arcp contract afn i16 %i.cv to float
  %i.cx = fmul reassoc nnan nsz arcp contract afn float %i.cw, 3.906250e-03
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 153324
  store float %i.cx, ptr %i.cy, align 4, !tbaa !101
  br label %.loopexit

bb.u:                                             ; preds = %bb.f
  %i.cz = icmp eq i32 %5, 0
  br i1 %i.cz, label %.preheader78, label %.loopexit

.preheader78:                                     ; preds = %bb.u
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 136672
  %i.db = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.dc = zext i16 %i.db to i32
  store i32 %i.dc, ptr %i.da, align 8, !tbaa !98
  %i.dd = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.de = zext i16 %i.dd to i32
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 136676
  store i32 %i.de, ptr %i.df, align 4, !tbaa !98
  %i.dg = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.dh = zext i16 %i.dg to i32
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 136684
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !98
  %i.dj = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.dk = zext i16 %i.dj to i32
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 136680
  store i32 %i.dk, ptr %i.dl, align 8, !tbaa !98
  br label %.loopexit

bb.v:                                             ; preds = %bb.f
  %i.dm = icmp eq i32 %5, 0
  br i1 %i.dm, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %bb.v
  %i.dn = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.do = uitofp reassoc nsz arcp contract afn i16 %i.dn to float
  %i.dp = fmul reassoc nnan nsz arcp contract afn float %i.do, 3.906250e-03
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 153252
  store float %i.dp, ptr %i.dq, align 4, !tbaa !101
  br label %.loopexit

bb.x:                                             ; preds = %bb.f
  %i.dr = icmp eq i32 %5, 0
  br i1 %i.dr, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x
  %i.ds = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.dt = uitofp reassoc nsz arcp contract afn i16 %i.ds to float
  %i.du = fmul reassoc nnan nsz arcp contract afn float %i.dt, 3.906250e-03
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 153260
  store float %i.du, ptr %i.dv, align 4, !tbaa !101
  br label %.loopexit

bb.z:                                             ; preds = %bb.f
  %i.dw = icmp eq i32 %5, 0
  br i1 %i.dw, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.dx = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 3142
  store i16 %i.dx, ptr %i.dy, align 2, !tbaa !105
  br label %.loopexit

bb.ab:                                            ; preds = %bb.f
  %i.dz = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 3528
  store i16 %i.dz, ptr %i.ea, align 8, !tbaa !159
  br label %.loopexit

bb.ac:                                            ; preds = %bb.f
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 3556 ; 2 uses
  %i.ec = load i16, ptr %i.eb, align 4, !tbaa !160
  %i.ed = icmp eq i16 %i.ec, -1
  br i1 %i.ed, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.ee = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i16 %i.ee, ptr %i.eb, align 4, !tbaa !160
  br label %.loopexit

bb.ae:                                            ; preds = %bb.f
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 3558 ; 2 uses
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !161
  %i.eh = icmp eq i16 %i.eg, -1
  br i1 %i.eh, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %bb.ae
  %i.ei = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i16 %i.ei, ptr %i.ef, align 2, !tbaa !161
  br label %.loopexit

bb.ag:                                            ; preds = %bb.f, %bb.f
  %i.ej = icmp eq i32 %5, 0
  br i1 %i.ej, label %.sink.split, label %bb.ah

.sink.split:                                      ; preds = %bb.ag
  %i.ek = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 3218
  store i16 %i.ek, ptr %i.el, align 2, !tbaa !99
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 4856
  %i.en = icmp ult i16 %i.ek, 3
  %switch.cast = zext i16 %i.ek to i48
  %switch.shiftamt = shl nuw nsw i48 %switch.cast, 4
  %switch.downshift = lshr i48 17180000257, %switch.shiftamt
  %switch.masked = trunc i48 %switch.downshift to i16
  %.sink107 = select i1 %i.en, i16 %switch.masked, i16 255
  store i16 %.sink107, ptr %i.em, align 8, !tbaa !100
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split, %bb.ag, %bb.f
  %i.eo = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 3224
  store i16 %i.eo, ptr %i.ep, align 8, !tbaa !162
  br label %.loopexit

bb.ai:                                            ; preds = %bb.f
  %i.eq = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 3552
  store i16 %i.eq, ptr %i.er, align 8, !tbaa !157
  br label %.loopexit

bb.aj:                                            ; preds = %bb.f
  %i.es = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 3554
  store i16 %i.es, ptr %i.et, align 2, !tbaa !158
  br label %.loopexit

bb.ak:                                            ; preds = %bb.f
  %i.eu = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 3556
  store i16 %i.eu, ptr %i.ev, align 4, !tbaa !160
  br label %.loopexit

bb.al:                                            ; preds = %bb.f
  %i.ew = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 3558
  store i16 %i.ew, ptr %i.ex, align 2, !tbaa !161
  br label %.loopexit

bb.am:                                            ; preds = %bb.f
  %i.ey = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.ez = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.fa = icmp ugt i32 %i.ey, 2130706431
  br i1 %i.fa, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 3560
  store double -1.000000e+00, ptr %i.fb, align 8, !tbaa !163
  br label %.loopexit

bb.ao:                                            ; preds = %bb.am
  %i.fc = uitofp reassoc nsz arcp contract afn nneg i32 %i.ey to double
  %i.fd = fmul reassoc nnan nsz arcp contract afn double %i.fc, 1.000000e-03
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 3560
  store double %i.fd, ptr %i.fe, align 8, !tbaa !163
  br label %.loopexit

bb.ap:                                            ; preds = %bb.f
  %i.ff = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 3226
  store i16 %i.ff, ptr %i.fg, align 2, !tbaa !164
  br label %.loopexit

bb.aq:                                            ; preds = %bb.f
  tail call void @_ZN6LibRaw28getOlympus_SensorTemperatureEj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %4)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader74.2, %.preheader72.2, %.preheader78, %.preheader, %bb.c, %bb.e, %bb.an, %bb.ao, %bb.ae, %bb.af, %bb.ac, %bb.ad, %bb.z, %bb.aa, %bb.x, %bb.y, %bb.v, %bb.w, %bb.u, %bb.t, %bb.r, %bb.s, %bb.p, %bb.q, %bb.m, %bb.o, %bb.n, %bb.h, %bb.i, %bb.aq, %bb.ap, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ab, %bb.l, %bb.k, %bb.j, %bb.g, %bb.f, %bb.d, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8i32.v8p0(<8 x i32>, <8 x ptr>, <8 x i1>) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "LibRaw_abstract_datastream", file: !82, line: 95, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS26LibRaw_abstract_datastream")
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 short", !12, i64 0}
!14 = !{!"short", !8, i64 0}
!15 = !{!"double", !8, i64 0}
!16 = !{!"_ZTS20libraw_image_sizes_t", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6, !14, i64 8, !14, i64 10, !14, i64 12, !14, i64 14, !9, i64 16, !15, i64 24, !9, i64 32, !8, i64 36, !14, i64 164, !8, i64 166}
!17 = !{!"p1 omnipotent char", !12, i64 0}
!18 = !{!"_ZTS16libraw_iparams_t", !8, i64 0, !8, i64 4, !8, i64 68, !8, i64 132, !8, i64 196, !8, i64 260, !9, i64 324, !9, i64 328, !9, i64 332, !9, i64 336, !9, i64 340, !9, i64 344, !8, i64 348, !8, i64 384, !8, i64 420, !9, i64 428, !17, i64 432}
!19 = !{!"float", !8, i64 0}
!20 = !{!"_ZTS18libraw_nikonlens_t", !19, i64 0, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7}
!21 = !{!"_ZTS16libraw_dnglens_t", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12}
!22 = !{!"long long", !8, i64 0}
!23 = !{!"_ZTS24libraw_makernotes_lens_t", !22, i64 0, !8, i64 8, !14, i64 136, !14, i64 138, !22, i64 144, !14, i64 152, !14, i64 154, !8, i64 156, !14, i64 220, !8, i64 222, !8, i64 238, !19, i64 256, !19, i64 260, !19, i64 264, !19, i64 268, !19, i64 272, !19, i64 276, !19, i64 280, !19, i64 284, !19, i64 288, !19, i64 292, !19, i64 296, !19, i64 300, !19, i64 304, !19, i64 308, !19, i64 312, !22, i64 320, !8, i64 328, !22, i64 456, !8, i64 464, !22, i64 592, !8, i64 600, !14, i64 728, !19, i64 732}
!24 = !{!"_ZTS17libraw_lensinfo_t", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !8, i64 20, !8, i64 148, !8, i64 276, !8, i64 404, !14, i64 532, !20, i64 536, !21, i64 544, !23, i64 560}
!25 = !{!"_ZTS13libraw_area_t", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6}
!26 = !{!"_ZTS25libraw_canon_makernotes_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !8, i64 16, !9, i64 32, !8, i64 36, !14, i64 52, !14, i64 54, !8, i64 56, !14, i64 58, !14, i64 60, !14, i64 62, !14, i64 64, !14, i64 66, !14, i64 68, !14, i64 70, !14, i64 72, !14, i64 74, !14, i64 76, !14, i64 78, !14, i64 80, !14, i64 82, !9, i64 84, !19, i64 88, !14, i64 92, !14, i64 94, !14, i64 96, !14, i64 98, !9, i64 100, !14, i64 104, !9, i64 108, !9, i64 112, !14, i64 116, !9, i64 120, !25, i64 124, !25, i64 132, !25, i64 140, !25, i64 148, !25, i64 156, !8, i64 164}
!27 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6}
!28 = !{!"_ZTS25libraw_nikon_makernotes_t", !15, i64 0, !14, i64 8, !14, i64 10, !8, i64 12, !8, i64 19, !8, i64 20, !8, i64 21, !8, i64 34, !8, i64 54, !8, i64 58, !8, i64 62, !8, i64 66, !8, i64 67, !8, i64 68, !8, i64 69, !8, i64 70, !8, i64 71, !8, i64 73, !8, i64 74, !8, i64 75, !8, i64 76, !8, i64 77, !8, i64 78, !8, i64 82, !8, i64 86, !14, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !8, i64 112, !8, i64 144, !8, i64 145, !8, i64 146, !9, i64 148, !9, i64 152, !9, i64 156, !8, i64 160, !8, i64 162, !14, i64 170, !27, i64 172, !14, i64 180, !14, i64 182, !14, i64 184, !9, i64 188, !8, i64 192, !8, i64 212, !9, i64 232, !8, i64 236, !9, i64 248, !17, i64 256, !14, i64 264, !14, i64 266, !8, i64 268, !14, i64 270, !15, i64 272, !15, i64 280, !15, i64 288}
!29 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !9, i64 0, !15, i64 8, !8, i64 16, !8, i64 24, !8, i64 88, !9, i64 152, !9, i64 156, !9, i64 160, !9, i64 164, !8, i64 168, !8, i64 200, !9, i64 264, !8, i64 268, !8, i64 276, !8, i64 288}
!30 = !{!"_ZTS18libraw_fuji_info_t", !19, i64 0, !14, i64 4, !14, i64 6, !14, i64 8, !14, i64 10, !14, i64 12, !14, i64 14, !14, i64 16, !14, i64 18, !8, i64 20, !8, i64 53, !19, i64 88, !14, i64 92, !14, i64 94, !8, i64 96, !14, i64 100, !9, i64 104, !9, i64 108, !14, i64 112, !8, i64 114, !14, i64 120, !14, i64 122, !14, i64 124, !14, i64 126, !14, i64 128, !9, i64 132, !14, i64 136, !8, i64 138, !8, i64 151, !8, i64 156, !9, i64 164, !14, i64 168, !9, i64 172, !14, i64 176, !8, i64 178, !8, i64 196, !9, i64 324, !9, i64 328, !9, i64 332, !8, i64 336, !9, i64 344}
!31 = !{!"_ZTS27libraw_olympus_makernotes_t", !8, i64 0, !14, i64 6, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !8, i64 64, !8, i64 72, !14, i64 82, !8, i64 84, !14, i64 88, !14, i64 90, !8, i64 92, !8, i64 352, !14, i64 392, !8, i64 394, !8, i64 396, !8, i64 404, !14, i64 416, !14, i64 418, !14, i64 420, !14, i64 422, !15, i64 424, !8, i64 432, !8, i64 440, !8, i64 448, !9, i64 452, !14, i64 456, !14, i64 458}
!32 = !{!"_ZTS18libraw_sony_info_t", !14, i64 0, !8, i64 2, !8, i64 3, !9, i64 4, !8, i64 8, !9, i64 12, !8, i64 16, !8, i64 17, !14, i64 18, !8, i64 20, !8, i64 24, !8, i64 25, !14, i64 26, !8, i64 28, !8, i64 38, !8, i64 39, !8, i64 40, !14, i64 48, !8, i64 50, !8, i64 51, !8, i64 52, !14, i64 54, !9, i64 56, !14, i64 60, !8, i64 62, !14, i64 66, !14, i64 68, !14, i64 70, !14, i64 72, !14, i64 74, !14, i64 76, !14, i64 78, !9, i64 80, !19, i64 84, !14, i64 88, !9, i64 92, !9, i64 96, !14, i64 100, !8, i64 102, !9, i64 124, !14, i64 128, !9, i64 132, !8, i64 136, !8, i64 137, !14, i64 138, !14, i64 140, !14, i64 142, !14, i64 144, !14, i64 146, !14, i64 148, !14, i64 150, !14, i64 152, !14, i64 154, !9, i64 156, !14, i64 160, !8, i64 162, !19, i64 180}
!33 = !{!"_ZTS25libraw_kodak_makernotes_t", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6, !14, i64 8, !14, i64 10, !8, i64 12, !8, i64 48, !8, i64 84, !8, i64 120, !8, i64 156, !8, i64 192, !14, i64 228, !14, i64 230, !14, i64 232, !14, i64 234, !19, i64 236, !19, i64 240}
!34 = !{!"_ZTS29libraw_panasonic_makernotes_t", !14, i64 0, !14, i64 2, !8, i64 4, !9, i64 36, !19, i64 40, !8, i64 44, !14, i64 56, !14, i64 58, !9, i64 60, !9, i64 64}
!35 = !{!"_ZTS26libraw_pentax_makernotes_t", !8, i64 0, !8, i64 4, !8, i64 8, !14, i64 12, !9, i64 16, !9, i64 20, !14, i64 24, !8, i64 26, !14, i64 30, !8, i64 32, !8, i64 33, !14, i64 34}
!36 = !{!"_ZTS22libraw_p1_makernotes_t", !8, i64 0, !8, i64 64, !8, i64 128, !8, i64 384}
!37 = !{!"_ZTS25libraw_ricoh_makernotes_t", !14, i64 0, !8, i64 4, !8, i64 12, !14, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !14, i64 40, !14, i64 42, !14, i64 44, !14, i64 46, !14, i64 48, !14, i64 50, !15, i64 56, !15, i64 64}
!38 = !{!"_ZTS27libraw_samsung_makernotes_t", !8, i64 0, !8, i64 16, !8, i64 32, !8, i64 40, !15, i64 88, !9, i64 96, !8, i64 100}
!39 = !{!"_ZTS24libraw_metadata_common_t", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20, !19, i64 24, !19, i64 28, !19, i64 32, !19, i64 36, !19, i64 40, !19, i64 44, !19, i64 48, !19, i64 52, !19, i64 56, !19, i64 60, !14, i64 64, !8, i64 66, !19, i64 196, !8, i64 200, !9, i64 296}
!40 = !{!"_ZTS19libraw_makernotes_t", !26, i64 0, !28, i64 168, !29, i64 464, !30, i64 848, !31, i64 1200, !32, i64 1664, !33, i64 1848, !34, i64 2092, !35, i64 2160, !36, i64 2196, !37, i64 2648, !38, i64 2720, !39, i64 2856}
!41 = !{!"_ZTS21libraw_shootinginfo_t", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6, !14, i64 8, !14, i64 10, !14, i64 12, !8, i64 14, !8, i64 78}
!42 = !{!"_ZTS22libraw_output_params_t", !8, i64 0, !8, i64 16, !8, i64 32, !8, i64 64, !8, i64 112, !19, i64 128, !19, i64 132, !9, i64 136, !9, i64 140, !9, i64 144, !9, i64 148, !9, i64 152, !9, i64 156, !9, i64 160, !17, i64 168, !17, i64 176, !17, i64 184, !17, i64 192, !9, i64 200, !9, i64 204, !9, i64 208, !9, i64 212, !9, i64 216, !9, i64 220, !8, i64 224, !9, i64 240, !9, i64 244, !19, i64 248, !19, i64 252, !9, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !9, i64 272, !9, i64 276, !9, i64 280, !9, i64 284, !19, i64 288, !19, i64 292, !9, i64 296, !9, i64 300}
!43 = !{!"any p2 pointer", !12, i64 0}
!44 = !{!"p2 omnipotent char", !43, i64 0}
!45 = !{!"_ZTS26libraw_raw_unpack_params_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !19, i64 28, !8, i64 32, !44, i64 40}
!46 = !{!"_ZTS5ph1_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !19, i64 32}
!47 = !{!"_ZTS19libraw_dng_levels_t", !9, i64 0, !8, i64 4, !9, i64 16420, !8, i64 16424, !19, i64 32840, !8, i64 32844, !8, i64 32860, !8, i64 32868, !9, i64 32884, !8, i64 32888, !8, i64 32904, !19, i64 32920, !19, i64 32924, !8, i64 32928}
!48 = !{!"_ZTS18libraw_colordata_t", !8, i64 0, !8, i64 131072, !9, i64 147488, !9, i64 147492, !9, i64 147496, !8, i64 147500, !19, i64 147516, !19, i64 147520, !8, i64 147524, !8, i64 147652, !8, i64 147668, !8, i64 147684, !8, i64 147732, !8, i64 147780, !8, i64 147828, !46, i64 147876, !19, i64 147912, !19, i64 147916, !8, i64 147920, !8, i64 147984, !8, i64 148048, !8, i64 148112, !8, i64 148176, !8, i64 148193, !12, i64 148264, !9, i64 148272, !8, i64 148276, !8, i64 148308, !47, i64 148648, !8, i64 181624, !8, i64 185720, !9, i64 187000, !8, i64 187004, !9, i64 187076, !9, i64 187080}
!49 = !{!"long", !8, i64 0}
!50 = !{!"_ZTS17libraw_gps_info_t", !8, i64 0, !8, i64 12, !8, i64 24, !19, i64 36, !8, i64 40, !8, i64 41, !8, i64 42, !8, i64 43, !8, i64 44}
!51 = !{!"_ZTS17libraw_imgother_t", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !49, i64 16, !9, i64 24, !8, i64 28, !50, i64 156, !8, i64 204, !8, i64 716, !8, i64 780}
!52 = !{!"_ZTS24LibRaw_thumbnail_formats", !8, i64 0}
!53 = !{!"_ZTS18libraw_thumbnail_t", !52, i64 0, !14, i64 4, !14, i64 6, !9, i64 8, !9, i64 12, !17, i64 16}
!54 = !{!"_ZTS23libraw_thumbnail_list_t", !9, i64 0, !8, i64 8}
!55 = !{!"p1 float", !12, i64 0}
!56 = !{!"_ZTS31libraw_internal_output_params_t", !9, i64 0, !9, i64 4, !9, i64 8, !14, i64 12, !14, i64 14}
!57 = !{!"_ZTS16libraw_rawdata_t", !12, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !13, i64 56, !13, i64 64, !18, i64 72, !16, i64 512, !56, i64 696, !48, i64 712}
!58 = !{!"_ZTS13libraw_data_t", !13, i64 0, !16, i64 8, !18, i64 192, !24, i64 632, !40, i64 1928, !41, i64 5088, !42, i64 5232, !45, i64 5536, !9, i64 5584, !9, i64 5588, !48, i64 5592, !51, i64 192680, !53, i64 193480, !54, i64 193504, !57, i64 193768, !12, i64 381568}
!59 = !{!"p1 _ZTS10LibRaw_TLS", !12, i64 0}
!60 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !12, i64 0}
!61 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!62 = !{!"_ZTS15internal_data_t", !60, i64 0, !61, i64 8, !9, i64 16, !17, i64 24, !22, i64 32, !22, i64 40, !8, i64 48}
!63 = !{!"p1 int", !12, i64 0}
!64 = !{!"_ZTS13output_data_t", !63, i64 0, !63, i64 8}
!65 = !{!"_ZTS15identify_data_t", !9, i64 0, !22, i64 8, !22, i64 16, !9, i64 24, !9, i64 28, !9, i64 32}
!66 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !8, i64 0}
!67 = !{!"_ZTS12pana8_tags_t", !8, i64 0, !8, i64 24, !14, i64 36, !8, i64 38, !8, i64 46, !8, i64 80, !8, i64 114, !14, i64 148, !14, i64 150, !8, i64 152, !8, i64 192, !8, i64 204, !8, i64 224, !8, i64 234}
!68 = !{!"_ZTS15unpacker_data_t", !14, i64 0, !8, i64 2, !8, i64 10, !9, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !22, i64 48, !22, i64 56, !22, i64 64, !22, i64 72, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !66, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !9, i64 128, !9, i64 132, !9, i64 136, !9, i64 140, !22, i64 144, !9, i64 152, !9, i64 156, !9, i64 160, !9, i64 164, !9, i64 168, !9, i64 172, !9, i64 176, !9, i64 180, !9, i64 184, !67, i64 192, !8, i64 440, !9, i64 2488, !9, i64 2492, !14, i64 2496, !14, i64 2498, !9, i64 2500, !9, i64 2504, !9, i64 2508, !9, i64 2512, !9, i64 2516, !9, i64 2520, !9, i64 2524, !8, i64 2528, !14, i64 2608}
!69 = !{!"_ZTS22libraw_internal_data_t", !62, i64 0, !56, i64 64, !64, i64 80, !65, i64 96, !68, i64 136}
!70 = !{!"p1 _ZTS6decode", !12, i64 0}
!71 = !{!"_ZTS13libraw_memmgr", !43, i64 0, !9, i64 8}
!72 = !{!"_ZTS18libraw_callbacks_t", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144}
!73 = !{!"_ZTS6LibRaw", !58, i64 8, !59, i64 381584, !69, i64 381592, !8, i64 384344, !70, i64 433496, !70, i64 433504, !8, i64 433512, !71, i64 768232, !72, i64 768248, !8, i64 768400, !8, i64 768416, !8, i64 768432, !12, i64 768448, !12, i64 768456, !12, i64 768464, !49, i64 768472, !12, i64 768480, !12, i64 768488, !12, i64 768496, !12, i64 768504}
!74 = !{!73, !22, i64 1344}
!75 = !{!73, !14, i64 1352}
!76 = !{!73, !14, i64 1354}
!77 = !{!14, !14, i64 0}
!78 = !{!73, !22, i64 381704}
!79 = !{!73, !60, i64 381592}
!80 = !{!"vtable pointer", !7, i64 0}
!81 = !{!80, !80, i64 0}
!82 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_datastream.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "505b914805f57d87ebbd6647c463dab8")
!83 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !0, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!86 = !DIFile(filename: "/usr/lib/llvm-24/lib/clang/24/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!87 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !86, line: 18, baseType: !87)
!89 = !{!83, !84, !85, !88, !88}
!90 = !DISubroutineType(types: !89)
!91 = !DISubprogram(name: "read", linkageName: "_ZN26LibRaw_abstract_datastream4readEPvmm", scope: !0, file: !82, line: 101, type: !90, scopeLine: 101, containingType: !0, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!92 = !{!8, !8, i64 0}
!93 = !{!73, !19, i64 4804}
!94 = !{!83, !84}
!95 = !DISubroutineType(types: !94)
!96 = !DISubprogram(name: "get_char", linkageName: "_ZN26LibRaw_abstract_datastream8get_charEv", scope: !0, file: !82, line: 105, type: !95, scopeLine: 105, containingType: !0, virtualIndex: 7, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!97 = !{!73, !14, i64 5098}
!98 = !{!9, !9, i64 0}
!99 = !{!73, !14, i64 3218}
!100 = !{!73, !14, i64 4856}
!101 = !{!19, !19, i64 0}
!102 = !{!"_ZTS21libraw_static_table_t", !63, i64 0, !9, i64 8}
!103 = !{!102, !9, i64 8}
!104 = !{!102, !63, i64 0}
!105 = !{!73, !14, i64 3142}
!106 = !{!"_ZTS23libraw_raw_inset_crop_t", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6}
!107 = !{!106, !14, i64 0}
!108 = !{!106, !14, i64 2}
!109 = !{!106, !14, i64 4}
!110 = !{!106, !14, i64 6}
!111 = !{!73, !22, i64 381696}
!112 = !{!73, !22, i64 1200}
!113 = !{!73, !14, i64 1338}
!114 = !{!73, !14, i64 1336}
!115 = !{!73, !19, i64 1464}
!116 = !{!73, !19, i64 1468}
!117 = !{!73, !19, i64 1456}
!118 = !{!73, !19, i64 1460}
!119 = !{!73, !19, i64 1496}
!120 = !{!73, !22, i64 1520}
!121 = distinct !{!121, !128}
!122 = distinct !{!122, !128}
!123 = !{!15, !15, i64 0}
!124 = !{!73, !22, i64 381632}
!125 = !{!73, !9, i64 193496}
!126 = !{!73, !14, i64 5104}
!127 = !{!73, !14, i64 5100}
!128 = !{!"llvm.loop.mustprogress"}
!129 = !{!73, !8, i64 3530}
!130 = !{!73, !19, i64 4792}
!131 = !{!73, !14, i64 5096}
!132 = !{!73, !14, i64 3592}
!133 = !{!73, !14, i64 3594}
!134 = !{!73, !14, i64 5108}
!135 = !{!73, !8, i64 3584}
!136 = !{!73, !9, i64 3588}
!137 = !{!73, !9, i64 3144}
!138 = !{!73, !9, i64 3148}
!139 = !{!73, !9, i64 3152}
!140 = !{!73, !9, i64 3156}
!141 = !{!73, !9, i64 3160}
end_hunk_1
