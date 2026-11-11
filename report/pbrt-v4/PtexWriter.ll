Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/PtexWriter?download=true
inline.NumInlined: 1329
inline.NumDeleted: 556
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4Ptex4v2_414PtexWriterBase14writeReductionEP8_IO_FILEPKviNS0_3ResE:bb.a
  %i.o = alloca i8, i64 %i.n, align 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = phi i32 [ %.pre, %bb.b ], [ %i.i, %bb.c ]
  %i.q = phi ptr [ %i.m, %bb.b ], [ %i.o, %bb.c ] ; 3 uses
  %i.r = shl i32 %i.p, %i.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !80
  %.sroa.014.0.extract.trunc.mask = and i16 %4, 255
  %i.u = zext nneg i16 %.sroa.014.0.extract.trunc.mask to i32
  %i.v = shl nuw i32 1, %i.u
  %i.w = zext nneg i16 %.sroa.3.0.extract.shift to i32
  %i.x = shl nuw i32 1, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.z = load i32, ptr %i.y, align 4, !tbaa !73
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.ab = load i16, ptr %i.aa, align 4, !tbaa !75
  %i.ac = zext i16 %i.ab to i32
  call void %i.t(ptr noundef %2, i32 noundef %3, i32 noundef %i.v, i32 noundef %i.x, ptr noundef nonnull %i.q, i32 noundef %i.r, i32 noundef %i.z, i32 noundef %i.ac)
  %i.ad = call noundef i32 @_ZN4Ptex4v2_414PtexWriterBase10writeBlockEP8_IO_FILEPKvi(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef nonnull %i.q, i32 noundef %i.j) ; 0 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.q) #28
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4Ptex4v2_414PtexWriterBase18writeMetaDataBlockEP8_IO_FILERNS1_9MetaEntryE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19
  %i.f = trunc i64 %i.e to i8
  %i.g = add i8 %i.f, 1
  store i8 %i.g, ptr %i.a, align 1, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !106
  %i.j = trunc i32 %i.i to i8
  store i8 %i.j, ptr %i.b, align 1, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !107
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !84
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32
  store i32 %i.r, ptr %i.c, align 4, !tbaa !48
  %i.s = call noundef i32 @_ZN4Ptex4v2_414PtexWriterBase13writeZipBlockEP8_IO_FILEPKvib(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 1, i1 noundef zeroext false) ; 0 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !49
  %i.u = load i8, ptr %i.a, align 1, !tbaa !50
  %i.v = zext i8 %i.u to i32
  %i.w = call noundef i32 @_ZN4Ptex4v2_414PtexWriterBase13writeZipBlockEP8_IO_FILEPKvib(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef %i.t, i32 noundef %i.v, i1 noundef zeroext false) ; 0 uses
  %i.x = call noundef i32 @_ZN4Ptex4v2_414PtexWriterBase13writeZipBlockEP8_IO_FILEPKvib(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef nonnull %i.b, i32 noundef 1, i1 noundef zeroext false) ; 0 uses
  %i.y = call noundef i32 @_ZN4Ptex4v2_414PtexWriterBase13writeZipBlockEP8_IO_FILEPKvib(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef nonnull %i.c, i32 noundef 4, i1 noundef zeroext false) ; 0 uses
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !84
  %i.aa = load i32, ptr %i.c, align 4, !tbaa !48
  %i.ab = call noundef i32 @_ZN4Ptex4v2_414PtexWriterBase13writeZipBlockEP8_IO_FILEPKvib(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef nonnull %i.z, i32 noundef %i.aa, i1 noundef zeroext false) ; 0 uses
  %i.ac = load i8, ptr %i.a, align 1, !tbaa !50
  %i.ad = zext i8 %i.ac to i32
  %i.ae = add nuw nsw i32 %i.ad, 6
  %i.af = load i32, ptr %i.c, align 4, !tbaa !48
  %i.ag = add i32 %i.ae, %i.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i32 %i.ag
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4Ptex4v2_414PtexMainWriterC2EPKcPNS0_11PtexTextureENS0_8MeshTypeENS0_8DataTypeEiiib(ptr noundef nonnull align 8 dereferenceable(656) initializes((0, 9)) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i1 noundef zeroext %8) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = zext i1 %8 to i8
  tail call void @_ZN4Ptex4v2_414PtexWriterBaseC2EPKcNS0_8MeshTypeENS0_8DataTypeEiiib(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i1 noundef zeroext true)
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN4Ptex4v2_414PtexMainWriterE, i64 16), ptr %0, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 4 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 3 uses
  store i64 0, ptr %i.d, align 8, !tbaa !19
  store i8 0, ptr %i.c, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 4 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i64 0, ptr %i.g, align 8, !tbaa !19
  store i8 0, ptr %i.f, align 8, !tbaa !50
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  store i8 0, ptr %i.h, align 8, !tbaa !133
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 497
  store i8 %i.a, ptr %i.i, align 1, !tbaa !134
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.j, i8 0, i64 152, i1 false)
  %i.q = invoke fastcc noundef ptr @_ZN4Ptex4v2_412_GLOBAL__N_112OpenTempFileERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %bb.b unwind label %bb.ar      ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 488
  store ptr %i.q, ptr %i.r, align 8, !tbaa !135
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !49
  invoke fastcc void @_ZN4Ptex4v2_412_GLOBAL__N_19fileErrorB5cxx11EPKcS3_(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull @.str.5, ptr noundef %i.s)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.u, align 8, !tbaa !43
  %i.v = load ptr, ptr %9, align 8, !tbaa !49     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.y = load i64, ptr %i.w, align 8, !tbaa !50
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %_ZN4Ptex4v2_47PtexPtrINS0_12PtexMetaDataEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

bb.g:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %9, align 8, !tbaa !49    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.g
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !50
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35, %bb.f
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ], [ %i.ab, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %_ZN4Ptex4v2_47PtexPtrINS0_12PtexMetaDataEED2Ev.exit56

bb.h:                                             ; preds = %bb.b
  %i.ah = load i64, ptr %i.d, align 8, !tbaa !19
  %i.ai = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  %i.aj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef 0, i64 noundef %i.ah, ptr noundef nonnull %1, i64 noundef %i.ai)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.ar ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.h
  %i.ak = load i64, ptr %i.d, align 8, !tbaa !19
  %i.al = and i64 %i.ak, -4
  %i.am = icmp eq i64 %i.al, 4611686018427387900
  br i1 %i.am, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #32
          to label %.noexc unwind label %bb.ar

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.an = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull @.str.14, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.ar ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !136
  %i.aq = load ptr, ptr %i.n, align 8, !tbaa !137 ; 2 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64               ; 3 uses
  %i.at = sub i64 %i.ar, %i.as
  %i.au = sdiv exact i64 %i.at, 48
  %i.av = icmp ult i64 %i.au, 20
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !138 ; 2 uses
  br i1 %i.av, label %_ZNSt12_Vector_baseIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %i.as
  %i.ba = invoke noalias noundef nonnull dereferenceable(960) ptr @_Znwm(i64 noundef 960) #27
          to label %.noexc39 unwind label %bb.ar  ; 6 uses

.noexc39:                                         ; preds = %_ZNSt12_Vector_baseIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE11_M_allocateEm.exit.i
  %i.bb = load ptr, ptr %i.n, align 8, !tbaa !137 ; 3 uses
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !138 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bb, %i.bc
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc39, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i ], [ %i.ba, %.noexc39 ] ; 3 uses
  %.0911.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i ], [ %i.bb, %.noexc39 ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %i.bd = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !139, !alias.scope !260
  store <2 x ptr> %i.bd, ptr %.012.i.i.i.i, align 8, !tbaa !139, !alias.scope !259
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !140, !alias.scope !260
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !260
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !143, !alias.scope !260
  %i.bk = load <2 x ptr>, ptr %i.bh, align 8, !tbaa !144, !alias.scope !260
  %i.bl = insertelement <4 x ptr> poison, ptr %i.bi, i64 0
  %i.bm = insertelement <4 x ptr> %i.bl, ptr %i.bj, i64 1
  %i.bn = shufflevector <2 x ptr> %i.bk, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bo = shufflevector <4 x ptr> %i.bm, <4 x ptr> %i.bn, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.bo, ptr %i.be, align 8, !tbaa !145, !alias.scope !259
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i8 0, i64 24, i1 false), !alias.scope !260
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 48
  %.not.i.i.i.i = icmp eq ptr %i.bp, %i.bc
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exitthread-pre-split.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZNSt6vectorIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i = load ptr, ptr %i.n, align 8, !tbaa !137
  br label %_ZNSt6vectorIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i

_ZNSt6vectorIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %_ZNSt6vectorIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exitthread-pre-split.i, %.noexc39
  %i.br = phi ptr [ %.pr.i, %_ZNSt6vectorIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exitthread-pre-split.i ], [ %i.bb, %.noexc39 ] ; 3 uses
  %.not.i8.i = icmp eq ptr %i.br, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %i.bs = load ptr, ptr %i.ao, align 8, !tbaa !136
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = sub i64 %i.bt, %i.bu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bv) #28
  br label %_ZNSt12_Vector_baseIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.j, %_ZNSt6vectorIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.ba, ptr %i.n, align 8, !tbaa !137
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.az ; 2 uses
  store ptr %i.bw, ptr %i.aw, align 8, !tbaa !138
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ba, i64 960
  store ptr %i.bx, ptr %i.ao, align 8, !tbaa !136
  %.pre72 = ptrtoint ptr %i.ba to i64
  br label %_ZNSt6vectorIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE7reserveEm.exit

_ZNSt6vectorIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %_ZNSt12_Vector_baseIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE13_M_deallocateEPS3_m.exit.i
  %.pre-phi = phi i64 [ %.pre72, %_ZNSt12_Vector_baseIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ]
  %i.by = phi ptr [ %i.ba, %_ZNSt12_Vector_baseIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ] ; 2 uses
  %i.bz = phi ptr [ %i.bw, %_ZNSt12_Vector_baseIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ] ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.cb, %.pre-phi
  %i.cd = sdiv exact i64 %i.cc, 48                ; 2 uses
  %i.ce = icmp eq ptr %i.bz, %i.by
  br i1 %i.ce, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt6vectorIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE7reserveEm.exit
  %i.cf = sub nuw nsw i64 1, %i.cd
  invoke void @_ZNSt6vectorIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %i.cf)
          to label %_ZNSt6vectorIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE6resizeEm.exit unwind label %bb.ar

bb.l:                                             ; preds = %_ZNSt6vectorIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE7reserveEm.exit
  %i.cg = icmp ugt i64 %i.cd, 1
  br i1 %i.cg, label %bb.m, label %_ZNSt6vectorIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE6resizeEm.exit

bb.m:                                             ; preds = %bb.l
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 48 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bz, %i.ch
  br i1 %.not.i.i, label %_ZNSt6vectorIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE6resizeEm.exit, label %.lr.ph.i.i.i.i40

.lr.ph.i.i.i.i40:                                 ; preds = %bb.m, %_ZSt8_DestroyIN4Ptex4v2_414PtexMainWriter8LevelRecEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cv, %_ZSt8_DestroyIN4Ptex4v2_414PtexMainWriter8LevelRecEEvPT_.exit.i.i.i.i ], [ %i.ch, %bb.m ] ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !143 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EED2Ev.exit.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i40
  %i.ck = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !146
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #28
  br label %_ZNSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.n, %.lr.ph.i.i.i.i40
  %i.cp = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !147 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN4Ptex4v2_414PtexMainWriter8LevelRecEEvPT_.exit.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EED2Ev.exit.i.i.i.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !140
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cp to i64
  %i.cu = sub i64 %i.cs, %i.ct
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.cu) #28
  br label %_ZSt8_DestroyIN4Ptex4v2_414PtexMainWriter8LevelRecEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN4Ptex4v2_414PtexMainWriter8LevelRecEEvPT_.exit.i.i.i.i: ; preds = %bb.o, %_ZNSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EED2Ev.exit.i.i.i.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i41 = icmp eq ptr %i.cv, %i.bz
  br i1 %.not.i.i.i.i41, label %_ZSt8_DestroyIPN4Ptex4v2_414PtexMainWriter8LevelRecES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i40, !llvm.loop !4

_ZSt8_DestroyIPN4Ptex4v2_414PtexMainWriter8LevelRecES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN4Ptex4v2_414PtexMainWriter8LevelRecEEvPT_.exit.i.i.i.i
  store ptr %i.ch, ptr %i.ca, align 8, !tbaa !138
  br label %_ZNSt6vectorIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE6resizeEm.exit

_ZNSt6vectorIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN4Ptex4v2_414PtexMainWriter8LevelRecES3_EvT_S5_RSaIT0_E.exit.i.i, %bb.m, %bb.l, %bb.k
  %i.cw = sext i32 %7 to i64                      ; 16 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !148 ; 2 uses
  %i.cz = load ptr, ptr %i.j, align 8, !tbaa !149 ; 2 uses
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = sdiv exact i64 %i.dc, 20                ; 3 uses
  %i.de = icmp ult i64 %i.dd, %i.cw
  br i1 %i.de, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNSt6vectorIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE6resizeEm.exit
  %i.df = sub nuw nsw i64 %i.cw, %i.dd
  invoke void @_ZNSt6vectorIN4Ptex4v2_48FaceInfoESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.df)
          to label %_ZNSt6vectorIN4Ptex4v2_48FaceInfoESaIS2_EE6resizeEm.exit unwind label %bb.ar

bb.q:                                             ; preds = %_ZNSt6vectorIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE6resizeEm.exit
  %i.dg = icmp ugt i64 %i.dd, %i.cw
  br i1 %i.dg, label %bb.r, label %_ZNSt6vectorIN4Ptex4v2_48FaceInfoESaIS2_EE6resizeEm.exit

bb.r:                                             ; preds = %bb.q
  %i.dh = getelementptr inbounds nuw [20 x i8], ptr %i.cz, i64 %i.cw ; 2 uses
  %.not.i.i43 = icmp eq ptr %i.cy, %i.dh
  br i1 %.not.i.i43, label %_ZNSt6vectorIN4Ptex4v2_48FaceInfoESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN4Ptex4v2_48FaceInfoES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4Ptex4v2_48FaceInfoES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.r
  store ptr %i.dh, ptr %i.cx, align 8, !tbaa !148
  br label %_ZNSt6vectorIN4Ptex4v2_48FaceInfoESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN4Ptex4v2_48FaceInfoESaIS2_EE6resizeEm.exit: ; preds = %bb.p, %bb.q, %bb.r, %_ZSt8_DestroyIPN4Ptex4v2_48FaceInfoES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.di = icmp sgt i32 %7, 0
  br i1 %i.di, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4Ptex4v2_48FaceInfoESaIS2_EE6resizeEm.exit
  %i.dj = load ptr, ptr %i.j, align 8, !tbaa !149 ; 9 uses
  %wide.trip.count = zext nneg i32 %7 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.dk = icmp ult i32 %7, 8
  br i1 %i.dk, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %bb.w

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.w
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod117 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod117)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.s ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.s ]
  %i.dl = getelementptr inbounds nuw [20 x i8], ptr %i.dj, i64 %indvars.iv.epil
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 3
  store i8 -1, ptr %i.dm, align 1, !tbaa !95
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.s, !llvm.loop !257

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.s, %_ZNSt6vectorIN4Ptex4v2_48FaceInfoESaIS2_EE6resizeEm.exit
  %i.dn = load ptr, ptr %i.n, align 8, !tbaa !151 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !152 ; 2 uses
  %i.dq = load ptr, ptr %i.dn, align 8, !tbaa !147 ; 2 uses
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = ashr exact i64 %i.dt, 3                 ; 3 uses
  %i.dv = icmp ult i64 %i.du, %i.cw
  br i1 %i.dv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge
  %i.dw = sub nuw nsw i64 %i.cw, %i.du
  invoke void @_ZNSt6vectorIlSaIlEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, i64 noundef %i.dw)
          to label %_ZNSt6vectorIlSaIlEE6resizeEm.exit unwind label %bb.ar

bb.u:                                             ; preds = %._crit_edge
  %i.dx = icmp ugt i64 %i.du, %i.cw
  br i1 %i.dx, label %bb.v, label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

bb.v:                                             ; preds = %bb.u
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.cw ; 2 uses
  %.not.i.i45 = icmp eq ptr %i.dp, %i.dy
  br i1 %.not.i.i45, label %_ZNSt6vectorIlSaIlEE6resizeEm.exit, label %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.v
  store ptr %i.dy, ptr %i.do, align 8, !tbaa !152
  br label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

bb.w:                                             ; preds = %bb.w, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.7, %bb.w ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.w ]
  %i.dz = getelementptr inbounds nuw [20 x i8], ptr %i.dj, i64 %indvars.iv
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 3
  store i8 -1, ptr %i.ea, align 1, !tbaa !95
  %i.eb = getelementptr inbounds nuw [20 x i8], ptr %i.dj, i64 %indvars.iv
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 23
  store i8 -1, ptr %i.ec, align 1, !tbaa !95
  %i.ed = getelementptr inbounds nuw [20 x i8], ptr %i.dj, i64 %indvars.iv
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 43
  store i8 -1, ptr %i.ee, align 1, !tbaa !95
  %i.ef = getelementptr inbounds nuw [20 x i8], ptr %i.dj, i64 %indvars.iv
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 63
  store i8 -1, ptr %i.eg, align 1, !tbaa !95
  %i.eh = getelementptr inbounds nuw [20 x i8], ptr %i.dj, i64 %indvars.iv
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 83
  store i8 -1, ptr %i.ei, align 1, !tbaa !95
  %i.ej = getelementptr inbounds nuw [20 x i8], ptr %i.dj, i64 %indvars.iv
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 103
  store i8 -1, ptr %i.ek, align 1, !tbaa !95
  %i.el = getelementptr inbounds nuw [20 x i8], ptr %i.dj, i64 %indvars.iv
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 123
  store i8 -1, ptr %i.em, align 1, !tbaa !95
  %i.en = getelementptr inbounds nuw [20 x i8], ptr %i.dj, i64 %indvars.iv
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 143
  store i8 -1, ptr %i.eo, align 1, !tbaa !95
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %bb.w, !llvm.loop !258

_ZNSt6vectorIlSaIlEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i, %bb.v, %bb.u, %bb.t
  %i.ep = load ptr, ptr %i.n, align 8, !tbaa !151 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 32 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !153 ; 2 uses
  %i.et = load ptr, ptr %i.eq, align 8, !tbaa !143 ; 2 uses
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = ashr exact i64 %i.ew, 2                 ; 3 uses
  %i.ey = icmp ult i64 %i.ex, %i.cw
  br i1 %i.ey, label %bb.x, label %bb.y
end_hunk_0
