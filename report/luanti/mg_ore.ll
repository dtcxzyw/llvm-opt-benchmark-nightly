inline.NumInlined: 427
inline.NumDeleted: 216
begin_hunk_0_@_ZNK8OreSheet5cloneEv:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  store float 2.500000e+02, ptr %i.o, align 8, !tbaa !101
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 204
  store i32 12345, ptr %i.p, align 4, !tbaa !102
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store i16 3, ptr %i.q, align 8, !tbaa !103
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 212
  store <2 x float> <float 6.000000e-01, float 2.000000e+00>, ptr %i.r, align 4, !tbaa !90
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 220
  store i32 1, ptr %i.s, align 4, !tbaa !104
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !92
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 232 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store ptr %i.v, ptr %i.u, align 8, !tbaa !105
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store i64 1, ptr %i.w, align 8, !tbaa !106
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.y, align 8, !tbaa !107
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV8OreSheet, i64 16), ptr %i.a, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV8OreSheet, i64 72), ptr %i.e, align 8, !tbaa !9
  tail call void @_ZNK6ObjDef7cloneToEPS_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull %i.a)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNK12NodeResolver7cloneToEPS_(ptr noundef nonnull align 8 dereferenceable(73) %i.aa, ptr noundef nonnull %i.e)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !83
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 130
  store i16 %i.ac, ptr %i.ad, align 2, !tbaa !83
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.af = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorItSaItEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.ae) ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !84
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !84
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  %i.al = load <4 x i16>, ptr %i.aj, align 4, !tbaa !85
  store <4 x i16> %i.al, ptr %i.ak, align 4, !tbaa !85
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.an = load i8, ptr %i.am, align 4, !tbaa !86
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  store i8 %i.an, ptr %i.ao, align 4, !tbaa !86
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !87
  store i32 %i.aq, ptr %i.m, align 8, !tbaa !87
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.as = load float, ptr %i.ar, align 4, !tbaa !88
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  store float %i.as, ptr %i.at, align 4, !tbaa !88
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.au, i64 40, i1 false), !tbaa.struct !89
  store ptr null, ptr %i.t, align 8, !tbaa !92
  %i.av = icmp eq ptr %0, %i.a
  br i1 %i.av, label %_ZNK3Ore7cloneToEPS_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @_ZNSt10_HashtableIttSaItENSt8__detail9_IdentityESt8equal_toItESt4hashItENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE18_M_assign_elementsIRKSC_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.u, ptr noundef nonnull align 8 dereferenceable(56) %i.aw)
  br label %_ZNK3Ore7cloneToEPS_.exit

_ZNK3Ore7cloneToEPS_.exit:                        ; preds = %bb.c, %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.az = load <2 x i16>, ptr %i.ax, align 8, !tbaa !85
  store <2 x i16> %i.az, ptr %i.ay, align 8, !tbaa !85
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !133
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 292
  store float %i.bb, ptr %i.bc, align 4, !tbaa !133
  ret ptr %i.a

.body:                                            ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 296) #22
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8OreSheet8generateEP8MMVManipijN4core8vector3dIsEES4_Pt(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i48 %4, i48 %5, ptr nofree noundef readonly captures(address_is_null) %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %class.PcgRandom, align 8           ; 6 uses
  %.sroa.056.0.extract.trunc = trunc i48 %4 to i16 ; 4 uses
  %.sroa.4.0.extract.shift = lshr i48 %4, 16
  %.sroa.4.0.extract.trunc = trunc i48 %.sroa.4.0.extract.shift to i16 ; 2 uses
  %.sroa.7.0.extract.shift = lshr i48 %4, 32
  %.sroa.7.0.extract.trunc = trunc nuw i48 %.sroa.7.0.extract.shift to i16 ; 4 uses
  %.sroa.051.0.extract.trunc = trunc i48 %5 to i16 ; 3 uses
  %.sroa.3.0.extract.shift = lshr i48 %5, 16
  %.sroa.3.0.extract.trunc = trunc i48 %.sroa.3.0.extract.shift to i16
  %.sroa.6.0.extract.shift = lshr i48 %5, 32
  %.sroa.6.0.extract.trunc = trunc nuw i48 %.sroa.6.0.extract.shift to i16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.a = add i32 %3, 4234
  %i.b = zext i32 %i.a to i64
  call void @_ZN9PcgRandomC1Emm(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %i.b, i64 noundef -2720673578348880933)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.d = load i16, ptr %i.c, align 2, !tbaa !83
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.f = load i8, ptr %i.e, align 4, !tbaa !86
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 290 ; 2 uses
  %i.h = load i16, ptr %i.g, align 2, !tbaa !135
  %i.i = sext i16 %.sroa.4.0.extract.trunc to i32 ; 2 uses
  %i.j = zext i16 %i.h to i32                     ; 2 uses
  %i.k = add nsw i32 %i.j, %i.i                   ; 2 uses
  %i.l = sext i16 %.sroa.3.0.extract.trunc to i32 ; 3 uses
  %i.m = sub nsw i32 %i.l, %i.j                   ; 2 uses
  %i.n = icmp slt i32 %i.k, %i.m
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = call noundef i32 @_ZN9PcgRandom5rangeEii(ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef %i.k, i32 noundef %i.m)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.p = add nsw i32 %i.l, %i.i
  %i.q = sdiv i32 %i.p, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = phi i32 [ %i.o, %bb.b ], [ %i.q, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !92   ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.e, label %._crit_edge124

._crit_edge124:                                   ; preds = %bb.d
  %.pre = sext i16 %.sroa.6.0.extract.trunc to i32
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.u = sext i16 %.sroa.051.0.extract.trunc to i32
  %i.v = sext i16 %.sroa.056.0.extract.trunc to i32
  %reass.sub = sub nsw i32 %i.u, %i.v
  %i.w = add nsw i32 %reass.sub, 1
  %i.x = sext i16 %.sroa.6.0.extract.trunc to i32 ; 2 uses
  %i.y = sext i16 %.sroa.7.0.extract.trunc to i32
  %reass.sub115 = sub nsw i32 %i.x, %i.y
  %i.z = add nsw i32 %reass.sub115, 1
  %i.aa = call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #20 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 184
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %i.aa, ptr noundef nonnull %i.ab, i32 noundef 0, i32 noundef %i.w, i32 noundef %i.z, i32 noundef 1)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %i.aa, ptr %i.s, align 8, !tbaa !92
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 88) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  resume { ptr, i32 } %i.ac

bb.h:                                             ; preds = %._crit_edge124, %bb.f
  %.pre-phi = phi i32 [ %.pre, %._crit_edge124 ], [ %i.x, %bb.f ]
  %i.ad = phi ptr [ %i.t, %._crit_edge124 ], [ %i.aa, %bb.f ] ; 2 uses
  %i.ae = add nsw i32 %i.r, %2
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !136
  %i.ag = sitofp nsz i16 %.sroa.056.0.extract.trunc to float
  %i.ah = sitofp nsz i16 %.sroa.7.0.extract.trunc to float
  %i.ai = call noundef ptr @_ZN5Noise10noiseMap2DEffPf(ptr noundef nonnull align 8 dereferenceable(88) %i.ad, float noundef %i.ag, float noundef %i.ah, ptr noundef null) ; 0 uses
  %.not77109 = icmp sgt i16 %.sroa.7.0.extract.trunc, %.sroa.6.0.extract.trunc
  br i1 %.not77109, label %._crit_edge114.split, label %.lr.ph113

.lr.ph113:                                        ; preds = %bb.h
  %i.aj = sext i16 %.sroa.056.0.extract.trunc to i32 ; 2 uses
  %.not78104 = icmp sgt i16 %.sroa.056.0.extract.trunc, %.sroa.051.0.extract.trunc
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 180
  %.not79 = icmp eq ptr %6, null
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ap = sitofp nsz i32 %i.r to float
  %i.aq = sitofp i16 %.sroa.4.0.extract.trunc to float ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.6.0.insert.ext = zext i8 %i.f to i32
  %.sroa.6.0.insert.shift = shl nuw i32 %.sroa.6.0.insert.ext, 24
  %.sroa.087.0.insert.ext = zext i16 %i.d to i32
  %.sroa.087.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.shift, %.sroa.087.0.insert.ext
  br i1 %.not78104, label %._crit_edge114.split, label %.lr.ph108.preheader

.lr.ph108.preheader:                              ; preds = %.lr.ph113
  %i.bb = sext i16 %.sroa.051.0.extract.trunc to i32
  %i.bc = sext i16 %.sroa.7.0.extract.trunc to i32 ; 2 uses
  %i.bd = add nsw i32 %i.bb, 1
  %i.be = sub nsw i32 %i.bd, %i.aj
  %smax122 = call i32 @llvm.smax.i32(i32 %i.bc, i32 %.pre-phi)
  br label %.lr.ph108

._crit_edge114.split:                             ; preds = %._crit_edge, %.lr.ph113, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  ret void

.lr.ph108:                                        ; preds = %.lr.ph108.preheader, %._crit_edge
  %.0111 = phi i64 [ %i.fj, %._crit_edge ], [ 0, %.lr.ph108.preheader ] ; 2 uses
  %.063110.a = phi i32 [ %i.bf, %._crit_edge ], [ %i.bc, %.lr.ph108.preheader ] ; 3 uses
  %8 = trunc i64 %.0111 to i32
  %9 = add i32 %i.be, %8
  br label %bb.i

._crit_edge:                                      ; preds = %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread
  %i.bf = add nsw i32 %.063110.a, 1
  %exitcond123.not = icmp eq i32 %.063110.a, %smax122
  br i1 %exitcond123.not, label %._crit_edge114.split, label %.lr.ph108, !llvm.loop !139

bb.i:                                             ; preds = %.lr.ph108, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread
  %.1107 = phi i64 [ %.0111, %.lr.ph108 ], [ %i.fj, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread ] ; 3 uses
  %.066105 = phi i32 [ %i.aj, %.lr.ph108 ], [ %i.fi, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread ] ; 2 uses
  %i.bg = load ptr, ptr %i.s, align 8, !tbaa !92
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !140
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.1107
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !90 ; 2 uses
  %i.bl = load float, ptr %i.ak, align 4, !tbaa !88
  %i.bm = fcmp nsz olt float %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not79, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = load i64, ptr %i.al, align 8, !tbaa !108
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %.1107
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !85 ; 3 uses
  %i.br = zext i16 %i.bq to i64
  %i.bs = load i64, ptr %i.an, align 8, !tbaa !106 ; 2 uses
  %i.bt = urem i64 %i.br, %i.bs                   ; 2 uses
  %i.bu = load ptr, ptr %i.am, align 8, !tbaa !105
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !109 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !110 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !85
  %i.ca = icmp eq i16 %i.bq, %i.bz
  br i1 %i.ca, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, label %.lr.ph.i.i.i.i

bb.n:                                             ; preds = %bb.o
  %i.cb = icmp eq i16 %i.bq, %i.ce
  br i1 %i.cb, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, label %.lr.ph.i.i.i.i, !llvm.loop !111

.lr.ph.i.i.i.i:                                   ; preds = %bb.m, %bb.n
  %.020.i.i.i.i = phi ptr [ %i.cc, %bb.n ], [ %i.bx, %bb.m ]
  %i.cc = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !110 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !85 ; 2 uses
  %i.cf = zext i16 %i.ce to i64
  %i.cg = urem i64 %i.cf, %i.bs
  %.not19.i.i.i.i = icmp eq i64 %i.cg, %i.bt
  br i1 %.not19.i.i.i.i, label %bb.n, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !111

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.o
  br label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, !llvm.loop !111

_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit: ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %i.ch = load i16, ptr %i.ao, align 8, !tbaa !141
  %i.ci = zext i16 %i.ch to i32
  %i.cj = load i16, ptr %i.g, align 2, !tbaa !135
  %i.ck = zext i16 %i.cj to i32
  %i.cl = call noundef i32 @_ZN9PcgRandom5rangeEii(ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef %i.ci, i32 noundef %i.ck)
  %i.cm = fadd nsz float %i.bk, %i.ap
  %i.cn = fptosi float %i.cm to i32
  %i.co = sitofp nsz i32 %i.cn to float
  %i.cp = and i32 %i.cl, 65535                    ; 2 uses
  %i.cq = uitofp nneg i32 %i.cp to float
  %i.cr = load float, ptr %i.ar, align 4, !tbaa !133
  %i.cs = fsub nsz float 1.000000e+00, %i.cr
  %i.ct = fneg nsz float %i.cq
  %i.cu = call nsz float @llvm.fmuladd.f32(float %i.ct, float %i.cs, float %i.co) ; 2 uses
  %i.cv = fcmp nsz olt float %i.cu, %i.aq
  %. = select nsz i1 %i.cv, float %i.aq, float %i.cu
  %i.cw = fptosi float %. to i32                  ; 3 uses
  %i.cx = add nsw i32 %i.cp, -1
  %i.cy = add i32 %i.cx, %i.cw
  %i.cz = call i32 @llvm.smin.i32(i32 %i.cy, i32 %i.l) ; 2 uses
  %.not80102 = icmp slt i32 %i.cz, %i.cw
  br i1 %.not80102, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, %_ZNK9VoxelArea8containsEi.exit.thread
  %.065103 = phi i32 [ %i.fh, %_ZNK9VoxelArea8containsEi.exit.thread ], [ %i.cw, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit ] ; 3 uses
  %i.da = load i16, ptr %i.at, align 4, !tbaa !115
  %i.db = sext i16 %i.da to i32
  %i.dc = sub nsw i32 %.063110.a, %i.db
  %i.dd = load i32, ptr %i.av, align 4, !tbaa !118 ; 2 uses
  %i.de = mul nsw i32 %i.dc, %i.dd
  %i.df = load i32, ptr %i.au, align 4, !tbaa !119 ; 2 uses
  %sext = shl i32 %.065103, 16
  %i.dg = ashr exact i32 %sext, 16
  %i.dh = load i16, ptr %i.aw, align 2, !tbaa !120
  %i.di = sext i16 %i.dh to i32
  %i.dj = add i32 %i.de, %i.dg
  %i.dk = sub i32 %i.dj, %i.di
  %i.dl = mul i32 %i.dk, %i.df
  %i.dm = load i16, ptr %i.as, align 4, !tbaa !121
  %i.dn = sext i16 %i.dm to i32
  %i.do = sub nsw i32 %.066105, %i.dn
  %i.dp = add nsw i32 %i.do, %i.dl                ; 3 uses
  %i.dq = icmp sgt i32 %i.dp, -1
  br i1 %i.dq, label %_ZNK9VoxelArea8containsEi.exit, label %_ZNK9VoxelArea8containsEi.exit.thread

_ZNK9VoxelArea8containsEi.exit:                   ; preds = %.lr.ph
  %i.dr = mul i32 %i.df, %i.dd
  %i.ds = load i32, ptr %i.ax, align 4, !tbaa !142
  %i.dt = mul i32 %i.dr, %i.ds
  %i.du = icmp ult i32 %i.dp, %i.dt
  br i1 %i.du, label %bb.p, label %_ZNK9VoxelArea8containsEi.exit.thread

bb.p:                                             ; preds = %_ZNK9VoxelArea8containsEi.exit
  %i.dv = load ptr, ptr %i.ay, align 8, !tbaa !122 ; 4 uses
  %i.dw = load ptr, ptr %i.az, align 8, !tbaa !122 ; 3 uses
  %i.dx = load ptr, ptr %i.ba, align 8, !tbaa !123
  %i.dy = zext nneg i32 %i.dp to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.dy ; 2 uses
  %i.ea = load i16, ptr %i.dz, align 4, !tbaa !126 ; 7 uses
  %i.eb = ptrtoint ptr %i.dw to i64               ; 2 uses
  %i.ec = ptrtoint ptr %i.dv to i64
  %i.ed = sub i64 %i.eb, %i.ec                    ; 3 uses
  %i.ee = ashr i64 %i.ed, 3                       ; 2 uses
  %i.ef = icmp sgt i64 %i.ee, 0
  br i1 %i.ef, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p
  %i.eg = and i64 %i.ed, -8
  %scevgep.i.i.i = getelementptr i8, ptr %i.dv, i64 %i.eg ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.ee, %.lr.ph.i.i.i ], [ %i.et, %bb.u ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.dv, %.lr.ph.i.i.i ], [ %i.es, %bb.u ] ; 9 uses
  %i.eh = load i16, ptr %.sroa.032.051.i.i.i, align 2, !tbaa !85
  %i.ei = icmp eq i16 %i.eh, %i.ea
  br i1 %i.ei, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 2
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !85
  %i.el = icmp eq i16 %i.ek, %i.ea
  br i1 %i.el, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.en = load i16, ptr %i.em, align 2, !tbaa !85
  %i.eo = icmp eq i16 %i.en, %i.ea
  br i1 %i.eo, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit140, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 6
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !85
  %i.er = icmp eq i16 %i.eq, %i.ea
  br i1 %i.er, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit142, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.et = add nsw i64 %.052.i.i.i, -1
  %i.eu = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.eu, label %bb.q, label %._crit_edge.loopexit.i.i.i, !llvm.loop !128

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.u
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.eb, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.p
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.ed, %bb.p ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.dv, %bb.p ] ; 5 uses
  %i.ev = ashr exact i64 %.pre-phi61.i.i.i, 1
  switch i64 %i.ev, label %_ZNK9VoxelArea8containsEi.exit.thread [
    i64 3, label %bb.v
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i
  %i.ew = load i16, ptr %.sroa.032.0.lcssa.i.i.i, align 2, !tbaa !85
  %i.ex = icmp eq i16 %i.ew, %i.ea
  br i1 %i.ex, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 2
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.w
  %.sroa.032.1.i.i.i = phi ptr [ %i.ey, %bb.w ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ez = load i16, ptr %.sroa.032.1.i.i.i, align 2, !tbaa !85
  %i.fa = icmp eq i16 %i.ez, %i.ea
  br i1 %i.fa, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, label %bb.x

bb.x:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 2
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.x
  %.sroa.032.2.i.i.i = phi ptr [ %i.fb, %bb.x ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.fc = load i16, ptr %.sroa.032.2.i.i.i, align 2, !tbaa !85
  %i.fd = icmp eq i16 %i.fc, %i.ea
  %spec.select.i.i.i = select i1 %i.fd, ptr %.sroa.032.2.i.i.i, ptr %i.dw
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.r
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 2
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit140: ; preds = %bb.s
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit142: ; preds = %bb.t
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 6
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit: ; preds = %bb.q, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit140, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit142, %bb.v, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge57.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.v ], [ %i.fg, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit142 ], [ %i.ff, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit140 ], [ %i.fe, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.q ]
  %.not90 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.dw
  br i1 %.not90, label %_ZNK9VoxelArea8containsEi.exit.thread, label %bb.y

bb.y:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit
  store i32 %.sroa.087.0.insert.insert, ptr %i.dz, align 4
  br label %_ZNK9VoxelArea8containsEi.exit.thread

_ZNK9VoxelArea8containsEi.exit.thread:            ; preds = %._crit_edge.i.i.i, %.lr.ph, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, %_ZNK9VoxelArea8containsEi.exit, %bb.y
  %i.fh = add i32 %.065103, 1
  %exitcond.not = icmp eq i32 %.065103, %i.cz
  br i1 %exitcond.not, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, label %.lr.ph, !llvm.loop !143

_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread: ; preds = %.lr.ph.i.i.i.i, %_ZNK9VoxelArea8containsEi.exit.thread, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, %bb.l, %..loopexit_crit_edge21.i.i.i.i, %bb.i
  %i.fi = add nsw i32 %.066105, 1
  %i.fj = add i64 %.1107, 1                       ; 3 uses
  %lftr.wideiv = trunc i64 %i.fj to i32
  %exitcond121.not = icmp eq i32 %9, %lftr.wideiv
  br i1 %exitcond121.not, label %._crit_edge, label %bb.i, !llvm.loop !144
}

declare void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #1

declare noundef ptr @_ZN5Noise10noiseMap2DEffPf(ptr noundef nonnull align 8 dereferenceable(88), float noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7OrePuffD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) initializes((0, 8), (56, 64)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV7OrePuff, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV7OrePuff, i64 72), ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !145  ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.c) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 88) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !147  ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.f) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 88) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN3OreD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %0) #19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZThn56_N7OrePuffD1Ev(ptr noundef initializes((-56, -48), (0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -56 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV7OrePuff, i64 16), ptr %i.a, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV7OrePuff, i64 72), ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !145  ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.c) #19, !inline_history !148
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 88) #22, !inline_history !148
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !147  ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZN7OrePuffD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.f) #19, !inline_history !148
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 88) #22, !inline_history !148
  br label %_ZN7OrePuffD2Ev.exit

_ZN7OrePuffD2Ev.exit:                             ; preds = %bb.c, %bb.d
  tail call void @_ZN3OreD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(384) %i.a) #19, !inline_history !148
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7OrePuffD0Ev(ptr noundef nonnull align 8 dereferenceable(384) initializes((0, 8), (56, 64)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV7OrePuff, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV7OrePuff, i64 72), ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !145  ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.c) #19, !inline_history !148
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 88) #22, !inline_history !148
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !147  ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZN7OrePuffD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.f) #19, !inline_history !148
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 88) #22, !inline_history !148
  br label %_ZN7OrePuffD2Ev.exit

_ZN7OrePuffD2Ev.exit:                             ; preds = %bb.c, %bb.d
  tail call void @_ZN3OreD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(384) %0) #19, !inline_history !148
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 384) #22
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZThn56_N7OrePuffD0Ev(ptr noundef initializes((-56, -48), (0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -56 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV7OrePuff, i64 16), ptr %i.a, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV7OrePuff, i64 72), ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !145  ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.c) #19, !inline_history !149
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 88) #22, !inline_history !149
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !147  ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZN7OrePuffD0Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.f) #19, !inline_history !149
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 88) #22, !inline_history !149
  br label %_ZN7OrePuffD0Ev.exit

_ZN7OrePuffD0Ev.exit:                             ; preds = %bb.c, %bb.d
  tail call void @_ZN3OreD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(384) %i.a) #19, !inline_history !149
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(384) %i.a, i64 noundef 384) #22, !inline_history !150
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZNK7OrePuff5cloneEv(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #20 ; 19 uses
  invoke void @_ZN7OrePuffC2Ev(ptr noundef nonnull align 8 dereferenceable(384) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK6ObjDef7cloneToEPS_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @_ZNK12NodeResolver7cloneToEPS_(ptr noundef nonnull align 8 dereferenceable(73) %i.b, ptr noundef nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.e = load i16, ptr %i.d, align 2, !tbaa !83
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 130
  store i16 %i.e, ptr %i.f, align 2, !tbaa !83
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.i = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorItSaItEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.k = load i32, ptr %i.j, align 8, !tbaa !84
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i32 %i.k, ptr %i.l, align 8, !tbaa !84
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  %i.o = load <4 x i16>, ptr %i.m, align 4, !tbaa !85
  store <4 x i16> %i.o, ptr %i.n, align 4, !tbaa !85
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.q = load i8, ptr %i.p, align 4, !tbaa !86
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  store i8 %i.q, ptr %i.r, align 4, !tbaa !86
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.t = load i32, ptr %i.s, align 8, !tbaa !87
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store i32 %i.t, ptr %i.u, align 8, !tbaa !87
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.w = load float, ptr %i.v, align 4, !tbaa !88
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  store float %i.w, ptr %i.x, align 4, !tbaa !88
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %i.y, i64 40, i1 false), !tbaa.struct !89
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store ptr null, ptr %i.aa, align 8, !tbaa !92
  %i.ab = icmp eq ptr %0, %i.a
  br i1 %i.ab, label %_ZNK3Ore7cloneToEPS_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @_ZNSt10_HashtableIttSaItENSt8__detail9_IdentityESt8equal_toItESt4hashItENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE18_M_assign_elementsIRKSC_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, ptr noundef nonnull align 8 dereferenceable(56) %i.ad)
  br label %_ZNK3Ore7cloneToEPS_.exit

_ZNK3Ore7cloneToEPS_.exit:                        ; preds = %bb.b, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull align 8 dereferenceable(40) %i.ae, i64 40, i1 false), !tbaa.struct !89
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef nonnull align 8 dereferenceable(40) %i.ag, i64 40, i1 false), !tbaa.struct !89
end_hunk_0
begin_hunk_1_@_ZN7OrePuffC2Ev:bb.a
_ZN6ObjDefD2Ev.exit.i:                            ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 129
  store i8 1, ptr %i.j, align 1, !tbaa !100
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 0, ptr %i.l, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 2.500000e+02, float 2.500000e+02>, ptr %i.m, align 8, !tbaa !90
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200
  store float 2.500000e+02, ptr %i.n, align 8, !tbaa !101
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i32 12345, ptr %i.o, align 4, !tbaa !102
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i16 3, ptr %i.p, align 8, !tbaa !103
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 212
  store <2 x float> <float 6.000000e-01, float 2.000000e+00>, ptr %i.q, align 4, !tbaa !90
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 220
  store i32 1, ptr %i.r, align 4, !tbaa !104
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr null, ptr %i.s, align 8, !tbaa !92
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %i.u, ptr %i.t, align 8, !tbaa !105
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 1, ptr %i.v, align 8, !tbaa !106
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.x, align 8, !tbaa !107
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV7OrePuff, i64 16), ptr %0, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV7OrePuff, i64 72), ptr %i.d, align 8, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 288
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 2.500000e+02, float 2.500000e+02>, ptr %i.z, align 8, !tbaa !90
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 304
  store float 2.500000e+02, ptr %i.aa, align 8, !tbaa !101
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 308
  store i32 12345, ptr %i.ab, align 4, !tbaa !102
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i16 3, ptr %i.ac, align 8, !tbaa !103
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 316
  store <2 x float> <float 6.000000e-01, float 2.000000e+00>, ptr %i.ad, align 4, !tbaa !90
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 324
  store i32 1, ptr %i.ae, align 4, !tbaa !104
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 328
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 2.500000e+02, float 2.500000e+02>, ptr %i.af, align 8, !tbaa !90
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 344
  store float 2.500000e+02, ptr %i.ag, align 8, !tbaa !101
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 348
  store i32 12345, ptr %i.ah, align 4, !tbaa !102
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i16 3, ptr %i.ai, align 8, !tbaa !103
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 356
  store <2 x float> <float 6.000000e-01, float 2.000000e+00>, ptr %i.aj, align 4, !tbaa !90
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 364
  store i32 1, ptr %i.ak, align 4, !tbaa !104
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 368
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7OrePuff8generateEP8MMVManipijN4core8vector3dIsEES4_Pt(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i48 %4, i48 %5, ptr nofree noundef readonly captures(address_is_null) %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %class.PcgRandom, align 8           ; 5 uses
  %.sroa.052.0.extract.trunc = trunc i48 %4 to i16 ; 4 uses
  %.sroa.6.0.extract.shift = lshr i48 %4, 16
  %.sroa.6.0.extract.trunc = trunc i48 %.sroa.6.0.extract.shift to i16
  %.sroa.7.0.extract.shift = lshr i48 %4, 32
  %.sroa.7.0.extract.trunc = trunc nuw i48 %.sroa.7.0.extract.shift to i16 ; 4 uses
  %.sroa.049.0.extract.trunc = trunc i48 %5 to i16 ; 3 uses
  %.sroa.3.0.extract.shift = lshr i48 %5, 16
  %.sroa.3.0.extract.trunc = trunc i48 %.sroa.3.0.extract.shift to i16
  %.sroa.4.0.extract.shift = lshr i48 %5, 32
  %.sroa.4.0.extract.trunc = trunc nuw i48 %.sroa.4.0.extract.shift to i16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.a = add i32 %3, 4234
  %i.b = zext i32 %i.a to i64
  call void @_ZN9PcgRandomC1Emm(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %i.b, i64 noundef -2720673578348880933)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.d = load i16, ptr %i.c, align 2, !tbaa !83
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.f = load i8, ptr %i.e, align 4, !tbaa !86
  %i.g = sext i16 %.sroa.6.0.extract.trunc to i32
  %i.h = sext i16 %.sroa.3.0.extract.trunc to i32
  %i.i = call noundef i32 @_ZN9PcgRandom5rangeEii(ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef %i.g, i32 noundef %i.h) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !92   ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.b, label %._crit_edge136

._crit_edge136:                                   ; preds = %bb.a
  %.pre137 = sext i16 %.sroa.4.0.extract.trunc to i32
  br label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.l = sext i16 %.sroa.049.0.extract.trunc to i32
  %i.m = sext i16 %.sroa.052.0.extract.trunc to i32
  %i.n = sub nsw i32 %i.l, %i.m
  %i.o = add nsw i32 %i.n, 1                      ; 3 uses
  %i.p = sext i16 %.sroa.4.0.extract.trunc to i32 ; 2 uses
  %i.q = sext i16 %.sroa.7.0.extract.trunc to i32
  %i.r = sub nsw i32 %i.p, %i.q
  %i.s = add nsw i32 %i.r, 1                      ; 3 uses
  %i.t = call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #20 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 184
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %i.t, ptr noundef nonnull %i.u, i32 noundef 0, i32 noundef %i.o, i32 noundef %i.s, i32 noundef 1)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  store ptr %i.t, ptr %i.j, align 8, !tbaa !92
  %i.v = call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #20 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 288
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %i.v, ptr noundef nonnull %i.w, i32 noundef 0, i32 noundef %i.o, i32 noundef %i.s, i32 noundef 1)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.v, ptr %i.x, align 8, !tbaa !145
  %i.y = call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #20 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 328
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %i.y, ptr noundef nonnull %i.z, i32 noundef 0, i32 noundef %i.o, i32 noundef %i.s, i32 noundef 1)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 376
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !147
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !92
  br label %bb.j

bb.f:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.sink = phi ptr [ %i.y, %bb.h ], [ %i.v, %bb.g ], [ %i.t, %bb.f ]
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.h ], [ %i.ac, %bb.g ], [ %i.ab, %bb.f ]
  call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 88) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %._crit_edge136, %bb.e
  %.pre-phi = phi i32 [ %.pre137, %._crit_edge136 ], [ %i.p, %bb.e ]
  %i.ae = phi ptr [ %i.k, %._crit_edge136 ], [ %.pre, %bb.e ] ; 2 uses
  %i.af = add nsw i32 %i.i, %2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !136
  %i.ah = sitofp nsz i16 %.sroa.052.0.extract.trunc to float ; 3 uses
  %i.ai = sitofp nsz i16 %.sroa.7.0.extract.trunc to float ; 3 uses
  %i.aj = call noundef ptr @_ZN5Noise10noiseMap2DEffPf(ptr noundef nonnull align 8 dereferenceable(88) %i.ae, float noundef %i.ah, float noundef %i.ai, ptr noundef null) ; 0 uses
  %.not77119 = icmp sgt i16 %.sroa.7.0.extract.trunc, %.sroa.4.0.extract.trunc
  br i1 %.not77119, label %._crit_edge125.split, label %.lr.ph124

.lr.ph124:                                        ; preds = %bb.j
  %i.ak = sext i16 %.sroa.052.0.extract.trunc to i32 ; 2 uses
  %.not78112 = icmp sgt i16 %.sroa.052.0.extract.trunc, %.sroa.049.0.extract.trunc
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %.not79 = icmp eq ptr %6, null
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.as = sitofp nsz i32 %i.i to float            ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.6.0.insert.ext = zext i8 %i.f to i32
  %.sroa.6.0.insert.shift = shl nuw i32 %.sroa.6.0.insert.ext, 24
  %.sroa.095.0.insert.ext = zext i16 %i.d to i32
  %.sroa.095.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.shift, %.sroa.095.0.insert.ext
  br i1 %.not78112, label %._crit_edge125.split, label %.lr.ph117.preheader

.lr.ph117.preheader:                              ; preds = %.lr.ph124
  %i.bc = sext i16 %.sroa.049.0.extract.trunc to i32
  %i.bd = sext i16 %.sroa.7.0.extract.trunc to i32 ; 2 uses
  %i.be = add nsw i32 %i.bc, 1
  %i.bf = sub nsw i32 %i.be, %i.ak
  %smax132 = call i32 @llvm.smax.i32(i32 %i.bd, i32 %.pre-phi)
  br label %.lr.ph117

._crit_edge125.split:                             ; preds = %._crit_edge, %.lr.ph124, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  ret void

.lr.ph117:                                        ; preds = %.lr.ph117.preheader, %._crit_edge
  %.062122 = phi i1 [ %.3, %._crit_edge ], [ false, %.lr.ph117.preheader ]
  %.064121 = phi i64 [ %i.fr, %._crit_edge ], [ 0, %.lr.ph117.preheader ] ; 2 uses
  %.066120 = phi i32 [ %i.bg, %._crit_edge ], [ %i.bd, %.lr.ph117.preheader ] ; 3 uses
  %8 = trunc i64 %.064121 to i32
  %9 = add i32 %i.bf, %8
  br label %bb.k

._crit_edge:                                      ; preds = %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread
  %i.bg = add nsw i32 %.066120, 1
  %exitcond133.not = icmp eq i32 %.066120, %smax132
  br i1 %exitcond133.not, label %._crit_edge125.split, label %.lr.ph117, !llvm.loop !152

bb.k:                                             ; preds = %.lr.ph117, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread
  %.1116 = phi i1 [ %.062122, %.lr.ph117 ], [ %.3, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread ] ; 5 uses
  %.165115 = phi i64 [ %.064121, %.lr.ph117 ], [ %i.fr, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread ] ; 5 uses
  %.072113 = phi i32 [ %i.ak, %.lr.ph117 ], [ %i.fq, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread ] ; 2 uses
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !92
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !140
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.165115
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !90 ; 2 uses
  %i.bm = load float, ptr %i.al, align 4, !tbaa !88
  %i.bn = fcmp nsz olt float %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not79, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = load i64, ptr %i.am, align 8, !tbaa !108
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %.165115
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !85 ; 3 uses
  %i.bs = zext i16 %i.br to i64
  %i.bt = load i64, ptr %i.ao, align 8, !tbaa !106 ; 2 uses
  %i.bu = urem i64 %i.bs, %i.bt                   ; 2 uses
  %i.bv = load ptr, ptr %i.an, align 8, !tbaa !105
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bu
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !109 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !110 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !85
  %i.cb = icmp eq i16 %i.br, %i.ca
  br i1 %i.cb, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, label %.lr.ph.i.i.i.i

bb.p:                                             ; preds = %bb.q
  %i.cc = icmp eq i16 %i.br, %i.cf
  br i1 %i.cc, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, label %.lr.ph.i.i.i.i, !llvm.loop !111

.lr.ph.i.i.i.i:                                   ; preds = %bb.o, %bb.p
  %.020.i.i.i.i = phi ptr [ %i.cd, %bb.p ], [ %i.by, %bb.o ]
  %i.cd = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !110 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !85 ; 2 uses
  %i.cg = zext i16 %i.cf to i64
  %i.ch = urem i64 %i.cg, %i.bt
  %.not19.i.i.i.i = icmp eq i64 %i.ch, %i.bu
  br i1 %.not19.i.i.i.i, label %bb.p, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !111

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.q
  br label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, !llvm.loop !111

_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit: ; preds = %bb.p, %bb.o, %bb.m, %bb.l
  %.pre135 = load ptr, ptr %i.ap, align 8, !tbaa !145 ; 2 uses
  br i1 %.1116, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit
  %i.ci = call noundef ptr @_ZN5Noise10noiseMap2DEffPf(ptr noundef nonnull align 8 dereferenceable(88) %.pre135, float noundef %i.ah, float noundef %i.ai, ptr noundef null) ; 0 uses
  %i.cj = load ptr, ptr %i.aq, align 8, !tbaa !147
  %i.ck = call noundef ptr @_ZN5Noise10noiseMap2DEffPf(ptr noundef nonnull align 8 dereferenceable(88) %i.cj, float noundef %i.ah, float noundef %i.ai, ptr noundef null) ; 0 uses
  %.pre134 = load ptr, ptr %i.ap, align 8, !tbaa !145
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit
  %i.cl = phi ptr [ %.pre134, %bb.r ], [ %.pre135, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 80
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !140
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.165115
  %i.cp = load float, ptr %i.co, align 4, !tbaa !90 ; 3 uses
  %i.cq = load ptr, ptr %i.aq, align 8, !tbaa !147
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 80
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !140
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.165115
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !90 ; 3 uses
  %i.cv = load i32, ptr %i.ar, align 8, !tbaa !87 ; 2 uses
  %i.cw = and i32 %i.cv, 2
  %.not80 = icmp eq i32 %i.cw, 0
  br i1 %.not80, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cx = load float, ptr %i.al, align 4, !tbaa !88
  %i.cy = fsub nsz float %i.bl, %i.cx             ; 3 uses
  %i.cz = fcmp nsz olt float %i.cy, 1.000000e+00  ; 2 uses
  %i.da = fmul nsz float %i.cp, %i.cy
  %i.db = fmul nsz float %i.cu, %i.cy
  %.069 = select nsz i1 %i.cz, float %i.da, float %i.cp
  %.067 = select nsz i1 %i.cz, float %i.db, float %i.cu
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.170 = phi nsz float [ %i.cp, %bb.s ], [ %.069, %bb.t ]
  %.168 = phi nsz float [ %i.cu, %bb.s ], [ %.067, %bb.t ]
  %i.dc = fsub nsz float %i.as, %.168
  %i.dd = fptosi float %i.dc to i32               ; 3 uses
  %i.de = fadd nsz float %.170, %i.as
  %i.df = fptosi float %i.de to i32               ; 3 uses
  %i.dg = and i32 %i.cv, 4
  %.not81 = icmp ne i32 %i.dg, 0
  %i.dh = icmp sgt i32 %i.dd, %i.df
  %or.cond = select i1 %.not81, i1 %i.dh, i1 false ; 2 uses
  %spec.select = select i1 %or.cond, i32 %i.dd, i32 %i.df ; 2 uses
  %spec.select99 = select i1 %or.cond, i32 %i.df, i32 %i.dd ; 2 uses
  %.not82110 = icmp sgt i32 %spec.select99, %spec.select
  br i1 %.not82110, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u, %_ZNK9VoxelArea8containsEi.exit.thread
  %.063111 = phi i32 [ %i.fp, %_ZNK9VoxelArea8containsEi.exit.thread ], [ %spec.select99, %bb.u ] ; 3 uses
  %i.di = load i16, ptr %i.au, align 4, !tbaa !115
  %i.dj = sext i16 %i.di to i32
  %i.dk = sub nsw i32 %.066120, %i.dj
  %i.dl = load i32, ptr %i.aw, align 4, !tbaa !118 ; 2 uses
  %i.dm = mul nsw i32 %i.dk, %i.dl
  %i.dn = load i32, ptr %i.av, align 4, !tbaa !119 ; 2 uses
  %sext = shl i32 %.063111, 16
  %i.do = ashr exact i32 %sext, 16
  %i.dp = load i16, ptr %i.ax, align 2, !tbaa !120
  %i.dq = sext i16 %i.dp to i32
  %i.dr = add i32 %i.dm, %i.do
  %i.ds = sub i32 %i.dr, %i.dq
  %i.dt = mul i32 %i.ds, %i.dn
  %i.du = load i16, ptr %i.at, align 4, !tbaa !121
  %i.dv = sext i16 %i.du to i32
  %i.dw = sub nsw i32 %.072113, %i.dv
  %i.dx = add nsw i32 %i.dw, %i.dt                ; 3 uses
  %i.dy = icmp sgt i32 %i.dx, -1
  br i1 %i.dy, label %_ZNK9VoxelArea8containsEi.exit, label %_ZNK9VoxelArea8containsEi.exit.thread

_ZNK9VoxelArea8containsEi.exit:                   ; preds = %.lr.ph
  %i.dz = mul i32 %i.dn, %i.dl
  %i.ea = load i32, ptr %i.ay, align 4, !tbaa !142
  %i.eb = mul i32 %i.dz, %i.ea
  %i.ec = icmp ult i32 %i.dx, %i.eb
  br i1 %i.ec, label %bb.v, label %_ZNK9VoxelArea8containsEi.exit.thread

bb.v:                                             ; preds = %_ZNK9VoxelArea8containsEi.exit
  %i.ed = load ptr, ptr %i.az, align 8, !tbaa !122 ; 4 uses
  %i.ee = load ptr, ptr %i.ba, align 8, !tbaa !122 ; 3 uses
  %i.ef = load ptr, ptr %i.bb, align 8, !tbaa !123
  %i.eg = zext nneg i32 %i.dx to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.eg ; 2 uses
  %i.ei = load i16, ptr %i.eh, align 4, !tbaa !126 ; 7 uses
  %i.ej = ptrtoint ptr %i.ee to i64               ; 2 uses
  %i.ek = ptrtoint ptr %i.ed to i64
  %i.el = sub i64 %i.ej, %i.ek                    ; 3 uses
  %i.em = ashr i64 %i.el, 3                       ; 2 uses
  %i.en = icmp sgt i64 %i.em, 0
  br i1 %i.en, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.v
  %i.eo = and i64 %i.el, -8
  %scevgep.i.i.i = getelementptr i8, ptr %i.ed, i64 %i.eo ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.aa, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.em, %.lr.ph.i.i.i ], [ %i.fb, %bb.aa ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.ed, %.lr.ph.i.i.i ], [ %i.fa, %bb.aa ] ; 9 uses
  %i.ep = load i16, ptr %.sroa.032.051.i.i.i, align 2, !tbaa !85
  %i.eq = icmp eq i16 %i.ep, %i.ei
  br i1 %i.eq, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 2
  %i.es = load i16, ptr %i.er, align 2, !tbaa !85
  %i.et = icmp eq i16 %i.es, %i.ei
  br i1 %i.et, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !85
  %i.ew = icmp eq i16 %i.ev, %i.ei
  br i1 %i.ew, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit149, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 6
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !85
  %i.ez = icmp eq i16 %i.ey, %i.ei
  br i1 %i.ez, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit151, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.fb = add nsw i64 %.052.i.i.i, -1
  %i.fc = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.fc, label %bb.w, label %._crit_edge.loopexit.i.i.i, !llvm.loop !128

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.aa
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.ej, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.v
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.el, %bb.v ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.ed, %bb.v ] ; 5 uses
  %i.fd = ashr exact i64 %.pre-phi61.i.i.i, 1
  switch i64 %i.fd, label %_ZNK9VoxelArea8containsEi.exit.thread [
    i64 3, label %bb.ab
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i.i
  %i.fe = load i16, ptr %.sroa.032.0.lcssa.i.i.i, align 2, !tbaa !85
  %i.ff = icmp eq i16 %i.fe, %i.ei
  br i1 %i.ff, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 2
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.ac
  %.sroa.032.1.i.i.i = phi ptr [ %i.fg, %bb.ac ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.fh = load i16, ptr %.sroa.032.1.i.i.i, align 2, !tbaa !85
  %i.fi = icmp eq i16 %i.fh, %i.ei
  br i1 %i.fi, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge._crit_edge.i.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 2
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.ad
  %.sroa.032.2.i.i.i = phi ptr [ %i.fj, %bb.ad ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.fk = load i16, ptr %.sroa.032.2.i.i.i, align 2, !tbaa !85
  %i.fl = icmp eq i16 %i.fk, %i.ei
  %spec.select.i.i.i = select i1 %i.fl, ptr %.sroa.032.2.i.i.i, ptr %i.ee
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.x
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 2
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit149: ; preds = %bb.y
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit151: ; preds = %bb.z
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 6
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit: ; preds = %bb.w, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit149, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit151, %bb.ab, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge57.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.ab ], [ %i.fo, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit151 ], [ %i.fn, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit149 ], [ %i.fm, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.w ]
  %.not100 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.ee
  br i1 %.not100, label %_ZNK9VoxelArea8containsEi.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit
  store i32 %.sroa.095.0.insert.insert, ptr %i.eh, align 4
  br label %_ZNK9VoxelArea8containsEi.exit.thread

_ZNK9VoxelArea8containsEi.exit.thread:            ; preds = %._crit_edge.i.i.i, %.lr.ph, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, %_ZNK9VoxelArea8containsEi.exit, %bb.ae
  %i.fp = add i32 %.063111, 1
  %exitcond.not = icmp eq i32 %.063111, %spec.select
  br i1 %exitcond.not, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, label %.lr.ph, !llvm.loop !153

_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread: ; preds = %.lr.ph.i.i.i.i, %_ZNK9VoxelArea8containsEi.exit.thread, %bb.u, %bb.n, %..loopexit_crit_edge21.i.i.i.i, %bb.k
  %.3 = phi i1 [ true, %bb.u ], [ %.1116, %bb.k ], [ %.1116, %..loopexit_crit_edge21.i.i.i.i ], [ %.1116, %bb.n ], [ true, %_ZNK9VoxelArea8containsEi.exit.thread ], [ %.1116, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.fq = add nsw i32 %.072113, 1
  %i.fr = add i64 %.165115, 1                     ; 3 uses
  %lftr.wideiv = trunc i64 %i.fr to i32
  %exitcond131.not = icmp eq i32 %9, %lftr.wideiv
  br i1 %exitcond131.not, label %._crit_edge, label %bb.k, !llvm.loop !154
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZNK7OreBlob5cloneEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(288) ptr @_Znwm(i64 noundef 288) #20 ; 32 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV6ObjDef, i64 16), ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 4 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %i.d, align 8, !tbaa !80
  store i8 0, ptr %i.c, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  invoke void @_ZN12NodeResolverC2Ev(ptr noundef nonnull align 8 dereferenceable(73) %i.e)
          to label %bb.c unwind label %bb.b, !inline_history !155

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV6ObjDef, i64 16), ptr %i.a, align 8, !tbaa !9
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !82   ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.c
  br i1 %i.h, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.c, align 8, !tbaa !81
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #22, !inline_history !156
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 129
  store i8 1, ptr %i.k, align 1, !tbaa !100
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  store i32 0, ptr %i.m, align 8, !tbaa !87
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 2 uses
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 2.500000e+02, float 2.500000e+02>, ptr %i.n, align 8, !tbaa !90
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  store float 2.500000e+02, ptr %i.o, align 8, !tbaa !101
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 204
  store i32 12345, ptr %i.p, align 4, !tbaa !102
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store i16 3, ptr %i.q, align 8, !tbaa !103
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 212
  store <2 x float> <float 6.000000e-01, float 2.000000e+00>, ptr %i.r, align 4, !tbaa !90
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 220
  store i32 1, ptr %i.s, align 4, !tbaa !104
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !92
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 232 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store ptr %i.v, ptr %i.u, align 8, !tbaa !105
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store i64 1, ptr %i.w, align 8, !tbaa !106
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.y, align 8, !tbaa !107
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV7OreBlob, i64 16), ptr %i.a, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV7OreBlob, i64 72), ptr %i.e, align 8, !tbaa !9
  tail call void @_ZNK6ObjDef7cloneToEPS_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull %i.a)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNK12NodeResolver7cloneToEPS_(ptr noundef nonnull align 8 dereferenceable(73) %i.aa, ptr noundef nonnull %i.e)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !83
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 130
  store i16 %i.ac, ptr %i.ad, align 2, !tbaa !83
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.af = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorItSaItEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.ae) ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !84
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !84
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  %i.al = load <4 x i16>, ptr %i.aj, align 4, !tbaa !85
  store <4 x i16> %i.al, ptr %i.ak, align 4, !tbaa !85
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.an = load i8, ptr %i.am, align 4, !tbaa !86
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  store i8 %i.an, ptr %i.ao, align 4, !tbaa !86
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !87
  store i32 %i.aq, ptr %i.m, align 8, !tbaa !87
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.as = load float, ptr %i.ar, align 4, !tbaa !88
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  store float %i.as, ptr %i.at, align 4, !tbaa !88
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.au, i64 40, i1 false), !tbaa.struct !89
  store ptr null, ptr %i.t, align 8, !tbaa !92
  %i.av = icmp eq ptr %0, %i.a
  br i1 %i.av, label %_ZNK3Ore7cloneToEPS_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @_ZNSt10_HashtableIttSaItENSt8__detail9_IdentityESt8equal_toItESt4hashItENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE18_M_assign_elementsIRKSC_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.u, ptr noundef nonnull align 8 dereferenceable(56) %i.aw)
  br label %_ZNK3Ore7cloneToEPS_.exit

_ZNK3Ore7cloneToEPS_.exit:                        ; preds = %bb.c, %bb.d
  ret ptr %i.a

.body:                                            ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 288) #22
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7OreBlob8generateEP8MMVManipijN4core8vector3dIsEES4_Pt(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i48 %4, i48 %5, ptr nofree noundef readonly captures(address_is_null) %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %class.PcgRandom, align 8           ; 7 uses
  %.sroa.070.0.extract.trunc = trunc i48 %4 to i16
  %.sroa.5.0.extract.shift = lshr i48 %4, 16
  %.sroa.5.0.extract.trunc = trunc i48 %.sroa.5.0.extract.shift to i16
  %.sroa.065.0.extract.trunc = trunc i48 %5 to i16
  %.sroa.4.0.extract.shift = lshr i48 %5, 16
  %.sroa.4.0.extract.trunc = trunc i48 %.sroa.4.0.extract.shift to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.a = add i32 %3, 2404
  %i.b = zext i32 %i.a to i64
  call void @_ZN9PcgRandomC1Emm(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %i.b, i64 noundef -2720673578348880933)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.d = load i16, ptr %i.c, align 2, !tbaa !83
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.f = load i8, ptr %i.e, align 4, !tbaa !86
  %i.g = sext i16 %.sroa.065.0.extract.trunc to i32 ; 2 uses
  %i.h = sext i16 %.sroa.070.0.extract.trunc to i32 ; 3 uses
  %i.i = sub nsw i32 %i.g, %i.h
  %i.j = add nsw i32 %i.i, 1                      ; 2 uses
  %i.k = sext i16 %.sroa.4.0.extract.trunc to i32 ; 2 uses
  %i.l = sext i16 %.sroa.5.0.extract.trunc to i32 ; 2 uses
  %reass.sub = sub nsw i32 %i.k, %i.l
  %i.m = add nsw i32 %reass.sub, 1
  %i.n = ashr i48 %5, 32
  %i.o = trunc nsw i48 %i.n to i32                ; 2 uses
  %i.p = ashr i48 %4, 32
  %i.q = trunc nsw i48 %i.p to i32                ; 3 uses
  %reass.sub140 = sub nsw i32 %i.o, %i.q
  %i.r = add nsw i32 %reass.sub140, 1
  %i.s = mul i32 %i.m, %i.r
  %i.t = mul i32 %i.s, %i.j                       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 166
  %i.v = load i16, ptr %i.u, align 2, !tbaa !56   ; 3 uses
  %i.w = sext i16 %i.v to i32                     ; 11 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.y = load i32, ptr %i.x, align 8, !tbaa !84   ; 2 uses
  %i.z = udiv i32 %i.t, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 5 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !92
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.ac = call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #20 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 184
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %i.ac, ptr noundef nonnull %i.ad, i32 noundef %2, i32 noundef %i.w, i32 noundef %i.w, i32 noundef %i.w)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !92
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef 88) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  resume { ptr, i32 } %i.ae

bb.e:                                             ; preds = %bb.c, %bb.a
  %.not87136 = icmp ugt i32 %i.y, %i.t
  br i1 %.not87136, label %._crit_edge139, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.af = add nsw i32 %i.g, 1
  %i.ag = sub nsw i32 %i.af, %i.w
  %i.ah = add nsw i32 %i.k, 1
  %i.ai = sub nsw i32 %i.ah, %i.w
  %i.aj = add nsw i32 %i.o, 1
  %i.ak = sub nsw i32 %i.aj, %i.w
  %.not88 = icmp eq ptr %6, null
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.not89132 = icmp eq i16 %i.v, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aw = sdiv i16 %i.v, 2
  %.sext = sext i16 %i.aw to i32                  ; 3 uses
  %i.ax = uitofp nsz i32 %i.w to float
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 180
  %.sroa.6.0.insert.ext = zext i8 %i.f to i32
  %.sroa.6.0.insert.shift = shl nuw i32 %.sroa.6.0.insert.ext, 24
  %.sroa.098.0.insert.ext = zext i16 %i.d to i32
  %.sroa.098.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.shift, %.sroa.098.0.insert.ext
  %8 = add nsw i32 %i.w, -1
  %9 = zext i32 %8 to i64
  %10 = add nuw nsw i64 %9, 1
  br label %bb.f

._crit_edge139:                                   ; preds = %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  ret void

bb.f:                                             ; preds = %.lr.ph, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread
  %.0137 = phi i32 [ 0, %.lr.ph ], [ %i.fo, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread ] ; 2 uses
  %i.az = call noundef i32 @_ZN9PcgRandom5rangeEii(ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef %i.h, i32 noundef %i.ag) ; 3 uses
  %i.ba = call noundef i32 @_ZN9PcgRandom5rangeEii(ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef %i.l, i32 noundef %i.ai) ; 2 uses
  %i.bb = call noundef i32 @_ZN9PcgRandom5rangeEii(ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef %i.q, i32 noundef %i.ak) ; 3 uses
  br i1 %.not88, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = load i64, ptr %i.al, align 8, !tbaa !108
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = sub nsw i32 %i.bb, %i.q
  %i.bf = mul i32 %i.be, %i.j
  %i.bg = sub i32 %i.az, %i.h
  %i.bh = add i32 %i.bg, %i.bf
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.bi
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !85 ; 3 uses
  %i.bl = zext i16 %i.bk to i64
  %i.bm = load i64, ptr %i.an, align 8, !tbaa !106 ; 2 uses
  %i.bn = urem i64 %i.bl, %i.bm                   ; 2 uses
  %i.bo = load ptr, ptr %i.am, align 8, !tbaa !105
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bn
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !109 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !110 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !85
  %i.bu = icmp eq i16 %i.bk, %i.bt
  br i1 %i.bu, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, label %.lr.ph.i.i.i.i

bb.j:                                             ; preds = %bb.k
  %i.bv = icmp eq i16 %i.bk, %i.by
  br i1 %i.bv, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, label %.lr.ph.i.i.i.i, !llvm.loop !111

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %bb.j
  %.020.i.i.i.i = phi ptr [ %i.bw, %bb.j ], [ %i.br, %bb.i ]
  %i.bw = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !110 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !85 ; 2 uses
  %i.bz = zext i16 %i.by to i64
  %i.ca = urem i64 %i.bz, %i.bm
  %.not19.i.i.i.i = icmp eq i64 %i.ca, %i.bn
  br i1 %.not19.i.i.i.i, label %bb.j, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !111

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.k
  br label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, !llvm.loop !111

_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit: ; preds = %bb.j, %bb.i, %bb.g, %bb.f
  %i.cb = add i32 %.0137, %3
  %i.cc = load ptr, ptr %i.aa, align 8, !tbaa !92
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  store i32 %i.cb, ptr %i.cd, align 8, !tbaa !136
  br i1 %.not89132, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, label %.preheader109.lr.ph

.preheader109.lr.ph:                              ; preds = %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit
  %i.ce = sitofp nsz i32 %i.az to float
  %i.cf = sitofp nsz i32 %i.ba to float
  %i.cg = sitofp nsz i32 %i.bb to float
  br label %.preheader109

.preheader109:                                    ; preds = %.preheader109.lr.ph, %._crit_edge128.split
  %.078135 = phi i1 [ false, %.preheader109.lr.ph ], [ %.4, %._crit_edge128.split ]
  %.079134 = phi i64 [ 0, %.preheader109.lr.ph ], [ %11, %._crit_edge128.split ]
  %.082133 = phi i32 [ 0, %.preheader109.lr.ph ], [ %i.cq, %._crit_edge128.split ] ; 3 uses
  %i.ch = add i32 %.082133, %i.bb
  %sext = shl i32 %i.ch, 16
  %i.ci = ashr exact i32 %sext, 16
  %i.cj = sub nsw i32 %.082133, %.sext
  %i.ck = sitofp nsz i32 %i.cj to float           ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader109, %._crit_edge
  %.1127 = phi i1 [ %.078135, %.preheader109 ], [ %.4, %._crit_edge ]
  %.180126 = phi i64 [ %.079134, %.preheader109 ], [ %11, %._crit_edge ] ; 2 uses
  %.083125 = phi i32 [ 0, %.preheader109 ], [ %i.cr, %._crit_edge ] ; 3 uses
  %i.cl = add i32 %.083125, %i.ba
  %sext101 = shl i32 %i.cl, 16
  %i.cm = ashr exact i32 %sext101, 16
  %i.cn = sub nsw i32 %.083125, %.sext
  %i.co = sitofp nsz i32 %i.cn to float           ; 2 uses
  %i.cp = fmul nnan nsz float %i.co, %i.co
  br label %bb.l

._crit_edge128.split:                             ; preds = %._crit_edge
  %i.cq = add i32 %.082133, 1                     ; 2 uses
  %.not89 = icmp eq i32 %i.cq, %i.w
  br i1 %.not89, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, label %.preheader109, !llvm.loop !157

._crit_edge:                                      ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread
  %11 = add i64 %10, %.180126                     ; 2 uses
  %i.cr = add i32 %.083125, 1                     ; 2 uses
  %.not90 = icmp eq i32 %i.cr, %i.w
  br i1 %.not90, label %._crit_edge128.split, label %.preheader, !llvm.loop !158

bb.l:                                             ; preds = %.preheader, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread
  %.2122 = phi i1 [ %.1127, %.preheader ], [ %.4, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread ] ; 3 uses
  %.281121 = phi i64 [ %.180126, %.preheader ], [ %i.fn, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread ] ; 2 uses
  %.084120 = phi i32 [ 0, %.preheader ], [ %i.fm, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread ] ; 3 uses
  %i.cs = add i32 %.084120, %i.az
  %i.ct = load i16, ptr %i.ap, align 4, !tbaa !115
  %i.cu = sext i16 %i.ct to i32
  %i.cv = sub nsw i32 %i.ci, %i.cu
  %i.cw = load i32, ptr %i.ar, align 4, !tbaa !118
  %i.cx = mul nsw i32 %i.cv, %i.cw
  %i.cy = load i32, ptr %i.aq, align 4, !tbaa !119
  %i.cz = load i16, ptr %i.as, align 2, !tbaa !120
  %i.da = sext i16 %i.cz to i32
  %i.db = add i32 %i.cx, %i.cm
  %i.dc = sub i32 %i.db, %i.da
  %i.dd = mul i32 %i.dc, %i.cy
  %sext102 = shl i32 %i.cs, 16
  %i.de = ashr exact i32 %sext102, 16
  %i.df = load i16, ptr %i.ao, align 4, !tbaa !121
  %i.dg = sext i16 %i.df to i32
  %i.dh = sub nsw i32 %i.de, %i.dg
  %i.di = add nsw i32 %i.dh, %i.dd
  %i.dj = load ptr, ptr %i.at, align 8, !tbaa !122 ; 4 uses
  %i.dk = load ptr, ptr %i.au, align 8, !tbaa !122 ; 3 uses
  %i.dl = load ptr, ptr %i.av, align 8, !tbaa !123
  %i.dm = zext i32 %i.di to i64                   ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.dm
  %i.do = load i16, ptr %i.dn, align 4, !tbaa !126 ; 7 uses
  %i.dp = ptrtoint ptr %i.dk to i64               ; 2 uses
  %i.dq = ptrtoint ptr %i.dj to i64
  %i.dr = sub i64 %i.dp, %i.dq                    ; 3 uses
  %i.ds = ashr i64 %i.dr, 3                       ; 2 uses
  %i.dt = icmp sgt i64 %i.ds, 0
  br i1 %i.dt, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l
  %i.du = and i64 %i.dr, -8
  %scevgep.i.i.i = getelementptr i8, ptr %i.dj, i64 %i.du ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.ds, %.lr.ph.i.i.i ], [ %i.eh, %bb.q ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.dj, %.lr.ph.i.i.i ], [ %i.eg, %bb.q ] ; 9 uses
  %i.dv = load i16, ptr %.sroa.032.051.i.i.i, align 2, !tbaa !85
  %i.dw = icmp eq i16 %i.dv, %i.do
  br i1 %i.dw, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 2
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !85
  %i.dz = icmp eq i16 %i.dy, %i.do
  br i1 %i.dz, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !85
  %i.ec = icmp eq i16 %i.eb, %i.do
  br i1 %i.ec, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit158, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 6
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !85
  %i.ef = icmp eq i16 %i.ee, %i.do
  br i1 %i.ef, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit160, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.eh = add nsw i64 %.052.i.i.i, -1
  %i.ei = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.ei, label %bb.m, label %._crit_edge.loopexit.i.i.i, !llvm.loop !128

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.q
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.dp, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.l
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.dr, %bb.l ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.dj, %bb.l ] ; 5 uses
  %i.ej = ashr exact i64 %.pre-phi61.i.i.i, 1
  switch i64 %i.ej, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread [
    i64 3, label %bb.r
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i
  %i.ek = load i16, ptr %.sroa.032.0.lcssa.i.i.i, align 2, !tbaa !85
  %i.el = icmp eq i16 %i.ek, %i.do
  br i1 %i.el, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 2
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.s
  %.sroa.032.1.i.i.i = phi ptr [ %i.em, %bb.s ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.en = load i16, ptr %.sroa.032.1.i.i.i, align 2, !tbaa !85
  %i.eo = icmp eq i16 %i.en, %i.do
  br i1 %i.eo, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 2
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.t
  %.sroa.032.2.i.i.i = phi ptr [ %i.ep, %bb.t ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.eq = load i16, ptr %.sroa.032.2.i.i.i, align 2, !tbaa !85
  %i.er = icmp eq i16 %i.eq, %i.do
  %spec.select.i.i.i = select i1 %i.er, ptr %.sroa.032.2.i.i.i, ptr %i.dk
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.n
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 2
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit158: ; preds = %bb.o
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit160: ; preds = %bb.p
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 6
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit: ; preds = %bb.m, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit158, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit160, %bb.r, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge57.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.r ], [ %i.eu, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit160 ], [ %i.et, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit158 ], [ %i.es, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.m ]
  %.not103 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.dk
  br i1 %.not103, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread, label %bb.u

bb.u:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit
  %.pre146 = load ptr, ptr %i.aa, align 8, !tbaa !92 ; 2 uses
  br i1 %.2122, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ev = call noundef ptr @_ZN5Noise10noiseMap3DEfffPf(ptr noundef nonnull align 8 dereferenceable(88) %.pre146, float noundef %i.ce, float noundef %i.cf, float noundef %i.cg, ptr noundef null) ; 0 uses
  %.pre = load ptr, ptr %i.aa, align 8, !tbaa !92
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ew = phi ptr [ %.pre, %bb.v ], [ %.pre146, %bb.u ]
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 80
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !140
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %.281121
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !90
  %i.fb = sub nsw i32 %.084120, %.sext
  %i.fc = sitofp nsz i32 %i.fb to float           ; 2 uses
  %i.fd = call nsz float @llvm.fmuladd.f32(float %i.fc, float %i.fc, float %i.cp)
  %i.fe = call nsz float @llvm.fmuladd.f32(float %i.ck, float %i.ck, float %i.fd)
  %i.ff = call nsz noundef float @llvm.sqrt.f32(float %i.fe)
  %i.fg = fdiv nsz float %i.ff, %i.ax
  %i.fh = fsub nsz float %i.fa, %i.fg
  %i.fi = load float, ptr %i.ay, align 4, !tbaa !88
  %i.fj = fcmp nsz olt float %i.fh, %i.fi
  br i1 %i.fj, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fk = load ptr, ptr %i.av, align 8, !tbaa !123
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.dm
  store i32 %.sroa.098.0.insert.insert, ptr %i.fl, align 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i, %bb.x, %bb.w, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit
  %.4 = phi i1 [ %.2122, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit ], [ true, %bb.w ], [ true, %bb.x ], [ %.2122, %._crit_edge.i.i.i ] ; 3 uses
  %i.fm = add i32 %.084120, 1                     ; 2 uses
  %i.fn = add i64 %.281121, 1
  %.not91 = icmp eq i32 %i.fm, %i.w
  br i1 %.not91, label %._crit_edge, label %bb.l, !llvm.loop !159

_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread: ; preds = %.lr.ph.i.i.i.i, %._crit_edge128.split, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, %bb.h, %..loopexit_crit_edge21.i.i.i.i
  %i.fo = add i32 %.0137, 1                       ; 2 uses
  %.not87 = icmp eq i32 %i.fo, %i.z
  br i1 %.not87, label %._crit_edge139, label %bb.f, !llvm.loop !160
}

declare noundef ptr @_ZN5Noise10noiseMap3DEfffPf(ptr noundef nonnull align 8 dereferenceable(88), float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7OreVeinD2Ev(ptr noundef nonnull align 8 dead_on_return(308) dereferenceable(308) initializes((0, 8), (56, 64)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV7OreVein, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV7OreVein, i64 72), ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.c) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 88) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN3OreD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %0) #19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZThn56_N7OreVeinD1Ev(ptr noundef initializes((-56, -48), (0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -56 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV7OreVein, i64 16), ptr %i.a, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV7OreVein, i64 72), ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN7OreVeinD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.c) #19, !inline_history !163
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 88) #22, !inline_history !163
  br label %_ZN7OreVeinD2Ev.exit

_ZN7OreVeinD2Ev.exit:                             ; preds = %bb.a, %bb.b
  tail call void @_ZN3OreD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(308) %i.a) #19, !inline_history !163
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7OreVeinD0Ev(ptr noundef nonnull align 8 dereferenceable(308) initializes((0, 8), (56, 64)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV7OreVein, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV7OreVein, i64 72), ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN7OreVeinD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.c) #19, !inline_history !163
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 88) #22, !inline_history !163
  br label %_ZN7OreVeinD2Ev.exit

_ZN7OreVeinD2Ev.exit:                             ; preds = %bb.a, %bb.b
  tail call void @_ZN3OreD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(308) %0) #19, !inline_history !163
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 312) #22
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZThn56_N7OreVeinD0Ev(ptr noundef initializes((-56, -48), (0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -56 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV7OreVein, i64 16), ptr %i.a, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV7OreVein, i64 72), ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN7OreVeinD0Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.c) #19, !inline_history !164
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 88) #22, !inline_history !164
  br label %_ZN7OreVeinD0Ev.exit

_ZN7OreVeinD0Ev.exit:                             ; preds = %bb.a, %bb.b
  tail call void @_ZN3OreD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(308) %i.a) #19, !inline_history !164
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(308) %i.a, i64 noundef 312) #22, !inline_history !165
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZNK7OreVein5cloneEv(ptr noundef nonnull align 8 dereferenceable(308) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(312) ptr @_Znwm(i64 noundef 312) #20 ; 35 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV6ObjDef, i64 16), ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 4 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %i.d, align 8, !tbaa !80
  store i8 0, ptr %i.c, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  invoke void @_ZN12NodeResolverC2Ev(ptr noundef nonnull align 8 dereferenceable(73) %i.e)
          to label %bb.c unwind label %bb.b, !inline_history !166

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV6ObjDef, i64 16), ptr %i.a, align 8, !tbaa !9
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !82   ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.c
  br i1 %i.h, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.c, align 8, !tbaa !81
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #22, !inline_history !167
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 129
  store i8 1, ptr %i.k, align 1, !tbaa !100
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  store i32 0, ptr %i.m, align 8, !tbaa !87
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 2 uses
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 2.500000e+02, float 2.500000e+02>, ptr %i.n, align 8, !tbaa !90
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  store float 2.500000e+02, ptr %i.o, align 8, !tbaa !101
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 204
  store i32 12345, ptr %i.p, align 4, !tbaa !102
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store i16 3, ptr %i.q, align 8, !tbaa !103
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 212
  store <2 x float> <float 6.000000e-01, float 2.000000e+00>, ptr %i.r, align 4, !tbaa !90
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 220
  store i32 1, ptr %i.s, align 4, !tbaa !104
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !92
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 232 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store ptr %i.v, ptr %i.u, align 8, !tbaa !105
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store i64 1, ptr %i.w, align 8, !tbaa !106
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.y, align 8, !tbaa !107
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV7OreVein, i64 16), ptr %i.a, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV7OreVein, i64 72), ptr %i.e, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 296 ; 2 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !161
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 304 ; 2 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !168
  tail call void @_ZNK6ObjDef7cloneToEPS_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull %i.a)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNK12NodeResolver7cloneToEPS_(ptr noundef nonnull align 8 dereferenceable(73) %i.ac, ptr noundef nonnull %i.e)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !83
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 130
  store i16 %i.ae, ptr %i.af, align 2, !tbaa !83
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ah = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorItSaItEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.ag) ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !84
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !84
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  %i.an = load <4 x i16>, ptr %i.al, align 4, !tbaa !85
  store <4 x i16> %i.an, ptr %i.am, align 4, !tbaa !85
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !86
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  store i8 %i.ap, ptr %i.aq, align 4, !tbaa !86
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !87
  store i32 %i.as, ptr %i.m, align 8, !tbaa !87
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.au = load float, ptr %i.at, align 4, !tbaa !88
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  store float %i.au, ptr %i.av, align 4, !tbaa !88
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.aw, i64 40, i1 false), !tbaa.struct !89
  store ptr null, ptr %i.t, align 8, !tbaa !92
  %i.ax = icmp eq ptr %0, %i.a
  br i1 %i.ax, label %_ZNK3Ore7cloneToEPS_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @_ZNSt10_HashtableIttSaItENSt8__detail9_IdentityESt8equal_toItESt4hashItENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE18_M_assign_elementsIRKSC_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.u, ptr noundef nonnull align 8 dereferenceable(56) %i.ay)
  br label %_ZNK3Ore7cloneToEPS_.exit

_ZNK3Ore7cloneToEPS_.exit:                        ; preds = %bb.c, %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ba = load float, ptr %i.az, align 8, !tbaa !169
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store float %i.ba, ptr %i.bb, align 8, !tbaa !169
  store ptr null, ptr %i.aa, align 8, !tbaa !161
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !168
  store i32 %i.bd, ptr %i.ab, align 8, !tbaa !168
  ret ptr %i.a

.body:                                            ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 312) #22
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7OreVein8generateEP8MMVManipijN4core8vector3dIsEES4_Pt(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i48 %4, i48 %5, ptr nofree noundef readonly captures(address_is_null) %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %class.PcgRandom, align 8           ; 5 uses
  %.sroa.048.0.extract.trunc = trunc i48 %4 to i16 ; 3 uses
  %.sroa.6.0.extract.shift = lshr i48 %4, 16
  %.sroa.6.0.extract.trunc = trunc i48 %.sroa.6.0.extract.shift to i16 ; 3 uses
  %.sroa.10.0.extract.shift = lshr i48 %4, 32
  %.sroa.10.0.extract.trunc = trunc nuw i48 %.sroa.10.0.extract.shift to i16 ; 4 uses
  %.sroa.044.0.extract.trunc = trunc i48 %5 to i16 ; 2 uses
  %.sroa.3.0.extract.shift = lshr i48 %5, 16
  %.sroa.3.0.extract.trunc = trunc i48 %.sroa.3.0.extract.shift to i16 ; 2 uses
  %.sroa.5.0.extract.shift = lshr i48 %5, 32
  %.sroa.5.0.extract.trunc = trunc nuw i48 %.sroa.5.0.extract.shift to i16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.a = add i32 %3, 520
  %i.b = zext i32 %i.a to i64
  call void @_ZN9PcgRandomC1Emm(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %i.b, i64 noundef -2720673578348880933)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.d = load i16, ptr %i.c, align 2, !tbaa !83
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.f = load i8, ptr %i.e, align 4, !tbaa !86
  %i.g = sext i16 %.sroa.044.0.extract.trunc to i32 ; 2 uses
  %i.h = sext i16 %.sroa.048.0.extract.trunc to i32 ; 4 uses
  %i.i = sub nsw i32 %i.g, %i.h
  %i.j = add nsw i32 %i.i, 1                      ; 3 uses
  %i.k = sext i16 %.sroa.3.0.extract.trunc to i32 ; 2 uses
  %i.l = sext i16 %.sroa.6.0.extract.trunc to i32 ; 2 uses
  %i.m = sub nsw i32 %i.k, %i.l
  %i.n = add nsw i32 %i.m, 1                      ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !92   ; 3 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.r = load i32, ptr %i.q, align 8, !tbaa !168
  %.not72 = icmp eq i32 %i.n, %i.r
  br i1 %.not72, label %._crit_edge129, label %bb.c

._crit_edge129:                                   ; preds = %bb.b
  %.pre = sext i16 %.sroa.10.0.extract.trunc to i32
  %.pre130 = sext i16 %.sroa.5.0.extract.trunc to i32
  br label %bb.k

bb.c:                                             ; preds = %bb.b
  call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.p) #19
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 88) #22
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !161  ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread
  call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.t) #19
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 88) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread
  %i.v = sext i16 %.sroa.5.0.extract.trunc to i32 ; 2 uses
  %i.w = sext i16 %.sroa.10.0.extract.trunc to i32 ; 2 uses
  %i.x = sub nsw i32 %i.v, %i.w
  %i.y = add nsw i32 %i.x, 1                      ; 2 uses
  %i.z = call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #20 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %i.z, ptr noundef nonnull %i.aa, i32 noundef %2, i32 noundef %i.j, i32 noundef %i.n, i32 noundef %i.y)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  store ptr %i.z, ptr %i.o, align 8, !tbaa !92
  %i.ab = call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #20 ; 3 uses
  %i.ac = add nsw i32 %2, 436
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %i.ab, ptr noundef nonnull %i.aa, i32 noundef %i.ac, i32 noundef %i.j, i32 noundef %i.n, i32 noundef %i.y)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  store ptr %i.ab, ptr %i.s, align 8, !tbaa !161
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i32 %i.n, ptr %i.ad, align 8, !tbaa !168
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink = phi ptr [ %i.ab, %bb.i ], [ %i.z, %bb.h ]
  %.pn = phi { ptr, i32 } [ %i.af, %bb.i ], [ %i.ae, %bb.h ]
  call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 88) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %._crit_edge129, %bb.g
  %.pre-phi131 = phi i32 [ %.pre130, %._crit_edge129 ], [ %i.v, %bb.g ]
  %.pre-phi = phi i32 [ %.pre, %._crit_edge129 ], [ %i.w, %bb.g ] ; 3 uses
  %.not74112 = icmp sgt i16 %.sroa.10.0.extract.trunc, %.sroa.5.0.extract.trunc
  br i1 %.not74112, label %._crit_edge117.split, label %.preheader89.lr.ph

.preheader89.lr.ph:                               ; preds = %bb.k
  %.not75104 = icmp sgt i16 %.sroa.6.0.extract.trunc, %.sroa.3.0.extract.trunc
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.not77 = icmp eq ptr %6, null
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.as = sitofp nsz i16 %.sroa.048.0.extract.trunc to float ; 2 uses
  %i.at = sitofp nsz i16 %.sroa.6.0.extract.trunc to float ; 2 uses
  %i.au = sitofp nsz i16 %.sroa.10.0.extract.trunc to float ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 180
  %.sroa.6.0.insert.ext = zext i8 %i.f to i32
  %.sroa.6.0.insert.shift = shl nuw i32 %.sroa.6.0.insert.ext, 24
  %.sroa.084.0.insert.ext = zext i16 %i.d to i32
  %.sroa.084.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.shift, %.sroa.084.0.insert.ext
  %.not7698 = icmp sgt i16 %.sroa.048.0.extract.trunc, %.sroa.044.0.extract.trunc
  %or.cond = select i1 %.not75104, i1 true, i1 %.not7698
  br i1 %or.cond, label %._crit_edge117.split, label %.preheader89.preheader

.preheader89.preheader:                           ; preds = %.preheader89.lr.ph
  %i.ay = add nsw i32 %i.g, 1
  %i.az = sub nsw i32 %i.ay, %i.h
  %smax127 = call i32 @llvm.smax.i32(i32 %.pre-phi, i32 %.pre-phi131)
  br label %.preheader89

.preheader89:                                     ; preds = %.preheader89.preheader, %._crit_edge108.split
  %.061116 = phi i1 [ %.4, %._crit_edge108.split ], [ false, %.preheader89.preheader ]
  %.062115 = phi i64 [ %i.fj, %._crit_edge108.split ], [ 0, %.preheader89.preheader ]
  %.065113 = phi i32 [ %i.bd, %._crit_edge108.split ], [ %.pre-phi, %.preheader89.preheader ] ; 4 uses
  %i.ba = sub nsw i32 %.065113, %.pre-phi
  %i.bb = mul nsw i32 %i.ba, %i.j
  %i.bc = sub i32 %i.bb, %i.h
  br label %.preheader

._crit_edge117.split:                             ; preds = %._crit_edge108.split, %.preheader89.lr.ph, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  ret void

.preheader:                                       ; preds = %.preheader89, %._crit_edge
  %.1107 = phi i1 [ %.061116, %.preheader89 ], [ %.4, %._crit_edge ]
  %.163106 = phi i64 [ %.062115, %.preheader89 ], [ %i.fj, %._crit_edge ] ; 2 uses
  %.067105 = phi i32 [ %i.l, %.preheader89 ], [ %i.be, %._crit_edge ] ; 3 uses
  %8 = trunc i64 %.163106 to i32
  %9 = add i32 %i.az, %8
  br label %bb.l

._crit_edge108.split:                             ; preds = %._crit_edge
  %i.bd = add nsw i32 %.065113, 1
  %exitcond128.not = icmp eq i32 %.065113, %smax127
  br i1 %exitcond128.not, label %._crit_edge117.split, label %.preheader89, !llvm.loop !170

._crit_edge:                                      ; preds = %_ZNK9VoxelArea8containsEi.exit.thread
  %i.be = add nsw i32 %.067105, 1
  %exitcond126.not = icmp eq i32 %.067105, %i.k
  br i1 %exitcond126.not, label %._crit_edge108.split, label %.preheader, !llvm.loop !171

bb.l:                                             ; preds = %.preheader, %_ZNK9VoxelArea8containsEi.exit.thread
  %.2102 = phi i1 [ %.1107, %.preheader ], [ %.4, %_ZNK9VoxelArea8containsEi.exit.thread ] ; 8 uses
  %.264101 = phi i64 [ %.163106, %.preheader ], [ %i.fj, %_ZNK9VoxelArea8containsEi.exit.thread ] ; 3 uses
  %.06899 = phi i32 [ %i.h, %.preheader ], [ %i.fi, %_ZNK9VoxelArea8containsEi.exit.thread ] ; 3 uses
  %i.bf = load i16, ptr %i.ah, align 4, !tbaa !115
  %i.bg = sext i16 %i.bf to i32
  %i.bh = sub nsw i32 %.065113, %i.bg
  %i.bi = load i32, ptr %i.aj, align 4, !tbaa !118 ; 2 uses
  %i.bj = mul nsw i32 %i.bh, %i.bi
  %i.bk = load i32, ptr %i.ai, align 4, !tbaa !119 ; 2 uses
  %i.bl = load i16, ptr %i.ak, align 2, !tbaa !120
  %i.bm = sext i16 %i.bl to i32
  %i.bn = add i32 %i.bj, %.067105
  %i.bo = sub i32 %i.bn, %i.bm
  %i.bp = mul i32 %i.bo, %i.bk
  %i.bq = load i16, ptr %i.ag, align 4, !tbaa !121
  %i.br = sext i16 %i.bq to i32
  %i.bs = sub nsw i32 %.06899, %i.br
  %i.bt = add nsw i32 %i.bs, %i.bp                ; 3 uses
  %i.bu = icmp sgt i32 %i.bt, -1
  br i1 %i.bu, label %_ZNK9VoxelArea8containsEi.exit, label %_ZNK9VoxelArea8containsEi.exit.thread

_ZNK9VoxelArea8containsEi.exit:                   ; preds = %bb.l
  %i.bv = mul i32 %i.bk, %i.bi
  %i.bw = load i32, ptr %i.al, align 4, !tbaa !142
  %i.bx = mul i32 %i.bv, %i.bw
  %i.by = icmp ult i32 %i.bt, %i.bx
  br i1 %i.by, label %bb.m, label %_ZNK9VoxelArea8containsEi.exit.thread

bb.m:                                             ; preds = %_ZNK9VoxelArea8containsEi.exit
  %i.bz = load ptr, ptr %i.am, align 8, !tbaa !122 ; 4 uses
  %i.ca = load ptr, ptr %i.an, align 8, !tbaa !122 ; 3 uses
  %i.cb = load ptr, ptr %i.ao, align 8, !tbaa !123
  %i.cc = zext nneg i32 %i.bt to i64              ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = load i16, ptr %i.cd, align 4, !tbaa !126 ; 7 uses
  %i.cf = ptrtoint ptr %i.ca to i64               ; 2 uses
  %i.cg = ptrtoint ptr %i.bz to i64
  %i.ch = sub i64 %i.cf, %i.cg                    ; 3 uses
  %i.ci = ashr i64 %i.ch, 3                       ; 2 uses
  %i.cj = icmp sgt i64 %i.ci, 0
  br i1 %i.cj, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m
  %i.ck = and i64 %i.ch, -8
  %scevgep.i.i.i = getelementptr i8, ptr %i.bz, i64 %i.ck ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.ci, %.lr.ph.i.i.i ], [ %i.cx, %bb.r ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i ], [ %i.cw, %bb.r ] ; 9 uses
  %i.cl = load i16, ptr %.sroa.032.051.i.i.i, align 2, !tbaa !85
  %i.cm = icmp eq i16 %i.cl, %i.ce
  br i1 %i.cm, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 2
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !85
  %i.cp = icmp eq i16 %i.co, %i.ce
  br i1 %i.cp, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !85
  %i.cs = icmp eq i16 %i.cr, %i.ce
  br i1 %i.cs, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit142, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 6
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !85
  %i.cv = icmp eq i16 %i.cu, %i.ce
  br i1 %i.cv, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit144, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.cx = add nsw i64 %.052.i.i.i, -1
  %i.cy = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.cy, label %bb.n, label %._crit_edge.loopexit.i.i.i, !llvm.loop !128

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.r
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.cf, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.m
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.ch, %bb.m ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bz, %bb.m ] ; 5 uses
  %i.cz = ashr exact i64 %.pre-phi61.i.i.i, 1
  switch i64 %i.cz, label %_ZNK9VoxelArea8containsEi.exit.thread [
    i64 3, label %bb.s
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.s:                                             ; preds = %._crit_edge.i.i.i
  %i.da = load i16, ptr %.sroa.032.0.lcssa.i.i.i, align 2, !tbaa !85
  %i.db = icmp eq i16 %i.da, %i.ce
  br i1 %i.db, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 2
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.t
  %.sroa.032.1.i.i.i = phi ptr [ %i.dc, %bb.t ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.dd = load i16, ptr %.sroa.032.1.i.i.i, align 2, !tbaa !85
  %i.de = icmp eq i16 %i.dd, %i.ce
  br i1 %i.de, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, label %bb.u

bb.u:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 2
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.u
  %.sroa.032.2.i.i.i = phi ptr [ %i.df, %bb.u ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.dg = load i16, ptr %.sroa.032.2.i.i.i, align 2, !tbaa !85
  %i.dh = icmp eq i16 %i.dg, %i.ce
  %spec.select.i.i.i = select i1 %i.dh, ptr %.sroa.032.2.i.i.i, ptr %i.ca
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.o
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 2
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit142: ; preds = %bb.p
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit144: ; preds = %bb.q
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 6
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit: ; preds = %bb.n, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit142, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit144, %bb.s, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge57.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.s ], [ %i.dk, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit144 ], [ %i.dj, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit142 ], [ %i.di, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.n ]
  %.not87 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.ca
  br i1 %.not87, label %_ZNK9VoxelArea8containsEi.exit.thread, label %bb.v

bb.v:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit
  br i1 %.not77, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dl = load i64, ptr %i.ap, align 8, !tbaa !108
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dn = add i32 %i.bc, %.06899
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.do
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !85 ; 3 uses
  %i.dr = zext i16 %i.dq to i64
  %i.ds = load i64, ptr %i.ar, align 8, !tbaa !106 ; 2 uses
  %i.dt = urem i64 %i.dr, %i.ds                   ; 2 uses
  %i.du = load ptr, ptr %i.aq, align 8, !tbaa !105
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dt
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !109 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i, label %_ZNK9VoxelArea8containsEi.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !110 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !85
  %i.ea = icmp eq i16 %i.dq, %i.dz
  br i1 %i.ea, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, label %.lr.ph.i.i.i.i

bb.z:                                             ; preds = %bb.aa
  %i.eb = icmp eq i16 %i.dq, %i.ee
  br i1 %i.eb, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, label %.lr.ph.i.i.i.i, !llvm.loop !111

.lr.ph.i.i.i.i:                                   ; preds = %bb.y, %bb.z
  %.020.i.i.i.i = phi ptr [ %i.ec, %bb.z ], [ %i.dx, %bb.y ]
  %i.ec = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !110 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ec, null
  br i1 %.not18.i.i.i.i, label %_ZNK9VoxelArea8containsEi.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !85 ; 2 uses
  %i.ef = zext i16 %i.ee to i64
  %i.eg = urem i64 %i.ef, %i.ds
  %.not19.i.i.i.i = icmp eq i64 %i.eg, %i.dt
  br i1 %.not19.i.i.i.i, label %bb.z, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !111

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.aa
  br label %_ZNK9VoxelArea8containsEi.exit.thread, !llvm.loop !111

_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit: ; preds = %bb.z, %bb.y, %bb.w, %bb.v
  br i1 %.2102, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit
  %i.eh = load ptr, ptr %i.o, align 8, !tbaa !92
  %i.ei = call noundef ptr @_ZN5Noise10noiseMap3DEfffPf(ptr noundef nonnull align 8 dereferenceable(88) %i.eh, float noundef %i.as, float noundef %i.at, float noundef %i.au, ptr noundef null) ; 0 uses
  %i.ej = load ptr, ptr %i.av, align 8, !tbaa !161
  %i.ek = call noundef ptr @_ZN5Noise10noiseMap3DEfffPf(ptr noundef nonnull align 8 dereferenceable(88) %i.ej, float noundef %i.as, float noundef %i.at, float noundef %i.au, ptr noundef null) ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit
  %i.el = call noundef i32 @_ZN9PcgRandom4nextEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.em = uitofp nsz i32 %i.el to float
  %i.en = fmul nnan nsz float %i.em, f0x30000000
  %i.eo = fadd nnan nsz float %i.en, -1.000000e+00
  %i.ep = load ptr, ptr %i.o, align 8, !tbaa !92
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 80
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !140
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %.264101
  %i.et = load float, ptr %i.es, align 4, !tbaa !90
  %i.eu = call nsz noundef float @_Z7contourf(float noundef %i.et)
  %i.ev = load ptr, ptr %i.av, align 8, !tbaa !161
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 80
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !140
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %.264101
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !90
  %i.fa = call nsz noundef float @_Z7contourf(float noundef %i.ez)
  %i.fb = load float, ptr %i.aw, align 8, !tbaa !169
  %i.fc = fmul nsz float %i.eo, %i.fb
  %i.fd = call nsz float @llvm.fmuladd.f32(float %i.eu, float %i.fa, float %i.fc)
  %i.fe = load float, ptr %i.ax, align 4, !tbaa !88
  %i.ff = fcmp nsz olt float %i.fd, %i.fe
  br i1 %i.ff, label %_ZNK9VoxelArea8containsEi.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fg = load ptr, ptr %i.ao, align 8, !tbaa !123
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.cc
  store i32 %.sroa.084.0.insert.insert, ptr %i.fh, align 4
  br label %_ZNK9VoxelArea8containsEi.exit.thread

_ZNK9VoxelArea8containsEi.exit.thread:            ; preds = %.lr.ph.i.i.i.i, %bb.x, %..loopexit_crit_edge21.i.i.i.i, %._crit_edge.i.i.i, %bb.l, %bb.ad, %bb.ac, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, %_ZNK9VoxelArea8containsEi.exit
  %.4 = phi i1 [ %.2102, %_ZNK9VoxelArea8containsEi.exit ], [ %.2102, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit ], [ %.2102, %._crit_edge.i.i.i ], [ true, %bb.ac ], [ true, %bb.ad ], [ %.2102, %bb.l ], [ %.2102, %..loopexit_crit_edge21.i.i.i.i ], [ %.2102, %bb.x ], [ %.2102, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.fi = add nsw i32 %.06899, 1
  %i.fj = add i64 %.264101, 1                     ; 4 uses
  %lftr.wideiv = trunc i64 %i.fj to i32
  %exitcond.not = icmp eq i32 %9, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.l, !llvm.loop !172
}

declare noundef i32 @_ZN9PcgRandom4nextEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef float @_Z7contourf(float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN10OreStratumD2Ev(ptr noundef nonnull align 8 dead_on_return(338) dereferenceable(338) initializes((0, 8), (56, 64)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV10OreStratum, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV10OreStratum, i64 72), ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !173  ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.c) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 88) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN3OreD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %0) #19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZThn56_N10OreStratumD1Ev(ptr noundef initializes((-56, -48), (0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -56 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV10OreStratum, i64 16), ptr %i.a, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV10OreStratum, i64 72), ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !173  ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN10OreStratumD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.c) #19, !inline_history !175
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 88) #22, !inline_history !175
  br label %_ZN10OreStratumD2Ev.exit

_ZN10OreStratumD2Ev.exit:                         ; preds = %bb.a, %bb.b
  tail call void @_ZN3OreD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(338) %i.a) #19, !inline_history !175
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN10OreStratumD0Ev(ptr noundef nonnull align 8 dereferenceable(338) initializes((0, 8), (56, 64)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV10OreStratum, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV10OreStratum, i64 72), ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !173  ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN10OreStratumD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.c) #19, !inline_history !175
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 88) #22, !inline_history !175
  br label %_ZN10OreStratumD2Ev.exit

_ZN10OreStratumD2Ev.exit:                         ; preds = %bb.a, %bb.b
  tail call void @_ZN3OreD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(338) %0) #19, !inline_history !175
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 344) #22
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZThn56_N10OreStratumD0Ev(ptr noundef initializes((-56, -48), (0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -56 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV10OreStratum, i64 16), ptr %i.a, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV10OreStratum, i64 72), ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !173  ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN10OreStratumD0Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.c) #19, !inline_history !176
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 88) #22, !inline_history !176
  br label %_ZN10OreStratumD0Ev.exit

_ZN10OreStratumD0Ev.exit:                         ; preds = %bb.a, %bb.b
  tail call void @_ZN3OreD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(338) %i.a) #19, !inline_history !176
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(338) %i.a, i64 noundef 344) #22, !inline_history !177
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZNK10OreStratum5cloneEv(ptr noundef nonnull align 8 dereferenceable(338) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(344) ptr @_Znwm(i64 noundef 344) #20 ; 19 uses
  invoke void @_ZN10OreStratumC2Ev(ptr noundef nonnull align 8 dereferenceable(338) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK6ObjDef7cloneToEPS_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @_ZNK12NodeResolver7cloneToEPS_(ptr noundef nonnull align 8 dereferenceable(73) %i.b, ptr noundef nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.e = load i16, ptr %i.d, align 2, !tbaa !83
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 130
  store i16 %i.e, ptr %i.f, align 2, !tbaa !83
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.i = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorItSaItEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.k = load i32, ptr %i.j, align 8, !tbaa !84
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i32 %i.k, ptr %i.l, align 8, !tbaa !84
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  %i.o = load <4 x i16>, ptr %i.m, align 4, !tbaa !85
  store <4 x i16> %i.o, ptr %i.n, align 4, !tbaa !85
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.q = load i8, ptr %i.p, align 4, !tbaa !86
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  store i8 %i.q, ptr %i.r, align 4, !tbaa !86
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.t = load i32, ptr %i.s, align 8, !tbaa !87
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store i32 %i.t, ptr %i.u, align 8, !tbaa !87
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.w = load float, ptr %i.v, align 4, !tbaa !88
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  store float %i.w, ptr %i.x, align 4, !tbaa !88
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %i.y, i64 40, i1 false), !tbaa.struct !89
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store ptr null, ptr %i.aa, align 8, !tbaa !92
  %i.ab = icmp eq ptr %0, %i.a
  br i1 %i.ab, label %_ZNK3Ore7cloneToEPS_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @_ZNSt10_HashtableIttSaItENSt8__detail9_IdentityESt8equal_toItESt4hashItENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE18_M_assign_elementsIRKSC_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, ptr noundef nonnull align 8 dereferenceable(56) %i.ad)
  br label %_ZNK3Ore7cloneToEPS_.exit

_ZNK3Ore7cloneToEPS_.exit:                        ; preds = %bb.b, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull align 8 dereferenceable(40) %i.ae, i64 40, i1 false), !tbaa.struct !89
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  store ptr null, ptr %i.ag, align 8, !tbaa !173
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ai = load i16, ptr %i.ah, align 8, !tbaa !178
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store i16 %i.ai, ptr %i.aj, align 8, !tbaa !178
  ret ptr %i.a

bb.d:                                             ; preds = %bb.a
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 344) #22
  resume { ptr, i32 } %i.ak
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN10OreStratumC2Ev(ptr noundef nonnull align 8 dereferenceable(338) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV6ObjDef, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.c, align 8, !tbaa !80
  store i8 0, ptr %i.b, align 8, !tbaa !81
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  invoke void @_ZN12NodeResolverC2Ev(ptr noundef nonnull align 8 dereferenceable(73) %i.d)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV6ObjDef, i64 16), ptr %0, align 8, !tbaa !9
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !82   ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.b
  br i1 %i.g, label %_ZN6ObjDefD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.b, align 8, !tbaa !81
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #22, !inline_history !151
  br label %_ZN6ObjDefD2Ev.exit.i

_ZN6ObjDefD2Ev.exit.i:                            ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 129
  store i8 0, ptr %i.j, align 1, !tbaa !100
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 0, ptr %i.l, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 2.500000e+02, float 2.500000e+02>, ptr %i.m, align 8, !tbaa !90
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200
  store float 2.500000e+02, ptr %i.n, align 8, !tbaa !101
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i32 12345, ptr %i.o, align 4, !tbaa !102
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i16 3, ptr %i.p, align 8, !tbaa !103
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 212
  store <2 x float> <float 6.000000e-01, float 2.000000e+00>, ptr %i.q, align 4, !tbaa !90
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 220
  store i32 1, ptr %i.r, align 4, !tbaa !104
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr null, ptr %i.s, align 8, !tbaa !92
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %i.u, ptr %i.t, align 8, !tbaa !105
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 1, ptr %i.v, align 8, !tbaa !106
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.x, align 8, !tbaa !107
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV10OreStratum, i64 16), ptr %0, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV10OreStratum, i64 72), ptr %i.d, align 8, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 288
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 2.500000e+02, float 2.500000e+02>, ptr %i.z, align 8, !tbaa !90
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 304
  store float 2.500000e+02, ptr %i.aa, align 8, !tbaa !101
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 308
  store i32 12345, ptr %i.ab, align 4, !tbaa !102
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i16 3, ptr %i.ac, align 8, !tbaa !103
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 316
  store <2 x float> <float 6.000000e-01, float 2.000000e+00>, ptr %i.ad, align 4, !tbaa !90
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 324
  store i32 1, ptr %i.ae, align 4, !tbaa !104
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr null, ptr %i.af, align 8, !tbaa !173
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10OreStratum8generateEP8MMVManipijN4core8vector3dIsEES4_Pt(ptr noundef nonnull align 8 dereferenceable(338) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, i32 noundef %3, i48 %4, i48 %5, ptr nofree noundef readonly captures(address_is_null) %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %class.PcgRandom, align 8           ; 5 uses
  %.sroa.048.0.extract.trunc = trunc i48 %4 to i16 ; 6 uses
  %.sroa.6.0.extract.shift = lshr i48 %4, 16
  %.sroa.6.0.extract.trunc = trunc i48 %.sroa.6.0.extract.shift to i16 ; 2 uses
  %.sroa.9.0.extract.shift = lshr i48 %4, 32
  %.sroa.9.0.extract.trunc = trunc nuw i48 %.sroa.9.0.extract.shift to i16 ; 7 uses
  %.sroa.041.0.extract.trunc = trunc i48 %5 to i16 ; 4 uses
  %.sroa.4.0.extract.shift = lshr i48 %5, 16
  %.sroa.4.0.extract.trunc = trunc i48 %.sroa.4.0.extract.shift to i16 ; 2 uses
  %.sroa.7.0.extract.shift = lshr i48 %5, 32
  %.sroa.7.0.extract.trunc = trunc nuw i48 %.sroa.7.0.extract.shift to i16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.a = add i32 %3, 4234
  %i.b = zext i32 %i.a to i64
  call void @_ZN9PcgRandomC1Emm(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %i.b, i64 noundef -2720673578348880933)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.d = load i16, ptr %i.c, align 2, !tbaa !83
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.f = load i8, ptr %i.e, align 4, !tbaa !86
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !87   ; 2 uses
  %i.i = and i32 %i.h, 8
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !92   ; 2 uses
  %.not71 = icmp eq ptr %i.k, null
  br i1 %.not71, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = sext i16 %.sroa.041.0.extract.trunc to i32
  %i.m = sext i16 %.sroa.048.0.extract.trunc to i32
  %reass.sub = sub nsw i32 %i.l, %i.m
  %i.n = add nsw i32 %reass.sub, 1
  %i.o = sext i16 %.sroa.7.0.extract.trunc to i32
  %i.p = sext i16 %.sroa.9.0.extract.trunc to i32
  %reass.sub119 = sub nsw i32 %i.o, %i.p
  %i.q = add nsw i32 %reass.sub119, 1
  %i.r = call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #20 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 184
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %i.r, ptr noundef nonnull %i.s, i32 noundef 0, i32 noundef %i.n, i32 noundef %i.q, i32 noundef 1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.r, ptr %i.j, align 8, !tbaa !92
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.u = phi ptr [ %i.r, %bb.d ], [ %i.k, %bb.b ]
  %i.v = sitofp nsz i16 %.sroa.048.0.extract.trunc to float
  %i.w = sitofp nsz i16 %.sroa.9.0.extract.trunc to float
  %i.x = call noundef ptr @_ZN5Noise10noiseMap2DEffPf(ptr noundef nonnull align 8 dereferenceable(88) %i.u, float noundef %i.v, float noundef %i.w, ptr noundef null) ; 0 uses
  %.pre = load i32, ptr %i.g, align 8, !tbaa !87
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %i.y = phi i32 [ %.pre, %bb.f ], [ %i.h, %bb.a ]
  %i.z = and i32 %i.y, 16
  %.not72 = icmp eq i32 %i.z, 0
  br i1 %.not72, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !173 ; 2 uses
  %.not73 = icmp eq ptr %i.ab, null
  br i1 %.not73, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ac = sext i16 %.sroa.041.0.extract.trunc to i32
  %i.ad = sext i16 %.sroa.048.0.extract.trunc to i32
  %reass.sub120 = sub nsw i32 %i.ac, %i.ad
  %i.ae = add nsw i32 %reass.sub120, 1
  %i.af = sext i16 %.sroa.7.0.extract.trunc to i32
  %i.ag = sext i16 %.sroa.9.0.extract.trunc to i32
  %reass.sub121 = sub nsw i32 %i.af, %i.ag
  %i.ah = add nsw i32 %reass.sub121, 1
  %i.ai = call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #20 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 288
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %i.ai, ptr noundef nonnull %i.aj, i32 noundef 0, i32 noundef %i.ae, i32 noundef %i.ah, i32 noundef 1)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr %i.ai, ptr %i.aa, align 8, !tbaa !173
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.l:                                             ; preds = %bb.j, %bb.h
  %i.al = phi ptr [ %i.ai, %bb.j ], [ %i.ab, %bb.h ]
  %i.am = sitofp nsz i16 %.sroa.048.0.extract.trunc to float
  %i.an = sitofp nsz i16 %.sroa.9.0.extract.trunc to float
  %i.ao = call noundef ptr @_ZN5Noise10noiseMap2DEffPf(ptr noundef nonnull align 8 dereferenceable(88) %i.al, float noundef %i.am, float noundef %i.an, ptr noundef null) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %.not75113 = icmp sgt i16 %.sroa.9.0.extract.trunc, %.sroa.7.0.extract.trunc
  br i1 %.not75113, label %._crit_edge118.split, label %.lr.ph117

.lr.ph117:                                        ; preds = %bb.m
  %i.ap = sext i16 %.sroa.048.0.extract.trunc to i32 ; 2 uses
  %.not76108 = icmp sgt i16 %.sroa.048.0.extract.trunc, %.sroa.041.0.extract.trunc
  %.not77 = icmp eq ptr %6, null
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.aw = sitofp i16 %.sroa.6.0.extract.trunc to float ; 2 uses
  %i.ax = sitofp i16 %.sroa.4.0.extract.trunc to float ; 2 uses
  %i.ay = sext i16 %.sroa.6.0.extract.trunc to i32
  %i.az = sext i16 %.sroa.4.0.extract.trunc to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.6.0.insert.ext = zext i8 %i.f to i32
  %.sroa.6.0.insert.shift = shl nuw i32 %.sroa.6.0.insert.ext, 24
  %.sroa.089.0.insert.ext = zext i16 %i.d to i32
  %.sroa.089.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.shift, %.sroa.089.0.insert.ext
  br i1 %.not76108, label %._crit_edge118.split, label %.lr.ph112.preheader

.lr.ph112.preheader:                              ; preds = %.lr.ph117
  %i.bk = sext i16 %.sroa.041.0.extract.trunc to i32
  %i.bl = sext i16 %.sroa.9.0.extract.trunc to i32
  %i.bm = add nsw i32 %i.bk, 1
  %i.bn = sub nsw i32 %i.bm, %i.ap
  %i.bo = call i16 @llvm.smax.i16(i16 %.sroa.9.0.extract.trunc, i16 %.sroa.7.0.extract.trunc)
  %smax128 = sext i16 %i.bo to i32
  br label %.lr.ph112

._crit_edge118.split:                             ; preds = %._crit_edge, %.lr.ph117, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  ret void

.lr.ph112:                                        ; preds = %.lr.ph112.preheader, %._crit_edge
  %.060115 = phi i64 [ %i.fu, %._crit_edge ], [ 0, %.lr.ph112.preheader ] ; 2 uses
  %.062114.a = phi i32 [ %i.bp, %._crit_edge ], [ %i.bl, %.lr.ph112.preheader ] ; 3 uses
  %8 = trunc i64 %.060115 to i32
  %9 = add i32 %i.bn, %8
  br label %bb.n

._crit_edge:                                      ; preds = %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread
  %i.bp = add nsw i32 %.062114.a, 1
  %exitcond129.not = icmp eq i32 %.062114.a, %smax128
  br i1 %exitcond129.not, label %._crit_edge118.split, label %.lr.ph112, !llvm.loop !179

bb.n:                                             ; preds = %.lr.ph112, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread
  %.1111 = phi i64 [ %.060115, %.lr.ph112 ], [ %i.fu, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread ] ; 4 uses
  %.066109 = phi i32 [ %i.ap, %.lr.ph112 ], [ %i.ft, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread ] ; 2 uses
  br i1 %.not77, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = load i64, ptr %i.aq, align 8, !tbaa !108
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %.1111
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !85 ; 3 uses
  %i.bu = zext i16 %i.bt to i64
  %i.bv = load i64, ptr %i.as, align 8, !tbaa !106 ; 2 uses
  %i.bw = urem i64 %i.bu, %i.bv                   ; 2 uses
  %i.bx = load ptr, ptr %i.ar, align 8, !tbaa !105
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !109 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !110 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !85
  %i.cd = icmp eq i16 %i.bt, %i.cc
  br i1 %i.cd, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, label %.lr.ph.i.i.i.i

bb.r:                                             ; preds = %bb.s
  %i.ce = icmp eq i16 %i.bt, %i.ch
  br i1 %i.ce, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, label %.lr.ph.i.i.i.i, !llvm.loop !111

.lr.ph.i.i.i.i:                                   ; preds = %bb.q, %bb.r
  %.020.i.i.i.i = phi ptr [ %i.cf, %bb.r ], [ %i.ca, %bb.q ]
  %i.cf = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !110 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !85 ; 2 uses
  %i.ci = zext i16 %i.ch to i64
  %i.cj = urem i64 %i.ci, %i.bv
  %.not19.i.i.i.i = icmp eq i64 %i.cj, %i.bw
  br i1 %.not19.i.i.i.i, label %bb.r, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !111

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.s
  br label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, !llvm.loop !111

_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit: ; preds = %bb.r, %bb.q, %bb.o, %bb.n
  %i.ck = load i32, ptr %i.g, align 8, !tbaa !87  ; 2 uses
  %i.cl = and i32 %i.ck, 8
  %.not78 = icmp eq i32 %i.cl, 0
  br i1 %.not78, label %bb.x, label %bb.t

bb.t:                                             ; preds = %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit
  %i.cm = and i32 %i.ck, 16
  %.not79 = icmp eq i32 %i.cm, 0
  br i1 %.not79, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cn = load ptr, ptr %i.at, align 8, !tbaa !173
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 80
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !140
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %.1111
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !90
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.cs = load i16, ptr %i.au, align 8, !tbaa !178
  %i.ct = uitofp nsz i16 %i.cs to float
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cu = phi nsz float [ %i.cr, %bb.u ], [ %i.ct, %bb.v ]
  %i.cv = fmul nsz float %i.cu, 5.000000e-01      ; 2 uses
  %i.cw = load ptr, ptr %i.av, align 8, !tbaa !92
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 80
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !140
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.1111
  %i.da = load float, ptr %i.cz, align 4, !tbaa !90 ; 2 uses
  %i.db = fsub nsz float %i.da, %i.cv
  %i.dc = call nsz noundef float @llvm.ceil.f32(float %i.db) ; 2 uses
  %i.dd = fcmp nsz olt float %i.dc, %i.aw
  %i.de = select nsz i1 %i.dd, float %i.aw, float %i.dc
  %i.df = fptosi float %i.de to i32
  %i.dg = fadd nsz float %i.cv, %i.da             ; 2 uses
  %i.dh = fcmp nsz ogt float %i.dg, %i.ax
  %.82 = select nsz i1 %i.dh, float %i.ax, float %i.dg
  %i.di = fptosi float %.82 to i32
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, %bb.w
  %.065 = phi i32 [ %i.df, %bb.w ], [ %i.ay, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit ] ; 2 uses
  %.064 = phi i32 [ %i.di, %bb.w ], [ %i.az, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit ] ; 2 uses
  %.not80106 = icmp sgt i32 %.065, %.064
  br i1 %.not80106, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x, %_ZNK9VoxelArea8containsEi.exit.thread
  %.061107 = phi i32 [ %i.fs, %_ZNK9VoxelArea8containsEi.exit.thread ], [ %.065, %bb.x ] ; 3 uses
  %i.dj = load i32, ptr %i.ba, align 8, !tbaa !84
  %i.dk = call noundef i32 @_ZN9PcgRandom5rangeEii(ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef 1, i32 noundef %i.dj)
  %.not81 = icmp eq i32 %i.dk, 1
  br i1 %.not81, label %bb.y, label %_ZNK9VoxelArea8containsEi.exit.thread

bb.y:                                             ; preds = %.lr.ph
  %i.dl = load i16, ptr %i.bc, align 4, !tbaa !115
  %i.dm = sext i16 %i.dl to i32
  %i.dn = sub nsw i32 %.062114.a, %i.dm
  %i.do = load i32, ptr %i.be, align 4, !tbaa !118 ; 2 uses
  %i.dp = mul nsw i32 %i.dn, %i.do
  %i.dq = load i32, ptr %i.bd, align 4, !tbaa !119 ; 2 uses
  %sext = shl i32 %.061107, 16
  %i.dr = ashr exact i32 %sext, 16
  %i.ds = load i16, ptr %i.bf, align 2, !tbaa !120
  %i.dt = sext i16 %i.ds to i32
  %i.du = add i32 %i.dp, %i.dr
  %i.dv = sub i32 %i.du, %i.dt
  %i.dw = mul i32 %i.dv, %i.dq
  %i.dx = load i16, ptr %i.bb, align 4, !tbaa !121
  %i.dy = sext i16 %i.dx to i32
  %i.dz = sub nsw i32 %.066109, %i.dy
  %i.ea = add nsw i32 %i.dz, %i.dw                ; 3 uses
  %i.eb = icmp sgt i32 %i.ea, -1
  br i1 %i.eb, label %_ZNK9VoxelArea8containsEi.exit, label %_ZNK9VoxelArea8containsEi.exit.thread

_ZNK9VoxelArea8containsEi.exit:                   ; preds = %bb.y
  %i.ec = mul i32 %i.dq, %i.do
  %i.ed = load i32, ptr %i.bg, align 4, !tbaa !142
  %i.ee = mul i32 %i.ec, %i.ed
  %i.ef = icmp ult i32 %i.ea, %i.ee
  br i1 %i.ef, label %bb.z, label %_ZNK9VoxelArea8containsEi.exit.thread

bb.z:                                             ; preds = %_ZNK9VoxelArea8containsEi.exit
  %i.eg = load ptr, ptr %i.bh, align 8, !tbaa !122 ; 4 uses
  %i.eh = load ptr, ptr %i.bi, align 8, !tbaa !122 ; 3 uses
  %i.ei = load ptr, ptr %i.bj, align 8, !tbaa !123
  %i.ej = zext nneg i32 %i.ea to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ej ; 2 uses
  %i.el = load i16, ptr %i.ek, align 4, !tbaa !126 ; 7 uses
  %i.em = ptrtoint ptr %i.eh to i64               ; 2 uses
  %i.en = ptrtoint ptr %i.eg to i64
  %i.eo = sub i64 %i.em, %i.en                    ; 3 uses
  %i.ep = ashr i64 %i.eo, 3                       ; 2 uses
  %i.eq = icmp sgt i64 %i.ep, 0
  br i1 %i.eq, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.z
  %i.er = and i64 %i.eo, -8
  %scevgep.i.i.i = getelementptr i8, ptr %i.eg, i64 %i.er ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ae, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.ep, %.lr.ph.i.i.i ], [ %i.fe, %bb.ae ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.eg, %.lr.ph.i.i.i ], [ %i.fd, %bb.ae ] ; 9 uses
  %i.es = load i16, ptr %.sroa.032.051.i.i.i, align 2, !tbaa !85
  %i.et = icmp eq i16 %i.es, %i.el
  br i1 %i.et, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 2
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !85
  %i.ew = icmp eq i16 %i.ev, %i.el
  br i1 %i.ew, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !85
  %i.ez = icmp eq i16 %i.ey, %i.el
  br i1 %i.ez, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit141, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 6
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !85
  %i.fc = icmp eq i16 %i.fb, %i.el
  br i1 %i.fc, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit143, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.fe = add nsw i64 %.052.i.i.i, -1
  %i.ff = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.ff, label %bb.aa, label %._crit_edge.loopexit.i.i.i, !llvm.loop !128

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.ae
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.em, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.z
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.eo, %bb.z ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.eg, %bb.z ] ; 5 uses
  %i.fg = ashr exact i64 %.pre-phi61.i.i.i, 1
  switch i64 %i.fg, label %_ZNK9VoxelArea8containsEi.exit.thread [
    i64 3, label %bb.af
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.af:                                            ; preds = %._crit_edge.i.i.i
  %i.fh = load i16, ptr %.sroa.032.0.lcssa.i.i.i, align 2, !tbaa !85
  %i.fi = icmp eq i16 %i.fh, %i.el
  br i1 %i.fi, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 2
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.ag
  %.sroa.032.1.i.i.i = phi ptr [ %i.fj, %bb.ag ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.fk = load i16, ptr %.sroa.032.1.i.i.i, align 2, !tbaa !85
  %i.fl = icmp eq i16 %i.fk, %i.el
  br i1 %i.fl, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge._crit_edge.i.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 2
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.ah
  %.sroa.032.2.i.i.i = phi ptr [ %i.fm, %bb.ah ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.fn = load i16, ptr %.sroa.032.2.i.i.i, align 2, !tbaa !85
  %i.fo = icmp eq i16 %i.fn, %i.el
  %spec.select.i.i.i = select i1 %i.fo, ptr %.sroa.032.2.i.i.i, ptr %i.eh
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.ab
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 2
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit141: ; preds = %bb.ac
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit143: ; preds = %bb.ad
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 6
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit: ; preds = %bb.aa, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit141, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit143, %bb.af, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge57.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.af ], [ %i.fr, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit143 ], [ %i.fq, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit141 ], [ %i.fp, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.aa ]
  %.not92 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.eh
  br i1 %.not92, label %_ZNK9VoxelArea8containsEi.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit
  store i32 %.sroa.089.0.insert.insert, ptr %i.ek, align 4
  br label %_ZNK9VoxelArea8containsEi.exit.thread

_ZNK9VoxelArea8containsEi.exit.thread:            ; preds = %._crit_edge.i.i.i, %bb.y, %bb.ai, %_ZNK9VoxelArea8containsEi.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, %.lr.ph
  %i.fs = add i32 %.061107, 1
  %exitcond.not = icmp eq i32 %.061107, %.064
  br i1 %exitcond.not, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, label %.lr.ph, !llvm.loop !180

_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread: ; preds = %.lr.ph.i.i.i.i, %_ZNK9VoxelArea8containsEi.exit.thread, %bb.x, %bb.p, %..loopexit_crit_edge21.i.i.i.i
  %i.ft = add nsw i32 %.066109, 1
  %i.fu = add i64 %.1111, 1                       ; 3 uses
  %lftr.wideiv = trunc i64 %i.fu to i32
  %exitcond127.not = icmp eq i32 %9, %lftr.wideiv
  br i1 %exitcond127.not, label %._crit_edge, label %bb.n, !llvm.loop !181

bb.aj:                                            ; preds = %bb.k, %bb.e
  %.sink = phi ptr [ %i.ai, %bb.k ], [ %i.r, %bb.e ]
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.k ], [ %i.t, %bb.e ]
  call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 88) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  resume { ptr, i32 } %.pn
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10OreScatterD0Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZN3OreD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #22
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn56_N10OreScatterD1Ev(ptr noundef %0) unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -56
  tail call void @_ZN3OreD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %i.a) #19
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn56_N10OreScatterD0Ev(ptr noundef %0) unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -56 ; 2 uses
  tail call void @_ZN3OreD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %i.a) #19
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(288) %i.a, i64 noundef 288) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8OreSheetD0Ev(ptr noundef nonnull align 8 dereferenceable(296) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZN3OreD2Ev(ptr noundef nonnull align 8 dead_on_return(296) dereferenceable(296) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 296) #22
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn56_N8OreSheetD1Ev(ptr noundef %0) unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -56
  tail call void @_ZN3OreD2Ev(ptr noundef nonnull align 8 dead_on_return(296) dereferenceable(296) %i.a) #19
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn56_N8OreSheetD0Ev(ptr noundef %0) unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -56 ; 2 uses
  tail call void @_ZN3OreD2Ev(ptr noundef nonnull align 8 dead_on_return(296) dereferenceable(296) %i.a) #19
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(296) %i.a, i64 noundef 296) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3OreD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) initializes((0, 8), (56, 64)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV3Ore, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV3Ore, i64 72), ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !92   ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.c) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 88) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !182  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIttSaItENSt8__detail9_IdentityESt8equal_toItESt4hashItENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.h = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !110 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #22
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIttSaItENSt8__detail9_IdentityESt8equal_toItESt4hashItENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !183

_ZNSt10_HashtableIttSaItENSt8__detail9_IdentityESt8equal_toItESt4hashItENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.c
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !105
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !106
  %i.l = shl i64 %i.k, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.i, i8 0, i64 %i.l, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !105  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10_HashtableIttSaItENSt8__detail9_IdentityESt8equal_toItESt4hashItENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.p = load i64, ptr %i.j, align 8, !tbaa !106
  %i.q = shl i64 %i.p, 3
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #22
  br label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEED2Ev.exit

_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEED2Ev.exit: ; preds = %_ZNSt10_HashtableIttSaItENSt8__detail9_IdentityESt8equal_toItESt4hashItENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !94   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !95
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #22
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEED2Ev.exit, %bb.e
  tail call void @_ZN12NodeResolverD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %i.a) #19
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV6ObjDef, i64 16), ptr %0, align 8, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !82   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN6ObjDefD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorItSaItEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !81
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #22, !inline_history !151
  br label %_ZN6ObjDefD2Ev.exit

_ZN6ObjDefD2Ev.exit:                              ; preds = %_ZNSt6vectorItSaItEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7OreBlobD0Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZN3OreD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #22
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn56_N7OreBlobD1Ev(ptr noundef %0) unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -56
  tail call void @_ZN3OreD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %i.a) #19
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn56_N7OreBlobD0Ev(ptr noundef %0) unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -56 ; 2 uses
  tail call void @_ZN3OreD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %i.a) #19
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(288) %i.a, i64 noundef 288) #22
  ret void
}

; Function Attrs: nounwind
declare void @_ZN13ObjDefManagerD2Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10OreManagerD0Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN13ObjDefManagerD2Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10OreManager14getObjectTitleEv(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret ptr @.str.4
}

declare noundef ptr @_ZNK13ObjDefManager9getByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare noundef i32 @_ZN13ObjDefManager3addEP6ObjDef(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef) unnamed_addr #1

declare noundef ptr @_ZNK13ObjDefManager3getEj(ptr noundef nonnull align 8 dereferenceable(44), i32 noundef) unnamed_addr #1

declare noundef ptr @_ZN13ObjDefManager3setEjP6ObjDef(ptr noundef nonnull align 8 dereferenceable(44), i32 noundef, ptr noundef) unnamed_addr #1

declare noundef i32 @_ZN13ObjDefManager6addRawEP6ObjDef(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef) unnamed_addr #1

declare noundef ptr @_ZNK13ObjDefManager6getRawEj(ptr noundef nonnull align 8 dereferenceable(44), i32 noundef) unnamed_addr #1

declare noundef ptr @_ZN13ObjDefManager6setRawEjP6ObjDef(ptr noundef nonnull align 8 dereferenceable(44), i32 noundef, ptr noundef) unnamed_addr #1

end_hunk_1
