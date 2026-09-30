Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/simdjson/original/simdjson?download=true
inline.NumInlined: 1188
inline.NumDeleted: 362
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN8simdjson8internal19decimal_right_shiftERNS0_7decimalEj:bb.a
  %.34763 = phi i64 [ %.246, %.lr.ph65.new ], [ %i.bd, %bb.e ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph65.new ], [ %niter.next.1, %bb.e ]
  %i.am = lshr i64 %.34763, %i.a
  %i.an = trunc i64 %i.am to i8
  %i.ao = and i64 %.34763, %i.x
  %i.ap = mul i64 %i.ao, 10
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv82
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !36
  %i.as = zext i8 %i.ar to i64
  %i.at = add i64 %i.ap, %i.as                    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv84
  store i8 %i.an, ptr %i.au, align 2, !tbaa !36
  %i.av = lshr i64 %i.at, %i.a
  %i.aw = trunc i64 %i.av to i8
  %i.ax = and i64 %i.at, %i.x
  %i.ay = mul i64 %i.ax, 10
  %indvars.iv.next83.1 = add nuw nsw i64 %indvars.iv82, 2 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv82
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !36
  %i.bc = zext i8 %i.bb to i64
  %i.bd = add i64 %i.ay, %i.bc                    ; 3 uses
  %indvars.iv.next85.1 = add nuw nsw i64 %indvars.iv84, 2 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv84
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store i8 %i.aw, ptr %i.bf, align 1, !tbaa !36
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.e, !llvm.loop !195

bb.f:                                             ; preds = %.lr.ph71, %bb.j
  %.470 = phi i64 [ %.347.lcssa, %.lr.ph71 ], [ %i.bi, %bb.j ] ; 2 uses
  %.14969 = phi i32 [ %.048.lcssa, %.lr.ph71 ], [ %.250, %bb.j ] ; 5 uses
  %i.bg = lshr i64 %.470, %i.a                    ; 2 uses
  %i.bh = and i64 %.470, %i.x
  %i.bi = mul i64 %i.bh, 10                       ; 2 uses
  %i.bj = icmp ult i32 %.14969, 768
  br i1 %i.bj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bk = trunc i64 %i.bg to i8
  %i.bl = add nuw nsw i32 %.14969, 1
  %i.bm = zext nneg i32 %.14969 to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bm
  store i8 %i.bk, ptr %i.bn, align 1, !tbaa !36
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.bo = and i64 %i.bg, 255
  %.not51 = icmp eq i64 %i.bo, 0
  br i1 %.not51, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.al, align 1, !tbaa !45
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %.250 = phi i32 [ %i.bl, %bb.g ], [ %.14969, %bb.i ], [ %.14969, %bb.h ] ; 3 uses
  %.not = icmp eq i64 %i.bi, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.f, !llvm.loop !196

._crit_edge.thread:                               ; preds = %bb.j
  store i32 %.250, ptr %0, align 4, !tbaa !43
  br label %.lr.ph.preheader.i

._crit_edge:                                      ; preds = %.preheader
  store i32 %.048.lcssa, ptr %0, align 4, !tbaa !43
  %.not4.i = icmp eq i32 %.048.lcssa, 0
  br i1 %.not4.i, label %_ZN8simdjson8internal12_GLOBAL__N_14trimERNS0_7decimalE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge.thread, %._crit_edge
  %.149.lcssa94 = phi i32 [ %.250, %._crit_edge.thread ], [ %.048.lcssa, %._crit_edge ]
  %i.bp = zext i32 %.149.lcssa94 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.bp, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.k ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.bq = and i64 %indvars.iv.next.i, 4294967295
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !36
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %bb.k, label %_ZN8simdjson8internal12_GLOBAL__N_14trimERNS0_7decimalE.exit

bb.k:                                             ; preds = %.lr.ph.i
  %indvars.i = trunc i64 %indvars.iv.next.i to i32 ; 2 uses
  store i32 %indvars.i, ptr %0, align 4, !tbaa !43
  %.not.i = icmp eq i32 %indvars.i, 0
  br i1 %.not.i, label %_ZN8simdjson8internal12_GLOBAL__N_14trimERNS0_7decimalE.exit, label %.lr.ph.i, !llvm.loop !1

_ZN8simdjson8internal12_GLOBAL__N_14trimERNS0_7decimalE.exit: ; preds = %bb.k, %.lr.ph.i, %._crit_edge, %._crit_edge108, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef double @_ZN8simdjson8internal10from_charsEPKc(ptr noundef %0) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %"struct.simdjson::internal::decimal", align 4 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !36
  %i.c = icmp eq i8 %i.b, 45                      ; 2 uses
  %spec.select.idx = zext i1 %i.c to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %spec.select, ptr %i.a, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  call void @_ZN8simdjson8internal13parse_decimalERPKc(ptr dead_on_unwind nonnull writable sret(%"struct.simdjson::internal::decimal") align 4 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #41
  %i.d = invoke { i64, i32 } @_ZN8simdjson8internal13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaERNS0_7decimalE(ptr noundef nonnull align 4 dereferenceable(780) %1)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.fca.0.extract = extractvalue { i64, i32 } %i.d, 0
  %.fca.1.extract = extractvalue { i64, i32 } %i.d, 1
  %i.e = zext i32 %.fca.1.extract to i64
  %i.f = shl i64 %i.e, 52
  %i.g = or i64 %i.f, %.fca.0.extract             ; 2 uses
  %i.h = or i64 %i.g, -9223372036854775808
  %spec.select9 = select i1 %i.c, i64 %i.h, i64 %i.g
  %i.i = bitcast i64 %spec.select9 to double
  ret double %i.i

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #42
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #41 ; 0 uses
  tail call void @_ZSt9terminatev() #42
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef double @_ZN8simdjson8internal10from_charsEPKcS2_(ptr noundef %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"struct.simdjson::internal::decimal", align 4 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !36
  %i.c = icmp eq i8 %i.b, 45                      ; 2 uses
  %spec.select.idx = zext i1 %i.c to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %spec.select, ptr %i.a, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  call void @_ZN8simdjson8internal13parse_decimalERPKcS2_(ptr dead_on_unwind nonnull writable sret(%"struct.simdjson::internal::decimal") align 4 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %1) #41
  %i.d = invoke { i64, i32 } @_ZN8simdjson8internal13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaERNS0_7decimalE(ptr noundef nonnull align 4 dereferenceable(780) %2)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.fca.0.extract = extractvalue { i64, i32 } %i.d, 0
  %.fca.1.extract = extractvalue { i64, i32 } %i.d, 1
  %i.e = zext i32 %.fca.1.extract to i64
  %i.f = shl i64 %i.e, 52
  %i.g = or i64 %i.f, %.fca.0.extract             ; 2 uses
  %i.h = or i64 %i.g, -9223372036854775808
  %spec.select10 = select i1 %i.c, i64 %i.h, i64 %i.g
  %i.i = bitcast i64 %spec.select10 to double
  ret double %i.i

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #42
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK8simdjson14implementation27supported_by_runtime_systemEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !53
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(44) %0) ; 2 uses
  %i.e = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A\09", "={ax},={bx},={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 0) #41, !srcloc !54
  %i.f = extractvalue { i32, i32, i32, i32 } %i.e, 2 ; 3 uses
  %i.g = and i32 %i.f, 1048576
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN8simdjson8internalL30detect_supported_architecturesEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %1 = shl i32 %i.f, 3
  %2 = and i32 %1, 16                             ; 2 uses
  %spec.select.i = or disjoint i32 %2, 8          ; 3 uses
  %i.h = and i32 %i.f, 201326592
  %.not25.i = icmp eq i32 %i.h, 201326592
  br i1 %.not25.i, label %bb.c, label %_ZN8simdjson8internalL30detect_supported_architecturesEv.exit

bb.c:                                             ; preds = %bb.b
  %i.i = tail call { i32, i32 } asm sideeffect "xgetbv\0A\09", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0) #41, !srcloc !55
  %i.j = extractvalue { i32, i32 } %i.i, 0
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %i.l = and i64 %i.k, 4
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_ZN8simdjson8internalL30detect_supported_architecturesEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A\09", "={ax},={bx},={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #41, !srcloc !54 ; 2 uses
  %i.o = extractvalue { i32, i32, i32, i32 } %i.n, 1 ; 7 uses
  %3 = and i32 %i.o, 32
  %.not26.i = icmp eq i32 %3, 0
  %4 = or disjoint i32 %2, 12
  %spec.select38.i = select i1 %.not26.i, i32 %spec.select.i, i32 %4
  %i.p = shl i32 %i.o, 2
  %i.q = and i32 %i.p, 32
  %i.r = lshr i32 %i.o, 2
  %i.s = and i32 %i.r, 64
  %i.t = or disjoint i32 %i.s, %i.q
  %.3.i = or disjoint i32 %i.t, %spec.select38.i  ; 2 uses
  %i.u = and i64 %i.k, 224
  %i.v = icmp eq i64 %i.u, 224
  br i1 %i.v, label %bb.e, label %_ZN8simdjson8internalL30detect_supported_architecturesEv.exit

bb.e:                                             ; preds = %bb.d
  %i.w = extractvalue { i32, i32, i32, i32 } %i.n, 2
  %i.x = lshr i32 %i.o, 8
  %i.y = and i32 %i.x, 768
  %i.z = lshr i32 %i.o, 11
  %i.aa = and i32 %i.z, 1024
  %i.ab = or disjoint i32 %i.y, %i.aa
  %i.ac = lshr i32 %i.o, 15
  %i.ad = and i32 %i.ac, 14336
  %i.ae = or disjoint i32 %i.ab, %i.ad
  %i.af = lshr i32 %i.o, 16
  %i.ag = and i32 %i.af, 49152
  %i.ah = or disjoint i32 %i.ae, %i.ag
  %i.ai = shl i32 %i.w, 10
  %i.aj = and i32 %i.ai, 65536
  %i.ak = or disjoint i32 %i.ah, %i.aj
  %.12.i = or disjoint i32 %i.ak, %.3.i
  br label %_ZN8simdjson8internalL30detect_supported_architecturesEv.exit

_ZN8simdjson8internalL30detect_supported_architecturesEv.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.123.i = phi i32 [ 0, %bb.a ], [ %spec.select.i, %bb.b ], [ %spec.select.i, %bb.c ], [ %.12.i, %bb.e ], [ %.3.i, %bb.d ]
  %i.al = and i32 %.123.i, %i.d
  %i.am = icmp eq i32 %i.al, %i.d
  ret i1 %i.am
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZN8simdjson8internal25get_unsupported_singletonEv() local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN8simdjson8internal25get_unsupported_singletonEvE21unsupported_singleton acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !56

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8simdjson8internal25get_unsupported_singletonEvE21unsupported_singleton) #41
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 11, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8simdjson8internal25get_unsupported_singletonEvE21unsupported_singleton, i64 8), align 8, !tbaa !40
  store ptr @.str.35, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8simdjson8internal25get_unsupported_singletonEvE21unsupported_singleton, i64 16), align 8, !tbaa !48
  store i64 47, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8simdjson8internal25get_unsupported_singletonEvE21unsupported_singleton, i64 24), align 8, !tbaa !40
  store ptr @.str.36, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8simdjson8internal25get_unsupported_singletonEvE21unsupported_singleton, i64 32), align 8, !tbaa !48
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8simdjson8internal25get_unsupported_singletonEvE21unsupported_singleton, i64 40), align 8, !tbaa !59
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8simdjson8internal26unsupported_implementationE, i64 16), ptr @_ZZN8simdjson8internal25get_unsupported_singletonEvE21unsupported_singleton, align 8, !tbaa !53
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZZN8simdjson8internal25get_unsupported_singletonEvE21unsupported_singleton) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8simdjson8internal25get_unsupported_singletonEvE21unsupported_singleton) #41
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret ptr @_ZZN8simdjson8internal25get_unsupported_singletonEvE21unsupported_singleton
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK8simdjson8internal29available_implementation_list4sizeEv(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN8simdjson8internalL37get_available_implementation_pointersEv.exit, !prof !56

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers) #41
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN8simdjson8internalL37get_available_implementation_pointersEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN8simdjson8internalL21get_icelake_singletonEv()
  store ptr @_ZZN8simdjson8internalL21get_icelake_singletonEvE17icelake_singleton, ptr @_ZGRZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers_, align 8, !tbaa !61
  tail call fastcc void @_ZN8simdjson8internalL21get_haswell_singletonEv()
  store ptr @_ZZN8simdjson8internalL21get_haswell_singletonEvE17haswell_singleton, ptr getelementptr inbounds nuw (i8, ptr @_ZGRZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers_, i64 8), align 8, !tbaa !61
  tail call fastcc void @_ZN8simdjson8internalL22get_westmere_singletonEv()
  store ptr @_ZZN8simdjson8internalL22get_westmere_singletonEvE18westmere_singleton, ptr getelementptr inbounds nuw (i8, ptr @_ZGRZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers_, i64 16), align 8, !tbaa !61
  tail call fastcc void @_ZN8simdjson8internalL22get_fallback_singletonEv()
  store ptr @_ZZN8simdjson8internalL22get_fallback_singletonEvE18fallback_singleton, ptr getelementptr inbounds nuw (i8, ptr @_ZGRZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers_, i64 24), align 8, !tbaa !61
  store ptr @_ZGRZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers_, ptr @_ZZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers, align 8, !tbaa !65
  store i64 4, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers, i64 8), align 8, !tbaa !66
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers) #41
  br label %_ZN8simdjson8internalL37get_available_implementation_pointersEv.exit

_ZN8simdjson8internalL37get_available_implementation_pointersEv.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers, i64 8), align 8, !tbaa !66
  ret i64 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK8simdjson8internal29available_implementation_list5beginEv(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN8simdjson8internalL37get_available_implementation_pointersEv.exit, !prof !56

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers) #41
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN8simdjson8internalL37get_available_implementation_pointersEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN8simdjson8internalL21get_icelake_singletonEv()
  store ptr @_ZZN8simdjson8internalL21get_icelake_singletonEvE17icelake_singleton, ptr @_ZGRZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers_, align 8, !tbaa !61
  tail call fastcc void @_ZN8simdjson8internalL21get_haswell_singletonEv()
  store ptr @_ZZN8simdjson8internalL21get_haswell_singletonEvE17haswell_singleton, ptr getelementptr inbounds nuw (i8, ptr @_ZGRZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers_, i64 8), align 8, !tbaa !61
  tail call fastcc void @_ZN8simdjson8internalL22get_westmere_singletonEv()
  store ptr @_ZZN8simdjson8internalL22get_westmere_singletonEvE18westmere_singleton, ptr getelementptr inbounds nuw (i8, ptr @_ZGRZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers_, i64 16), align 8, !tbaa !61
  tail call fastcc void @_ZN8simdjson8internalL22get_fallback_singletonEv()
  store ptr @_ZZN8simdjson8internalL22get_fallback_singletonEvE18fallback_singleton, ptr getelementptr inbounds nuw (i8, ptr @_ZGRZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers_, i64 24), align 8, !tbaa !61
  store ptr @_ZGRZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers_, ptr @_ZZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers, align 8, !tbaa !65
  store i64 4, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers, i64 8), align 8, !tbaa !66
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers) #41
  br label %_ZN8simdjson8internalL37get_available_implementation_pointersEv.exit

_ZN8simdjson8internalL37get_available_implementation_pointersEv.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.e = load ptr, ptr @_ZZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers, align 8, !tbaa !65
  ret ptr %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK8simdjson8internal29available_implementation_list3endEv(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN8simdjson8internalL37get_available_implementation_pointersEv.exit, !prof !56

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers) #41
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN8simdjson8internalL37get_available_implementation_pointersEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN8simdjson8internalL21get_icelake_singletonEv()
  store ptr @_ZZN8simdjson8internalL21get_icelake_singletonEvE17icelake_singleton, ptr @_ZGRZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers_, align 8, !tbaa !61
  tail call fastcc void @_ZN8simdjson8internalL21get_haswell_singletonEv()
  store ptr @_ZZN8simdjson8internalL21get_haswell_singletonEvE17haswell_singleton, ptr getelementptr inbounds nuw (i8, ptr @_ZGRZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers_, i64 8), align 8, !tbaa !61
  tail call fastcc void @_ZN8simdjson8internalL22get_westmere_singletonEv()
  store ptr @_ZZN8simdjson8internalL22get_westmere_singletonEvE18westmere_singleton, ptr getelementptr inbounds nuw (i8, ptr @_ZGRZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers_, i64 16), align 8, !tbaa !61
  tail call fastcc void @_ZN8simdjson8internalL22get_fallback_singletonEv()
  store ptr @_ZZN8simdjson8internalL22get_fallback_singletonEvE18fallback_singleton, ptr getelementptr inbounds nuw (i8, ptr @_ZGRZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers_, i64 24), align 8, !tbaa !61
  store ptr @_ZGRZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers_, ptr @_ZZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers, align 8, !tbaa !65
  store i64 4, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers, i64 8), align 8, !tbaa !66
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers) #41
  br label %_ZN8simdjson8internalL37get_available_implementation_pointersEv.exit

_ZN8simdjson8internalL37get_available_implementation_pointersEv.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.e = load ptr, ptr @_ZZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers, align 8, !tbaa !65
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers, i64 8), align 8, !tbaa !66
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  ret ptr %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK8simdjson8internal29available_implementation_list21detect_best_supportedEv(ptr nofree nonnull readnone align 1 captures(none) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A\09", "={ax},={bx},={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 0) #41, !srcloc !54
  %i.b = extractvalue { i32, i32, i32, i32 } %i.a, 2 ; 3 uses
  %i.c = and i32 %i.b, 1048576
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN8simdjson8internalL30detect_supported_architecturesEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %1 = shl i32 %i.b, 3
  %2 = and i32 %1, 16                             ; 2 uses
  %spec.select.i = or disjoint i32 %2, 8          ; 3 uses
  %i.d = and i32 %i.b, 201326592
  %.not25.i = icmp eq i32 %i.d, 201326592
  br i1 %.not25.i, label %bb.c, label %_ZN8simdjson8internalL30detect_supported_architecturesEv.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call { i32, i32 } asm sideeffect "xgetbv\0A\09", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0) #41, !srcloc !55
  %i.f = extractvalue { i32, i32 } %i.e, 0
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = and i64 %i.g, 4
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZN8simdjson8internalL30detect_supported_architecturesEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A\09", "={ax},={bx},={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #41, !srcloc !54 ; 2 uses
  %i.k = extractvalue { i32, i32, i32, i32 } %i.j, 1 ; 7 uses
  %3 = and i32 %i.k, 32
  %.not26.i = icmp eq i32 %3, 0
  %4 = or disjoint i32 %2, 12
  %spec.select38.i = select i1 %.not26.i, i32 %spec.select.i, i32 %4
  %i.l = shl i32 %i.k, 2
  %i.m = and i32 %i.l, 32
  %i.n = lshr i32 %i.k, 2
  %i.o = and i32 %i.n, 64
  %i.p = or disjoint i32 %i.o, %i.m
  %.3.i = or disjoint i32 %i.p, %spec.select38.i  ; 2 uses
  %i.q = and i64 %i.g, 224
  %i.r = icmp eq i64 %i.q, 224
  br i1 %i.r, label %bb.e, label %_ZN8simdjson8internalL30detect_supported_architecturesEv.exit

bb.e:                                             ; preds = %bb.d
  %i.s = extractvalue { i32, i32, i32, i32 } %i.j, 2
  %i.t = lshr i32 %i.k, 8
  %i.u = and i32 %i.t, 768
  %i.v = lshr i32 %i.k, 11
  %i.w = and i32 %i.v, 1024
  %i.x = or disjoint i32 %i.u, %i.w
  %i.y = lshr i32 %i.k, 15
  %i.z = and i32 %i.y, 14336
  %i.aa = or disjoint i32 %i.x, %i.z
  %i.ab = lshr i32 %i.k, 16
  %i.ac = and i32 %i.ab, 49152
  %i.ad = or disjoint i32 %i.aa, %i.ac
  %i.ae = shl i32 %i.s, 10
  %i.af = and i32 %i.ae, 65536
  %i.ag = or disjoint i32 %i.ad, %i.af
  %.12.i = or disjoint i32 %i.ag, %.3.i
  br label %_ZN8simdjson8internalL30detect_supported_architecturesEv.exit

_ZN8simdjson8internalL30detect_supported_architecturesEv.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.123.i = phi i32 [ 0, %bb.a ], [ %spec.select.i, %bb.b ], [ %spec.select.i, %bb.c ], [ %.12.i, %bb.e ], [ %.3.i, %bb.d ]
  %i.ah = load atomic i8, ptr @_ZGVZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers acquire, align 8
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %_ZN8simdjson8internalL37get_available_implementation_pointersEv.exit, !prof !56

bb.f:                                             ; preds = %_ZN8simdjson8internalL30detect_supported_architecturesEv.exit
  %i.aj = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers) #41
  %.not.i20 = icmp eq i32 %i.aj, 0
  br i1 %.not.i20, label %_ZN8simdjson8internalL37get_available_implementation_pointersEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @_ZN8simdjson8internalL21get_icelake_singletonEv()
  store ptr @_ZZN8simdjson8internalL21get_icelake_singletonEvE17icelake_singleton, ptr @_ZGRZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers_, align 8, !tbaa !61
  tail call fastcc void @_ZN8simdjson8internalL21get_haswell_singletonEv()
  store ptr @_ZZN8simdjson8internalL21get_haswell_singletonEvE17haswell_singleton, ptr getelementptr inbounds nuw (i8, ptr @_ZGRZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers_, i64 8), align 8, !tbaa !61
  tail call fastcc void @_ZN8simdjson8internalL22get_westmere_singletonEv()
  store ptr @_ZZN8simdjson8internalL22get_westmere_singletonEvE18westmere_singleton, ptr getelementptr inbounds nuw (i8, ptr @_ZGRZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers_, i64 16), align 8, !tbaa !61
  tail call fastcc void @_ZN8simdjson8internalL22get_fallback_singletonEv()
  store ptr @_ZZN8simdjson8internalL22get_fallback_singletonEvE18fallback_singleton, ptr getelementptr inbounds nuw (i8, ptr @_ZGRZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers_, i64 24), align 8, !tbaa !61
  store ptr @_ZGRZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers_, ptr @_ZZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers, align 8, !tbaa !65
  store i64 4, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers, i64 8), align 8, !tbaa !66
  %i.ak = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers) #41
  br label %_ZN8simdjson8internalL37get_available_implementation_pointersEv.exit

_ZN8simdjson8internalL37get_available_implementation_pointersEv.exit: ; preds = %bb.g, %bb.f, %_ZN8simdjson8internalL30detect_supported_architecturesEv.exit
  %i.al = load ptr, ptr @_ZZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers, align 8, !tbaa !65 ; 2 uses
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8simdjson8internalL37get_available_implementation_pointersEvE33available_implementation_pointers, i64 8), align 8, !tbaa !66 ; 2 uses
  %.idx = shl nuw nsw i64 %i.am, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx
  %.not24 = icmp eq i64 %i.am, 0
  br i1 %.not24, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.01625, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ao, %i.an
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8simdjson8internalL37get_available_implementation_pointersEv.exit, %bb.h
  %.01625 = phi ptr [ %i.ao, %bb.h ], [ %i.al, %_ZN8simdjson8internalL37get_available_implementation_pointersEv.exit ] ; 2 uses
  %i.ap = load ptr, ptr %.01625, align 8, !tbaa !61 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !53
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = invoke noundef i32 %i.as(ptr noundef nonnull align 8 dereferenceable(44) %i.ap)
          to label %bb.i unwind label %bb.l       ; 2 uses

bb.i:                                             ; preds = %.lr.ph
  %i.au = and i32 %i.at, %.123.i
  %.not19 = icmp eq i32 %i.au, %i.at
  br i1 %.not19, label %_ZN8simdjson8internal25get_unsupported_singletonEv.exit, label %bb.h

._crit_edge:                                      ; preds = %bb.h, %_ZN8simdjson8internalL37get_available_implementation_pointersEv.exit
  %i.av = load atomic i8, ptr @_ZGVZN8simdjson8internal25get_unsupported_singletonEvE21unsupported_singleton acquire, align 8
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.j, label %_ZN8simdjson8internal25get_unsupported_singletonEv.exit, !prof !56

bb.j:                                             ; preds = %._crit_edge
  %i.ax = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8simdjson8internal25get_unsupported_singletonEvE21unsupported_singleton) #41
  %.not.i21 = icmp eq i32 %i.ax, 0
  br i1 %.not.i21, label %_ZN8simdjson8internal25get_unsupported_singletonEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 11, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8simdjson8internal25get_unsupported_singletonEvE21unsupported_singleton, i64 8), align 8, !tbaa !40
  store ptr @.str.35, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8simdjson8internal25get_unsupported_singletonEvE21unsupported_singleton, i64 16), align 8, !tbaa !48
  store i64 47, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8simdjson8internal25get_unsupported_singletonEvE21unsupported_singleton, i64 24), align 8, !tbaa !40
  store ptr @.str.36, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8simdjson8internal25get_unsupported_singletonEvE21unsupported_singleton, i64 32), align 8, !tbaa !48
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8simdjson8internal25get_unsupported_singletonEvE21unsupported_singleton, i64 40), align 8, !tbaa !59
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8simdjson8internal26unsupported_implementationE, i64 16), ptr @_ZZN8simdjson8internal25get_unsupported_singletonEvE21unsupported_singleton, align 8, !tbaa !53
  %i.ay = tail call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZZN8simdjson8internal25get_unsupported_singletonEvE21unsupported_singleton) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8simdjson8internal25get_unsupported_singletonEvE21unsupported_singleton) #41
  br label %_ZN8simdjson8internal25get_unsupported_singletonEv.exit

_ZN8simdjson8internal25get_unsupported_singletonEv.exit: ; preds = %bb.i, %bb.k, %bb.j, %._crit_edge
  %.3 = phi ptr [ @_ZZN8simdjson8internal25get_unsupported_singletonEvE21unsupported_singleton, %bb.k ], [ @_ZZN8simdjson8internal25get_unsupported_singletonEvE21unsupported_singleton, %._crit_edge ], [ @_ZZN8simdjson8internal25get_unsupported_singletonEvE21unsupported_singleton, %bb.j ], [ %i.ap, %bb.i ]
  ret ptr %.3

bb.l:                                             ; preds = %.lr.ph
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  tail call void @__clang_call_terminate(ptr %i.ba) #42
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK8simdjson8internal49detect_best_supported_implementation_on_first_use8set_bestEv(ptr nofree nonnull readnone align 8 captures(none) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = tail call ptr @getenv(ptr noundef nonnull @.str.33) #41 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  %i.b = load atomic i8, ptr @_ZGVZN8simdjson29get_available_implementationsEvE25available_implementations acquire, align 8
  %i.c = icmp eq i8 %i.b, 0                       ; 2 uses
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.c, label %_ZN8simdjson29get_available_implementationsEv.exit, !prof !56

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8simdjson29get_available_implementationsEvE25available_implementations) #41
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN8simdjson29get_available_implementationsEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZZN8simdjson29get_available_implementationsEvE25available_implementations) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8simdjson29get_available_implementationsEvE25available_implementations) #41
  br label %_ZN8simdjson29get_available_implementationsEv.exit

_ZN8simdjson29get_available_implementationsEv.exit: ; preds = %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  %i.f = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #41
  store i64 %i.f, ptr %1, align 8, !tbaa !67
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %i.g, align 8, !tbaa !68
  %i.h = call noundef ptr @_ZNK8simdjson8internal29available_implementation_listixERKSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZZN8simdjson29get_available_implementationsEvE25available_implementations, ptr noundef nonnull align 8 dereferenceable(16) %1) #41 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  %.not7 = icmp eq ptr %i.h, null
  br i1 %.not7, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN8simdjson29get_available_implementationsEv.exit
  %i.i = load atomic i8, ptr @_ZGVZN8simdjson25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.h, !prof !56

bb.f:                                             ; preds = %bb.e
  %i.k = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8simdjson25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton) #41, !inline_history !69
  %.not.i8 = icmp eq i32 %i.k, 0
  br i1 %.not.i8, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 23, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8simdjson25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton, i64 8), align 8, !tbaa !40
  store ptr @.str.44, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8simdjson25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton, i64 16), align 8, !tbaa !48
  store i64 53, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8simdjson25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton, i64 24), align 8, !tbaa !40
  store ptr @.str.45, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8simdjson25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton, i64 32), align 8, !tbaa !48
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8simdjson25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton, i64 40), align 8, !tbaa !59
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8simdjson8internal49detect_best_supported_implementation_on_first_useE, i64 16), ptr @_ZZN8simdjson25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton, align 8, !tbaa !53
  %i.l = call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZZN8simdjson25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8simdjson25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton) #41, !inline_history !69
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.m = load atomic i8, ptr @_ZGVZN8simdjson25get_active_implementationEvE21active_implementation acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.i, label %_ZN8simdjson25get_active_implementationEv.exit, !prof !56

bb.i:                                             ; preds = %bb.h
  %i.o = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8simdjson25get_active_implementationEvE21active_implementation) #41, !inline_history !69
  %.not1.i = icmp eq i32 %i.o, 0
  br i1 %.not1.i, label %_ZN8simdjson25get_active_implementationEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr @_ZZN8simdjson25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton, ptr @_ZZN8simdjson25get_active_implementationEvE21active_implementation, align 8, !tbaa !71
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8simdjson25get_active_implementationEvE21active_implementation) #41, !inline_history !69
  br label %_ZN8simdjson25get_active_implementationEv.exit

bb.k:                                             ; preds = %_ZN8simdjson29get_available_implementationsEv.exit
  %i.p = load atomic i8, ptr @_ZGVZN8simdjson8internal25get_unsupported_singletonEvE21unsupported_singleton acquire, align 8
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.l, label %_ZN8simdjson8internal25get_unsupported_singletonEv.exit, !prof !56

bb.l:                                             ; preds = %bb.k
  %i.r = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8simdjson8internal25get_unsupported_singletonEvE21unsupported_singleton) #41
  %.not.i9 = icmp eq i32 %i.r, 0
  br i1 %.not.i9, label %_ZN8simdjson8internal25get_unsupported_singletonEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i64 11, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8simdjson8internal25get_unsupported_singletonEvE21unsupported_singleton, i64 8), align 8, !tbaa !40
  store ptr @.str.35, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8simdjson8internal25get_unsupported_singletonEvE21unsupported_singleton, i64 16), align 8, !tbaa !48
  store i64 47, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8simdjson8internal25get_unsupported_singletonEvE21unsupported_singleton, i64 24), align 8, !tbaa !40
  store ptr @.str.36, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8simdjson8internal25get_unsupported_singletonEvE21unsupported_singleton, i64 32), align 8, !tbaa !48
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8simdjson8internal25get_unsupported_singletonEvE21unsupported_singleton, i64 40), align 8, !tbaa !59
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8simdjson8internal26unsupported_implementationE, i64 16), ptr @_ZZN8simdjson8internal25get_unsupported_singletonEvE21unsupported_singleton, align 8, !tbaa !53
  %i.s = call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZZN8simdjson8internal25get_unsupported_singletonEvE21unsupported_singleton) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8simdjson8internal25get_unsupported_singletonEvE21unsupported_singleton) #41
  br label %_ZN8simdjson8internal25get_unsupported_singletonEv.exit

end_hunk_0
