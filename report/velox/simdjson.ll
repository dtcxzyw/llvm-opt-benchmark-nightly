inline.NumInlined: 1113
inline.NumDeleted: 361
begin_hunk_0_@_ZNK8simdjson14implementation27supported_by_runtime_systemEv:bb.a

bb.b:                                             ; preds = %bb.a
  %i.h = and i32 %i.f, 2
  %.not24.i = icmp eq i32 %i.h, 0                 ; 2 uses
  %spec.select.i = select i1 %.not24.i, i32 8, i32 24 ; 3 uses
  %i.i = and i32 %i.f, 201326592
  %.not25.i = icmp eq i32 %i.i, 201326592
end_hunk_0
begin_hunk_1_@_ZNK8simdjson14implementation27supported_by_runtime_systemEv:bb.a
bb.d:                                             ; preds = %bb.c
  %i.o = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A\09", "={ax},={bx},={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #42, !srcloc !48 ; 2 uses
  %i.p = extractvalue { i32, i32, i32, i32 } %i.o, 1 ; 4 uses
  %1 = and i32 %i.p, 32
  %.not26.i = icmp eq i32 %1, 0
  %2 = select i1 %.not24.i, i32 12, i32 28
  %spec.select38.i = select i1 %.not26.i, i32 %spec.select.i, i32 %2
  %i.q = shl i32 %i.p, 2
  %i.r = and i32 %i.q, 32
  %i.s = lshr i32 %i.p, 2
  %i.t = and i32 %i.s, 64
  %i.u = or disjoint i32 %i.t, %i.r
  %.3.i = or disjoint i32 %i.u, %spec.select38.i  ; 2 uses
  %i.v = and i64 %i.l, 224
  %i.w = icmp eq i64 %i.v, 224
  br i1 %i.w, label %bb.e, label %_ZN8simdjson8internalL30detect_supported_architecturesEv.exit
end_hunk_1
begin_hunk_2_@_ZNK8simdjson8internal29available_implementation_list21detect_best_supportedEv:bb.a

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 2
  %.not24.i = icmp eq i32 %i.d, 0                 ; 2 uses
  %spec.select.i = select i1 %.not24.i, i32 8, i32 24 ; 3 uses
  %i.e = and i32 %i.b, 201326592
  %.not25.i = icmp eq i32 %i.e, 201326592
end_hunk_2
begin_hunk_3_@_ZNK8simdjson8internal29available_implementation_list21detect_best_supportedEv:bb.a
bb.d:                                             ; preds = %bb.c
  %i.k = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A\09", "={ax},={bx},={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #42, !srcloc !48 ; 2 uses
  %i.l = extractvalue { i32, i32, i32, i32 } %i.k, 1 ; 4 uses
  %1 = and i32 %i.l, 32
  %.not26.i = icmp eq i32 %1, 0
  %2 = select i1 %.not24.i, i32 12, i32 28
  %spec.select38.i = select i1 %.not26.i, i32 %spec.select.i, i32 %2
  %i.m = shl i32 %i.l, 2
  %i.n = and i32 %i.m, 32
  %i.o = lshr i32 %i.l, 2
  %i.p = and i32 %i.o, 64
  %i.q = or disjoint i32 %i.p, %i.n
  %.3.i = or disjoint i32 %i.q, %spec.select38.i  ; 2 uses
  %i.r = and i64 %i.h, 224
  %i.s = icmp eq i64 %i.r, 224
  br i1 %i.s, label %bb.e, label %_ZN8simdjson8internalL30detect_supported_architecturesEv.exit
end_hunk_3
