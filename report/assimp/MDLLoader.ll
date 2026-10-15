Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/MDLLoader?download=true
inline.NumInlined: 1571
inline.NumDeleted: 754
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN17DeadlyImportErrorC2IJRA1024_cEEEDpOT_:bb.a
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN15DeadlyErrorBaseC2IJERA1024_cEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 1 dereferenceable(1024) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %2, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #28
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #28
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11MDLImporter21ValidateHeader_Quake1EPKNS_3MDL6HeaderE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(159) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.b = load i32, ptr %i.a, align 1
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str.46)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.g = load i32, ptr %i.f, align 1              ; 2 uses
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull @.str.47)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.i:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.l = load i32, ptr %i.k, align 1              ; 2 uses
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.48)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.m:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.n, label %bb.aa

bb.n:                                             ; preds = %bb.m
  %i.r = icmp samesign ugt i32 %i.g, 1024
  br i1 %i.r, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.s = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.s, ptr noundef nonnull @.str.49)
  %.pre = load i32, ptr %i.k, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.t = phi i32 [ %.pre, %bb.o ], [ %i.l, %bb.n ]
  %i.u = icmp sgt i32 %i.t, 2048
  br i1 %i.u, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.v = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.v, ptr noundef nonnull @.str.50)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.w = load i32, ptr %i.a, align 1
  %i.x = icmp sgt i32 %i.w, 256
  br i1 %i.x, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.y = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.y, ptr noundef nonnull @.str.51)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.z = load i32, ptr %i.p, align 8
  %.not14 = icmp eq i32 %i.z, 0
  br i1 %.not14, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load i32, ptr %i.aa, align 1
  %.not15 = icmp eq i32 %i.ab, 6
  br i1 %.not15, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ac = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ac, ptr noundef nonnull @.str.52)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ae = load i32, ptr %i.ad, align 1
  %.not16 = icmp eq i32 %i.ae, 0
  br i1 %.not16, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ag = load i32, ptr %i.af, align 1
  %.not17 = icmp eq i32 %i.ag, 0
  br i1 %.not17, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ai = load i32, ptr %i.ah, align 1
  %.not18 = icmp eq i32 %i.ai, 0
  br i1 %.not18, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.aj = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.aj, ptr noundef nonnull @.str.53)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.w, %bb.y, %bb.z, %bb.m
  ret void

bb.ab:                                            ; preds = %bb.l, %bb.h, %bb.d
  %.sink = phi ptr [ %i.n, %bb.l ], [ %i.i, %bb.h ], [ %i.d, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.o, %bb.l ], [ %i.j, %bb.h ], [ %i.e, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #28
  resume { ptr, i32 } %.pn
}

declare void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #3

declare void @_ZN6Assimp11MDLImporter28CreateTextureARGB8_3DGS_MDL3EPKh(ptr noundef nonnull align 8 dereferenceable(159), ptr noundef) local_unnamed_addr #3

declare void @_ZN6Assimp11MDLImporter23CreateTexture_3DGS_MDL4EPKhjPj(ptr noundef nonnull align 8 dereferenceable(159), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11MDLImporter40SetupMaterialProperties_3DGS_MDL5_Quake1Ev(ptr noundef nonnull align 8 dereferenceable(159) %0) local_unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %1 = alloca %class.aiColor4t, align 16          ; 11 uses
  %2 = alloca %struct.aiString, align 4           ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #31
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 9 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %i.d, ptr %i.g, align 8
  %i.h = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31 ; 3 uses
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.e, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  store ptr %i.h, ptr %i.k, align 8
  %i.l = load ptr, ptr %i.e, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i32 1, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 2, ptr %i.a, align 4
  %i.n = load ptr, ptr %i.e, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = load ptr, ptr %i.p, align 8              ; 5 uses
  %i.r = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef nonnull @.str.56, i32 noundef 0, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.t = load i32, ptr %i.s, align 1
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.w = load i32, ptr %i.v, align 8
  %.not9 = icmp eq i32 %i.w, 0
  br i1 %.not9, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call { <2 x float>, <2 x float> } @_ZN6Assimp11MDLImporter23ReplaceTextureWithColorEPK9aiTexture(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef %i.z) ; 2 uses
  %i.ab = extractvalue { <2 x float>, <2 x float> } %i.aa, 0 ; 2 uses
  %i.ac = extractvalue { <2 x float>, <2 x float> } %i.aa, 1
  %3 = shufflevector <2 x float> %i.ab, <2 x float> %i.ac, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %3, ptr %1, align 16
  %i.ad = extractelement <2 x float> %i.ab, i64 0
  %i.ae = fcmp ord float %i.ad, 0.000000e+00
  br i1 %i.ae, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.af = load ptr, ptr %i.e, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.al) #29
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 1064) #29
  %.pre = load ptr, ptr %i.e, align 8             ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 72
  %.pre10 = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  %i.an = icmp eq ptr %.pre10, null
  br i1 %i.an, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.e, %bb.h
  %i.ao = phi ptr [ %.pre10, %bb.h ], [ %i.ah, %bb.e ]
  call void @_ZdaPv(ptr noundef nonnull %i.ao) #29
  %.pre11 = load ptr, ptr %i.e, align 8
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h
  %i.ap = phi ptr [ %.pre11, %.thread ], [ %.pre, %bb.h ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  store ptr null, ptr %i.aq, align 8
  %i.ar = load ptr, ptr %i.e, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  store i32 0, ptr %i.as, align 8
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  %i.at = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 16) #29
  resume { ptr, i32 } %i.at

bb.k:                                             ; preds = %bb.d
  store <4 x float> splat (float 1.000000e+00), ptr %1, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.au, i8 0, i64 1024, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %i.av, ptr noundef nonnull align 1 dereferenceable(3) @.str.57, i64 3, i1 false)
  store i32 2, ptr %2, align 4
  %i.aw = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull %2, ptr noundef nonnull @.str.58, i32 noundef 1, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.c, %bb.b
  %i.ax = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull %1, i32 noundef 16, ptr noundef nonnull @.str.59, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.ay = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull %1, i32 noundef 16, ptr noundef nonnull @.str.60, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load float, ptr %i.az, align 8
  %i.bb = load <4 x float>, ptr %1, align 16
  %i.bc = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ba, i64 2
  %i.bd = shufflevector <4 x float> %i.bb, <4 x float> %i.bc, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.be = fmul <4 x float> %i.bd, <float 5.000000e-02, float 5.000000e-02, float 5.000000e-02, float 1.000000e+00>
  store <4 x float> %i.be, ptr %1, align 16
  %i.bf = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull %1, i32 noundef 16, ptr noundef nonnull @.str.61, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

declare void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144)) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #16

declare void @_ZN6Assimp3MD217LookupNormalIndexEhR10aiVector3tIfE(i8 noundef zeroext, ptr noundef nonnull align 4 dereferenceable(12)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #17

declare void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

declare { <2 x float>, <2 x float> } @_ZN6Assimp11MDLImporter23ReplaceTextureWithColorEPK9aiTexture(ptr noundef nonnull align 8 dereferenceable(159), ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #16

declare noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN6Assimp11MDLImporter23CreateTexture_3DGS_MDL5EPKhjPj(ptr noundef nonnull align 8 dereferenceable(159), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11MDLImporter30ImportUVCoordinate_3DGS_MDL345ER10aiVector3tIfEPKNS_3MDL13TexCoord_MDL3Ej(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(159) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(12) initializes((0, 12)) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load i32, ptr %i.c, align 1              ; 2 uses
  %.not = icmp ult i32 %3, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %i.d, -1
  %i.f = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull @.str.66)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.017 = phi i32 [ %i.e, %bb.b ], [ %3, %bb.a ]
  %i.g = zext i32 %.017 to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.g
  %i.i = load <2 x i16>, ptr %i.h, align 1
  %i.j = sitofp <2 x i16> %i.i to <2 x float>     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.l = load i32, ptr %i.k, align 8
  %.not20 = icmp eq i32 %i.l, 5
  br i1 %.not20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.n = fadd <2 x float> %i.j, splat (float 5.000000e-01)
  %i.o = load <2 x i32>, ptr %i.m, align 1
  %i.p = sitofp <2 x i32> %i.o to <2 x float>
  %i.q = fdiv <2 x float> %i.n, %i.p              ; 2 uses
  %i.r = extractelement <2 x float> %i.q, i64 1
  %i.s = fsub float 1.000000e+00, %i.r
  %i.t = insertelement <2 x float> %i.q, float %i.s, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = phi <2 x float> [ %i.t, %bb.d ], [ %i.j, %bb.c ]
  store <2 x float> %i.u, ptr %1, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float 0.000000e+00, ptr %i.v, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11MDLImporter27CalculateUVCoordinates_MDL5Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(159) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load i32, ptr %i.c, align 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load i32, ptr %i.g, align 8
  %.not37 = icmp eq i32 %i.h, 0
  br i1 %.not37, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %.not38 = icmp eq i32 %i.m, 0
  br i1 %.not38, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = load i32, ptr %i.p, align 4              ; 2 uses
  %i.s = load i32, ptr %i.q, align 4              ; 2 uses
  %i.t = icmp ne i32 %i.r, 0
  %i.u = icmp ne i32 %i.s, 0
  %or.cond = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.v, ptr noundef nonnull @.str.67)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.k, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.f
  %.133 = phi i32 [ %i.w, %bb.f ], [ %i.s, %bb.d ], [ 1, %bb.e ] ; 2 uses
  %.1 = phi i32 [ %i.m, %bb.f ], [ %i.r, %bb.d ], [ 1, %bb.e ] ; 2 uses
end_hunk_0
