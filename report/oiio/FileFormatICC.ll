inline.NumInlined: 1370
inline.NumDeleted: 459
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN9SampleICC28IccParametricCurveTypeReader4ReadERSij:bb.a
  %i.e = icmp ult i32 %2, 16
  br i1 %i.e, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !15
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %1, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !17
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN9SampleICC5Read8ERSiPvi.exit.i, label %.critedge

_ZN9SampleICC5Read8ERSiPvi.exit.i:                ; preds = %bb.c
  %i.m = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.b, i64 noundef 4) ; 0 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !15
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %1, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !17
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZN9SampleICC5Read8ERSiPvi.exit.i29, label %.critedge

_ZN9SampleICC5Read8ERSiPvi.exit.i29:              ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit.i
  %i.u = load <4 x i8>, ptr %i.b, align 4, !tbaa !7
  %i.v = shufflevector <4 x i8> %i.u, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.v, ptr %i.b, align 4, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.x = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.w, i64 noundef 2) ; 0 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !15
  %i.z = getelementptr i8, ptr %i.y, i64 -24      ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %1, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !17
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.i.i30.preheader, label %.critedge

.lr.ph.i.i30.preheader:                           ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit.i29
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.ag = load i8, ptr %i.w, align 8, !tbaa !7
  %i.ah = load i8, ptr %i.af, align 1, !tbaa !7
  store i8 %i.ah, ptr %i.w, align 8, !tbaa !7
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !7
  %i.ai = load i64, ptr %i.z, align 8
  %i.aj = getelementptr inbounds i8, ptr %1, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !17
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %_ZN9SampleICC5Read8ERSiPvi.exit.i31, label %.critedge

_ZN9SampleICC5Read8ERSiPvi.exit.i31:              ; preds = %.lr.ph.i.i30.preheader
  %i.an = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 2) ; 0 uses
  %i.ao = load ptr, ptr %1, align 8, !tbaa !15    ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 -24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %1, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !17
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %.lr.ph.i.i32.preheader, label %.critedge

.lr.ph.i.i32.preheader:                           ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit.i31
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.aw = load i8, ptr %i.a, align 2, !tbaa !7
  %i.ax = load i8, ptr %i.av, align 1, !tbaa !7
  store i8 %i.ax, ptr %i.a, align 2, !tbaa !7
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !37 ; 2 uses
  %.not25 = icmp eq i16 %i.az, 0
  br i1 %.not25, label %bb.d, label %.thread

bb.d:                                             ; preds = %.lr.ph.i.i32.preheader
  %i.ba = add i32 %2, 262132                      ; 2 uses
  %i.bb = lshr i32 %i.ba, 2
  %i.bc = trunc i32 %i.bb to i16                  ; 3 uses
  store i16 %i.bc, ptr %i.ay, align 2, !tbaa !37
  %i.bd = and i32 %i.ba, 262140
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.be) #31
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !38
  %.not26 = icmp eq i16 %i.bc, 0
  br i1 %.not26, label %.critedge, label %.thread

.thread:                                          ; preds = %.lr.ph.i.i32.preheader, %bb.d
  %i.bh = phi i16 [ %i.bc, %bb.d ], [ %i.az, %.lr.ph.i.i32.preheader ]
  %i.bi = zext i16 %i.bh to i64
  %i.bj = shl nuw nsw i64 %i.bi, 2
  %i.bk = add nuw nsw i64 %i.bj, 12
  %i.bl = icmp samesign ugt i64 %i.bk, %i.d
  br i1 %i.bl, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph.i.i37.preheader
  %i.bn = phi ptr [ %i.ao, %.lr.ph.preheader ], [ %i.bx, %.lr.ph.i.i37.preheader ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph.i.i37.preheader ] ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 -24
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds i8, ptr %1, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !17
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %_ZN9SampleICC5Read8ERSiPvi.exit.i36, label %.critedge

_ZN9SampleICC5Read8ERSiPvi.exit.i36:              ; preds = %.lr.ph
  %i.bu = load ptr, ptr %i.bm, align 8, !tbaa !38
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv ; 3 uses
  %i.bw = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.bv, i64 noundef 4) ; 0 uses
  %i.bx = load ptr, ptr %1, align 8, !tbaa !15    ; 2 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 -24
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = getelementptr inbounds i8, ptr %1, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !17
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %.lr.ph.i.i37.preheader, label %.critedge

.lr.ph.i.i37.preheader:                           ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit.i36
  %i.ce = load <4 x i8>, ptr %i.bv, align 1, !tbaa !7
  %i.cf = shufflevector <4 x i8> %i.ce, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.cf, ptr %i.bv, align 1, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cg = load i16, ptr %i.ay, align 2, !tbaa !37
  %i.ch = zext i16 %i.cg to i64
  %.not28 = icmp samesign ult i64 %indvars.iv.next, %i.ch
  br i1 %.not28, label %.lr.ph, label %.critedge, !llvm.loop !273

.critedge:                                        ; preds = %.lr.ph.i.i37.preheader, %.lr.ph, %_ZN9SampleICC5Read8ERSiPvi.exit.i36, %_ZN9SampleICC5Read8ERSiPvi.exit.i31, %_ZN9SampleICC5Read8ERSiPvi.exit.i29, %_ZN9SampleICC5Read8ERSiPvi.exit.i, %.lr.ph.i.i30.preheader, %bb.d, %.thread, %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %.lr.ph.i.i30.preheader ], [ false, %_ZN9SampleICC5Read8ERSiPvi.exit.i31 ], [ true, %bb.d ], [ false, %bb.c ], [ false, %_ZN9SampleICC5Read8ERSiPvi.exit.i29 ], [ false, %_ZN9SampleICC5Read8ERSiPvi.exit.i ], [ false, %.thread ], [ false, %.lr.ph ], [ true, %.lr.ph.i.i37.preheader ], [ false, %_ZN9SampleICC5Read8ERSiPvi.exit.i36 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK9SampleICC28IccParametricCurveTypeReader17IsParametricCurveEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9SampleICC18IccCurveTypeReaderD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9SampleICC18IccCurveTypeReaderE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !217  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !274
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #32
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9SampleICC18IccCurveTypeReaderD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9SampleICC18IccCurveTypeReaderE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !217  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN9SampleICC18IccCurveTypeReaderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !274
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #32, !inline_history !275
  br label %_ZN9SampleICC18IccCurveTypeReaderD2Ev.exit

_ZN9SampleICC18IccCurveTypeReaderD2Ev.exit:       ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN9SampleICC18IccCurveTypeReader4ReadERSij(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = icmp ult i32 %2, 12
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !15
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !17
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN9SampleICC5Read8ERSiPvi.exit.i, label %bb.g

_ZN9SampleICC5Read8ERSiPvi.exit.i:                ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.l = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.b, i64 noundef 4) ; 0 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !15
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %1, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !17
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZN9SampleICC5Read8ERSiPvi.exit.i10, label %_ZN9SampleICC6Read32ERSiPvi.exit

_ZN9SampleICC5Read8ERSiPvi.exit.i10:              ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit.i
  %i.t = load <4 x i8>, ptr %i.b, align 4, !tbaa !7
  %i.u = shufflevector <4 x i8> %i.t, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.u, ptr %i.b, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.v = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.c, i64 noundef 4) ; 0 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !15
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %1, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !17
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.i.i11.preheader, label %_ZN9SampleICC6Read32ERSiPvi.exit14.thread

.lr.ph.i.i11.preheader:                           ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit.i10
  %i.ad = load <4 x i8>, ptr %i.c, align 4, !tbaa !7
  %i.ae = shufflevector <4 x i8> %i.ad, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  store <4 x i8> %i.ae, ptr %i.c, align 4, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.cast = bitcast <4 x i8> %i.ae to i32          ; 4 uses
  %i.ag = zext i32 %.cast to i64                  ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !219 ; 2 uses
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !217 ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 2                 ; 3 uses
  %i.ao = icmp ult i64 %i.an, %i.ag
  br i1 %i.ao, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i11.preheader
  %i.ap = sub nuw nsw i64 %i.ag, %i.an
  call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 noundef %i.ap)
  %.pre = load i32, ptr %i.c, align 4, !tbaa !3
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.d:                                             ; preds = %.lr.ph.i.i11.preheader
  %i.aq = icmp ugt i64 %i.an, %i.ag
  br i1 %i.aq, label %bb.e, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ag ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, %i.ar
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.ar, ptr %i.ah, align 8, !tbaa !219
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %i.as = phi i32 [ %.pre, %bb.c ], [ %.cast, %bb.d ], [ %.cast, %bb.e ], [ %.cast, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ] ; 3 uses
  %.not8 = icmp eq i32 %i.as, 0
  br i1 %.not8, label %_ZN9SampleICC6Read32ERSiPvi.exit14.thread, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.at = load ptr, ptr %i.af, align 8, !tbaa !217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.au = icmp sgt i32 %i.as, 0
  br i1 %i.au, label %.lr.ph.preheader.i, label %_ZN9SampleICC11Read16FloatERSiPvi.exit

.lr.ph.preheader.i:                               ; preds = %bb.f
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !15
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.preheader.i, %.lr.ph.preheader.i
  %i.aw = phi ptr [ %i.be, %.lr.ph.i.i.preheader.i ], [ %.pre.i, %.lr.ph.preheader.i ]
  %.012.i = phi i32 [ %i.br, %.lr.ph.i.i.preheader.i ], [ 0, %.lr.ph.preheader.i ]
  %.0711.i = phi ptr [ %i.bq, %.lr.ph.i.i.preheader.i ], [ %i.at, %.lr.ph.preheader.i ] ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 -24
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = getelementptr inbounds i8, ptr %1, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !17
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %_ZN9SampleICC5Read8ERSiPvi.exit.i.i, label %_ZN9SampleICC11Read16FloatERSiPvi.exit

_ZN9SampleICC5Read8ERSiPvi.exit.i.i:              ; preds = %.lr.ph.i
  %i.bd = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 2) ; 0 uses
  %i.be = load ptr, ptr %1, align 8, !tbaa !15    ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 -24
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds i8, ptr %1, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !17
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i.i.preheader.i, label %_ZN9SampleICC11Read16FloatERSiPvi.exit

.lr.ph.i.i.preheader.i:                           ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit.i.i
  %i.bl = load i8, ptr %i.a, align 2, !tbaa !7
  %i.bm = load i8, ptr %i.av, align 1, !tbaa !7
  store i8 %i.bm, ptr %i.a, align 2, !tbaa !7
  store i8 %i.bl, ptr %i.av, align 1, !tbaa !7
  %i.bn = load i16, ptr %i.a, align 2, !tbaa !28
  %i.bo = uitofp i16 %i.bn to float
  %i.bp = fdiv float %i.bo, 6.553500e+04
  store float %i.bp, ptr %.0711.i, align 4, !tbaa !30
  %i.bq = getelementptr inbounds nuw i8, ptr %.0711.i, i64 4
  %i.br = add nuw nsw i32 %.012.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.br, %i.as
  br i1 %exitcond.not.i, label %_ZN9SampleICC11Read16FloatERSiPvi.exit, label %.lr.ph.i, !llvm.loop !32

_ZN9SampleICC11Read16FloatERSiPvi.exit:           ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit.i.i, %.lr.ph.i, %.lr.ph.i.i.preheader.i, %bb.f
  %.0.ph = phi i1 [ false, %bb.f ], [ true, %.lr.ph.i.i.preheader.i ], [ false, %.lr.ph.i ], [ false, %_ZN9SampleICC5Read8ERSiPvi.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %_ZN9SampleICC6Read32ERSiPvi.exit14.thread

_ZN9SampleICC6Read32ERSiPvi.exit14.thread:        ; preds = %_ZN9SampleICC11Read16FloatERSiPvi.exit, %_ZNSt6vectorIfSaIfEE6resizeEm.exit, %_ZN9SampleICC5Read8ERSiPvi.exit.i10
  %.0 = phi i1 [ true, %_ZNSt6vectorIfSaIfEE6resizeEm.exit ], [ false, %_ZN9SampleICC5Read8ERSiPvi.exit.i10 ], [ %.0.ph, %_ZN9SampleICC11Read16FloatERSiPvi.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %_ZN9SampleICC6Read32ERSiPvi.exit

_ZN9SampleICC6Read32ERSiPvi.exit:                 ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit.i, %_ZN9SampleICC6Read32ERSiPvi.exit14.thread
  %.1 = phi i1 [ %.0, %_ZN9SampleICC6Read32ERSiPvi.exit14.thread ], [ false, %_ZN9SampleICC5Read8ERSiPvi.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.a, %_ZN9SampleICC6Read32ERSiPvi.exit
  %.2 = phi i1 [ false, %bb.a ], [ %.1, %_ZN9SampleICC6Read32ERSiPvi.exit ], [ false, %bb.b ]
  ret i1 %.2
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #20 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #30 ; 0 uses
  tail call void @_ZSt9terminatev() #34
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !219  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !217    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !274
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !30
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !219
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #33
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #31 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store float 0.000000e+00, ptr %i.y, align 4, !tbaa !30
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !30
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #32
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36: ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !217
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !219
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !274
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9SampleICC28IccTextDescriptionTypeReaderD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9SampleICC28IccTextDescriptionTypeReaderE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !7
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9SampleICC28IccTextDescriptionTypeReaderD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9SampleICC28IccTextDescriptionTypeReaderE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN9SampleICC28IccTextDescriptionTypeReaderD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !7
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #32, !inline_history !276
  br label %_ZN9SampleICC28IccTextDescriptionTypeReaderD2Ev.exit

_ZN9SampleICC28IccTextDescriptionTypeReaderD2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN9SampleICC28IccTextDescriptionTypeReader4ReadERSij(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !42
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !53
  store i8 0, ptr %i.e, align 1, !tbaa !7
  %i.f = icmp ult i32 %2, 12
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !15
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !17
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZN9SampleICC5Read8ERSiPvi.exit.i, label %bb.h

end_hunk_0
