Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/Driver?download=true
inline.NumInlined: 2295
inline.NumDeleted: 773
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN5video18COpenGL3DriverBase20setBasicRenderStatesERKNS_9SMaterialES3_b:bb.a
  %i.lt = phi i16 [ %.pre176, %.thread154..thread155_crit_edge ], [ %.pre177, %bb.cc ] ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.lv = load i16, ptr %i.lu, align 4
  %i.lw = xor i16 %i.lt, %i.lv
  %i.lx = and i16 %i.lw, 240
  %.not49 = icmp eq i16 %i.lx, 0
  br i1 %.not49, label %bb.ce, label %._crit_edge174

._crit_edge174:                                   ; preds = %bb.cc, %.thread155
  %i.ly = phi i16 [ %i.lt, %.thread155 ], [ %.pre177, %bb.cc ]
  %i.lz = and i16 %i.ly, 64
  %.not50 = icmp eq i16 %i.lz, 0
  br i1 %.not50, label %bb.cd, label %.sink.split

bb.cd:                                            ; preds = %._crit_edge174
  %i.ma = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.mb = load i16, ptr %i.ma, align 4
  %i.mc = and i16 %i.mb, 64
  %.not51 = icmp eq i16 %i.mc, 0
  br i1 %.not51, label %bb.ce, label %.sink.split

.sink.split:                                      ; preds = %bb.cd, %._crit_edge174
  %.sink.in = phi ptr [ getelementptr inbounds nuw (i8, ptr @GL, i64 232), %._crit_edge174 ], [ getelementptr inbounds nuw (i8, ptr @GL, i64 224), %bb.cd ]
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !513
  tail call void %.sink(i32 noundef 32926)
  br label %bb.ce

bb.ce:                                            ; preds = %.sink.split, %bb.cd, %.thread155
  tail call void @_ZN5video18COpenGL3DriverBase22setTextureRenderStatesERKNS_9SMaterialEb(ptr noundef nonnull align 8 dereferenceable(2528) %0, ptr noundef nonnull align 8 dereferenceable(127) %1, i1 noundef zeroext %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE20setBlendFuncSeparateEjjjj(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, %3
  %.not26 = icmp eq i32 %2, %4
  %or.cond = and i1 %.not, %.not26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !220
  %i.c = load i32, ptr %i.b, align 4, !tbaa !192
  %.not.i = icmp eq i32 %i.c, %1                  ; 2 uses
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !221
  %i.f = load i32, ptr %i.e, align 4, !tbaa !192
  %.not28 = icmp eq i32 %i.f, %2
  br i1 %.not28, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !222
  %i.i = load i32, ptr %i.h, align 4, !tbaa !192
  %.not29 = icmp eq i32 %i.i, %3
  br i1 %.not29, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !223
  %i.l = load i32, ptr %i.k, align 4, !tbaa !192
  %.not30 = icmp ne i32 %i.l, %4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.n = load i8, ptr %i.m, align 1, !range !129
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond33 = select i1 %.not30, i1 true, i1 %i.o
  br i1 %or.cond33, label %bb.f, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 656), align 8, !tbaa !514
  tail call void %i.p(i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4), !inline_history !515
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !218
  %.not35 = icmp eq i32 %i.r, 0
  br i1 %.not35, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !220
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !221
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !222
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !223
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 5 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  store i32 %1, ptr %i.z, align 4, !tbaa !192
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv
  store i32 %2, ptr %i.aa, align 4, !tbaa !192
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  store i32 %3, ptr %i.ab, align 4, !tbaa !192
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  store i32 %4, ptr %i.ac, align 4, !tbaa !192
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ad = load i32, ptr %i.q, align 8, !tbaa !218
  %i.ae = zext i32 %i.ad to i64
  %i.af = icmp samesign ult i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %bb.g, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit.sink.split, !llvm.loop !516

bb.h:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !221
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !192
  %.not18.i = icmp eq i32 %i.ai, %2
  br i1 %.not18.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !222
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !192
  %.not19.i = icmp eq i32 %i.al, %1
  br i1 %.not19.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !223
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !192
  %.not20.i = icmp ne i32 %i.ao, %2
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.aq = load i8, ptr %i.ap, align 1, !range !129
  %i.ar = trunc nuw i8 %i.aq to i1
  %or.cond.i = select i1 %.not20.i, i1 true, i1 %i.ar
  br i1 %or.cond.i, label %bb.l, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 256), align 8, !tbaa !228
  tail call void %i.as(i32 noundef %1, i32 noundef %2), !inline_history !245
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !218
  %.not24.i = icmp eq i32 %i.au, 0
  br i1 %.not24.i, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !220
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !221
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !222
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !223
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.m ] ; 5 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.i
  store i32 %1, ptr %i.bc, align 4, !tbaa !192
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.i
  store i32 %2, ptr %i.bd, align 4, !tbaa !192
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  store i32 %1, ptr %i.be, align 4, !tbaa !192
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.i
  store i32 %2, ptr %i.bf, align 4, !tbaa !192
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bg = load i32, ptr %i.at, align 8, !tbaa !218
  %i.bh = zext i32 %i.bg to i64
  %i.bi = icmp samesign ult i64 %indvars.iv.next.i, %i.bh
  br i1 %i.bi, label %bb.m, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit.sink.split, !llvm.loop !247

_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit.sink.split: ; preds = %bb.g, %bb.m, %bb.l, %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 129
  store i8 0, ptr %i.bj, align 1, !tbaa !246
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit

_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit: ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit.sink.split, %bb.k, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZNK5video18COpenGL3DriverBase10getGLBlendENS_14E_BLEND_FACTORE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(2528) %0, i8 noundef zeroext %1) local_unnamed_addr #19 align 2 {
bb.a:
  %i.a = zext i8 %1 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK5video18COpenGL3DriverBase10getGLBlendENS_14E_BLEND_FACTOREE10blendTable, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !192
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN5video18COpenGL3DriverBase22setTextureRenderStatesERKNS_9SMaterialEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2528) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(127) %1, i1 noundef zeroext %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 964
  %i.b = load i8, ptr %i.a, align 4, !tbaa !478   ; 2 uses
  %.not105107 = icmp eq i8 %i.b, 0
  br i1 %.not105107, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 126
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1022
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1023
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.i = zext i8 %i.b to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCacheixEi.exit.thread, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNK5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCacheixEi.exit.thread
  %indvars.iv = phi i64 [ %i.i, %.lr.ph ], [ %i.j, %_ZNK5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCacheixEi.exit.thread ] ; 3 uses
  %i.j = add nsw i64 %indvars.iv, -1              ; 4 uses
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %i.l = icmp slt i64 %indvars.iv, 5
  br i1 %i.l, label %_ZNK5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCacheixEi.exit, label %_ZNK5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCacheixEi.exit.thread

_ZNK5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCacheixEi.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.j
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !170  ; 21 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %_ZNK5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCacheixEi.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCacheixEi.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  %i.q = load i32, ptr %i.p, align 8, !tbaa !292  ; 7 uses
  %i.r = add nuw nsw i64 %indvars.iv, 33983       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 172 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !236
  %i.u = zext i32 %i.t to i64
  %.not.i = icmp eq i64 %i.r, %i.u
  br i1 %.not.i, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 584), align 8, !tbaa !237
  %i.w = trunc nuw nsw i64 %i.r to i32            ; 2 uses
  tail call void %i.v(i32 noundef %i.w), !inline_history !286
  store i32 %i.w, ptr %i.s, align 4, !tbaa !236
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit

_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit: ; preds = %bb.c, %bb.d
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.j ; 14 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 201 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 209 ; 2 uses
  br i1 %2, label %.thread, label %bb.e

.thread:                                          ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit
  store i8 0, ptr %i.z, align 1, !tbaa !517
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 209
  br label %._crit_edge112

bb.e:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit
  %.pre = load i8, ptr %i.z, align 1, !tbaa !517, !range !129
  %i.ab = trunc nuw i8 %.pre to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 209 ; 3 uses
  br i1 %i.ab, label %bb.f, label %._crit_edge112

._crit_edge112:                                   ; preds = %.thread, %bb.e
  %i.ad = phi ptr [ %i.aa, %.thread ], [ %i.ac, %bb.e ]
  %.phi.trans.insert113 = getelementptr inbounds nuw i8, ptr %i.x, i64 11
  %.pre114 = load i8, ptr %.phi.trans.insert113, align 1, !tbaa !491
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 11
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !491 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 207
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !518
  %.not87 = icmp eq i8 %i.af, %i.ah
  br i1 %.not87, label %bb.j, label %bb.g

bb.g:                                             ; preds = %._crit_edge112, %bb.f
  %i.ai = phi ptr [ %i.ad, %._crit_edge112 ], [ %i.ac, %bb.f ]
  %i.aj = phi i8 [ %.pre114, %._crit_edge112 ], [ %i.af, %bb.f ] ; 2 uses
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 128), align 8, !tbaa !470
  switch i8 %i.aj, label %bb.h [
    i8 0, label %bb.i
    i8 1, label %.fold.split
  ]

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.10, i32 noundef 1383, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5video18COpenGL3DriverBase22setTextureRenderStatesERKNS_9SMaterialEb) #36
  unreachable

.fold.split:                                      ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %.fold.split
  %i.al = phi i32 [ 9728, %bb.g ], [ 9729, %.fold.split ]
  tail call void %i.ak(i32 noundef %i.q, i32 noundef 10240, i32 noundef %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 207
  store i8 %i.aj, ptr %i.am, align 1, !tbaa !518
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.an = phi ptr [ %i.ai, %bb.i ], [ %i.ac, %bb.f ] ; 7 uses
  %i.ao = load i8, ptr %i.d, align 2
  %i.ap = icmp slt i8 %i.ao, 0
  br i1 %i.ap, label %bb.k, label %._crit_edge115

._crit_edge115:                                   ; preds = %bb.j
  %.pre116 = load i8, ptr %i.an, align 1, !tbaa !517, !range !129
  br label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !448, !range !129, !noundef !130
  %i.as = trunc nuw i8 %i.ar to i1
  %.pre117 = load i8, ptr %i.an, align 1, !tbaa !517, !range !129 ; 2 uses
  br i1 %i.as, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.at = trunc nuw i8 %.pre117 to i1
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  %i.av = load i8, ptr %i.au, align 2, !tbaa !490 ; 4 uses
  br i1 %i.at, label %bb.m, label %._crit_edge121

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 206
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !519
  %.not89 = icmp eq i8 %i.av, %i.ax
  br i1 %.not89, label %bb.n, label %._crit_edge121

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 208
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !520, !range !129, !noundef !130
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.u, label %._crit_edge121

._crit_edge121:                                   ; preds = %bb.l, %bb.n, %bb.m
  %i.bb = icmp ult i8 %i.av, 4
  br i1 %i.bb, label %switch.lookup, label %bb.o

bb.o:                                             ; preds = %._crit_edge121
  tail call void @__assert_fail(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.10, i32 noundef 1395, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5video18COpenGL3DriverBase22setTextureRenderStatesERKNS_9SMaterialEb) #36
  unreachable

switch.lookup:                                    ; preds = %._crit_edge121
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 128), align 8, !tbaa !470
  %switch.idx.cast = zext nneg i8 %i.av to i32
  %switch.offset = or disjoint i32 %switch.idx.cast, 9984
  tail call void %i.bc(i32 noundef %i.q, i32 noundef 10241, i32 noundef %switch.offset)
  br label %.sink.split

bb.p:                                             ; preds = %._crit_edge115, %bb.k
  %i.bd = phi i8 [ %.pre116, %._crit_edge115 ], [ %.pre117, %bb.k ]
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !490 ; 3 uses
  br i1 %i.be, label %bb.q, label %._crit_edge118

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %i.o, i64 206
  %i.bi = load i8, ptr %i.bh, align 2, !tbaa !519
  %.not88 = icmp eq i8 %i.bg, %i.bi
  br i1 %.not88, label %bb.r, label %._crit_edge118

bb.r:                                             ; preds = %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %i.o, i64 208
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !520, !range !129, !noundef !130
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %._crit_edge118, label %bb.u

._crit_edge118:                                   ; preds = %bb.p, %bb.r, %bb.q
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 128), align 8, !tbaa !470
  %i.bn = and i8 %i.bg, -3
  switch i8 %i.bn, label %bb.s [
    i8 0, label %bb.t
    i8 1, label %.fold.split104
  ]

bb.s:                                             ; preds = %._crit_edge118
  tail call void @__assert_fail(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.10, i32 noundef 1405, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5video18COpenGL3DriverBase22setTextureRenderStatesERKNS_9SMaterialEb) #36
  unreachable

.fold.split104:                                   ; preds = %._crit_edge118
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge118, %.fold.split104
  %i.bo = phi i32 [ 9728, %._crit_edge118 ], [ 9729, %.fold.split104 ]
  tail call void %i.bm(i32 noundef %i.q, i32 noundef 10241, i32 noundef %i.bo)
  br label %.sink.split

.sink.split:                                      ; preds = %switch.lookup, %bb.t
  %.sink155 = phi i8 [ %i.bg, %bb.t ], [ %i.av, %switch.lookup ]
  %.sink = phi i8 [ 0, %bb.t ], [ 1, %switch.lookup ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.o, i64 206
  store i8 %.sink155, ptr %i.bp, align 2, !tbaa !519
  %i.bq = getelementptr inbounds nuw i8, ptr %i.o, i64 208
  store i8 %.sink, ptr %i.bq, align 8, !tbaa !520
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.r, %bb.n
  %i.br = load i8, ptr %i.e, align 2, !tbaa !521, !range !129, !noundef !130
  %i.bs = trunc nuw i8 %i.br to i1
  %.pre131.pre139 = load i8, ptr %i.an, align 1, !tbaa !517, !range !129 ; 2 uses
  br i1 %i.bs, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.bt = trunc nuw i8 %.pre131.pre139 to i1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.x, i64 13
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !522 ; 3 uses
  br i1 %i.bt, label %bb.w, label %._crit_edge124

bb.w:                                             ; preds = %bb.v
  %i.bw = getelementptr inbounds nuw i8, ptr %i.o, i64 204
  %i.bx = load i8, ptr %i.bw, align 4, !tbaa !523
  %.not90 = icmp eq i8 %i.bv, %i.bx
  br i1 %.not90, label %bb.z, label %._crit_edge124

._crit_edge124:                                   ; preds = %bb.v, %bb.w
  %i.by = getelementptr inbounds nuw i8, ptr %i.x, i64 13
  %.not91 = icmp eq i8 %i.bv, 0
  br i1 %.not91, label %bb.y, label %bb.x

bb.x:                                             ; preds = %._crit_edge124
  %i.bz = sitofp i8 %i.bv to float
  %i.ca = fmul nnan float %i.bz, 1.250000e-01     ; 2 uses
  %i.cb = load float, ptr %i.f, align 8, !tbaa !524 ; 3 uses
  %i.cc = fneg float %i.cb                        ; 2 uses
  %i.cd = fcmp olt float %i.ca, %i.cc
  %i.ce = select i1 %i.cd, float %i.cc, float %i.ca ; 2 uses
  %i.cf = fcmp olt float %i.ce, %i.cb
  %i.cg = select i1 %i.cf, float %i.ce, float %i.cb
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge124, %bb.x
  %.sink157 = phi float [ %i.cg, %bb.x ], [ 0.000000e+00, %._crit_edge124 ]
  %i.ch = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 112), align 8, !tbaa !525
  tail call void %i.ch(i32 noundef %i.q, i32 noundef 34049, float noundef %.sink157)
  %i.ci = load i8, ptr %i.by, align 1, !tbaa !522
  %i.cj = getelementptr inbounds nuw i8, ptr %i.o, i64 204
  store i8 %i.ci, ptr %i.cj, align 4, !tbaa !523
  %.pre131.pre = load i8, ptr %i.an, align 1, !tbaa !517, !range !129
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u
  %.pre131.a = phi i8 [ %.pre131.pre, %bb.y ], [ 1, %bb.w ], [ %.pre131.pre139, %bb.u ] ; 2 uses
  %i.ck = load i8, ptr %i.g, align 1, !tbaa !526, !range !129, !noundef !130
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.cm = trunc nuw i8 %.pre131.a to i1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.co = load i8, ptr %i.cn, align 4, !tbaa !492 ; 3 uses
  br i1 %i.cm, label %bb.ab, label %._crit_edge127

bb.ab:                                            ; preds = %bb.aa
  %i.cp = getelementptr inbounds nuw i8, ptr %i.o, i64 205
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !527
  %.not92 = icmp eq i8 %i.co, %i.cq
  br i1 %.not92, label %.thread152, label %._crit_edge127

._crit_edge127:                                   ; preds = %bb.aa, %bb.ab
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 128), align 8, !tbaa !470
  %i.cs = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.ct = icmp ugt i8 %i.co, 1
  br i1 %i.ct, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %._crit_edge127
  %i.cu = load i8, ptr %i.h, align 8, !tbaa !126
  %3 = tail call i8 @llvm.umin.i8(i8 %i.cu, i8 %i.co)
  %i.cv = zext i8 %3 to i32
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge127, %bb.ac
  %i.cw = phi i32 [ %i.cv, %bb.ac ], [ 1, %._crit_edge127 ]
  tail call void %i.cr(i32 noundef %i.q, i32 noundef 34046, i32 noundef %i.cw)
  %i.cx = load i8, ptr %i.cs, align 4, !tbaa !492
  %i.cy = getelementptr inbounds nuw i8, ptr %i.o, i64 205
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !527
  %.pre130 = load i8, ptr %i.an, align 1, !tbaa !517, !range !129
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.z
  %i.cz = phi i8 [ %.pre130, %bb.ad ], [ %.pre131.a, %bb.z ]
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %.thread152, label %._crit_edge132

._crit_edge132:                                   ; preds = %bb.ae
  %.phi.trans.insert133 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.pre134 = load i16, ptr %.phi.trans.insert133, align 8
  br label %bb.af

.thread152:                                       ; preds = %bb.ab, %bb.ae
  %i.db = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.dc = load i16, ptr %i.db, align 8            ; 2 uses
  %i.dd = and i16 %i.dc, 15
  %i.de = load i8, ptr %i.y, align 1, !tbaa !528
  %i.df = zext i8 %i.de to i16
  %.not93 = icmp eq i16 %i.dd, %i.df
  br i1 %.not93, label %.thread153, label %bb.af

bb.af:                                            ; preds = %.thread152, %._crit_edge132
  %i.dg = phi i16 [ %.pre134, %._crit_edge132 ], [ %i.dc, %.thread152 ]
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 128), align 8, !tbaa !470
  %i.di = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.dj = trunc i16 %i.dg to i8
  %i.dk = and i8 %i.dj, 15
  %.off.i = add nsw i8 %i.dk, -1
  %switch.i = icmp ult i8 %.off.i, 3
  %..i = select i1 %switch.i, i32 33071, i32 10497
  tail call void %i.dh(i32 noundef %i.q, i32 noundef 10242, i32 noundef %..i)
  %i.dl = load i16, ptr %i.di, align 8
  %i.dm = trunc i16 %i.dl to i8
  %i.dn = and i8 %i.dm, 15
  store i8 %i.dn, ptr %i.y, align 1, !tbaa !528
  %.pre135 = load i8, ptr %i.an, align 1, !tbaa !517, !range !129
  %i.do = trunc nuw i8 %.pre135 to i1
  br i1 %i.do, label %.thread153, label %._crit_edge136

._crit_edge136:                                   ; preds = %bb.af
  %.phi.trans.insert137 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.pre138 = load i16, ptr %.phi.trans.insert137, align 8
  br label %bb.ag

.thread153:                                       ; preds = %.thread152, %bb.af
  %i.dp = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.dq = load i16, ptr %i.dp, align 8            ; 2 uses
  %i.dr = lshr i16 %i.dq, 4
  %i.ds = and i16 %i.dr, 15
  %i.dt = getelementptr inbounds nuw i8, ptr %i.o, i64 202
  %i.du = load i8, ptr %i.dt, align 2, !tbaa !529
  %i.dv = zext i8 %i.du to i16
  %.not94 = icmp eq i16 %i.ds, %i.dv
  br i1 %.not94, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge136, %.thread153
  %i.dw = phi i16 [ %.pre138, %._crit_edge136 ], [ %i.dq, %.thread153 ]
  %i.dx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 128), align 8, !tbaa !470
  %i.dy = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.dz = trunc i16 %i.dw to i8
  %i.ea = lshr i8 %i.dz, 4
  %.off.i98 = add nsw i8 %i.ea, -1
  %switch.i99 = icmp ult i8 %.off.i98, 3
  %..i100 = select i1 %switch.i99, i32 33071, i32 10497
  tail call void %i.dx(i32 noundef %i.q, i32 noundef 10243, i32 noundef %..i100)
  %i.eb = load i16, ptr %i.dy, align 8
  %i.ec = trunc i16 %i.eb to i8
  %i.ed = lshr i8 %i.ec, 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.o, i64 202
  store i8 %i.ed, ptr %i.ee, align 2, !tbaa !529
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.thread153
  store i8 1, ptr %i.an, align 1, !tbaa !517
  br label %_ZNK5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCacheixEi.exit.thread

_ZNK5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCacheixEi.exit.thread: ; preds = %bb.b, %_ZNK5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCacheixEi.exit, %bb.ah
  %.not105.wide = icmp eq i64 %i.j, 0
  br i1 %.not105.wide, label %._crit_edge, label %bb.b, !llvm.loop !530
}

; Function Attrs: uwtable
define void @_ZThn936_N5video18COpenGL3DriverBase20setBasicRenderStatesERKNS_9SMaterialES3_b(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(127) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(127) %2, i1 noundef zeroext %3) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -936
  tail call void @_ZN5video18COpenGL3DriverBase20setBasicRenderStatesERKNS_9SMaterialES3_b(ptr noundef nonnull align 8 dereferenceable(2528) %i.a, ptr noundef nonnull align 8 dereferenceable(127) %1, ptr noundef nonnull align 8 dereferenceable(127) %2, i1 noundef zeroext %3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 10497, 33072) i32 @_ZNK5video18COpenGL3DriverBase18getTextureWrapModeEh(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(2528) %0, i8 noundef zeroext %1) local_unnamed_addr #19 align 2 {
bb.a:
  %.off = add i8 %1, -1
  %switch = icmp ult i8 %.off, 3
  %. = select i1 %switch, i32 33071, i32 10497
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZNK5video18COpenGL3DriverBase7getNameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2528) %0) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN5video18COpenGL3DriverBase11setViewPortERKN4core4rectIiEE(ptr noundef nonnull align 8 dereferenceable(2528) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 {
_ZN4core4rectIiE11clipAgainstERKS1_.exit:
  %.sroa.06.0.copyload = load i32, ptr %1, align 4, !tbaa !192
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !192
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.17.0.copyload = load i32, ptr %.sroa.17.0..sroa_idx, align 4, !tbaa !192
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.22.0.copyload = load i32, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !192
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 4 dereferenceable(8) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(933) %0)
  %i.e = load i32, ptr %i.d, align 4, !tbaa !367  ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 496
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef nonnull align 4 dereferenceable(8) ptr %i.h(ptr noundef nonnull align 8 dereferenceable(933) %0)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !368  ; 2 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %.sroa.17.0.copyload)
  %.sroa.22.0 = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %.sroa.22.0.copyload)
  %.sroa.17.1 = tail call i32 @llvm.smax.i32(i32 %spec.select, i32 0) ; 2 uses
  %.sroa.22.1 = tail call i32 @llvm.smax.i32(i32 %.sroa.22.0, i32 0) ; 3 uses
  %.sroa.06.0 = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %.sroa.06.0.copyload)
  %.sroa.10.0 = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %.sroa.10.0.copyload)
  %.sroa.06.1 = tail call i32 @llvm.smax.i32(i32 %.sroa.06.0, i32 0) ; 5 uses
  %.sroa.10.1 = tail call i32 @llvm.smax.i32(i32 %.sroa.10.0, i32 0) ; 2 uses
  %i.l = sub nsw i32 %.sroa.22.1, %.sroa.10.1     ; 4 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.a, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE11setViewportEiiii.exit

bb.a:                                             ; preds = %_ZN4core4rectIiE11clipAgainstERKS1_.exit
  %i.n = sub nsw i32 %.sroa.17.1, %.sroa.06.1     ; 4 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.b, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE11setViewportEiiii.exit

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !28   ; 4 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 496
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef nonnull align 4 dereferenceable(8) ptr %i.t(ptr noundef nonnull align 8 dereferenceable(933) %0)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !368
  %i.x = sub i32 %i.w, %.sroa.22.1                ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 176 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !242
  %.not.i = icmp eq i32 %i.z, %.sroa.06.1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 180 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %.not12.i = icmp eq i32 %i.ab, %i.x
  %or.cond.i = select i1 %.not.i, i1 %.not12.i, i1 false
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 184 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8
  %.not13.i = icmp eq i32 %i.ad, %i.n
  %or.cond17.i = select i1 %or.cond.i, i1 %.not13.i, i1 false
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 188 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %.not14.i = icmp eq i32 %i.af, %i.l
  %or.cond19.i = select i1 %or.cond17.i, i1 %.not14.i, i1 false
  br i1 %or.cond19.i, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE11setViewportEiiii.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 432), align 8, !tbaa !241
  tail call void %i.ag(i32 noundef %.sroa.06.1, i32 noundef %i.x, i32 noundef %i.n, i32 noundef %i.l), !inline_history !531
  store i32 %.sroa.06.1, ptr %i.y, align 8, !tbaa !242
  store i32 %i.x, ptr %i.aa, align 4, !tbaa !216
  store i32 %i.n, ptr %i.ac, align 8, !tbaa !239
  store i32 %i.l, ptr %i.ae, align 4, !tbaa !240
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE11setViewportEiiii.exit

_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE11setViewportEiiii.exit: ; preds = %bb.c, %bb.b, %bb.a, %_ZN4core4rectIiE11clipAgainstERKS1_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i32 %.sroa.06.1, ptr %i.ah, align 8, !tbaa !192
  %.sroa.10.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 308
  store i32 %.sroa.10.1, ptr %.sroa.10.0..sroa_idx11, align 4, !tbaa !192
  %.sroa.17.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 %.sroa.17.1, ptr %.sroa.17.0..sroa_idx17, align 8, !tbaa !192
  %.sroa.22.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %0, i64 316
  store i32 %.sroa.22.1, ptr %.sroa.22.0..sroa_idx21, align 4, !tbaa !192
  ret void
}
end_hunk_0
begin_hunk_1_@_ZN5video18COpenGL3DriverBase22addRenderTargetTextureERKN4core11dimension2dIjEERKNS1_6stringIcEENS_13ECOLOR_FORMATE:bb.a
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN5video18COpenGL3DriverBase24addRenderTargetTextureMsERKN4core11dimension2dIjEEhRKNS1_6stringIcEENS_13ECOLOR_FORMATE(ptr noundef nonnull align 8 dereferenceable(2528) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i8 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #37 ; 6 uses
  %.not = icmp ne i8 %2, 0
  %i.b = zext i1 %.not to i32
  invoke void @_ZN5video18COpenGLCoreTextureINS_18COpenGL3DriverBaseEEC1ERKN4core6stringIcEERKNS3_11dimension2dIjEENS_14E_TEXTURE_TYPEENS_13ECOLOR_FORMATEPS1_h(ptr noundef nonnull align 8 dereferenceable(210) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %i.b, i32 noundef %4, ptr noundef nonnull %0, i8 noundef zeroext %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5video11CNullDriver10addTextureEPNS_8ITextureE(ptr noundef nonnull align 8 dereferenceable(933) %0, ptr noundef nonnull %i.a)
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %i.e ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !153  ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #36
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.j, ptr %i.g, align 8, !tbaa !153
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.e, label %_ZNK17IReferenceCounted4dropEv.exit

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(12) %i.f) #34, !inline_history !169
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.d, %bb.e
  ret ptr %i.a

bb.f:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 232) #33
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5video18COpenGLCoreTextureINS_18COpenGL3DriverBaseEEC1ERKN4core6stringIcEERKNS3_11dimension2dIjEENS_14E_TEXTURE_TYPEENS_13ECOLOR_FORMATEPS1_h(ptr noundef nonnull align 8 dereferenceable(210) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i8 noundef zeroext %6) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = alloca [200 x i8], align 16              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 1, ptr %i.d, align 8, !tbaa !153
  store ptr getelementptr inbounds nuw inrange(-24, 40) (i8, ptr @_ZTCN5video18COpenGLCoreTextureINS_18COpenGL3DriverBaseEEE0_NS_8ITextureE, i64 24), ptr %0, align 8, !tbaa !13
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN5video18COpenGLCoreTextureINS_18COpenGL3DriverBaseEEE0_NS_8ITextureE, i64 88), ptr %i.c, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2io10SNamedPathC2ERKN4core6stringIcEE(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.f, i8 0, i64 20, i1 false)
  store i32 19, ptr %i.g, align 4, !tbaa !445
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  store i32 19, ptr %i.h, align 8, !tbaa !446
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  store i32 0, ptr %i.i, align 4, !tbaa !447
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store i8 0, ptr %i.j, align 8, !tbaa !448
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 105 ; 2 uses
  store i8 0, ptr %i.k, align 1, !tbaa !385
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 4 uses
  store i32 %3, ptr %i.l, align 4, !tbaa !449
  store ptr getelementptr inbounds nuw inrange(-24, 40) (i8, ptr @_ZTVN5video18COpenGLCoreTextureINS_18COpenGL3DriverBaseEEE, i64 24), ptr %0, align 8, !tbaa !13
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5video18COpenGLCoreTextureINS_18COpenGL3DriverBaseEEE, i64 88), ptr %i.c, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 12 uses
  store ptr %5, ptr %i.m, align 8, !tbaa !450
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 3 uses
  store <4 x i32> <i32 3553, i32 0, i32 6408, i32 6408>, ptr %i.n, align 8, !tbaa !192
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  store i32 5121, ptr %i.r, align 8, !tbaa !451
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  store i8 %6, ptr %i.s, align 4, !tbaa !452
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  store ptr null, ptr %i.t, align 8, !tbaa !453
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 0, ptr %i.u, align 8, !tbaa !454
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr null, ptr %i.v, align 8, !tbaa !455
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 0, ptr %i.w, align 8, !tbaa !456
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i8 0, ptr %i.x, align 4, !tbaa !457
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 201
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(34) %i.y, i8 0, i64 34, i1 false)
  %i.aa = load ptr, ptr %5, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 664
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef i32 %i.ac(ptr noundef nonnull align 8 dereferenceable(2528) %5)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !287
  %i.af = load i32, ptr %i.l, align 4, !tbaa !449 ; 2 uses
  %.not = icmp eq i32 %i.af, 3
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.112, i32 noundef 143, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5video18COpenGLCoreTextureINS_18COpenGL3DriverBaseEEC1ERKN4core6stringIcEERKNS3_11dimension2dIjEENS_14E_TEXTURE_TYPEENS_13ECOLOR_FORMATEPS1_h) #36
  unreachable

bb.d:                                             ; preds = %bb.m, %bb.k, %bb.j, %bb.u, %_ZN5video6IImage25getBitsPerPixelFromFormatENS_13ECOLOR_FORMATE.exit, %bb.h, %bb.f, %bb.e, %bb.a
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.e:                                             ; preds = %bb.b
  %i.ah = invoke noundef i32 @_ZNK5video18COpenGLCoreTextureINS_18COpenGL3DriverBaseEE18TextureTypeIrrToGLENS_14E_TEXTURE_TYPEE(ptr noundef nonnull align 8 dereferenceable(210) %0, i32 noundef %i.af)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  store i32 %i.ah, ptr %i.n, align 8, !tbaa !292
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !450 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 552
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(933) %i.ai, i32 noundef 64)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.f
  %i.an = zext i1 %i.am to i8
  store i8 %i.an, ptr %i.j, align 8, !tbaa !448
  store i8 1, ptr %i.k, align 1, !tbaa !385
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !125
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %1, align 8, !tbaa !127
  invoke void @_ZN2os7Printer3logEPKcS2_10ELOG_LEVEL(ptr noundef nonnull @.str.114, ptr noundef %i.ar, i32 noundef 0)
          to label %bb.i unwind label %bb.d

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 %4, ptr %i.g, align 4, !tbaa !445
  %i.as = icmp eq i32 %4, 19
  br i1 %i.as, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.at = load ptr, ptr %i.m, align 8, !tbaa !450 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 552
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = invoke noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(933) %i.at, i32 noundef 1)
          to label %.noexc unwind label %bb.d, !inline_history !535

.noexc:                                           ; preds = %bb.j
  br i1 %i.ax, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc
  %i.ay = load ptr, ptr %i.m, align 8, !tbaa !450 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 552
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = invoke noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(933) %i.ay, i32 noundef 8)
          to label %.noexc25 unwind label %bb.d, !inline_history !535

.noexc25:                                         ; preds = %bb.k
  br i1 %i.bc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.noexc25, %.noexc
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.noexc25
  %. = phi i32 [ 2, %.noexc25 ], [ 1, %bb.l ]
  %.0.i = phi i32 [ 3, %.noexc25 ], [ 0, %bb.l ]
  %i.bd = load ptr, ptr %i.m, align 8, !tbaa !450 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !13
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 552
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull align 8 dereferenceable(933) %i.bd, i32 noundef 32)
          to label %.noexc26 unwind label %bb.d, !inline_history !535

.noexc26:                                         ; preds = %bb.m
  %.1.i = select i1 %i.bh, i32 %., i32 %.0.i
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %.noexc26
  %i.bi = phi i32 [ %.1.i, %.noexc26 ], [ %4, %bb.i ] ; 4 uses
  store i32 %i.bi, ptr %i.h, align 8, !tbaa !446
  %i.bj = load i64, ptr %2, align 4               ; 4 uses
  store i64 %i.bj, ptr %i.f, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i64 %i.bj, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bm = trunc i64 %i.bj to i32                  ; 4 uses
  %i.bn = lshr i64 %i.bj, 32
  %i.bo = trunc nuw i64 %i.bn to i32              ; 3 uses
  %i.bp = tail call i32 @llvm.umin.i32(i32 %i.bm, i32 %i.bo)
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %7 = tail call i32 @llvm.umax.i32(i32 %i.bm, i32 %i.bo)
  %i.br = load ptr, ptr %i.m, align 8, !tbaa !450 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 984
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !23
  %i.bu = icmp ugt i32 %7, %i.bt
  br i1 %i.bu, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.bv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.120, i32 noundef %i.bm, i32 noundef %i.bo) #34 ; 0 uses
  invoke void @_ZN2os7Printer3logEPKcS2_10ELOG_LEVEL(ptr noundef nonnull @.str.137, ptr noundef nonnull %i.a, i32 noundef 3)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.at

bb.r:                                             ; preds = %bb.p
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.av

bb.s:                                             ; preds = %bb.o
  %i.bx = icmp ult i32 %i.bi, 19
  br i1 %i.bx, label %switch.lookup, label %_ZN5video6IImage25getBitsPerPixelFromFormatENS_13ECOLOR_FORMATE.exit

switch.lookup:                                    ; preds = %bb.s
  %i.by = zext nneg i32 %i.bi to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN5video18COpenGLCoreTextureINS_18COpenGL3DriverBaseEE14getImageValuesEPKNS_6IImageE, i64 %i.by
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.bz = mul i32 %switch.ext, %i.bm
  %i.ca = lshr exact i32 %i.bz, 3
  br label %_ZN5video6IImage25getBitsPerPixelFromFormatENS_13ECOLOR_FORMATE.exit

_ZN5video6IImage25getBitsPerPixelFromFormatENS_13ECOLOR_FORMATE.exit: ; preds = %bb.s, %switch.lookup
  %.0.i27 = phi i32 [ %i.ca, %switch.lookup ], [ 0, %bb.s ]
  store i32 %.0.i27, ptr %i.i, align 4, !tbaa !447
  %i.cb = load ptr, ptr %i.br, align 8, !tbaa !13
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 952
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = invoke noundef zeroext i1 %i.cd(ptr noundef nonnull align 8 dereferenceable(2528) %i.br, i32 noundef %i.bi, ptr noundef nonnull align 4 dereferenceable(4) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.r, ptr noundef nonnull %i.t)
          to label %bb.t unwind label %bb.d

bb.t:                                             ; preds = %_ZN5video6IImage25getBitsPerPixelFromFormatENS_13ECOLOR_FORMATE.exit
  br i1 %i.ce, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = load i32, ptr %i.h, align 8, !tbaa !446
  %i.cg = tail call i32 @llvm.smin.i32(i32 %i.cf, i32 19)
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr @_ZN5videoL16ColorFormatNamesE, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !182
  invoke void @_ZN2os7Printer3logEPKcS2_10ELOG_LEVEL(ptr noundef nonnull @.str.138, ptr noundef %i.cj, i32 noundef 3)
          to label %bb.at unwind label %bb.d

bb.v:                                             ; preds = %bb.t
  %i.ck = load i32, ptr %i.p, align 8, !tbaa !461 ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 32993
  br i1 %i.cl, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.cm = load ptr, ptr %i.m, align 8, !tbaa !450
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1225
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !179
  %i.cp = icmp ugt i8 %i.co, 2
  br i1 %i.cp, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 32856, ptr %i.p, align 8, !tbaa !461
  store i32 6408, ptr %i.q, align 4, !tbaa !466
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.cq = phi i32 [ 32856, %bb.x ], [ 32993, %bb.w ], [ %i.ck, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.cr = load i32, ptr %i.l, align 4, !tbaa !449
  %i.cs = load i32, ptr %i.bk, align 8, !tbaa !462
  %i.ct = load i32, ptr %i.bl, align 4, !tbaa !463
  %i.cu = load i8, ptr %i.s, align 4, !tbaa !452
  %i.cv = zext i8 %i.cu to i32
  %i.cw = load i32, ptr %i.h, align 8, !tbaa !446
  %i.cx = tail call i32 @llvm.smin.i32(i32 %i.cw, i32 19)
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr @_ZN5videoL16ColorFormatNamesE, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !182
  %i.db = load i8, ptr %i.j, align 8, !tbaa !448, !range !129, !noundef !130
  %i.dc = trunc nuw i8 %i.db to i1
  %i.dd = select i1 %i.dc, ptr @.str.116, ptr @.str.17
  %i.de = load i32, ptr %i.q, align 4, !tbaa !466
  %i.df = load i32, ptr %i.r, align 8, !tbaa !451
  %i.dg = load ptr, ptr %i.t, align 8, !tbaa !453
  %.not18 = icmp eq ptr %i.dg, null
  %i.dh = select i1 %.not18, ptr @.str.17, ptr @.str.16
  %i.di = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 200, ptr noundef nonnull @.str.139, i32 noundef %i.cr, i32 noundef %i.cs, i32 noundef %i.ct, i32 noundef %i.cv, ptr noundef %i.da, ptr noundef nonnull %i.dd, i32 noundef %i.cq, i32 noundef %i.de, i32 noundef %i.df, ptr noundef nonnull %i.dh) #34 ; 0 uses
  invoke void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull %i.b, i32 noundef 0)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.dj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 536), align 8, !tbaa !469
  invoke void %i.dj(i32 noundef 1, ptr noundef nonnull %i.o)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.dk = load ptr, ptr %i.m, align 8, !tbaa !450
  %i.dl = invoke noundef zeroext i1 @_ZN5video18COpenGL3DriverBase11testGLErrorEPKci(ptr noundef nonnull align 8 dereferenceable(2528) %i.dk, ptr noundef nonnull @.str.112, i32 noundef 195)
          to label %bb.ab unwind label %bb.ad     ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.dm = load i32, ptr %i.o, align 4, !tbaa !302
  %.not19 = icmp eq i32 %i.dm, 0
  br i1 %.not19, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.117, i32 noundef 3)
          to label %bb.as unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.aa, %bb.z, %bb.y
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ae:                                            ; preds = %bb.ab
  %i.do = load ptr, ptr %i.m, align 8, !tbaa !450
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 1040
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !28 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !170
  %i.du = invoke noundef zeroext i1 @_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCache3setEjPKNS_8ITextureENS_17ESetTextureActiveE(ptr noundef nonnull align 8 dereferenceable(52) %i.dr, i32 noundef 0, ptr noundef nonnull %0, i32 noundef 0)
          to label %bb.af unwind label %bb.am     ; 0 uses

bb.af:                                            ; preds = %bb.ae
  %i.dv = load i32, ptr %i.l, align 4, !tbaa !449
  %.not20 = icmp eq i32 %i.dv, 1
  br i1 %.not20, label %bb.an, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 128), align 8, !tbaa !470
  %i.dx = load i32, ptr %i.n, align 8, !tbaa !292
  invoke void %i.dw(i32 noundef %i.dx, i32 noundef 10241, i32 noundef 9728)
          to label %bb.ah unwind label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.dy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 128), align 8, !tbaa !470
  %i.dz = load i32, ptr %i.n, align 8, !tbaa !292
  invoke void %i.dy(i32 noundef %i.dz, i32 noundef 10240, i32 noundef 9728)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.ea = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 128), align 8, !tbaa !470
  %i.eb = load i32, ptr %i.n, align 8, !tbaa !292
  invoke void %i.ea(i32 noundef %i.eb, i32 noundef 10242, i32 noundef 33071)
          to label %bb.aj unwind label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.ec = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 128), align 8, !tbaa !470
  %i.ed = load i32, ptr %i.n, align 8, !tbaa !292
  invoke void %i.ec(i32 noundef %i.ed, i32 noundef 10243, i32 noundef 33071)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.ee = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 128), align 8, !tbaa !470
  %i.ef = load i32, ptr %i.n, align 8, !tbaa !292
  invoke void %i.ee(i32 noundef %i.ef, i32 noundef 32882, i32 noundef 33071)
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i8 2, ptr %i.z, align 1, !tbaa !536
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 202
  store i8 2, ptr %i.eg, align 2, !tbaa !537
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 203
  store i8 2, ptr %i.eh, align 1, !tbaa !538
  br label %bb.an

bb.am:                                            ; preds = %bb.aq, %bb.ar, %_ZN5video24COpenGL3ExtensionHandler16irrGlObjectLabelEjjPKc.exit, %bb.an, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.ae
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.an:                                            ; preds = %bb.al, %bb.af
  invoke void @_ZN5video18COpenGLCoreTextureINS_18COpenGL3DriverBaseEE11initTextureEj(ptr noundef nonnull align 8 dereferenceable(210) %0, i32 noundef 0)
          to label %bb.ao unwind label %bb.am

bb.ao:                                            ; preds = %bb.an
  %i.ej = load i64, ptr %i.ao, align 8, !tbaa !125
  %i.ek = icmp eq i64 %i.ej, 0
  %.pre31 = load ptr, ptr %i.m, align 8, !tbaa !450 ; 4 uses
  br i1 %i.ek, label %_ZN5video24COpenGL3ExtensionHandler16irrGlObjectLabelEjjPKc.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.el = getelementptr inbounds nuw i8, ptr %.pre31, i64 1027
  %i.em = load i8, ptr %i.el, align 1, !tbaa !185, !range !129, !noundef !130
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.aq, label %_ZN5video24COpenGL3ExtensionHandler16irrGlObjectLabelEjjPKc.exit

bb.aq:                                            ; preds = %bb.ap
  %i.eo = load ptr, ptr %1, align 8, !tbaa !127   ; 2 uses
  %i.ep = load i32, ptr %i.o, align 4, !tbaa !302
  %i.eq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.eo) #35
  %i.er = trunc i64 %i.eq to i32
  %i.es = getelementptr inbounds nuw i8, ptr %.pre31, i64 1032
  %i.et = load i32, ptr %i.es, align 4, !tbaa !192
  %i.eu = call i32 @llvm.umin.i32(i32 %i.et, i32 %i.er)
end_hunk_1
begin_hunk_2_@_ZN5video18COpenGL3DriverBase17setRenderTargetExEPNS_13IRenderTargetEtNS_6SColorEfh:bb.a
bb.d:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !544  ; 3 uses
  %.not22 = icmp eq ptr %i.h, null
  br i1 %.not22, label %_ZN4core5arrayIPN5video8ITextureEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !545  ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !546  ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = icmp ugt i64 %i.o, 9223372036854775800
  br i1 %i.p, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIPN5video8ITextureEE8allocateEmPKv.exit.i.i.i.i.i, !prof !547

.noexc.i.i.i:                                     ; preds = %bb.f
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #38
  unreachable

_ZNSt15__new_allocatorIPN5video8ITextureEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.f
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #37
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !548 ; 2 uses
  %.pre50 = load ptr, ptr %i.j, align 8, !tbaa !548
  %.pre51 = ptrtoint ptr %.pre50 to i64
  %.pre52 = ptrtoint ptr %.pre to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt15__new_allocatorIPN5video8ITextureEE8allocateEmPKv.exit.i.i.i.i.i, %bb.e
  %.pre-phi53 = phi i64 [ %.pre52, %_ZNSt15__new_allocatorIPN5video8ITextureEE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.n, %bb.e ]
  %.pre-phi = phi i64 [ %.pre51, %_ZNSt15__new_allocatorIPN5video8ITextureEE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.m, %bb.e ]
  %i.r = phi ptr [ %.pre, %_ZNSt15__new_allocatorIPN5video8ITextureEE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.l, %bb.e ] ; 2 uses
  %i.s = phi ptr [ %i.q, %_ZNSt15__new_allocatorIPN5video8ITextureEE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.e ] ; 6 uses
  %i.t = sub i64 %.pre-phi, %.pre-phi53           ; 5 uses
  %i.u = icmp sgt i64 %i.t, 8
  br i1 %i.u, label %bb.h, label %bb.i, !prof !549

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.s, ptr align 8 %i.r, i64 %i.t, i1 false)
  br label %_ZN4core5arrayIPN5video8ITextureEEC2ERKS4_.exit

bb.i:                                             ; preds = %bb.g
  %i.v = icmp eq i64 %i.t, 8
  br i1 %i.v, label %_ZN4core5arrayIPN5video8ITextureEEC2ERKS4_.exit.thread, label %_ZN4core5arrayIPN5video8ITextureEEC2ERKS4_.exit

_ZN4core5arrayIPN5video8ITextureEEC2ERKS4_.exit.thread: ; preds = %bb.i
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !550
  store ptr %i.w, ptr %i.s, align 8, !tbaa !550
  br label %.lr.ph

_ZN4core5arrayIPN5video8ITextureEEC2ERKS4_.exit:  ; preds = %bb.h, %bb.i
  %i.x = lshr exact i64 %i.t, 3
  %i.y = and i64 %i.x, 4294967295                 ; 2 uses
  %.not48 = icmp eq i64 %i.y, 0
  br i1 %.not48, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4core5arrayIPN5video8ITextureEEC2ERKS4_.exit.thread, %_ZN4core5arrayIPN5video8ITextureEEC2ERKS4_.exit
  %i.z = phi i64 [ 1, %_ZN4core5arrayIPN5video8ITextureEEC2ERKS4_.exit.thread ], [ %i.y, %_ZN4core5arrayIPN5video8ITextureEEC2ERKS4_.exit ]
  %i.aa = ashr exact i64 %i.t, 3
  br label %bb.j

._crit_edge:                                      ; preds = %_ZN4core5arrayIPN5video8ITextureEEC2ERKS4_.exit
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN4core5arrayIPN5video8ITextureEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.l, %._crit_edge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.o) #33
  br label %_ZN4core5arrayIPN5video8ITextureEED2Ev.exit

_ZN4core5arrayIPN5video8ITextureEED2Ev.exit25:    ; preds = %_ZN4core5arrayIPN5video8ITextureEEixEj.exit26
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.o) #33
  resume { ptr, i32 } %i.ab

bb.j:                                             ; preds = %.lr.ph, %bb.l
  %.01947 = phi i64 [ 0, %.lr.ph ], [ %i.ah, %bb.l ] ; 3 uses
  %exitcond.not = icmp eq i64 %.01947, %i.aa
  br i1 %exitcond.not, label %bb.k, label %_ZN4core5arrayIPN5video8ITextureEEixEj.exit

bb.k:                                             ; preds = %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIPN5video8ITextureEEixEj) #36
  unreachable

_ZN4core5arrayIPN5video8ITextureEEixEj.exit:      ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.01947
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !550 ; 3 uses
  %.not23 = icmp eq ptr %i.ad, null
  br i1 %.not23, label %bb.l, label %_ZN4core5arrayIPN5video8ITextureEEixEj.exit26

_ZN4core5arrayIPN5video8ITextureEEixEj.exit26:    ; preds = %_ZN4core5arrayIPN5video8ITextureEEixEj.exit
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(112) %i.ad)
          to label %bb.l unwind label %_ZN4core5arrayIPN5video8ITextureEED2Ev.exit25

bb.l:                                             ; preds = %_ZN4core5arrayIPN5video8ITextureEEixEj.exit, %_ZN4core5arrayIPN5video8ITextureEEixEj.exit26
  %i.ah = add nuw nsw i64 %.01947, 1              ; 2 uses
  %exitcond49.not = icmp eq i64 %i.ah, %i.z
  br i1 %exitcond49.not, label %._crit_edge.thread, label %bb.j, !llvm.loop !551

_ZN4core5arrayIPN5video8ITextureEED2Ev.exit:      ; preds = %._crit_edge.thread, %._crit_edge, %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !28 ; 2 uses
  br i1 %.not, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZN4core5arrayIPN5video8ITextureEED2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !355 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 164 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !364
  %.not.i = icmp eq i32 %i.an, %i.al
  br i1 %.not.i, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE6setFBOEj.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 2176), align 8, !tbaa !365
  tail call void %i.ao(i32 noundef 36160, i32 noundef %i.al), !inline_history !552
  store i32 %i.al, ptr %i.am, align 4, !tbaa !364
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE6setFBOEj.exit

_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE6setFBOEj.exit: ; preds = %bb.m, %bb.n
  tail call void @_ZN5video23COpenGLCoreRenderTargetINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE6updateEv(ptr noundef nonnull align 8 dereferenceable(152) %1)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.aq = load i64, ptr %i.ap, align 4            ; 2 uses
  %.sroa.032.0.extract.trunc34 = trunc i64 %i.aq to i32 ; 2 uses
  %.sroa.8.0.extract.shift36 = lshr i64 %i.aq, 32
  %.sroa.8.0.extract.trunc37 = trunc nuw i64 %.sroa.8.0.extract.shift36 to i32 ; 2 uses
  %i.ar = load ptr, ptr %0, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 984
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(2528) %0, i32 noundef %.sroa.032.0.extract.trunc34, i32 noundef %.sroa.8.0.extract.trunc37)
  br label %bb.q

bb.o:                                             ; preds = %_ZN4core5arrayIPN5video8ITextureEED2Ev.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 164 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !364
  %.not.i27 = icmp eq i32 %i.av, 0
  br i1 %.not.i27, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE6setFBOEj.exit28, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 2176), align 8, !tbaa !365
  tail call void %i.aw(i32 noundef 36160, i32 noundef 0), !inline_history !552
  store i32 0, ptr %i.au, align 4, !tbaa !364
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE6setFBOEj.exit28

_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE6setFBOEj.exit28: ; preds = %bb.o, %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !553
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !554
  %i.bb = load ptr, ptr %0, align 8, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 984
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(2528) %0, i32 noundef %i.ay, i32 noundef %i.ba)
  br label %bb.q

bb.q:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE6setFBOEj.exit28, %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE6setFBOEj.exit
  %.sroa.032.0 = phi i32 [ 0, %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE6setFBOEj.exit28 ], [ %.sroa.032.0.extract.trunc34, %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE6setFBOEj.exit ] ; 2 uses
  %.sroa.8.0 = phi i32 [ 0, %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE6setFBOEj.exit28 ], [ %.sroa.8.0.extract.trunc37, %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE6setFBOEj.exit ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !367
  %i.bg = icmp ne i32 %i.bf, %.sroa.032.0
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = icmp ne i32 %i.bi, %.sroa.8.0
  %.not3.i = select i1 %i.bg, i1 true, i1 %i.bj
  br i1 %.not3.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.8.0.insert.ext = zext i32 %.sroa.8.0 to i64
  %.sroa.8.0.insert.shift = shl nuw i64 %.sroa.8.0.insert.ext, 32
  %.sroa.032.0.insert.ext = zext i32 %.sroa.032.0 to i64
  %.sroa.032.0.insert.insert = or disjoint i64 %.sroa.8.0.insert.shift, %.sroa.032.0.insert.ext
  store i64 %.sroa.032.0.insert.insert, ptr %i.be, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 2164
  store i8 1, ptr %i.bk, align 4, !tbaa !140
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  store ptr %1, ptr %i.g, align 8, !tbaa !544
  %i.bl = load ptr, ptr %0, align 8, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 688
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void %i.bn(ptr noundef nonnull align 8 dereferenceable(2528) %0, i16 noundef zeroext %2, i32 %3, float noundef %4, i8 noundef zeroext %5)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.c
  %.0 = phi i1 [ false, %bb.c ], [ true, %bb.s ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5video23COpenGLCoreRenderTargetINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE6updateEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 122 ; 2 uses
  %i.d = load i8, ptr %i.c, align 2, !tbaa !555, !range !129, !noundef !130
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 123 ; 3 uses
  %i.g = load i8, ptr %i.f, align 1, !range !129  ; 2 uses
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond = select i1 %i.e, i1 true, i1 %i.h
  br i1 %or.cond, label %bb.b, label %bb.au

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.c, label %bb.t

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !545
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !546
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = lshr exact i64 %i.o, 3                   ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !358  ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !356  ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = lshr exact i64 %i.x, 2                   ; 2 uses
  %i.z = trunc i64 %i.y to i32                    ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.z) ; 3 uses
  %.not72 = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not72, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 144
  %wide.trip.count = zext i32 %.sroa.speculated to i64
  br label %bb.d

.preheader.loopexit:                              ; preds = %bb.p
  %.pre79.a = load ptr, ptr %i.s, align 8, !tbaa !358 ; 2 uses
  %.pre80.a = load ptr, ptr %i.r, align 8, !tbaa !356 ; 2 uses
  %.pre82 = ptrtoint ptr %.pre79.a to i64
  %.pre83 = ptrtoint ptr %.pre80.a to i64
  %.pre85 = sub i64 %.pre82, %.pre83              ; 2 uses
  %.pre87 = lshr exact i64 %.pre85, 2
  %.pre89 = trunc i64 %.pre87 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.c
  %.pre-phi90 = phi i32 [ %.pre89, %.preheader.loopexit ], [ %i.z, %bb.c ]
  %.pre-phi86 = phi i64 [ %.pre85, %.preheader.loopexit ], [ %i.x, %bb.c ]
  %i.ad = phi ptr [ %.pre80.a, %.preheader.loopexit ], [ %i.u, %bb.c ]
  %i.ae = phi ptr [ %.pre79.a, %.preheader.loopexit ], [ %i.t, %bb.c ]
  %i.af = icmp ult i32 %.sroa.speculated, %.pre-phi90
  br i1 %i.af, label %.lr.ph71.preheader, label %._crit_edge

.lr.ph71.preheader:                               ; preds = %.preheader
  %i.ag = and i64 %i.p, 4294967295
  %i.ah = and i64 %i.y, 4294967295
  %umin = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ah)
  br label %.lr.ph71

bb.d:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 10 uses
  %i.ai = load ptr, ptr %i.j, align 8, !tbaa !545
  %i.aj = load ptr, ptr %i.i, align 8, !tbaa !546 ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 3
  %i.ao = icmp ugt i64 %i.an, %indvars.iv
  br i1 %i.ao, label %_ZN4core5arrayIPN5video8ITextureEEixEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIPN5video8ITextureEEixEj) #36
  unreachable

_ZN4core5arrayIPN5video8ITextureEEixEj.exit:      ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !550 ; 3 uses
  %.not46 = icmp eq ptr %i.aq, null
  br i1 %.not46, label %_ZN4core5arrayIPN5video8ITextureEEixEj.exit..thread_crit_edge, label %bb.f

_ZN4core5arrayIPN5video8ITextureEEixEj.exit..thread_crit_edge: ; preds = %_ZN4core5arrayIPN5video8ITextureEEixEj.exit
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !358
  %.pre77 = load ptr, ptr %i.r, align 8, !tbaa !356
  br label %.thread

bb.f:                                             ; preds = %_ZN4core5arrayIPN5video8ITextureEEixEj.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 124
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !302 ; 2 uses
  %.not47 = icmp eq i32 %i.as, 0
  %.pre76 = load ptr, ptr %i.s, align 8, !tbaa !358 ; 2 uses
  %.pre78 = load ptr, ptr %i.r, align 8, !tbaa !356 ; 3 uses
  br i1 %.not47, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = trunc nuw i64 %indvars.iv to i32
  %i.au = add i32 %i.at, 36064                    ; 2 uses
  %i.av = ptrtoint ptr %.pre76 to i64
  %i.aw = ptrtoint ptr %.pre78 to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = ashr exact i64 %i.ax, 2
  %i.az = icmp ugt i64 %i.ay, %indvars.iv
  br i1 %i.az, label %_ZN4core5arrayIjEixEj.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #36
  unreachable

_ZN4core5arrayIjEixEj.exit:                       ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.pre78, i64 %indvars.iv
  store i32 %i.au, ptr %i.ba, align 4, !tbaa !192
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 108
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !449
  switch i32 %i.bc, label %bb.l [
    i32 0, label %_ZN4core5arrayIjEixEj.exit52
    i32 1, label %bb.i
    i32 2, label %bb.j
  ]

bb.i:                                             ; preds = %_ZN4core5arrayIjEixEj.exit
  br label %_ZN4core5arrayIjEixEj.exit52

bb.j:                                             ; preds = %_ZN4core5arrayIjEixEj.exit
  %i.bd = load ptr, ptr %i.ab, align 8, !tbaa !556
  %i.be = load ptr, ptr %i.aa, align 8, !tbaa !557 ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 2
  %i.bj = icmp ugt i64 %i.bi, %indvars.iv
  br i1 %i.bj, label %_ZN4core5arrayIN5video14E_CUBE_SURFACEEEixEj.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN5video14E_CUBE_SURFACEEEixEj) #36
  unreachable

_ZN4core5arrayIN5video14E_CUBE_SURFACEEEixEj.exit: ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !558
  %i.bm = add nsw i32 %i.bl, 34069
  br label %_ZN4core5arrayIjEixEj.exit52

bb.l:                                             ; preds = %_ZN4core5arrayIjEixEj.exit
  %i.bn = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull @.str.140)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @__cxa_throw(ptr nonnull %i.bn, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #38
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

_ZN4core5arrayIjEixEj.exit52:                     ; preds = %bb.i, %_ZN4core5arrayIN5video14E_CUBE_SURFACEEEixEj.exit, %_ZN4core5arrayIjEixEj.exit
  %.036 = phi i32 [ %i.bm, %_ZN4core5arrayIN5video14E_CUBE_SURFACEEEixEj.exit ], [ 37120, %bb.i ], [ 3553, %_ZN4core5arrayIjEixEj.exit ]
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 2216), align 8, !tbaa !560
  tail call void %i.bp(i32 noundef 36160, i32 noundef %i.au, i32 noundef %.036, i32 noundef %i.as, i32 noundef 0), !inline_history !561
  %i.bq = load ptr, ptr %i.ac, align 8, !tbaa !348
  %i.br = tail call noundef zeroext i1 @_ZN5video18COpenGL3DriverBase11testGLErrorEPKci(ptr noundef nonnull align 8 dereferenceable(2528) %i.bq, ptr noundef nonnull @.str.102, i32 noundef 191) ; 0 uses
  br label %bb.p

.thread:                                          ; preds = %_ZN4core5arrayIPN5video8ITextureEEixEj.exit..thread_crit_edge, %bb.f
  %i.bs = phi ptr [ %.pre77, %_ZN4core5arrayIPN5video8ITextureEEixEj.exit..thread_crit_edge ], [ %.pre78, %bb.f ] ; 2 uses
  %i.bt = phi ptr [ %.pre, %_ZN4core5arrayIPN5video8ITextureEEixEj.exit..thread_crit_edge ], [ %.pre76, %bb.f ]
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.bs to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 2
  %i.by = icmp ugt i64 %i.bx, %indvars.iv
  br i1 %i.by, label %_ZN4core5arrayIjEixEj.exit53, label %bb.o

bb.o:                                             ; preds = %.thread
  tail call void @__assert_fail(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #36
  unreachable

_ZN4core5arrayIjEixEj.exit53:                     ; preds = %.thread
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !192
  %.not48 = icmp eq i32 %i.ca, 0
  br i1 %.not48, label %bb.p, label %_ZN4core5arrayIjEixEj.exit55

_ZN4core5arrayIjEixEj.exit55:                     ; preds = %_ZN4core5arrayIjEixEj.exit53
  store i32 0, ptr %i.bz, align 4, !tbaa !192
  %i.cb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 2216), align 8, !tbaa !560
  tail call void %i.cb(i32 noundef 36160, i32 noundef 0, i32 noundef 3553, i32 noundef 0, i32 noundef 0), !inline_history !561
  tail call void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.141, i32 noundef 3)
  br label %bb.p

bb.p:                                             ; preds = %_ZN4core5arrayIjEixEj.exit53, %_ZN4core5arrayIjEixEj.exit55, %_ZN4core5arrayIjEixEj.exit52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader.loopexit, label %bb.d, !llvm.loop !562

._crit_edge:                                      ; preds = %bb.s, %.preheader
  store i8 0, ptr %i.c, align 2, !tbaa !555
  %.pre81 = load i8, ptr %i.f, align 1, !tbaa !563, !range !129
  br label %bb.t

.lr.ph71:                                         ; preds = %.lr.ph71.preheader, %bb.s
  %i.cc = phi ptr [ %i.ad, %.lr.ph71.preheader ], [ %i.cs, %bb.s ] ; 3 uses
  %i.cd = phi ptr [ %i.ae, %.lr.ph71.preheader ], [ %i.ct, %bb.s ] ; 2 uses
  %indvars.iv74 = phi i64 [ %umin, %.lr.ph71.preheader ], [ %indvars.iv.next75, %bb.s ] ; 5 uses
  %i.ce = phi i64 [ %.pre-phi86, %.lr.ph71.preheader ], [ %.pre-phi96, %bb.s ]
  %i.cf = ashr exact i64 %i.ce, 2
  %i.cg = icmp ugt i64 %i.cf, %indvars.iv74
  br i1 %i.cg, label %_ZN4core5arrayIjEixEj.exit56, label %bb.q

bb.q:                                             ; preds = %.lr.ph71
  tail call void @__assert_fail(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #36
  unreachable

_ZN4core5arrayIjEixEj.exit56:                     ; preds = %.lr.ph71
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv74
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !192 ; 2 uses
  %.not45 = icmp eq i32 %i.ci, 0
  br i1 %.not45, label %_ZN4core5arrayIjEixEj.exit56._crit_edge, label %_ZN4core5arrayIjEixEj.exit57

_ZN4core5arrayIjEixEj.exit56._crit_edge:          ; preds = %_ZN4core5arrayIjEixEj.exit56
  %.pre91 = ptrtoint ptr %i.cd to i64
  %.pre93 = ptrtoint ptr %i.cc to i64
  %.pre95 = sub i64 %.pre91, %.pre93
  br label %bb.s

_ZN4core5arrayIjEixEj.exit57:                     ; preds = %_ZN4core5arrayIjEixEj.exit56
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 2216), align 8, !tbaa !560
  tail call void %i.cj(i32 noundef 36160, i32 noundef %i.ci, i32 noundef 3553, i32 noundef 0, i32 noundef 0), !inline_history !561
  %i.ck = load ptr, ptr %i.s, align 8, !tbaa !358 ; 2 uses
  %i.cl = load ptr, ptr %i.r, align 8, !tbaa !356 ; 3 uses
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn                    ; 2 uses
  %i.cp = ashr exact i64 %i.co, 2
  %i.cq = icmp ugt i64 %i.cp, %indvars.iv74
  br i1 %i.cq, label %_ZN4core5arrayIjEixEj.exit58, label %bb.r

bb.r:                                             ; preds = %_ZN4core5arrayIjEixEj.exit57
  tail call void @__assert_fail(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #36
  unreachable

_ZN4core5arrayIjEixEj.exit58:                     ; preds = %_ZN4core5arrayIjEixEj.exit57
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv74
  store i32 0, ptr %i.cr, align 4, !tbaa !192
  br label %bb.s

bb.s:                                             ; preds = %_ZN4core5arrayIjEixEj.exit56._crit_edge, %_ZN4core5arrayIjEixEj.exit58
  %.pre-phi96 = phi i64 [ %.pre95, %_ZN4core5arrayIjEixEj.exit56._crit_edge ], [ %i.co, %_ZN4core5arrayIjEixEj.exit58 ] ; 2 uses
  %i.cs = phi ptr [ %i.cc, %_ZN4core5arrayIjEixEj.exit56._crit_edge ], [ %i.cl, %_ZN4core5arrayIjEixEj.exit58 ]
  %i.ct = phi ptr [ %i.cd, %_ZN4core5arrayIjEixEj.exit56._crit_edge ], [ %i.ck, %_ZN4core5arrayIjEixEj.exit58 ]
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %i.cu = lshr exact i64 %.pre-phi96, 2
  %i.cv = and i64 %i.cu, 4294967295
  %i.cw = icmp samesign ult i64 %indvars.iv.next75, %i.cv
  br i1 %i.cw, label %.lr.ph71, label %._crit_edge, !llvm.loop !564

bb.t:                                             ; preds = %._crit_edge, %bb.b
  %i.cx = phi i8 [ %.pre81, %._crit_edge ], [ %i.g, %bb.b ]
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.u, label %bb.am

bb.u:                                             ; preds = %bb.t
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !565 ; 4 uses
  %.not = icmp eq ptr %i.da, null
  br i1 %.not, label %.thread65, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 96
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !446 ; 2 uses
  %.off.i = add i32 %i.dc, -15
  %switch.i = icmp ult i32 %.off.i, 4
  br i1 %switch.i, label %bb.w, label %.thread65

bb.w:                                             ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 108
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !449
  switch i32 %i.de, label %bb.y [
    i32 0, label %bb.ab
    i32 1, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  %i.df = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.df, ptr noundef nonnull @.str.140)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void @__cxa_throw(ptr nonnull %i.df, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #38
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ab:                                            ; preds = %bb.w, %bb.x
  %.0 = phi i32 [ 37120, %bb.x ], [ 3553, %bb.w ] ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 124
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !302 ; 2 uses
  %i.dj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 2216), align 8, !tbaa !560
  tail call void %i.dj(i32 noundef 36160, i32 noundef 36096, i32 noundef %.0, i32 noundef %i.di, i32 noundef 0), !inline_history !561
  %i.dk = icmp eq i32 %i.dc, 18
  br i1 %i.dk, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 2216), align 8, !tbaa !560
  tail call void %i.dl(i32 noundef 36160, i32 noundef 36128, i32 noundef %.0, i32 noundef %i.di, i32 noundef 0), !inline_history !561
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 1, ptr %i.dm, align 1, !tbaa !566
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 2 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !566, !range !129, !noundef !130
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 2216), align 8, !tbaa !560
  tail call void %i.dq(i32 noundef 36160, i32 noundef 36128, i32 noundef %.0, i32 noundef 0, i32 noundef 0), !inline_history !561
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  store i8 0, ptr %i.dn, align 1, !tbaa !566
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ac
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 1, ptr %i.dr, align 8, !tbaa !567
  br label %bb.al

.thread65:                                        ; preds = %bb.u, %bb.v
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.dt = load i8, ptr %i.ds, align 8, !tbaa !567, !range !129, !noundef !130
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.thread65
  %i.dv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 2216), align 8, !tbaa !560
  tail call void %i.dv(i32 noundef 36160, i32 noundef 36096, i32 noundef 3553, i32 noundef 0, i32 noundef 0), !inline_history !561
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.thread65
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !566, !range !129, !noundef !130
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 2216), align 8, !tbaa !560
  tail call void %i.dz(i32 noundef 36160, i32 noundef 36128, i32 noundef 3553, i32 noundef 0, i32 noundef 0), !inline_history !561
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  store i8 0, ptr %i.ds, align 8, !tbaa !567
  store i8 0, ptr %i.dw, align 1, !tbaa !566
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ag
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !348
  %i.ec = tail call noundef zeroext i1 @_ZN5video18COpenGL3DriverBase11testGLErrorEPKci(ptr noundef nonnull align 8 dereferenceable(2528) %i.eb, ptr noundef nonnull @.str.102, i32 noundef 268) ; 0 uses
  store i8 0, ptr %i.f, align 1, !tbaa !563
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.t
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !351
  %.not43 = icmp eq i32 %i.ee, 0
  br i1 %.not43, label %bb.au, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !355
  %.not44 = icmp eq i32 %i.eg, 0
  br i1 %.not44, label %bb.au, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !545
  %i.ek = load ptr, ptr %i.eh, align 8, !tbaa !546
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = lshr exact i64 %i.en, 3
  %i.ep = trunc i64 %i.eo to i32                  ; 2 uses
  switch i32 %i.ep, label %bb.aq [
    i32 0, label %bb.ap
    i32 1, label %bb.ar
  ]

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4, !tbaa !192
  %i.eq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 888), align 8, !tbaa !568
  call void %i.eq(i32 noundef 1, ptr noundef nonnull %i.b), !inline_history !569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.at

bb.aq:                                            ; preds = %bb.ao
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.es = load i32, ptr %i.er, align 4, !tbaa !352 ; 2 uses
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.ao, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 36064, ptr %i.a, align 4, !tbaa !192
  %i.eu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 888), align 8, !tbaa !568
  call void %i.eu(i32 noundef 1, ptr noundef nonnull %i.a), !inline_history !569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !358 ; 2 uses
  %i.ey = load ptr, ptr %i.ev, align 8, !tbaa !356 ; 3 uses
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = lshr exact i64 %i.fb, 2
  %i.fd = trunc i64 %i.fc to i32
  %i.fe = tail call i32 @llvm.umin.i32(i32 %i.ep, i32 %i.fd)
  %1 = tail call i32 @llvm.umin.i32(i32 %i.es, i32 %i.fe)
  %i.ff = icmp eq ptr %i.ey, %i.ex
  %spec.select.i = select i1 %i.ff, ptr null, ptr %i.ey
  %i.fg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 888), align 8, !tbaa !568
  tail call void %i.fg(i32 noundef %1, ptr noundef %spec.select.i), !inline_history !570
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as, %bb.ap
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !348
  %i.fj = call noundef zeroext i1 @_ZN5video18COpenGL3DriverBase11testGLErrorEPKci(ptr noundef nonnull align 8 dereferenceable(2528) %i.fi, ptr noundef nonnull @.str.102, i32 noundef 288) ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.a, %bb.am, %bb.an, %bb.at
  ret void

bb.av:                                            ; preds = %bb.aa, %bb.n
  %.sink = phi ptr [ %i.df, %bb.aa ], [ %i.bn, %bb.n ]
  %.pn = phi { ptr, i32 } [ %i.dg, %bb.aa ], [ %i.bo, %bb.n ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #34
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5video18COpenGL3DriverBase12clearBuffersEtNS_6SColorEfh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2528) %0, i16 noundef zeroext %1, i32 %2, float noundef %3, i8 noundef zeroext %4) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !209
  %i.e = load i8, ptr %i.d, align 1, !tbaa !126   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.g = load i8, ptr %i.f, align 8, !tbaa !214, !range !129, !noundef !130 ; 3 uses
  %i.h = zext i16 %1 to i32                       ; 3 uses
  %i.i = and i32 %i.h, 1
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ne i8 %i.e, 15
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !range !129
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.l
  br i1 %or.cond.i, label %bb.c, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 208), align 8, !tbaa !232
  tail call void %i.m(i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1), !inline_history !507
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !218
  %.not18.i = icmp eq i32 %i.o, 0
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  store i8 0, ptr %i.j, align 8, !tbaa !210
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.c ] ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !209
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv.i
  store i8 15, ptr %i.q, align 1, !tbaa !126
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.r = load i32, ptr %i.n, align 8, !tbaa !218
  %i.s = zext i32 %i.r to i64
  %i.t = icmp samesign ult i64 %indvars.iv.next.i, %i.s
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !508

_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit: ; preds = %bb.b, %._crit_edge.i
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 176), align 8, !tbaa !571
  %i.v = lshr i32 %2, 24
  %i.w = lshr i32 %2, 8
  %i.x = lshr i32 %2, 16
  %i.y = insertelement <4 x i32> poison, i32 %i.x, i64 0
  %i.z = insertelement <4 x i32> %i.y, i32 %i.w, i64 1
  %i.aa = insertelement <4 x i32> %i.z, i32 %2, i64 2
  %i.ab = insertelement <4 x i32> %i.aa, i32 %i.v, i64 3
  %i.ac = and <4 x i32> %i.ab, <i32 255, i32 255, i32 255, i32 -1>
  %i.ad = uitofp <4 x i32> %i.ac to <4 x float>
  %i.ae = fmul nnan <4 x float> %i.ad, splat (float f0x3B808081) ; 4 uses
  %i.af = extractelement <4 x float> %i.ae, i64 0
  %i.ag = extractelement <4 x float> %i.ae, i64 1
  %i.ah = extractelement <4 x float> %i.ae, i64 2
  %i.ai = extractelement <4 x float> %i.ae, i64 3
  tail call void %i.u(float noundef %i.af, float noundef %i.ag, float noundef %i.ah, float noundef %i.ai)
  br label %bb.d

bb.d:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit, %bb.a
  %.0 = phi i32 [ 16384, %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit ], [ 0, %bb.a ] ; 2 uses
  %i.aj = and i32 %i.h, 2
  %.not10 = icmp eq i32 %i.aj, 0
  br i1 %.not10, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 160 ; 2 uses
  %i.am = load i8, ptr %i.al, align 8, !tbaa !214, !range !129, !noundef !130
  %.not.i13.not = icmp eq i8 %i.am, 0
  br i1 %.not.i13.not, label %bb.f, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setDepthMaskEb.exit

bb.f:                                             ; preds = %bb.e
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 216), align 8, !tbaa !235
  tail call void %i.an(i8 noundef zeroext 1), !inline_history !504
  store i8 1, ptr %i.al, align 8, !tbaa !214
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setDepthMaskEb.exit

_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setDepthMaskEb.exit: ; preds = %bb.e, %bb.f
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 3192), align 8, !tbaa !190
  tail call void %i.ao(float noundef %3)
  %i.ap = or disjoint i32 %.0, 256
  br label %bb.g

bb.g:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setDepthMaskEb.exit, %bb.d
  %.1 = phi i32 [ %i.ap, %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setDepthMaskEb.exit ], [ %.0, %bb.d ] ; 3 uses
  %i.aq = and i32 %i.h, 4
  %.not11 = icmp eq i32 %i.aq, 0
  br i1 %.not11, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.g
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 184), align 8, !tbaa !572
  %i.as = zext i8 %4 to i32
  tail call void %i.ar(i32 noundef %i.as)
  %i.at = or i32 %.1, 1024
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not12 = icmp eq i32 %.1, 0
  br i1 %.not12, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h
  %.230 = phi i32 [ %i.at, %.thread ], [ %.1, %bb.h ]
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 168), align 8, !tbaa !573
  tail call void %i.au(i32 noundef %.230)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !28  ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 136 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !209
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !126
  %.not.i14 = icmp ne i8 %i.ay, %i.e
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 144 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8, !range !129
  %i.bb = trunc nuw i8 %i.ba to i1
  %or.cond.i15 = select i1 %.not.i14, i1 true, i1 %i.bb
  br i1 %or.cond.i15, label %bb.k, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit21

bb.k:                                             ; preds = %bb.j
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 208), align 8, !tbaa !232
  %i.bd = lshr i8 %i.e, 1
  %.lobit.i = and i8 %i.bd, 1
  %i.be = lshr i8 %i.e, 2
  %.lobit11.i = and i8 %i.be, 1
  %i.bf = lshr i8 %i.e, 3
  %.lobit13.i = and i8 %i.bf, 1
  %i.bg = and i8 %i.e, 1
  tail call void %i.bc(i8 noundef zeroext %.lobit.i, i8 noundef zeroext %.lobit11.i, i8 noundef zeroext %.lobit13.i, i8 noundef zeroext %i.bg), !inline_history !507
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 72 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !218
  %.not18.i16 = icmp eq i32 %i.bi, 0
  br i1 %.not18.i16, label %._crit_edge.i20, label %.lr.ph.i17

._crit_edge.i20:                                  ; preds = %.lr.ph.i17, %bb.k
  store i8 0, ptr %i.az, align 8, !tbaa !210
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !28
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit21

.lr.ph.i17:                                       ; preds = %bb.k, %.lr.ph.i17
  %indvars.iv.i18 = phi i64 [ %indvars.iv.next.i19, %.lr.ph.i17 ], [ 0, %bb.k ] ; 2 uses
  %i.bj = load ptr, ptr %i.aw, align 8, !tbaa !209
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.i18
  store i8 %i.e, ptr %i.bk, align 1, !tbaa !126
  %indvars.iv.next.i19 = add nuw nsw i64 %indvars.iv.i18, 1 ; 2 uses
  %i.bl = load i32, ptr %i.bh, align 8, !tbaa !218
  %i.bm = zext i32 %i.bl to i64
  %i.bn = icmp samesign ult i64 %indvars.iv.next.i19, %i.bm
  br i1 %i.bn, label %.lr.ph.i17, label %._crit_edge.i20, !llvm.loop !508

_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit21: ; preds = %bb.j, %._crit_edge.i20
  %i.bo = phi ptr [ %i.av, %bb.j ], [ %.pre, %._crit_edge.i20 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 160 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !214, !range !129, !noundef !130
  %.not.i22 = icmp eq i8 %i.bq, %i.g
  br i1 %.not.i22, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setDepthMaskEb.exit23, label %bb.l

bb.l:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit21
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 216), align 8, !tbaa !235
  tail call void %i.br(i8 noundef zeroext %i.g), !inline_history !504
  store i8 %i.g, ptr %i.bp, align 8, !tbaa !214
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setDepthMaskEb.exit23

_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setDepthMaskEb.exit23: ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit21, %bb.l
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN5video18COpenGL3DriverBase16createScreenShotENS_13ECOLOR_FORMATENS_15E_RENDER_TARGETE(ptr noundef nonnull align 8 dereferenceable(2528) %0, i32 %1, i32 noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %bb.b [
    i32 5, label %_ZNK17IReferenceCounted4dropEv.exit
    i32 2, label %_ZNK17IReferenceCounted4dropEv.exit
    i32 1, label %_ZNK17IReferenceCounted4dropEv.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #37 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 4 uses
  invoke void @_ZN5video6CImageC1ENS_13ECOLOR_FORMATERKN4core11dimension2dIjEE(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.c

end_hunk_2
begin_hunk_3_@_ZN5video18COpenGLCoreTextureINS_18COpenGL3DriverBaseEED2Ev:bb.a
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !126
  %i.ay = add i64 %i.ax, 1
  tail call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #33
  br label %_ZN5video8ITextureD2Ev.exit

_ZN5video8ITextureD2Ev.exit:                      ; preds = %_ZN4core6stringIcED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i
  ret void

.lr.ph:                                           ; preds = %_ZNK17IReferenceCounted4dropEv.exit, %_ZNK17IReferenceCounted4dropEv.exit7
  %.sroa.08.013 = phi ptr [ %i.bl, %_ZNK17IReferenceCounted4dropEv.exit7 ], [ %i.x, %_ZNK17IReferenceCounted4dropEv.exit ] ; 2 uses
  %i.az = load ptr, ptr %.sroa.08.013, align 8, !tbaa !460 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !13
  %i.bb = getelementptr i8, ptr %i.ba, i64 -24
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds i8, ptr %i.az, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !153 ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  tail call void @__assert_fail(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #36
  unreachable

bb.j:                                             ; preds = %.lr.ph
  %i.bh = add nsw i32 %i.bf, -1                   ; 2 uses
  store i32 %i.bh, ptr %i.be, align 8, !tbaa !153
  %.not.i6 = icmp eq i32 %i.bh, 0
  br i1 %.not.i6, label %bb.k, label %_ZNK17IReferenceCounted4dropEv.exit7

bb.k:                                             ; preds = %bb.j
  %i.bi = load ptr, ptr %i.bd, align 8, !tbaa !13
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(12) %i.bd) #34, !inline_history !169
  br label %_ZNK17IReferenceCounted4dropEv.exit7

_ZNK17IReferenceCounted4dropEv.exit7:             ; preds = %bb.j, %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8 ; 2 uses
  %.not11 = icmp eq ptr %i.bl, %i.z
  br i1 %.not11, label %._crit_edge.loopexit, label %.lr.ph

bb.l:                                             ; preds = %bb.b
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  tail call void @__clang_call_terminate(ptr %i.bn) #36
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #5

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #27

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_Driver.cpp() #22 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 40, ptr @_ZN5videoL10vtStandardE, align 8, !tbaa !439
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN5videoL10vtStandardE, i64 8), i8 0, i64 24, i1 false)
  %i.a = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #37
          to label %__cxx_global_var_init.exit unwind label %bb.b ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL10vtStandardE, i64 8), align 8, !tbaa !8 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i4.i.i, label %common.resume, label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sink17.in = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN5videoL9vt2DImageE, i64 24), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @_ZN5videoL10vtTangentsE, i64 24), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @_ZN5videoL10vt2TCoordsE, i64 24), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @_ZN5videoL10vtStandardE, i64 24), %bb.b ], [ getelementptr inbounds nuw (i8, ptr @_ZN5videoL11vtPrimitiveE, i64 24), %bb.f ]
  %.sink16 = phi ptr [ %i.u, %bb.e ], [ %i.p, %bb.d ], [ %i.k, %bb.c ], [ %i.c, %bb.b ], [ %i.z, %bb.f ] ; 2 uses
  %common.resume.op.ph = phi { ptr, i32 } [ %i.t, %bb.e ], [ %i.o, %bb.d ], [ %i.j, %bb.c ], [ %i.b, %bb.b ], [ %i.y, %bb.f ]
  %.sink17 = load ptr, ptr %.sink17.in, align 8, !tbaa !12
  %i.d = ptrtoint ptr %.sink17 to i64
  %i.e = ptrtoint ptr %.sink16 to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink16, i64 noundef %i.f) #33
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.e ], [ %i.b, %bb.b ], [ %i.j, %bb.c ], [ %i.o, %bb.d ], [ %i.y, %bb.f ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

__cxx_global_var_init.exit:                       ; preds = %bb.a
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL10vtStandardE, i64 8), align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  store ptr %i.g, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL10vtStandardE, i64 24), align 8, !tbaa !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %i.a, ptr noundef nonnull align 4 dereferenceable(80) @constinit, i64 80, i1 false)
  store ptr %i.g, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL10vtStandardE, i64 16), align 8, !tbaa !649
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5video10VertexTypeD2Ev, ptr nonnull @_ZN5videoL10vtStandardE, ptr nonnull @__dso_handle) #34 ; 0 uses
  store i32 48, ptr @_ZN5videoL10vt2TCoordsE, align 8, !tbaa !439
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN5videoL10vt2TCoordsE, i64 8), i8 0, i64 24, i1 false)
  %i.i = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #37
          to label %__cxx_global_var_init.1.exit unwind label %bb.c ; 3 uses

bb.c:                                             ; preds = %__cxx_global_var_init.exit
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL10vt2TCoordsE, i64 8), align 8, !tbaa !8 ; 2 uses
  %.not.i.i4.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i4.i.i1, label %common.resume, label %common.resume.sink.split

__cxx_global_var_init.1.exit:                     ; preds = %__cxx_global_var_init.exit
  store ptr %i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL10vt2TCoordsE, i64 8), align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 2 uses
  store ptr %i.l, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL10vt2TCoordsE, i64 24), align 8, !tbaa !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %i.i, ptr noundef nonnull align 4 dereferenceable(80) @constinit.2, i64 80, i1 false)
  store ptr %i.l, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL10vt2TCoordsE, i64 16), align 8, !tbaa !649
  %i.m = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5video10VertexTypeD2Ev, ptr nonnull @_ZN5videoL10vt2TCoordsE, ptr nonnull @__dso_handle) #34 ; 0 uses
  store i32 64, ptr @_ZN5videoL10vtTangentsE, align 8, !tbaa !439
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN5videoL10vtTangentsE, i64 8), i8 0, i64 24, i1 false)
  %i.n = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #37
          to label %__cxx_global_var_init.3.exit unwind label %bb.d ; 3 uses

bb.d:                                             ; preds = %__cxx_global_var_init.1.exit
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL10vtTangentsE, i64 8), align 8, !tbaa !8 ; 2 uses
  %.not.i.i4.i.i3 = icmp eq ptr %i.p, null
  br i1 %.not.i.i4.i.i3, label %common.resume, label %common.resume.sink.split

__cxx_global_var_init.3.exit:                     ; preds = %__cxx_global_var_init.1.exit
  store ptr %i.n, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL10vtTangentsE, i64 8), align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 96 ; 2 uses
  store ptr %i.q, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL10vtTangentsE, i64 24), align 8, !tbaa !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %i.n, ptr noundef nonnull align 4 dereferenceable(96) @constinit.4, i64 96, i1 false)
  store ptr %i.q, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL10vtTangentsE, i64 16), align 8, !tbaa !649
  %i.r = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5video10VertexTypeD2Ev, ptr nonnull @_ZN5videoL10vtTangentsE, ptr nonnull @__dso_handle) #34 ; 0 uses
  store i32 40, ptr @_ZN5videoL9vt2DImageE, align 8, !tbaa !439
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN5videoL9vt2DImageE, i64 8), i8 0, i64 24, i1 false)
  %i.s = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #37
          to label %__cxx_global_var_init.5.exit unwind label %bb.e ; 3 uses

bb.e:                                             ; preds = %__cxx_global_var_init.3.exit
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL9vt2DImageE, i64 8), align 8, !tbaa !8 ; 2 uses
  %.not.i.i4.i.i5 = icmp eq ptr %i.u, null
  br i1 %.not.i.i4.i.i5, label %common.resume, label %common.resume.sink.split

__cxx_global_var_init.5.exit:                     ; preds = %__cxx_global_var_init.3.exit
  store ptr %i.s, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL9vt2DImageE, i64 8), align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 48 ; 2 uses
  store ptr %i.v, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL9vt2DImageE, i64 24), align 8, !tbaa !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.s, ptr noundef nonnull align 4 dereferenceable(48) @constinit.6, i64 48, i1 false)
  store ptr %i.v, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL9vt2DImageE, i64 16), align 8, !tbaa !649
  %i.w = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5video10VertexTypeD2Ev, ptr nonnull @_ZN5videoL9vt2DImageE, ptr nonnull @__dso_handle) #34 ; 0 uses
  store i32 40, ptr @_ZN5videoL11vtPrimitiveE, align 8, !tbaa !439
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN5videoL11vtPrimitiveE, i64 8), i8 0, i64 24, i1 false)
  %i.x = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #37
          to label %__cxx_global_var_init.7.exit unwind label %bb.f ; 3 uses

bb.f:                                             ; preds = %__cxx_global_var_init.5.exit
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL11vtPrimitiveE, i64 8), align 8, !tbaa !8 ; 2 uses
  %.not.i.i4.i.i7 = icmp eq ptr %i.z, null
  br i1 %.not.i.i4.i.i7, label %common.resume, label %common.resume.sink.split

__cxx_global_var_init.7.exit:                     ; preds = %__cxx_global_var_init.5.exit
  store ptr %i.x, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL11vtPrimitiveE, i64 8), align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  store ptr %i.aa, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL11vtPrimitiveE, i64 24), align 8, !tbaa !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.x, ptr noundef nonnull align 4 dereferenceable(32) @constinit.8, i64 32, i1 false)
  store ptr %i.aa, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL11vtPrimitiveE, i64 16), align 8, !tbaa !649
  %i.ab = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5video10VertexTypeD2Ev, ptr nonnull @_ZN5videoL11vtPrimitiveE, ptr nonnull @__dso_handle) #34 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #29

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #12 = { cold noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind memory(none) }
attributes #17 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #26 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { cold noreturn }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #33 = { builtin nounwind }
attributes #34 = { nounwind }
attributes #35 = { nounwind willreturn memory(read) }
attributes #36 = { noreturn nounwind }
attributes #37 = { builtin allocsize(0) }
attributes #38 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSNSt12_Vector_baseIN5video15VertexAttributeESaIS1_EE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!10 = !{!"p1 _ZTSN5video15VertexAttributeE", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!9, !10, i64 16}
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !7, i64 0}
!15 = !{!16, !18, i64 16}
!16 = !{!"_ZTSN5video18COpenGLCoreFeatureE", !17, i64 8, !17, i64 9, !6, i64 10, !6, i64 11, !6, i64 12, !18, i64 16}
!17 = !{!"bool", !6, i64 0}
!18 = !{!"long", !6, i64 0}
!19 = !{!20, !6, i64 32}
!20 = !{!"_ZTSN5video26COGLESCoreExtensionHandlerE", !16, i64 8, !6, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !21, i64 48, !6, i64 52, !6, i64 60, !17, i64 68, !6, i64 69}
!21 = !{!"float", !6, i64 0}
!22 = !{!20, !5, i64 36}
!23 = !{!20, !5, i64 40}
!24 = !{!20, !5, i64 44}
!25 = !{!21, !21, i64 0}
!26 = !{!27, !5, i64 88}
!27 = !{!"_ZTSN5video24COpenGL3ExtensionHandlerE", !20, i64 0, !17, i64 78, !17, i64 79, !17, i64 80, !17, i64 81, !17, i64 82, !17, i64 83, !17, i64 84, !5, i64 88}
!28 = !{!29, !107, i64 1040}
!29 = !{!"_ZTSN5video18COpenGL3DriverBaseE", !30, i64 0, !106, i64 936, !27, i64 944, !107, i64 1040, !108, i64 1048, !108, i64 1080, !112, i64 1112, !117, i64 1224, !17, i64 1228, !17, i64 1229, !6, i64 1230, !6, i64 1232, !119, i64 1688, !119, i64 1696, !119, i64 1704, !6, i64 1712, !120, i64 2160, !17, i64 2164, !108, i64 2168, !92, i64 2200, !92, i64 2328, !121, i64 2456, !17, i64 2464, !122, i64 2472, !99, i64 2496, !122, i64 2504}
!30 = !{!"_ZTSN5video11CNullDriverE", !31, i64 0, !32, i64 8, !33, i64 16, !39, i64 48, !45, i64 80, !52, i64 112, !53, i64 120, !52, i64 152, !59, i64 160, !60, i64 168, !66, i64 200, !72, i64 232, !78, i64 264, !83, i64 288, !84, i64 296, !85, i64 304, !59, i64 320, !87, i64 328, !88, i64 392, !5, i64 416, !5, i64 420, !21, i64 424, !21, i64 428, !21, i64 432, !89, i64 436, !90, i64 440, !91, i64 448, !92, i64 624, !92, i64 752, !17, i64 880, !105, i64 884, !17, i64 888, !17, i64 889, !17, i64 890, !6, i64 891}
!31 = !{!"_ZTSN5video12IVideoDriverE"}
!32 = !{!"_ZTSN5video23IGPUProgrammingServicesE"}
!33 = !{!"_ZTSN4core5arrayIN5video11CNullDriver8SSurfaceEEE", !34, i64 0, !17, i64 24}
!34 = !{!"_ZTSSt6vectorIN5video11CNullDriver8SSurfaceESaIS2_EE", !35, i64 0}
!35 = !{!"_ZTSSt12_Vector_baseIN5video11CNullDriver8SSurfaceESaIS2_EE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIN5video11CNullDriver8SSurfaceESaIS2_EE12_Vector_implE", !37, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseIN5video11CNullDriver8SSurfaceESaIS2_EE17_Vector_impl_dataE", !38, i64 0, !38, i64 8, !38, i64 16}
!38 = !{!"p1 _ZTSN5video11CNullDriver8SSurfaceE", !11, i64 0}
!39 = !{!"_ZTSN4core5arrayIN5video11CNullDriver9SOccQueryEEE", !40, i64 0, !17, i64 24}
!40 = !{!"_ZTSSt6vectorIN5video11CNullDriver9SOccQueryESaIS2_EE", !41, i64 0}
!41 = !{!"_ZTSSt12_Vector_baseIN5video11CNullDriver9SOccQueryESaIS2_EE", !42, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseIN5video11CNullDriver9SOccQueryESaIS2_EE12_Vector_implE", !43, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseIN5video11CNullDriver9SOccQueryESaIS2_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!44 = !{!"p1 _ZTSN5video11CNullDriver9SOccQueryE", !11, i64 0}
!45 = !{!"_ZTSN4core5arrayIPN5video13IRenderTargetEEE", !46, i64 0, !17, i64 24}
!46 = !{!"_ZTSSt6vectorIPN5video13IRenderTargetESaIS2_EE", !47, i64 0}
!47 = !{!"_ZTSSt12_Vector_baseIPN5video13IRenderTargetESaIS2_EE", !48, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseIPN5video13IRenderTargetESaIS2_EE12_Vector_implE", !49, i64 0}
!49 = !{!"_ZTSNSt12_Vector_baseIPN5video13IRenderTargetESaIS2_EE17_Vector_impl_dataE", !50, i64 0, !50, i64 8, !50, i64 16}
!50 = !{!"p2 _ZTSN5video13IRenderTargetE", !51, i64 0}
!51 = !{!"any p2 pointer", !11, i64 0}
!52 = !{!"p1 _ZTSN5video13IRenderTargetE", !11, i64 0}
!53 = !{!"_ZTSN4core5arrayIPN5video8ITextureEEE", !54, i64 0, !17, i64 24}
!54 = !{!"_ZTSSt6vectorIPN5video8ITextureESaIS2_EE", !55, i64 0}
!55 = !{!"_ZTSSt12_Vector_baseIPN5video8ITextureESaIS2_EE", !56, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseIPN5video8ITextureESaIS2_EE12_Vector_implE", !57, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIPN5video8ITextureESaIS2_EE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!58 = !{!"p2 _ZTSN5video8ITextureE", !51, i64 0}
!59 = !{!"_ZTSN4core11dimension2dIjEE", !5, i64 0, !5, i64 4}
!60 = !{!"_ZTSN4core5arrayIPN5video12IImageLoaderEEE", !61, i64 0, !17, i64 24}
!61 = !{!"_ZTSSt6vectorIPN5video12IImageLoaderESaIS2_EE", !62, i64 0}
!62 = !{!"_ZTSSt12_Vector_baseIPN5video12IImageLoaderESaIS2_EE", !63, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseIPN5video12IImageLoaderESaIS2_EE12_Vector_implE", !64, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseIPN5video12IImageLoaderESaIS2_EE17_Vector_impl_dataE", !65, i64 0, !65, i64 8, !65, i64 16}
!65 = !{!"p2 _ZTSN5video12IImageLoaderE", !51, i64 0}
!66 = !{!"_ZTSN4core5arrayIPN5video12IImageWriterEEE", !67, i64 0, !17, i64 24}
!67 = !{!"_ZTSSt6vectorIPN5video12IImageWriterESaIS2_EE", !68, i64 0}
!68 = !{!"_ZTSSt12_Vector_baseIPN5video12IImageWriterESaIS2_EE", !69, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseIPN5video12IImageWriterESaIS2_EE12_Vector_implE", !70, i64 0}
!70 = !{!"_ZTSNSt12_Vector_baseIPN5video12IImageWriterESaIS2_EE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!71 = !{!"p2 _ZTSN5video12IImageWriterE", !51, i64 0}
!72 = !{!"_ZTSN4core5arrayIN5video11CNullDriver17SMaterialRendererEEE", !73, i64 0, !17, i64 24}
!73 = !{!"_ZTSSt6vectorIN5video11CNullDriver17SMaterialRendererESaIS2_EE", !74, i64 0}
!74 = !{!"_ZTSSt12_Vector_baseIN5video11CNullDriver17SMaterialRendererESaIS2_EE", !75, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseIN5video11CNullDriver17SMaterialRendererESaIS2_EE12_Vector_implE", !76, i64 0}
!76 = !{!"_ZTSNSt12_Vector_baseIN5video11CNullDriver17SMaterialRendererESaIS2_EE17_Vector_impl_dataE", !77, i64 0, !77, i64 8, !77, i64 16}
!77 = !{!"p1 _ZTSN5video11CNullDriver17SMaterialRendererE", !11, i64 0}
!78 = !{!"_ZTSSt6vectorIPN5video11CNullDriver13SHWBufferLinkESaIS3_EE", !79, i64 0}
!79 = !{!"_ZTSSt12_Vector_baseIPN5video11CNullDriver13SHWBufferLinkESaIS3_EE", !80, i64 0}
!80 = !{!"_ZTSNSt12_Vector_baseIPN5video11CNullDriver13SHWBufferLinkESaIS3_EE12_Vector_implE", !81, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseIPN5video11CNullDriver13SHWBufferLinkESaIS3_EE17_Vector_impl_dataE", !82, i64 0, !82, i64 8, !82, i64 16}
!82 = !{!"p2 _ZTSN5video11CNullDriver13SHWBufferLinkE", !51, i64 0}
!83 = !{!"p1 _ZTSN2io11IFileSystemE", !11, i64 0}
!84 = !{!"p1 _ZTSN5scene16IMeshManipulatorE", !11, i64 0}
!85 = !{!"_ZTSN4core4rectIiEE", !86, i64 0, !86, i64 8}
!86 = !{!"_ZTSN4core8vector2dIiEE", !5, i64 0, !5, i64 4}
!87 = !{!"_ZTSN4core8CMatrix4IfEE", !6, i64 0}
!88 = !{!"_ZTSN5video11SFrameStatsE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!89 = !{!"_ZTSN5video6SColorE", !5, i64 0}
!90 = !{!"_ZTSN5video17SExposedVideoDataE", !6, i64 0}
!91 = !{!"_ZTSN5video17SOverrideMaterialE", !92, i64 0, !5, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !99, i64 144, !17, i64 146, !100, i64 152}
!92 = !{!"_ZTSN5video9SMaterialE", !6, i64 0, !93, i64 96, !89, i64 100, !21, i64 104, !21, i64 108, !21, i64 112, !21, i64 116, !21, i64 120, !94, i64 124, !95, i64 124, !96, i64 125, !97, i64 125, !17, i64 126, !17, i64 126, !98, i64 126, !17, i64 126, !17, i64 126, !17, i64 126, !17, i64 126}
!93 = !{!"_ZTSN5video15E_MATERIAL_TYPEE", !6, i64 0}
!94 = !{!"_ZTSN5video17E_COMPARISON_FUNCE", !6, i64 0}
!95 = !{!"_ZTSN5video20E_ANTI_ALIASING_MODEE", !6, i64 0}
!96 = !{!"_ZTSN5video13E_COLOR_PLANEE", !6, i64 0}
!97 = !{!"_ZTSN5video17E_BLEND_OPERATIONE", !6, i64 0}
!98 = !{!"_ZTSN5video8E_ZWRITEE", !6, i64 0}
!99 = !{!"short", !6, i64 0}
!100 = !{!"_ZTSSt6vectorIN5video17SOverrideMaterial24SMaterialTypeReplacementESaIS2_EE", !101, i64 0}
!101 = !{!"_ZTSSt12_Vector_baseIN5video17SOverrideMaterial24SMaterialTypeReplacementESaIS2_EE", !102, i64 0}
!102 = !{!"_ZTSNSt12_Vector_baseIN5video17SOverrideMaterial24SMaterialTypeReplacementESaIS2_EE12_Vector_implE", !103, i64 0}
!103 = !{!"_ZTSNSt12_Vector_baseIN5video17SOverrideMaterial24SMaterialTypeReplacementESaIS2_EE17_Vector_impl_dataE", !104, i64 0, !104, i64 8, !104, i64 16}
!104 = !{!"p1 _ZTSN5video17SOverrideMaterial24SMaterialTypeReplacementE", !11, i64 0}
!105 = !{!"_ZTSN5video10E_FOG_TYPEE", !6, i64 0}
!106 = !{!"_ZTSN5video25IMaterialRendererServicesE"}
!107 = !{!"p1 _ZTSN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEEE", !11, i64 0}
!108 = !{!"_ZTSN4core6stringIcEE", !109, i64 0}
!109 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !110, i64 0, !18, i64 8, !6, i64 16}
!110 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !111, i64 0}
!111 = !{!"p1 omnipotent char", !11, i64 0}
!112 = !{!"_ZTS27SIrrlichtCreationParameters", !113, i64 0, !114, i64 4, !59, i64 8, !86, i64 16, !6, i64 24, !6, i64 25, !17, i64 26, !17, i64 27, !6, i64 28, !17, i64 29, !17, i64 30, !6, i64 31, !17, i64 32, !17, i64 33, !17, i64 34, !115, i64 40, !11, i64 48, !116, i64 56, !11, i64 64, !108, i64 72, !17, i64 104}
!113 = !{!"_ZTS13E_DEVICE_TYPE", !6, i64 0}
!114 = !{!"_ZTSN5video13E_DRIVER_TYPEE", !6, i64 0}
!115 = !{!"p1 _ZTS14IEventReceiver", !11, i64 0}
!116 = !{!"_ZTS10ELOG_LEVEL", !6, i64 0}
!117 = !{!"_ZTSN5video13OpenGLVersionE", !118, i64 0, !6, i64 1, !6, i64 2, !6, i64 3}
!118 = !{!"_ZTSN5video10OpenGLSpecE", !6, i64 0}
!119 = !{!"p1 _ZTSN5video18COpenGL3Renderer2DE", !11, i64 0}
!120 = !{!"_ZTSN5video18COpenGL3DriverBase13E_RENDER_MODEE", !6, i64 0}
!121 = !{!"p1 _ZTSN5video15IContextManagerE", !11, i64 0}
!122 = !{!"_ZTSN5video15OGLBufferObjectE", !5, i64 0, !18, i64 8, !123, i64 16}
!123 = !{!"_ZTSN5video15OGLBufferObject6TargetE", !6, i64 0}
!124 = !{!110, !111, i64 0}
!125 = !{!109, !18, i64 8}
!126 = !{!6, !6, i64 0}
!127 = !{!109, !111, i64 0}
!128 = !{!112, !17, i64 104}
!129 = !{i8 0, i8 2}
!130 = !{}
!131 = !{!29, !17, i64 1228}
!132 = !{!29, !17, i64 1229}
!133 = !{!112, !6, i64 31}
!134 = !{!29, !6, i64 1230}
!135 = !{!136, !5, i64 0}
!136 = !{!"_ZTSN5video18COpenGL3DriverBase18STextureFormatInfoE", !5, i64 0, !5, i64 4, !5, i64 8, !11, i64 16}
!137 = !{!136, !5, i64 4}
!138 = !{!136, !5, i64 8}
!139 = !{!29, !120, i64 2160}
!140 = !{!29, !17, i64 2164}
!141 = !{!142, !143, i64 0}
!142 = !{!"_ZTSN5video14SMaterialLayerE", !143, i64 0, !6, i64 8, !6, i64 8, !6, i64 9, !144, i64 10, !145, i64 11, !6, i64 12, !6, i64 13, !146, i64 16}
!143 = !{!"p1 _ZTSN5video8ITextureE", !11, i64 0}
!144 = !{!"_ZTSN5video20E_TEXTURE_MIN_FILTERE", !6, i64 0}
!145 = !{!"_ZTSN5video20E_TEXTURE_MAG_FILTERE", !6, i64 0}
!146 = !{!"p1 _ZTSN4core8CMatrix4IfEE", !11, i64 0}
!147 = !{!29, !121, i64 2456}
!148 = !{!29, !17, i64 2464}
!149 = !{!122, !5, i64 0}
end_hunk_3
