Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mg_decoration?download=true
inline.NumInlined: 475
inline.NumDeleted: 264
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN13DecoSchematicD0Ev:bb.a
  %i.c = load i8, ptr %i.b, align 8, !tbaa !100, !range !101, !noundef !102
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN13DecoSchematicD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !103  ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZN13DecoSchematicD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(192) %i.f) #23, !inline_history !104
  br label %_ZN13DecoSchematicD2Ev.exit

_ZN13DecoSchematicD2Ev.exit:                      ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN10DecorationD2Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(329) %0) #23, !inline_history !104
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 336) #25
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZThn56_N13DecoSchematicD0Ev(ptr noundef initializes((-56, -48), (0, 8)) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -56 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV13DecoSchematic, i64 16), ptr %i.a, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13DecoSchematic, i64 72), ptr %0, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.c = load i8, ptr %i.b, align 8, !tbaa !100, !range !101, !noundef !102
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN13DecoSchematicD0Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !103  ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZN13DecoSchematicD0Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(192) %i.f) #23, !inline_history !176
  br label %_ZN13DecoSchematicD0Ev.exit

_ZN13DecoSchematicD0Ev.exit:                      ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN10DecorationD2Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(329) %i.a) #23, !inline_history !176
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(329) %i.a, i64 noundef 336) #25, !inline_history !177
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZNK13DecoSchematic5cloneEv(ptr noundef nonnull align 8 dereferenceable(329) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(336) ptr @_Znwm(i64 noundef 336) #26 ; 36 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.a, i8 0, i64 336, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV6ObjDef, i64 16), ptr %i.a, align 16, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 4 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !78
  store i8 0, ptr %i.c, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  invoke void @_ZN12NodeResolverC2Ev(ptr noundef nonnull align 8 dereferenceable(73) %i.d)
          to label %bb.c unwind label %bb.b, !inline_history !178

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV6ObjDef, i64 16), ptr %i.a, align 16, !tbaa !12
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !51   ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.c
  br i1 %i.g, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.c, align 8, !tbaa !52
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #25, !inline_history !179
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 132 ; 2 uses
  store i32 0, ptr %i.j, align 4, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i32 0, ptr %i.k, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 168 ; 2 uses
  store i16 1, ptr %i.m, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 2.500000e+02>, ptr %i.n, align 16, !tbaa !82
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store <2 x float> splat (float 2.500000e+02), ptr %i.p, align 16, !tbaa !82
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  store i32 12345, ptr %i.q, align 8, !tbaa !87
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 204
  store i16 3, ptr %i.r, align 4, !tbaa !88
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store <2 x float> <float 6.000000e-01, float 2.000000e+00>, ptr %i.s, align 16, !tbaa !82
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store i32 1, ptr %i.t, align 8, !tbaa !89
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 250
  store i16 0, ptr %i.v, align 2, !tbaa !90
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 252 ; 2 uses
  store i16 -1, ptr %i.w, align 4, !tbaa !77
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  store ptr %i.y, ptr %i.x, align 16, !tbaa !61
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store i64 1, ptr %i.z, align 8, !tbaa !60
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ab, align 16, !tbaa !91
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV13DecoSchematic, i64 16), ptr %i.a, align 16, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13DecoSchematic, i64 72), ptr %i.d, align 8, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 320 ; 2 uses
  store ptr null, ptr %i.ad, align 16, !tbaa !103
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 328 ; 2 uses
  store i8 0, ptr %i.ae, align 8, !tbaa !100
  tail call void @_ZNK6ObjDef7cloneToEPS_(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull %i.a)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ag = load <2 x i32>, ptr %i.af, align 4, !tbaa !81
  store <2 x i32> %i.ag, ptr %i.j, align 4, !tbaa !81
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ai = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorItSaItEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.ah) ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.ak = load i16, ptr %i.aj, align 4, !tbaa !77
  store i16 %i.ak, ptr %i.w, align 4, !tbaa !77
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.am = load <2 x i16>, ptr %i.al, align 8, !tbaa !59
  store <2 x i16> %i.am, ptr %i.m, align 8, !tbaa !59
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.ao = load i16, ptr %i.an, align 4, !tbaa !50
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  store i16 %i.ao, ptr %i.ap, align 4, !tbaa !50
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !56
  store float %i.ar, ptr %i.n, align 16, !tbaa !56
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 180
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.o, ptr noundef nonnull align 4 dereferenceable(40) %i.as, i64 40, i1 false), !tbaa.struct !83
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.au = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorItSaItEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.at) ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.ax = load <2 x i16>, ptr %i.av, align 8, !tbaa !59
  store <2 x i16> %i.ax, ptr %i.aw, align 8, !tbaa !59
  %i.ay = icmp eq ptr %0, %i.a
  br i1 %i.ay, label %_ZNK10Decoration7cloneToEPS_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @_ZNSt10_HashtableIttSaItENSt8__detail9_IdentityESt8equal_toItESt4hashItENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE18_M_assign_elementsIRKSC_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.x, ptr noundef nonnull align 8 dereferenceable(56) %i.az)
  br label %_ZNK10Decoration7cloneToEPS_.exit

_ZNK10Decoration7cloneToEPS_.exit:                ; preds = %bb.c, %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNK12NodeResolver7cloneToEPS_(ptr noundef nonnull align 8 dereferenceable(73) %i.ba, ptr noundef nonnull %i.d)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !105
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !105
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !103 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !12
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call noundef ptr %i.bi(ptr noundef nonnull align 8 dereferenceable(192) %i.bf) ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK10Decoration7cloneToEPS_.exit
  %i.bl = tail call ptr @__dynamic_cast(ptr nonnull %i.bj, ptr nonnull @_ZTI6ObjDef, ptr nonnull @_ZTI9Schematic, i64 0) #23
  br label %bb.f

.body:                                            ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 336) #25
  resume { ptr, i32 } %i.e

bb.f:                                             ; preds = %_ZNK10Decoration7cloneToEPS_.exit, %bb.e
  %i.bm = phi ptr [ %i.bl, %bb.e ], [ null, %_ZNK10Decoration7cloneToEPS_.exit ]
  store ptr %i.bm, ptr %i.ad, align 16, !tbaa !103
  store i8 1, ptr %i.ae, align 8, !tbaa !100
  ret ptr %i.a
}

declare void @_ZNK12NodeResolver7cloneToEPS_(ptr noundef nonnull align 8 dereferenceable(73), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i64 0, 2) i64 @_ZN13DecoSchematic8generateEP8MMVManipP9PcgRandomN4core8vector3dIsEEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(329) %0, ptr noundef %1, ptr noundef %2, i48 %3, i1 noundef zeroext %4) unnamed_addr #0 align 2 {
bb.a:
  %.sroa.018.0.extract.trunc = trunc i48 %3 to i16 ; 3 uses
  %.sroa.7.0.extract.shift = lshr i48 %3, 16
  %.sroa.7.0.extract.trunc = trunc i48 %.sroa.7.0.extract.shift to i16 ; 3 uses
  %.sroa.15.0.extract.shift = lshr i48 %3, 32
  %.sroa.15.0.extract.trunc = trunc nuw i48 %.sroa.15.0.extract.shift to i16 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN10Decoration18canPlaceDecorationEP8MMVManipN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef %1, i48 %3)
  br i1 %i.d, label %bb.c, label %bb.u

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !54   ; 2 uses
  %i.g = and i32 %i.f, 2
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 166
  %i.i = load i16, ptr %i.h, align 2, !tbaa !181  ; 2 uses
  %i.j = sext i16 %i.i to i32
  %i.k = add nsw i32 %i.j, -1
  %.neg = sdiv i32 %i.k, -2
  %5 = trunc nsw i32 %.neg to i16
  %6 = add i16 %5, %.sroa.7.0.extract.trunc
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 250
  %i.m = load i16, ptr %i.l, align 2, !tbaa !90   ; 2 uses
  br i1 %4, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 166
  %i.o = load i16, ptr %i.n, align 2, !tbaa !181  ; 2 uses
  %.neg46 = add i16 %.sroa.7.0.extract.trunc, 1
  %i.p = add i16 %i.m, %i.o
  %i.q = sub i16 %.neg46, %i.p
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.r = add i16 %i.m, %.sroa.7.0.extract.trunc
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 166
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !181
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  %i.s = phi i16 [ %i.i, %bb.d ], [ %i.o, %bb.f ], [ %.pre, %bb.g ]
  %.sroa.7.0 = phi i16 [ %6, %bb.d ], [ %i.q, %bb.f ], [ %i.r, %bb.g ] ; 3 uses
  %i.t = sext i16 %.sroa.7.0 to i32
  %i.u = sext i16 %i.s to i32
  %i.v = add nsw i32 %i.t, -1
  %i.w = add nsw i32 %i.v, %i.u
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i16, ptr %i.x, align 2, !tbaa !96
  %i.z = sext i16 %i.y to i32
  %i.aa = icmp sgt i32 %i.w, %i.z
  br i1 %i.aa, label %bb.u, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !95
  %i.ad = icmp slt i16 %.sroa.7.0, %i.ac
  br i1 %i.ad, label %bb.u, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !105 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 4
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = tail call noundef i32 @_ZN9PcgRandom5rangeEii(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0, i32 noundef 3)
  %.pre48 = load i32, ptr %i.e, align 4, !tbaa !54
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ai = phi i32 [ %.pre48, %bb.k ], [ %i.f, %bb.j ] ; 3 uses
  %i.aj = phi i32 [ %i.ah, %bb.k ], [ %i.af, %bb.j ] ; 3 uses
  %i.ak = and i32 %i.ai, 1
  %.not38 = icmp eq i32 %i.ak, 0
  br i1 %.not38, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = and i32 %i.aj, -3
  %or.cond = icmp eq i32 %i.al, 0
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 164
  %i.ao = load i16, ptr %i.an, align 4, !tbaa !182
  %i.ap = sext i16 %i.ao to i32
  %i.aq = add nsw i32 %i.ap, -1
  %.neg40 = sdiv i32 %i.aq, -2
  %7 = trunc nsw i32 %.neg40 to i16               ; 2 uses
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %8 = add i16 %7, %.sroa.018.0.extract.trunc
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %9 = add i16 %7, %.sroa.15.0.extract.trunc
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.l
  %.sroa.018.0 = phi i16 [ %8, %bb.n ], [ %.sroa.018.0.extract.trunc, %bb.o ], [ %.sroa.018.0.extract.trunc, %bb.l ] ; 3 uses
  %.sroa.15.0 = phi i16 [ %.sroa.15.0.extract.trunc, %bb.n ], [ %9, %bb.o ], [ %.sroa.15.0.extract.trunc, %bb.l ] ; 3 uses
  %i.ar = and i32 %i.ai, 4
  %.not41 = icmp eq i32 %i.ar, 0
  br i1 %.not41, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %bb.p
  %.pre49 = load ptr, ptr %i.a, align 8, !tbaa !103
  br label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.as = and i32 %i.aj, -3
  %or.cond3 = icmp eq i32 %i.as, 0
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !103 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 168
  %i.av = load i16, ptr %i.au, align 4, !tbaa !183
  %i.aw = sext i16 %i.av to i32
  %i.ax = add nsw i32 %i.aw, -1
  %.neg43 = sdiv i32 %i.ax, -2
  %i.ay = trunc nsw i32 %.neg43 to i16            ; 2 uses
  br i1 %or.cond3, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.az = add i16 %.sroa.15.0, %i.ay
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ba = add i16 %.sroa.018.0, %i.ay
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge, %bb.r, %bb.s
  %i.bb = phi ptr [ %i.at, %bb.r ], [ %i.at, %bb.s ], [ %.pre49, %._crit_edge ]
  %.sroa.018.1 = phi i16 [ %.sroa.018.0, %bb.r ], [ %i.ba, %bb.s ], [ %.sroa.018.0, %._crit_edge ]
  %.sroa.15.1 = phi i16 [ %i.az, %bb.r ], [ %.sroa.15.0, %bb.s ], [ %.sroa.15.0, %._crit_edge ]
  %i.bc = and i32 %i.ai, 16
  %i.bd = icmp ne i32 %i.bc, 0
  %.sroa.15.0.insert.ext = zext i16 %.sroa.15.1 to i48
  %.sroa.15.0.insert.shift = shl nuw i48 %.sroa.15.0.insert.ext, 32
  %.sroa.7.0.insert.ext = zext i16 %.sroa.7.0 to i48
  %.sroa.7.0.insert.shift = shl nuw nsw i48 %.sroa.7.0.insert.ext, 16
  %.sroa.7.0.insert.insert = or disjoint i48 %.sroa.15.0.insert.shift, %.sroa.7.0.insert.shift
  %.sroa.018.0.insert.ext = zext i16 %.sroa.018.1 to i48
  %.sroa.018.0.insert.insert = or disjoint i48 %.sroa.7.0.insert.insert, %.sroa.018.0.insert.ext
  tail call void @_ZN9Schematic12blitToVManipEP8MMVManipN4core8vector3dIsEE8Rotationb(ptr noundef nonnull align 8 dereferenceable(192) %i.bb, ptr noundef nonnull %1, i48 %.sroa.018.0.insert.insert, i32 noundef %i.aj, i1 noundef zeroext %i.bd)
  br label %bb.u

bb.u:                                             ; preds = %bb.i, %bb.h, %bb.b, %bb.a, %bb.t
  %.0 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.h ], [ 1, %bb.t ], [ 0, %bb.i ]
  ret i64 %.0
}

declare void @_ZN9Schematic12blitToVManipEP8MMVManipN4core8vector3dIsEE8Rotationb(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef, i48, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZNK11DecoLSystem5cloneEv(ptr noundef nonnull align 8 dereferenceable(328) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(328) ptr @_Znwm(i64 noundef 328) #26 ; 35 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(328) %i.a, i8 0, i64 328, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV6ObjDef, i64 16), ptr %i.a, align 16, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 4 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !78
  store i8 0, ptr %i.c, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  invoke void @_ZN12NodeResolverC2Ev(ptr noundef nonnull align 8 dereferenceable(73) %i.d)
          to label %bb.c unwind label %bb.b, !inline_history !184

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV6ObjDef, i64 16), ptr %i.a, align 16, !tbaa !12
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !51   ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.c
  br i1 %i.g, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.c, align 8, !tbaa !52
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #25, !inline_history !185
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 132 ; 2 uses
  store i32 0, ptr %i.j, align 4, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i32 0, ptr %i.k, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 168 ; 2 uses
  store i16 1, ptr %i.m, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 2.500000e+02>, ptr %i.n, align 16, !tbaa !82
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store <2 x float> splat (float 2.500000e+02), ptr %i.p, align 16, !tbaa !82
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  store i32 12345, ptr %i.q, align 8, !tbaa !87
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 204
  store i16 3, ptr %i.r, align 4, !tbaa !88
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store <2 x float> <float 6.000000e-01, float 2.000000e+00>, ptr %i.s, align 16, !tbaa !82
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store i32 1, ptr %i.t, align 8, !tbaa !89
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 250
  store i16 0, ptr %i.v, align 2, !tbaa !90
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 252 ; 2 uses
  store i16 -1, ptr %i.w, align 4, !tbaa !77
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  store ptr %i.y, ptr %i.x, align 16, !tbaa !61
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store i64 1, ptr %i.z, align 8, !tbaa !60
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ab, align 16, !tbaa !91
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV11DecoLSystem, i64 16), ptr %i.a, align 16, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV11DecoLSystem, i64 72), ptr %i.d, align 8, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 312 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  tail call void @_ZNK6ObjDef7cloneToEPS_(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull %i.a)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.af = load <2 x i32>, ptr %i.ae, align 4, !tbaa !81
  store <2 x i32> %i.af, ptr %i.j, align 4, !tbaa !81
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ah = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorItSaItEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.ag) ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.aj = load i16, ptr %i.ai, align 4, !tbaa !77
  store i16 %i.aj, ptr %i.w, align 4, !tbaa !77
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.al = load <2 x i16>, ptr %i.ak, align 8, !tbaa !59
  store <2 x i16> %i.al, ptr %i.m, align 8, !tbaa !59
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.an = load i16, ptr %i.am, align 4, !tbaa !50
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  store i16 %i.an, ptr %i.ao, align 4, !tbaa !50
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !56
  store float %i.aq, ptr %i.n, align 16, !tbaa !56
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 180
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.o, ptr noundef nonnull align 4 dereferenceable(40) %i.ar, i64 40, i1 false), !tbaa.struct !83
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.at = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorItSaItEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.as) ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.aw = load <2 x i16>, ptr %i.au, align 8, !tbaa !59
  store <2 x i16> %i.aw, ptr %i.av, align 8, !tbaa !59
  %i.ax = icmp eq ptr %0, %i.a
  br i1 %i.ax, label %_ZNK10Decoration7cloneToEPS_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @_ZNSt10_HashtableIttSaItENSt8__detail9_IdentityESt8equal_toItESt4hashItENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE18_M_assign_elementsIRKSC_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.x, ptr noundef nonnull align 8 dereferenceable(56) %i.ay)
  br label %_ZNK10Decoration7cloneToEPS_.exit

_ZNK10Decoration7cloneToEPS_.exit:                ; preds = %bb.c, %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !110
  store ptr %i.ba, ptr %i.ad, align 8, !tbaa !110
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 320 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !111 ; 4 uses
  %i.be = load ptr, ptr %i.bb, align 16, !tbaa !111 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bd, %i.be
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN7treegen7TreeDefEEaSERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK10Decoration7cloneToEPS_.exit
  %.not7.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 3 uses
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52
  %.not.i.i.i.i = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !81
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bf, align 4, !tbaa !81
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.bj = atomicrmw volatile add ptr %i.bf, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.bb, align 16, !tbaa !111
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.h, %bb.g, %bb.e
  %i.bk = phi ptr [ %i.be, %bb.e ], [ %i.be, %bb.g ], [ %.pr.pre.i.i.i, %bb.h ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 4 uses
  %i.bm = load atomic i64, ptr %i.bl acquire, align 8 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 4294967297
  %i.bo = trunc i64 %i.bm to i32                  ; 2 uses
  br i1 %i.bn, label %bb.j, label %bb.k
end_hunk_0
