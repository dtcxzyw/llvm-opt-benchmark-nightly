inline.NumInlined: 36
inline.NumDeleted: 21
begin_hunk_0_@_ZN5boost6detail11crc_table_tILi32ELi8ELm79764919ELb1EE9get_tableEv:bb.a
  %i.a = load atomic i8, ptr @_ZGVZN5boost6detail11crc_table_tILi32ELi8ELm79764919ELb1EE9get_tableEvE5table acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail11crc_table_tILi32ELi8ELm79764919ELb1EE9get_tableEvE5table) #8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5boost6detail31make_partial_xor_products_tableILi8EjEENS_5arrayIT0_XlsLm1ET_EEEiS3_b(ptr dead_on_unwind nonnull writable sret(%"class.boost::array") align 4 @_ZZN5boost6detail11crc_table_tILi32ELi8ELm79764919ELb1EE9get_tableEvE5table, i32 noundef 32, i32 noundef 79764919, i1 noundef zeroext true)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 1024, ptr nonnull @_ZZN5boost6detail11crc_table_tILi32ELi8ELm79764919ELb1EE9get_tableEvE5table) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail11crc_table_tILi32ELi8ELm79764919ELb1EE9get_tableEvE5table) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  ret ptr @_ZZN5boost6detail11crc_table_tILi32ELi8ELm79764919ELb1EE9get_tableEvE5table

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5boost6detail11crc_table_tILi32ELi8ELm79764919ELb1EE9get_tableEvE5table) #8
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5folly6crc32cEPKhmj(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5folly6detail25crc32c_hw_supported_sse42EvE2id acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5folly6detail19crc32c_hw_supportedEv.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6detail25crc32c_hw_supported_sse42EvE2id) #8
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN5folly6detail19crc32c_hw_supportedEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) @_ZZN5folly6detail25crc32c_hw_supported_sse42EvE2id, i8 0, i64 32, i1 false)
  %i.d = tail call { i32, i32, i32, i32 } asm sideeffect "\0A        cpuid\0A      ", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0, i32 0) #8, !srcloc !12 ; 4 uses
  %i.e = extractvalue { i32, i32, i32, i32 } %i.d, 0 ; 2 uses
  %i.f = extractvalue { i32, i32, i32, i32 } %i.d, 1
  %i.g = extractvalue { i32, i32, i32, i32 } %i.d, 2
  %i.h = extractvalue { i32, i32, i32, i32 } %i.d, 3
  store i32 %i.f, ptr @_ZZN5folly6detail25crc32c_hw_supported_sse42EvE2id, align 4, !tbaa !7
  store i32 %i.h, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly6detail25crc32c_hw_supported_sse42EvE2id, i64 4), align 4, !tbaa !7
  store i32 %i.g, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly6detail25crc32c_hw_supported_sse42EvE2id, i64 8), align 4, !tbaa !7
  %i.i = icmp sgt i32 %i.e, 0
  br i1 %i.i, label %bb.d, label %_ZN5folly5CpuIdC2Ev.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.j = tail call { i32, i32, i32, i32 } asm sideeffect "\0A        cpuid\0A      ", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 1, i32 0) #8, !srcloc !12 ; 2 uses
  %i.k = extractvalue { i32, i32, i32, i32 } %i.j, 2
  %i.l = extractvalue { i32, i32, i32, i32 } %i.j, 3
  store i32 %i.k, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly6detail25crc32c_hw_supported_sse42EvE2id, i64 12), align 4, !tbaa !13
  store i32 %i.l, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly6detail25crc32c_hw_supported_sse42EvE2id, i64 16), align 4, !tbaa !15
  %i.m = icmp samesign ugt i32 %i.e, 6
  br i1 %i.m, label %bb.e, label %_ZN5folly5CpuIdC2Ev.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.n = tail call { i32, i32, i32, i32 } asm sideeffect "\0A        cpuid\0A      ", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #8, !srcloc !12 ; 3 uses
  %i.o = extractvalue { i32, i32, i32, i32 } %i.n, 1
  %i.p = extractvalue { i32, i32, i32, i32 } %i.n, 2
  %i.q = extractvalue { i32, i32, i32, i32 } %i.n, 3
  store i32 %i.o, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly6detail25crc32c_hw_supported_sse42EvE2id, i64 20), align 4, !tbaa !16
  store i32 %i.p, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly6detail25crc32c_hw_supported_sse42EvE2id, i64 24), align 4, !tbaa !17
  store i32 %i.q, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly6detail25crc32c_hw_supported_sse42EvE2id, i64 28), align 4, !tbaa !18
  br label %_ZN5folly5CpuIdC2Ev.exit.i.i

_ZN5folly5CpuIdC2Ev.exit.i.i:                     ; preds = %bb.e, %bb.d, %bb.c
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6detail25crc32c_hw_supported_sse42EvE2id) #8
  br label %_ZN5folly6detail19crc32c_hw_supportedEv.exit

_ZN5folly6detail19crc32c_hw_supportedEv.exit:     ; preds = %bb.a, %bb.b, %_ZN5folly5CpuIdC2Ev.exit.i.i
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly6detail25crc32c_hw_supported_sse42EvE2id, i64 12), align 4, !tbaa !13
  %i.s = and i32 %i.r, 1048576
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN5folly6detail19crc32c_hw_supportedEv.exit
  %i.t = icmp ugt i64 %1, 4096
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = tail call noundef i32 @_ZN5folly6detail17sse_crc32c_v8s3x3EPKhmj(ptr noundef %0, i64 noundef %1, i32 noundef %2)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.v = tail call noundef i32 @_ZN5folly6detail9crc32c_hwEPKhmj(ptr noundef %0, i64 noundef %1, i32 noundef %2)
  br label %bb.j

bb.i:                                             ; preds = %_ZN5folly6detail19crc32c_hw_supportedEv.exit
  %i.w = tail call noundef i32 @_ZN5folly6detail6crc_swILj517762881EEEjPKhmj(ptr noundef %0, i64 noundef %1, i32 noundef %2)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.0 = phi i32 [ %i.u, %bb.g ], [ %i.v, %bb.h ], [ %i.w, %bb.i ]
  ret i32 %.0
}

declare noundef i32 @_ZN5folly6detail17sse_crc32c_v8s3x3EPKhmj(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN5folly6detail9crc32c_hwEPKhmj(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5folly5crc32EPKhmj(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5folly6detail18crc32_hw_supportedEvE2id acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5folly6detail18crc32_hw_supportedEv.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6detail18crc32_hw_supportedEvE2id) #8
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5folly6detail18crc32_hw_supportedEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) @_ZZN5folly6detail18crc32_hw_supportedEvE2id, i8 0, i64 32, i1 false)
  %i.d = tail call { i32, i32, i32, i32 } asm sideeffect "\0A        cpuid\0A      ", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0, i32 0) #8, !srcloc !12 ; 4 uses
  %i.e = extractvalue { i32, i32, i32, i32 } %i.d, 0 ; 2 uses
  %i.f = extractvalue { i32, i32, i32, i32 } %i.d, 1
  %i.g = extractvalue { i32, i32, i32, i32 } %i.d, 2
  %i.h = extractvalue { i32, i32, i32, i32 } %i.d, 3
  store i32 %i.f, ptr @_ZZN5folly6detail18crc32_hw_supportedEvE2id, align 4, !tbaa !7
  store i32 %i.h, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly6detail18crc32_hw_supportedEvE2id, i64 4), align 4, !tbaa !7
  store i32 %i.g, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly6detail18crc32_hw_supportedEvE2id, i64 8), align 4, !tbaa !7
  %i.i = icmp sgt i32 %i.e, 0
  br i1 %i.i, label %bb.d, label %_ZN5folly5CpuIdC2Ev.exit.i

bb.d:                                             ; preds = %bb.c
  %i.j = tail call { i32, i32, i32, i32 } asm sideeffect "\0A        cpuid\0A      ", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 1, i32 0) #8, !srcloc !12 ; 2 uses
  %i.k = extractvalue { i32, i32, i32, i32 } %i.j, 2
  %i.l = extractvalue { i32, i32, i32, i32 } %i.j, 3
  store i32 %i.k, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly6detail18crc32_hw_supportedEvE2id, i64 12), align 4, !tbaa !13
  store i32 %i.l, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly6detail18crc32_hw_supportedEvE2id, i64 16), align 4, !tbaa !15
  %i.m = icmp samesign ugt i32 %i.e, 6
  br i1 %i.m, label %bb.e, label %_ZN5folly5CpuIdC2Ev.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = tail call { i32, i32, i32, i32 } asm sideeffect "\0A        cpuid\0A      ", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #8, !srcloc !12 ; 3 uses
  %i.o = extractvalue { i32, i32, i32, i32 } %i.n, 1
  %i.p = extractvalue { i32, i32, i32, i32 } %i.n, 2
  %i.q = extractvalue { i32, i32, i32, i32 } %i.n, 3
  store i32 %i.o, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly6detail18crc32_hw_supportedEvE2id, i64 20), align 4, !tbaa !16
  store i32 %i.p, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly6detail18crc32_hw_supportedEvE2id, i64 24), align 4, !tbaa !17
  store i32 %i.q, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly6detail18crc32_hw_supportedEvE2id, i64 28), align 4, !tbaa !18
  br label %_ZN5folly5CpuIdC2Ev.exit.i

_ZN5folly5CpuIdC2Ev.exit.i:                       ; preds = %bb.e, %bb.d, %bb.c
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6detail18crc32_hw_supportedEvE2id) #8
  br label %_ZN5folly6detail18crc32_hw_supportedEv.exit

_ZN5folly6detail18crc32_hw_supportedEv.exit:      ; preds = %bb.a, %bb.b, %_ZN5folly5CpuIdC2Ev.exit.i
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly6detail18crc32_hw_supportedEvE2id, i64 12), align 4, !tbaa !13
  %i.s = and i32 %i.r, 1048576
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.l, label %bb.f

bb.f:                                             ; preds = %_ZN5folly6detail18crc32_hw_supportedEv.exit
  %i.t = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.u = and i64 %i.t, 15
  %.not.i6 = icmp eq i64 %i.u, 0
  br i1 %.not.i6, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = sub i64 0, %i.t
  %i.w = and i64 %i.v, 15
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.w, i64 %1) ; 3 uses
  %i.x = tail call noundef i32 @_ZN5folly6detail6crc_swILj79764919EEEjPKhmj(ptr noundef %0, i64 noundef %.sroa.speculated.i, i32 noundef %2)
  %i.y = sub i64 %1, %.sroa.speculated.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.029.i = phi i64 [ %1, %bb.f ], [ %i.y, %bb.g ] ; 5 uses
  %.018.i = phi i32 [ %2, %bb.f ], [ %i.x, %bb.g ] ; 2 uses
  %.017.i = phi i64 [ 0, %bb.f ], [ %.sroa.speculated.i, %bb.g ] ; 3 uses
  %i.z = icmp ugt i64 %.029.i, 15
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.017.i
  %i.ab = lshr i64 %.029.i, 4
  %i.ac = tail call noundef i32 @_ZN5folly6detail16crc32_hw_alignedEjPKDv2_xm(i32 noundef %.018.i, ptr noundef %i.aa, i64 noundef %i.ab)
  %i.ad = and i64 %.029.i, -16
  %i.ae = add nuw i64 %.017.i, %i.ad
  %i.af = and i64 %.029.i, 15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.130.i = phi i64 [ %i.af, %bb.i ], [ %.029.i, %bb.h ] ; 2 uses
  %.119.i = phi i32 [ %i.ac, %bb.i ], [ %.018.i, %bb.h ] ; 2 uses
  %.1.i = phi i64 [ %i.ae, %bb.i ], [ %.017.i, %bb.h ]
  %i.ag = icmp eq i64 %.130.i, 0
  br i1 %i.ag, label %_ZN5folly6detail8crc32_hwEPKhmj.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.1.i
  br label %bb.l

bb.l:                                             ; preds = %_ZN5folly6detail18crc32_hw_supportedEv.exit, %bb.k
  %.119.i.sink = phi i32 [ %.119.i, %bb.k ], [ %2, %_ZN5folly6detail18crc32_hw_supportedEv.exit ]
  %.130.i.sink = phi i64 [ %.130.i, %bb.k ], [ %1, %_ZN5folly6detail18crc32_hw_supportedEv.exit ]
  %.sink = phi ptr [ %i.ah, %bb.k ], [ %0, %_ZN5folly6detail18crc32_hw_supportedEv.exit ]
  %i.ai = tail call noundef i32 @_ZN5folly6detail6crc_swILj79764919EEEjPKhmj(ptr noundef %.sink, i64 noundef %.130.i.sink, i32 noundef %.119.i.sink)
  br label %_ZN5folly6detail8crc32_hwEPKhmj.exit

_ZN5folly6detail8crc32_hwEPKhmj.exit:             ; preds = %bb.l, %bb.j
  %.0 = phi i32 [ %.119.i, %bb.j ], [ %i.ai, %bb.l ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5folly10crc32_typeEPKhmj(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5folly5crc32EPKhmj(ptr noundef %0, i64 noundef %1, i32 noundef %2)
  %i.b = xor i32 %i.a, -1
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5folly13crc32_combineEjjm(i32 noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4
  %i.b = and i64 %2, 3                            ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call noundef i32 @_ZN5folly5crc32EPKhmj(ptr noundef nonnull %i.a, i64 noundef %i.b, i32 noundef %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.011 = phi i32 [ %i.c, %bb.b ], [ %0, %bb.a ]  ; 2 uses
  %i.d = load atomic i8, ptr @_ZGVZN5folly6detail18crc32_hw_supportedEvE2id acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.d, label %_ZN5folly6detail18crc32_hw_supportedEv.exit, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.f = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6detail18crc32_hw_supportedEvE2id) #8
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN5folly6detail18crc32_hw_supportedEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) @_ZZN5folly6detail18crc32_hw_supportedEvE2id, i8 0, i64 32, i1 false)
  %i.g = call { i32, i32, i32, i32 } asm sideeffect "\0A        cpuid\0A      ", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0, i32 0) #8, !srcloc !12 ; 4 uses
  %i.h = extractvalue { i32, i32, i32, i32 } %i.g, 0 ; 2 uses
  %i.i = extractvalue { i32, i32, i32, i32 } %i.g, 1
  %i.j = extractvalue { i32, i32, i32, i32 } %i.g, 2
  %i.k = extractvalue { i32, i32, i32, i32 } %i.g, 3
  store i32 %i.i, ptr @_ZZN5folly6detail18crc32_hw_supportedEvE2id, align 4, !tbaa !7
  store i32 %i.k, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly6detail18crc32_hw_supportedEvE2id, i64 4), align 4, !tbaa !7
  store i32 %i.j, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly6detail18crc32_hw_supportedEvE2id, i64 8), align 4, !tbaa !7
  %i.l = icmp sgt i32 %i.h, 0
  br i1 %i.l, label %bb.f, label %_ZN5folly5CpuIdC2Ev.exit.i

bb.f:                                             ; preds = %bb.e
  %i.m = call { i32, i32, i32, i32 } asm sideeffect "\0A        cpuid\0A      ", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 1, i32 0) #8, !srcloc !12 ; 2 uses
  %i.n = extractvalue { i32, i32, i32, i32 } %i.m, 2
  %i.o = extractvalue { i32, i32, i32, i32 } %i.m, 3
  store i32 %i.n, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly6detail18crc32_hw_supportedEvE2id, i64 12), align 4, !tbaa !13
  store i32 %i.o, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly6detail18crc32_hw_supportedEvE2id, i64 16), align 4, !tbaa !15
  %i.p = icmp samesign ugt i32 %i.h, 6
  br i1 %i.p, label %bb.g, label %_ZN5folly5CpuIdC2Ev.exit.i

bb.g:                                             ; preds = %bb.f
  %i.q = call { i32, i32, i32, i32 } asm sideeffect "\0A        cpuid\0A      ", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #8, !srcloc !12 ; 3 uses
  %i.r = extractvalue { i32, i32, i32, i32 } %i.q, 1
  %i.s = extractvalue { i32, i32, i32, i32 } %i.q, 2
  %i.t = extractvalue { i32, i32, i32, i32 } %i.q, 3
  store i32 %i.r, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly6detail18crc32_hw_supportedEvE2id, i64 20), align 4, !tbaa !16
  store i32 %i.s, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly6detail18crc32_hw_supportedEvE2id, i64 24), align 4, !tbaa !17
  store i32 %i.t, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly6detail18crc32_hw_supportedEvE2id, i64 28), align 4, !tbaa !18
  br label %_ZN5folly5CpuIdC2Ev.exit.i

_ZN5folly5CpuIdC2Ev.exit.i:                       ; preds = %bb.g, %bb.f, %bb.e
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6detail18crc32_hw_supportedEvE2id) #8
  br label %_ZN5folly6detail18crc32_hw_supportedEv.exit

_ZN5folly6detail18crc32_hw_supportedEv.exit:      ; preds = %bb.c, %bb.d, %_ZN5folly5CpuIdC2Ev.exit.i
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly6detail18crc32_hw_supportedEvE2id, i64 12), align 4, !tbaa !13
  %i.v = and i32 %i.u, 1048576
  %.not13 = icmp eq i32 %i.v, 0
  br i1 %.not13, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5folly6detail18crc32_hw_supportedEv.exit
  %i.w = call noundef i32 @_ZN5folly6detail16crc32_combine_hwEjjm(i32 noundef %.011, i32 noundef %1, i64 noundef %2)
  br label %bb.j

bb.i:                                             ; preds = %_ZN5folly6detail18crc32_hw_supportedEv.exit
  %i.x = call noundef i32 @_ZN5folly6detail16crc32_combine_swEjjm(i32 noundef %.011, i32 noundef %1, i64 noundef %2)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi i32 [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

declare noundef i32 @_ZN5folly6detail16crc32_combine_hwEjjm(i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN5folly6detail16crc32_combine_swEjjm(i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5folly14crc32c_combineEjjm(i32 noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4
  %i.b = and i64 %2, 3                            ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call noundef i32 @_ZN5folly6crc32cEPKhmj(ptr noundef nonnull %i.a, i64 noundef %i.b, i32 noundef %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.013 = phi i32 [ %i.c, %bb.b ], [ %0, %bb.a ]  ; 2 uses
  %i.d = load atomic i8, ptr @_ZGVZN5folly6detail25crc32c_hw_supported_sse42EvE2id acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.d, label %_ZN5folly6detail19crc32c_hw_supportedEv.exit, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.f = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6detail25crc32c_hw_supported_sse42EvE2id) #8
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZN5folly6detail19crc32c_hw_supportedEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) @_ZZN5folly6detail25crc32c_hw_supported_sse42EvE2id, i8 0, i64 32, i1 false)
  %i.g = call { i32, i32, i32, i32 } asm sideeffect "\0A        cpuid\0A      ", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0, i32 0) #8, !srcloc !12 ; 4 uses
  %i.h = extractvalue { i32, i32, i32, i32 } %i.g, 0 ; 2 uses
  %i.i = extractvalue { i32, i32, i32, i32 } %i.g, 1
  %i.j = extractvalue { i32, i32, i32, i32 } %i.g, 2
  %i.k = extractvalue { i32, i32, i32, i32 } %i.g, 3
  store i32 %i.i, ptr @_ZZN5folly6detail25crc32c_hw_supported_sse42EvE2id, align 4, !tbaa !7
  store i32 %i.k, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly6detail25crc32c_hw_supported_sse42EvE2id, i64 4), align 4, !tbaa !7
  store i32 %i.j, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly6detail25crc32c_hw_supported_sse42EvE2id, i64 8), align 4, !tbaa !7
  %i.l = icmp sgt i32 %i.h, 0
  br i1 %i.l, label %bb.f, label %_ZN5folly5CpuIdC2Ev.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.m = call { i32, i32, i32, i32 } asm sideeffect "\0A        cpuid\0A      ", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 1, i32 0) #8, !srcloc !12 ; 2 uses
  %i.n = extractvalue { i32, i32, i32, i32 } %i.m, 2
  %i.o = extractvalue { i32, i32, i32, i32 } %i.m, 3
  store i32 %i.n, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly6detail25crc32c_hw_supported_sse42EvE2id, i64 12), align 4, !tbaa !13
  store i32 %i.o, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly6detail25crc32c_hw_supported_sse42EvE2id, i64 16), align 4, !tbaa !15
  %i.p = icmp samesign ugt i32 %i.h, 6
  br i1 %i.p, label %bb.g, label %_ZN5folly5CpuIdC2Ev.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.q = call { i32, i32, i32, i32 } asm sideeffect "\0A        cpuid\0A      ", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #8, !srcloc !12 ; 3 uses
  %i.r = extractvalue { i32, i32, i32, i32 } %i.q, 1
  %i.s = extractvalue { i32, i32, i32, i32 } %i.q, 2
  %i.t = extractvalue { i32, i32, i32, i32 } %i.q, 3
  store i32 %i.r, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly6detail25crc32c_hw_supported_sse42EvE2id, i64 20), align 4, !tbaa !16
  store i32 %i.s, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly6detail25crc32c_hw_supported_sse42EvE2id, i64 24), align 4, !tbaa !17
  store i32 %i.t, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly6detail25crc32c_hw_supported_sse42EvE2id, i64 28), align 4, !tbaa !18
  br label %_ZN5folly5CpuIdC2Ev.exit.i.i

_ZN5folly5CpuIdC2Ev.exit.i.i:                     ; preds = %bb.g, %bb.f, %bb.e
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6detail25crc32c_hw_supported_sse42EvE2id) #8
  br label %_ZN5folly6detail19crc32c_hw_supportedEv.exit

_ZN5folly6detail19crc32c_hw_supportedEv.exit:     ; preds = %bb.c, %bb.d, %_ZN5folly5CpuIdC2Ev.exit.i.i
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly6detail25crc32c_hw_supported_sse42EvE2id, i64 12), align 4, !tbaa !13
  %i.v = and i32 %i.u, 1048576
  %.not15 = icmp eq i32 %i.v, 0
  %i.w = and i64 %2, -4                           ; 2 uses
  br i1 %.not15, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5folly6detail19crc32c_hw_supportedEv.exit
  %i.x = call noundef i32 @_ZN5folly6detail17crc32c_combine_hwEjjm(i32 noundef %.013, i32 noundef %1, i64 noundef %i.w)
  br label %bb.j

bb.i:                                             ; preds = %_ZN5folly6detail19crc32c_hw_supportedEv.exit
  %i.y = call noundef i32 @_ZN5folly6detail17crc32c_combine_swEjjm(i32 noundef %.013, i32 noundef %1, i64 noundef %i.w)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi i32 [ %i.x, %bb.h ], [ %i.y, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

declare noundef i32 @_ZN5folly6detail17crc32c_combine_hwEjjm(i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN5folly6detail17crc32c_combine_swEjjm(i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5folly19crc32c_combine_seedEjjmj(i32 noundef %0, i32 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = icmp eq i32 %3, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZN5folly14crc32c_combineEjjm(i32 noundef %0, i32 noundef %1, i64 noundef %2)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.d = xor i32 %3, %0                           ; 2 uses
  %i.e = xor i32 %3, %1                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4
  %i.f = and i64 %2, 3                            ; 2 uses
  %.not = icmp eq i64 %i.f, 0
end_hunk_0
