Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBody?download=true
inline.NumInlined: 5223
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 199
loop-unroll.NumUnrolled: 249
begin_hunk_0_@_ZN10btSoftBody6refineEPNS_10ImplicitFnEfb:bb.a
  %i.acp = ashr i64 %i.aco, 32
  %i.acq = getelementptr inbounds [4 x i8], ptr %i.aam, i64 %i.acp ; 2 uses
  %i.acr = load i32, ptr %i.acq, align 4, !tbaa !275
  %i.acs = add nsw i32 %i.acr, 1
  store i32 %i.acs, ptr %i.acq, align 4, !tbaa !275
  %indvars.iv.next565 = add nuw nsw i64 %indvars.iv564, 1 ; 2 uses
  %exitcond568.not = icmp eq i64 %indvars.iv.next565, %wide.trip.count567
  br i1 %exitcond568.not, label %.preheader, label %.preheader432, !llvm.loop !987

.preheader:                                       ; preds = %.preheader432, %._crit_edge494
  %i.act = load i32, ptr %i.ay, align 4, !tbaa !179 ; 2 uses
  %i.acu = icmp sgt i32 %i.act, 0
  br i1 %i.acu, label %.lr.ph498, label %_ZN20btAlignedObjectArrayIiED2Ev.exit

.lr.ph498:                                        ; preds = %.preheader
  %i.acv = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.acw = ptrtoint ptr %i.uw to i64              ; 2 uses
  br label %bb.db

bb.db:                                            ; preds = %.lr.ph498, %bb.dd
  %i.acx = phi i32 [ %i.act, %.lr.ph498 ], [ %i.aed, %bb.dd ]
  %.5497 = phi i32 [ 0, %.lr.ph498 ], [ %i.aee, %bb.dd ] ; 3 uses
  %i.acy = load ptr, ptr %i.acv, align 8, !tbaa !178 ; 2 uses
  %i.acz = sext i32 %.5497 to i64
  %i.ada = getelementptr inbounds [72 x i8], ptr %i.acy, i64 %i.acz ; 4 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 32
  %i.adc = load ptr, ptr %i.adb, align 8, !tbaa !316
  %i.add = ptrtoint ptr %i.adc to i64
  %i.ade = sub i64 %i.add, %i.acw
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ada, i64 40
  %i.adg = load ptr, ptr %i.adf, align 8, !tbaa !316
  %i.adh = ptrtoint ptr %i.adg to i64
  %i.adi = sub i64 %i.adh, %i.acw
  %i.adj = shl i64 %i.ade, 24
  %i.adk = ashr i64 %i.adj, 32
  %i.adl = getelementptr inbounds [4 x i8], ptr %i.aam, i64 %i.adk ; 2 uses
  %i.adm = load i32, ptr %i.adl, align 4, !tbaa !275 ; 2 uses
  %i.adn = icmp eq i32 %i.adm, 1
  %i.ado = shl i64 %i.adi, 24
  %i.adp = ashr i64 %i.ado, 32
  %i.adq = getelementptr inbounds [4 x i8], ptr %i.aam, i64 %i.adp ; 3 uses
  %i.adr = load i32, ptr %i.adq, align 4, !tbaa !275
  %i.ads = icmp eq i32 %i.adr, 1
  %or.cond = select i1 %i.adn, i1 true, i1 %i.ads
  br i1 %or.cond, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.adt = add nsw i32 %i.adm, -1
  store i32 %i.adt, ptr %i.adl, align 4, !tbaa !275
  %i.adu = load i32, ptr %i.adq, align 4, !tbaa !275
  %i.adv = add nsw i32 %i.adu, -1
  store i32 %i.adv, ptr %i.adq, align 4, !tbaa !275
  %i.adw = load i32, ptr %i.ay, align 4, !tbaa !179
  %i.adx = sext i32 %i.adw to i64
  %i.ady = getelementptr [72 x i8], ptr %i.acy, i64 %i.adx
  %i.adz = getelementptr i8, ptr %i.ady, i64 -72  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %i.ada, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.ada, ptr noundef nonnull align 8 dereferenceable(68) %i.adz, i64 68, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.adz, ptr noundef nonnull align 8 dereferenceable(68) %4, i64 68, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.aea = load i32, ptr %i.ay, align 4, !tbaa !179
  %i.aeb = add nsw i32 %i.aea, -1                 ; 2 uses
  store i32 %i.aeb, ptr %i.ay, align 4, !tbaa !179
  %i.aec = add nsw i32 %.5497, -1
  br label %bb.dd

bb.dd:                                            ; preds = %bb.db, %bb.dc
  %i.aed = phi i32 [ %i.aeb, %bb.dc ], [ %i.acx, %bb.db ] ; 2 uses
  %.6 = phi i32 [ %i.aec, %bb.dc ], [ %.5497, %bb.db ]
  %i.aee = add nsw i32 %.6, 1                     ; 2 uses
  %i.aef = icmp slt i32 %i.aee, %i.aed
  br i1 %i.aef, label %bb.db, label %_ZN20btAlignedObjectArrayIiED2Ev.exit.thread, !llvm.loop !988

_ZN20btAlignedObjectArrayIiED2Ev.exit.thread:     ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39
  br label %bb.de

_ZN20btAlignedObjectArrayIiED2Ev.exit:            ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39
  %.not.i.i.i387.not = icmp eq ptr %i.aam, null
  br i1 %.not.i.i.i387.not, label %_ZN20btAlignedObjectArrayIiED2Ev.exit389, label %bb.de

bb.de:                                            ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit.thread, %_ZN20btAlignedObjectArrayIiED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.aam)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit389 unwind label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.aeg = landingpad { ptr, i32 }
          catch ptr null
  %i.aeh = extractvalue { ptr, i32 } %i.aeg, 0
  call void @__clang_call_terminate(ptr %i.aeh) #40
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit389:         ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  %.not.i.i.i390.not = icmp eq ptr %i.uv, null
  br i1 %.not.i.i.i390.not, label %_ZN20btAlignedObjectArrayIiED2Ev.exit392, label %bb.dg

bb.dg:                                            ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit389
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.uv)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit392 unwind label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.aei = landingpad { ptr, i32 }
          catch ptr null
  %i.aej = extractvalue { ptr, i32 } %i.aei, 0
  call void @__clang_call_terminate(ptr %i.aej) #40
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit392:         ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit389, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %bb.dj

bb.di:                                            ; preds = %bb.da, %bb.ct, %bb.ce, %bb.bz, %bb.bt
  %.pn310.pn = phi { ptr, i32 } [ %.pn310, %bb.bz ], [ %i.vv, %bb.ce ], [ %i.yz, %bb.ct ], [ %i.abl, %bb.da ], [ %i.ul, %bb.bt ]
  call void @_ZN20btAlignedObjectArrayIiED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %9) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %bb.dm

bb.dj:                                            ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit392, %._crit_edge476
  %i.aek = getelementptr inbounds nuw i8, ptr %0, i64 1540
  store i8 1, ptr %i.aek, align 4, !tbaa !280
  %i.ael = load ptr, ptr %i.f, align 8, !tbaa !250 ; 2 uses
  %.not.i.i.i.i393 = icmp ne ptr %i.ael, null
  %i.aem = load i8, ptr %i.e, align 8, !range !262
  %i.aen = trunc nuw i8 %i.aem to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i.i393, i1 %i.aen, i1 false
  br i1 %or.cond.i.i.i, label %bb.dk, label %_ZN11btSymMatrixIiED2Ev.exit

bb.dk:                                            ; preds = %bb.dj
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ael)
          to label %_ZN11btSymMatrixIiED2Ev.exit unwind label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.aeo = landingpad { ptr, i32 }
          catch ptr null
  %i.aep = extractvalue { ptr, i32 } %i.aeo, 0
  call void @__clang_call_terminate(ptr %i.aep) #40
  unreachable

_ZN11btSymMatrixIiED2Ev.exit:                     ; preds = %bb.dj, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  ret void

bb.dm:                                            ; preds = %.loopexit439, %.loopexit.split-lp, %bb.j, %bb.k, %bb.af, %bb.di, %bb.bk, %bb.ak
  %.pn321.pn = phi { ptr, i32 } [ %.pn314, %bb.bk ], [ %i.cn, %bb.k ], [ %i.jx, %bb.af ], [ %.pn310.pn, %bb.di ], [ %i.cm, %bb.j ], [ %i.mi, %bb.ak ], [ %lpad.loopexit, %.loopexit439 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN11btSymMatrixIiED2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %7) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11btSymMatrixIiED2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !250  ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !262
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !170
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
  %.sroa.7.i116 = alloca <{ %class.btVector3, [2 x ptr], float, i8, [3 x i8], float, float, float, [4 x i8] }>, align 8 ; 4 uses
  %.sroa.7.i = alloca <{ [3 x ptr], %class.btVector3, float, [4 x i8], ptr, %class.btVector4, %class.btVector3, %class.btVector3, %class.btVector3, i32, [4 x i8] }>, align 8 ; 4 uses
  %4 = alloca %class.btVector3, align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !170  ; 2 uses
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [256 x i8], ptr %i.b, i64 %i.c ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = sext i32 %2 to i64                       ; 2 uses
  %i.g = getelementptr inbounds [256 x i8], ptr %i.b, i64 %i.f ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.j = load float, ptr %i.i, align 4, !tbaa !253
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.l = load float, ptr %i.k, align 4, !tbaa !253 ; 2 uses
  %i.m = fsub float %i.j, %i.l
  %i.n = fmul float %3, %i.m
  %i.o = load <2 x float>, ptr %i.h, align 4, !tbaa !253
  %i.p = load <2 x float>, ptr %i.e, align 4, !tbaa !253 ; 2 uses
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
  %i.aa = load float, ptr %i.z, align 4, !tbaa !253
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !253 ; 2 uses
  %i.ad = fsub float %i.aa, %i.ac
  %i.ae = fmul float %3, %i.ad
  %i.af = load <2 x float>, ptr %i.y, align 4, !tbaa !253
  %i.ag = load <2 x float>, ptr %i.x, align 4, !tbaa !253 ; 2 uses
  %i.ah = fsub <2 x float> %i.af, %i.ag
  %i.ai = fmul <2 x float> %i.s, %i.ah
  %i.aj = fadd <2 x float> %i.ag, %i.ai           ; 2 uses
  %i.ak = fadd float %i.ac, %i.ae
  %.sroa.3.12.vec.insert.i10.i60 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ak, i64 0 ; 2 uses
  call void @_ZN10btSoftBody10appendNodeERK9btVector3f(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef 1.000000e+00)
  call void @_ZN10btSoftBody10appendNodeERK9btVector3f(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef 1.000000e+00)
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !170 ; 3 uses
  %i.am = getelementptr inbounds [256 x i8], ptr %i.al, i64 %i.c ; 4 uses
  %i.an = getelementptr inbounds [256 x i8], ptr %i.al, i64 %i.f ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 932 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !171
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr [256 x i8], ptr %i.al, i64 %i.aq ; 14 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 -512   ; 7 uses
  %i.at = getelementptr i8, ptr %i.ar, i64 -256   ; 7 uses
  %i.au = getelementptr i8, ptr %i.ar, i64 -464
  store <2 x float> %i.aj, ptr %i.au, align 8
  %.sroa.5.0..sroa_idx = getelementptr i8, ptr %i.ar, i64 -456
  store <2 x float> %.sroa.3.12.vec.insert.i10.i60, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !259
  %i.av = getelementptr i8, ptr %i.ar, i64 -208
  store <2 x float> %i.aj, ptr %i.av, align 8
  %.sroa.5.0..sroa_idx24 = getelementptr i8, ptr %i.ar, i64 -200
  store <2 x float> %.sroa.3.12.vec.insert.i10.i60, ptr %.sroa.5.0..sroa_idx24, align 8, !tbaa !259
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 996 ; 11 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !179 ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ax to i64
  %.pre = load ptr, ptr %i.az, align 8, !tbaa !178
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.ba = phi ptr [ %.pre, %.lr.ph ], [ %i.bq, %bb.d ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %.0114 = phi i1 [ false, %.lr.ph ], [ %.1, %bb.d ]
  %i.bb = getelementptr inbounds nuw [72 x i8], ptr %i.ba, i64 %indvars.iv ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !316 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !316 ; 2 uses
  %5 = icmp ne ptr %i.bd, %i.am
  %6 = icmp ne ptr %i.bf, %i.an
  %or.cond.i.not = or i1 %5, %6                   ; 2 uses
  %i.bg = icmp eq ptr %i.bd, %i.an
  %i.bh = icmp eq ptr %i.bf, %i.am
  %or.cond8.i = and i1 %i.bg, %i.bh               ; 2 uses
  %not.or.cond.i.not = xor i1 %or.cond.i.not, true
  %7 = select i1 %not.or.cond.i.not, i1 true, i1 %or.cond8.i
  br i1 %7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bi = trunc nuw nsw i64 %indvars.iv to i32
  tail call void @_ZN10btSoftBody10appendLinkEiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(2064) %0, i32 noundef %i.bi, ptr noundef null)
  %i.bj = load ptr, ptr %i.az, align 8, !tbaa !178 ; 3 uses
  %i.bk = getelementptr inbounds nuw [72 x i8], ptr %i.bj, i64 %indvars.iv
  %i.bl = load i32, ptr %i.aw, align 4, !tbaa !179
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr [72 x i8], ptr %i.bj, i64 %i.bm
  %.sroa.idx = and i1 %or.cond.i.not, %or.cond8.i ; 2 uses
  %.sroa.speculated = select i1 %.sroa.idx, ptr %i.at, ptr %i.as
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  store ptr %.sroa.speculated, ptr %i.bo, align 8, !tbaa !316
  %.sroa.speculated24 = select i1 %.sroa.idx, ptr %i.as, ptr %i.at
  %i.bp = getelementptr i8, ptr %i.bn, i64 -40
  store ptr %.sroa.speculated24, ptr %i.bp, align 8, !tbaa !316
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
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !183 ; 2 uses
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
  %i.ci = load ptr, ptr %i.bu, align 8, !tbaa !182 ; 3 uses
  %i.cj = getelementptr inbounds nuw [144 x i8], ptr %i.ci, i64 %indvars.iv123 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %.054115
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !316 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv119
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !316 ; 2 uses
  %8 = icmp ne ptr %i.cm, %i.am
  %9 = icmp ne ptr %i.co, %i.an
  %or.cond.i86.not = or i1 %8, %9                 ; 3 uses
  %i.cp = icmp eq ptr %i.cm, %i.an
  %i.cq = icmp eq ptr %i.co, %i.am
  %or.cond8.i64 = and i1 %i.cp, %i.cq             ; 2 uses
  %not.or.cond.i86.not = xor i1 %or.cond.i86.not, true
  %10 = select i1 %not.or.cond.i86.not, i1 true, i1 %or.cond8.i64
  br i1 %10, label %bb.g, label %._ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit78_crit_edge

._ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit78_crit_edge: ; preds = %bb.f
  %.pre130 = add nuw nsw i64 %indvars.iv119, 1
  br label %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit78

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %i.cr = load <2 x ptr>, ptr %i.cj, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(124) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(124) %i.ck, i64 124, i1 false)
  %i.cs = load i32, ptr %i.br, align 4, !tbaa !183 ; 7 uses
  %i.ct = load i32, ptr %i.bv, align 8, !tbaa !184
  %i.cu = icmp eq i32 %i.cs, %i.ct
  br i1 %i.cu, label %bb.h, label %_ZN10btSoftBody10appendFaceEiPNS_8MaterialE.exit

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i = icmp eq i32 %i.cs, 0
  %i.cv = shl nsw i32 %i.cs, 1
  %i.cw = select i1 %.not.i.i.i, i32 1, i32 %i.cv ; 4 uses
  %i.cx = icmp slt i32 %i.cs, %i.cw
  br i1 %i.cx, label %bb.i, label %_ZN10btSoftBody10appendFaceEiPNS_8MaterialE.exit

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i.i.i, label %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE8allocateEi.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cy = sext i32 %i.cw to i64
  %i.cz = mul nsw i64 %i.cy, 144
  %i.da = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.cz, i32 noundef 16)
  %.pre.i.i = load i32, ptr %i.br, align 4, !tbaa !183
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE8allocateEi.exit.i.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE8allocateEi.exit.i.i.i: ; preds = %bb.j, %bb.i
  %i.db = phi i32 [ %.pre.i.i, %bb.j ], [ %i.cs, %bb.i ] ; 4 uses
  %.0.i.i.i.i = phi ptr [ %i.da, %bb.j ], [ null, %bb.i ] ; 5 uses
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %.lr.ph.i.i.i.i, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE8allocateEi.exit.i.i.i
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.db to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i, 1
  %i.dd = icmp eq i32 %i.db, 1
  br i1 %i.dd, label %.epil.preheader, label %.lr.ph.i.i.i.i.new

.lr.ph.i.i.i.i.new:                               ; preds = %.lr.ph.i.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i.i, 2147483646
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.new
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %indvars.iv.next.i.i.i.i.1, %bb.k ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %niter.next.1, %bb.k ]
  %i.de = getelementptr inbounds nuw [144 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.i.i.i
  %i.df = load ptr, ptr %i.bu, align 8, !tbaa !182
  %i.dg = getelementptr inbounds nuw [144 x i8], ptr %i.df, i64 %indvars.iv.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.de, ptr noundef nonnull align 8 dereferenceable(144) %i.dg, i64 144, i1 false)
  %indvars.iv.next.i.i.i.i = or disjoint i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.dh = getelementptr inbounds nuw [144 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.di = load ptr, ptr %i.bu, align 8, !tbaa !182
  %i.dj = getelementptr inbounds nuw [144 x i8], ptr %i.di, i64 %indvars.iv.next.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.dh, ptr noundef nonnull align 8 dereferenceable(144) %i.dj, i64 144, i1 false)
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa, label %bb.k, !llvm.loop !10

_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa: ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.1, %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod150 = trunc i32 %i.db to i1
  tail call void @llvm.assume(i1 %lcmp.mod150)
  %i.dk = getelementptr inbounds nuw [144 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.i.i.i.epil.init
  %i.dl = load ptr, ptr %i.bu, align 8, !tbaa !182
  %i.dm = getelementptr inbounds nuw [144 x i8], ptr %i.dl, i64 %indvars.iv.i.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.dk, ptr noundef nonnull align 8 dereferenceable(144) %i.dm, i64 144, i1 false)
  br label %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i

_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE8allocateEi.exit.i.i.i
  %i.dn = load ptr, ptr %i.bu, align 8, !tbaa !182 ; 2 uses
  %.not.i5.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i5.i.i.i, label %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE10deallocateEv.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i
  %i.do = load i8, ptr %i.bw, align 8, !tbaa !181, !range !262, !noundef !263
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.m, label %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE10deallocateEv.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.dn)
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE10deallocateEv.exit.i.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE10deallocateEv.exit.i.i.i: ; preds = %bb.m, %bb.l, %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i
  store i8 1, ptr %i.bw, align 8, !tbaa !181
  store ptr %.0.i.i.i.i, ptr %i.bu, align 8, !tbaa !182
  store i32 %i.cw, ptr %i.bv, align 8, !tbaa !184
  %.pre2.i.i = load i32, ptr %i.br, align 4, !tbaa !183
  br label %_ZN10btSoftBody10appendFaceEiPNS_8MaterialE.exit

_ZN10btSoftBody10appendFaceEiPNS_8MaterialE.exit: ; preds = %bb.g, %bb.h, %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE10deallocateEv.exit.i.i.i
  %i.dq = phi ptr [ %.0.i.i.i.i, %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE10deallocateEv.exit.i.i.i ], [ %i.ci, %bb.h ], [ %i.ci, %bb.g ]
  %i.dr = phi i32 [ %.pre2.i.i, %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE10deallocateEv.exit.i.i.i ], [ %i.cs, %bb.h ], [ %i.cs, %bb.g ]
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [144 x i8], ptr %i.dq, i64 %i.ds ; 2 uses
  store <2 x ptr> %i.cr, ptr %i.dt, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.7.i, i64 128, i1 false)
  %i.du = load i32, ptr %i.br, align 4, !tbaa !183 ; 2 uses
  %i.dv = add nsw i32 %i.du, 1
  store i32 %i.dv, ptr %i.br, align 4, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %i.dw = load ptr, ptr %i.bu, align 8, !tbaa !182 ; 2 uses
  %i.dx = getelementptr inbounds nuw [144 x i8], ptr %i.dw, i64 %indvars.iv123 ; 2 uses
  %i.dy = sext i32 %i.du to i64
  %i.dz = getelementptr inbounds [144 x i8], ptr %i.dw, i64 %i.dy
  %.sroa.idx25 = and i1 %or.cond.i86.not, %or.cond8.i64
  %.sroa.speculated30 = select i1 %.sroa.idx25, ptr %i.at, ptr %i.as
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv119
  store ptr %.sroa.speculated30, ptr %i.eb, align 8, !tbaa !316
  %.sroa.speculated36 = select i1 %or.cond.i86.not, ptr %i.as, ptr %i.at
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %.054115
  store ptr %.sroa.speculated36, ptr %i.ed, align 8, !tbaa !316
  %i.ee = add nuw nsw i64 %indvars.iv119, 1       ; 4 uses
  %.cmp.not = icmp eq i64 %indvars.iv119, 2
  %i.ef = select i1 %.cmp.not, i64 0, i64 %i.ee
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.ef ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !316 ; 8 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !270 ; 4 uses
  %i.ek = load i32, ptr %i.aw, align 4, !tbaa !179 ; 11 uses
  %.not26.i.i = icmp sgt i32 %i.ek, 0
  br i1 %.not26.i.i, label %.lr.ph.i.i, label %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN10btSoftBody10appendFaceEiPNS_8MaterialE.exit
  %i.el = load ptr, ptr %i.bx, align 8, !tbaa !178 ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.ek to i64
  br label %bb.o

bb.n:                                             ; preds = %.critedge.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i, label %bb.o, !llvm.loop !8

bb.o:                                             ; preds = %bb.n, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.n ] ; 2 uses
  %i.em = getelementptr inbounds nuw [72 x i8], ptr %i.el, i64 %indvars.iv.i.i ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !316 ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.as
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.er = load ptr, ptr %i.eq, align 8            ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.eh
  %or.cond.i.i = select i1 %i.ep, i1 %i.es, i1 false
  br i1 %or.cond.i.i, label %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.o
  %i.et = icmp eq ptr %i.eo, %i.eh
  %i.eu = icmp eq ptr %i.er, %i.as
  %or.cond23.i.i = select i1 %i.et, i1 %i.eu, i1 false
  br i1 %or.cond23.i.i, label %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit, label %bb.n

_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i: ; preds = %bb.n, %_ZN10btSoftBody10appendFaceEiPNS_8MaterialE.exit
  %.not.i = icmp eq ptr %i.ej, null
  br i1 %.not.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i
  %i.ev = load ptr, ptr %i.by, align 8, !tbaa !230
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !295
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i
  %.sroa.6.0.i = phi ptr [ %i.ew, %bb.p ], [ %i.ej, %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i ]
  %i.ex = load i32, ptr %i.bz, align 8, !tbaa !180
  %i.ey = icmp eq i32 %i.ek, %i.ex
  br i1 %i.ey, label %bb.r, label %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit

bb.r:                                             ; preds = %bb.q
  %.not.i.i.i82 = icmp eq i32 %i.ek, 0
  %i.ez = shl nsw i32 %i.ek, 1
  %i.fa = select i1 %.not.i.i.i82, i32 1, i32 %i.ez ; 4 uses
  %i.fb = icmp slt i32 %i.ek, %i.fa
  br i1 %i.fb, label %bb.s, label %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit

bb.s:                                             ; preds = %bb.r
  %.not.i.i.i.i83 = icmp eq i32 %i.fa, 0
  br i1 %.not.i.i.i.i83, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fc = sext i32 %i.fa to i64
  %i.fd = mul nsw i64 %i.fc, 72
  %i.fe = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.fd, i32 noundef 16)
  %.pre.i.i84 = load i32, ptr %i.aw, align 4, !tbaa !179
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i: ; preds = %bb.t, %bb.s
  %i.ff = phi i32 [ %.pre.i.i84, %bb.t ], [ %i.ek, %bb.s ] ; 4 uses
  %.0.i.i.i.i85 = phi ptr [ %i.fe, %bb.t ], [ null, %bb.s ] ; 4 uses
  %i.fg = icmp sgt i32 %i.ff, 0
  br i1 %i.fg, label %.lr.ph.i.i.i.i88, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i

.lr.ph.i.i.i.i88:                                 ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i
  %wide.trip.count.i.i.i.i89 = zext nneg i32 %i.ff to i64 ; 2 uses
  %xtraiter152 = and i64 %wide.trip.count.i.i.i.i89, 1
  %i.fh = icmp eq i32 %i.ff, 1
  br i1 %i.fh, label %.epil.preheader151, label %.lr.ph.i.i.i.i88.new

.lr.ph.i.i.i.i88.new:                             ; preds = %.lr.ph.i.i.i.i88
  %unroll_iter155 = and i64 %wide.trip.count.i.i.i.i89, 2147483646
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i.i.i.i88.new
  %indvars.iv.i.i.i.i90 = phi i64 [ 0, %.lr.ph.i.i.i.i88.new ], [ %indvars.iv.next.i.i.i.i91.1, %bb.u ] ; 4 uses
  %niter156 = phi i64 [ 0, %.lr.ph.i.i.i.i88.new ], [ %niter156.next.1, %bb.u ]
  %i.fi = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i85, i64 %indvars.iv.i.i.i.i90
  %i.fj = load ptr, ptr %i.bx, align 8, !tbaa !178
  %i.fk = getelementptr inbounds nuw [72 x i8], ptr %i.fj, i64 %indvars.iv.i.i.i.i90
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fi, ptr noundef nonnull align 8 dereferenceable(72) %i.fk, i64 72, i1 false)
  %indvars.iv.next.i.i.i.i91 = or disjoint i64 %indvars.iv.i.i.i.i90, 1 ; 2 uses
  %i.fl = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i85, i64 %indvars.iv.next.i.i.i.i91
  %i.fm = load ptr, ptr %i.bx, align 8, !tbaa !178
  %i.fn = getelementptr inbounds nuw [72 x i8], ptr %i.fm, i64 %indvars.iv.next.i.i.i.i91
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fl, ptr noundef nonnull align 8 dereferenceable(72) %i.fn, i64 72, i1 false)
  %indvars.iv.next.i.i.i.i91.1 = add nuw nsw i64 %indvars.iv.i.i.i.i90, 2 ; 2 uses
  %niter156.next.1 = add i64 %niter156, 2         ; 2 uses
  %niter156.ncmp.1 = icmp eq i64 %niter156.next.1, %unroll_iter155
  br i1 %niter156.ncmp.1, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa, label %bb.u, !llvm.loop !9

_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa: ; preds = %bb.u
  %lcmp.mod153.not = icmp eq i64 %xtraiter152, 0
  br i1 %lcmp.mod153.not, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i, label %.epil.preheader151

.epil.preheader151:                               ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i88
  %indvars.iv.i.i.i.i90.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i88 ], [ %indvars.iv.next.i.i.i.i91.1, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod154 = trunc i32 %i.ff to i1
  tail call void @llvm.assume(i1 %lcmp.mod154)
  %i.fo = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i85, i64 %indvars.iv.i.i.i.i90.epil.init
  %i.fp = load ptr, ptr %i.bx, align 8, !tbaa !178
  %i.fq = getelementptr inbounds nuw [72 x i8], ptr %i.fp, i64 %indvars.iv.i.i.i.i90.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fo, ptr noundef nonnull align 8 dereferenceable(72) %i.fq, i64 72, i1 false)
  br label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i

_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i: ; preds = %.epil.preheader151, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i
  %i.fr = load ptr, ptr %i.bx, align 8, !tbaa !178 ; 2 uses
  %.not.i5.i.i.i86 = icmp eq ptr %i.fr, null
  br i1 %.not.i5.i.i.i86, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i, label %bb.v

bb.v:                                             ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i
  %i.fs = load i8, ptr %i.ca, align 8, !tbaa !177, !range !262, !noundef !263
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %bb.w, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.fr)
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i: ; preds = %bb.w, %bb.v, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i
  store i8 1, ptr %i.ca, align 8, !tbaa !177
  store ptr %.0.i.i.i.i85, ptr %i.bx, align 8, !tbaa !178
  store i32 %i.fa, ptr %i.bz, align 8, !tbaa !180
  %.pre2.i.i87 = load i32, ptr %i.aw, align 4, !tbaa !179
  br label %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit

_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit: ; preds = %bb.q, %bb.r, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i
  %i.fu = phi i32 [ %.pre2.i.i87, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i ], [ %i.ek, %bb.r ], [ %i.ek, %bb.q ]
  %i.fv = load ptr, ptr %i.bx, align 8, !tbaa !178
  %i.fw = sext i32 %i.fu to i64
  %i.fx = getelementptr inbounds [72 x i8], ptr %i.fv, i64 %i.fw ; 3 uses
  store ptr null, ptr %i.fx, align 8
  %.sroa.6.0..sroa_idx.i80 = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store ptr %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i80, align 8
  %.sroa.7.0..sroa_idx.i81 = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx.i81, i8 0, i64 56, i1 false)
  %i.fy = load i32, ptr %i.aw, align 4, !tbaa !179
  %i.fz = add nsw i32 %i.fy, 1                    ; 3 uses
  store i32 %i.fz, ptr %i.aw, align 4, !tbaa !179
  %i.ga = load ptr, ptr %i.bx, align 8, !tbaa !178 ; 2 uses
  %i.gb = sext i32 %i.fz to i64
  %i.gc = getelementptr [72 x i8], ptr %i.ga, i64 %i.gb ; 3 uses
  %i.gd = getelementptr i8, ptr %i.gc, i64 -40
  store ptr %i.as, ptr %i.gd, align 8, !tbaa !316
  %i.ge = getelementptr i8, ptr %i.gc, i64 -32
  store ptr %i.eh, ptr %i.ge, align 8, !tbaa !316
  %i.gf = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.gg = load float, ptr %i.cb, align 8, !tbaa !253
  %i.gh = load float, ptr %i.gf, align 4, !tbaa !253
  %i.gi = fsub float %i.gg, %i.gh                 ; 2 uses
  %i.gj = load float, ptr %i.cc, align 4, !tbaa !253
  %i.gk = getelementptr inbounds nuw i8, ptr %i.eh, i64 20
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !253
  %i.gm = fsub float %i.gj, %i.gl                 ; 2 uses
  %i.gn = load float, ptr %i.cd, align 8, !tbaa !253
  %i.go = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.gp = load float, ptr %i.go, align 4, !tbaa !253
  %i.gq = fsub float %i.gn, %i.gp                 ; 2 uses
  %i.gr = fmul float %i.gm, %i.gm
  %i.gs = tail call float @llvm.fmuladd.f32(float %i.gi, float %i.gi, float %i.gr)
  %i.gt = tail call noundef float @llvm.fmuladd.f32(float %i.gq, float %i.gq, float %i.gs)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.gt)
  %i.gu = getelementptr i8, ptr %i.gc, i64 -24
  store float %sqrt.i.i, ptr %i.gu, align 8, !tbaa !327
  store i8 1, ptr %i.ce, align 4, !tbaa !280
  %.pre128 = load ptr, ptr %i.eg, align 8, !tbaa !316
  %.pre129 = load ptr, ptr %i.ei, align 8, !tbaa !270
  br label %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit

_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit: ; preds = %bb.o, %.critedge.i.i, %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit
  %i.gv = phi ptr [ %i.ga, %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit ], [ %i.el, %.critedge.i.i ], [ %i.el, %bb.o ] ; 3 uses
  %i.gw = phi i32 [ %i.fz, %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit ], [ %i.ek, %.critedge.i.i ], [ %i.ek, %bb.o ] ; 9 uses
  %i.gx = phi ptr [ %.pre129, %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit ], [ %i.ej, %.critedge.i.i ], [ %i.ej, %bb.o ] ; 2 uses
  %i.gy = phi ptr [ %.pre128, %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit ], [ %i.eh, %.critedge.i.i ], [ %i.eh, %bb.o ] ; 6 uses
  %.not26.i.i67 = icmp sgt i32 %i.gw, 0
  br i1 %.not26.i.i67, label %.lr.ph.i.i70, label %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i68

.lr.ph.i.i70:                                     ; preds = %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit
  %wide.trip.count.i.i71 = zext nneg i32 %i.gw to i64
  br label %bb.y

bb.x:                                             ; preds = %.critedge.i.i74
  %indvars.iv.next.i.i76 = add nuw nsw i64 %indvars.iv.i.i72, 1 ; 2 uses
  %exitcond.not.i.i77 = icmp eq i64 %indvars.iv.next.i.i76, %wide.trip.count.i.i71
  br i1 %exitcond.not.i.i77, label %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i68, label %bb.y, !llvm.loop !8

bb.y:                                             ; preds = %bb.x, %.lr.ph.i.i70
  %indvars.iv.i.i72 = phi i64 [ 0, %.lr.ph.i.i70 ], [ %indvars.iv.next.i.i76, %bb.x ] ; 2 uses
  %i.gz = getelementptr inbounds nuw [72 x i8], ptr %i.gv, i64 %indvars.iv.i.i72 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !316 ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.at
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 40
  %i.he = load ptr, ptr %i.hd, align 8            ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.gy
  %or.cond.i.i73 = select i1 %i.hc, i1 %i.hf, i1 false
  br i1 %or.cond.i.i73, label %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit78, label %.critedge.i.i74

.critedge.i.i74:                                  ; preds = %bb.y
  %i.hg = icmp eq ptr %i.hb, %i.gy
  %i.hh = icmp eq ptr %i.he, %i.at
  %or.cond23.i.i75 = select i1 %i.hg, i1 %i.hh, i1 false
  br i1 %or.cond23.i.i75, label %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit78, label %bb.x

_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i68: ; preds = %bb.x, %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i116)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.i116, i8 0, i64 56, i1 false)
  %.not.i94 = icmp eq ptr %i.gx, null
  br i1 %.not.i94, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i68
  %i.hi = load ptr, ptr %i.by, align 8, !tbaa !230
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !295
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i68
  %.sroa.6.0.i95 = phi ptr [ %i.hj, %bb.z ], [ %i.gx, %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i68 ]
  %i.hk = load i32, ptr %i.bz, align 8, !tbaa !180
  %i.hl = icmp eq i32 %i.gw, %i.hk
  br i1 %i.hl, label %bb.ab, label %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit112

bb.ab:                                            ; preds = %bb.aa
  %.not.i.i.i98 = icmp eq i32 %i.gw, 0
  %i.hm = shl nsw i32 %i.gw, 1
  %i.hn = select i1 %.not.i.i.i98, i32 1, i32 %i.hm ; 4 uses
  %i.ho = icmp slt i32 %i.gw, %i.hn
  br i1 %i.ho, label %bb.ac, label %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit112

bb.ac:                                            ; preds = %bb.ab
  %.not.i.i.i.i99 = icmp eq i32 %i.hn, 0
  br i1 %.not.i.i.i.i99, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i101, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hp = sext i32 %i.hn to i64
  %i.hq = mul nsw i64 %i.hp, 72
  %i.hr = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.hq, i32 noundef 16)
  %.pre.i.i100 = load i32, ptr %i.aw, align 4, !tbaa !179
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i101

_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i101: ; preds = %bb.ad, %bb.ac
  %i.hs = phi i32 [ %.pre.i.i100, %bb.ad ], [ %i.gw, %bb.ac ] ; 4 uses
  %.0.i.i.i.i102 = phi ptr [ %i.hr, %bb.ad ], [ null, %bb.ac ] ; 5 uses
  %i.ht = icmp sgt i32 %i.hs, 0
  br i1 %i.ht, label %.lr.ph.i.i.i.i107, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i103

.lr.ph.i.i.i.i107:                                ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i101
  %wide.trip.count.i.i.i.i108 = zext nneg i32 %i.hs to i64 ; 2 uses
  %xtraiter158 = and i64 %wide.trip.count.i.i.i.i108, 1
  %i.hu = icmp eq i32 %i.hs, 1
  br i1 %i.hu, label %.epil.preheader157, label %.lr.ph.i.i.i.i107.new

.lr.ph.i.i.i.i107.new:                            ; preds = %.lr.ph.i.i.i.i107
  %unroll_iter161 = and i64 %wide.trip.count.i.i.i.i108, 2147483646
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.i.i.i.i107.new
  %indvars.iv.i.i.i.i109 = phi i64 [ 0, %.lr.ph.i.i.i.i107.new ], [ %indvars.iv.next.i.i.i.i110.1, %bb.ae ] ; 4 uses
  %niter162 = phi i64 [ 0, %.lr.ph.i.i.i.i107.new ], [ %niter162.next.1, %bb.ae ]
  %i.hv = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i102, i64 %indvars.iv.i.i.i.i109
  %i.hw = load ptr, ptr %i.bx, align 8, !tbaa !178
  %i.hx = getelementptr inbounds nuw [72 x i8], ptr %i.hw, i64 %indvars.iv.i.i.i.i109
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.hv, ptr noundef nonnull align 8 dereferenceable(72) %i.hx, i64 72, i1 false)
  %indvars.iv.next.i.i.i.i110 = or disjoint i64 %indvars.iv.i.i.i.i109, 1 ; 2 uses
  %i.hy = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i102, i64 %indvars.iv.next.i.i.i.i110
  %i.hz = load ptr, ptr %i.bx, align 8, !tbaa !178
  %i.ia = getelementptr inbounds nuw [72 x i8], ptr %i.hz, i64 %indvars.iv.next.i.i.i.i110
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.hy, ptr noundef nonnull align 8 dereferenceable(72) %i.ia, i64 72, i1 false)
  %indvars.iv.next.i.i.i.i110.1 = add nuw nsw i64 %indvars.iv.i.i.i.i109, 2 ; 2 uses
  %niter162.next.1 = add i64 %niter162, 2         ; 2 uses
  %niter162.ncmp.1 = icmp eq i64 %niter162.next.1, %unroll_iter161
  br i1 %niter162.ncmp.1, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i103.loopexit.unr-lcssa, label %bb.ae, !llvm.loop !9

_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i103.loopexit.unr-lcssa: ; preds = %bb.ae
  %lcmp.mod159.not = icmp eq i64 %xtraiter158, 0
  br i1 %lcmp.mod159.not, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i103, label %.epil.preheader157

.epil.preheader157:                               ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i103.loopexit.unr-lcssa, %.lr.ph.i.i.i.i107
  %indvars.iv.i.i.i.i109.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i107 ], [ %indvars.iv.next.i.i.i.i110.1, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i103.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod160 = trunc i32 %i.hs to i1
  tail call void @llvm.assume(i1 %lcmp.mod160)
  %i.ib = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i102, i64 %indvars.iv.i.i.i.i109.epil.init
  %i.ic = load ptr, ptr %i.bx, align 8, !tbaa !178
  %i.id = getelementptr inbounds nuw [72 x i8], ptr %i.ic, i64 %indvars.iv.i.i.i.i109.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ib, ptr noundef nonnull align 8 dereferenceable(72) %i.id, i64 72, i1 false)
  br label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i103

_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i103: ; preds = %.epil.preheader157, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i103.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i101
  %i.ie = load ptr, ptr %i.bx, align 8, !tbaa !178 ; 2 uses
  %.not.i5.i.i.i104 = icmp eq ptr %i.ie, null
  br i1 %.not.i5.i.i.i104, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i105, label %bb.af

bb.af:                                            ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i103
  %i.if = load i8, ptr %i.ca, align 8, !tbaa !177, !range !262, !noundef !263
  %i.ig = trunc nuw i8 %i.if to i1
  br i1 %i.ig, label %bb.ag, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i105

bb.ag:                                            ; preds = %bb.af
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ie)
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i105

_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i105: ; preds = %bb.ag, %bb.af, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i103
  store i8 1, ptr %i.ca, align 8, !tbaa !177
  store ptr %.0.i.i.i.i102, ptr %i.bx, align 8, !tbaa !178
  store i32 %i.hn, ptr %i.bz, align 8, !tbaa !180
  %.pre2.i.i106 = load i32, ptr %i.aw, align 4, !tbaa !179
  br label %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit112

_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit112: ; preds = %bb.aa, %bb.ab, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i105
  %i.ih = phi ptr [ %.0.i.i.i.i102, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i105 ], [ %i.gv, %bb.ab ], [ %i.gv, %bb.aa ]
  %i.ii = phi i32 [ %.pre2.i.i106, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i105 ], [ %i.gw, %bb.ab ], [ %i.gw, %bb.aa ]
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds [72 x i8], ptr %i.ih, i64 %i.ij ; 3 uses
  store ptr null, ptr %i.ik, align 8
  %.sroa.6.0..sroa_idx.i96 = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store ptr %.sroa.6.0.i95, ptr %.sroa.6.0..sroa_idx.i96, align 8
  %.sroa.7.0..sroa_idx.i97 = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx.i97, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.i116, i64 56, i1 false)
  %i.il = load i32, ptr %i.aw, align 4, !tbaa !179
  %i.im = add nsw i32 %i.il, 1                    ; 2 uses
  store i32 %i.im, ptr %i.aw, align 4, !tbaa !179
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i116)
  %i.in = load ptr, ptr %i.bx, align 8, !tbaa !178
  %i.io = sext i32 %i.im to i64
  %i.ip = getelementptr [72 x i8], ptr %i.in, i64 %i.io ; 3 uses
  %i.iq = getelementptr i8, ptr %i.ip, i64 -40
  store ptr %i.at, ptr %i.iq, align 8, !tbaa !316
  %i.ir = getelementptr i8, ptr %i.ip, i64 -32
  store ptr %i.gy, ptr %i.ir, align 8, !tbaa !316
  %i.is = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.it = load float, ptr %i.cf, align 8, !tbaa !253
  %i.iu = load float, ptr %i.is, align 4, !tbaa !253
  %i.iv = fsub float %i.it, %i.iu                 ; 2 uses
  %i.iw = load float, ptr %i.cg, align 4, !tbaa !253
  %i.ix = getelementptr inbounds nuw i8, ptr %i.gy, i64 20
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !253
  %i.iz = fsub float %i.iw, %i.iy                 ; 2 uses
  %i.ja = load float, ptr %i.ch, align 8, !tbaa !253
  %i.jb = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !253
  %i.jd = fsub float %i.ja, %i.jc                 ; 2 uses
  %i.je = fmul float %i.iz, %i.iz
  %i.jf = tail call float @llvm.fmuladd.f32(float %i.iv, float %i.iv, float %i.je)
  %i.jg = tail call noundef float @llvm.fmuladd.f32(float %i.jd, float %i.jd, float %i.jf)
  %sqrt.i.i69 = tail call noundef float @llvm.sqrt.f32(float %i.jg)
  %i.jh = getelementptr i8, ptr %i.ip, i64 -24
  store float %sqrt.i.i69, ptr %i.jh, align 8, !tbaa !327
  store i8 1, ptr %i.ce, align 4, !tbaa !280
  br label %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit78

_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit78: ; preds = %.critedge.i.i74, %bb.y, %._ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit78_crit_edge, %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit112
  %indvars.iv.next120.pre-phi = phi i64 [ %.pre130, %._ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit78_crit_edge ], [ %i.ee, %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit112 ], [ %i.ee, %bb.y ], [ %i.ee, %.critedge.i.i74 ] ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next120.pre-phi, 3
  br i1 %exitcond122.not, label %bb.e, label %bb.f, !llvm.loop !993

._crit_edge118:                                   ; preds = %bb.e, %._crit_edge
  br i1 %.0.lcssa, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge118
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 1544 ; 2 uses
  %i.jj = getelementptr i8, ptr %i.ar, i64 -392
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !269
  tail call void @_ZN6btDbvt6removeEP10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(64) %i.ji, ptr noundef %i.jk)
  %i.jl = getelementptr i8, ptr %i.ar, i64 -136
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !269
  tail call void @_ZN6btDbvt6removeEP10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(64) %i.ji, ptr noundef %i.jm)
  %i.jn = load i32, ptr %i.ao, align 4, !tbaa !171
  %i.jo = add nsw i32 %i.jn, -2
  store i32 %i.jo, ptr %i.ao, align 4, !tbaa !171
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge118
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  ret i1 %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN10btSoftBody7rayTestERK9btVector3S2_RNS_8sRayCastE(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 20)) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1028
  %i.b = load i32, ptr %i.a, align 4, !tbaa !183
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
  store ptr %0, ptr %3, align 8, !tbaa !433
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store float 1.000000e+00, ptr %i.f, align 8, !tbaa !434
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !994
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 -1, ptr %i.h, align 4, !tbaa !435
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
  store i8 1, ptr %i.b, align 8, !tbaa !439
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr null, ptr %i.c, align 8, !tbaa !440
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.e, align 8, !tbaa !441
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1028 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !183  ; 6 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %.loopexit123.thread

.loopexit123.thread:                              ; preds = %bb.b
  store i32 %i.g, ptr %i.d, align 4, !tbaa !442
  br label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.i = zext nneg i32 %i.g to i64
  %i.j = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  %i.k = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16)
          to label %.loopexit123 unwind label %.thread ; 4 uses

.loopexit123:                                     ; preds = %bb.c
  store i8 1, ptr %i.b, align 8, !tbaa !439
  store ptr %i.k, ptr %i.c, align 8, !tbaa !440
  store i32 %i.g, ptr %i.e, align 8, !tbaa !441
  call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %i.j, i1 false), !tbaa !443
  %.pre = load i32, ptr %i.f, align 4, !tbaa !183 ; 2 uses
  store i32 %i.g, ptr %i.d, align 4, !tbaa !442
  %i.l = icmp sgt i32 %.pre, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit123
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1040
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.thread:                                          ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayIP10btDbvtNodeED2Ev.exit98

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !182
  %i.q = getelementptr inbounds nuw [144 x i8], ptr %i.p, i64 %indvars.iv ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !316, !noalias !1009
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !316, !noalias !1009
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !316, !noalias !1009
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load <4 x float>, ptr %i.t, align 4     ; 4 uses
  %i.ab = load <4 x float>, ptr %i.w, align 4, !tbaa !253, !noalias !1010 ; 4 uses
  %i.ac = load <4 x float>, ptr %i.z, align 4, !tbaa !253, !noalias !1010 ; 4 uses
  %i.ad = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 56, i32 noundef 16)
          to label %bb.f unwind label %bb.g       ; 7 uses

bb.f:                                             ; preds = %bb.e
  %i.ae = fcmp olt <4 x float> %i.ab, %i.aa
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store i64 0, ptr %i.ag, align 8
  store ptr %i.q, ptr %i.af, align 8, !tbaa !259
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store ptr null, ptr %i.ah, align 8, !tbaa !259
  %i.ai = select <4 x i1> %i.ae, <4 x float> %i.ab, <4 x float> %i.aa ; 2 uses
  %i.aj = fcmp olt <4 x float> %i.ac, %i.ai
  %i.ak = select <4 x i1> %i.aj, <4 x float> %i.ac, <4 x float> %i.ai
  store <4 x float> %i.ak, ptr %i.ad, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.al = fcmp olt <4 x float> %i.aa, %i.ab
  %i.am = select <4 x i1> %i.al, <4 x float> %i.ab, <4 x float> %i.aa ; 2 uses
  %i.an = fcmp olt <4 x float> %i.am, %i.ac
  %i.ao = select <4 x i1> %i.an, <4 x float> %i.ac, <4 x float> %i.am
  %i.ap = fadd <4 x float> %i.ao, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -0.000000e+00>
  store <4 x float> %i.ap, ptr %.sroa.13.0..sroa_idx, align 8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  store ptr %i.ad, ptr %i.aq, align 8, !tbaa !443
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store ptr %i.ad, ptr %i.ar, align 8, !tbaa !319
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.as = load i32, ptr %i.f, align 4, !tbaa !183 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = icmp slt i64 %indvars.iv.next, %i.at
  br i1 %i.au, label %bb.e, label %._crit_edge, !llvm.loop !999

bb.g:                                             ; preds = %bb.e
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

._crit_edge:                                      ; preds = %bb.f, %.loopexit123.thread, %.loopexit123
  %.lcssa = phi i32 [ %.pre, %.loopexit123 ], [ %i.g, %.loopexit123.thread ], [ %i.as, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i8 1, ptr %i.aw, align 8, !tbaa !447
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr null, ptr %i.ax, align 8, !tbaa !448
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  store i32 0, ptr %i.ay, align 4, !tbaa !449
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.az, align 8, !tbaa !450
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i8 1, ptr %i.ba, align 8, !tbaa !249
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr null, ptr %i.bb, align 8, !tbaa !250
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.bc, align 4, !tbaa !251
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.bd, align 8, !tbaa !252
  invoke void @_ZN20btAlignedObjectArrayIS_IiEE6resizeEiRKS0_(ptr noundef nonnull align 8 dereferenceable(25) %3, i32 noundef %.lcssa, ptr noundef nonnull align 8 dereferenceable(25) %4)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %._crit_edge
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !250 ; 2 uses
  %.not.i.i.i47 = icmp ne ptr %i.be, null
  %i.bf = load i8, ptr %i.ba, align 8, !range !262
  %i.bg = trunc nuw i8 %i.bf to i1
  %or.cond.i.i = select i1 %.not.i.i.i47, i1 %i.bg, i1 false
  br i1 %or.cond.i.i, label %bb.i, label %_ZN20btAlignedObjectArrayIiED2Ev.exit

bb.i:                                             ; preds = %bb.h
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.be)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #40
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit:            ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  %i.bj = load i32, ptr %i.ay, align 4, !tbaa !449 ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.preheader122.lr.ph, label %._crit_edge133

.preheader122.lr.ph:                              ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1040
  br label %.preheader122

.preheader122:                                    ; preds = %.preheader122.lr.ph, %._crit_edge131
end_hunk_0
