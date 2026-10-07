Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mg_ore?download=true
inline.NumInlined: 427
inline.NumDeleted: 216
begin_hunk_0_@_ZNK8OreSheet5cloneEv:bb.a
  store float 2.500000e+02, ptr %i.o, align 8, !tbaa !97
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 204
  store i32 12345, ptr %i.p, align 4, !tbaa !98
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store i16 3, ptr %i.q, align 8, !tbaa !99
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 212
  store <2 x float> <float 6.000000e-01, float 2.000000e+00>, ptr %i.r, align 4, !tbaa !89
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 220
  store i32 1, ptr %i.s, align 4, !tbaa !100
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !92
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 232 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store ptr %i.v, ptr %i.u, align 8, !tbaa !101
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store i64 1, ptr %i.w, align 8, !tbaa !102
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.y, align 8, !tbaa !103
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV8OreSheet, i64 16), ptr %i.a, align 8, !tbaa !13
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV8OreSheet, i64 72), ptr %i.e, align 8, !tbaa !13
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.au, i64 40, i1 false), !tbaa.struct !91
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
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !121
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 292
  store float %i.bb, ptr %i.bc, align 4, !tbaa !121
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
  %i.h = load i16, ptr %i.g, align 2, !tbaa !164
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
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !124
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
  %smax122 = call i32 @llvm.smax.i32(i32 %.pre-phi, i32 %i.bc)
  br label %.lr.ph108

._crit_edge114.split:                             ; preds = %._crit_edge, %.lr.ph113, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  ret void

.lr.ph108:                                        ; preds = %.lr.ph108.preheader, %._crit_edge
  %.065111 = phi i32 [ %i.bh, %._crit_edge ], [ %i.bc, %.lr.ph108.preheader ] ; 3 uses
  %.066110 = phi i64 [ %i.fl, %._crit_edge ], [ 0, %.lr.ph108.preheader ] ; 2 uses
  %i.bf = trunc i64 %.066110 to i32
  %i.bg = add i32 %i.be, %i.bf
  br label %bb.i

._crit_edge:                                      ; preds = %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread
  %i.bh = add nsw i32 %.065111, 1
  %exitcond123.not = icmp eq i32 %.065111, %smax122
  br i1 %exitcond123.not, label %._crit_edge114.split, label %.lr.ph108, !llvm.loop !161

bb.i:                                             ; preds = %.lr.ph108, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread
  %.063106 = phi i32 [ %i.aj, %.lr.ph108 ], [ %i.fk, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread ] ; 2 uses
  %.1105 = phi i64 [ %.066110, %.lr.ph108 ], [ %i.fl, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread ] ; 3 uses
  %i.bi = load ptr, ptr %i.s, align 8, !tbaa !92
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 80
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !125
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.1105
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !89 ; 2 uses
  %i.bn = load float, ptr %i.ak, align 4, !tbaa !88
  %i.bo = fcmp nsz olt float %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not79, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = load i64, ptr %i.al, align 8, !tbaa !104
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %.1105
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !85 ; 3 uses
  %i.bt = zext i16 %i.bs to i64
  %i.bu = load i64, ptr %i.an, align 8, !tbaa !102 ; 2 uses
  %i.bv = urem i64 %i.bt, %i.bu                   ; 2 uses
  %i.bw = load ptr, ptr %i.am, align 8, !tbaa !101
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bv
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !106 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !85
  %i.cc = icmp eq i16 %i.bs, %i.cb
  br i1 %i.cc, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, label %.lr.ph.i.i.i.i

bb.n:                                             ; preds = %bb.o
  %i.cd = icmp eq i16 %i.bs, %i.cg
  br i1 %i.cd, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, label %.lr.ph.i.i.i.i, !llvm.loop !0

.lr.ph.i.i.i.i:                                   ; preds = %bb.m, %bb.n
  %.020.i.i.i.i = phi ptr [ %i.ce, %bb.n ], [ %i.bz, %bb.m ]
  %i.ce = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !106 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !85 ; 2 uses
  %i.ch = zext i16 %i.cg to i64
  %i.ci = urem i64 %i.ch, %i.bu
  %.not19.i.i.i.i = icmp eq i64 %i.ci, %i.bv
  br i1 %.not19.i.i.i.i, label %bb.n, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !0

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.o
  br label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, !llvm.loop !0

_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit: ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %i.cj = load i16, ptr %i.ao, align 8, !tbaa !165
  %i.ck = zext i16 %i.cj to i32
  %i.cl = load i16, ptr %i.g, align 2, !tbaa !164
  %i.cm = zext i16 %i.cl to i32
  %i.cn = call noundef i32 @_ZN9PcgRandom5rangeEii(ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef %i.ck, i32 noundef %i.cm)
  %i.co = fadd nsz float %i.bm, %i.ap
  %i.cp = fptosi float %i.co to i32
  %i.cq = sitofp nsz i32 %i.cp to float
  %i.cr = and i32 %i.cn, 65535                    ; 2 uses
  %i.cs = uitofp nneg i32 %i.cr to float
  %i.ct = load float, ptr %i.ar, align 4, !tbaa !121
  %i.cu = fsub nsz float 1.000000e+00, %i.ct
  %i.cv = fneg nsz float %i.cs
  %i.cw = call nsz float @llvm.fmuladd.f32(float %i.cv, float %i.cu, float %i.cq) ; 2 uses
  %i.cx = fcmp nsz olt float %i.cw, %i.aq
  %. = select nsz i1 %i.cx, float %i.aq, float %i.cw
  %i.cy = fptosi float %. to i32                  ; 3 uses
  %i.cz = add nsw i32 %i.cr, -1
  %i.da = add i32 %i.cz, %i.cy
  %i.db = call i32 @llvm.smin.i32(i32 %i.da, i32 %i.l) ; 2 uses
  %.not80102 = icmp slt i32 %i.db, %i.cy
  br i1 %.not80102, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, %_ZNK9VoxelArea8containsEi.exit.thread
  %.0103 = phi i32 [ %i.fj, %_ZNK9VoxelArea8containsEi.exit.thread ], [ %i.cy, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit ] ; 3 uses
  %i.dc = load i16, ptr %i.at, align 4, !tbaa !109
  %i.dd = sext i16 %i.dc to i32
  %i.de = sub nsw i32 %.065111, %i.dd
  %i.df = load i32, ptr %i.av, align 4, !tbaa !110 ; 2 uses
  %i.dg = mul nsw i32 %i.de, %i.df
  %i.dh = load i32, ptr %i.au, align 4, !tbaa !111 ; 2 uses
  %sext = shl i32 %.0103, 16
  %i.di = ashr exact i32 %sext, 16
  %i.dj = load i16, ptr %i.aw, align 2, !tbaa !112
  %i.dk = sext i16 %i.dj to i32
  %i.dl = add i32 %i.dg, %i.di
  %i.dm = sub i32 %i.dl, %i.dk
  %i.dn = mul i32 %i.dm, %i.dh
  %i.do = load i16, ptr %i.as, align 4, !tbaa !113
  %i.dp = sext i16 %i.do to i32
  %i.dq = sub nsw i32 %.063106, %i.dp
  %i.dr = add nsw i32 %i.dq, %i.dn                ; 3 uses
  %i.ds = icmp sgt i32 %i.dr, -1
  br i1 %i.ds, label %_ZNK9VoxelArea8containsEi.exit, label %_ZNK9VoxelArea8containsEi.exit.thread

_ZNK9VoxelArea8containsEi.exit:                   ; preds = %.lr.ph
  %i.dt = mul i32 %i.dh, %i.df
  %i.du = load i32, ptr %i.ax, align 4, !tbaa !126
  %i.dv = mul i32 %i.dt, %i.du
  %i.dw = icmp ult i32 %i.dr, %i.dv
  br i1 %i.dw, label %bb.p, label %_ZNK9VoxelArea8containsEi.exit.thread

bb.p:                                             ; preds = %_ZNK9VoxelArea8containsEi.exit
  %i.dx = load ptr, ptr %i.ay, align 8, !tbaa !114 ; 4 uses
  %i.dy = load ptr, ptr %i.az, align 8, !tbaa !114 ; 3 uses
  %i.dz = load ptr, ptr %i.ba, align 8, !tbaa !117
  %i.ea = zext nneg i32 %i.dr to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.ea ; 2 uses
  %i.ec = load i16, ptr %i.eb, align 4, !tbaa !119 ; 7 uses
  %i.ed = ptrtoint ptr %i.dy to i64               ; 2 uses
  %i.ee = ptrtoint ptr %i.dx to i64
  %i.ef = sub i64 %i.ed, %i.ee                    ; 3 uses
  %i.eg = ashr i64 %i.ef, 3                       ; 2 uses
  %i.eh = icmp sgt i64 %i.eg, 0
  br i1 %i.eh, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p
  %i.ei = and i64 %i.ef, -8
  %scevgep.i.i.i = getelementptr i8, ptr %i.dx, i64 %i.ei ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.eg, %.lr.ph.i.i.i ], [ %i.ev, %bb.u ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i ], [ %i.eu, %bb.u ] ; 9 uses
  %i.ej = load i16, ptr %.sroa.032.051.i.i.i, align 2, !tbaa !85
  %i.ek = icmp eq i16 %i.ej, %i.ec
  br i1 %i.ek, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 2
  %i.em = load i16, ptr %i.el, align 2, !tbaa !85
  %i.en = icmp eq i16 %i.em, %i.ec
  br i1 %i.en, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !85
  %i.eq = icmp eq i16 %i.ep, %i.ec
  br i1 %i.eq, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit140, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 6
  %i.es = load i16, ptr %i.er, align 2, !tbaa !85
  %i.et = icmp eq i16 %i.es, %i.ec
  br i1 %i.et, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit142, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.ev = add nsw i64 %.052.i.i.i, -1
  %i.ew = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.ew, label %bb.q, label %._crit_edge.loopexit.i.i.i, !llvm.loop !1

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.u
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.ed, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.p
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.ef, %bb.p ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.dx, %bb.p ] ; 5 uses
  %i.ex = ashr exact i64 %.pre-phi61.i.i.i, 1
  switch i64 %i.ex, label %_ZNK9VoxelArea8containsEi.exit.thread [
    i64 3, label %bb.v
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i
  %i.ey = load i16, ptr %.sroa.032.0.lcssa.i.i.i, align 2, !tbaa !85
  %i.ez = icmp eq i16 %i.ey, %i.ec
  br i1 %i.ez, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, label %bb.w
end_hunk_0
begin_hunk_1_@_ZN7OrePuffC2Ev:bb.a
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 129
  store i8 1, ptr %i.j, align 1, !tbaa !96
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 0, ptr %i.l, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 2.500000e+02, float 2.500000e+02>, ptr %i.m, align 8, !tbaa !89
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200
  store float 2.500000e+02, ptr %i.n, align 8, !tbaa !97
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i32 12345, ptr %i.o, align 4, !tbaa !98
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i16 3, ptr %i.p, align 8, !tbaa !99
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 212
  store <2 x float> <float 6.000000e-01, float 2.000000e+00>, ptr %i.q, align 4, !tbaa !89
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 220
  store i32 1, ptr %i.r, align 4, !tbaa !100
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr null, ptr %i.s, align 8, !tbaa !92
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %i.u, ptr %i.t, align 8, !tbaa !101
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 1, ptr %i.v, align 8, !tbaa !102
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.x, align 8, !tbaa !103
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV7OrePuff, i64 16), ptr %0, align 8, !tbaa !13
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV7OrePuff, i64 72), ptr %i.d, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 288
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 2.500000e+02, float 2.500000e+02>, ptr %i.z, align 8, !tbaa !89
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 304
  store float 2.500000e+02, ptr %i.aa, align 8, !tbaa !97
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 308
  store i32 12345, ptr %i.ab, align 4, !tbaa !98
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i16 3, ptr %i.ac, align 8, !tbaa !99
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 316
  store <2 x float> <float 6.000000e-01, float 2.000000e+00>, ptr %i.ad, align 4, !tbaa !89
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 324
  store i32 1, ptr %i.ae, align 4, !tbaa !100
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 328
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 2.500000e+02, float 2.500000e+02>, ptr %i.af, align 8, !tbaa !89
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 344
  store float 2.500000e+02, ptr %i.ag, align 8, !tbaa !97
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 348
  store i32 12345, ptr %i.ah, align 4, !tbaa !98
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i16 3, ptr %i.ai, align 8, !tbaa !99
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 356
  store <2 x float> <float 6.000000e-01, float 2.000000e+00>, ptr %i.aj, align 4, !tbaa !89
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 364
  store i32 1, ptr %i.ak, align 4, !tbaa !100
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
  br i1 %.not, label %bb.b, label %._crit_edge137

._crit_edge137:                                   ; preds = %bb.a
  %.pre138 = sext i16 %.sroa.4.0.extract.trunc to i32
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
  store ptr %i.v, ptr %i.x, align 8, !tbaa !128
  %i.y = call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #20 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 328
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %i.y, ptr noundef nonnull %i.z, i32 noundef 0, i32 noundef %i.o, i32 noundef %i.s, i32 noundef 1)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 376
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !129
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

bb.j:                                             ; preds = %._crit_edge137, %bb.e
  %.pre-phi = phi i32 [ %.pre138, %._crit_edge137 ], [ %i.p, %bb.e ]
  %i.ae = phi ptr [ %i.k, %._crit_edge137 ], [ %.pre, %bb.e ] ; 2 uses
  %i.af = add nsw i32 %i.i, %2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !124
  %i.ah = sitofp nsz i16 %.sroa.052.0.extract.trunc to float ; 3 uses
  %i.ai = sitofp nsz i16 %.sroa.7.0.extract.trunc to float ; 3 uses
  %i.aj = call noundef ptr @_ZN5Noise10noiseMap2DEffPf(ptr noundef nonnull align 8 dereferenceable(88) %i.ae, float noundef %i.ah, float noundef %i.ai, ptr noundef null) ; 0 uses
  %.not77120 = icmp sgt i16 %.sroa.7.0.extract.trunc, %.sroa.4.0.extract.trunc
  br i1 %.not77120, label %._crit_edge126.split, label %.lr.ph125

.lr.ph125:                                        ; preds = %bb.j
  %i.ak = sext i16 %.sroa.052.0.extract.trunc to i32 ; 2 uses
  %.not78113 = icmp sgt i16 %.sroa.052.0.extract.trunc, %.sroa.049.0.extract.trunc
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
  br i1 %.not78113, label %._crit_edge126.split, label %.lr.ph118.preheader

.lr.ph118.preheader:                              ; preds = %.lr.ph125
  %i.bc = sext i16 %.sroa.049.0.extract.trunc to i32
  %i.bd = sext i16 %.sroa.7.0.extract.trunc to i32 ; 2 uses
  %i.be = add nsw i32 %i.bc, 1
  %i.bf = sub nsw i32 %i.be, %i.ak
  %smax133 = call i32 @llvm.smax.i32(i32 %.pre-phi, i32 %i.bd)
  br label %.lr.ph118

._crit_edge126.split:                             ; preds = %._crit_edge, %.lr.ph125, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  ret void

.lr.ph118:                                        ; preds = %.lr.ph118.preheader, %._crit_edge
  %.066123 = phi i32 [ %i.bi, %._crit_edge ], [ %i.bd, %.lr.ph118.preheader ] ; 3 uses
  %.067122 = phi i64 [ %i.ft, %._crit_edge ], [ 0, %.lr.ph118.preheader ] ; 2 uses
  %.069121 = phi i1 [ %.3, %._crit_edge ], [ false, %.lr.ph118.preheader ]
  %i.bg = trunc i64 %.067122 to i32
  %i.bh = add i32 %i.bf, %i.bg
  br label %bb.k

._crit_edge:                                      ; preds = %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread
  %i.bi = add nsw i32 %.066123, 1
  %exitcond134.not = icmp eq i32 %.066123, %smax133
  br i1 %exitcond134.not, label %._crit_edge126.split, label %.lr.ph118, !llvm.loop !168

bb.k:                                             ; preds = %.lr.ph118, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread
  %.064116 = phi i32 [ %i.ak, %.lr.ph118 ], [ %i.fs, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread ] ; 2 uses
  %.168115 = phi i64 [ %.067122, %.lr.ph118 ], [ %i.ft, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread ] ; 5 uses
  %.170114 = phi i1 [ %.069121, %.lr.ph118 ], [ %.3, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread ] ; 5 uses
  %i.bj = load ptr, ptr %i.j, align 8, !tbaa !92
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 80
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !125
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.168115
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !89 ; 2 uses
  %i.bo = load float, ptr %i.al, align 4, !tbaa !88
  %i.bp = fcmp nsz olt float %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not79, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = load i64, ptr %i.am, align 8, !tbaa !104
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %.168115
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !85 ; 3 uses
  %i.bu = zext i16 %i.bt to i64
  %i.bv = load i64, ptr %i.ao, align 8, !tbaa !102 ; 2 uses
  %i.bw = urem i64 %i.bu, %i.bv                   ; 2 uses
  %i.bx = load ptr, ptr %i.an, align 8, !tbaa !101
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !106 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !85
  %i.cd = icmp eq i16 %i.bt, %i.cc
  br i1 %i.cd, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, label %.lr.ph.i.i.i.i

bb.p:                                             ; preds = %bb.q
  %i.ce = icmp eq i16 %i.bt, %i.ch
  br i1 %i.ce, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, label %.lr.ph.i.i.i.i, !llvm.loop !0

.lr.ph.i.i.i.i:                                   ; preds = %bb.o, %bb.p
  %.020.i.i.i.i = phi ptr [ %i.cf, %bb.p ], [ %i.ca, %bb.o ]
  %i.cf = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !106 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !85 ; 2 uses
  %i.ci = zext i16 %i.ch to i64
  %i.cj = urem i64 %i.ci, %i.bv
  %.not19.i.i.i.i = icmp eq i64 %i.cj, %i.bw
  br i1 %.not19.i.i.i.i, label %bb.p, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !0

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.q
  br label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, !llvm.loop !0

_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit: ; preds = %bb.p, %bb.o, %bb.m, %bb.l
  %.pre136 = load ptr, ptr %i.ap, align 8, !tbaa !128 ; 2 uses
  br i1 %.170114, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit
  %i.ck = call noundef ptr @_ZN5Noise10noiseMap2DEffPf(ptr noundef nonnull align 8 dereferenceable(88) %.pre136, float noundef %i.ah, float noundef %i.ai, ptr noundef null) ; 0 uses
  %i.cl = load ptr, ptr %i.aq, align 8, !tbaa !129
  %i.cm = call noundef ptr @_ZN5Noise10noiseMap2DEffPf(ptr noundef nonnull align 8 dereferenceable(88) %i.cl, float noundef %i.ah, float noundef %i.ai, ptr noundef null) ; 0 uses
  %.pre135 = load ptr, ptr %i.ap, align 8, !tbaa !128
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit
  %i.cn = phi ptr [ %.pre135, %bb.r ], [ %.pre136, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 80
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !125
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %.168115
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !89 ; 3 uses
  %i.cs = load ptr, ptr %i.aq, align 8, !tbaa !129
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 80
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !125
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %.168115
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !89 ; 3 uses
  %i.cx = load i32, ptr %i.ar, align 8, !tbaa !87 ; 2 uses
  %i.cy = and i32 %i.cx, 2
  %.not80 = icmp eq i32 %i.cy, 0
  br i1 %.not80, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cz = load float, ptr %i.al, align 4, !tbaa !88
  %i.da = fsub nsz float %i.bn, %i.cz             ; 3 uses
  %i.db = fcmp nsz olt float %i.da, 1.000000e+00  ; 2 uses
  %i.dc = fmul nsz float %i.cr, %i.da
  %i.dd = fmul nsz float %i.cw, %i.da
  %.062 = select nsz i1 %i.db, float %i.dc, float %i.cr
  %.061 = select nsz i1 %i.db, float %i.dd, float %i.cw
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.163 = phi nsz float [ %i.cr, %bb.s ], [ %.062, %bb.t ]
  %.1 = phi nsz float [ %i.cw, %bb.s ], [ %.061, %bb.t ]
  %i.de = fsub nsz float %i.as, %.1
  %i.df = fptosi float %i.de to i32               ; 3 uses
  %i.dg = fadd nsz float %.163, %i.as
  %i.dh = fptosi float %i.dg to i32               ; 3 uses
  %i.di = and i32 %i.cx, 4
  %.not81 = icmp ne i32 %i.di, 0
  %i.dj = icmp sgt i32 %i.df, %i.dh
  %or.cond = select i1 %.not81, i1 %i.dj, i1 false ; 2 uses
  %spec.select = select i1 %or.cond, i32 %i.dh, i32 %i.df ; 2 uses
  %spec.select100 = select i1 %or.cond, i32 %i.df, i32 %i.dh ; 2 uses
  %.not82111 = icmp sgt i32 %spec.select, %spec.select100
  br i1 %.not82111, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u, %_ZNK9VoxelArea8containsEi.exit.thread
  %.0112 = phi i32 [ %i.fr, %_ZNK9VoxelArea8containsEi.exit.thread ], [ %spec.select, %bb.u ] ; 3 uses
  %i.dk = load i16, ptr %i.au, align 4, !tbaa !109
  %i.dl = sext i16 %i.dk to i32
  %i.dm = sub nsw i32 %.066123, %i.dl
  %i.dn = load i32, ptr %i.aw, align 4, !tbaa !110 ; 2 uses
  %i.do = mul nsw i32 %i.dm, %i.dn
  %i.dp = load i32, ptr %i.av, align 4, !tbaa !111 ; 2 uses
  %sext = shl i32 %.0112, 16
  %i.dq = ashr exact i32 %sext, 16
  %i.dr = load i16, ptr %i.ax, align 2, !tbaa !112
  %i.ds = sext i16 %i.dr to i32
  %i.dt = add i32 %i.do, %i.dq
  %i.du = sub i32 %i.dt, %i.ds
  %i.dv = mul i32 %i.du, %i.dp
  %i.dw = load i16, ptr %i.at, align 4, !tbaa !113
  %i.dx = sext i16 %i.dw to i32
  %i.dy = sub nsw i32 %.064116, %i.dx
  %i.dz = add nsw i32 %i.dy, %i.dv                ; 3 uses
  %i.ea = icmp sgt i32 %i.dz, -1
  br i1 %i.ea, label %_ZNK9VoxelArea8containsEi.exit, label %_ZNK9VoxelArea8containsEi.exit.thread

_ZNK9VoxelArea8containsEi.exit:                   ; preds = %.lr.ph
  %i.eb = mul i32 %i.dp, %i.dn
  %i.ec = load i32, ptr %i.ay, align 4, !tbaa !126
  %i.ed = mul i32 %i.eb, %i.ec
  %i.ee = icmp ult i32 %i.dz, %i.ed
  br i1 %i.ee, label %bb.v, label %_ZNK9VoxelArea8containsEi.exit.thread

bb.v:                                             ; preds = %_ZNK9VoxelArea8containsEi.exit
  %i.ef = load ptr, ptr %i.az, align 8, !tbaa !114 ; 4 uses
  %i.eg = load ptr, ptr %i.ba, align 8, !tbaa !114 ; 3 uses
  %i.eh = load ptr, ptr %i.bb, align 8, !tbaa !117
  %i.ei = zext nneg i32 %i.dz to i64
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.ei ; 2 uses
  %i.ek = load i16, ptr %i.ej, align 4, !tbaa !119 ; 7 uses
  %i.el = ptrtoint ptr %i.eg to i64               ; 2 uses
  %i.em = ptrtoint ptr %i.ef to i64
  %i.en = sub i64 %i.el, %i.em                    ; 3 uses
  %i.eo = ashr i64 %i.en, 3                       ; 2 uses
  %i.ep = icmp sgt i64 %i.eo, 0
  br i1 %i.ep, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.v
  %i.eq = and i64 %i.en, -8
  %scevgep.i.i.i = getelementptr i8, ptr %i.ef, i64 %i.eq ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.aa, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.eo, %.lr.ph.i.i.i ], [ %i.fd, %bb.aa ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.ef, %.lr.ph.i.i.i ], [ %i.fc, %bb.aa ] ; 9 uses
  %i.er = load i16, ptr %.sroa.032.051.i.i.i, align 2, !tbaa !85
  %i.es = icmp eq i16 %i.er, %i.ek
  br i1 %i.es, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 2
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !85
  %i.ev = icmp eq i16 %i.eu, %i.ek
  br i1 %i.ev, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !85
  %i.ey = icmp eq i16 %i.ex, %i.ek
  br i1 %i.ey, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit150, label %bb.z

end_hunk_1
begin_hunk_2_@_ZNK7OreVein5cloneEv:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV7OreVein, i64 72), ptr %i.e, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 296 ; 2 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !133
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 304 ; 2 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !135
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.aw, i64 40, i1 false), !tbaa.struct !91
  store ptr null, ptr %i.t, align 8, !tbaa !92
  %i.ax = icmp eq ptr %0, %i.a
  br i1 %i.ax, label %_ZNK3Ore7cloneToEPS_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @_ZNSt10_HashtableIttSaItENSt8__detail9_IdentityESt8equal_toItESt4hashItENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE18_M_assign_elementsIRKSC_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.u, ptr noundef nonnull align 8 dereferenceable(56) %i.ay)
  br label %_ZNK3Ore7cloneToEPS_.exit

_ZNK3Ore7cloneToEPS_.exit:                        ; preds = %bb.c, %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ba = load float, ptr %i.az, align 8, !tbaa !136
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store float %i.ba, ptr %i.bb, align 8, !tbaa !136
  store ptr null, ptr %i.aa, align 8, !tbaa !133
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !135
  store i32 %i.bd, ptr %i.ab, align 8, !tbaa !135
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
  %i.r = load i32, ptr %i.q, align 8, !tbaa !135
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
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !133  ; 3 uses
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
  store ptr %i.ab, ptr %i.s, align 8, !tbaa !133
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i32 %i.n, ptr %i.ad, align 8, !tbaa !135
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
  %smax127 = call i32 @llvm.smax.i32(i32 %.pre-phi131, i32 %.pre-phi)
  br label %.preheader89

.preheader89:                                     ; preds = %.preheader89.preheader, %._crit_edge108.split
  %.062115 = phi i32 [ %i.bf, %._crit_edge108.split ], [ %.pre-phi, %.preheader89.preheader ] ; 4 uses
  %.063114 = phi i64 [ %i.fl, %._crit_edge108.split ], [ 0, %.preheader89.preheader ]
  %.064113 = phi i1 [ %.4, %._crit_edge108.split ], [ false, %.preheader89.preheader ]
  %i.ba = sub nsw i32 %.062115, %.pre-phi
  %i.bb = mul nuw nsw i32 %i.ba, %i.j
  %i.bc = sub i32 %i.bb, %i.h
  br label %.preheader

._crit_edge117.split:                             ; preds = %._crit_edge108.split, %.preheader89.lr.ph, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  ret void

.preheader:                                       ; preds = %.preheader89, %._crit_edge
  %.060107 = phi i32 [ %i.l, %.preheader89 ], [ %i.bg, %._crit_edge ] ; 3 uses
  %.1106 = phi i64 [ %.063114, %.preheader89 ], [ %i.fl, %._crit_edge ] ; 2 uses
  %.165105 = phi i1 [ %.064113, %.preheader89 ], [ %.4, %._crit_edge ]
  %i.bd = trunc i64 %.1106 to i32
  %i.be = add i32 %i.az, %i.bd
  br label %bb.l

._crit_edge108.split:                             ; preds = %._crit_edge
  %i.bf = add nsw i32 %.062115, 1
  %exitcond128.not = icmp eq i32 %.062115, %smax127
  br i1 %exitcond128.not, label %._crit_edge117.split, label %.preheader89, !llvm.loop !181

._crit_edge:                                      ; preds = %_ZNK9VoxelArea8containsEi.exit.thread
  %i.bg = add nsw i32 %.060107, 1
  %exitcond126.not = icmp eq i32 %.060107, %i.k
  br i1 %exitcond126.not, label %._crit_edge108.split, label %.preheader, !llvm.loop !182

bb.l:                                             ; preds = %.preheader, %_ZNK9VoxelArea8containsEi.exit.thread
  %.0101 = phi i32 [ %i.h, %.preheader ], [ %i.fk, %_ZNK9VoxelArea8containsEi.exit.thread ] ; 3 uses
  %.2100 = phi i64 [ %.1106, %.preheader ], [ %i.fl, %_ZNK9VoxelArea8containsEi.exit.thread ] ; 3 uses
  %.26699 = phi i1 [ %.165105, %.preheader ], [ %.4, %_ZNK9VoxelArea8containsEi.exit.thread ] ; 8 uses
  %i.bh = load i16, ptr %i.ah, align 4, !tbaa !109
  %i.bi = sext i16 %i.bh to i32
  %i.bj = sub nsw i32 %.062115, %i.bi
  %i.bk = load i32, ptr %i.aj, align 4, !tbaa !110 ; 2 uses
  %i.bl = mul nsw i32 %i.bj, %i.bk
  %i.bm = load i32, ptr %i.ai, align 4, !tbaa !111 ; 2 uses
  %i.bn = load i16, ptr %i.ak, align 2, !tbaa !112
  %i.bo = sext i16 %i.bn to i32
  %i.bp = add i32 %i.bl, %.060107
  %i.bq = sub i32 %i.bp, %i.bo
  %i.br = mul i32 %i.bq, %i.bm
  %i.bs = load i16, ptr %i.ag, align 4, !tbaa !113
  %i.bt = sext i16 %i.bs to i32
  %i.bu = sub nsw i32 %.0101, %i.bt
  %i.bv = add nsw i32 %i.bu, %i.br                ; 3 uses
  %i.bw = icmp sgt i32 %i.bv, -1
  br i1 %i.bw, label %_ZNK9VoxelArea8containsEi.exit, label %_ZNK9VoxelArea8containsEi.exit.thread

_ZNK9VoxelArea8containsEi.exit:                   ; preds = %bb.l
  %i.bx = mul i32 %i.bm, %i.bk
  %i.by = load i32, ptr %i.al, align 4, !tbaa !126
  %i.bz = mul i32 %i.bx, %i.by
  %i.ca = icmp ult i32 %i.bv, %i.bz
  br i1 %i.ca, label %bb.m, label %_ZNK9VoxelArea8containsEi.exit.thread

bb.m:                                             ; preds = %_ZNK9VoxelArea8containsEi.exit
  %i.cb = load ptr, ptr %i.am, align 8, !tbaa !114 ; 4 uses
  %i.cc = load ptr, ptr %i.an, align 8, !tbaa !114 ; 3 uses
  %i.cd = load ptr, ptr %i.ao, align 8, !tbaa !117
  %i.ce = zext nneg i32 %i.bv to i64              ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 4, !tbaa !119 ; 7 uses
  %i.ch = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.ci = ptrtoint ptr %i.cb to i64
  %i.cj = sub i64 %i.ch, %i.ci                    ; 3 uses
  %i.ck = ashr i64 %i.cj, 3                       ; 2 uses
  %i.cl = icmp sgt i64 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m
  %i.cm = and i64 %i.cj, -8
  %scevgep.i.i.i = getelementptr i8, ptr %i.cb, i64 %i.cm ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.ck, %.lr.ph.i.i.i ], [ %i.cz, %bb.r ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i ], [ %i.cy, %bb.r ] ; 9 uses
  %i.cn = load i16, ptr %.sroa.032.051.i.i.i, align 2, !tbaa !85
  %i.co = icmp eq i16 %i.cn, %i.cg
  br i1 %i.co, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 2
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !85
  %i.cr = icmp eq i16 %i.cq, %i.cg
  br i1 %i.cr, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !85
  %i.cu = icmp eq i16 %i.ct, %i.cg
  br i1 %i.cu, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit142, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 6
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !85
  %i.cx = icmp eq i16 %i.cw, %i.cg
  br i1 %i.cx, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit144, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.cz = add nsw i64 %.052.i.i.i, -1
  %i.da = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.da, label %bb.n, label %._crit_edge.loopexit.i.i.i, !llvm.loop !1

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.r
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.ch, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.m
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.cj, %bb.m ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.cb, %bb.m ] ; 5 uses
  %i.db = ashr exact i64 %.pre-phi61.i.i.i, 1
  switch i64 %i.db, label %_ZNK9VoxelArea8containsEi.exit.thread [
    i64 3, label %bb.s
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.s:                                             ; preds = %._crit_edge.i.i.i
  %i.dc = load i16, ptr %.sroa.032.0.lcssa.i.i.i, align 2, !tbaa !85
  %i.dd = icmp eq i16 %i.dc, %i.cg
  br i1 %i.dd, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 2
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.t
  %.sroa.032.1.i.i.i = phi ptr [ %i.de, %bb.t ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.df = load i16, ptr %.sroa.032.1.i.i.i, align 2, !tbaa !85
  %i.dg = icmp eq i16 %i.df, %i.cg
  br i1 %i.dg, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, label %bb.u

bb.u:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 2
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.u
  %.sroa.032.2.i.i.i = phi ptr [ %i.dh, %bb.u ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.di = load i16, ptr %.sroa.032.2.i.i.i, align 2, !tbaa !85
  %i.dj = icmp eq i16 %i.di, %i.cg
  %spec.select.i.i.i = select i1 %i.dj, ptr %.sroa.032.2.i.i.i, ptr %i.cc
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.o
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 2
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit142: ; preds = %bb.p
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit144: ; preds = %bb.q
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 6
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit: ; preds = %bb.n, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit142, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit144, %bb.s, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge57.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.s ], [ %i.dm, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit144 ], [ %i.dl, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit142 ], [ %i.dk, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.n ]
  %.not87 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.cc
  br i1 %.not87, label %_ZNK9VoxelArea8containsEi.exit.thread, label %bb.v

bb.v:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit
  br i1 %.not77, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dn = load i64, ptr %i.ap, align 8, !tbaa !104
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dp = add i32 %i.bc, %.0101
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.dq
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !85 ; 3 uses
  %i.dt = zext i16 %i.ds to i64
  %i.du = load i64, ptr %i.ar, align 8, !tbaa !102 ; 2 uses
  %i.dv = urem i64 %i.dt, %i.du                   ; 2 uses
  %i.dw = load ptr, ptr %i.aq, align 8, !tbaa !101
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dv
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i.i, label %_ZNK9VoxelArea8containsEi.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !106 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !85
  %i.ec = icmp eq i16 %i.ds, %i.eb
  br i1 %i.ec, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, label %.lr.ph.i.i.i.i

bb.z:                                             ; preds = %bb.aa
end_hunk_2
begin_hunk_3_@_ZN10OreStratumC2Ev:bb.a
_ZN6ObjDefD2Ev.exit.i:                            ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 129
  store i8 0, ptr %i.j, align 1, !tbaa !96
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 0, ptr %i.l, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 2.500000e+02, float 2.500000e+02>, ptr %i.m, align 8, !tbaa !89
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200
  store float 2.500000e+02, ptr %i.n, align 8, !tbaa !97
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i32 12345, ptr %i.o, align 4, !tbaa !98
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i16 3, ptr %i.p, align 8, !tbaa !99
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 212
  store <2 x float> <float 6.000000e-01, float 2.000000e+00>, ptr %i.q, align 4, !tbaa !89
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 220
  store i32 1, ptr %i.r, align 4, !tbaa !100
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr null, ptr %i.s, align 8, !tbaa !92
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %i.u, ptr %i.t, align 8, !tbaa !101
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 1, ptr %i.v, align 8, !tbaa !102
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.x, align 8, !tbaa !103
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV10OreStratum, i64 16), ptr %0, align 8, !tbaa !13
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV10OreStratum, i64 72), ptr %i.d, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 288
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 2.500000e+02, float 2.500000e+02>, ptr %i.z, align 8, !tbaa !89
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 304
  store float 2.500000e+02, ptr %i.aa, align 8, !tbaa !97
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 308
  store i32 12345, ptr %i.ab, align 4, !tbaa !98
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i16 3, ptr %i.ac, align 8, !tbaa !99
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 316
  store <2 x float> <float 6.000000e-01, float 2.000000e+00>, ptr %i.ad, align 4, !tbaa !89
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 324
  store i32 1, ptr %i.ae, align 4, !tbaa !100
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr null, ptr %i.af, align 8, !tbaa !138
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
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !138 ; 2 uses
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
  store ptr %i.ai, ptr %i.aa, align 8, !tbaa !138
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
  %i.bo = call i16 @llvm.smax.i16(i16 %.sroa.7.0.extract.trunc, i16 %.sroa.9.0.extract.trunc)
  %smax128 = sext i16 %i.bo to i32
  br label %.lr.ph112

._crit_edge118.split:                             ; preds = %._crit_edge, %.lr.ph117, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  ret void

.lr.ph112:                                        ; preds = %.lr.ph112.preheader, %._crit_edge
  %.063115 = phi i32 [ %i.br, %._crit_edge ], [ %i.bl, %.lr.ph112.preheader ] ; 3 uses
  %.064114 = phi i64 [ %i.fw, %._crit_edge ], [ 0, %.lr.ph112.preheader ] ; 2 uses
  %i.bp = trunc i64 %.064114 to i32
  %i.bq = add i32 %i.bn, %i.bp
  br label %bb.n

._crit_edge:                                      ; preds = %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread
  %i.br = add nsw i32 %.063115, 1
  %exitcond129.not = icmp eq i32 %.063115, %smax128
  br i1 %exitcond129.not, label %._crit_edge118.split, label %.lr.ph112, !llvm.loop !186

bb.n:                                             ; preds = %.lr.ph112, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread
  %.061110 = phi i32 [ %i.ap, %.lr.ph112 ], [ %i.fv, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread ] ; 2 uses
  %.1109 = phi i64 [ %.064114, %.lr.ph112 ], [ %i.fw, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread ] ; 4 uses
  br i1 %.not77, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = load i64, ptr %i.aq, align 8, !tbaa !104
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %.1109
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !85 ; 3 uses
  %i.bw = zext i16 %i.bv to i64
  %i.bx = load i64, ptr %i.as, align 8, !tbaa !102 ; 2 uses
  %i.by = urem i64 %i.bw, %i.bx                   ; 2 uses
  %i.bz = load ptr, ptr %i.ar, align 8, !tbaa !101
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.by
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !106 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !85
  %i.cf = icmp eq i16 %i.bv, %i.ce
  br i1 %i.cf, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, label %.lr.ph.i.i.i.i

bb.r:                                             ; preds = %bb.s
  %i.cg = icmp eq i16 %i.bv, %i.cj
  br i1 %i.cg, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, label %.lr.ph.i.i.i.i, !llvm.loop !0

.lr.ph.i.i.i.i:                                   ; preds = %bb.q, %bb.r
  %.020.i.i.i.i = phi ptr [ %i.ch, %bb.r ], [ %i.cc, %bb.q ]
  %i.ch = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !106 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !85 ; 2 uses
  %i.ck = zext i16 %i.cj to i64
  %i.cl = urem i64 %i.ck, %i.bx
  %.not19.i.i.i.i = icmp eq i64 %i.cl, %i.by
  br i1 %.not19.i.i.i.i, label %bb.r, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !0

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.s
  br label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, !llvm.loop !0

_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit: ; preds = %bb.r, %bb.q, %bb.o, %bb.n
  %i.cm = load i32, ptr %i.g, align 8, !tbaa !87  ; 2 uses
  %i.cn = and i32 %i.cm, 8
  %.not78 = icmp eq i32 %i.cn, 0
  br i1 %.not78, label %bb.x, label %bb.t

bb.t:                                             ; preds = %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit
  %i.co = and i32 %i.cm, 16
  %.not79 = icmp eq i32 %i.co, 0
  br i1 %.not79, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = load ptr, ptr %i.at, align 8, !tbaa !138
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 80
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !125
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %.1109
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !89
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.cu = load i16, ptr %i.au, align 8, !tbaa !140
  %i.cv = uitofp nsz i16 %i.cu to float
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cw = phi nsz float [ %i.ct, %bb.u ], [ %i.cv, %bb.v ]
  %i.cx = fmul nsz float %i.cw, 5.000000e-01      ; 2 uses
  %i.cy = load ptr, ptr %i.av, align 8, !tbaa !92
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 80
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !125
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %.1109
  %i.dc = load float, ptr %i.db, align 4, !tbaa !89 ; 2 uses
  %i.dd = fsub nsz float %i.dc, %i.cx
  %i.de = call nsz noundef float @llvm.ceil.f32(float %i.dd) ; 2 uses
  %i.df = fcmp nsz olt float %i.de, %i.aw
  %i.dg = select nsz i1 %i.df, float %i.aw, float %i.de
  %i.dh = fptosi float %i.dg to i32
  %i.di = fadd nsz float %i.cx, %i.dc             ; 2 uses
  %i.dj = fcmp nsz ogt float %i.di, %i.ax
  %.82 = select nsz i1 %i.dj, float %i.ax, float %i.di
  %i.dk = fptosi float %.82 to i32
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit, %bb.w
  %.060 = phi i32 [ %i.dh, %bb.w ], [ %i.ay, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit ] ; 2 uses
  %.059 = phi i32 [ %i.dk, %bb.w ], [ %i.az, %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit ] ; 2 uses
  %.not80106 = icmp sgt i32 %.060, %.059
  br i1 %.not80106, label %_ZNSt13unordered_setItSt4hashItESt8equal_toItESaItEE4findERKt.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x, %_ZNK9VoxelArea8containsEi.exit.thread
  %.0107 = phi i32 [ %i.fu, %_ZNK9VoxelArea8containsEi.exit.thread ], [ %.060, %bb.x ] ; 3 uses
  %i.dl = load i32, ptr %i.ba, align 8, !tbaa !84
  %i.dm = call noundef i32 @_ZN9PcgRandom5rangeEii(ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef 1, i32 noundef %i.dl)
  %.not81 = icmp eq i32 %i.dm, 1
  br i1 %.not81, label %bb.y, label %_ZNK9VoxelArea8containsEi.exit.thread

bb.y:                                             ; preds = %.lr.ph
  %i.dn = load i16, ptr %i.bc, align 4, !tbaa !109
  %i.do = sext i16 %i.dn to i32
  %i.dp = sub nsw i32 %.063115, %i.do
  %i.dq = load i32, ptr %i.be, align 4, !tbaa !110 ; 2 uses
  %i.dr = mul nsw i32 %i.dp, %i.dq
  %i.ds = load i32, ptr %i.bd, align 4, !tbaa !111 ; 2 uses
  %sext = shl i32 %.0107, 16
  %i.dt = ashr exact i32 %sext, 16
  %i.du = load i16, ptr %i.bf, align 2, !tbaa !112
  %i.dv = sext i16 %i.du to i32
  %i.dw = add i32 %i.dr, %i.dt
  %i.dx = sub i32 %i.dw, %i.dv
  %i.dy = mul i32 %i.dx, %i.ds
  %i.dz = load i16, ptr %i.bb, align 4, !tbaa !113
  %i.ea = sext i16 %i.dz to i32
  %i.eb = sub nsw i32 %.061110, %i.ea
  %i.ec = add nsw i32 %i.eb, %i.dy                ; 3 uses
  %i.ed = icmp sgt i32 %i.ec, -1
  br i1 %i.ed, label %_ZNK9VoxelArea8containsEi.exit, label %_ZNK9VoxelArea8containsEi.exit.thread

_ZNK9VoxelArea8containsEi.exit:                   ; preds = %bb.y
  %i.ee = mul i32 %i.ds, %i.dq
  %i.ef = load i32, ptr %i.bg, align 4, !tbaa !126
  %i.eg = mul i32 %i.ee, %i.ef
  %i.eh = icmp ult i32 %i.ec, %i.eg
  br i1 %i.eh, label %bb.z, label %_ZNK9VoxelArea8containsEi.exit.thread

bb.z:                                             ; preds = %_ZNK9VoxelArea8containsEi.exit
  %i.ei = load ptr, ptr %i.bh, align 8, !tbaa !114 ; 4 uses
  %i.ej = load ptr, ptr %i.bi, align 8, !tbaa !114 ; 3 uses
  %i.ek = load ptr, ptr %i.bj, align 8, !tbaa !117
  %i.el = zext nneg i32 %i.ec to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.el ; 2 uses
  %i.en = load i16, ptr %i.em, align 4, !tbaa !119 ; 7 uses
  %i.eo = ptrtoint ptr %i.ej to i64               ; 2 uses
  %i.ep = ptrtoint ptr %i.ei to i64
  %i.eq = sub i64 %i.eo, %i.ep                    ; 3 uses
  %i.er = ashr i64 %i.eq, 3                       ; 2 uses
  %i.es = icmp sgt i64 %i.er, 0
  br i1 %i.es, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.z
  %i.et = and i64 %i.eq, -8
  %scevgep.i.i.i = getelementptr i8, ptr %i.ei, i64 %i.et ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ae, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.er, %.lr.ph.i.i.i ], [ %i.fg, %bb.ae ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.ei, %.lr.ph.i.i.i ], [ %i.ff, %bb.ae ] ; 9 uses
  %i.eu = load i16, ptr %.sroa.032.051.i.i.i, align 2, !tbaa !85
  %i.ev = icmp eq i16 %i.eu, %i.en
  br i1 %i.ev, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 2
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !85
  %i.ey = icmp eq i16 %i.ex, %i.en
  br i1 %i.ey, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !85
  %i.fb = icmp eq i16 %i.fa, %i.en
  br i1 %i.fb, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit141, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 6
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !85
  %i.fe = icmp eq i16 %i.fd, %i.en
  br i1 %i.fe, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit143, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.fg = add nsw i64 %.052.i.i.i, -1
end_hunk_3
