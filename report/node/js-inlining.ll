inline.NumInlined: 1303
inline.NumDeleted: 581
begin_hunk_0_@_ZN2v88internal8compiler9JSInliner12ReduceJSCallEPNS1_4NodeE:bb.a
  %i.hy = load ptr, ptr %i.h, align 8
  %i.hz = load i32, ptr %i.hy, align 8            ; 2 uses
  %i.ia = and i32 %i.hz, 1024
  %.not275 = icmp eq i32 %i.ia, 0                 ; 2 uses
  %spec.select = select i1 %.not275, i32 1, i32 3
  %44 = and i32 %i.hz, 32
  %.not276 = icmp eq i32 %44, 0
  %45 = select i1 %.not275, i32 5, i32 7
  %.sroa.0221.1 = select i1 %.not276, i32 %spec.select, i32 %45
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #16
  %i.ib = load ptr, ptr %13, align 8              ; 5 uses
  %i.ic = load ptr, ptr %i.ib, align 8            ; 3 uses
end_hunk_0
