Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/COpenGLDriver?download=true
inline.NumInlined: 2450
inline.NumDeleted: 748
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE20setBlendFuncSeparateEjjjj:bb.a
bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !199
  %i.l = load i32, ptr %i.k, align 4, !tbaa !161
  %.not30 = icmp ne i32 %i.l, %4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.n = load i8, ptr %i.m, align 1, !range !132
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond33 = select i1 %.not30, i1 true, i1 %i.o
  br i1 %or.cond33, label %bb.f, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !212  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 2520
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !463  ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 2512
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !464  ; 2 uses
  %.not9.i = icmp eq ptr %i.u, null
  br i1 %.not9.i, label %_ZN5video23COpenGLExtensionHandler22irrGlBlendFuncSeparateEjjjj.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.g, %bb.f
  %.sink.i = phi ptr [ %i.s, %bb.f ], [ %i.u, %bb.g ]
  tail call void %.sink.i(i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4), !inline_history !465
  br label %_ZN5video23COpenGLExtensionHandler22irrGlBlendFuncSeparateEjjjj.exit

_ZN5video23COpenGLExtensionHandler22irrGlBlendFuncSeparateEjjjj.exit: ; preds = %bb.g, %.sink.split.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !194
  %.not36 = icmp eq i32 %i.w, 0
  br i1 %.not36, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5video23COpenGLExtensionHandler22irrGlBlendFuncSeparateEjjjj.exit
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !196
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !197
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !198
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !199
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 5 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  store i32 %1, ptr %i.ae, align 4, !tbaa !161
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  store i32 %2, ptr %i.af, align 4, !tbaa !161
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv
  store i32 %3, ptr %i.ag, align 4, !tbaa !161
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv
  store i32 %4, ptr %i.ah, align 4, !tbaa !161
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = load i32, ptr %i.v, align 8, !tbaa !194
  %i.aj = zext i32 %i.ai to i64
  %i.ak = icmp samesign ult i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %bb.h, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit.sink.split, !llvm.loop !466

bb.i:                                             ; preds = %bb.a
  br i1 %.not.i34, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !197
  %i.an = load i32, ptr %i.am, align 4, !tbaa !161
  %.not18.i = icmp eq i32 %i.an, %2
  br i1 %.not18.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !198
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !161
  %.not19.i = icmp eq i32 %i.aq, %1
  br i1 %.not19.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !199
  %i.at = load i32, ptr %i.as, align 4, !tbaa !161
  %.not20.i = icmp ne i32 %i.at, %2
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.av = load i8, ptr %i.au, align 1, !range !132
  %i.aw = trunc nuw i8 %i.av to i1
  %or.cond.i = select i1 %.not20.i, i1 true, i1 %i.aw
  br i1 %or.cond.i, label %bb.m, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 256), align 8, !tbaa !200
  tail call void %i.ax(i32 noundef %1, i32 noundef %2), !inline_history !208
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !194
  %.not24.i = icmp eq i32 %i.az, 0
  br i1 %.not24.i, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !196
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !197
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !198
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !199
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.n ] ; 5 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.i
  store i32 %1, ptr %i.bh, align 4, !tbaa !161
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.i
  store i32 %2, ptr %i.bi, align 4, !tbaa !161
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.i
  store i32 %1, ptr %i.bj, align 4, !tbaa !161
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i
  store i32 %2, ptr %i.bk, align 4, !tbaa !161
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bl = load i32, ptr %i.ay, align 8, !tbaa !194
  %i.bm = zext i32 %i.bl to i64
  %i.bn = icmp samesign ult i64 %indvars.iv.next.i, %i.bm
  br i1 %i.bn, label %bb.n, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit.sink.split, !llvm.loop !210

_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit.sink.split: ; preds = %bb.h, %bb.n, %bb.m, %_ZN5video23COpenGLExtensionHandler22irrGlBlendFuncSeparateEjjjj.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 129
  store i8 0, ptr %i.bo, align 1, !tbaa !209
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit

_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit: ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit.sink.split, %bb.l, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 0, 777) i32 @_ZNK5video13COpenGLDriver10getGLBlendENS_14E_BLEND_FACTORE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(3992) %0, i8 noundef zeroext %1) local_unnamed_addr #12 align 2 {
bb.a:
  %switch.tableidx = add i8 %1, -1                ; 2 uses
  %i.a = icmp ult i8 %switch.tableidx, 10
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN5video40COpenGLMaterialRenderer_ONETEXTURE_BLEND13OnSetMaterialERKNS_9SMaterialES3_bPNS_25IMaterialRendererServicesE.10, i64 %i.b
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %switch.ext, %switch.lookup ]
  ret i32 %.0
}

declare void @glPolygonOffset(float noundef, float noundef) local_unnamed_addr #1

declare void @glLineWidth(float noundef) local_unnamed_addr #1

; Function Attrs: uwtable
define void @_ZThn936_N5video13COpenGLDriver20setBasicRenderStatesERKNS_9SMaterialES3_b(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(127) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(127) %2, i1 noundef zeroext %3) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -936
  tail call void @_ZN5video13COpenGLDriver20setBasicRenderStatesERKNS_9SMaterialES3_b(ptr noundef nonnull align 8 dereferenceable(3992) %i.a, ptr noundef nonnull align 8 dereferenceable(127) %1, ptr noundef nonnull align 8 dereferenceable(127) %2, i1 noundef zeroext %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5video13COpenGLDriver22setTextureRenderStatesERKNS_9SMaterialEb(ptr nofree noundef nonnull readonly align 8 dereferenceable(3992) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(127) %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [16 x float], align 16            ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1500
  %i.c = load i8, ptr %i.b, align 4, !tbaa !326
  %.fr175 = freeze i8 %i.c                        ; 2 uses
  %.not174177 = icmp eq i8 %.fr175, 0
  br i1 %.not174177, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3704
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2824 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3644
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3648
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3656
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3660
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3664
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3668
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3672
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3676
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3680
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3684
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 996 ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1281
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 126
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1279
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 946 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1282 ; 9 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1199 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1156 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1308 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1140 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1426 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1428 ; 3 uses
  %i.ak = zext i8 %.fr175 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE13STextureCache3getEj.exit.thread, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNK5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE13STextureCache3getEj.exit.thread
  %indvars.iv = phi i64 [ %i.ak, %.lr.ph ], [ %i.al, %_ZNK5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE13STextureCache3getEj.exit.thread ] ; 5 uses
  %i.al = add nsw i64 %indvars.iv, -1             ; 21 uses
  %i.am = load i32, ptr %i.d, align 8, !tbaa !129
  %i.an = load ptr, ptr %i.e, align 8, !tbaa !10  ; 3 uses
  %i.ao = icmp slt i64 %indvars.iv, 5
  br i1 %i.ao, label %_ZNK5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE13STextureCache3getEj.exit, label %_ZNK5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE13STextureCache3getEj.exit.thread

_ZNK5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE13STextureCache3getEj.exit: ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.al
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !170 ; 24 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %_ZNK5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE13STextureCache3getEj.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE13STextureCache3getEj.exit
  %i.as = add nuw nsw i64 %indvars.iv, 33983      ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 172 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !211
  %i.av = zext i32 %i.au to i64
  %.not.i = icmp eq i64 %i.as, %i.av
  br i1 %.not.i, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !212 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1512
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !213 ; 2 uses
  %.not.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i, label %bb.e, label %.sink.split.i.i

bb.e:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 1520
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !214 ; 2 uses
  %.not3.i.i = icmp eq ptr %i.bb, null
  br i1 %.not3.i.i, label %._ZN5video23COpenGLExtensionHandler18irrGlActiveTextureEj.exit.i_crit_edge, label %.sink.split.i.i

._ZN5video23COpenGLExtensionHandler18irrGlActiveTextureEj.exit.i_crit_edge: ; preds = %bb.e
  %.pre220.a = trunc nuw nsw i64 %i.as to i32
  br label %_ZN5video23COpenGLExtensionHandler18irrGlActiveTextureEj.exit.i

.sink.split.i.i:                                  ; preds = %bb.e, %bb.d
  %.sink.i.i = phi ptr [ %i.az, %bb.d ], [ %i.bb, %bb.e ]
  %i.bc = trunc nuw nsw i64 %i.as to i32          ; 2 uses
  call void %.sink.i.i(i32 noundef %i.bc), !inline_history !215
  br label %_ZN5video23COpenGLExtensionHandler18irrGlActiveTextureEj.exit.i

_ZN5video23COpenGLExtensionHandler18irrGlActiveTextureEj.exit.i: ; preds = %._ZN5video23COpenGLExtensionHandler18irrGlActiveTextureEj.exit.i_crit_edge, %.sink.split.i.i
  %.pre-phi221 = phi i32 [ %.pre220.a, %._ZN5video23COpenGLExtensionHandler18irrGlActiveTextureEj.exit.i_crit_edge ], [ %i.bc, %.sink.split.i.i ]
  store i32 %.pre-phi221, ptr %i.at, align 4, !tbaa !211
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit

_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit: ; preds = %bb.c, %_ZN5video23COpenGLExtensionHandler18irrGlActiveTextureEj.exit.i
  %.wide = icmp eq i64 %i.al, 0
  br i1 %.wide, label %bb.f, label %switch.early.test

switch.early.test:                                ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit
  switch i32 %i.am, label %bb.y [
    i32 3, label %bb.f
    i32 0, label %bb.f
  ]

bb.f:                                             ; preds = %switch.early.test, %switch.early.test, %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 105
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !389, !range !132, !noundef !133
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = load ptr, ptr %i.e, align 8, !tbaa !10
  call void @_ZN5video19COpenGLCacheHandler13setMatrixModeEj(ptr noundef nonnull align 8 dereferenceable(216) %i.bg, i32 noundef 5890)
  br i1 %i.bf, label %bb.w, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %indvars.iv ; 19 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 2992 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 3040
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !116
  %i.bl = call noundef float @llvm.fabs.f32(float %i.bk)
  %i.bm = fcmp ugt float %i.bl, f0x358637BD
  br i1 %i.bm, label %_ZNK4core8CMatrix4IfE10isIdentityEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 3044
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !116
  %i.bp = call noundef float @llvm.fabs.f32(float %i.bo)
  %i.bq = fcmp ugt float %i.bp, f0x358637BD
  br i1 %i.bq, label %_ZNK4core8CMatrix4IfE10isIdentityEv.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 3048
  %i.bs = load float, ptr %i.br, align 8, !tbaa !116
  %i.bt = call noundef float @llvm.fabs.f32(float %i.bs)
  %i.bu = fcmp ugt float %i.bt, f0x358637BD
  br i1 %i.bu, label %_ZNK4core8CMatrix4IfE10isIdentityEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bh, i64 3052
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !116
  %i.bx = fadd float %i.bw, -1.000000e+00
  %i.by = call noundef float @llvm.fabs.f32(float %i.bx)
  %i.bz = fcmp ugt float %i.by, f0x358637BD
  br i1 %i.bz, label %_ZNK4core8CMatrix4IfE10isIdentityEv.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ca = load float, ptr %i.bi, align 8, !tbaa !116
  %i.cb = fadd float %i.ca, -1.000000e+00
  %i.cc = call noundef float @llvm.fabs.f32(float %i.cb)
  %i.cd = fcmp ugt float %i.cc, f0x358637BD
  br i1 %i.cd, label %_ZNK4core8CMatrix4IfE10isIdentityEv.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bh, i64 2996
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !116
  %i.cg = call noundef float @llvm.fabs.f32(float %i.cf)
  %i.ch = fcmp ugt float %i.cg, f0x358637BD
  br i1 %i.ch, label %_ZNK4core8CMatrix4IfE10isIdentityEv.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bh, i64 3000
  %i.cj = load float, ptr %i.ci, align 8, !tbaa !116
  %i.ck = call noundef float @llvm.fabs.f32(float %i.cj)
  %i.cl = fcmp ugt float %i.ck, f0x358637BD
  br i1 %i.cl, label %_ZNK4core8CMatrix4IfE10isIdentityEv.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bh, i64 3004
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !116
  %i.co = call noundef float @llvm.fabs.f32(float %i.cn)
  %i.cp = fcmp ugt float %i.co, f0x358637BD
  br i1 %i.cp, label %_ZNK4core8CMatrix4IfE10isIdentityEv.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bh, i64 3008
  %i.cr = load float, ptr %i.cq, align 8, !tbaa !116
  %i.cs = call noundef float @llvm.fabs.f32(float %i.cr)
  %i.ct = fcmp ugt float %i.cs, f0x358637BD
  br i1 %i.ct, label %_ZNK4core8CMatrix4IfE10isIdentityEv.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bh, i64 3012
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !116
  %i.cw = fadd float %i.cv, -1.000000e+00
  %i.cx = call noundef float @llvm.fabs.f32(float %i.cw)
  %i.cy = fcmp ugt float %i.cx, f0x358637BD
  br i1 %i.cy, label %_ZNK4core8CMatrix4IfE10isIdentityEv.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bh, i64 3016
  %i.da = load float, ptr %i.cz, align 8, !tbaa !116
  %i.db = call noundef float @llvm.fabs.f32(float %i.da)
  %i.dc = fcmp ugt float %i.db, f0x358637BD
  br i1 %i.dc, label %_ZNK4core8CMatrix4IfE10isIdentityEv.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bh, i64 3020
  %i.de = load float, ptr %i.dd, align 4, !tbaa !116
  %i.df = call noundef float @llvm.fabs.f32(float %i.de)
  %i.dg = fcmp ugt float %i.df, f0x358637BD
  br i1 %i.dg, label %_ZNK4core8CMatrix4IfE10isIdentityEv.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bh, i64 3024
  %i.di = load float, ptr %i.dh, align 8, !tbaa !116
  %i.dj = call noundef float @llvm.fabs.f32(float %i.di)
  %i.dk = fcmp ugt float %i.dj, f0x358637BD
  br i1 %i.dk, label %_ZNK4core8CMatrix4IfE10isIdentityEv.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bh, i64 3028
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !116
  %i.dn = call noundef float @llvm.fabs.f32(float %i.dm)
  %i.do = fcmp ugt float %i.dn, f0x358637BD
  br i1 %i.do, label %_ZNK4core8CMatrix4IfE10isIdentityEv.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bh, i64 3032
  %i.dq = load float, ptr %i.dp, align 8, !tbaa !116
  %i.dr = fadd float %i.dq, -1.000000e+00
  %i.ds = call noundef float @llvm.fabs.f32(float %i.dr)
  %i.dt = fcmp ugt float %i.ds, f0x358637BD
  br i1 %i.dt, label %_ZNK4core8CMatrix4IfE10isIdentityEv.exit.thread, label %_ZNK4core8CMatrix4IfE10isIdentityEv.exit

_ZNK4core8CMatrix4IfE10isIdentityEv.exit:         ; preds = %bb.u
  %i.du = getelementptr inbounds nuw i8, ptr %i.bh, i64 3036
  %i.dv = load float, ptr %i.du, align 4, !tbaa !116
  %i.dw = call noundef float @llvm.fabs.f32(float %i.dv)
  %i.dx = fcmp ugt float %i.dw, f0x358637BD
  br i1 %i.dx, label %_ZNK4core8CMatrix4IfE10isIdentityEv.exit.thread, label %bb.v

end_hunk_0
begin_hunk_1_@_ZN5video13COpenGLDriver22setTextureRenderStatesERKNS_9SMaterialEb:bb.a
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 13
  %.not134 = icmp eq i8 %i.hn, 0
  br i1 %.not134, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge182
  %i.hs = sitofp i8 %i.hn to float
  %i.ht = fmul nnan float %i.hs, 1.250000e-01     ; 2 uses
  %i.hu = load float, ptr %i.z, align 8, !tbaa !473 ; 3 uses
  %i.hv = fneg float %i.hu                        ; 2 uses
  %i.hw = fcmp olt float %i.ht, %i.hv
  %i.hx = select i1 %i.hw, float %i.hv, float %i.ht ; 2 uses
  %i.hy = fcmp olt float %i.hx, %i.hu
  %i.hz = select i1 %i.hy, float %i.hx, float %i.hu
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge182, %bb.ad
  %.sink = phi float [ %i.hz, %bb.ad ], [ 0.000000e+00, %._crit_edge182 ]
  call void @glTexParameterf(i32 noundef %i.hd, i32 noundef 34049, float noundef %.sink)
  %i.ia = load i8, ptr %i.hr, align 1, !tbaa !471
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ar, i64 204
  store i8 %i.ia, ptr %i.ib, align 4, !tbaa !472
  br label %bb.aj

bb.af:                                            ; preds = %bb.aa
  %i.ic = load i8, ptr %i.y, align 1, !tbaa !159, !range !132, !noundef !133
  %i.id = trunc nuw i8 %i.ic to i1
  br i1 %i.id, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.ie = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.al
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 13
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !471 ; 2 uses
  %.not132 = icmp eq i8 %i.ig, 0
  br i1 %.not132, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ih = sitofp i8 %i.ig to float
  %i.ii = fmul nnan float %i.ih, 1.250000e-01     ; 2 uses
  %i.ij = load float, ptr %i.z, align 8, !tbaa !473 ; 3 uses
  %i.ik = fneg float %i.ij                        ; 2 uses
  %i.il = fcmp olt float %i.ii, %i.ik
  %i.im = select i1 %i.il, float %i.ik, float %i.ii ; 2 uses
  %i.in = fcmp olt float %i.im, %i.ij
  %i.io = select i1 %i.in, float %i.im, float %i.ij
  call void @glTexEnvf(i32 noundef 34048, i32 noundef 34049, float noundef %i.io)
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  call void @glTexEnvf(i32 noundef 34048, i32 noundef 34049, float noundef 0.000000e+00)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.af, %bb.ai, %bb.ah, %bb.ac, %bb.ae
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ar, i64 209 ; 8 uses
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !470, !range !132, !noundef !133
  %i.ir = trunc nuw i8 %i.iq to i1
  %i.is = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.al
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 11
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !428 ; 3 uses
  br i1 %i.ir, label %bb.ak, label %._crit_edge184

bb.ak:                                            ; preds = %bb.aj
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ar, i64 207
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !474
  %.not135 = icmp eq i8 %i.iu, %i.iw
  br i1 %.not135, label %bb.an, label %._crit_edge184

._crit_edge184:                                   ; preds = %bb.aj, %bb.ak
  switch i8 %i.iu, label %bb.al [
    i8 0, label %bb.am
    i8 1, label %.fold.split
  ]

bb.al:                                            ; preds = %._crit_edge184
  call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.5, i32 noundef 1968, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5video13COpenGLDriver22setTextureRenderStatesERKNS_9SMaterialEb) #36
  unreachable

.fold.split:                                      ; preds = %._crit_edge184
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge184, %.fold.split
  %i.ix = phi i32 [ 9728, %._crit_edge184 ], [ 9729, %.fold.split ]
  call void @glTexParameteri(i32 noundef %i.hd, i32 noundef 10240, i32 noundef %i.ix)
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ar, i64 207
  store i8 %i.iu, ptr %i.iy, align 1, !tbaa !474
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak
  %i.iz = load i8, ptr %i.aa, align 2
  %i.ja = icmp slt i8 %i.iz, 0
  br i1 %i.ja, label %bb.ao, label %._crit_edge188

._crit_edge188:                                   ; preds = %bb.an
  %.pre189 = load i8, ptr %i.ip, align 1, !tbaa !470, !range !132
  br label %bb.at

bb.ao:                                            ; preds = %bb.an
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ar, i64 104
  %i.jc = load i8, ptr %i.jb, align 8, !tbaa !388, !range !132, !noundef !133
  %i.jd = trunc nuw i8 %i.jc to i1
  %.pre190 = load i8, ptr %i.ip, align 1, !tbaa !470, !range !132 ; 2 uses
  br i1 %i.jd, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %bb.ao
  %i.je = trunc nuw i8 %.pre190 to i1
  %i.jf = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.al
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 10
  %i.jh = load i8, ptr %i.jg, align 2, !tbaa !427 ; 4 uses
  br i1 %i.je, label %bb.aq, label %._crit_edge195

bb.aq:                                            ; preds = %bb.ap
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ar, i64 206
  %i.jj = load i8, ptr %i.ji, align 2, !tbaa !475
  %.not137 = icmp eq i8 %i.jh, %i.jj
  br i1 %.not137, label %bb.ar, label %._crit_edge195

bb.ar:                                            ; preds = %bb.aq
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ar, i64 208
  %i.jl = load i8, ptr %i.jk, align 8, !tbaa !476, !range !132, !noundef !133
  %i.jm = trunc nuw i8 %i.jl to i1
  br i1 %i.jm, label %bb.ax, label %._crit_edge195

._crit_edge195:                                   ; preds = %bb.ap, %bb.ar, %bb.aq
  %i.jn = icmp ult i8 %i.jh, 4
  br i1 %i.jn, label %switch.lookup, label %bb.as

bb.as:                                            ; preds = %._crit_edge195
  call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.5, i32 noundef 1980, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5video13COpenGLDriver22setTextureRenderStatesERKNS_9SMaterialEb) #36
  unreachable

switch.lookup:                                    ; preds = %._crit_edge195
  %switch.idx.cast = zext nneg i8 %i.jh to i32
  %switch.offset = or disjoint i32 %switch.idx.cast, 9984
  br label %.sink.split

bb.at:                                            ; preds = %._crit_edge188, %bb.ao
  %i.jo = phi i8 [ %.pre189, %._crit_edge188 ], [ %.pre190, %bb.ao ]
  %i.jp = trunc nuw i8 %i.jo to i1
  %i.jq = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.al
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 10
  %i.js = load i8, ptr %i.jr, align 2, !tbaa !427 ; 4 uses
  br i1 %i.jp, label %bb.au, label %._crit_edge191

bb.au:                                            ; preds = %bb.at
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ar, i64 206
  %i.ju = load i8, ptr %i.jt, align 2, !tbaa !475
  %.not136 = icmp eq i8 %i.js, %i.ju
  br i1 %.not136, label %bb.av, label %._crit_edge191

bb.av:                                            ; preds = %bb.au
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ar, i64 208
  %i.jw = load i8, ptr %i.jv, align 8, !tbaa !476, !range !132, !noundef !133
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %._crit_edge191, label %bb.ax

._crit_edge191:                                   ; preds = %bb.at, %bb.av, %bb.au
  %i.jy = and i8 %i.js, -3                        ; 2 uses
  switch i8 %i.jy, label %bb.aw [
    i8 0, label %.sink.split
    i8 1, label %.fold.split173
  ]

bb.aw:                                            ; preds = %._crit_edge191
  call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.5, i32 noundef 1990, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5video13COpenGLDriver22setTextureRenderStatesERKNS_9SMaterialEb) #36
  unreachable

.fold.split173:                                   ; preds = %._crit_edge191
  br label %.sink.split

.sink.split:                                      ; preds = %.fold.split173, %._crit_edge191, %switch.lookup
  %.sink241 = phi i32 [ %switch.offset, %switch.lookup ], [ 9728, %._crit_edge191 ], [ 9729, %.fold.split173 ]
  %.sink239 = phi i8 [ %i.jh, %switch.lookup ], [ %i.js, %._crit_edge191 ], [ %i.js, %.fold.split173 ]
  %.sink237 = phi i8 [ 1, %switch.lookup ], [ %i.jy, %._crit_edge191 ], [ 0, %.fold.split173 ]
  call void @glTexParameteri(i32 noundef %i.hd, i32 noundef 10241, i32 noundef %.sink241)
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ar, i64 206
  store i8 %.sink239, ptr %i.jz, align 2, !tbaa !475
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ar, i64 208
  store i8 %.sink237, ptr %i.ka, align 8, !tbaa !476
  br label %bb.ax

bb.ax:                                            ; preds = %.sink.split, %bb.av, %bb.ar
  %i.kb = load i8, ptr %i.ab, align 1, !tbaa !159, !range !132, !noundef !133
  %i.kc = trunc nuw i8 %i.kb to i1
  %.pre204.a = load i8, ptr %i.ip, align 1, !tbaa !470, !range !132 ; 2 uses
  br i1 %i.kc, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  %i.kd = trunc nuw i8 %.pre204.a to i1
  %i.ke = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.al
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 12
  %i.kg = load i8, ptr %i.kf, align 4, !tbaa !429 ; 3 uses
  br i1 %i.kd, label %bb.az, label %._crit_edge199

bb.az:                                            ; preds = %bb.ay
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ar, i64 205
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !477
  %.not138 = icmp eq i8 %i.kg, %i.ki
  br i1 %.not138, label %.thread, label %._crit_edge199

._crit_edge199:                                   ; preds = %bb.ay, %bb.az
  %i.kj = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.al
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 12 ; 2 uses
  %i.kl = icmp ugt i8 %i.kg, 1
  br i1 %i.kl, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %._crit_edge199
  %i.km = load i8, ptr %i.ac, align 2, !tbaa !115
  %3 = icmp ult i8 %i.km, %i.kg
  %4 = select i1 %3, ptr %i.ac, ptr %i.kk
  %5 = load i8, ptr %4, align 2, !tbaa !115
  %i.kn = zext i8 %5 to i32
  br label %bb.bb

bb.bb:                                            ; preds = %._crit_edge199, %bb.ba
  %i.ko = phi i32 [ %i.kn, %bb.ba ], [ 1, %._crit_edge199 ]
  call void @glTexParameteri(i32 noundef %i.hd, i32 noundef 34046, i32 noundef %i.ko)
  %i.kp = load i8, ptr %i.kk, align 4, !tbaa !429
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ar, i64 205
  store i8 %i.kp, ptr %i.kq, align 1, !tbaa !477
  %.pre203 = load i8, ptr %i.ip, align 1, !tbaa !470, !range !132
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ax
  %i.kr = phi i8 [ %.pre203, %bb.bb ], [ %.pre204.a, %bb.ax ]
  %i.ks = trunc nuw i8 %i.kr to i1
  br i1 %i.ks, label %.thread, label %._crit_edge205

._crit_edge205:                                   ; preds = %bb.bc
  %.phi.trans.insert206 = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.al
  %.phi.trans.insert207 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert206, i64 8
  %.pre208 = load i16, ptr %.phi.trans.insert207, align 8
  br label %bb.bd

.thread:                                          ; preds = %bb.az, %bb.bc
  %i.kt = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.al
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.kv = load i16, ptr %i.ku, align 8            ; 2 uses
  %i.kw = and i16 %i.kv, 15
  %i.kx = load i8, ptr %i.he, align 1, !tbaa !478
  %i.ky = zext i8 %i.kx to i16
  %.not139 = icmp eq i16 %i.kw, %i.ky
  br i1 %.not139, label %.thread235, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge205, %.thread
  %i.kz = phi i16 [ %.pre208, %._crit_edge205 ], [ %i.kv, %.thread ]
  %i.la = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.al
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.lc = trunc i16 %i.kz to i8
  %i.ld = and i8 %i.lc, 15
  switch i8 %i.ld, label %bb.bq [
    i8 7, label %bb.bp
    i8 1, label %bb.be
    i8 2, label %bb.bf
    i8 3, label %bb.bh
    i8 4, label %bb.bj
    i8 5, label %bb.bl
    i8 6, label %bb.bn
  ]

bb.be:                                            ; preds = %bb.bd
  br label %bb.bq

bb.bf:                                            ; preds = %bb.bd
  %i.le = load i16, ptr %i.x, align 4, !tbaa !319
  %i.lf = icmp ugt i16 %i.le, 101
  br i1 %i.lf, label %bb.bq, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lg = load i8, ptr %i.aj, align 4, !tbaa !159, !range !132, !noundef !133
  %i.lh = trunc nuw i8 %i.lg to i1
  %..i = select i1 %i.lh, i32 33071, i32 10496
  br label %bb.bq

bb.bh:                                            ; preds = %bb.bd
  %i.li = load i16, ptr %i.x, align 4, !tbaa !319
  %i.lj = icmp ugt i16 %i.li, 102
  %i.lk = load i8, ptr %i.ah, align 4, !range !132
  %i.ll = trunc nuw i8 %i.lk to i1
  %or.cond.i = select i1 %i.lj, i1 true, i1 %i.ll
  br i1 %or.cond.i, label %bb.bq, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.lm = load i8, ptr %i.ai, align 2, !tbaa !159, !range !132, !noundef !133
  %i.ln = trunc nuw i8 %i.lm to i1
  %.2.i = select i1 %i.ln, i32 33069, i32 10496
  br label %bb.bq

bb.bj:                                            ; preds = %bb.bd
  %i.lo = load i16, ptr %i.x, align 4, !tbaa !319
  %i.lp = icmp ugt i16 %i.lo, 103
  %i.lq = load i8, ptr %i.af, align 4, !range !132
  %i.lr = trunc nuw i8 %i.lq to i1
  %or.cond11.i = select i1 %i.lp, i1 true, i1 %i.lr
  br i1 %or.cond11.i, label %bb.bq, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ls = load i8, ptr %i.ag, align 4, !tbaa !159, !range !132, !noundef !133
  %i.lt = trunc nuw i8 %i.ls to i1
  %.3.i = select i1 %i.lt, i32 33648, i32 10497
  br label %bb.bq

bb.bl:                                            ; preds = %bb.bd
  %i.lu = load i8, ptr %i.ad, align 2, !tbaa !159, !range !132, !noundef !133
  %i.lv = trunc nuw i8 %i.lu to i1
  br i1 %i.lv, label %bb.bq, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.lw = load i8, ptr %i.ae, align 1, !tbaa !159, !range !132, !noundef !133
  %i.lx = trunc nuw i8 %i.lw to i1
  %.4.i = select i1 %i.lx, i32 34626, i32 10496
  br label %bb.bq

bb.bn:                                            ; preds = %bb.bd
  %i.ly = load i8, ptr %i.ad, align 2, !tbaa !159, !range !132, !noundef !133
  %i.lz = trunc nuw i8 %i.ly to i1
  br i1 %i.lz, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ma = load i8, ptr %i.ae, align 1, !tbaa !159, !range !132, !noundef !133
  %i.mb = trunc nuw i8 %i.ma to i1
  %.5.i = select i1 %i.mb, i32 34627, i32 10496
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bd
  %i.mc = load i8, ptr %i.ad, align 2, !tbaa !159, !range !132, !noundef !133
  %i.md = trunc nuw i8 %i.mc to i1
  %.6.i = select i1 %i.md, i32 35090, i32 10496
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd
  %.0.i146 = phi i32 [ %.4.i, %bb.bm ], [ 34626, %bb.bl ], [ 10496, %bb.be ], [ 10497, %bb.bd ], [ %..i, %bb.bg ], [ 33071, %bb.bf ], [ %.6.i, %bb.bp ], [ 33069, %bb.bh ], [ %.2.i, %bb.bi ], [ %.5.i, %bb.bo ], [ 34627, %bb.bn ], [ 33648, %bb.bj ], [ %.3.i, %bb.bk ]
  call void @glTexParameteri(i32 noundef %i.hd, i32 noundef 10242, i32 noundef %.0.i146)
  %i.me = load i16, ptr %i.lb, align 8
  %i.mf = trunc i16 %i.me to i8
  %i.mg = and i8 %i.mf, 15
  store i8 %i.mg, ptr %i.he, align 1, !tbaa !478
  %.pre209 = load i8, ptr %i.ip, align 1, !tbaa !470, !range !132
  %i.mh = trunc nuw i8 %.pre209 to i1
  br i1 %i.mh, label %.thread235, label %._crit_edge210

._crit_edge210:                                   ; preds = %bb.bq
  %.phi.trans.insert211 = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.al
  %.phi.trans.insert212 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert211, i64 8
  %.pre213 = load i16, ptr %.phi.trans.insert212, align 8
  br label %bb.br

.thread235:                                       ; preds = %.thread, %bb.bq
  %i.mi = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.al
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.mk = load i16, ptr %i.mj, align 8            ; 2 uses
  %i.ml = lshr i16 %i.mk, 4
  %i.mm = and i16 %i.ml, 15
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ar, i64 202
  %i.mo = load i8, ptr %i.mn, align 2, !tbaa !479
  %i.mp = zext i8 %i.mo to i16
  %.not140 = icmp eq i16 %i.mm, %i.mp
  br i1 %.not140, label %.thread236, label %bb.br

bb.br:                                            ; preds = %._crit_edge210, %.thread235
  %i.mq = phi i16 [ %.pre213, %._crit_edge210 ], [ %i.mk, %.thread235 ]
  %i.mr = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.al
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.mt = trunc i16 %i.mq to i8
  %i.mu = lshr i8 %i.mt, 4
  switch i8 %i.mu, label %bb.ce [
    i8 7, label %bb.cd
    i8 1, label %bb.bs
    i8 2, label %bb.bt
    i8 3, label %bb.bv
    i8 4, label %bb.bx
    i8 5, label %bb.bz
    i8 6, label %bb.cb
  ]

bb.bs:                                            ; preds = %bb.br
  br label %bb.ce

bb.bt:                                            ; preds = %bb.br
  %i.mv = load i16, ptr %i.x, align 4, !tbaa !319
  %i.mw = icmp ugt i16 %i.mv, 101
  br i1 %i.mw, label %bb.ce, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.mx = load i8, ptr %i.aj, align 4, !tbaa !159, !range !132, !noundef !133
  %i.my = trunc nuw i8 %i.mx to i1
  %..i154 = select i1 %i.my, i32 33071, i32 10496
  br label %bb.ce

bb.bv:                                            ; preds = %bb.br
  %i.mz = load i16, ptr %i.x, align 4, !tbaa !319
  %i.na = icmp ugt i16 %i.mz, 102
  %i.nb = load i8, ptr %i.ah, align 4, !range !132
  %i.nc = trunc nuw i8 %i.nb to i1
  %or.cond.i152 = select i1 %i.na, i1 true, i1 %i.nc
  br i1 %or.cond.i152, label %bb.ce, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.nd = load i8, ptr %i.ai, align 2, !tbaa !159, !range !132, !noundef !133
  %i.ne = trunc nuw i8 %i.nd to i1
  %.2.i153 = select i1 %i.ne, i32 33069, i32 10496
  br label %bb.ce

bb.bx:                                            ; preds = %bb.br
  %i.nf = load i16, ptr %i.x, align 4, !tbaa !319
  %i.ng = icmp ugt i16 %i.nf, 103
  %i.nh = load i8, ptr %i.af, align 4, !range !132
  %i.ni = trunc nuw i8 %i.nh to i1
  %or.cond11.i150 = select i1 %i.ng, i1 true, i1 %i.ni
  br i1 %or.cond11.i150, label %bb.ce, label %bb.by

bb.by:                                            ; preds = %bb.bx
end_hunk_1
begin_hunk_2_@_ZN5video13COpenGLDriver24addRenderTargetTextureMsERKN4core11dimension2dIjEEhRKNS1_6stringIcEENS_13ECOLOR_FORMATE:bb.a
  store i64 %.sroa.0.0.insert.insert.i21, ptr %5, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZNK4core11dimension2dIjE14getOptimalSizeEbbbj.exit27, %bb.a
  %i.aa = tail call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #35 ; 6 uses
  %.not17 = icmp ne i8 %2, 0
  %i.ab = zext i1 %.not17 to i32
  invoke void @_ZN5video18COpenGLCoreTextureINS_13COpenGLDriverEEC1ERKN4core6stringIcEERKNS3_11dimension2dIjEENS_14E_TEXTURE_TYPEENS_13ECOLOR_FORMATEPS1_h(ptr noundef nonnull align 8 dereferenceable(210) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(8) %5, i32 noundef %i.ab, i32 noundef %4, ptr noundef nonnull %0, i8 noundef zeroext %2)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @_ZN5video11CNullDriver10addTextureEPNS_8ITextureE(ptr noundef nonnull align 8 dereferenceable(933) %0, ptr noundef nonnull %i.aa)
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %i.aa, i64 %i.ae ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !143 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #36
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.aj = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.aj, ptr %i.ag, align 8, !tbaa !143
  %.not.i28 = icmp eq i32 %i.aj, 0
  br i1 %.not.i28, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(12) %i.af) #32, !inline_history !169
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 232) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  resume { ptr, i32 } %i.an

bb.j:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret ptr %i.aa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5video18COpenGLCoreTextureINS_13COpenGLDriverEEC1ERKN4core6stringIcEERKNS3_11dimension2dIjEENS_14E_TEXTURE_TYPEENS_13ECOLOR_FORMATEPS1_h(ptr noundef nonnull align 8 dereferenceable(210) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i8 noundef zeroext %6) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = alloca [200 x i8], align 16              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 1, ptr %i.d, align 8, !tbaa !143
  store ptr getelementptr inbounds nuw inrange(-24, 40) (i8, ptr @_ZTCN5video18COpenGLCoreTextureINS_13COpenGLDriverEEE0_NS_8ITextureE, i64 24), ptr %0, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN5video18COpenGLCoreTextureINS_13COpenGLDriverEEE0_NS_8ITextureE, i64 88), ptr %i.c, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2io10SNamedPathC2ERKN4core6stringIcEE(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.f, i8 0, i64 20, i1 false)
  store i32 19, ptr %i.g, align 4, !tbaa !385
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  store i32 19, ptr %i.h, align 8, !tbaa !386
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  store i32 0, ptr %i.i, align 4, !tbaa !387
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store i8 0, ptr %i.j, align 8, !tbaa !388
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 105 ; 2 uses
  store i8 0, ptr %i.k, align 1, !tbaa !389
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 4 uses
  store i32 %3, ptr %i.l, align 4, !tbaa !372
  store ptr getelementptr inbounds nuw inrange(-24, 40) (i8, ptr @_ZTVN5video18COpenGLCoreTextureINS_13COpenGLDriverEEE, i64 24), ptr %0, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5video18COpenGLCoreTextureINS_13COpenGLDriverEEE, i64 88), ptr %i.c, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 10 uses
  store ptr %5, ptr %i.m, align 8, !tbaa !390
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  store <4 x i32> <i32 3553, i32 0, i32 6408, i32 6408>, ptr %i.n, align 8, !tbaa !161
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  store i32 5121, ptr %i.r, align 8, !tbaa !391
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  store i8 %6, ptr %i.s, align 4, !tbaa !392
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !393
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 0, ptr %i.u, align 8, !tbaa !394
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr null, ptr %i.v, align 8, !tbaa !395
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 0, ptr %i.w, align 8, !tbaa !396
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i8 0, ptr %i.x, align 4, !tbaa !397
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 201
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(34) %i.y, i8 0, i64 34, i1 false)
  %i.aa = load ptr, ptr %5, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 664
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef i32 %i.ac(ptr noundef nonnull align 8 dereferenceable(3992) %5)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !340
  %i.af = load i32, ptr %i.l, align 4, !tbaa !372 ; 2 uses
  %.not = icmp eq i32 %i.af, 3
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.52, i32 noundef 143, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5video18COpenGLCoreTextureINS_13COpenGLDriverEEC1ERKN4core6stringIcEERKNS3_11dimension2dIjEENS_14E_TEXTURE_TYPEENS_13ECOLOR_FORMATEPS1_h) #36
  unreachable

bb.d:                                             ; preds = %bb.m, %bb.k, %bb.j, %bb.t, %bb.h, %bb.f, %bb.e, %bb.a
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.e:                                             ; preds = %bb.b
  %i.ah = invoke noundef i32 @_ZNK5video18COpenGLCoreTextureINS_13COpenGLDriverEE18TextureTypeIrrToGLENS_14E_TEXTURE_TYPEE(ptr noundef nonnull align 8 dereferenceable(210) %0, i32 noundef %i.af)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  store i32 %i.ah, ptr %i.n, align 8, !tbaa !345
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !390 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 552
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(933) %i.ai, i32 noundef 64)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.f
  %i.an = zext i1 %i.am to i8
  store i8 %i.an, ptr %i.j, align 8, !tbaa !388
  store i8 1, ptr %i.k, align 1, !tbaa !389
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !114
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %1, align 8, !tbaa !130
  invoke void @_ZN2os7Printer3logEPKcS2_10ELOG_LEVEL(ptr noundef nonnull @.str.54, ptr noundef %i.ar, i32 noundef 0)
          to label %bb.i unwind label %bb.d

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 %4, ptr %i.g, align 4, !tbaa !385
  %i.as = icmp eq i32 %4, 19
  br i1 %i.as, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.at = load ptr, ptr %i.m, align 8, !tbaa !390 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 552
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = invoke noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(933) %i.at, i32 noundef 1)
          to label %.noexc unwind label %bb.d, !inline_history !497

.noexc:                                           ; preds = %bb.j
  br i1 %i.ax, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc
  %i.ay = load ptr, ptr %i.m, align 8, !tbaa !390 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 552
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = invoke noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(933) %i.ay, i32 noundef 8)
          to label %.noexc25 unwind label %bb.d, !inline_history !497

.noexc25:                                         ; preds = %bb.k
  br i1 %i.bc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.noexc25, %.noexc
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.noexc25
  %. = phi i32 [ 2, %.noexc25 ], [ 1, %bb.l ]
  %.0.i = phi i32 [ 3, %.noexc25 ], [ 0, %bb.l ]
  %i.bd = load ptr, ptr %i.m, align 8, !tbaa !390 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 552
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull align 8 dereferenceable(933) %i.bd, i32 noundef 32)
          to label %.noexc26 unwind label %bb.d, !inline_history !497

.noexc26:                                         ; preds = %bb.m
  %.1.i = select i1 %i.bh, i32 %., i32 %.0.i
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %.noexc26
  %i.bi = phi i32 [ %.1.i, %.noexc26 ], [ %4, %bb.i ] ; 4 uses
  store i32 %i.bi, ptr %i.h, align 8, !tbaa !386
  %i.bj = load i64, ptr %2, align 4               ; 4 uses
  store i64 %i.bj, ptr %i.f, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store i64 %i.bj, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.bm = trunc i64 %i.bj to i32                  ; 4 uses
  %i.bn = lshr i64 %i.bj, 32
  %i.bo = trunc nuw i64 %i.bn to i32              ; 3 uses
  %i.bp = tail call i32 @llvm.umin.i32(i32 %i.bm, i32 %i.bo)
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %7 = icmp ult i32 %i.bm, %i.bo
  %8 = select i1 %7, ptr %i.bl, ptr %i.bk
  %9 = load i32, ptr %8, align 4, !tbaa !161
  %i.br = load ptr, ptr %i.m, align 8, !tbaa !390 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 952
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !498
  %i.bu = icmp ugt i32 %9, %i.bt
  br i1 %i.bu, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.bv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.61, i32 noundef %i.bm, i32 noundef %i.bo) #32 ; 0 uses
  invoke void @_ZN2os7Printer3logEPKcS2_10ELOG_LEVEL(ptr noundef nonnull @.str.102, ptr noundef nonnull %i.a, i32 noundef 3)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.an

bb.r:                                             ; preds = %bb.p
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.ap

bb.s:                                             ; preds = %bb.o
  %i.bx = icmp ult i32 %i.bi, 19
  br i1 %i.bx, label %switch.lookup, label %_ZN5video6IImage25getBitsPerPixelFromFormatENS_13ECOLOR_FORMATE.exit

switch.lookup:                                    ; preds = %bb.s
  %i.by = zext nneg i32 %i.bi to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN5video18COpenGLCoreTextureINS_13COpenGLDriverEE14getImageValuesEPKNS_6IImageE, i64 %i.by
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.bz = mul i32 %switch.ext, %i.bm
  %i.ca = lshr exact i32 %i.bz, 3
  br label %_ZN5video6IImage25getBitsPerPixelFromFormatENS_13ECOLOR_FORMATE.exit

_ZN5video6IImage25getBitsPerPixelFromFormatENS_13ECOLOR_FORMATE.exit: ; preds = %bb.s, %switch.lookup
  %.0.i27 = phi i32 [ %i.ca, %switch.lookup ], [ 0, %bb.s ]
  store i32 %.0.i27, ptr %i.i, align 4, !tbaa !387
  %i.cb = tail call noundef zeroext i1 @_ZNK5video13COpenGLDriver24getColorFormatParametersENS_13ECOLOR_FORMATERiRjS3_PPFvPKviPvE(ptr noundef nonnull align 8 dereferenceable(3992) %i.br, i32 noundef %i.bi, ptr noundef nonnull align 4 dereferenceable(4) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.r, ptr nonnull poison)
  br i1 %i.cb, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN5video6IImage25getBitsPerPixelFromFormatENS_13ECOLOR_FORMATE.exit
  %i.cc = load i32, ptr %i.h, align 8, !tbaa !386
  %i.cd = tail call i32 @llvm.smin.i32(i32 %i.cc, i32 19)
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr @_ZN5videoL16ColorFormatNamesE, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !325
  invoke void @_ZN2os7Printer3logEPKcS2_10ELOG_LEVEL(ptr noundef nonnull @.str.103, ptr noundef %i.cg, i32 noundef 3)
          to label %bb.an unwind label %bb.d

bb.u:                                             ; preds = %_ZN5video6IImage25getBitsPerPixelFromFormatENS_13ECOLOR_FORMATE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.ch = load i32, ptr %i.l, align 4, !tbaa !372
  %i.ci = load i32, ptr %i.bk, align 8, !tbaa !402
  %i.cj = load i32, ptr %i.bl, align 4, !tbaa !403
  %i.ck = load i8, ptr %i.s, align 4, !tbaa !392
  %i.cl = zext i8 %i.ck to i32
  %i.cm = load i32, ptr %i.h, align 8, !tbaa !386
  %i.cn = tail call i32 @llvm.smin.i32(i32 %i.cm, i32 19)
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr @_ZN5videoL16ColorFormatNamesE, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !325
  %i.cr = load i8, ptr %i.j, align 8, !tbaa !388, !range !132, !noundef !133
  %i.cs = trunc nuw i8 %i.cr to i1
  %i.ct = select i1 %i.cs, ptr @.str.56, ptr @.str.32
  %i.cu = load i32, ptr %i.p, align 8, !tbaa !401
  %i.cv = load i32, ptr %i.q, align 4, !tbaa !406
  %i.cw = load i32, ptr %i.r, align 8, !tbaa !391
  %i.cx = load ptr, ptr %i.t, align 8, !tbaa !393
  %.not18 = icmp eq ptr %i.cx, null
  %i.cy = select i1 %.not18, ptr @.str.32, ptr @.str.57
  %i.cz = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 200, ptr noundef nonnull @.str.104, i32 noundef %i.ch, i32 noundef %i.ci, i32 noundef %i.cj, i32 noundef %i.cl, ptr noundef %i.cq, ptr noundef nonnull %i.ct, i32 noundef %i.cu, i32 noundef %i.cv, i32 noundef %i.cw, ptr noundef nonnull %i.cy) #32 ; 0 uses
  invoke void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull %i.b, i32 noundef 0)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.da = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 536), align 8, !tbaa !411
  invoke void %i.da(i32 noundef 1, ptr noundef nonnull %i.o)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.db = load ptr, ptr %i.m, align 8, !tbaa !390
  %i.dc = invoke noundef zeroext i1 @_ZN5video13COpenGLDriver11testGLErrorEi(ptr noundef nonnull align 8 dereferenceable(3992) %i.db, i32 noundef 195)
          to label %bb.x unwind label %bb.z       ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.dd = load i32, ptr %i.o, align 4, !tbaa !357
  %.not19 = icmp eq i32 %i.dd, 0
  br i1 %.not19, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.58, i32 noundef 3)
          to label %bb.am unwind label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.v, %bb.u
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.aa:                                            ; preds = %bb.x
  %i.df = load ptr, ptr %i.m, align 8, !tbaa !390
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 2824
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !10 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !170
  %i.dl = invoke noundef zeroext i1 @_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE13STextureCache3setEjPKNS_8ITextureENS_17ESetTextureActiveE(ptr noundef nonnull align 8 dereferenceable(52) %i.di, i32 noundef 0, ptr noundef nonnull %0, i32 noundef 0)
          to label %bb.ab unwind label %bb.ai     ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.dm = load i32, ptr %i.l, align 4, !tbaa !372
  %.not20 = icmp eq i32 %i.dm, 1
  br i1 %.not20, label %bb.aj, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 128), align 8, !tbaa !412
  %i.do = load i32, ptr %i.n, align 8, !tbaa !345
  invoke void %i.dn(i32 noundef %i.do, i32 noundef 10241, i32 noundef 9728)
          to label %bb.ad unwind label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.dp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 128), align 8, !tbaa !412
  %i.dq = load i32, ptr %i.n, align 8, !tbaa !345
  invoke void %i.dp(i32 noundef %i.dq, i32 noundef 10240, i32 noundef 9728)
          to label %bb.ae unwind label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.dr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 128), align 8, !tbaa !412
  %i.ds = load i32, ptr %i.n, align 8, !tbaa !345
  invoke void %i.dr(i32 noundef %i.ds, i32 noundef 10242, i32 noundef 33071)
          to label %bb.af unwind label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.dt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 128), align 8, !tbaa !412
  %i.du = load i32, ptr %i.n, align 8, !tbaa !345
  invoke void %i.dt(i32 noundef %i.du, i32 noundef 10243, i32 noundef 33071)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.dv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 128), align 8, !tbaa !412
  %i.dw = load i32, ptr %i.n, align 8, !tbaa !345
  invoke void %i.dv(i32 noundef %i.dw, i32 noundef 32882, i32 noundef 33071)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i8 2, ptr %i.z, align 1, !tbaa !499
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 202
  store i8 2, ptr %i.dx, align 2, !tbaa !500
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 203
  store i8 2, ptr %i.dy, align 1, !tbaa !501
  br label %bb.aj

bb.ai:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.aa
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.aj:                                            ; preds = %bb.ah, %bb.ab
  invoke void @_ZN5video18COpenGLCoreTextureINS_13COpenGLDriverEE11initTextureEj(ptr noundef nonnull align 8 dereferenceable(210) %0, i32 noundef 0)
          to label %bb.ak unwind label %bb.ai

bb.ak:                                            ; preds = %bb.aj
  %i.ea = load ptr, ptr %i.m, align 8, !tbaa !390
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 2824
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !10
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = invoke noundef zeroext i1 @_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE13STextureCache3setEjPKNS_8ITextureENS_17ESetTextureActiveE(ptr noundef nonnull align 8 dereferenceable(52) %i.ed, i32 noundef 0, ptr noundef %i.dk, i32 noundef 0)
          to label %bb.al unwind label %bb.ai     ; 0 uses

bb.al:                                            ; preds = %bb.ak
  %i.ef = load ptr, ptr %i.m, align 8, !tbaa !390
  %i.eg = invoke noundef zeroext i1 @_ZN5video13COpenGLDriver11testGLErrorEi(ptr noundef nonnull align 8 dereferenceable(3992) %i.ef, i32 noundef 226)
          to label %bb.am unwind label %bb.ai     ; 0 uses

bb.am:                                            ; preds = %bb.al, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br label %bb.an

bb.an:                                            ; preds = %bb.t, %bb.am, %bb.q
  ret void

bb.ao:                                            ; preds = %bb.ai, %bb.z
  %.pn = phi { ptr, i32 } [ %i.dz, %bb.ai ], [ %i.de, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.r, %bb.d
  %.pn22 = phi { ptr, i32 } [ %i.bw, %bb.r ], [ %.pn, %bb.ao ], [ %i.ag, %bb.d ]
  %i.eh = load ptr, ptr %i.y, align 8, !tbaa !399 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN5video6IImageESaIS2_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !417
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = ptrtoint ptr %i.eh to i64
  %i.em = sub i64 %i.ek, %i.el
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.em) #31
  br label %_ZNSt6vectorIPN5video6IImageESaIS2_EED2Ev.exit

_ZNSt6vectorIPN5video6IImageESaIS2_EED2Ev.exit:   ; preds = %bb.ap, %bb.aq
  call void @_ZN5video8ITextureD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN5video18COpenGLCoreTextureINS_13COpenGLDriverEEE, i64 8)) #32
  resume { ptr, i32 } %.pn22
end_hunk_2
begin_hunk_3_@_ZN5video13COpenGLDriver17setRenderTargetExEPNS_13IRenderTargetEtNS_6SColorEfh:bb.a

_ZN4core5arrayIPN5video8ITextureEED2Ev.exit:      ; preds = %._crit_edge.thread, %._crit_edge, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1498
  %i.af = load i8, ptr %i.ae, align 2, !tbaa !494
  %.not36 = icmp eq i8 %i.af, 0                   ; 3 uses
  br i1 %.not, label %bb.r, label %bb.m

bb.m:                                             ; preds = %_ZN4core5arrayIPN5video8ITextureEED2Ev.exit
  br i1 %.not36, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2824
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !10 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !313 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 164 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !320
  %.not.i = icmp eq i32 %i.al, %i.aj
  br i1 %.not.i, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE6setFBOEj.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !212 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2072
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !513 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %bb.p, label %.sink.split.i.i

bb.p:                                             ; preds = %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 2160
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !514 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.ar, null
  br i1 %.not5.i.i, label %_ZN5video23COpenGLExtensionHandler20irrGlBindFramebufferEjj.exit.i, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.p, %bb.o
  %.sink.i.i = phi ptr [ %i.ap, %bb.o ], [ %i.ar, %bb.p ]
  tail call void %.sink.i.i(i32 noundef 36160, i32 noundef %i.aj), !inline_history !515
  br label %_ZN5video23COpenGLExtensionHandler20irrGlBindFramebufferEjj.exit.i

_ZN5video23COpenGLExtensionHandler20irrGlBindFramebufferEjj.exit.i: ; preds = %.sink.split.i.i, %bb.p
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !320
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE6setFBOEj.exit

_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE6setFBOEj.exit: ; preds = %bb.n, %_ZN5video23COpenGLExtensionHandler20irrGlBindFramebufferEjj.exit.i
  tail call void @_ZN5video23COpenGLCoreRenderTargetINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE6updateEv(ptr noundef nonnull align 8 dereferenceable(152) %1)
  br label %bb.q

bb.q:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE6setFBOEj.exit, %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.at = load i64, ptr %i.as, align 4            ; 2 uses
  %.sroa.053.0.extract.trunc55 = trunc i64 %i.at to i32 ; 2 uses
  %.sroa.8.0.extract.shift57 = lshr i64 %i.at, 32
  %.sroa.8.0.extract.trunc58 = trunc nuw i64 %.sroa.8.0.extract.shift57 to i32 ; 2 uses
  %i.au = load ptr, ptr %0, align 8, !tbaa !8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 960
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(3992) %0, i32 noundef %.sroa.053.0.extract.trunc55, i32 noundef %.sroa.8.0.extract.trunc58)
  br label %bb.z

bb.r:                                             ; preds = %_ZN4core5arrayIPN5video8ITextureEED2Ev.exit
  br i1 %.not36, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 2824
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !10 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 164 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !320
  %.not.i42 = icmp eq i32 %i.ba, 0
  br i1 %.not.i42, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE6setFBOEj.exit48, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !212 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 2072
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !513 ; 2 uses
  %.not.i.i43 = icmp eq ptr %i.be, null
  br i1 %.not.i.i43, label %bb.u, label %.sink.split.i.i44

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 2160
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !514 ; 2 uses
  %.not5.i.i47 = icmp eq ptr %i.bg, null
  br i1 %.not5.i.i47, label %_ZN5video23COpenGLExtensionHandler20irrGlBindFramebufferEjj.exit.i46, label %.sink.split.i.i44

.sink.split.i.i44:                                ; preds = %bb.u, %bb.t
  %.sink.i.i45 = phi ptr [ %i.be, %bb.t ], [ %i.bg, %bb.u ]
  tail call void %.sink.i.i45(i32 noundef 36160, i32 noundef 0), !inline_history !515
  br label %_ZN5video23COpenGLExtensionHandler20irrGlBindFramebufferEjj.exit.i46

_ZN5video23COpenGLExtensionHandler20irrGlBindFramebufferEjj.exit.i46: ; preds = %.sink.split.i.i44, %bb.u
  store i32 0, ptr %i.az, align 4, !tbaa !320
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE6setFBOEj.exit48

bb.v:                                             ; preds = %bb.r
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !505 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !506
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !507 ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 3 uses
  %i.bp = and i64 %i.bo, 34359738360
  %.not13.i = icmp eq i64 %i.bp, 0
  br i1 %.not13.i, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE6setFBOEj.exit48, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v
  %i.bq = lshr exact i64 %i.bo, 3
  %i.br = ashr exact i64 %i.bo, 3
  %wide.trip.count.i = and i64 %i.bq, 4294967295
  br label %bb.x

bb.w:                                             ; preds = %_ZNK4core5arrayIPN5video8ITextureEEixEj.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond15.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond15.not.i, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE6setFBOEj.exit48, label %bb.x, !llvm.loop !516

bb.x:                                             ; preds = %bb.w, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.w ] ; 3 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.br
  br i1 %exitcond.not.i, label %bb.y, label %_ZNK4core5arrayIPN5video8ITextureEEixEj.exit.i

bb.y:                                             ; preds = %bb.x
  tail call void @__assert_fail(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef 199, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4core5arrayIPN5video8ITextureEEixEj) #36
  unreachable

_ZNK4core5arrayIPN5video8ITextureEEixEj.exit.i:   ; preds = %bb.x
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.i
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !511 ; 4 uses
  %.not.i49 = icmp eq ptr %i.bt, null
  br i1 %.not.i49, label %bb.w, label %_ZNK5video23COpenGLCoreRenderTargetINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE10getTextureEv.exit

_ZNK5video23COpenGLCoreRenderTargetINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE10getTextureEv.exit: ; preds = %_ZNK4core5arrayIPN5video8ITextureEEixEj.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 2824 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !10 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !170
  %i.bz = tail call noundef zeroext i1 @_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE13STextureCache3setEjPKNS_8ITextureENS_17ESetTextureActiveE(ptr noundef nonnull align 8 dereferenceable(52) %i.bw, i32 noundef 0, ptr noundef nonnull %i.bt, i32 noundef 0) ; 0 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 80
  %.sroa.01.0.copyload = load i32, ptr %i.ca, align 4, !tbaa !161
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 84
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !161
  tail call void @glCopyTexSubImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %.sroa.01.0.copyload, i32 noundef %.sroa.4.0.copyload)
  %i.cb = load ptr, ptr %i.bu, align 8, !tbaa !10
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = tail call noundef zeroext i1 @_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE13STextureCache3setEjPKNS_8ITextureENS_17ESetTextureActiveE(ptr noundef nonnull align 8 dereferenceable(52) %i.cc, i32 noundef 0, ptr noundef %i.by, i32 noundef 0) ; 0 uses
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE6setFBOEj.exit48

_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE6setFBOEj.exit48: ; preds = %bb.w, %bb.v, %_ZN5video23COpenGLExtensionHandler20irrGlBindFramebufferEjj.exit.i46, %bb.s, %_ZNK5video23COpenGLCoreRenderTargetINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE10getTextureEv.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !517
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !518
  %i.ci = load ptr, ptr %0, align 8, !tbaa !8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 960
  %i.ck = load ptr, ptr %i.cj, align 8
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(3992) %0, i32 noundef %i.cf, i32 noundef %i.ch)
  br label %bb.z

bb.z:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE6setFBOEj.exit48, %bb.q
  %.sroa.053.0 = phi i32 [ 0, %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE6setFBOEj.exit48 ], [ %.sroa.053.0.extract.trunc55, %bb.q ] ; 2 uses
  %.sroa.8.0 = phi i32 [ 0, %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE6setFBOEj.exit48 ], [ %.sroa.8.0.extract.trunc58, %bb.q ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !323
  %i.cn = icmp ne i32 %i.cm, %.sroa.053.0
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = icmp ne i32 %i.cp, %.sroa.8.0
  %.not3.i = select i1 %i.cn, i1 true, i1 %i.cq
  br i1 %.not3.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %.sroa.8.0.insert.ext = zext i32 %.sroa.8.0 to i64
  %.sroa.8.0.insert.shift = shl nuw i64 %.sroa.8.0.insert.ext, 32
  %.sroa.053.0.insert.ext = zext i32 %.sroa.053.0 to i64
  %.sroa.053.0.insert.insert = or disjoint i64 %.sroa.8.0.insert.shift, %.sroa.053.0.insert.ext
  store i64 %.sroa.053.0.insert.insert, ptr %i.cl, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 3349
  store i8 1, ptr %i.cr, align 1, !tbaa !120
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  store ptr %1, ptr %i.c, align 8, !tbaa !505
  %i.cs = or i16 %2, 3
  %spec.select = select i1 %.not36, i16 %i.cs, i16 %2
  %i.ct = load ptr, ptr %0, align 8, !tbaa !8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 688
  %i.cv = load ptr, ptr %i.cu, align 8
  tail call void %i.cv(ptr noundef nonnull align 8 dereferenceable(3992) %0, i16 noundef zeroext %spec.select, i32 %3, float noundef %4, i8 noundef zeroext %5)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.c
  %.0 = phi i1 [ false, %bb.c ], [ true, %bb.ab ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5video23COpenGLCoreRenderTargetINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE6updateEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca i32, align 4                        ; 4 uses
  %2 = alloca i32, align 4                        ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 122 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2, !tbaa !519, !range !132, !noundef !133
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 123 ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !range !132  ; 2 uses
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.b, label %bb.ba

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.c, label %bb.x

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !506
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !507
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 3                   ; 2 uses
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !308  ; 2 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !309  ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = lshr exact i64 %i.v, 2                   ; 2 uses
  %i.x = trunc i64 %i.w to i32                    ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.o, i32 %i.x) ; 3 uses
  %.not110 = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not110, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %wide.trip.count = zext i32 %.sroa.speculated to i64
  br label %bb.d

.preheader.loopexit:                              ; preds = %bb.r
  %.pre118.a = load ptr, ptr %i.q, align 8, !tbaa !308 ; 2 uses
  %.pre119.a = load ptr, ptr %i.p, align 8, !tbaa !309 ; 2 uses
  %.pre123.a = ptrtoint ptr %.pre118.a to i64
  %.pre124.a = ptrtoint ptr %.pre119.a to i64
  %.pre126 = sub i64 %.pre123.a, %.pre124.a       ; 2 uses
  %.pre128 = lshr exact i64 %.pre126, 2
  %.pre130 = trunc i64 %.pre128 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.c
  %.pre-phi131 = phi i32 [ %.pre130, %.preheader.loopexit ], [ %i.x, %bb.c ]
  %.pre-phi127 = phi i64 [ %.pre126, %.preheader.loopexit ], [ %i.v, %bb.c ]
  %i.ab = phi ptr [ %.pre119.a, %.preheader.loopexit ], [ %i.s, %bb.c ]
  %i.ac = phi ptr [ %.pre118.a, %.preheader.loopexit ], [ %i.r, %bb.c ]
  %i.ad = icmp ult i32 %.sroa.speculated, %.pre-phi131
  br i1 %i.ad, label %.lr.ph109, label %._crit_edge

.lr.ph109:                                        ; preds = %.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.af = and i64 %i.n, 4294967295
  %i.ag = and i64 %i.w, 4294967295
  %umin = tail call i64 @llvm.umin.i64(i64 %i.af, i64 %i.ag)
  br label %bb.s

bb.d:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 10 uses
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !506
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !507 ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 3
  %i.an = icmp ugt i64 %i.am, %indvars.iv
  br i1 %i.an, label %_ZN4core5arrayIPN5video8ITextureEEixEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIPN5video8ITextureEEixEj) #36
  unreachable

_ZN4core5arrayIPN5video8ITextureEEixEj.exit:      ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !511 ; 3 uses
  %.not46 = icmp eq ptr %i.ap, null
  br i1 %.not46, label %_ZN4core5arrayIPN5video8ITextureEEixEj.exit..thread_crit_edge, label %bb.f

_ZN4core5arrayIPN5video8ITextureEEixEj.exit..thread_crit_edge: ; preds = %_ZN4core5arrayIPN5video8ITextureEEixEj.exit
  %.pre114 = load ptr, ptr %i.q, align 8, !tbaa !308
  %.pre116 = load ptr, ptr %i.p, align 8, !tbaa !309
  br label %.thread

bb.f:                                             ; preds = %_ZN4core5arrayIPN5video8ITextureEEixEj.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 124
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !357 ; 2 uses
  %.not47 = icmp eq i32 %i.ar, 0
  %.pre115 = load ptr, ptr %i.q, align 8, !tbaa !308 ; 2 uses
  %.pre117 = load ptr, ptr %i.p, align 8, !tbaa !309 ; 3 uses
  br i1 %.not47, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = trunc nuw i64 %indvars.iv to i32
  %i.at = add i32 %i.as, 36064                    ; 2 uses
  %i.au = ptrtoint ptr %.pre115 to i64
  %i.av = ptrtoint ptr %.pre117 to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 2
  %i.ay = icmp ugt i64 %i.ax, %indvars.iv
  br i1 %i.ay, label %_ZN4core5arrayIjEixEj.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #36
  unreachable

_ZN4core5arrayIjEixEj.exit:                       ; preds = %bb.g
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.pre117, i64 %indvars.iv
  store i32 %i.at, ptr %i.az, align 4, !tbaa !161
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 108
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !372
  switch i32 %i.bb, label %bb.l [
    i32 0, label %_ZN4core5arrayIjEixEj.exit52
    i32 1, label %bb.i
    i32 2, label %bb.j
  ]

bb.i:                                             ; preds = %_ZN4core5arrayIjEixEj.exit
  br label %_ZN4core5arrayIjEixEj.exit52

bb.j:                                             ; preds = %_ZN4core5arrayIjEixEj.exit
  %i.bc = load ptr, ptr %i.z, align 8, !tbaa !520
  %i.bd = load ptr, ptr %i.y, align 8, !tbaa !521 ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 2
  %i.bi = icmp ugt i64 %i.bh, %indvars.iv
  br i1 %i.bi, label %_ZN4core5arrayIN5video14E_CUBE_SURFACEEEixEj.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN5video14E_CUBE_SURFACEEEixEj) #36
  unreachable

_ZN4core5arrayIN5video14E_CUBE_SURFACEEEixEj.exit: ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !522
  %i.bl = add nsw i32 %i.bk, 34069
  br label %_ZN4core5arrayIjEixEj.exit52

bb.l:                                             ; preds = %_ZN4core5arrayIjEixEj.exit
  %i.bm = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull @.str.105)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @__cxa_throw(ptr nonnull %i.bm, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #33
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

_ZN4core5arrayIjEixEj.exit52:                     ; preds = %bb.i, %_ZN4core5arrayIN5video14E_CUBE_SURFACEEEixEj.exit, %_ZN4core5arrayIjEixEj.exit
  %.036 = phi i32 [ %i.bl, %_ZN4core5arrayIN5video14E_CUBE_SURFACEEEixEj.exit ], [ 37120, %bb.i ], [ 3553, %_ZN4core5arrayIjEixEj.exit ]
  %i.bo = load ptr, ptr %i.aa, align 8, !tbaa !302 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 2104
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !524 ; 2 uses
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %bb.o, label %.sink.split.i

bb.o:                                             ; preds = %_ZN4core5arrayIjEixEj.exit52
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 2192
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !525 ; 2 uses
  %.not11.i = icmp eq ptr %i.bs, null
  br i1 %.not11.i, label %_ZN5video23COpenGLExtensionHandler25irrGlFramebufferTexture2DEjjjji.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.o, %_ZN4core5arrayIjEixEj.exit52
  %.sink.i = phi ptr [ %i.bq, %_ZN4core5arrayIjEixEj.exit52 ], [ %i.bs, %bb.o ]
  tail call void %.sink.i(i32 noundef 36160, i32 noundef %i.at, i32 noundef %.036, i32 noundef %i.ar, i32 noundef 0), !inline_history !526
  %.pre = load ptr, ptr %i.aa, align 8, !tbaa !302
  br label %_ZN5video23COpenGLExtensionHandler25irrGlFramebufferTexture2DEjjjji.exit

_ZN5video23COpenGLExtensionHandler25irrGlFramebufferTexture2DEjjjji.exit: ; preds = %bb.o, %.sink.split.i
  %i.bt = phi ptr [ %i.bo, %bb.o ], [ %.pre, %.sink.split.i ]
  %i.bu = tail call noundef zeroext i1 @_ZN5video13COpenGLDriver11testGLErrorEi(ptr noundef nonnull align 8 dereferenceable(3992) %i.bt, i32 noundef 191) ; 0 uses
  br label %bb.r

.thread:                                          ; preds = %_ZN4core5arrayIPN5video8ITextureEEixEj.exit..thread_crit_edge, %bb.f
  %i.bv = phi ptr [ %.pre116, %_ZN4core5arrayIPN5video8ITextureEEixEj.exit..thread_crit_edge ], [ %.pre117, %bb.f ] ; 2 uses
  %i.bw = phi ptr [ %.pre114, %_ZN4core5arrayIPN5video8ITextureEEixEj.exit..thread_crit_edge ], [ %.pre115, %bb.f ]
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 2
  %i.cb = icmp ugt i64 %i.ca, %indvars.iv
  br i1 %i.cb, label %_ZN4core5arrayIjEixEj.exit53, label %bb.p

bb.p:                                             ; preds = %.thread
  tail call void @__assert_fail(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #36
end_hunk_3
begin_hunk_4_@_ZN5video23COpenGLCoreRenderTargetINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE6updateEv:bb.a
bb.x:                                             ; preds = %._crit_edge, %bb.b
  %i.di = phi i8 [ %.pre122, %._crit_edge ], [ %i.e, %bb.b ]
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.y, label %bb.as

bb.y:                                             ; preds = %bb.x
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !530 ; 4 uses
  %.not = icmp eq ptr %i.dl, null
  br i1 %.not, label %.thread103, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 96
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !386 ; 2 uses
  %.off.i = add i32 %i.dn, -15
  %switch.i = icmp ult i32 %.off.i, 4
  br i1 %switch.i, label %bb.aa, label %.thread103

bb.aa:                                            ; preds = %bb.z
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 108
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !372
  switch i32 %i.dp, label %bb.ac [
    i32 0, label %bb.af
    i32 1, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  br label %bb.af

bb.ac:                                            ; preds = %bb.aa
  %i.dq = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, ptr noundef nonnull @.str.105)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void @__cxa_throw(ptr nonnull %i.dq, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #33
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.af:                                            ; preds = %bb.aa, %bb.ab
  %.0 = phi i32 [ 37120, %bb.ab ], [ 3553, %bb.aa ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 124
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !357 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !302 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 2104
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !524 ; 2 uses
  %.not.i69 = icmp eq ptr %i.dx, null
  br i1 %.not.i69, label %bb.ag, label %.sink.split.i70

bb.ag:                                            ; preds = %bb.af
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 2192
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !525 ; 2 uses
  %.not11.i72 = icmp eq ptr %i.dz, null
  br i1 %.not11.i72, label %_ZN5video23COpenGLExtensionHandler25irrGlFramebufferTexture2DEjjjji.exit73, label %.sink.split.i70

.sink.split.i70:                                  ; preds = %bb.ag, %bb.af
  %.sink.i71 = phi ptr [ %i.dx, %bb.af ], [ %i.dz, %bb.ag ]
  tail call void %.sink.i71(i32 noundef 36160, i32 noundef 36096, i32 noundef %.0, i32 noundef %i.dt, i32 noundef 0), !inline_history !526
  br label %_ZN5video23COpenGLExtensionHandler25irrGlFramebufferTexture2DEjjjji.exit73

_ZN5video23COpenGLExtensionHandler25irrGlFramebufferTexture2DEjjjji.exit73: ; preds = %bb.ag, %.sink.split.i70
  %i.ea = icmp eq i32 %i.dn, 18
  br i1 %i.ea, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %_ZN5video23COpenGLExtensionHandler25irrGlFramebufferTexture2DEjjjji.exit73
  %i.eb = load ptr, ptr %i.du, align 8, !tbaa !302 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 2104
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !524 ; 2 uses
  %.not.i74 = icmp eq ptr %i.ed, null
  br i1 %.not.i74, label %bb.ai, label %.sink.split.i75

bb.ai:                                            ; preds = %bb.ah
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 2192
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !525 ; 2 uses
  %.not11.i77 = icmp eq ptr %i.ef, null
  br i1 %.not11.i77, label %_ZN5video23COpenGLExtensionHandler25irrGlFramebufferTexture2DEjjjji.exit78, label %.sink.split.i75

.sink.split.i75:                                  ; preds = %bb.ai, %bb.ah
  %.sink.i76 = phi ptr [ %i.ed, %bb.ah ], [ %i.ef, %bb.ai ]
  tail call void %.sink.i76(i32 noundef 36160, i32 noundef 36128, i32 noundef %.0, i32 noundef %i.dt, i32 noundef 0), !inline_history !526
  br label %_ZN5video23COpenGLExtensionHandler25irrGlFramebufferTexture2DEjjjji.exit78

_ZN5video23COpenGLExtensionHandler25irrGlFramebufferTexture2DEjjjji.exit78: ; preds = %bb.ai, %.sink.split.i75
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 1, ptr %i.eg, align 1, !tbaa !531
  br label %bb.am

bb.aj:                                            ; preds = %_ZN5video23COpenGLExtensionHandler25irrGlFramebufferTexture2DEjjjji.exit73
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 2 uses
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !531, !range !132, !noundef !133
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.ak, label %_ZN5video23COpenGLExtensionHandler25irrGlFramebufferTexture2DEjjjji.exit83

bb.ak:                                            ; preds = %bb.aj
  %i.ek = load ptr, ptr %i.du, align 8, !tbaa !302 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 2104
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !524 ; 2 uses
  %.not.i79 = icmp eq ptr %i.em, null
  br i1 %.not.i79, label %bb.al, label %.sink.split.i80

bb.al:                                            ; preds = %bb.ak
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 2192
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !525 ; 2 uses
  %.not11.i82 = icmp eq ptr %i.eo, null
  br i1 %.not11.i82, label %_ZN5video23COpenGLExtensionHandler25irrGlFramebufferTexture2DEjjjji.exit83, label %.sink.split.i80

.sink.split.i80:                                  ; preds = %bb.al, %bb.ak
  %.sink.i81 = phi ptr [ %i.em, %bb.ak ], [ %i.eo, %bb.al ]
  tail call void %.sink.i81(i32 noundef 36160, i32 noundef 36128, i32 noundef %.0, i32 noundef 0, i32 noundef 0), !inline_history !526
  br label %_ZN5video23COpenGLExtensionHandler25irrGlFramebufferTexture2DEjjjji.exit83

_ZN5video23COpenGLExtensionHandler25irrGlFramebufferTexture2DEjjjji.exit83: ; preds = %.sink.split.i80, %bb.al, %bb.aj
  store i8 0, ptr %i.eh, align 1, !tbaa !531
  br label %bb.am

bb.am:                                            ; preds = %_ZN5video23COpenGLExtensionHandler25irrGlFramebufferTexture2DEjjjji.exit83, %_ZN5video23COpenGLExtensionHandler25irrGlFramebufferTexture2DEjjjji.exit78
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 1, ptr %i.ep, align 8, !tbaa !532
  br label %bb.ar

.thread103:                                       ; preds = %bb.y, %bb.z
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.er = load i8, ptr %i.eq, align 8, !tbaa !532, !range !132, !noundef !133
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %bb.an, label %_ZN5video23COpenGLExtensionHandler25irrGlFramebufferTexture2DEjjjji.exit88

bb.an:                                            ; preds = %.thread103
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !302 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 2104
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !524 ; 2 uses
  %.not.i84 = icmp eq ptr %i.ew, null
  br i1 %.not.i84, label %bb.ao, label %.sink.split.i85

bb.ao:                                            ; preds = %bb.an
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 2192
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !525 ; 2 uses
  %.not11.i87 = icmp eq ptr %i.ey, null
  br i1 %.not11.i87, label %_ZN5video23COpenGLExtensionHandler25irrGlFramebufferTexture2DEjjjji.exit88, label %.sink.split.i85

.sink.split.i85:                                  ; preds = %bb.ao, %bb.an
  %.sink.i86 = phi ptr [ %i.ew, %bb.an ], [ %i.ey, %bb.ao ]
  tail call void %.sink.i86(i32 noundef 36160, i32 noundef 36096, i32 noundef 3553, i32 noundef 0, i32 noundef 0), !inline_history !526
  br label %_ZN5video23COpenGLExtensionHandler25irrGlFramebufferTexture2DEjjjji.exit88

_ZN5video23COpenGLExtensionHandler25irrGlFramebufferTexture2DEjjjji.exit88: ; preds = %.sink.split.i85, %bb.ao, %.thread103
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !531, !range !132, !noundef !133
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %bb.ap, label %_ZN5video23COpenGLExtensionHandler25irrGlFramebufferTexture2DEjjjji.exit93

bb.ap:                                            ; preds = %_ZN5video23COpenGLExtensionHandler25irrGlFramebufferTexture2DEjjjji.exit88
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !302 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 2104
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !524 ; 2 uses
  %.not.i89 = icmp eq ptr %i.ff, null
  br i1 %.not.i89, label %bb.aq, label %.sink.split.i90

bb.aq:                                            ; preds = %bb.ap
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 2192
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !525 ; 2 uses
  %.not11.i92 = icmp eq ptr %i.fh, null
  br i1 %.not11.i92, label %_ZN5video23COpenGLExtensionHandler25irrGlFramebufferTexture2DEjjjji.exit93, label %.sink.split.i90

.sink.split.i90:                                  ; preds = %bb.aq, %bb.ap
  %.sink.i91 = phi ptr [ %i.ff, %bb.ap ], [ %i.fh, %bb.aq ]
  tail call void %.sink.i91(i32 noundef 36160, i32 noundef 36128, i32 noundef 3553, i32 noundef 0, i32 noundef 0), !inline_history !526
  br label %_ZN5video23COpenGLExtensionHandler25irrGlFramebufferTexture2DEjjjji.exit93

_ZN5video23COpenGLExtensionHandler25irrGlFramebufferTexture2DEjjjji.exit93: ; preds = %.sink.split.i90, %bb.aq, %_ZN5video23COpenGLExtensionHandler25irrGlFramebufferTexture2DEjjjji.exit88
  store i8 0, ptr %i.eq, align 8, !tbaa !532
  store i8 0, ptr %i.ez, align 1, !tbaa !531
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN5video23COpenGLExtensionHandler25irrGlFramebufferTexture2DEjjjji.exit93, %bb.am
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !302
  %i.fk = tail call noundef zeroext i1 @_ZN5video13COpenGLDriver11testGLErrorEi(ptr noundef nonnull align 8 dereferenceable(3992) %i.fj, i32 noundef 268) ; 0 uses
  store i8 0, ptr %i.d, align 1, !tbaa !528
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.x
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !305
  %.not43 = icmp eq i32 %i.fm, 0
  br i1 %.not43, label %bb.ba, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !313
  %.not44 = icmp eq i32 %i.fo, 0
  br i1 %.not44, label %bb.ba, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !506
  %i.fs = load ptr, ptr %i.fp, align 8, !tbaa !507
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = lshr exact i64 %i.fv, 3
  %i.fx = trunc i64 %i.fw to i32                  ; 4 uses
  store i32 %i.fx, ptr %1, align 4, !tbaa !161
  switch i32 %i.fx, label %bb.aw [
    i32 0, label %bb.av
    i32 1, label %bb.ax
  ]

bb.av:                                            ; preds = %bb.au
  tail call void @glDrawBuffer(i32 noundef 0)
  br label %_ZN5video23COpenGLExtensionHandler16irrGlDrawBuffersEiPKj.exit

bb.aw:                                            ; preds = %bb.au
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !307 ; 2 uses
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.au, %bb.aw
  tail call void @glDrawBuffer(i32 noundef 36064)
  br label %_ZN5video23COpenGLExtensionHandler16irrGlDrawBuffersEiPKj.exit

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !308 ; 2 uses
  %i.ge = load ptr, ptr %i.gb, align 8, !tbaa !309 ; 3 uses
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = lshr exact i64 %i.gh, 2
  %i.gj = trunc i64 %i.gi to i32                  ; 3 uses
  store i32 %i.gj, ptr %2, align 4, !tbaa !161
  %3 = icmp ult i32 %i.fx, %i.gj
  %4 = select i1 %3, ptr %1, ptr %2
  %i.gk = tail call i32 @llvm.umin.i32(i32 %i.fx, i32 %i.gj)
  %5 = icmp ult i32 %i.fz, %i.gk
  %6 = select i1 %5, ptr %i.fy, ptr %4
  %7 = load i32, ptr %6, align 4, !tbaa !161
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !302 ; 2 uses
  %i.gn = icmp eq ptr %i.ge, %i.gd
  %spec.select.i = select i1 %i.gn, ptr null, ptr %i.ge
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 2256
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !533 ; 2 uses
  %.not.i94 = icmp eq ptr %i.gp, null
  br i1 %.not.i94, label %bb.az, label %.sink.split.i95

bb.az:                                            ; preds = %bb.ay
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 2264
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !534 ; 2 uses
  %.not5.i = icmp eq ptr %i.gr, null
  br i1 %.not5.i, label %_ZN5video23COpenGLExtensionHandler16irrGlDrawBuffersEiPKj.exit, label %.sink.split.i95

.sink.split.i95:                                  ; preds = %bb.az, %bb.ay
  %.sink.i96 = phi ptr [ %i.gp, %bb.ay ], [ %i.gr, %bb.az ]
  tail call void %.sink.i96(i32 noundef %7, ptr noundef %spec.select.i), !inline_history !535
  br label %_ZN5video23COpenGLExtensionHandler16irrGlDrawBuffersEiPKj.exit

_ZN5video23COpenGLExtensionHandler16irrGlDrawBuffersEiPKj.exit: ; preds = %.sink.split.i95, %bb.az, %bb.ax, %bb.av
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !302
  %i.gu = tail call noundef zeroext i1 @_ZN5video13COpenGLDriver11testGLErrorEi(ptr noundef nonnull align 8 dereferenceable(3992) %i.gt, i32 noundef 288) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.a, %bb.as, %bb.at, %_ZN5video23COpenGLExtensionHandler16irrGlDrawBuffersEiPKj.exit
  ret void

bb.bb:                                            ; preds = %bb.ae, %bb.n
  %.sink = phi ptr [ %i.dq, %bb.ae ], [ %i.bm, %bb.n ]
  %.pn = phi { ptr, i32 } [ %i.dr, %bb.ae ], [ %i.bn, %bb.n ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #32
  resume { ptr, i32 } %.pn
}

declare void @glCopyTexSubImage2D(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN5video13COpenGLDriver12clearBuffersEtNS_6SColorEfh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3992) %0, i16 noundef zeroext %1, i32 %2, float noundef %3, i8 noundef zeroext %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2824 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !457
  %i.e = load i8, ptr %i.d, align 1, !tbaa !115   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.g = load i8, ptr %i.f, align 8, !tbaa !449, !range !132, !noundef !133 ; 3 uses
  %i.h = zext i16 %1 to i32                       ; 3 uses
  %i.i = and i32 %i.h, 1
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ne i8 %i.e, 15
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !range !132
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.l
  br i1 %or.cond.i, label %bb.c, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 208), align 8, !tbaa !458
  tail call void %i.m(i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1), !inline_history !459
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !194
  %.not18.i = icmp eq i32 %i.o, 0
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  store i8 0, ptr %i.j, align 8, !tbaa !460
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.c ] ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !457
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv.i
  store i8 15, ptr %i.q, align 1, !tbaa !115
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.r = load i32, ptr %i.n, align 8, !tbaa !194
  %i.s = zext i32 %i.r to i64
  %i.t = icmp samesign ult i64 %indvars.iv.next.i, %i.s
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !461

_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit: ; preds = %bb.b, %._crit_edge.i
  %i.u = lshr i32 %2, 24
  %i.v = lshr i32 %2, 8
  %i.w = lshr i32 %2, 16
  %i.x = insertelement <4 x i32> poison, i32 %i.w, i64 0
  %i.y = insertelement <4 x i32> %i.x, i32 %i.v, i64 1
  %i.z = insertelement <4 x i32> %i.y, i32 %2, i64 2
  %i.aa = insertelement <4 x i32> %i.z, i32 %i.u, i64 3
  %i.ab = and <4 x i32> %i.aa, <i32 255, i32 255, i32 255, i32 -1>
  %i.ac = uitofp <4 x i32> %i.ab to <4 x float>
  %i.ad = fmul nnan <4 x float> %i.ac, splat (float f0x3B808081) ; 4 uses
  %i.ae = extractelement <4 x float> %i.ad, i64 0
  %i.af = extractelement <4 x float> %i.ad, i64 1
  %i.ag = extractelement <4 x float> %i.ad, i64 2
  %i.ah = extractelement <4 x float> %i.ad, i64 3
  tail call void @glClearColor(float noundef %i.ae, float noundef %i.af, float noundef %i.ag, float noundef %i.ah)
  br label %bb.d

bb.d:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit, %bb.a
  %.0 = phi i32 [ 16384, %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit ], [ 0, %bb.a ] ; 2 uses
  %i.ai = and i32 %i.h, 2
  %.not10 = icmp eq i32 %i.ai, 0
  br i1 %.not10, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 160 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !449, !range !132, !noundef !133
  %.not.i13.not = icmp eq i8 %i.al, 0
  br i1 %.not.i13.not, label %bb.f, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setDepthMaskEb.exit

bb.f:                                             ; preds = %bb.e
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 216), align 8, !tbaa !450
  tail call void %i.am(i8 noundef zeroext 1), !inline_history !451
  store i8 1, ptr %i.ak, align 8, !tbaa !449
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setDepthMaskEb.exit

_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setDepthMaskEb.exit: ; preds = %bb.e, %bb.f
  %i.an = fpext float %3 to double
  tail call void @glClearDepth(double noundef %i.an)
  %i.ao = or disjoint i32 %.0, 256
  br label %bb.g

bb.g:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setDepthMaskEb.exit, %bb.d
  %.1 = phi i32 [ %i.ao, %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setDepthMaskEb.exit ], [ %.0, %bb.d ] ; 3 uses
  %i.ap = and i32 %i.h, 4
  %.not11 = icmp eq i32 %i.ap, 0
  br i1 %.not11, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.g
  %i.aq = zext i8 %4 to i32
  tail call void @glClearStencil(i32 noundef %i.aq)
  %i.ar = or i32 %.1, 1024
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not12 = icmp eq i32 %.1, 0
  br i1 %.not12, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h
  %.230 = phi i32 [ %i.ar, %.thread ], [ %.1, %bb.h ]
  tail call void @glClear(i32 noundef %.230)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !10  ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 136 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !457
  %i.av = load i8, ptr %i.au, align 1, !tbaa !115
  %.not.i14 = icmp ne i8 %i.av, %i.e
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 144 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 8, !range !132
  %i.ay = trunc nuw i8 %i.ax to i1
  %or.cond.i15 = select i1 %.not.i14, i1 true, i1 %i.ay
  br i1 %or.cond.i15, label %bb.k, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit21

bb.k:                                             ; preds = %bb.j
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 208), align 8, !tbaa !458
  %i.ba = lshr i8 %i.e, 1
  %.lobit.i = and i8 %i.ba, 1
  %i.bb = lshr i8 %i.e, 2
  %.lobit11.i = and i8 %i.bb, 1
  %i.bc = lshr i8 %i.e, 3
  %.lobit13.i = and i8 %i.bc, 1
  %i.bd = and i8 %i.e, 1
  tail call void %i.az(i8 noundef zeroext %.lobit.i, i8 noundef zeroext %.lobit11.i, i8 noundef zeroext %.lobit13.i, i8 noundef zeroext %i.bd), !inline_history !459
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 72 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !194
  %.not18.i16 = icmp eq i32 %i.bf, 0
  br i1 %.not18.i16, label %._crit_edge.i20, label %.lr.ph.i17

._crit_edge.i20:                                  ; preds = %.lr.ph.i17, %bb.k
  store i8 0, ptr %i.aw, align 8, !tbaa !460
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !10
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit21

.lr.ph.i17:                                       ; preds = %bb.k, %.lr.ph.i17
  %indvars.iv.i18 = phi i64 [ %indvars.iv.next.i19, %.lr.ph.i17 ], [ 0, %bb.k ] ; 2 uses
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !457
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.i18
  store i8 %i.e, ptr %i.bh, align 1, !tbaa !115
  %indvars.iv.next.i19 = add nuw nsw i64 %indvars.iv.i18, 1 ; 2 uses
  %i.bi = load i32, ptr %i.be, align 8, !tbaa !194
  %i.bj = zext i32 %i.bi to i64
  %i.bk = icmp samesign ult i64 %indvars.iv.next.i19, %i.bj
  br i1 %i.bk, label %.lr.ph.i17, label %._crit_edge.i20, !llvm.loop !461

_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit21: ; preds = %bb.j, %._crit_edge.i20
  %i.bl = phi ptr [ %i.as, %bb.j ], [ %.pre, %._crit_edge.i20 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 160 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !449, !range !132, !noundef !133
  %.not.i22 = icmp eq i8 %i.bn, %i.g
  br i1 %.not.i22, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setDepthMaskEb.exit23, label %bb.l

bb.l:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit21
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 216), align 8, !tbaa !450
  tail call void %i.bo(i8 noundef zeroext %i.g), !inline_history !451
  store i8 %i.g, ptr %i.bm, align 8, !tbaa !449
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setDepthMaskEb.exit23

_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setDepthMaskEb.exit23: ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit21, %bb.l
  ret void
}

declare void @glClearColor(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @glClearStencil(i32 noundef) local_unnamed_addr #1

declare void @glClear(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN5video13COpenGLDriver16createScreenShotENS_13ECOLOR_FORMATENS_15E_RENDER_TARGETE(ptr noundef nonnull align 8 dereferenceable(3992) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %.not55 = icmp eq i32 %2, 0
  br i1 %.not55, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i32 %1, 19
  %spec.store.select = select i1 %i.a, i32 2, i32 %1 ; 3 uses
  %or.cond61 = icmp sgt i32 %spec.store.select, 3
end_hunk_4
begin_hunk_5_@_ZN5video18COpenGLCoreTextureINS_13COpenGLDriverEE10flipImageYEPNS_6IImageE:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02127, ptr align 1 %.02226, i64 %i.g, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02226, ptr align 1 %.sroa.023.0, i64 %i.g, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.02127, i64 %i.g
  %i.w = getelementptr inbounds i8, ptr %.02226, i64 %i.s
  %i.x = add i32 %.028, 2                         ; 2 uses
  %i.y = load i32, ptr %i.e, align 8, !tbaa !324
  %i.z = icmp ult i32 %i.x, %i.y
  br i1 %i.z, label %bb.d, label %._crit_edge, !llvm.loop !609
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5video18COpenGLCoreTextureINS_13COpenGLDriverEED2Ev(ptr noundef nonnull align 8 dereferenceable(210) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.a, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !357
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 528), align 8, !tbaa !610
  invoke void %i.i(i32 noundef 1, ptr noundef nonnull %i.g)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !395  ; 3 uses
  %.not5 = icmp eq ptr %i.k, null
  br i1 %.not5, label %_ZNK17IReferenceCounted4dropEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 %i.n ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !143  ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #36
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.s, ptr %i.p, align 8, !tbaa !143
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.g, label %_ZNK17IReferenceCounted4dropEv.exit

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(12) %i.o) #32, !inline_history !169
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.g, %bb.f, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !398  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !398  ; 2 uses
  %.not1112 = icmp eq ptr %i.x, %i.z
  br i1 %.not1112, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit7
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !399
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNK17IReferenceCounted4dropEv.exit
  %i.aa = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.x, %_ZNK17IReferenceCounted4dropEv.exit ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN5video6IImageESaIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !417
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #31
  br label %_ZNSt6vectorIPN5video6IImageESaIS2_EED2Ev.exit

_ZNSt6vectorIPN5video6IImageESaIS2_EED2Ev.exit:   ; preds = %._crit_edge, %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr i8, ptr %i.ah, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %0, i64 %i.al
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !130 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZN4core6stringIcED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIPN5video6IImageESaIS2_EED2Ev.exit
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !115
  %i.at = add i64 %i.as, 1
  tail call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #31
  br label %_ZN4core6stringIcED2Ev.exit.i.i

_ZN4core6stringIcED2Ev.exit.i.i:                  ; preds = %_ZNSt6vectorIPN5video6IImageESaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !130 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZN5video8ITextureD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i: ; preds = %_ZN4core6stringIcED2Ev.exit.i.i
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !115
  %i.ay = add i64 %i.ax, 1
  tail call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #31
  br label %_ZN5video8ITextureD2Ev.exit

_ZN5video8ITextureD2Ev.exit:                      ; preds = %_ZN4core6stringIcED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i
  ret void

.lr.ph:                                           ; preds = %_ZNK17IReferenceCounted4dropEv.exit, %_ZNK17IReferenceCounted4dropEv.exit7
  %.sroa.08.013 = phi ptr [ %i.bl, %_ZNK17IReferenceCounted4dropEv.exit7 ], [ %i.x, %_ZNK17IReferenceCounted4dropEv.exit ] ; 2 uses
  %i.az = load ptr, ptr %.sroa.08.013, align 8, !tbaa !400 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bb = getelementptr i8, ptr %i.ba, i64 -24
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds i8, ptr %i.az, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !143 ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  tail call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #36
  unreachable

bb.j:                                             ; preds = %.lr.ph
  %i.bh = add nsw i32 %i.bf, -1                   ; 2 uses
  store i32 %i.bh, ptr %i.be, align 8, !tbaa !143
  %.not.i6 = icmp eq i32 %i.bh, 0
  br i1 %.not.i6, label %bb.k, label %_ZNK17IReferenceCounted4dropEv.exit7

bb.k:                                             ; preds = %bb.j
  %i.bi = load ptr, ptr %i.bd, align 8, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(12) %i.bd) #32, !inline_history !169
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

declare void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #26

declare void @glDrawBuffer(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #23

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #14 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { cold noreturn }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #31 = { builtin nounwind }
attributes #32 = { nounwind }
attributes #33 = { noreturn }
attributes #34 = { nounwind willreturn memory(read) }
attributes #35 = { builtin allocsize(0) }
attributes #36 = { noreturn nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !95, i64 2824}
!11 = !{!"_ZTSN5video13COpenGLDriverE", !12, i64 0, !91, i64 936, !92, i64 944, !95, i64 2824, !96, i64 2832, !6, i64 2864, !100, i64 3312, !105, i64 3344, !22, i64 3348, !22, i64 3349, !6, i64 3350, !77, i64 3352, !77, i64 3480, !96, i64 3608, !71, i64 3640, !106, i64 3704, !107, i64 3712, !6, i64 3824, !112, i64 3984}
!12 = !{!"_ZTSN5video11CNullDriverE", !13, i64 0, !14, i64 8, !15, i64 16, !23, i64 48, !29, i64 80, !36, i64 112, !37, i64 120, !36, i64 152, !43, i64 160, !44, i64 168, !50, i64 200, !56, i64 232, !62, i64 264, !67, i64 288, !68, i64 296, !69, i64 304, !43, i64 320, !71, i64 328, !72, i64 392, !5, i64 416, !5, i64 420, !73, i64 424, !73, i64 428, !73, i64 432, !74, i64 436, !75, i64 440, !76, i64 448, !77, i64 624, !77, i64 752, !22, i64 880, !90, i64 884, !22, i64 888, !22, i64 889, !22, i64 890, !6, i64 891}
!13 = !{!"_ZTSN5video12IVideoDriverE"}
!14 = !{!"_ZTSN5video23IGPUProgrammingServicesE"}
!15 = !{!"_ZTSN4core5arrayIN5video11CNullDriver8SSurfaceEEE", !16, i64 0, !22, i64 24}
!16 = !{!"_ZTSSt6vectorIN5video11CNullDriver8SSurfaceESaIS2_EE", !17, i64 0}
!17 = !{!"_ZTSSt12_Vector_baseIN5video11CNullDriver8SSurfaceESaIS2_EE", !18, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseIN5video11CNullDriver8SSurfaceESaIS2_EE12_Vector_implE", !19, i64 0}
!19 = !{!"_ZTSNSt12_Vector_baseIN5video11CNullDriver8SSurfaceESaIS2_EE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!20 = !{!"p1 _ZTSN5video11CNullDriver8SSurfaceE", !21, i64 0}
!21 = !{!"any pointer", !6, i64 0}
!22 = !{!"bool", !6, i64 0}
!23 = !{!"_ZTSN4core5arrayIN5video11CNullDriver9SOccQueryEEE", !24, i64 0, !22, i64 24}
!24 = !{!"_ZTSSt6vectorIN5video11CNullDriver9SOccQueryESaIS2_EE", !25, i64 0}
!25 = !{!"_ZTSSt12_Vector_baseIN5video11CNullDriver9SOccQueryESaIS2_EE", !26, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN5video11CNullDriver9SOccQueryESaIS2_EE12_Vector_implE", !27, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseIN5video11CNullDriver9SOccQueryESaIS2_EE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!28 = !{!"p1 _ZTSN5video11CNullDriver9SOccQueryE", !21, i64 0}
!29 = !{!"_ZTSN4core5arrayIPN5video13IRenderTargetEEE", !30, i64 0, !22, i64 24}
!30 = !{!"_ZTSSt6vectorIPN5video13IRenderTargetESaIS2_EE", !31, i64 0}
!31 = !{!"_ZTSSt12_Vector_baseIPN5video13IRenderTargetESaIS2_EE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIPN5video13IRenderTargetESaIS2_EE12_Vector_implE", !33, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseIPN5video13IRenderTargetESaIS2_EE17_Vector_impl_dataE", !34, i64 0, !34, i64 8, !34, i64 16}
!34 = !{!"p2 _ZTSN5video13IRenderTargetE", !35, i64 0}
!35 = !{!"any p2 pointer", !21, i64 0}
!36 = !{!"p1 _ZTSN5video13IRenderTargetE", !21, i64 0}
!37 = !{!"_ZTSN4core5arrayIPN5video8ITextureEEE", !38, i64 0, !22, i64 24}
!38 = !{!"_ZTSSt6vectorIPN5video8ITextureESaIS2_EE", !39, i64 0}
!39 = !{!"_ZTSSt12_Vector_baseIPN5video8ITextureESaIS2_EE", !40, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIPN5video8ITextureESaIS2_EE12_Vector_implE", !41, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseIPN5video8ITextureESaIS2_EE17_Vector_impl_dataE", !42, i64 0, !42, i64 8, !42, i64 16}
!42 = !{!"p2 _ZTSN5video8ITextureE", !35, i64 0}
!43 = !{!"_ZTSN4core11dimension2dIjEE", !5, i64 0, !5, i64 4}
!44 = !{!"_ZTSN4core5arrayIPN5video12IImageLoaderEEE", !45, i64 0, !22, i64 24}
!45 = !{!"_ZTSSt6vectorIPN5video12IImageLoaderESaIS2_EE", !46, i64 0}
!46 = !{!"_ZTSSt12_Vector_baseIPN5video12IImageLoaderESaIS2_EE", !47, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseIPN5video12IImageLoaderESaIS2_EE12_Vector_implE", !48, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseIPN5video12IImageLoaderESaIS2_EE17_Vector_impl_dataE", !49, i64 0, !49, i64 8, !49, i64 16}
!49 = !{!"p2 _ZTSN5video12IImageLoaderE", !35, i64 0}
!50 = !{!"_ZTSN4core5arrayIPN5video12IImageWriterEEE", !51, i64 0, !22, i64 24}
!51 = !{!"_ZTSSt6vectorIPN5video12IImageWriterESaIS2_EE", !52, i64 0}
!52 = !{!"_ZTSSt12_Vector_baseIPN5video12IImageWriterESaIS2_EE", !53, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseIPN5video12IImageWriterESaIS2_EE12_Vector_implE", !54, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseIPN5video12IImageWriterESaIS2_EE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!55 = !{!"p2 _ZTSN5video12IImageWriterE", !35, i64 0}
!56 = !{!"_ZTSN4core5arrayIN5video11CNullDriver17SMaterialRendererEEE", !57, i64 0, !22, i64 24}
!57 = !{!"_ZTSSt6vectorIN5video11CNullDriver17SMaterialRendererESaIS2_EE", !58, i64 0}
!58 = !{!"_ZTSSt12_Vector_baseIN5video11CNullDriver17SMaterialRendererESaIS2_EE", !59, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseIN5video11CNullDriver17SMaterialRendererESaIS2_EE12_Vector_implE", !60, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseIN5video11CNullDriver17SMaterialRendererESaIS2_EE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!61 = !{!"p1 _ZTSN5video11CNullDriver17SMaterialRendererE", !21, i64 0}
!62 = !{!"_ZTSSt6vectorIPN5video11CNullDriver13SHWBufferLinkESaIS3_EE", !63, i64 0}
!63 = !{!"_ZTSSt12_Vector_baseIPN5video11CNullDriver13SHWBufferLinkESaIS3_EE", !64, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseIPN5video11CNullDriver13SHWBufferLinkESaIS3_EE12_Vector_implE", !65, i64 0}
!65 = !{!"_ZTSNSt12_Vector_baseIPN5video11CNullDriver13SHWBufferLinkESaIS3_EE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!66 = !{!"p2 _ZTSN5video11CNullDriver13SHWBufferLinkE", !35, i64 0}
!67 = !{!"p1 _ZTSN2io11IFileSystemE", !21, i64 0}
!68 = !{!"p1 _ZTSN5scene16IMeshManipulatorE", !21, i64 0}
!69 = !{!"_ZTSN4core4rectIiEE", !70, i64 0, !70, i64 8}
!70 = !{!"_ZTSN4core8vector2dIiEE", !5, i64 0, !5, i64 4}
!71 = !{!"_ZTSN4core8CMatrix4IfEE", !6, i64 0}
!72 = !{!"_ZTSN5video11SFrameStatsE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!73 = !{!"float", !6, i64 0}
!74 = !{!"_ZTSN5video6SColorE", !5, i64 0}
!75 = !{!"_ZTSN5video17SExposedVideoDataE", !6, i64 0}
!76 = !{!"_ZTSN5video17SOverrideMaterialE", !77, i64 0, !5, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !84, i64 144, !22, i64 146, !85, i64 152}
!77 = !{!"_ZTSN5video9SMaterialE", !6, i64 0, !78, i64 96, !74, i64 100, !73, i64 104, !73, i64 108, !73, i64 112, !73, i64 116, !73, i64 120, !79, i64 124, !80, i64 124, !81, i64 125, !82, i64 125, !22, i64 126, !22, i64 126, !83, i64 126, !22, i64 126, !22, i64 126, !22, i64 126, !22, i64 126}
!78 = !{!"_ZTSN5video15E_MATERIAL_TYPEE", !6, i64 0}
!79 = !{!"_ZTSN5video17E_COMPARISON_FUNCE", !6, i64 0}
!80 = !{!"_ZTSN5video20E_ANTI_ALIASING_MODEE", !6, i64 0}
!81 = !{!"_ZTSN5video13E_COLOR_PLANEE", !6, i64 0}
!82 = !{!"_ZTSN5video17E_BLEND_OPERATIONE", !6, i64 0}
!83 = !{!"_ZTSN5video8E_ZWRITEE", !6, i64 0}
!84 = !{!"short", !6, i64 0}
!85 = !{!"_ZTSSt6vectorIN5video17SOverrideMaterial24SMaterialTypeReplacementESaIS2_EE", !86, i64 0}
!86 = !{!"_ZTSSt12_Vector_baseIN5video17SOverrideMaterial24SMaterialTypeReplacementESaIS2_EE", !87, i64 0}
!87 = !{!"_ZTSNSt12_Vector_baseIN5video17SOverrideMaterial24SMaterialTypeReplacementESaIS2_EE12_Vector_implE", !88, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseIN5video17SOverrideMaterial24SMaterialTypeReplacementESaIS2_EE17_Vector_impl_dataE", !89, i64 0, !89, i64 8, !89, i64 16}
!89 = !{!"p1 _ZTSN5video17SOverrideMaterial24SMaterialTypeReplacementE", !21, i64 0}
!90 = !{!"_ZTSN5video10E_FOG_TYPEE", !6, i64 0}
!91 = !{!"_ZTSN5video25IMaterialRendererServicesE"}
!92 = !{!"_ZTSN5video23COpenGLExtensionHandlerE", !22, i64 0, !22, i64 1, !6, i64 2, !6, i64 3, !5, i64 4, !5, i64 8, !5, i64 12, !73, i64 16, !6, i64 20, !6, i64 28, !6, i64 36, !6, i64 44, !84, i64 52, !84, i64 54, !22, i64 56, !22, i64 57, !6, i64 58, !93, i64 544, !21, i64 568, !21, i64 576, !21, i64 584, !21, i64 592, !21, i64 600, !21, i64 608, !21, i64 616, !21, i64 624, !21, i64 632, !21, i64 640, !21, i64 648, !21, i64 656, !21, i64 664, !21, i64 672, !21, i64 680, !21, i64 688, !21, i64 696, !21, i64 704, !21, i64 712, !21, i64 720, !21, i64 728, !21, i64 736, !21, i64 744, !21, i64 752, !21, i64 760, !21, i64 768, !21, i64 776, !21, i64 784, !21, i64 792, !21, i64 800, !21, i64 808, !21, i64 816, !21, i64 824, !21, i64 832, !21, i64 840, !21, i64 848, !21, i64 856, !21, i64 864, !21, i64 872, !21, i64 880, !21, i64 888, !21, i64 896, !21, i64 904, !21, i64 912, !21, i64 920, !21, i64 928, !21, i64 936, !21, i64 944, !21, i64 952, !21, i64 960, !21, i64 968, !21, i64 976, !21, i64 984, !21, i64 992, !21, i64 1000, !21, i64 1008, !21, i64 1016, !21, i64 1024, !21, i64 1032, !21, i64 1040, !21, i64 1048, !21, i64 1056, !21, i64 1064, !21, i64 1072, !21, i64 1080, !21, i64 1088, !21, i64 1096, !21, i64 1104, !21, i64 1112, !21, i64 1120, !21, i64 1128, !21, i64 1136, !21, i64 1144, !21, i64 1152, !21, i64 1160, !21, i64 1168, !21, i64 1176, !21, i64 1184, !21, i64 1192, !21, i64 1200, !21, i64 1208, !21, i64 1216, !21, i64 1224, !21, i64 1232, !21, i64 1240, !21, i64 1248, !21, i64 1256, !21, i64 1264, !21, i64 1272, !21, i64 1280, !21, i64 1288, !21, i64 1296, !21, i64 1304, !21, i64 1312, !21, i64 1320, !21, i64 1328, !21, i64 1336, !21, i64 1344, !21, i64 1352, !21, i64 1360, !21, i64 1368, !21, i64 1376, !21, i64 1384, !21, i64 1392, !21, i64 1400, !21, i64 1408, !21, i64 1416, !21, i64 1424, !21, i64 1432, !21, i64 1440, !21, i64 1448, !21, i64 1456, !21, i64 1464, !21, i64 1472, !21, i64 1480, !21, i64 1488, !21, i64 1496, !21, i64 1504, !21, i64 1512, !21, i64 1520, !21, i64 1528, !21, i64 1536, !21, i64 1544, !21, i64 1552, !21, i64 1560, !21, i64 1568, !21, i64 1576, !21, i64 1584, !21, i64 1592, !21, i64 1600, !21, i64 1608, !21, i64 1616, !21, i64 1624, !21, i64 1632, !21, i64 1640, !21, i64 1648, !21, i64 1656, !21, i64 1664, !21, i64 1672, !21, i64 1680, !21, i64 1688, !21, i64 1696, !21, i64 1704, !21, i64 1712, !21, i64 1720, !21, i64 1728, !21, i64 1736, !21, i64 1744, !21, i64 1752, !21, i64 1760, !21, i64 1768, !21, i64 1776, !21, i64 1784, !21, i64 1792, !21, i64 1800, !21, i64 1808, !21, i64 1816, !21, i64 1824, !21, i64 1832, !21, i64 1840, !21, i64 1848, !21, i64 1856, !21, i64 1864, !21, i64 1872}
!93 = !{!"_ZTSN5video18COpenGLCoreFeatureE", !22, i64 8, !22, i64 9, !6, i64 10, !6, i64 11, !6, i64 12, !94, i64 16}
!94 = !{!"long", !6, i64 0}
!95 = !{!"p1 _ZTSN5video19COpenGLCacheHandlerE", !21, i64 0}
!96 = !{!"_ZTSN4core6stringIcEE", !97, i64 0}
!97 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !98, i64 0, !94, i64 8, !6, i64 16}
!98 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !99, i64 0}
!99 = !{!"p1 omnipotent char", !21, i64 0}
!100 = !{!"_ZTSN4core5arrayIhEE", !101, i64 0, !22, i64 24}
!101 = !{!"_ZTSSt6vectorIhSaIhEE", !102, i64 0}
!102 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !103, i64 0}
!103 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !104, i64 0}
!104 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !99, i64 0, !99, i64 8, !99, i64 16}
!105 = !{!"_ZTSN5video13COpenGLDriver13E_RENDER_MODEE", !6, i64 0}
!106 = !{!"_ZTSN5video13COpenGLDriver29E_OPENGL_FIXED_PIPELINE_STATEE", !6, i64 0}
!107 = !{!"_ZTS27SIrrlichtCreationParameters", !108, i64 0, !109, i64 4, !43, i64 8, !70, i64 16, !6, i64 24, !6, i64 25, !22, i64 26, !22, i64 27, !6, i64 28, !22, i64 29, !22, i64 30, !6, i64 31, !22, i64 32, !22, i64 33, !22, i64 34, !110, i64 40, !21, i64 48, !111, i64 56, !21, i64 64, !96, i64 72, !22, i64 104}
!108 = !{!"_ZTS13E_DEVICE_TYPE", !6, i64 0}
!109 = !{!"_ZTSN5video13E_DRIVER_TYPEE", !6, i64 0}
!110 = !{!"p1 _ZTS14IEventReceiver", !21, i64 0}
!111 = !{!"_ZTS10ELOG_LEVEL", !6, i64 0}
!112 = !{!"p1 _ZTSN5video15IContextManagerE", !21, i64 0}
!113 = !{!98, !99, i64 0}
!114 = !{!97, !94, i64 8}
!115 = !{!6, !6, i64 0}
!116 = !{!73, !73, i64 0}
!117 = !{!100, !22, i64 24}
!118 = !{!11, !105, i64 3344}
!119 = !{!11, !22, i64 3348}
!120 = !{!11, !22, i64 3349}
!121 = !{!107, !6, i64 31}
!122 = !{!11, !6, i64 3350}
!123 = !{!124, !125, i64 0}
!124 = !{!"_ZTSN5video14SMaterialLayerE", !125, i64 0, !6, i64 8, !6, i64 8, !6, i64 9, !126, i64 10, !127, i64 11, !6, i64 12, !6, i64 13, !128, i64 16}
!125 = !{!"p1 _ZTSN5video8ITextureE", !21, i64 0}
!126 = !{!"_ZTSN5video20E_TEXTURE_MIN_FILTERE", !6, i64 0}
!127 = !{!"_ZTSN5video20E_TEXTURE_MAG_FILTERE", !6, i64 0}
!128 = !{!"p1 _ZTSN4core8CMatrix4IfEE", !21, i64 0}
!129 = !{!11, !106, i64 3704}
!130 = !{!97, !99, i64 0}
!131 = !{!107, !22, i64 104}
!132 = !{i8 0, i8 2}
!133 = !{}
!134 = !{!74, !5, i64 0}
!135 = !{!136, !84, i64 36}
!136 = !{!"_ZTSN5video9S3DVertexE", !137, i64 0, !137, i64 12, !74, i64 24, !138, i64 28, !84, i64 36}
!137 = !{!"_ZTSN4core8vector3dIfEE", !73, i64 0, !73, i64 4, !73, i64 8}
!138 = !{!"_ZTSN4core8vector2dIfEE", !73, i64 0, !73, i64 4}
!139 = !{!11, !112, i64 3984}
!140 = !{!104, !99, i64 0}
!141 = !{!104, !99, i64 16}
!142 = !{!124, !128, i64 16}
end_hunk_5
