Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBody?download=true
inline.NumInlined: 5223
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 199
loop-unroll.NumUnrolled: 249
begin_hunk_0_@_ZN10btSoftBody6refineEPNS_10ImplicitFnEfb:bb.a
  %i.acq = ashr i64 %i.acp, 32
  %i.acr = getelementptr inbounds [4 x i8], ptr %i.aan, i64 %i.acq ; 2 uses
  %i.acs = load i32, ptr %i.acr, align 4, !tbaa !275
  %i.act = add nsw i32 %i.acs, 1
  store i32 %i.act, ptr %i.acr, align 4, !tbaa !275
  %indvars.iv.next565 = add nuw nsw i64 %indvars.iv564, 1 ; 2 uses
  %exitcond568.not = icmp eq i64 %indvars.iv.next565, %wide.trip.count567
  br i1 %exitcond568.not, label %.preheader, label %.preheader432, !llvm.loop !989

.preheader:                                       ; preds = %.preheader432, %._crit_edge494
  %i.acu = load i32, ptr %i.ay, align 4, !tbaa !179 ; 2 uses
  %i.acv = icmp sgt i32 %i.acu, 0
  br i1 %i.acv, label %.lr.ph498, label %_ZN20btAlignedObjectArrayIiED2Ev.exit

.lr.ph498:                                        ; preds = %.preheader
  %i.acw = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.acx = ptrtoint ptr %i.ux to i64              ; 2 uses
  br label %bb.db

bb.db:                                            ; preds = %.lr.ph498, %bb.dd
  %i.acy = phi i32 [ %i.acu, %.lr.ph498 ], [ %i.aee, %bb.dd ]
  %.5497 = phi i32 [ 0, %.lr.ph498 ], [ %i.aef, %bb.dd ] ; 3 uses
  %i.acz = load ptr, ptr %i.acw, align 8, !tbaa !178 ; 2 uses
  %i.ada = sext i32 %.5497 to i64
  %i.adb = getelementptr inbounds [72 x i8], ptr %i.acz, i64 %i.ada ; 4 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 32
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !316
  %i.ade = ptrtoint ptr %i.add to i64
  %i.adf = sub i64 %i.ade, %i.acx
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adb, i64 40
  %i.adh = load ptr, ptr %i.adg, align 8, !tbaa !316
  %i.adi = ptrtoint ptr %i.adh to i64
  %i.adj = sub i64 %i.adi, %i.acx
  %i.adk = shl i64 %i.adf, 24
  %i.adl = ashr i64 %i.adk, 32
  %i.adm = getelementptr inbounds [4 x i8], ptr %i.aan, i64 %i.adl ; 2 uses
  %i.adn = load i32, ptr %i.adm, align 4, !tbaa !275 ; 2 uses
  %i.ado = icmp eq i32 %i.adn, 1
  %i.adp = shl i64 %i.adj, 24
  %i.adq = ashr i64 %i.adp, 32
  %i.adr = getelementptr inbounds [4 x i8], ptr %i.aan, i64 %i.adq ; 3 uses
  %i.ads = load i32, ptr %i.adr, align 4, !tbaa !275
  %i.adt = icmp eq i32 %i.ads, 1
  %or.cond = select i1 %i.ado, i1 true, i1 %i.adt
  br i1 %or.cond, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.adu = add nsw i32 %i.adn, -1
  store i32 %i.adu, ptr %i.adm, align 4, !tbaa !275
  %i.adv = load i32, ptr %i.adr, align 4, !tbaa !275
  %i.adw = add nsw i32 %i.adv, -1
  store i32 %i.adw, ptr %i.adr, align 4, !tbaa !275
  %i.adx = load i32, ptr %i.ay, align 4, !tbaa !179
  %i.ady = sext i32 %i.adx to i64
  %i.adz = getelementptr [72 x i8], ptr %i.acz, i64 %i.ady
  %i.aea = getelementptr i8, ptr %i.adz, i64 -72  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %i.adb, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.adb, ptr noundef nonnull align 8 dereferenceable(68) %i.aea, i64 68, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.aea, ptr noundef nonnull align 8 dereferenceable(68) %4, i64 68, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.aeb = load i32, ptr %i.ay, align 4, !tbaa !179
  %i.aec = add nsw i32 %i.aeb, -1                 ; 2 uses
  store i32 %i.aec, ptr %i.ay, align 4, !tbaa !179
  %i.aed = add nsw i32 %.5497, -1
  br label %bb.dd

bb.dd:                                            ; preds = %bb.db, %bb.dc
  %i.aee = phi i32 [ %i.aec, %bb.dc ], [ %i.acy, %bb.db ] ; 2 uses
  %.6 = phi i32 [ %i.aed, %bb.dc ], [ %.5497, %bb.db ]
  %i.aef = add nsw i32 %.6, 1                     ; 2 uses
  %i.aeg = icmp slt i32 %i.aef, %i.aee
  br i1 %i.aeg, label %bb.db, label %_ZN20btAlignedObjectArrayIiED2Ev.exit.thread, !llvm.loop !990

_ZN20btAlignedObjectArrayIiED2Ev.exit.thread:     ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  br label %bb.de

_ZN20btAlignedObjectArrayIiED2Ev.exit:            ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  %.not.i.i.i387.not = icmp eq ptr %i.aan, null
  br i1 %.not.i.i.i387.not, label %_ZN20btAlignedObjectArrayIiED2Ev.exit389, label %bb.de

bb.de:                                            ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit.thread, %_ZN20btAlignedObjectArrayIiED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.aan)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit389 unwind label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.aeh = landingpad { ptr, i32 }
          catch ptr null
  %i.aei = extractvalue { ptr, i32 } %i.aeh, 0
  call void @__clang_call_terminate(ptr %i.aei) #41
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit389:         ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  %.not.i.i.i390.not = icmp eq ptr %i.uw, null
  br i1 %.not.i.i.i390.not, label %_ZN20btAlignedObjectArrayIiED2Ev.exit392, label %bb.dg

bb.dg:                                            ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit389
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.uw)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit392 unwind label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.aej = landingpad { ptr, i32 }
          catch ptr null
  %i.aek = extractvalue { ptr, i32 } %i.aej, 0
  call void @__clang_call_terminate(ptr %i.aek) #41
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit392:         ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit389, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  br label %bb.dj

bb.di:                                            ; preds = %bb.da, %bb.ct, %bb.ce, %bb.bz, %bb.bt
  %.pn310.pn = phi { ptr, i32 } [ %.pn310, %bb.bz ], [ %i.vw, %bb.ce ], [ %i.za, %bb.ct ], [ %i.abm, %bb.da ], [ %i.um, %bb.bt ]
  call void @_ZN20btAlignedObjectArrayIiED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  br label %bb.dm

bb.dj:                                            ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit392, %._crit_edge476
  %i.ael = getelementptr inbounds nuw i8, ptr %0, i64 1540
  store i8 1, ptr %i.ael, align 4, !tbaa !280
  %i.aem = load ptr, ptr %i.f, align 8, !tbaa !250 ; 2 uses
  %.not.i.i.i.i393 = icmp ne ptr %i.aem, null
  %i.aen = load i8, ptr %i.e, align 8, !range !262
  %i.aeo = trunc nuw i8 %i.aen to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i.i393, i1 %i.aeo, i1 false
  br i1 %or.cond.i.i.i, label %bb.dk, label %_ZN11btSymMatrixIiED2Ev.exit

bb.dk:                                            ; preds = %bb.dj
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.aem)
          to label %_ZN11btSymMatrixIiED2Ev.exit unwind label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.aep = landingpad { ptr, i32 }
          catch ptr null
  %i.aeq = extractvalue { ptr, i32 } %i.aep, 0
  call void @__clang_call_terminate(ptr %i.aeq) #41
  unreachable

_ZN11btSymMatrixIiED2Ev.exit:                     ; preds = %bb.dj, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  ret void

bb.dm:                                            ; preds = %.loopexit439, %.loopexit.split-lp, %bb.j, %bb.k, %bb.af, %bb.di, %bb.bk, %bb.ak
  %.pn321.pn = phi { ptr, i32 } [ %.pn314, %bb.bk ], [ %i.cn, %bb.k ], [ %i.jx, %bb.af ], [ %.pn310.pn, %bb.di ], [ %i.cm, %bb.j ], [ %i.mi, %bb.ak ], [ %lpad.loopexit, %.loopexit439 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN11btSymMatrixIiED2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
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
  tail call void @__clang_call_terminate(ptr %i.g) #41
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
  %.sroa.7.i115 = alloca <{ %class.btVector3, [2 x ptr], float, i8, [3 x i8], float, float, float, [4 x i8] }>, align 8 ; 4 uses
  %.sroa.7.i = alloca <{ [3 x ptr], %class.btVector3, float, [4 x i8], ptr, %class.btVector4, %class.btVector3, %class.btVector3, %class.btVector3, i32, [4 x i8] }>, align 8 ; 4 uses
  %4 = alloca %class.btVector3, align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
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
  %.0113 = phi i1 [ false, %.lr.ph ], [ %.1, %bb.d ]
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
  %.sroa.speculated6 = select i1 %.sroa.idx, ptr %i.as, ptr %i.at
  %i.bp = getelementptr i8, ptr %i.bn, i64 -40
  store ptr %.sroa.speculated6, ptr %i.bp, align 8, !tbaa !316
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bq = phi ptr [ %i.bj, %bb.c ], [ %i.ba, %bb.b ]
  %.1 = phi i1 [ true, %bb.c ], [ %.0113, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !993

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi i1 [ false, %bb.a ], [ %.1, %bb.d ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1028 ; 6 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !183 ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.preheader.lr.ph, label %._crit_edge117

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
  %wide.trip.count125 = zext nneg i32 %i.bs to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.e
  %indvars.iv122 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next123, %bb.e ] ; 3 uses
  br label %bb.f

bb.e:                                             ; preds = %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit77
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond126.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count125
  br i1 %exitcond126.not, label %._crit_edge117, label %.preheader, !llvm.loop !994

bb.f:                                             ; preds = %.preheader, %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit77
  %indvars.iv118 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next119.pre-phi, %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit77 ] ; 6 uses
  %.054114 = phi i64 [ 2, %.preheader ], [ %indvars.iv118, %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit77 ] ; 2 uses
  %i.ci = load ptr, ptr %i.bu, align 8, !tbaa !182 ; 3 uses
  %i.cj = getelementptr inbounds nuw [144 x i8], ptr %i.ci, i64 %indvars.iv122 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %.054114
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !316 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv118
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !316 ; 2 uses
  %8 = icmp ne ptr %i.cm, %i.am
  %9 = icmp ne ptr %i.co, %i.an
  %or.cond.i86.not = or i1 %8, %9                 ; 3 uses
  %i.cp = icmp eq ptr %i.cm, %i.an
  %i.cq = icmp eq ptr %i.co, %i.am
  %or.cond8.i64 = and i1 %i.cp, %i.cq             ; 2 uses
  %not.or.cond.i86.not = xor i1 %or.cond.i86.not, true
  %10 = select i1 %not.or.cond.i86.not, i1 true, i1 %or.cond8.i64
  br i1 %10, label %bb.g, label %._ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit77_crit_edge

._ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit77_crit_edge: ; preds = %bb.f
  %.pre129 = add nuw nsw i64 %indvars.iv118, 1
  br label %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit77

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
  %lcmp.mod149 = trunc i32 %i.db to i1
  tail call void @llvm.assume(i1 %lcmp.mod149)
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
  %i.dx = getelementptr inbounds nuw [144 x i8], ptr %i.dw, i64 %indvars.iv122 ; 2 uses
  %i.dy = sext i32 %i.du to i64
  %i.dz = getelementptr inbounds [144 x i8], ptr %i.dw, i64 %i.dy
  %.sroa.idx7 = and i1 %or.cond.i86.not, %or.cond8.i64
  %.sroa.speculated12 = select i1 %.sroa.idx7, ptr %i.at, ptr %i.as
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv118
  store ptr %.sroa.speculated12, ptr %i.eb, align 8, !tbaa !316
  %.sroa.speculated18 = select i1 %or.cond.i86.not, ptr %i.as, ptr %i.at
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %.054114
  store ptr %.sroa.speculated18, ptr %i.ed, align 8, !tbaa !316
  %i.ee = add nuw nsw i64 %indvars.iv118, 1       ; 4 uses
  %.cmp.not = icmp eq i64 %indvars.iv118, 2
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
  %.not.i.i.i81 = icmp eq i32 %i.ek, 0
  %i.ez = shl nsw i32 %i.ek, 1
  %i.fa = select i1 %.not.i.i.i81, i32 1, i32 %i.ez ; 4 uses
  %i.fb = icmp slt i32 %i.ek, %i.fa
  br i1 %i.fb, label %bb.s, label %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit

bb.s:                                             ; preds = %bb.r
  %.not.i.i.i.i82 = icmp eq i32 %i.fa, 0
  br i1 %.not.i.i.i.i82, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fc = sext i32 %i.fa to i64
  %i.fd = mul nsw i64 %i.fc, 72
  %i.fe = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.fd, i32 noundef 16)
  %.pre.i.i83 = load i32, ptr %i.aw, align 4, !tbaa !179
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i: ; preds = %bb.t, %bb.s
  %i.ff = phi i32 [ %.pre.i.i83, %bb.t ], [ %i.ek, %bb.s ] ; 4 uses
  %.0.i.i.i.i84 = phi ptr [ %i.fe, %bb.t ], [ null, %bb.s ] ; 4 uses
  %i.fg = icmp sgt i32 %i.ff, 0
  br i1 %i.fg, label %.lr.ph.i.i.i.i87, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i

.lr.ph.i.i.i.i87:                                 ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i
  %wide.trip.count.i.i.i.i88 = zext nneg i32 %i.ff to i64 ; 2 uses
  %xtraiter151 = and i64 %wide.trip.count.i.i.i.i88, 1
  %i.fh = icmp eq i32 %i.ff, 1
  br i1 %i.fh, label %.epil.preheader150, label %.lr.ph.i.i.i.i87.new

.lr.ph.i.i.i.i87.new:                             ; preds = %.lr.ph.i.i.i.i87
  %unroll_iter154 = and i64 %wide.trip.count.i.i.i.i88, 2147483646
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i.i.i.i87.new
  %indvars.iv.i.i.i.i89 = phi i64 [ 0, %.lr.ph.i.i.i.i87.new ], [ %indvars.iv.next.i.i.i.i90.1, %bb.u ] ; 4 uses
  %niter155 = phi i64 [ 0, %.lr.ph.i.i.i.i87.new ], [ %niter155.next.1, %bb.u ]
  %i.fi = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i84, i64 %indvars.iv.i.i.i.i89
  %i.fj = load ptr, ptr %i.bx, align 8, !tbaa !178
  %i.fk = getelementptr inbounds nuw [72 x i8], ptr %i.fj, i64 %indvars.iv.i.i.i.i89
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fi, ptr noundef nonnull align 8 dereferenceable(72) %i.fk, i64 72, i1 false)
  %indvars.iv.next.i.i.i.i90 = or disjoint i64 %indvars.iv.i.i.i.i89, 1 ; 2 uses
  %i.fl = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i84, i64 %indvars.iv.next.i.i.i.i90
  %i.fm = load ptr, ptr %i.bx, align 8, !tbaa !178
  %i.fn = getelementptr inbounds nuw [72 x i8], ptr %i.fm, i64 %indvars.iv.next.i.i.i.i90
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fl, ptr noundef nonnull align 8 dereferenceable(72) %i.fn, i64 72, i1 false)
  %indvars.iv.next.i.i.i.i90.1 = add nuw nsw i64 %indvars.iv.i.i.i.i89, 2 ; 2 uses
  %niter155.next.1 = add i64 %niter155, 2         ; 2 uses
  %niter155.ncmp.1 = icmp eq i64 %niter155.next.1, %unroll_iter154
  br i1 %niter155.ncmp.1, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa, label %bb.u, !llvm.loop !9

_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa: ; preds = %bb.u
  %lcmp.mod152.not = icmp eq i64 %xtraiter151, 0
  br i1 %lcmp.mod152.not, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i, label %.epil.preheader150

.epil.preheader150:                               ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i87
  %indvars.iv.i.i.i.i89.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i87 ], [ %indvars.iv.next.i.i.i.i90.1, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod153 = trunc i32 %i.ff to i1
  tail call void @llvm.assume(i1 %lcmp.mod153)
  %i.fo = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i84, i64 %indvars.iv.i.i.i.i89.epil.init
  %i.fp = load ptr, ptr %i.bx, align 8, !tbaa !178
  %i.fq = getelementptr inbounds nuw [72 x i8], ptr %i.fp, i64 %indvars.iv.i.i.i.i89.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fo, ptr noundef nonnull align 8 dereferenceable(72) %i.fq, i64 72, i1 false)
  br label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i

_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i: ; preds = %.epil.preheader150, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i
  %i.fr = load ptr, ptr %i.bx, align 8, !tbaa !178 ; 2 uses
  %.not.i5.i.i.i85 = icmp eq ptr %i.fr, null
  br i1 %.not.i5.i.i.i85, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i, label %bb.v

bb.v:                                             ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i
  %i.fs = load i8, ptr %i.ca, align 8, !tbaa !177, !range !262, !noundef !263
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %bb.w, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.fr)
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i: ; preds = %bb.w, %bb.v, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i
  store i8 1, ptr %i.ca, align 8, !tbaa !177
  store ptr %.0.i.i.i.i84, ptr %i.bx, align 8, !tbaa !178
  store i32 %i.fa, ptr %i.bz, align 8, !tbaa !180
  %.pre2.i.i86 = load i32, ptr %i.aw, align 4, !tbaa !179
  br label %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit

_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit: ; preds = %bb.q, %bb.r, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i
  %i.fu = phi i32 [ %.pre2.i.i86, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i ], [ %i.ek, %bb.r ], [ %i.ek, %bb.q ]
  %i.fv = load ptr, ptr %i.bx, align 8, !tbaa !178
  %i.fw = sext i32 %i.fu to i64
  %i.fx = getelementptr inbounds [72 x i8], ptr %i.fv, i64 %i.fw ; 3 uses
  store ptr null, ptr %i.fx, align 8
  %.sroa.6.0..sroa_idx.i79 = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store ptr %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i79, align 8
  %.sroa.7.0..sroa_idx.i80 = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx.i80, i8 0, i64 56, i1 false)
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
  %i.gu = tail call noundef float @sqrtf(float noundef %i.gt) #40
  %i.gv = getelementptr i8, ptr %i.gc, i64 -24
  store float %i.gu, ptr %i.gv, align 8, !tbaa !327
  store i8 1, ptr %i.ce, align 4, !tbaa !280
  %.pre127 = load ptr, ptr %i.eg, align 8, !tbaa !316
  %.pre128 = load ptr, ptr %i.ei, align 8, !tbaa !270
  br label %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit

_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit: ; preds = %bb.o, %.critedge.i.i, %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit
  %i.gw = phi ptr [ %i.ga, %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit ], [ %i.el, %.critedge.i.i ], [ %i.el, %bb.o ] ; 3 uses
  %i.gx = phi i32 [ %i.fz, %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit ], [ %i.ek, %.critedge.i.i ], [ %i.ek, %bb.o ] ; 9 uses
  %i.gy = phi ptr [ %.pre128, %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit ], [ %i.ej, %.critedge.i.i ], [ %i.ej, %bb.o ] ; 2 uses
  %i.gz = phi ptr [ %.pre127, %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit ], [ %i.eh, %.critedge.i.i ], [ %i.eh, %bb.o ] ; 6 uses
  %.not26.i.i67 = icmp sgt i32 %i.gx, 0
  br i1 %.not26.i.i67, label %.lr.ph.i.i69, label %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i68

.lr.ph.i.i69:                                     ; preds = %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit
  %wide.trip.count.i.i70 = zext nneg i32 %i.gx to i64
  br label %bb.y

bb.x:                                             ; preds = %.critedge.i.i73
  %indvars.iv.next.i.i75 = add nuw nsw i64 %indvars.iv.i.i71, 1 ; 2 uses
  %exitcond.not.i.i76 = icmp eq i64 %indvars.iv.next.i.i75, %wide.trip.count.i.i70
  br i1 %exitcond.not.i.i76, label %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i68, label %bb.y, !llvm.loop !8

bb.y:                                             ; preds = %bb.x, %.lr.ph.i.i69
  %indvars.iv.i.i71 = phi i64 [ 0, %.lr.ph.i.i69 ], [ %indvars.iv.next.i.i75, %bb.x ] ; 2 uses
  %i.ha = getelementptr inbounds nuw [72 x i8], ptr %i.gw, i64 %indvars.iv.i.i71 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !316 ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.at
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 40
  %i.hf = load ptr, ptr %i.he, align 8            ; 2 uses
  %i.hg = icmp eq ptr %i.hf, %i.gz
  %or.cond.i.i72 = select i1 %i.hd, i1 %i.hg, i1 false
  br i1 %or.cond.i.i72, label %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit77, label %.critedge.i.i73

.critedge.i.i73:                                  ; preds = %bb.y
  %i.hh = icmp eq ptr %i.hc, %i.gz
  %i.hi = icmp eq ptr %i.hf, %i.at
  %or.cond23.i.i74 = select i1 %i.hh, i1 %i.hi, i1 false
  br i1 %or.cond23.i.i74, label %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit77, label %bb.x

_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i68: ; preds = %bb.x, %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i115)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.i115, i8 0, i64 56, i1 false)
  %.not.i93 = icmp eq ptr %i.gy, null
  br i1 %.not.i93, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i68
  %i.hj = load ptr, ptr %i.by, align 8, !tbaa !230
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !295
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i68
  %.sroa.6.0.i94 = phi ptr [ %i.hk, %bb.z ], [ %i.gy, %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i68 ]
  %i.hl = load i32, ptr %i.bz, align 8, !tbaa !180
  %i.hm = icmp eq i32 %i.gx, %i.hl
  br i1 %i.hm, label %bb.ab, label %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit111

bb.ab:                                            ; preds = %bb.aa
  %.not.i.i.i97 = icmp eq i32 %i.gx, 0
  %i.hn = shl nsw i32 %i.gx, 1
  %i.ho = select i1 %.not.i.i.i97, i32 1, i32 %i.hn ; 4 uses
  %i.hp = icmp slt i32 %i.gx, %i.ho
  br i1 %i.hp, label %bb.ac, label %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit111

bb.ac:                                            ; preds = %bb.ab
  %.not.i.i.i.i98 = icmp eq i32 %i.ho, 0
  br i1 %.not.i.i.i.i98, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i100, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hq = sext i32 %i.ho to i64
  %i.hr = mul nsw i64 %i.hq, 72
  %i.hs = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.hr, i32 noundef 16)
  %.pre.i.i99 = load i32, ptr %i.aw, align 4, !tbaa !179
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i100

_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i100: ; preds = %bb.ad, %bb.ac
  %i.ht = phi i32 [ %.pre.i.i99, %bb.ad ], [ %i.gx, %bb.ac ] ; 4 uses
  %.0.i.i.i.i101 = phi ptr [ %i.hs, %bb.ad ], [ null, %bb.ac ] ; 5 uses
  %i.hu = icmp sgt i32 %i.ht, 0
  br i1 %i.hu, label %.lr.ph.i.i.i.i106, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i102

.lr.ph.i.i.i.i106:                                ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i100
  %wide.trip.count.i.i.i.i107 = zext nneg i32 %i.ht to i64 ; 2 uses
  %xtraiter157 = and i64 %wide.trip.count.i.i.i.i107, 1
  %i.hv = icmp eq i32 %i.ht, 1
  br i1 %i.hv, label %.epil.preheader156, label %.lr.ph.i.i.i.i106.new

.lr.ph.i.i.i.i106.new:                            ; preds = %.lr.ph.i.i.i.i106
  %unroll_iter160 = and i64 %wide.trip.count.i.i.i.i107, 2147483646
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.i.i.i.i106.new
  %indvars.iv.i.i.i.i108 = phi i64 [ 0, %.lr.ph.i.i.i.i106.new ], [ %indvars.iv.next.i.i.i.i109.1, %bb.ae ] ; 4 uses
  %niter161 = phi i64 [ 0, %.lr.ph.i.i.i.i106.new ], [ %niter161.next.1, %bb.ae ]
  %i.hw = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i101, i64 %indvars.iv.i.i.i.i108
  %i.hx = load ptr, ptr %i.bx, align 8, !tbaa !178
  %i.hy = getelementptr inbounds nuw [72 x i8], ptr %i.hx, i64 %indvars.iv.i.i.i.i108
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.hw, ptr noundef nonnull align 8 dereferenceable(72) %i.hy, i64 72, i1 false)
  %indvars.iv.next.i.i.i.i109 = or disjoint i64 %indvars.iv.i.i.i.i108, 1 ; 2 uses
  %i.hz = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i101, i64 %indvars.iv.next.i.i.i.i109
  %i.ia = load ptr, ptr %i.bx, align 8, !tbaa !178
  %i.ib = getelementptr inbounds nuw [72 x i8], ptr %i.ia, i64 %indvars.iv.next.i.i.i.i109
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.hz, ptr noundef nonnull align 8 dereferenceable(72) %i.ib, i64 72, i1 false)
  %indvars.iv.next.i.i.i.i109.1 = add nuw nsw i64 %indvars.iv.i.i.i.i108, 2 ; 2 uses
  %niter161.next.1 = add i64 %niter161, 2         ; 2 uses
  %niter161.ncmp.1 = icmp eq i64 %niter161.next.1, %unroll_iter160
  br i1 %niter161.ncmp.1, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i102.loopexit.unr-lcssa, label %bb.ae, !llvm.loop !9

_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i102.loopexit.unr-lcssa: ; preds = %bb.ae
  %lcmp.mod158.not = icmp eq i64 %xtraiter157, 0
  br i1 %lcmp.mod158.not, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i102, label %.epil.preheader156

.epil.preheader156:                               ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i102.loopexit.unr-lcssa, %.lr.ph.i.i.i.i106
  %indvars.iv.i.i.i.i108.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i106 ], [ %indvars.iv.next.i.i.i.i109.1, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i102.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod159 = trunc i32 %i.ht to i1
  tail call void @llvm.assume(i1 %lcmp.mod159)
  %i.ic = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i101, i64 %indvars.iv.i.i.i.i108.epil.init
  %i.id = load ptr, ptr %i.bx, align 8, !tbaa !178
  %i.ie = getelementptr inbounds nuw [72 x i8], ptr %i.id, i64 %indvars.iv.i.i.i.i108.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ic, ptr noundef nonnull align 8 dereferenceable(72) %i.ie, i64 72, i1 false)
  br label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i102

_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i102: ; preds = %.epil.preheader156, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i102.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i100
  %i.if = load ptr, ptr %i.bx, align 8, !tbaa !178 ; 2 uses
  %.not.i5.i.i.i103 = icmp eq ptr %i.if, null
  br i1 %.not.i5.i.i.i103, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i104, label %bb.af

bb.af:                                            ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i102
  %i.ig = load i8, ptr %i.ca, align 8, !tbaa !177, !range !262, !noundef !263
  %i.ih = trunc nuw i8 %i.ig to i1
  br i1 %i.ih, label %bb.ag, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i104

bb.ag:                                            ; preds = %bb.af
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.if)
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i104

_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i104: ; preds = %bb.ag, %bb.af, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i102
  store i8 1, ptr %i.ca, align 8, !tbaa !177
  store ptr %.0.i.i.i.i101, ptr %i.bx, align 8, !tbaa !178
  store i32 %i.ho, ptr %i.bz, align 8, !tbaa !180
  %.pre2.i.i105 = load i32, ptr %i.aw, align 4, !tbaa !179
  br label %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit111

_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit111: ; preds = %bb.aa, %bb.ab, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i104
  %i.ii = phi ptr [ %.0.i.i.i.i101, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i104 ], [ %i.gw, %bb.ab ], [ %i.gw, %bb.aa ]
  %i.ij = phi i32 [ %.pre2.i.i105, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i104 ], [ %i.gx, %bb.ab ], [ %i.gx, %bb.aa ]
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds [72 x i8], ptr %i.ii, i64 %i.ik ; 3 uses
  store ptr null, ptr %i.il, align 8
  %.sroa.6.0..sroa_idx.i95 = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store ptr %.sroa.6.0.i94, ptr %.sroa.6.0..sroa_idx.i95, align 8
  %.sroa.7.0..sroa_idx.i96 = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx.i96, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.i115, i64 56, i1 false)
  %i.im = load i32, ptr %i.aw, align 4, !tbaa !179
  %i.in = add nsw i32 %i.im, 1                    ; 2 uses
  store i32 %i.in, ptr %i.aw, align 4, !tbaa !179
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i115)
  %i.io = load ptr, ptr %i.bx, align 8, !tbaa !178
  %i.ip = sext i32 %i.in to i64
  %i.iq = getelementptr [72 x i8], ptr %i.io, i64 %i.ip ; 3 uses
  %i.ir = getelementptr i8, ptr %i.iq, i64 -40
  store ptr %i.at, ptr %i.ir, align 8, !tbaa !316
  %i.is = getelementptr i8, ptr %i.iq, i64 -32
  store ptr %i.gz, ptr %i.is, align 8, !tbaa !316
  %i.it = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.iu = load float, ptr %i.cf, align 8, !tbaa !253
  %i.iv = load float, ptr %i.it, align 4, !tbaa !253
  %i.iw = fsub float %i.iu, %i.iv                 ; 2 uses
  %i.ix = load float, ptr %i.cg, align 4, !tbaa !253
  %i.iy = getelementptr inbounds nuw i8, ptr %i.gz, i64 20
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !253
  %i.ja = fsub float %i.ix, %i.iz                 ; 2 uses
  %i.jb = load float, ptr %i.ch, align 8, !tbaa !253
  %i.jc = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !253
  %i.je = fsub float %i.jb, %i.jd                 ; 2 uses
  %i.jf = fmul float %i.ja, %i.ja
  %i.jg = tail call float @llvm.fmuladd.f32(float %i.iw, float %i.iw, float %i.jf)
  %i.jh = tail call noundef float @llvm.fmuladd.f32(float %i.je, float %i.je, float %i.jg)
  %i.ji = tail call noundef float @sqrtf(float noundef %i.jh) #40
  %i.jj = getelementptr i8, ptr %i.iq, i64 -24
  store float %i.ji, ptr %i.jj, align 8, !tbaa !327
  store i8 1, ptr %i.ce, align 4, !tbaa !280
  br label %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit77

_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit77: ; preds = %.critedge.i.i73, %bb.y, %._ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit77_crit_edge, %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit111
  %indvars.iv.next119.pre-phi = phi i64 [ %.pre129, %._ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit77_crit_edge ], [ %i.ee, %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit111 ], [ %i.ee, %bb.y ], [ %i.ee, %.critedge.i.i73 ] ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next119.pre-phi, 3
  br i1 %exitcond121.not, label %bb.e, label %bb.f, !llvm.loop !995

._crit_edge117:                                   ; preds = %bb.e, %._crit_edge
  br i1 %.0.lcssa, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge117
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 1544 ; 2 uses
  %i.jl = getelementptr i8, ptr %i.ar, i64 -392
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !269
  tail call void @_ZN6btDbvt6removeEP10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(64) %i.jk, ptr noundef %i.jm)
  %i.jn = getelementptr i8, ptr %i.ar, i64 -136
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !269
  tail call void @_ZN6btDbvt6removeEP10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(64) %i.jk, ptr noundef %i.jo)
  %i.jp = load i32, ptr %i.ao, align 4, !tbaa !171
  %i.jq = add nsw i32 %i.jp, -2
  store i32 %i.jq, ptr %i.ao, align 4, !tbaa !171
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge117
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
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
  store ptr %0, ptr %3, align 8, !tbaa !435
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store float 1.000000e+00, ptr %i.f, align 8, !tbaa !436
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !996
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 -1, ptr %i.h, align 4, !tbaa !437
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
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull @.str)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 4 uses
  invoke void @_ZN6btDbvt5clearEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  store i8 1, ptr %i.b, align 8, !tbaa !441
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr null, ptr %i.c, align 8, !tbaa !442
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.e, align 8, !tbaa !443
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1028 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !183  ; 6 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %.loopexit123.thread

.loopexit123.thread:                              ; preds = %bb.b
  store i32 %i.g, ptr %i.d, align 4, !tbaa !444
  br label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.i = zext nneg i32 %i.g to i64
  %i.j = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  %i.k = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16)
          to label %.loopexit123 unwind label %.thread ; 4 uses

.loopexit123:                                     ; preds = %bb.c
  store i8 1, ptr %i.b, align 8, !tbaa !441
  store ptr %i.k, ptr %i.c, align 8, !tbaa !442
  store i32 %i.g, ptr %i.e, align 8, !tbaa !443
  call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %i.j, i1 false), !tbaa !445
  %.pre = load i32, ptr %i.f, align 4, !tbaa !183 ; 2 uses
  store i32 %i.g, ptr %i.d, align 4, !tbaa !444
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
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !316, !noalias !1011
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !316, !noalias !1011
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !316, !noalias !1011
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load <4 x float>, ptr %i.t, align 4     ; 4 uses
  %i.ab = load <4 x float>, ptr %i.w, align 4, !tbaa !253, !noalias !1012 ; 4 uses
  %i.ac = load <4 x float>, ptr %i.z, align 4, !tbaa !253, !noalias !1012 ; 4 uses
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
  store ptr %i.ad, ptr %i.aq, align 8, !tbaa !445
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store ptr %i.ad, ptr %i.ar, align 8, !tbaa !319
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.as = load i32, ptr %i.f, align 4, !tbaa !183 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = icmp slt i64 %indvars.iv.next, %i.at
  br i1 %i.au, label %bb.e, label %._crit_edge, !llvm.loop !1001

bb.g:                                             ; preds = %bb.e
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

._crit_edge:                                      ; preds = %bb.f, %.loopexit123.thread, %.loopexit123
  %.lcssa = phi i32 [ %.pre, %.loopexit123 ], [ %i.g, %.loopexit123.thread ], [ %i.as, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i8 1, ptr %i.aw, align 8, !tbaa !449
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr null, ptr %i.ax, align 8, !tbaa !450
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  store i32 0, ptr %i.ay, align 4, !tbaa !451
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.az, align 8, !tbaa !452
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
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
  call void @__clang_call_terminate(ptr %i.bi) #41
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit:            ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  %i.bj = load i32, ptr %i.ay, align 4, !tbaa !451 ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.preheader122.lr.ph, label %._crit_edge133

.preheader122.lr.ph:                              ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1040
  br label %.preheader122

.preheader122:                                    ; preds = %.preheader122.lr.ph, %._crit_edge131
end_hunk_0
