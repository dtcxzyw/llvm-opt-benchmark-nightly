Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/MaterialRenderer?download=true
inline.NumInlined: 246
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5video24COpenGL3MaterialRenderer11linkProgramEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %.sink.split

bb.w:                                             ; preds = %bb.h
  call void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.3, i32 noundef 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %.sink.split

bb.x:                                             ; preds = %_ZN5video24COpenGL3MaterialRenderer12SUniformInfoD2Ev.exit47, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN5video24COpenGL3MaterialRenderer12SUniformInfoD2Ev.exit47 ], [ %i.bn, %bb.k ]
  %.not.i.i.i48 = icmp eq ptr %.sroa.050.0, null
  br i1 %.not.i.i.i48, label %_ZNSt6vectorIcSaIcEED2Ev.exit49, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.do = ptrtoint ptr %.sroa.050.0 to i64
  %i.dp = sub i64 %.sroa.17.0, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.050.0, i64 noundef %i.dp) #28
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit49

_ZNSt6vectorIcSaIcEED2Ev.exit49:                  ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  resume { ptr, i32 } %.pn.pn

.sink.split:                                      ; preds = %.thread, %.thread62, %bb.w, %.thread64
  %.3.ph = phi i1 [ true, %.thread64 ], [ false, %.thread ], [ false, %bb.w ], [ true, %.thread62 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.a
  %.3 = phi i1 [ true, %bb.a ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5video24COpenGL3MaterialRenderer8OnRenderEPNS_25IMaterialRendererServicesENS_13E_VERTEX_TYPEE(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr nofree readnone captures(none) %1, i32 %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load i32, ptr %i.c, align 4
  %.not1 = icmp eq i32 %i.d, 0
  %or.cond = select i1 %.not, i1 true, i1 %.not1
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i32, ptr %i.f, align 8, !tbaa !32
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.e, i32 noundef %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define void @_ZN5video24COpenGL3MaterialRenderer13OnSetMaterialERKNS_9SMaterialES3_bPNS_25IMaterialRendererServicesE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(127) %1, ptr noundef nonnull align 8 dereferenceable(127) %2, i1 noundef zeroext %3, ptr nofree readnone captures(none) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = tail call noundef ptr @_ZNK5video18COpenGL3DriverBase15getCacheHandlerEv(ptr noundef nonnull align 8 dereferenceable(2528) %i.b) ; 18 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !46   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 168 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !111
  %.not.i = icmp eq i32 %i.g, %i.e
  br i1 %.not.i, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE10setProgramEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 1160), align 8, !tbaa !112
  tail call void %i.h(i32 noundef %i.e), !inline_history !109
  store i32 %i.e, ptr %i.f, align 8, !tbaa !111
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE10setProgramEj.exit

_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE10setProgramEj.exit: ; preds = %bb.a, %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 872
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(2528) %i.i, ptr noundef nonnull align 8 dereferenceable(127) %1, ptr noundef nonnull align 8 dereferenceable(127) %2, i1 noundef zeroext %3)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i8, ptr %i.m, align 8, !tbaa !29, !range !47, !noundef !48
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %bb.j

bb.c:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE10setProgramEj.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !113
  %i.r = load i8, ptr %i.q, align 1, !tbaa !114, !range !47, !noundef !48
  %.not.i10 = icmp eq i8 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 130 ; 2 uses
  %i.t = load i8, ptr %i.s, align 2, !range !47
  %i.u = trunc nuw i8 %i.t to i1
  %or.cond.i = select i1 %.not.i10, i1 true, i1 %i.u
  br i1 %or.cond.i, label %bb.d, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE8setBlendEb.exit

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 232), align 8
  tail call void %i.v(i32 noundef 3042), !inline_history !110
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.x = load i32, ptr %i.w, align 8, !tbaa !71   ; 2 uses
  %.not9.i = icmp eq i32 %i.x, 0
  br i1 %.not9.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !113
  %i.z = zext i32 %i.x to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.y, i8 1, i64 %i.z, i1 false), !tbaa !114
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.d
  store i8 0, ptr %i.s, align 2, !tbaa !115
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE8setBlendEb.exit

_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE8setBlendEb.exit: ; preds = %bb.c, %._crit_edge.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !72
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !35
  %.not.i11 = icmp eq i32 %i.ac, 770
  br i1 %.not.i11, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE8setBlendEb.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !73
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !35
  %.not18.i = icmp eq i32 %i.af, 771
  br i1 %.not18.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !74
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !35
  %.not19.i = icmp eq i32 %i.ai, 770
  br i1 %.not19.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !75
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !35
  %.not20.i = icmp ne i32 %i.al, 771
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 129
  %i.an = load i8, ptr %i.am, align 1, !range !47
  %i.ao = trunc nuw i8 %i.an to i1
  %or.cond.i14 = select i1 %.not20.i, i1 true, i1 %i.ao
  br i1 %or.cond.i14, label %bb.h, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE8setBlendEb.exit
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 256), align 8, !tbaa !76
  tail call void %i.ap(i32 noundef 770, i32 noundef 771), !inline_history !1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !71
  %.not24.i = icmp eq i32 %i.ar, 0
  br i1 %.not24.i, label %._crit_edge.i13, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.h
  %i.as = load ptr, ptr %i.aa, align 8, !tbaa !72
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !73
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !74
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !75
  br label %bb.i

._crit_edge.i13:                                  ; preds = %bb.i, %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 129
  store i8 0, ptr %i.az, align 1, !tbaa !77
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit

bb.i:                                             ; preds = %bb.i, %.lr.ph.i12
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i12 ], [ %indvars.iv.next.i, %bb.i ] ; 5 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.i
  store i32 770, ptr %i.ba, align 4, !tbaa !35
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.i
  store i32 771, ptr %i.bb, align 4, !tbaa !35
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i
  store i32 770, ptr %i.bc, align 4, !tbaa !35
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.i
  store i32 771, ptr %i.bd, align 4, !tbaa !35
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.be = load i32, ptr %i.aq, align 8, !tbaa !71
  %i.bf = zext i32 %i.be to i64
  %i.bg = icmp samesign ult i64 %indvars.iv.next.i, %i.bf
  br i1 %i.bg, label %bb.i, label %._crit_edge.i13, !llvm.loop !2

bb.j:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE10setProgramEj.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !30, !range !47, !noundef !48
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.k, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit

bb.k:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !124 ; 4 uses
  %i.bm = lshr i32 %i.bl, 12
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = and i8 %i.bn, 15
  %i.bp = lshr i32 %i.bl, 8
  %i.bq = trunc i32 %i.bp to i8
  %i.br = and i8 %i.bq, 15
  %5 = lshr i32 %i.bl, 4
  %i.bs = trunc i32 %5 to i8
  %6 = and i8 %i.bs, 15
  %7 = trunc i32 %i.bl to i8
  %i.bt = and i8 %7, 15
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.bv = tail call noundef i32 @_ZNK5video18COpenGL3DriverBase10getGLBlendENS_14E_BLEND_FACTORE(ptr noundef nonnull align 8 dereferenceable(2528) %i.bu, i8 noundef zeroext %6)
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.bx = tail call noundef i32 @_ZNK5video18COpenGL3DriverBase10getGLBlendENS_14E_BLEND_FACTORE(ptr noundef nonnull align 8 dereferenceable(2528) %i.bw, i8 noundef zeroext %i.bt)
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.bz = tail call noundef i32 @_ZNK5video18COpenGL3DriverBase10getGLBlendENS_14E_BLEND_FACTORE(ptr noundef nonnull align 8 dereferenceable(2528) %i.by, i8 noundef zeroext %i.bo)
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.cb = tail call noundef i32 @_ZNK5video18COpenGL3DriverBase10getGLBlendENS_14E_BLEND_FACTORE(ptr noundef nonnull align 8 dereferenceable(2528) %i.ca, i8 noundef zeroext %i.br)
  tail call void @_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE20setBlendFuncSeparateEjjjj(ptr noundef nonnull align 8 dereferenceable(192) %i.c, i32 noundef %i.bv, i32 noundef %i.bx, i32 noundef %i.bz, i32 noundef %i.cb)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !113
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !114, !range !47, !noundef !48
  %.not.i15 = icmp eq i8 %i.ce, 0
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 130 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 2, !range !47
  %i.ch = trunc nuw i8 %i.cg to i1
  %or.cond.i16 = select i1 %.not.i15, i1 true, i1 %i.ch
  br i1 %or.cond.i16, label %bb.l, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit

bb.l:                                             ; preds = %bb.k
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 232), align 8
  tail call void %i.ci(i32 noundef 3042), !inline_history !110
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !71 ; 2 uses
  %.not9.i17 = icmp eq i32 %i.ck, 0
  br i1 %.not9.i17, label %._crit_edge.i19, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %bb.l
  %i.cl = load ptr, ptr %i.cc, align 8, !tbaa !113
  %i.cm = zext i32 %i.ck to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cl, i8 1, i64 %i.cm, i1 false), !tbaa !114
  br label %._crit_edge.i19

._crit_edge.i19:                                  ; preds = %.lr.ph.i18, %bb.l
  store i8 0, ptr %i.cf, align 2, !tbaa !115
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit

_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit: ; preds = %._crit_edge.i19, %bb.k, %._crit_edge.i13, %bb.g, %bb.j
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !28 ; 3 uses
  %.not = icmp eq ptr %i.co, null
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !14
  %i.cq = load ptr, ptr %i.cp, align 8
  tail call void %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef nonnull align 8 dereferenceable(127) %1)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit
  ret void
}

declare noundef ptr @_ZNK5video18COpenGL3DriverBase15getCacheHandlerEv(ptr noundef nonnull align 8 dereferenceable(2528)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE20setBlendFuncSeparateEjjjj(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, %3
  %.not26 = icmp eq i32 %2, %4
  %or.cond = and i1 %.not, %.not26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72
  %i.c = load i32, ptr %i.b, align 4, !tbaa !35
  %.not.i = icmp eq i32 %i.c, %1                  ; 2 uses
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.f = load i32, ptr %i.e, align 4, !tbaa !35
  %.not28 = icmp eq i32 %i.f, %2
  br i1 %.not28, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !74
  %i.i = load i32, ptr %i.h, align 4, !tbaa !35
  %.not29 = icmp eq i32 %i.i, %3
  br i1 %.not29, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !75
  %i.l = load i32, ptr %i.k, align 4, !tbaa !35
  %.not30 = icmp ne i32 %i.l, %4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.n = load i8, ptr %i.m, align 1, !range !47
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond33 = select i1 %.not30, i1 true, i1 %i.o
  br i1 %or.cond33, label %bb.f, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 656), align 8, !tbaa !127
  tail call void %i.p(i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4), !inline_history !125
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !71
  %.not35 = icmp eq i32 %i.r, 0
  br i1 %.not35, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !72
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !73
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !74
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !75
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 5 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  store i32 %1, ptr %i.z, align 4, !tbaa !35
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv
  store i32 %2, ptr %i.aa, align 4, !tbaa !35
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  store i32 %3, ptr %i.ab, align 4, !tbaa !35
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  store i32 %4, ptr %i.ac, align 4, !tbaa !35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ad = load i32, ptr %i.q, align 8, !tbaa !71
  %i.ae = zext i32 %i.ad to i64
  %i.af = icmp samesign ult i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %bb.g, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit.sink.split, !llvm.loop !126

bb.h:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !73
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !35
  %.not18.i = icmp eq i32 %i.ai, %2
  br i1 %.not18.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !74
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !35
  %.not19.i = icmp eq i32 %i.al, %1
  br i1 %.not19.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !75
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !35
  %.not20.i = icmp ne i32 %i.ao, %2
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.aq = load i8, ptr %i.ap, align 1, !range !47
  %i.ar = trunc nuw i8 %i.aq to i1
  %or.cond.i = select i1 %.not20.i, i1 true, i1 %i.ar
  br i1 %or.cond.i, label %bb.l, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 256), align 8, !tbaa !76
  tail call void %i.as(i32 noundef %1, i32 noundef %2), !inline_history !1
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !71
  %.not24.i = icmp eq i32 %i.au, 0
  br i1 %.not24.i, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !72
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !73
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !74
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !75
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.m ] ; 5 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.i
  store i32 %1, ptr %i.bc, align 4, !tbaa !35
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.i
  store i32 %2, ptr %i.bd, align 4, !tbaa !35
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  store i32 %1, ptr %i.be, align 4, !tbaa !35
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.i
  store i32 %2, ptr %i.bf, align 4, !tbaa !35
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bg = load i32, ptr %i.at, align 8, !tbaa !71
  %i.bh = zext i32 %i.bg to i64
  %i.bi = icmp samesign ult i64 %indvars.iv.next.i, %i.bh
  br i1 %i.bi, label %bb.m, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit.sink.split, !llvm.loop !2

_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit.sink.split: ; preds = %bb.g, %bb.m, %bb.l, %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 129
  store i8 0, ptr %i.bj, align 1, !tbaa !77
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit

_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit: ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit.sink.split, %bb.k, %bb.e
  ret void
}

declare noundef i32 @_ZNK5video18COpenGL3DriverBase10getGLBlendENS_14E_BLEND_FACTORE(ptr noundef nonnull align 8 dereferenceable(2528), i8 noundef zeroext) local_unnamed_addr #9

end_hunk_0
