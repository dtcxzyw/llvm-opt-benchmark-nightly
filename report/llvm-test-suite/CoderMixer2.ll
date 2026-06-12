inline.NumInlined: 75
inline.NumDeleted: 32
begin_hunk_0
@_ZTV13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE, ptr @_ZN17CBaseRecordVectorD2Ev, ptr @_ZN13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEED0Ev, ptr @_ZN17CBaseRecordVector6DeleteEii] }, comdat, align 8
@_ZTI13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE, ptr @_ZTI17CBaseRecordVector }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE = linkonce_odr dso_local constant [52 x i8] c"13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE\00", comdat, align 1
@_ZTI17CBaseRecordVector = external constant ptr
@_ZTV13CRecordVectorIN11NCoderMixer9CBindPairEE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI13CRecordVectorIN11NCoderMixer9CBindPairEE, ptr @_ZN17CBaseRecordVectorD2Ev, ptr @_ZN13CRecordVectorIN11NCoderMixer9CBindPairEED0Ev, ptr @_ZN17CBaseRecordVector6DeleteEii] }, comdat, align 8
@_ZTI13CRecordVectorIN11NCoderMixer9CBindPairEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13CRecordVectorIN11NCoderMixer9CBindPairEE, ptr @_ZTI17CBaseRecordVector }, comdat, align 8
@_ZTS13CRecordVectorIN11NCoderMixer9CBindPairEE = linkonce_odr dso_local constant [43 x i8] c"13CRecordVectorIN11NCoderMixer9CBindPairEE\00", comdat, align 1
@_ZTV13CRecordVectorIjE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI13CRecordVectorIjE, ptr @_ZN17CBaseRecordVectorD2Ev, ptr @_ZN13CRecordVectorIjED0Ev, ptr @_ZN17CBaseRecordVector6DeleteEii] }, comdat, align 8
@_ZTI13CRecordVectorIjE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13CRecordVectorIjE, ptr @_ZTI17CBaseRecordVector }, comdat, align 8
@_ZTS13CRecordVectorIjE = linkonce_odr dso_local constant [19 x i8] c"13CRecordVectorIjE\00", comdat, align 1
@_ZTV13CRecordVectorIyE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI13CRecordVectorIyE, ptr @_ZN17CBaseRecordVectorD2Ev, ptr @_ZN13CRecordVectorIyED0Ev, ptr @_ZN17CBaseRecordVector6DeleteEii] }, comdat, align 8
@_ZTI13CRecordVectorIyE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13CRecordVectorIyE, ptr @_ZTI17CBaseRecordVector }, comdat, align 8
@_ZTS13CRecordVectorIyE = linkonce_odr dso_local constant [19 x i8] c"13CRecordVectorIyE\00", comdat, align 1
@_ZTV13CRecordVectorIPKyE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI13CRecordVectorIPKyE, ptr @_ZN17CBaseRecordVectorD2Ev, ptr @_ZN13CRecordVectorIPKyED0Ev, ptr @_ZN17CBaseRecordVector6DeleteEii] }, comdat, align 8
@_ZTI13CRecordVectorIPKyE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13CRecordVectorIPKyE, ptr @_ZTI17CBaseRecordVector }, comdat, align 8
@_ZTS13CRecordVectorIPKyE = linkonce_odr dso_local constant [21 x i8] c"13CRecordVectorIPKyE\00", comdat, align 1

@_ZN11NCoderMixer21CBindReverseConverterC1ERKNS_9CBindInfoE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11NCoderMixer21CBindReverseConverterC2ERKNS_9CBindInfoE
@_ZN11NCoderMixer11CCoderInfo2C1Ejj = dso_local unnamed_addr alias void (ptr, i32, i32), ptr @_ZN11NCoderMixer11CCoderInfo2C2Ejj

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11NCoderMixer21CBindReverseConverterC2ERKNS_9CBindInfoE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZN11NCoderMixer9CBindInfoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.d, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIjE, i64 16), ptr %i.b, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.g, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIjE, i64 16), ptr %i.e, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.j, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIjE, i64 16), ptr %i.h, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.m, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIjE, i64 16), ptr %i.k, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  store i32 0, ptr %i.n, align 8, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !14
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge76

.lr.ph.i:                                         ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !15
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %i.t = phi i32 [ 0, %.lr.ph.i ], [ %i.aa, %bb.b ]
  %i.u = phi i32 [ 0, %.lr.ph.i ], [ %i.x, %bb.b ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !16
  %i.x = add i32 %i.u, %i.w                       ; 3 uses
  store i32 %i.x, ptr %i.n, align 8, !tbaa !4
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !18
  %i.aa = add i32 %i.t, %i.z                      ; 3 uses
  store i32 %i.aa, ptr %0, align 8, !tbaa !4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ab = load i32, ptr %i.o, align 4, !tbaa !14
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next.i, %i.ac
  br i1 %i.ad, label %bb.b, label %_ZNK11NCoderMixer9CBindInfo13GetNumStreamsERjS1_.exit, !llvm.loop !19

_ZNK11NCoderMixer9CBindInfo13GetNumStreamsERjS1_.exit: ; preds = %bb.b
  %i.ae = icmp eq i32 %i.x, 0
  br i1 %i.ae, label %.preheader53, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK11NCoderMixer9CBindInfo13GetNumStreamsERjS1_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 3 uses
  br label %bb.c

.preheader53.loopexit:                            ; preds = %bb.e
  %.pre = load i32, ptr %0, align 8, !tbaa !21
  br label %.preheader53

.preheader53:                                     ; preds = %.preheader53.loopexit, %_ZNK11NCoderMixer9CBindInfo13GetNumStreamsERjS1_.exit
  %i.aj = phi i32 [ %.pre, %.preheader53.loopexit ], [ %i.aa, %_ZNK11NCoderMixer9CBindInfo13GetNumStreamsERjS1_.exit ]
  %.not77 = icmp eq i32 %i.aj, 0
  br i1 %.not77, label %._crit_edge, label %.lr.ph58

.lr.ph58:                                         ; preds = %.preheader53
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 3 uses
  br label %bb.g

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.03956 = phi i32 [ 0, %.lr.ph ], [ %i.ba, %bb.e ]
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.d unwind label %.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !15
  %i.ap = load i32, ptr %i.ag, align 4, !tbaa !14
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.aq
  store i32 0, ptr %i.ar, align 4, !tbaa !4
  %i.as = load i32, ptr %i.ag, align 4, !tbaa !14
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.ag, align 4, !tbaa !14
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.e unwind label %.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !15
  %i.av = load i32, ptr %i.ai, align 4, !tbaa !14
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aw
  store i32 0, ptr %i.ax, align 4, !tbaa !4
  %i.ay = load i32, ptr %i.ai, align 4, !tbaa !14
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %i.ai, align 4, !tbaa !14
  %i.ba = add nuw i32 %.03956, 1                  ; 2 uses
  %i.bb = load i32, ptr %i.n, align 8, !tbaa !27
  %i.bc = icmp ult i32 %i.ba, %i.bb
  br i1 %i.bc, label %bb.c, label %.preheader53.loopexit, !llvm.loop !28

.loopexit54:                                      ; preds = %bb.g, %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %bb.c, %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit54
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit54 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.k) #9
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.h) #9
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.e) #9
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.b) #9
  tail call void @_ZN11NCoderMixer9CBindInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.a) #9
  resume { ptr, i32 } %lpad.phi

bb.g:                                             ; preds = %.lr.ph58, %bb.i
  %.14057 = phi i32 [ 0, %.lr.ph58 ], [ %i.bp, %bb.i ]
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %bb.h unwind label %.loopexit54

bb.h:                                             ; preds = %bb.g
  %i.bd = load ptr, ptr %i.ak, align 8, !tbaa !15
  %i.be = load i32, ptr %i.al, align 4, !tbaa !14
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bf
  store i32 0, ptr %i.bg, align 4, !tbaa !4
  %i.bh = load i32, ptr %i.al, align 4, !tbaa !14
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.al, align 4, !tbaa !14
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %bb.i unwind label %.loopexit54

bb.i:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr %i.am, align 8, !tbaa !15
  %i.bk = load i32, ptr %i.an, align 4, !tbaa !14
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bl
  store i32 0, ptr %i.bm, align 4, !tbaa !4
  %i.bn = load i32, ptr %i.an, align 4, !tbaa !14
  %i.bo = add nsw i32 %i.bn, 1
  store i32 %i.bo, ptr %i.an, align 4, !tbaa !14
  %i.bp = add nuw i32 %.14057, 1                  ; 2 uses
  %i.bq = load i32, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.br = icmp ult i32 %i.bp, %i.bq
  br i1 %i.br, label %bb.g, label %._crit_edge, !llvm.loop !29

._crit_edge:                                      ; preds = %bb.i, %.preheader53
  %.lcssa.ph = phi i32 [ 0, %.preheader53 ], [ %i.bq, %bb.i ]
  %.pr = load i32, ptr %i.o, align 4, !tbaa !14   ; 2 uses
  %i.bs = icmp sgt i32 %.pr, 0
  br i1 %i.bs, label %.lr.ph75, label %._crit_edge76

.lr.ph75:                                         ; preds = %._crit_edge
  %i.bt = load i32, ptr %i.n, align 8, !tbaa !27
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !15
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 152
  %2 = load ptr, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 256
  %3 = load ptr, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 184
  %4 = load ptr, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 216
  %5 = load ptr, ptr %i.bz, align 8
  %i.ca = zext nneg i32 %.pr to i64
  br label %bb.j

.loopexit:                                        ; preds = %.lr.ph66.a, %.preheader
  %.147.lcssa = phi i32 [ %.04669, %.preheader ], [ %i.cy, %.lr.ph66.a ]
  %i.cb = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.cb, label %bb.j, label %._crit_edge76, !llvm.loop !30

._crit_edge76:                                    ; preds = %.loopexit, %bb.a, %._crit_edge
  ret void

bb.j:                                             ; preds = %.lr.ph75, %.loopexit
  %indvars.iv = phi i64 [ %i.ca, %.lr.ph75 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.04272 = phi i32 [ %.lcssa.ph, %.lr.ph75 ], [ %i.ch, %.loopexit ]
  %.04371 = phi i32 [ %i.bt, %.lr.ph75 ], [ %i.ce, %.loopexit ]
  %.04470 = phi i32 [ 0, %.lr.ph75 ], [ %.145.lcssa, %.loopexit ] ; 2 uses
  %.04669 = phi i32 [ 0, %.lr.ph75 ], [ %.147.lcssa, %.loopexit ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next ; 3 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !16 ; 2 uses
  %i.ce = sub i32 %.04371, %i.cd                  ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 4 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !18 ; 2 uses
  %i.ch = sub i32 %.04272, %i.cg                  ; 2 uses
  %.not78 = icmp eq i32 %i.cd, 0
  br i1 %.not78, label %.preheader, label %.lr.ph62.a

.preheader.loopexit:                              ; preds = %.lr.ph62.a
  %.pre84 = load i32, ptr %i.cf, align 4, !tbaa !18
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.j
  %i.ci = phi i32 [ %i.cg, %bb.j ], [ %.pre84, %.preheader.loopexit ]
  %.145.lcssa = phi i32 [ %.04470, %bb.j ], [ %i.cp, %.preheader.loopexit ]
  %.not79 = icmp eq i32 %i.ci, 0
  br i1 %.not79, label %.loopexit, label %.lr.ph66.a

.lr.ph62.a:                                       ; preds = %bb.j, %.lr.ph62.a
  %.03860 = phi i32 [ %i.co, %.lr.ph62.a ], [ 0, %bb.j ] ; 2 uses
  %.14559 = phi i32 [ %i.cp, %.lr.ph62.a ], [ %.04470, %bb.j ] ; 3 uses
  %i.cj = add i32 %.03860, %i.ce                  ; 2 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ck
  store i32 %.14559, ptr %i.cl, align 4, !tbaa !4
  %i.cm = sext i32 %.14559 to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cm
  store i32 %i.cj, ptr %i.cn, align 4, !tbaa !4
  %i.co = add nuw i32 %.03860, 1                  ; 2 uses
  %i.cp = add i32 %.14559, 1                      ; 2 uses
  %i.cq = load i32, ptr %i.cc, align 4, !tbaa !16
  %i.cr = icmp ult i32 %i.co, %i.cq
  br i1 %i.cr, label %.lr.ph62.a, label %.preheader.loopexit, !llvm.loop !31

.lr.ph66.a:                                       ; preds = %.preheader, %.lr.ph66.a
  %.165 = phi i32 [ %i.cx, %.lr.ph66.a ], [ 0, %.preheader ] ; 2 uses
  %.14764 = phi i32 [ %i.cy, %.lr.ph66.a ], [ %.04669, %.preheader ] ; 3 uses
  %i.cs = add i32 %.165, %i.ch                    ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ct
  store i32 %.14764, ptr %i.cu, align 4, !tbaa !4
  %i.cv = sext i32 %.14764 to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %5, i64 %i.cv
  store i32 %i.cs, ptr %i.cw, align 4, !tbaa !4
  %i.cx = add nuw i32 %.165, 1                    ; 2 uses
  %i.cy = add i32 %.14764, 1                      ; 2 uses
  %i.cz = load i32, ptr %i.cf, align 4, !tbaa !18
  %i.da = icmp ult i32 %i.cx, %i.cz
  br i1 %i.da, label %.lr.ph66.a, label %.loopexit, !llvm.loop !32
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11NCoderMixer9CBindInfoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.b, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE, i64 16), ptr %0, align 8, !tbaa !12
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !14   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !14
  %i.g = add nsw i32 %i.f, %i.d
  invoke void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.g)
          to label %.noexc3.i unwind label %.loopexit.split-lp.i

.noexc3.i:                                        ; preds = %.noexc.i
  %i.h = icmp sgt i32 %i.d, 0
  br i1 %i.h, label %.lr.ph.i.i.i, label %_ZN13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEEC2ERKS2_.exit

.lr.ph.i.i.i:                                     ; preds = %.noexc3.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count.i.i.i = zext nneg i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %.noexc4.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %.noexc4.i ] ; 2 uses
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i.i.i
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.l, align 4
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %.noexc4.i unwind label %.loopexit.i

.noexc4.i:                                        ; preds = %bb.b
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !15
  %i.n = load i32, ptr %i.e, align 4, !tbaa !14
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.o
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.p, align 4
  %i.q = load i32, ptr %i.e, align 4, !tbaa !14
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.e, align 4, !tbaa !14
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEEC2ERKS2_.exit, label %bb.b, !llvm.loop !33

.loopexit.i:                                      ; preds = %bb.b
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

.loopexit.split-lp.i:                             ; preds = %.noexc.i, %bb.a
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

common.resume:                                    ; preds = %.loopexit.i, %.loopexit.split-lp.i, %.body
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  resume { ptr, i32 } %common.resume.op

_ZN13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEEC2ERKS2_.exit: ; preds = %.noexc4.i, %.noexc3.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.u, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIN11NCoderMixer9CBindPairEE, i64 16), ptr %i.s, align 8, !tbaa !12
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %.noexc.i13 unwind label %.loopexit.split-lp.i10

.noexc.i13:                                       ; preds = %_ZN13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEEC2ERKS2_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.w = load i32, ptr %i.v, align 4, !tbaa !14   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !14
  %i.z = add nsw i32 %i.y, %i.w
  invoke void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i32 noundef %i.z)
          to label %.noexc3.i14 unwind label %.loopexit.split-lp.i10

.noexc3.i14:                                      ; preds = %.noexc.i13
  %i.aa = icmp sgt i32 %i.w, 0
  br i1 %i.aa, label %.lr.ph.i.i.i15, label %_ZN13CRecordVectorIN11NCoderMixer9CBindPairEEC2ERKS2_.exit

.lr.ph.i.i.i15:                                   ; preds = %.noexc3.i14
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %wide.trip.count.i.i.i16 = zext nneg i32 %i.w to i64
  br label %bb.c

bb.c:                                             ; preds = %.noexc4.i21, %.lr.ph.i.i.i15
  %indvars.iv.i.i.i17 = phi i64 [ 0, %.lr.ph.i.i.i15 ], [ %indvars.iv.next.i.i.i22, %.noexc4.i21 ] ; 2 uses
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !15
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i.i.i17
  %.sroa.0.0.copyload.i.i.i18 = load i64, ptr %i.ae, align 4
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %.noexc4.i21 unwind label %.loopexit.i19

.noexc4.i21:                                      ; preds = %bb.c
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !15
  %i.ag = load i32, ptr %i.x, align 4, !tbaa !14
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ah
  store i64 %.sroa.0.0.copyload.i.i.i18, ptr %i.ai, align 4
  %i.aj = load i32, ptr %i.x, align 4, !tbaa !14
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.x, align 4, !tbaa !14
  %indvars.iv.next.i.i.i22 = add nuw nsw i64 %indvars.iv.i.i.i17, 1 ; 2 uses
  %exitcond.not.i.i.i23 = icmp eq i64 %indvars.iv.next.i.i.i22, %wide.trip.count.i.i.i16
  br i1 %exitcond.not.i.i.i23, label %_ZN13CRecordVectorIN11NCoderMixer9CBindPairEEC2ERKS2_.exit, label %bb.c, !llvm.loop !34

.loopexit.i19:                                    ; preds = %bb.c
  %lpad.loopexit.i20 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.i10:                           ; preds = %.noexc.i13, %_ZN13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEEC2ERKS2_.exit
  %lpad.loopexit.split-lp.i11 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN13CRecordVectorIN11NCoderMixer9CBindPairEEC2ERKS2_.exit: ; preds = %.noexc4.i21, %.noexc3.i14
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.an, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIjE, i64 16), ptr %i.al, align 8, !tbaa !12
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.al)
          to label %.noexc.i27 unwind label %.loopexit.split-lp.i24

.noexc.i27:                                       ; preds = %_ZN13CRecordVectorIN11NCoderMixer9CBindPairEEC2ERKS2_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !14 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !14
  %i.as = add nsw i32 %i.ar, %i.ap
  invoke void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %i.al, i32 noundef %i.as)
          to label %.noexc3.i28 unwind label %.loopexit.split-lp.i24

.noexc3.i28:                                      ; preds = %.noexc.i27
  %i.at = icmp sgt i32 %i.ap, 0
  br i1 %i.at, label %.lr.ph.i.i.i29, label %_ZN13CRecordVectorIjEC2ERKS0_.exit

.lr.ph.i.i.i29:                                   ; preds = %.noexc3.i28
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 80
  %wide.trip.count.i.i.i30 = zext nneg i32 %i.ap to i64
  br label %bb.d

bb.d:                                             ; preds = %.noexc4.i34, %.lr.ph.i.i.i29
  %indvars.iv.i.i.i31 = phi i64 [ 0, %.lr.ph.i.i.i29 ], [ %indvars.iv.next.i.i.i35, %.noexc4.i34 ] ; 2 uses
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !15
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i.i.i31
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.al)
          to label %.noexc4.i34 unwind label %.loopexit.i32

.noexc4.i34:                                      ; preds = %bb.d
  %i.az = load ptr, ptr %i.av, align 8, !tbaa !15
  %i.ba = load i32, ptr %i.aq, align 4, !tbaa !14
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.bb
  store i32 %i.ay, ptr %i.bc, align 4, !tbaa !4
  %i.bd = load i32, ptr %i.aq, align 4, !tbaa !14
  %i.be = add nsw i32 %i.bd, 1
  store i32 %i.be, ptr %i.aq, align 4, !tbaa !14
  %indvars.iv.next.i.i.i35 = add nuw nsw i64 %indvars.iv.i.i.i31, 1 ; 2 uses
  %exitcond.not.i.i.i36 = icmp eq i64 %indvars.iv.next.i.i.i35, %wide.trip.count.i.i.i30
  br i1 %exitcond.not.i.i.i36, label %_ZN13CRecordVectorIjEC2ERKS0_.exit, label %bb.d, !llvm.loop !35

.loopexit.i32:                                    ; preds = %bb.d
  %lpad.loopexit.i33 = landingpad { ptr, i32 }
          cleanup
  br label %.body37

.loopexit.split-lp.i24:                           ; preds = %.noexc.i27, %_ZN13CRecordVectorIN11NCoderMixer9CBindPairEEC2ERKS2_.exit
  %lpad.loopexit.split-lp.i25 = landingpad { ptr, i32 }
          cleanup
  br label %.body37

end_hunk_0
