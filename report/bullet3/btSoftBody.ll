Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBody?download=true
inline.NumInlined: 5223
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 198
loop-unroll.NumUnrolled: 248
begin_hunk_0_@_ZN10btSoftBody6refineEPNS_10ImplicitFnEfb:bb.a
  %i.aci = ashr i64 %i.ach, 32
  %i.acj = getelementptr inbounds [4 x i8], ptr %i.aaf, i64 %i.aci ; 2 uses
  %i.ack = load i32, ptr %i.acj, align 4, !tbaa !274
  %i.acl = add nsw i32 %i.ack, 1
  store i32 %i.acl, ptr %i.acj, align 4, !tbaa !274
  %indvars.iv.next588 = add nuw nsw i64 %indvars.iv587, 1 ; 2 uses
  %exitcond591.not = icmp eq i64 %indvars.iv.next588, %wide.trip.count590
  br i1 %exitcond591.not, label %.preheader, label %.preheader432, !llvm.loop !987

.preheader:                                       ; preds = %.preheader432, %._crit_edge505
  %i.acm = load i32, ptr %i.ay, align 4, !tbaa !178 ; 2 uses
  %i.acn = icmp sgt i32 %i.acm, 0
  br i1 %i.acn, label %.lr.ph509, label %_ZN20btAlignedObjectArrayIiED2Ev.exit

.lr.ph509:                                        ; preds = %.preheader
  %i.aco = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.acp = ptrtoint ptr %i.ur to i64              ; 2 uses
  br label %bb.cs

bb.cs:                                            ; preds = %.lr.ph509, %bb.cu
  %i.acq = phi i32 [ %i.acm, %.lr.ph509 ], [ %i.adw, %bb.cu ]
  %.5508 = phi i32 [ 0, %.lr.ph509 ], [ %i.adx, %bb.cu ] ; 3 uses
  %i.acr = load ptr, ptr %i.aco, align 8, !tbaa !177 ; 2 uses
  %i.acs = sext i32 %.5508 to i64
  %i.act = getelementptr inbounds [72 x i8], ptr %i.acr, i64 %i.acs ; 4 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 32
  %i.acv = load ptr, ptr %i.acu, align 8, !tbaa !315
  %i.acw = ptrtoint ptr %i.acv to i64
  %i.acx = sub i64 %i.acw, %i.acp
  %i.acy = getelementptr inbounds nuw i8, ptr %i.act, i64 40
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !315
  %i.ada = ptrtoint ptr %i.acz to i64
  %i.adb = sub i64 %i.ada, %i.acp
  %i.adc = shl i64 %i.acx, 24
  %i.add = ashr i64 %i.adc, 32
  %i.ade = getelementptr inbounds [4 x i8], ptr %i.aaf, i64 %i.add ; 2 uses
  %i.adf = load i32, ptr %i.ade, align 4, !tbaa !274 ; 2 uses
  %i.adg = icmp eq i32 %i.adf, 1
  %i.adh = shl i64 %i.adb, 24
  %i.adi = ashr i64 %i.adh, 32
  %i.adj = getelementptr inbounds [4 x i8], ptr %i.aaf, i64 %i.adi ; 3 uses
  %i.adk = load i32, ptr %i.adj, align 4, !tbaa !274
  %i.adl = icmp eq i32 %i.adk, 1
  %or.cond = select i1 %i.adg, i1 true, i1 %i.adl
  br i1 %or.cond, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.adm = add nsw i32 %i.adf, -1
  store i32 %i.adm, ptr %i.ade, align 4, !tbaa !274
  %i.adn = load i32, ptr %i.adj, align 4, !tbaa !274
  %i.ado = add nsw i32 %i.adn, -1
  store i32 %i.ado, ptr %i.adj, align 4, !tbaa !274
  %i.adp = load i32, ptr %i.ay, align 4, !tbaa !178
  %i.adq = sext i32 %i.adp to i64
  %i.adr = getelementptr [72 x i8], ptr %i.acr, i64 %i.adq
  %i.ads = getelementptr i8, ptr %i.adr, i64 -72  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %i.act, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.act, ptr noundef nonnull align 8 dereferenceable(68) %i.ads, i64 68, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.ads, ptr noundef nonnull align 8 dereferenceable(68) %4, i64 68, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.adt = load i32, ptr %i.ay, align 4, !tbaa !178
  %i.adu = add nsw i32 %i.adt, -1                 ; 2 uses
  store i32 %i.adu, ptr %i.ay, align 4, !tbaa !178
  %i.adv = add nsw i32 %.5508, -1
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cs, %bb.ct
  %i.adw = phi i32 [ %i.adu, %bb.ct ], [ %i.acq, %bb.cs ] ; 2 uses
  %.6 = phi i32 [ %i.adv, %bb.ct ], [ %.5508, %bb.cs ]
  %i.adx = add nsw i32 %.6, 1                     ; 2 uses
  %i.ady = icmp slt i32 %i.adx, %i.adw
  br i1 %i.ady, label %bb.cs, label %_ZN20btAlignedObjectArrayIiED2Ev.exit.thread, !llvm.loop !988

_ZN20btAlignedObjectArrayIiED2Ev.exit.thread:     ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39
  br label %bb.cv

_ZN20btAlignedObjectArrayIiED2Ev.exit:            ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39
  %.not.i.i.i387.not = icmp eq ptr %i.aaf, null
  br i1 %.not.i.i.i387.not, label %_ZN20btAlignedObjectArrayIiED2Ev.exit389, label %bb.cv

bb.cv:                                            ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit.thread, %_ZN20btAlignedObjectArrayIiED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.aaf)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit389 unwind label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.adz = landingpad { ptr, i32 }
          catch ptr null
  %i.aea = extractvalue { ptr, i32 } %i.adz, 0
  call void @__clang_call_terminate(ptr %i.aea) #40
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit389:         ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  %.not.i.i.i390.not = icmp eq ptr %i.uq, null
  br i1 %.not.i.i.i390.not, label %_ZN20btAlignedObjectArrayIiED2Ev.exit392, label %bb.cx

bb.cx:                                            ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit389
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.uq)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit392 unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.aeb = landingpad { ptr, i32 }
          catch ptr null
  %i.aec = extractvalue { ptr, i32 } %i.aeb, 0
  call void @__clang_call_terminate(ptr %i.aec) #40
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit392:         ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit389, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %bb.cz

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cr, %bb.bu
  %.pn310.pn = phi { ptr, i32 } [ %.pn310, %bb.bu ], [ %i.abe, %bb.cr ], [ %lpad.loopexit.split-lp705, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN20btAlignedObjectArrayIiED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %9) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %.loopexit.split-lp444

bb.cz:                                            ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit392, %._crit_edge487
  %i.aed = getelementptr inbounds nuw i8, ptr %0, i64 1540
  store i8 1, ptr %i.aed, align 4, !tbaa !279
  %i.aee = load ptr, ptr %i.f, align 8, !tbaa !249 ; 2 uses
  %.not.i.i.i.i393 = icmp ne ptr %i.aee, null
  %i.aef = load i8, ptr %i.e, align 8, !range !261
  %i.aeg = trunc nuw i8 %i.aef to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i.i393, i1 %i.aeg, i1 false
  br i1 %or.cond.i.i.i, label %bb.da, label %_ZN11btSymMatrixIiED2Ev.exit

bb.da:                                            ; preds = %bb.cz
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.aee)
          to label %_ZN11btSymMatrixIiED2Ev.exit unwind label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.aeh = landingpad { ptr, i32 }
          catch ptr null
  %i.aei = extractvalue { ptr, i32 } %i.aeh, 0
  call void @__clang_call_terminate(ptr %i.aei) #40
  unreachable

_ZN11btSymMatrixIiED2Ev.exit:                     ; preds = %bb.cz, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  ret void

.loopexit.split-lp444:                            ; preds = %.loopexit.split-lp444.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ad, %.loopexit.split-lp.loopexit.split-lp, %bb.be
  %.pn321.pn = phi { ptr, i32 } [ %i.jv, %bb.ad ], [ %i.rc, %bb.be ], [ %.pn310.pn, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp713, %.loopexit.split-lp444.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN11btSymMatrixIiED2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %7) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11btSymMatrixIiED2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !249  ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !261
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN20btAlignedObjectArrayIiED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #40
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit:            ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN10btSoftBody7cutLinkEPKNS_4NodeES2_f(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef %1, ptr noundef %2, float noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 8
  %i.g = trunc i64 %i.f to i32
  %i.h = ptrtoint ptr %2 to i64
  %i.i = sub i64 %i.h, %i.d
  %i.j = lshr exact i64 %i.i, 8
  %i.k = trunc i64 %i.j to i32
  %i.l = tail call noundef zeroext i1 @_ZN10btSoftBody7cutLinkEiif(ptr noundef nonnull align 8 dereferenceable(2064) %0, i32 noundef %i.g, i32 noundef %i.k, float noundef %3)
  ret i1 %i.l
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN10btSoftBody7cutLinkEiif(ptr noundef nonnull align 8 dereferenceable(2064) %0, i32 noundef %1, i32 noundef %2, float noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %.sroa.7.i93 = alloca <{ %class.btVector3, [2 x ptr], float, i8, [3 x i8], float, float, float, [4 x i8] }>, align 8 ; 4 uses
  %.sroa.7.i = alloca <{ [3 x ptr], %class.btVector3, float, [4 x i8], ptr, %class.btVector4, %class.btVector3, %class.btVector3, %class.btVector3, i32, [4 x i8] }>, align 8 ; 4 uses
  %4 = alloca %class.btVector3, align 8           ; 6 uses
  %5 = alloca [2 x ptr], align 16                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169  ; 2 uses
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [256 x i8], ptr %i.b, i64 %i.c ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = sext i32 %2 to i64                       ; 2 uses
  %i.g = getelementptr inbounds [256 x i8], ptr %i.b, i64 %i.f ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.j = load float, ptr %i.i, align 4, !tbaa !252
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.l = load float, ptr %i.k, align 4, !tbaa !252 ; 2 uses
  %i.m = fsub float %i.j, %i.l
  %i.n = fmul float %3, %i.m
  %i.o = load <2 x float>, ptr %i.h, align 4, !tbaa !252
  %i.p = load <2 x float>, ptr %i.e, align 4, !tbaa !252 ; 2 uses
  %i.q = fsub <2 x float> %i.o, %i.p
  %i.r = insertelement <2 x float> poison, float %3, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.t = fmul <2 x float> %i.s, %i.q
  %i.u = fadd <2 x float> %i.p, %i.t
  %i.v = fadd float %i.l, %i.n
  %.sroa.3.12.vec.insert.i10.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.v, i64 0
  store <2 x float> %i.u, ptr %4, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i10.i, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.aa = load float, ptr %i.z, align 4, !tbaa !252
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !252 ; 2 uses
  %i.ad = fsub float %i.aa, %i.ac
  %i.ae = fmul float %3, %i.ad
  %i.af = load <2 x float>, ptr %i.y, align 4, !tbaa !252
  %i.ag = load <2 x float>, ptr %i.x, align 4, !tbaa !252 ; 2 uses
  %i.ah = fsub <2 x float> %i.af, %i.ag
  %i.ai = fmul <2 x float> %i.s, %i.ah
  %i.aj = fadd <2 x float> %i.ag, %i.ai           ; 2 uses
  %i.ak = fadd float %i.ac, %i.ae
  %.sroa.3.12.vec.insert.i10.i60 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ak, i64 0 ; 2 uses
  call void @_ZN10btSoftBody10appendNodeERK9btVector3f(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef 1.000000e+00)
  call void @_ZN10btSoftBody10appendNodeERK9btVector3f(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef 1.000000e+00)
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !169 ; 3 uses
  %i.am = getelementptr inbounds [256 x i8], ptr %i.al, i64 %i.c ; 4 uses
  %i.an = getelementptr inbounds [256 x i8], ptr %i.al, i64 %i.f ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 932 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !170
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr [256 x i8], ptr %i.al, i64 %i.aq ; 14 uses
  %6 = getelementptr i8, ptr %i.ar, i64 -512      ; 4 uses
  store ptr %6, ptr %5, align 16, !tbaa !315
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.at = getelementptr i8, ptr %i.ar, i64 -256   ; 4 uses
  store ptr %i.at, ptr %i.as, align 8, !tbaa !315
  %i.au = getelementptr i8, ptr %i.ar, i64 -464
  store <2 x float> %i.aj, ptr %i.au, align 8, !tbaa !258
  %.sroa.5.0..sroa_idx = getelementptr i8, ptr %i.ar, i64 -456
  store <2 x float> %.sroa.3.12.vec.insert.i10.i60, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !258
  %i.av = getelementptr i8, ptr %i.ar, i64 -208
  store <2 x float> %i.aj, ptr %i.av, align 8, !tbaa !258
  %.sroa.5.0..sroa_idx24 = getelementptr i8, ptr %i.ar, i64 -200
  store <2 x float> %.sroa.3.12.vec.insert.i10.i60, ptr %.sroa.5.0..sroa_idx24, align 8, !tbaa !258
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 996 ; 11 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !178 ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ax to i64
  %.pre = load ptr, ptr %i.az, align 8, !tbaa !177
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.ba = phi ptr [ %.pre, %.lr.ph ], [ %i.bq, %bb.d ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %.0114 = phi i1 [ false, %.lr.ph ], [ %.1, %bb.d ]
  %i.bb = getelementptr inbounds nuw [72 x i8], ptr %i.ba, i64 %indvars.iv ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !315 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !315 ; 2 uses
  %7 = icmp eq ptr %i.bd, %i.am
  %8 = icmp eq ptr %i.bf, %i.an
  %or.cond.i = and i1 %7, %8
  %i.bg = icmp eq ptr %i.bd, %i.an
  %i.bh = icmp eq ptr %i.bf, %i.am
  %or.cond8.i = and i1 %i.bg, %i.bh
  %spec.select.i = select i1 %or.cond8.i, i32 1, i32 -1
  %.0.i = select i1 %or.cond.i, i32 0, i32 %spec.select.i ; 3 uses
  %.not57 = icmp eq i32 %.0.i, -1
  br i1 %.not57, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bi = trunc nuw nsw i64 %indvars.iv to i32
  tail call void @_ZN10btSoftBody10appendLinkEiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(2064) %0, i32 noundef %i.bi, ptr noundef null)
  %i.bj = load ptr, ptr %i.az, align 8, !tbaa !177 ; 3 uses
  %i.bk = getelementptr inbounds nuw [72 x i8], ptr %i.bj, i64 %indvars.iv
  %i.bl = load i32, ptr %i.aw, align 4, !tbaa !178
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr [72 x i8], ptr %i.bj, i64 %i.bm
  %9 = zext nneg i32 %.0.i to i64
  %10 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !315
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  store ptr %11, ptr %i.bo, align 8, !tbaa !315
  %12 = sub nuw nsw i32 1, %.0.i
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !315
  %i.bp = getelementptr i8, ptr %i.bn, i64 -40
  store ptr %15, ptr %i.bp, align 8, !tbaa !315
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bq = phi ptr [ %i.bj, %bb.c ], [ %i.ba, %bb.b ]
  %.1 = phi i1 [ true, %bb.c ], [ %.0114, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !991

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi i1 [ false, %bb.a ], [ %.1, %bb.d ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1028 ; 6 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !182 ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.preheader.lr.ph, label %._crit_edge118

.preheader.lr.ph:                                 ; preds = %._crit_edge
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 7 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 14 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1488 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 4 uses
  %i.cb = getelementptr i8, ptr %i.ar, i64 -496
  %i.cc = getelementptr i8, ptr %i.ar, i64 -492
  %i.cd = getelementptr i8, ptr %i.ar, i64 -488
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1540 ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ar, i64 -240
  %i.cg = getelementptr i8, ptr %i.ar, i64 -236
  %i.ch = getelementptr i8, ptr %i.ar, i64 -232
  %wide.trip.count126 = zext nneg i32 %i.bs to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.e
  %indvars.iv123 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next124, %bb.e ] ; 3 uses
  br label %bb.f

bb.e:                                             ; preds = %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit78
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count126
  br i1 %exitcond127.not, label %._crit_edge118, label %.preheader, !llvm.loop !992

bb.f:                                             ; preds = %.preheader, %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit78
  %indvars.iv119 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next120.pre-phi, %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit78 ] ; 6 uses
  %.054115 = phi i64 [ 2, %.preheader ], [ %indvars.iv119, %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit78 ] ; 2 uses
  %i.ci = load ptr, ptr %i.bu, align 8, !tbaa !181 ; 3 uses
  %i.cj = getelementptr inbounds nuw [144 x i8], ptr %i.ci, i64 %indvars.iv123 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %.054115
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !315 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv119
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !315 ; 2 uses
  %i.cp = icmp eq ptr %i.cm, %i.am
  %i.cq = icmp eq ptr %i.co, %i.an
  %or.cond.i63 = and i1 %i.cp, %i.cq
  %i.cr = icmp eq ptr %i.cm, %i.an
  %i.cs = icmp eq ptr %i.co, %i.am
  %or.cond8.i64 = and i1 %i.cr, %i.cs
  %spec.select.i65 = select i1 %or.cond8.i64, i32 1, i32 -1
  %.0.i66 = select i1 %or.cond.i63, i32 0, i32 %spec.select.i65 ; 3 uses
  %.not = icmp eq i32 %.0.i66, -1
  br i1 %.not, label %._ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit78_crit_edge, label %bb.g

._ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit78_crit_edge: ; preds = %bb.f
  %.pre130 = add nuw nsw i64 %indvars.iv119, 1
  br label %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit78

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %i.ct = load <2 x ptr>, ptr %i.cj, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(124) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(124) %i.ck, i64 124, i1 false)
  %i.cu = load i32, ptr %i.br, align 4, !tbaa !182 ; 7 uses
  %i.cv = load i32, ptr %i.bv, align 8, !tbaa !183
  %i.cw = icmp eq i32 %i.cu, %i.cv
  br i1 %i.cw, label %bb.h, label %_ZN10btSoftBody10appendFaceEiPNS_8MaterialE.exit

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i = icmp eq i32 %i.cu, 0
  %i.cx = shl nsw i32 %i.cu, 1
  %i.cy = select i1 %.not.i.i.i, i32 1, i32 %i.cx ; 4 uses
  %i.cz = icmp slt i32 %i.cu, %i.cy
  br i1 %i.cz, label %bb.i, label %_ZN10btSoftBody10appendFaceEiPNS_8MaterialE.exit

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not.i.i.i.i, label %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE8allocateEi.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.da = sext i32 %i.cy to i64
  %i.db = mul nsw i64 %i.da, 144
  %i.dc = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.db, i32 noundef 16)
  %.pre.i.i = load i32, ptr %i.br, align 4, !tbaa !182
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE8allocateEi.exit.i.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE8allocateEi.exit.i.i.i: ; preds = %bb.j, %bb.i
  %i.dd = phi i32 [ %.pre.i.i, %bb.j ], [ %i.cu, %bb.i ] ; 4 uses
  %.0.i.i.i.i = phi ptr [ %i.dc, %bb.j ], [ null, %bb.i ] ; 5 uses
  %i.de = icmp sgt i32 %i.dd, 0
  br i1 %i.de, label %.lr.ph.i.i.i.i, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE8allocateEi.exit.i.i.i
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.dd to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i, 1
  %i.df = icmp eq i32 %i.dd, 1
  br i1 %i.df, label %.epil.preheader, label %.lr.ph.i.i.i.i.new

.lr.ph.i.i.i.i.new:                               ; preds = %.lr.ph.i.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i.i, 2147483646
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.new
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %indvars.iv.next.i.i.i.i.1, %bb.k ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %niter.next.1, %bb.k ]
  %i.dg = getelementptr inbounds nuw [144 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.i.i.i
  %i.dh = load ptr, ptr %i.bu, align 8, !tbaa !181
  %i.di = getelementptr inbounds nuw [144 x i8], ptr %i.dh, i64 %indvars.iv.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.dg, ptr noundef nonnull align 8 dereferenceable(144) %i.di, i64 144, i1 false)
  %indvars.iv.next.i.i.i.i = or disjoint i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.dj = getelementptr inbounds nuw [144 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.dk = load ptr, ptr %i.bu, align 8, !tbaa !181
  %i.dl = getelementptr inbounds nuw [144 x i8], ptr %i.dk, i64 %indvars.iv.next.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.dj, ptr noundef nonnull align 8 dereferenceable(144) %i.dl, i64 144, i1 false)
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa, label %bb.k, !llvm.loop !10

_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa: ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.1, %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod150 = trunc i32 %i.dd to i1
  tail call void @llvm.assume(i1 %lcmp.mod150)
  %i.dm = getelementptr inbounds nuw [144 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.i.i.i.epil.init
  %i.dn = load ptr, ptr %i.bu, align 8, !tbaa !181
  %i.do = getelementptr inbounds nuw [144 x i8], ptr %i.dn, i64 %indvars.iv.i.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.dm, ptr noundef nonnull align 8 dereferenceable(144) %i.do, i64 144, i1 false)
  br label %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i

_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE8allocateEi.exit.i.i.i
  %i.dp = load ptr, ptr %i.bu, align 8, !tbaa !181 ; 2 uses
  %.not.i5.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i5.i.i.i, label %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE10deallocateEv.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i
  %i.dq = load i8, ptr %i.bw, align 8, !tbaa !180, !range !261, !noundef !262
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.m, label %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE10deallocateEv.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.dp)
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE10deallocateEv.exit.i.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE10deallocateEv.exit.i.i.i: ; preds = %bb.m, %bb.l, %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i
  store i8 1, ptr %i.bw, align 8, !tbaa !180
  store ptr %.0.i.i.i.i, ptr %i.bu, align 8, !tbaa !181
  store i32 %i.cy, ptr %i.bv, align 8, !tbaa !183
  %.pre2.i.i = load i32, ptr %i.br, align 4, !tbaa !182
  br label %_ZN10btSoftBody10appendFaceEiPNS_8MaterialE.exit

_ZN10btSoftBody10appendFaceEiPNS_8MaterialE.exit: ; preds = %bb.g, %bb.h, %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE10deallocateEv.exit.i.i.i
  %i.ds = phi ptr [ %.0.i.i.i.i, %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE10deallocateEv.exit.i.i.i ], [ %i.ci, %bb.h ], [ %i.ci, %bb.g ]
  %i.dt = phi i32 [ %.pre2.i.i, %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE10deallocateEv.exit.i.i.i ], [ %i.cu, %bb.h ], [ %i.cu, %bb.g ]
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [144 x i8], ptr %i.ds, i64 %i.du ; 2 uses
  store <2 x ptr> %i.ct, ptr %i.dv, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.7.i, i64 128, i1 false)
  %i.dw = load i32, ptr %i.br, align 4, !tbaa !182 ; 2 uses
  %i.dx = add nsw i32 %i.dw, 1
  store i32 %i.dx, ptr %i.br, align 4, !tbaa !182
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %i.dy = load ptr, ptr %i.bu, align 8, !tbaa !181 ; 2 uses
  %i.dz = getelementptr inbounds nuw [144 x i8], ptr %i.dy, i64 %indvars.iv123 ; 2 uses
  %i.ea = sext i32 %i.dw to i64
  %i.eb = getelementptr inbounds [144 x i8], ptr %i.dy, i64 %i.ea
  %16 = zext nneg i32 %.0.i66 to i64
  %17 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !315
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv119
  store ptr %18, ptr %i.ed, align 8, !tbaa !315
  %19 = sub nuw nsw i32 1, %.0.i66
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !315
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.054115
  store ptr %22, ptr %i.ef, align 8, !tbaa !315
  %i.eg = add nuw nsw i64 %indvars.iv119, 1       ; 4 uses
  %.cmp.not = icmp eq i64 %indvars.iv119, 2
  %i.eh = select i1 %.cmp.not, i64 0, i64 %i.eg
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.eh ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !315 ; 8 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !269 ; 4 uses
  %i.em = load i32, ptr %i.aw, align 4, !tbaa !178 ; 11 uses
  %.not26.i.i = icmp sgt i32 %i.em, 0
  br i1 %.not26.i.i, label %.lr.ph.i.i, label %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN10btSoftBody10appendFaceEiPNS_8MaterialE.exit
  %i.en = load ptr, ptr %i.bx, align 8, !tbaa !177 ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.em to i64
  br label %bb.o

bb.n:                                             ; preds = %.critedge.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i, label %bb.o, !llvm.loop !8

bb.o:                                             ; preds = %bb.n, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.n ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [72 x i8], ptr %i.en, i64 %indvars.iv.i.i ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !315 ; 2 uses
  %i.er = icmp eq ptr %i.eq, %6
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.et = load ptr, ptr %i.es, align 8            ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.ej
  %or.cond.i.i = select i1 %i.er, i1 %i.eu, i1 false
  br i1 %or.cond.i.i, label %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.o
  %i.ev = icmp eq ptr %i.eq, %i.ej
  %i.ew = icmp eq ptr %i.et, %6
  %or.cond23.i.i = select i1 %i.ev, i1 %i.ew, i1 false
  br i1 %or.cond23.i.i, label %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit, label %bb.n

_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i: ; preds = %bb.n, %_ZN10btSoftBody10appendFaceEiPNS_8MaterialE.exit
  %.not.i = icmp eq ptr %i.el, null
  br i1 %.not.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i
  %i.ex = load ptr, ptr %i.by, align 8, !tbaa !229
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !294
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i
  %.sroa.6.0.i = phi ptr [ %i.ey, %bb.p ], [ %i.el, %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i ]
  %i.ez = load i32, ptr %i.bz, align 8, !tbaa !179
  %i.fa = icmp eq i32 %i.em, %i.ez
  br i1 %i.fa, label %bb.r, label %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit

bb.r:                                             ; preds = %bb.q
  %.not.i.i.i82 = icmp eq i32 %i.em, 0
  %i.fb = shl nsw i32 %i.em, 1
  %i.fc = select i1 %.not.i.i.i82, i32 1, i32 %i.fb ; 4 uses
  %i.fd = icmp slt i32 %i.em, %i.fc
  br i1 %i.fd, label %bb.s, label %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit

bb.s:                                             ; preds = %bb.r
  %.not.i.i.i.i83 = icmp eq i32 %i.fc, 0
  br i1 %.not.i.i.i.i83, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fe = sext i32 %i.fc to i64
  %i.ff = mul nsw i64 %i.fe, 72
  %i.fg = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ff, i32 noundef 16)
  %.pre.i.i84 = load i32, ptr %i.aw, align 4, !tbaa !178
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i: ; preds = %bb.t, %bb.s
  %i.fh = phi i32 [ %.pre.i.i84, %bb.t ], [ %i.em, %bb.s ] ; 4 uses
  %.0.i.i.i.i85 = phi ptr [ %i.fg, %bb.t ], [ null, %bb.s ] ; 4 uses
  %i.fi = icmp sgt i32 %i.fh, 0
  br i1 %i.fi, label %.lr.ph.i.i.i.i88, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i

.lr.ph.i.i.i.i88:                                 ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i
  %wide.trip.count.i.i.i.i89 = zext nneg i32 %i.fh to i64 ; 2 uses
  %xtraiter152 = and i64 %wide.trip.count.i.i.i.i89, 1
  %i.fj = icmp eq i32 %i.fh, 1
  br i1 %i.fj, label %.epil.preheader151, label %.lr.ph.i.i.i.i88.new

.lr.ph.i.i.i.i88.new:                             ; preds = %.lr.ph.i.i.i.i88
  %unroll_iter155 = and i64 %wide.trip.count.i.i.i.i89, 2147483646
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i.i.i.i88.new
  %indvars.iv.i.i.i.i90 = phi i64 [ 0, %.lr.ph.i.i.i.i88.new ], [ %indvars.iv.next.i.i.i.i91.1, %bb.u ] ; 4 uses
  %niter156 = phi i64 [ 0, %.lr.ph.i.i.i.i88.new ], [ %niter156.next.1, %bb.u ]
  %i.fk = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i85, i64 %indvars.iv.i.i.i.i90
  %i.fl = load ptr, ptr %i.bx, align 8, !tbaa !177
  %i.fm = getelementptr inbounds nuw [72 x i8], ptr %i.fl, i64 %indvars.iv.i.i.i.i90
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fk, ptr noundef nonnull align 8 dereferenceable(72) %i.fm, i64 72, i1 false)
  %indvars.iv.next.i.i.i.i91 = or disjoint i64 %indvars.iv.i.i.i.i90, 1 ; 2 uses
  %i.fn = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i85, i64 %indvars.iv.next.i.i.i.i91
  %i.fo = load ptr, ptr %i.bx, align 8, !tbaa !177
  %i.fp = getelementptr inbounds nuw [72 x i8], ptr %i.fo, i64 %indvars.iv.next.i.i.i.i91
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fn, ptr noundef nonnull align 8 dereferenceable(72) %i.fp, i64 72, i1 false)
  %indvars.iv.next.i.i.i.i91.1 = add nuw nsw i64 %indvars.iv.i.i.i.i90, 2 ; 2 uses
  %niter156.next.1 = add i64 %niter156, 2         ; 2 uses
  %niter156.ncmp.1 = icmp eq i64 %niter156.next.1, %unroll_iter155
  br i1 %niter156.ncmp.1, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa, label %bb.u, !llvm.loop !9

_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa: ; preds = %bb.u
  %lcmp.mod153.not = icmp eq i64 %xtraiter152, 0
  br i1 %lcmp.mod153.not, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i, label %.epil.preheader151

.epil.preheader151:                               ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i88
  %indvars.iv.i.i.i.i90.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i88 ], [ %indvars.iv.next.i.i.i.i91.1, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod154 = trunc i32 %i.fh to i1
  tail call void @llvm.assume(i1 %lcmp.mod154)
  %i.fq = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i85, i64 %indvars.iv.i.i.i.i90.epil.init
  %i.fr = load ptr, ptr %i.bx, align 8, !tbaa !177
  %i.fs = getelementptr inbounds nuw [72 x i8], ptr %i.fr, i64 %indvars.iv.i.i.i.i90.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fq, ptr noundef nonnull align 8 dereferenceable(72) %i.fs, i64 72, i1 false)
  br label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i

_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i: ; preds = %.epil.preheader151, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i
  %i.ft = load ptr, ptr %i.bx, align 8, !tbaa !177 ; 2 uses
  %.not.i5.i.i.i86 = icmp eq ptr %i.ft, null
  br i1 %.not.i5.i.i.i86, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i, label %bb.v

bb.v:                                             ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i
  %i.fu = load i8, ptr %i.ca, align 8, !tbaa !176, !range !261, !noundef !262
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %bb.w, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ft)
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i: ; preds = %bb.w, %bb.v, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i
  store i8 1, ptr %i.ca, align 8, !tbaa !176
  store ptr %.0.i.i.i.i85, ptr %i.bx, align 8, !tbaa !177
  store i32 %i.fc, ptr %i.bz, align 8, !tbaa !179
  %.pre2.i.i87 = load i32, ptr %i.aw, align 4, !tbaa !178
  br label %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit

_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit: ; preds = %bb.q, %bb.r, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i
  %i.fw = phi i32 [ %.pre2.i.i87, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i ], [ %i.em, %bb.r ], [ %i.em, %bb.q ]
  %i.fx = load ptr, ptr %i.bx, align 8, !tbaa !177
  %i.fy = sext i32 %i.fw to i64
  %i.fz = getelementptr inbounds [72 x i8], ptr %i.fx, i64 %i.fy ; 3 uses
  store ptr null, ptr %i.fz, align 8
  %.sroa.6.0..sroa_idx.i80 = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store ptr %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i80, align 8
  %.sroa.7.0..sroa_idx.i81 = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx.i81, i8 0, i64 56, i1 false)
  %i.ga = load i32, ptr %i.aw, align 4, !tbaa !178
  %i.gb = add nsw i32 %i.ga, 1                    ; 3 uses
  store i32 %i.gb, ptr %i.aw, align 4, !tbaa !178
  %i.gc = load ptr, ptr %i.bx, align 8, !tbaa !177 ; 2 uses
  %i.gd = sext i32 %i.gb to i64
  %i.ge = getelementptr [72 x i8], ptr %i.gc, i64 %i.gd ; 3 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 -40
  store ptr %6, ptr %i.gf, align 8, !tbaa !315
  %i.gg = getelementptr i8, ptr %i.ge, i64 -32
  store ptr %i.ej, ptr %i.gg, align 8, !tbaa !315
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.gi = load float, ptr %i.cb, align 8, !tbaa !252
  %i.gj = load float, ptr %i.gh, align 4, !tbaa !252
  %i.gk = fsub float %i.gi, %i.gj                 ; 2 uses
  %i.gl = load float, ptr %i.cc, align 4, !tbaa !252
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ej, i64 20
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !252
  %i.go = fsub float %i.gl, %i.gn                 ; 2 uses
  %i.gp = load float, ptr %i.cd, align 8, !tbaa !252
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !252
  %i.gs = fsub float %i.gp, %i.gr                 ; 2 uses
  %i.gt = fmul float %i.go, %i.go
  %i.gu = tail call float @llvm.fmuladd.f32(float %i.gk, float %i.gk, float %i.gt)
  %i.gv = tail call noundef float @llvm.fmuladd.f32(float %i.gs, float %i.gs, float %i.gu)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.gv)
  %i.gw = getelementptr i8, ptr %i.ge, i64 -24
  store float %sqrt.i.i, ptr %i.gw, align 8, !tbaa !326
  store i8 1, ptr %i.ce, align 4, !tbaa !279
  %.pre128 = load ptr, ptr %i.ei, align 8, !tbaa !315
  %.pre129 = load ptr, ptr %i.ek, align 8, !tbaa !269
  br label %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit

_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit: ; preds = %bb.o, %.critedge.i.i, %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit
  %i.gx = phi ptr [ %i.gc, %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit ], [ %i.en, %.critedge.i.i ], [ %i.en, %bb.o ] ; 3 uses
  %i.gy = phi i32 [ %i.gb, %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit ], [ %i.em, %.critedge.i.i ], [ %i.em, %bb.o ] ; 9 uses
  %i.gz = phi ptr [ %.pre129, %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit ], [ %i.el, %.critedge.i.i ], [ %i.el, %bb.o ] ; 2 uses
  %i.ha = phi ptr [ %.pre128, %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit ], [ %i.ej, %.critedge.i.i ], [ %i.ej, %bb.o ] ; 6 uses
  %.not26.i.i67 = icmp sgt i32 %i.gy, 0
  br i1 %.not26.i.i67, label %.lr.ph.i.i70, label %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i68

.lr.ph.i.i70:                                     ; preds = %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit
  %wide.trip.count.i.i71 = zext nneg i32 %i.gy to i64
  br label %bb.y

bb.x:                                             ; preds = %.critedge.i.i74
  %indvars.iv.next.i.i76 = add nuw nsw i64 %indvars.iv.i.i72, 1 ; 2 uses
  %exitcond.not.i.i77 = icmp eq i64 %indvars.iv.next.i.i76, %wide.trip.count.i.i71
  br i1 %exitcond.not.i.i77, label %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i68, label %bb.y, !llvm.loop !8

bb.y:                                             ; preds = %bb.x, %.lr.ph.i.i70
  %indvars.iv.i.i72 = phi i64 [ 0, %.lr.ph.i.i70 ], [ %indvars.iv.next.i.i76, %bb.x ] ; 2 uses
  %i.hb = getelementptr inbounds nuw [72 x i8], ptr %i.gx, i64 %indvars.iv.i.i72 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 32
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !315 ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.at
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 40
  %i.hg = load ptr, ptr %i.hf, align 8            ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.ha
  %or.cond.i.i73 = select i1 %i.he, i1 %i.hh, i1 false
  br i1 %or.cond.i.i73, label %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit78, label %.critedge.i.i74

.critedge.i.i74:                                  ; preds = %bb.y
  %i.hi = icmp eq ptr %i.hd, %i.ha
  %i.hj = icmp eq ptr %i.hg, %i.at
  %or.cond23.i.i75 = select i1 %i.hi, i1 %i.hj, i1 false
  br i1 %or.cond23.i.i75, label %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit78, label %bb.x

_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i68: ; preds = %bb.x, %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i93)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.i93, i8 0, i64 56, i1 false)
  %.not.i94 = icmp eq ptr %i.gz, null
  br i1 %.not.i94, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i68
  %i.hk = load ptr, ptr %i.by, align 8, !tbaa !229
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !294
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i68
  %.sroa.6.0.i95 = phi ptr [ %i.hl, %bb.z ], [ %i.gz, %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i68 ]
  %i.hm = load i32, ptr %i.bz, align 8, !tbaa !179
  %i.hn = icmp eq i32 %i.gy, %i.hm
  br i1 %i.hn, label %bb.ab, label %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit112

bb.ab:                                            ; preds = %bb.aa
  %.not.i.i.i98 = icmp eq i32 %i.gy, 0
  %i.ho = shl nsw i32 %i.gy, 1
  %i.hp = select i1 %.not.i.i.i98, i32 1, i32 %i.ho ; 4 uses
  %i.hq = icmp slt i32 %i.gy, %i.hp
  br i1 %i.hq, label %bb.ac, label %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit112

bb.ac:                                            ; preds = %bb.ab
  %.not.i.i.i.i99 = icmp eq i32 %i.hp, 0
  br i1 %.not.i.i.i.i99, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i101, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hr = sext i32 %i.hp to i64
  %i.hs = mul nsw i64 %i.hr, 72
  %i.ht = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.hs, i32 noundef 16)
  %.pre.i.i100 = load i32, ptr %i.aw, align 4, !tbaa !178
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i101

_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i101: ; preds = %bb.ad, %bb.ac
  %i.hu = phi i32 [ %.pre.i.i100, %bb.ad ], [ %i.gy, %bb.ac ] ; 4 uses
  %.0.i.i.i.i102 = phi ptr [ %i.ht, %bb.ad ], [ null, %bb.ac ] ; 5 uses
  %i.hv = icmp sgt i32 %i.hu, 0
  br i1 %i.hv, label %.lr.ph.i.i.i.i107, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i103

.lr.ph.i.i.i.i107:                                ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i101
  %wide.trip.count.i.i.i.i108 = zext nneg i32 %i.hu to i64 ; 2 uses
  %xtraiter158 = and i64 %wide.trip.count.i.i.i.i108, 1
  %i.hw = icmp eq i32 %i.hu, 1
  br i1 %i.hw, label %.epil.preheader157, label %.lr.ph.i.i.i.i107.new

.lr.ph.i.i.i.i107.new:                            ; preds = %.lr.ph.i.i.i.i107
  %unroll_iter161 = and i64 %wide.trip.count.i.i.i.i108, 2147483646
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.i.i.i.i107.new
  %indvars.iv.i.i.i.i109 = phi i64 [ 0, %.lr.ph.i.i.i.i107.new ], [ %indvars.iv.next.i.i.i.i110.1, %bb.ae ] ; 4 uses
  %niter162 = phi i64 [ 0, %.lr.ph.i.i.i.i107.new ], [ %niter162.next.1, %bb.ae ]
  %i.hx = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i102, i64 %indvars.iv.i.i.i.i109
  %i.hy = load ptr, ptr %i.bx, align 8, !tbaa !177
  %i.hz = getelementptr inbounds nuw [72 x i8], ptr %i.hy, i64 %indvars.iv.i.i.i.i109
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.hx, ptr noundef nonnull align 8 dereferenceable(72) %i.hz, i64 72, i1 false)
  %indvars.iv.next.i.i.i.i110 = or disjoint i64 %indvars.iv.i.i.i.i109, 1 ; 2 uses
  %i.ia = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i102, i64 %indvars.iv.next.i.i.i.i110
  %i.ib = load ptr, ptr %i.bx, align 8, !tbaa !177
  %i.ic = getelementptr inbounds nuw [72 x i8], ptr %i.ib, i64 %indvars.iv.next.i.i.i.i110
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ia, ptr noundef nonnull align 8 dereferenceable(72) %i.ic, i64 72, i1 false)
  %indvars.iv.next.i.i.i.i110.1 = add nuw nsw i64 %indvars.iv.i.i.i.i109, 2 ; 2 uses
  %niter162.next.1 = add i64 %niter162, 2         ; 2 uses
  %niter162.ncmp.1 = icmp eq i64 %niter162.next.1, %unroll_iter161
  br i1 %niter162.ncmp.1, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i103.loopexit.unr-lcssa, label %bb.ae, !llvm.loop !9

_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i103.loopexit.unr-lcssa: ; preds = %bb.ae
  %lcmp.mod159.not = icmp eq i64 %xtraiter158, 0
  br i1 %lcmp.mod159.not, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i103, label %.epil.preheader157

.epil.preheader157:                               ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i103.loopexit.unr-lcssa, %.lr.ph.i.i.i.i107
  %indvars.iv.i.i.i.i109.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i107 ], [ %indvars.iv.next.i.i.i.i110.1, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i103.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod160 = trunc i32 %i.hu to i1
  tail call void @llvm.assume(i1 %lcmp.mod160)
  %i.id = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i102, i64 %indvars.iv.i.i.i.i109.epil.init
  %i.ie = load ptr, ptr %i.bx, align 8, !tbaa !177
  %i.if = getelementptr inbounds nuw [72 x i8], ptr %i.ie, i64 %indvars.iv.i.i.i.i109.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.id, ptr noundef nonnull align 8 dereferenceable(72) %i.if, i64 72, i1 false)
  br label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i103

_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i103: ; preds = %.epil.preheader157, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i103.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i101
  %i.ig = load ptr, ptr %i.bx, align 8, !tbaa !177 ; 2 uses
  %.not.i5.i.i.i104 = icmp eq ptr %i.ig, null
  br i1 %.not.i5.i.i.i104, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i105, label %bb.af

bb.af:                                            ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i103
  %i.ih = load i8, ptr %i.ca, align 8, !tbaa !176, !range !261, !noundef !262
  %i.ii = trunc nuw i8 %i.ih to i1
  br i1 %i.ii, label %bb.ag, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i105

bb.ag:                                            ; preds = %bb.af
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ig)
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i105

_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i105: ; preds = %bb.ag, %bb.af, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i103
  store i8 1, ptr %i.ca, align 8, !tbaa !176
  store ptr %.0.i.i.i.i102, ptr %i.bx, align 8, !tbaa !177
  store i32 %i.hp, ptr %i.bz, align 8, !tbaa !179
  %.pre2.i.i106 = load i32, ptr %i.aw, align 4, !tbaa !178
  br label %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit112

_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit112: ; preds = %bb.aa, %bb.ab, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i105
  %i.ij = phi ptr [ %.0.i.i.i.i102, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i105 ], [ %i.gx, %bb.ab ], [ %i.gx, %bb.aa ]
  %i.ik = phi i32 [ %.pre2.i.i106, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i105 ], [ %i.gy, %bb.ab ], [ %i.gy, %bb.aa ]
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [72 x i8], ptr %i.ij, i64 %i.il ; 3 uses
  store ptr null, ptr %i.im, align 8
  %.sroa.6.0..sroa_idx.i96 = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  store ptr %.sroa.6.0.i95, ptr %.sroa.6.0..sroa_idx.i96, align 8
  %.sroa.7.0..sroa_idx.i97 = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx.i97, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.i93, i64 56, i1 false)
  %i.in = load i32, ptr %i.aw, align 4, !tbaa !178
  %i.io = add nsw i32 %i.in, 1                    ; 2 uses
  store i32 %i.io, ptr %i.aw, align 4, !tbaa !178
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i93)
  %i.ip = load ptr, ptr %i.bx, align 8, !tbaa !177
  %i.iq = sext i32 %i.io to i64
  %i.ir = getelementptr [72 x i8], ptr %i.ip, i64 %i.iq ; 3 uses
  %i.is = getelementptr i8, ptr %i.ir, i64 -40
  store ptr %i.at, ptr %i.is, align 8, !tbaa !315
  %i.it = getelementptr i8, ptr %i.ir, i64 -32
  store ptr %i.ha, ptr %i.it, align 8, !tbaa !315
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.iv = load float, ptr %i.cf, align 8, !tbaa !252
  %i.iw = load float, ptr %i.iu, align 4, !tbaa !252
  %i.ix = fsub float %i.iv, %i.iw                 ; 2 uses
  %i.iy = load float, ptr %i.cg, align 4, !tbaa !252
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ha, i64 20
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !252
  %i.jb = fsub float %i.iy, %i.ja                 ; 2 uses
  %i.jc = load float, ptr %i.ch, align 8, !tbaa !252
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.je = load float, ptr %i.jd, align 4, !tbaa !252
  %i.jf = fsub float %i.jc, %i.je                 ; 2 uses
  %i.jg = fmul float %i.jb, %i.jb
  %i.jh = tail call float @llvm.fmuladd.f32(float %i.ix, float %i.ix, float %i.jg)
  %i.ji = tail call noundef float @llvm.fmuladd.f32(float %i.jf, float %i.jf, float %i.jh)
  %sqrt.i.i69 = tail call noundef float @llvm.sqrt.f32(float %i.ji)
  %i.jj = getelementptr i8, ptr %i.ir, i64 -24
  store float %sqrt.i.i69, ptr %i.jj, align 8, !tbaa !326
  store i8 1, ptr %i.ce, align 4, !tbaa !279
  br label %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit78

_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit78: ; preds = %.critedge.i.i74, %bb.y, %._ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit78_crit_edge, %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit112
  %indvars.iv.next120.pre-phi = phi i64 [ %.pre130, %._ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit78_crit_edge ], [ %i.eg, %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit112 ], [ %i.eg, %bb.y ], [ %i.eg, %.critedge.i.i74 ] ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next120.pre-phi, 3
  br i1 %exitcond122.not, label %bb.e, label %bb.f, !llvm.loop !993

._crit_edge118:                                   ; preds = %bb.e, %._crit_edge
  br i1 %.0.lcssa, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge118
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 1544 ; 2 uses
  %i.jl = getelementptr i8, ptr %i.ar, i64 -392
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !268
  tail call void @_ZN6btDbvt6removeEP10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(64) %i.jk, ptr noundef %i.jm)
  %i.jn = getelementptr i8, ptr %i.ar, i64 -136
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !268
  tail call void @_ZN6btDbvt6removeEP10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(64) %i.jk, ptr noundef %i.jo)
  %i.jp = load i32, ptr %i.ao, align 4, !tbaa !170
  %i.jq = add nsw i32 %i.jp, -2
  store i32 %i.jq, ptr %i.ao, align 4, !tbaa !170
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge118
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  ret i1 %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN10btSoftBody7rayTestERK9btVector3S2_RNS_8sRayCastE(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 20)) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1028
  %i.b = load i32, ptr %i.a, align 4, !tbaa !182
  %.not = icmp ne i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN10btSoftBody18initializeFaceTreeEv(ptr noundef nonnull align 8 dereferenceable(2064) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %0, ptr %3, align 8, !tbaa !432
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store float 1.000000e+00, ptr %i.f, align 8, !tbaa !433
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !994
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 -1, ptr %i.h, align 4, !tbaa !434
  %i.i = tail call noundef i32 @_ZNK10btSoftBody7rayTestERK9btVector3S2_RfRNS_8eFeature1_ERib(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, i1 noundef zeroext false)
  %i.j = icmp ne i32 %i.i, 0
  ret i1 %i.j
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10btSoftBody18initializeFaceTreeEv(ptr noundef nonnull align 8 dereferenceable(2064) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.CProfileSample, align 1      ; 6 uses
  %2 = alloca %class.btAlignedObjectArray.69, align 8 ; 8 uses
  %3 = alloca %class.btAlignedObjectArray.71, align 8 ; 9 uses
  %4 = alloca %class.btAlignedObjectArray.52, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #39
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull @.str)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 4 uses
  invoke void @_ZN6btDbvt5clearEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  store i8 1, ptr %i.b, align 8, !tbaa !438
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr null, ptr %i.c, align 8, !tbaa !439
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.e, align 8, !tbaa !440
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1028 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !182  ; 6 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %.loopexit129.thread

.loopexit129.thread:                              ; preds = %bb.b
  store i32 %i.g, ptr %i.d, align 4, !tbaa !441
  br label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.i = zext nneg i32 %i.g to i64
  %i.j = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  %i.k = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16)
          to label %.loopexit129 unwind label %.loopexit.split-lp125.thread ; 4 uses

.loopexit129:                                     ; preds = %bb.c
  store i8 1, ptr %i.b, align 8, !tbaa !438
  store ptr %i.k, ptr %i.c, align 8, !tbaa !439
  store i32 %i.g, ptr %i.e, align 8, !tbaa !440
  call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %i.j, i1 false), !tbaa !442
  %.pre = load i32, ptr %i.f, align 4, !tbaa !182 ; 2 uses
  store i32 %i.g, ptr %i.d, align 4, !tbaa !441
  %i.l = icmp sgt i32 %.pre, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit129
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1040
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !181
  %i.p = getelementptr inbounds nuw [144 x i8], ptr %i.o, i64 %indvars.iv ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !315, !noalias !1009
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !315, !noalias !1009
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !315, !noalias !1009
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load <4 x float>, ptr %i.s, align 4, !tbaa !258 ; 4 uses
  %i.aa = load <4 x float>, ptr %i.v, align 4, !tbaa !252, !noalias !1010 ; 4 uses
  %i.ab = load <4 x float>, ptr %i.y, align 4, !tbaa !252, !noalias !1010 ; 4 uses
  %i.ac = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 56, i32 noundef 16)
          to label %bb.f unwind label %.loopexit.split-lp125.loopexit ; 7 uses

bb.f:                                             ; preds = %bb.e
  %i.ad = fcmp olt <4 x float> %i.aa, %i.z
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store i64 0, ptr %i.af, align 8
  store ptr %i.p, ptr %i.ae, align 8, !tbaa !258
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store ptr null, ptr %i.ag, align 8, !tbaa !258
  %i.ah = select <4 x i1> %i.ad, <4 x float> %i.aa, <4 x float> %i.z ; 2 uses
  %i.ai = fcmp olt <4 x float> %i.ab, %i.ah
  %i.aj = select <4 x i1> %i.ai, <4 x float> %i.ab, <4 x float> %i.ah
  store <4 x float> %i.aj, ptr %i.ac, align 8, !tbaa !258
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ak = fcmp olt <4 x float> %i.z, %i.aa
  %i.al = select <4 x i1> %i.ak, <4 x float> %i.aa, <4 x float> %i.z ; 2 uses
  %i.am = fcmp olt <4 x float> %i.al, %i.ab
  %i.an = select <4 x i1> %i.am, <4 x float> %i.ab, <4 x float> %i.al ; 2 uses
  %i.ao = fadd <4 x float> %i.an, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>
  %i.ap = shufflevector <4 x float> %i.ao, <4 x float> %i.an, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x float> %i.ap, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !258
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  store ptr %i.ac, ptr %i.aq, align 8, !tbaa !442
  %i.ar = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store ptr %i.ac, ptr %i.ar, align 8, !tbaa !318
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.as = load i32, ptr %i.f, align 4, !tbaa !182 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = icmp slt i64 %indvars.iv.next, %i.at
  br i1 %i.au, label %bb.e, label %._crit_edge, !llvm.loop !999

.loopexit.split-lp125.loopexit:                   ; preds = %bb.e
  %lpad.loopexit141 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp125

.loopexit.split-lp125.thread:                     ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayIP10btDbvtNodeED2Ev.exit98

._crit_edge:                                      ; preds = %bb.f, %.loopexit129.thread, %.loopexit129
  %.lcssa = phi i32 [ %.pre, %.loopexit129 ], [ %i.g, %.loopexit129.thread ], [ %i.as, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i8 1, ptr %i.av, align 8, !tbaa !446
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr null, ptr %i.aw, align 8, !tbaa !447
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  store i32 0, ptr %i.ax, align 4, !tbaa !448
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.ay, align 8, !tbaa !449
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i8 1, ptr %i.az, align 8, !tbaa !248
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr null, ptr %i.ba, align 8, !tbaa !249
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.bb, align 4, !tbaa !250
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.bc, align 8, !tbaa !251
  invoke void @_ZN20btAlignedObjectArrayIS_IiEE6resizeEiRKS0_(ptr noundef nonnull align 8 dereferenceable(25) %3, i32 noundef %.lcssa, ptr noundef nonnull align 8 dereferenceable(25) %4)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %._crit_edge
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !249 ; 2 uses
  %.not.i.i.i47 = icmp ne ptr %i.bd, null
  %i.be = load i8, ptr %i.az, align 8, !range !261
  %i.bf = trunc nuw i8 %i.be to i1
  %or.cond.i.i = select i1 %.not.i.i.i47, i1 %i.bf, i1 false
  br i1 %or.cond.i.i, label %bb.h, label %_ZN20btAlignedObjectArrayIiED2Ev.exit

bb.h:                                             ; preds = %bb.g
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bd)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #40
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit:            ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  %i.bi = load i32, ptr %i.ax, align 4, !tbaa !448 ; 2 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %.preheader123.lr.ph, label %._crit_edge139

.preheader123.lr.ph:                              ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1040
  br label %.preheader123

end_hunk_0
begin_hunk_1_@_ZN9btHashMapI9btHashPtriE10growTablesERKS0_:bb.a
  %.phi.trans.insert51 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre52 = load ptr, ptr %.phi.trans.insert51, align 8, !tbaa !249
  br label %.lr.ph.i20

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i26 = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i26, label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i28, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.av, i32 noundef 16)
  %.pre.i27 = load i32, ptr %i.ax, align 4, !tbaa !250
  br label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i28

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i28: ; preds = %bb.h, %bb.g
  %i.be = phi i32 [ %.pre.i27, %bb.h ], [ %i.ay, %bb.g ] ; 3 uses
  %.0.i.i.i29 = phi ptr [ %i.bd, %bb.h ], [ null, %bb.g ] ; 9 uses
  %i.bf = icmp sgt i32 %i.be, 0
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !249 ; 9 uses
  br i1 %i.bf, label %.lr.ph.i.i.i34, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i30

.lr.ph.i.i.i34:                                   ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i28
  %i.bi = ptrtoaddr ptr %i.bh to i64
  %.0.i.i.i2963 = ptrtoaddr ptr %.0.i.i.i29 to i64
  %wide.trip.count.i.i.i35 = zext nneg i32 %i.be to i64 ; 5 uses
  %min.iters.check65 = icmp ult i32 %i.be, 8
  %i.bj = sub i64 %i.bi, %.0.i.i.i2963
  %diff.check67 = icmp ugt i64 %i.bj, -32
  %or.cond78 = select i1 %min.iters.check65, i1 true, i1 %diff.check67
  br i1 %or.cond78, label %scalar.ph64.preheader, label %vector.ph68

vector.ph68:                                      ; preds = %.lr.ph.i.i.i34
  %n.vec69 = and i64 %wide.trip.count.i.i.i35, 2147483640 ; 3 uses
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph68
  %index71 = phi i64 [ 0, %vector.ph68 ], [ %index.next74, %vector.body70 ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i29, i64 %index71 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index71 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load72 = load <4 x i32>, ptr %i.bl, align 4, !tbaa !274
  %wide.load73 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !274
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store <4 x i32> %wide.load72, ptr %i.bk, align 4, !tbaa !274
  store <4 x i32> %wide.load73, ptr %i.bn, align 4, !tbaa !274
  %index.next74 = add nuw i64 %index71, 8         ; 2 uses
  %i.bo = icmp eq i64 %index.next74, %n.vec69
  br i1 %i.bo, label %middle.block75, label %vector.body70, !llvm.loop !1517

middle.block75:                                   ; preds = %vector.body70
  %cmp.n76 = icmp eq i64 %n.vec69, %wide.trip.count.i.i.i35
  br i1 %cmp.n76, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i32, label %scalar.ph64.preheader

scalar.ph64.preheader:                            ; preds = %.lr.ph.i.i.i34, %middle.block75
  %indvars.iv.i.i.i36.ph = phi i64 [ 0, %.lr.ph.i.i.i34 ], [ %n.vec69, %middle.block75 ] ; 3 uses
  %xtraiter79 = and i64 %wide.trip.count.i.i.i35, 3 ; 2 uses
  %lcmp.mod80.not = icmp eq i64 %xtraiter79, 0
  br i1 %lcmp.mod80.not, label %scalar.ph64.prol.loopexit, label %scalar.ph64.prol

scalar.ph64.prol:                                 ; preds = %scalar.ph64.preheader, %scalar.ph64.prol
  %indvars.iv.i.i.i36.prol = phi i64 [ %indvars.iv.next.i.i.i37.prol, %scalar.ph64.prol ], [ %indvars.iv.i.i.i36.ph, %scalar.ph64.preheader ] ; 3 uses
  %prol.iter81 = phi i64 [ %prol.iter81.next, %scalar.ph64.prol ], [ 0, %scalar.ph64.preheader ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i29, i64 %indvars.iv.i.i.i36.prol
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.i.i.i36.prol
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !274
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !274
  %indvars.iv.next.i.i.i37.prol = add nuw nsw i64 %indvars.iv.i.i.i36.prol, 1 ; 2 uses
  %prol.iter81.next = add i64 %prol.iter81, 1     ; 2 uses
  %prol.iter81.cmp.not = icmp eq i64 %prol.iter81.next, %xtraiter79
  br i1 %prol.iter81.cmp.not, label %scalar.ph64.prol.loopexit, label %scalar.ph64.prol, !llvm.loop !1518

scalar.ph64.prol.loopexit:                        ; preds = %scalar.ph64.prol, %scalar.ph64.preheader
  %indvars.iv.i.i.i36.unr = phi i64 [ %indvars.iv.i.i.i36.ph, %scalar.ph64.preheader ], [ %indvars.iv.next.i.i.i37.prol, %scalar.ph64.prol ]
  %i.bs = sub nsw i64 %indvars.iv.i.i.i36.ph, %wide.trip.count.i.i.i35
  %i.bt = icmp ugt i64 %i.bs, -4
  br i1 %i.bt, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i32, label %scalar.ph64

scalar.ph64:                                      ; preds = %scalar.ph64.prol.loopexit, %scalar.ph64
  %indvars.iv.i.i.i36 = phi i64 [ %indvars.iv.next.i.i.i37.3, %scalar.ph64 ], [ %indvars.iv.i.i.i36.unr, %scalar.ph64.prol.loopexit ] ; 6 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i29, i64 %indvars.iv.i.i.i36
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.i.i.i36
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !274
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !274
  %indvars.iv.next.i.i.i37 = add nuw nsw i64 %indvars.iv.i.i.i36, 1 ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i29, i64 %indvars.iv.next.i.i.i37
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.next.i.i.i37
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !274
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !274
  %indvars.iv.next.i.i.i37.1 = add nuw nsw i64 %indvars.iv.i.i.i36, 2 ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i29, i64 %indvars.iv.next.i.i.i37.1
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.next.i.i.i37.1
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !274
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !274
  %indvars.iv.next.i.i.i37.2 = add nuw nsw i64 %indvars.iv.i.i.i36, 3 ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i29, i64 %indvars.iv.next.i.i.i37.2
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.next.i.i.i37.2
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !274
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !274
  %indvars.iv.next.i.i.i37.3 = add nuw nsw i64 %indvars.iv.i.i.i36, 4 ; 2 uses
  %exitcond.not.i.i.i38.3 = icmp eq i64 %indvars.iv.next.i.i.i37.3, %wide.trip.count.i.i.i35
  br i1 %exitcond.not.i.i.i38.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i32, label %scalar.ph64, !llvm.loop !1519

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i30: ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i28
  %.not.i5.i.i31 = icmp eq ptr %i.bh, null
  br i1 %.not.i5.i.i31, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i33, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i32

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i32: ; preds = %scalar.ph64.prol.loopexit, %scalar.ph64, %middle.block75, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i30
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !248, !range !261, !noundef !262
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.i, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i33

bb.i:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i32
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bh)
  br label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i33

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i33: ; preds = %bb.i, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i32, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i30
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.cj, align 8, !tbaa !248
  store ptr %.0.i.i.i29, ptr %i.bg, align 8, !tbaa !249
  store i32 %i.b, ptr %i.ba, align 8, !tbaa !251
  br label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %..lr.ph.i20_crit_edge, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i33
  %i.ck = phi ptr [ %.pre52, %..lr.ph.i20_crit_edge ], [ %.0.i.i.i29, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i33 ]
  %i.cl = sext i32 %i.ay to i64
  %i.cm = shl nsw i64 %i.cl, 2                    ; 2 uses
  %scevgep47 = getelementptr i8, ptr %i.ck, i64 %i.cm
  %i.cn = sub nsw i64 %i.av, %i.cm
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep47, i8 0, i64 %i.cn, i1 false), !tbaa !274
  br label %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit39

_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit39:  ; preds = %.lr.ph.i20, %.lr.ph.i
  store i32 %i.b, ptr %i.ax, align 4, !tbaa !250
  %i.co = icmp sgt i32 %i.b, 0
  br i1 %i.co, label %.lr.ph44, label %.preheader

.lr.ph44:                                         ; preds = %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit39
  %i.cp = load ptr, ptr %i.as, align 8, !tbaa !249
  %i.cq = zext nneg i32 %i.b to i64
  %i.cr = shl nuw nsw i64 %i.cq, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cp, i8 -1, i64 %i.cr, i1 false), !tbaa !274
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !249
  %i.cu = zext nneg i32 %i.b to i64
  %i.cv = shl nuw nsw i64 %i.cu, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ct, i8 -1, i64 %i.cv, i1 false), !tbaa !274
  br label %.preheader

.preheader:                                       ; preds = %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit39, %.lr.ph44
  %i.cw = icmp sgt i32 %i.d, 0
  br i1 %i.cw, label %.lr.ph46, label %.loopexit

.lr.ph46:                                         ; preds = %.preheader
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !543
  %i.cz = load ptr, ptr %i.as, align 8, !tbaa !249
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !249
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph46, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph46 ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !258
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !258
  %i.dg = add i32 %i.df, %i.dd                    ; 2 uses
  %i.dh = shl i32 %i.dg, 15
  %i.di = xor i32 %i.dh, -1
  %i.dj = add i32 %i.dg, %i.di                    ; 2 uses
  %i.dk = lshr i32 %i.dj, 10
  %i.dl = xor i32 %i.dk, %i.dj
  %i.dm = mul i32 %i.dl, 9                        ; 2 uses
  %i.dn = lshr i32 %i.dm, 6
  %i.do = xor i32 %i.dn, %i.dm                    ; 2 uses
  %i.dp = shl i32 %i.do, 11
  %i.dq = xor i32 %i.dp, -1
  %i.dr = add i32 %i.do, %i.dq                    ; 2 uses
  %i.ds = lshr i32 %i.dr, 16
  %i.dt = xor i32 %i.ds, %i.dr
  %i.du = load i32, ptr %i.a, align 8, !tbaa !251
  %i.dv = add nsw i32 %i.du, -1
  %i.dw = and i32 %i.dt, %i.dv
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.dx ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !274
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !274
  %i.eb = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.eb, ptr %i.dy, align 4, !tbaa !274
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !1520

.loopexit:                                        ; preds = %bb.j, %.preheader, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #37

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i4 @llvm.ctpop.i4(i4) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #20

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { inlinehint mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #38 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #39 = { nounwind }
attributes #40 = { noreturn nounwind }
attributes #41 = { builtin nounwind }
attributes #42 = { builtin allocsize(0) }

!llvm.module.flags = !{!30, !31, !32}
!llvm.ident = !{!33}
!llvm.errno.tbaa = !{!38}

!0 = distinct !{!0, !260}
!1 = distinct !{!1, !260}
!2 = distinct !{!2, !260}
!3 = distinct !{!3, !260}
!4 = distinct !{!4, !260}
!5 = distinct !{!5, !260}
!6 = distinct !{!6, !260}
!7 = distinct !{!7, !260}
!8 = distinct !{!8, !260}
!9 = distinct !{!9, !260}
!10 = distinct !{!10, !260}
!11 = distinct !{!11, !260}
!12 = distinct !{!12, !260}
!13 = distinct !{!13, !260}
!14 = distinct !{!14, !260}
!15 = distinct !{!15, !260}
!16 = distinct !{!16, !260}
!17 = distinct !{!17, !260}
!18 = distinct !{!18, !260}
!19 = distinct !{!19, !260}
!20 = distinct !{!20, !260}
!21 = distinct !{!21, !260}
!22 = distinct !{!22, !260}
!23 = distinct !{!23, !260}
!24 = distinct !{!24, !260}
!25 = distinct !{!25, !260}
!26 = distinct !{!26, !260}
!27 = distinct !{!27, !260}
!28 = distinct !{!28, !260}
!29 = distinct !{!29, !260}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!34 = !{!"Simple C++ TBAA"}
!35 = !{!"omnipotent char", !34, i64 0}
!36 = !{!"int", !35, i64 0}
!37 = !{!"__libc_errno", !36, i64 0}
!38 = !{!37, !36, i64 0}
!39 = !{!"vtable pointer", !34, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!"_ZTS18btAlignedAllocatorIPK17btCollisionObjectLj16EE"}
!42 = !{!"any pointer", !35, i64 0}
!43 = !{!"any p2 pointer", !42, i64 0}
!44 = !{!"p2 _ZTS17btCollisionObject", !43, i64 0}
!45 = !{!"bool", !35, i64 0}
!46 = !{!"_ZTS20btAlignedObjectArrayIPK17btCollisionObjectE", !41, i64 0, !36, i64 4, !36, i64 8, !44, i64 16, !45, i64 24}
!47 = !{!46, !45, i64 24}
!48 = !{!46, !44, i64 16}
!49 = !{!46, !36, i64 4}
!50 = !{!46, !36, i64 8}
!51 = !{!"_ZTS11btMatrix3x3", !35, i64 0}
!52 = !{!"_ZTS9btVector3", !35, i64 0}
!53 = !{!"_ZTS11btTransform", !51, i64 0, !52, i64 48}
!54 = !{!"float", !35, i64 0}
!55 = !{!"p1 _ZTS17btBroadphaseProxy", !42, i64 0}
!56 = !{!"p1 _ZTS16btCollisionShape", !42, i64 0}
!57 = !{!"_ZTS17btCollisionObject", !53, i64 8, !53, i64 72, !52, i64 136, !52, i64 152, !52, i64 168, !36, i64 184, !54, i64 188, !55, i64 192, !56, i64 200, !42, i64 208, !56, i64 216, !36, i64 224, !36, i64 228, !36, i64 232, !36, i64 236, !36, i64 240, !54, i64 244, !54, i64 248, !54, i64 252, !54, i64 256, !54, i64 260, !54, i64 264, !54, i64 268, !36, i64 272, !42, i64 280, !36, i64 288, !36, i64 292, !36, i64 296, !54, i64 300, !54, i64 304, !54, i64 308, !36, i64 312, !46, i64 320, !36, i64 352, !52, i64 356}
!58 = !{!"p1 _ZTS16btSoftBodySolver", !42, i64 0}
!59 = !{!"_ZTSN10btSoftBody10eAeroModel1_E", !35, i64 0}
!60 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody8eVSolver1_ELj16EE"}
!61 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody8eVSolver1_EE", !60, i64 0, !36, i64 4, !36, i64 8, !42, i64 16, !45, i64 24}
!62 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody8ePSolver1_ELj16EE"}
!63 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody8ePSolver1_EE", !62, i64 0, !36, i64 4, !36, i64 8, !42, i64 16, !45, i64 24}
!64 = !{!"_ZTSN10btSoftBody6ConfigE", !59, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !54, i64 24, !54, i64 28, !54, i64 32, !54, i64 36, !54, i64 40, !54, i64 44, !54, i64 48, !54, i64 52, !54, i64 56, !54, i64 60, !54, i64 64, !54, i64 68, !54, i64 72, !54, i64 76, !54, i64 80, !36, i64 84, !36, i64 88, !36, i64 92, !36, i64 96, !36, i64 100, !61, i64 104, !63, i64 136, !63, i64 168, !54, i64 200, !54, i64 204}
!65 = !{!"_ZTSN10btSoftBody11SolverStateE", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16}
!66 = !{!"_ZTS18btAlignedAllocatorI9btVector3Lj16EE"}
!67 = !{!"p1 _ZTS9btVector3", !42, i64 0}
!68 = !{!"_ZTS20btAlignedObjectArrayI9btVector3E", !66, i64 0, !36, i64 4, !36, i64 8, !67, i64 16, !45, i64 24}
!69 = !{!"_ZTS18btAlignedAllocatorIfLj16EE"}
!70 = !{!"p1 float", !42, i64 0}
!71 = !{!"_ZTS20btAlignedObjectArrayIfE", !69, i64 0, !36, i64 4, !36, i64 8, !70, i64 16, !45, i64 24}
!72 = !{!"_ZTSN10btSoftBody4PoseE", !45, i64 0, !45, i64 1, !54, i64 4, !68, i64 8, !71, i64 40, !52, i64 72, !51, i64 88, !51, i64 136, !51, i64 184}
!73 = !{!"p1 _ZTS19btSoftBodyWorldInfo", !42, i64 0}
!74 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody4NoteELj16EE"}
!75 = !{!"p1 _ZTSN10btSoftBody4NoteE", !42, i64 0}
!76 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody4NoteEE", !74, i64 0, !36, i64 4, !36, i64 8, !75, i64 16, !45, i64 24}
!77 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody4NodeELj16EE"}
!78 = !{!"p1 _ZTSN10btSoftBody4NodeE", !42, i64 0}
!79 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody4NodeEE", !77, i64 0, !36, i64 4, !36, i64 8, !78, i64 16, !45, i64 24}
!80 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody10RenderNodeELj16EE"}
!81 = !{!"p1 _ZTSN10btSoftBody10RenderNodeE", !42, i64 0}
!82 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody10RenderNodeEE", !80, i64 0, !36, i64 4, !36, i64 8, !81, i64 16, !45, i64 24}
!83 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody4LinkELj16EE"}
!84 = !{!"p1 _ZTSN10btSoftBody4LinkE", !42, i64 0}
!85 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody4LinkEE", !83, i64 0, !36, i64 4, !36, i64 8, !84, i64 16, !45, i64 24}
!86 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody4FaceELj16EE"}
!87 = !{!"p1 _ZTSN10btSoftBody4FaceE", !42, i64 0}
!88 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody4FaceEE", !86, i64 0, !36, i64 4, !36, i64 8, !87, i64 16, !45, i64 24}
!89 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody10RenderFaceELj16EE"}
!90 = !{!"p1 _ZTSN10btSoftBody10RenderFaceE", !42, i64 0}
!91 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody10RenderFaceEE", !89, i64 0, !36, i64 4, !36, i64 8, !90, i64 16, !45, i64 24}
!92 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody5TetraELj16EE"}
!93 = !{!"p1 _ZTSN10btSoftBody5TetraE", !42, i64 0}
!94 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody5TetraEE", !92, i64 0, !36, i64 4, !36, i64 8, !93, i64 16, !45, i64 24}
!95 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody12TetraScratchELj16EE"}
!96 = !{!"p1 _ZTSN10btSoftBody12TetraScratchE", !42, i64 0}
!97 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody12TetraScratchEE", !95, i64 0, !36, i64 4, !36, i64 8, !96, i64 16, !45, i64 24}
!98 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody6AnchorELj16EE"}
!99 = !{!"p1 _ZTSN10btSoftBody6AnchorE", !42, i64 0}
!100 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody6AnchorEE", !98, i64 0, !36, i64 4, !36, i64 8, !99, i64 16, !45, i64 24}
!101 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody25DeformableNodeRigidAnchorELj16EE"}
!102 = !{!"p1 _ZTSN10btSoftBody25DeformableNodeRigidAnchorE", !42, i64 0}
!103 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody25DeformableNodeRigidAnchorEE", !101, i64 0, !36, i64 4, !36, i64 8, !102, i64 16, !45, i64 24}
!104 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody8RContactELj16EE"}
!105 = !{!"p1 _ZTSN10btSoftBody8RContactE", !42, i64 0}
!106 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody8RContactEE", !104, i64 0, !36, i64 4, !36, i64 8, !105, i64 16, !45, i64 24}
!107 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody26DeformableNodeRigidContactELj16EE"}
!108 = !{!"p1 _ZTSN10btSoftBody26DeformableNodeRigidContactE", !42, i64 0}
!109 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody26DeformableNodeRigidContactEE", !107, i64 0, !36, i64 4, !36, i64 8, !108, i64 16, !45, i64 24}
!110 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody25DeformableFaceNodeContactELj16EE"}
!111 = !{!"p1 _ZTSN10btSoftBody25DeformableFaceNodeContactE", !42, i64 0}
!112 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE", !110, i64 0, !36, i64 4, !36, i64 8, !111, i64 16, !45, i64 24}
!113 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody26DeformableFaceRigidContactELj16EE"}
!114 = !{!"p1 _ZTSN10btSoftBody26DeformableFaceRigidContactE", !42, i64 0}
!115 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody26DeformableFaceRigidContactEE", !113, i64 0, !36, i64 4, !36, i64 8, !114, i64 16, !45, i64 24}
!116 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody8SContactELj16EE"}
!117 = !{!"p1 _ZTSN10btSoftBody8SContactE", !42, i64 0}
!118 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody8SContactEE", !116, i64 0, !36, i64 4, !36, i64 8, !117, i64 16, !45, i64 24}
!119 = !{!"_ZTS18btAlignedAllocatorIPN10btSoftBody5JointELj16EE"}
!120 = !{!"p2 _ZTSN10btSoftBody5JointE", !43, i64 0}
!121 = !{!"_ZTS20btAlignedObjectArrayIPN10btSoftBody5JointEE", !119, i64 0, !36, i64 4, !36, i64 8, !120, i64 16, !45, i64 24}
!122 = !{!"_ZTS18btAlignedAllocatorIPN10btSoftBody8MaterialELj16EE"}
!123 = !{!"p2 _ZTSN10btSoftBody8MaterialE", !43, i64 0}
!124 = !{!"_ZTS20btAlignedObjectArrayIPN10btSoftBody8MaterialEE", !122, i64 0, !36, i64 4, !36, i64 8, !123, i64 16, !45, i64 24}
!125 = !{!"p1 _ZTS10btDbvtNode", !42, i64 0}
!126 = !{!"_ZTS18btAlignedAllocatorIN6btDbvt6sStkNNELj16EE"}
!127 = !{!"p1 _ZTSN6btDbvt6sStkNNE", !42, i64 0}
!128 = !{!"_ZTS20btAlignedObjectArrayIN6btDbvt6sStkNNEE", !126, i64 0, !36, i64 4, !36, i64 8, !127, i64 16, !45, i64 24}
!129 = !{!"_ZTS6btDbvt", !125, i64 0, !125, i64 8, !36, i64 16, !36, i64 20, !36, i64 24, !128, i64 32}
!130 = !{!"p1 _ZTS11btDbvntNode", !42, i64 0}
!131 = !{!"_ZTS18btAlignedAllocatorIPN10btSoftBody7ClusterELj16EE"}
!132 = !{!"p2 _ZTSN10btSoftBody7ClusterE", !43, i64 0}
!133 = !{!"_ZTS20btAlignedObjectArrayIPN10btSoftBody7ClusterEE", !131, i64 0, !36, i64 4, !36, i64 8, !132, i64 16, !45, i64 24}
!134 = !{!"_ZTS18btAlignedAllocatorI9btVector4Lj16EE"}
!135 = !{!"p1 _ZTS9btVector4", !42, i64 0}
!136 = !{!"_ZTS20btAlignedObjectArrayI9btVector4E", !134, i64 0, !36, i64 4, !36, i64 8, !135, i64 16, !45, i64 24}
!137 = !{!"_ZTS18btAlignedAllocatorI20btAlignedObjectArrayIPKN10btSoftBody4NodeEELj16EE"}
!138 = !{!"p1 _ZTS20btAlignedObjectArrayIPKN10btSoftBody4NodeEE", !42, i64 0}
!139 = !{!"_ZTS20btAlignedObjectArrayIS_IPKN10btSoftBody4NodeEEE", !137, i64 0, !36, i64 4, !36, i64 8, !138, i64 16, !45, i64 24}
!140 = !{!"_ZTS18btAlignedAllocatorIbLj16EE"}
!141 = !{!"p1 bool", !42, i64 0}
!142 = !{!"_ZTS20btAlignedObjectArrayIbE", !140, i64 0, !36, i64 4, !36, i64 8, !141, i64 16, !45, i64 24}
!143 = !{!"_ZTS18btAlignedAllocatorIiLj16EE"}
!144 = !{!"p1 int", !42, i64 0}
!145 = !{!"_ZTS20btAlignedObjectArrayIiE", !143, i64 0, !36, i64 4, !36, i64 8, !144, i64 16, !45, i64 24}
!146 = !{!"_ZTS10btSoftBody", !57, i64 0, !46, i64 376, !58, i64 408, !64, i64 416, !65, i64 624, !72, i64 648, !42, i64 880, !73, i64 888, !76, i64 896, !79, i64 928, !82, i64 960, !85, i64 992, !88, i64 1024, !91, i64 1056, !94, i64 1088, !97, i64 1120, !97, i64 1152, !100, i64 1184, !103, i64 1216, !106, i64 1248, !109, i64 1280, !112, i64 1312, !115, i64 1344, !112, i64 1376, !118, i64 1408, !121, i64 1440, !124, i64 1472, !54, i64 1504, !35, i64 1508, !45, i64 1540, !129, i64 1544, !129, i64 1608, !130, i64 1672, !129, i64 1680, !133, i64 1744, !54, i64 1776, !54, i64 1780, !54, i64 1784, !68, i64 1792, !54, i64 1824, !54, i64 1828, !45, i64 1832, !68, i64 1840, !136, i64 1872, !139, i64 1904, !71, i64 1936, !45, i64 1968, !45, i64 1969, !142, i64 1976, !52, i64 2008, !54, i64 2024, !45, i64 2028, !145, i64 2032}
!147 = !{!61, !45, i64 24}
!148 = !{!61, !42, i64 16}
!149 = !{!61, !36, i64 4}
!150 = !{!61, !36, i64 8}
!151 = !{!63, !45, i64 24}
!152 = !{!63, !42, i64 16}
!153 = !{!63, !36, i64 4}
!154 = !{!63, !36, i64 8}
!155 = !{!68, !45, i64 24}
!156 = !{!68, !67, i64 16}
!157 = !{!68, !36, i64 4}
!158 = !{!68, !36, i64 8}
!159 = !{!71, !45, i64 24}
!160 = !{!71, !70, i64 16}
!161 = !{!71, !36, i64 4}
!162 = !{!71, !36, i64 8}
!163 = !{!146, !73, i64 888}
!164 = !{!76, !45, i64 24}
!165 = !{!76, !75, i64 16}
!166 = !{!76, !36, i64 4}
!167 = !{!76, !36, i64 8}
!168 = !{!79, !45, i64 24}
!169 = !{!79, !78, i64 16}
!170 = !{!79, !36, i64 4}
!171 = !{!79, !36, i64 8}
!172 = !{!82, !45, i64 24}
!173 = !{!82, !81, i64 16}
!174 = !{!82, !36, i64 4}
!175 = !{!82, !36, i64 8}
!176 = !{!85, !45, i64 24}
!177 = !{!85, !84, i64 16}
!178 = !{!85, !36, i64 4}
!179 = !{!85, !36, i64 8}
!180 = !{!88, !45, i64 24}
!181 = !{!88, !87, i64 16}
!182 = !{!88, !36, i64 4}
!183 = !{!88, !36, i64 8}
!184 = !{!91, !45, i64 24}
!185 = !{!91, !90, i64 16}
!186 = !{!91, !36, i64 4}
!187 = !{!91, !36, i64 8}
!188 = !{!94, !45, i64 24}
!189 = !{!94, !93, i64 16}
!190 = !{!94, !36, i64 4}
end_hunk_1
