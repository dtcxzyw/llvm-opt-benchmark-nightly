begin_hunk_0
  br label %.critedge18

.critedge18:                                      ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit, %bb.b, %bb.ae, %_ZNK10StringView10startsWithES_.exit.i56, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit80, %bb.f, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parseUnnamedTypeNameEPNS4_9NameStateE.exit, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parseUnnamedTypeNameEPNS4_9NameStateE.exit.thread119
  %.2 = phi ptr [ null, %bb.b ], [ %i.gs, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parseUnnamedTypeNameEPNS4_9NameStateE.exit.thread119 ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parseUnnamedTypeNameEPNS4_9NameStateE.exit ], [ null, %bb.f ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit80 ], [ null, %_ZNK10StringView10startsWithES_.exit.i56 ], [ null, %bb.ae ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit ]
  ret ptr %.2
}

end_hunk_0
begin_hunk_1
  br i1 %.not9.i.i.i.i.i.i11, label %bb.o, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread

bb.o:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i9
  %.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 4 uses
  store ptr %.ptr, ptr %0, align 16, !tbaa !11
  %i.at = icmp eq ptr %i.c, %.ptr
  br i1 %i.at, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread, label %bb.p
end_hunk_1
begin_hunk_2
  %i.ax = sext i8 %i.aw to i32
  %isdigittmp2.i24132 = add nsw i32 %i.ax, -48
  %isdigit3.i25133 = icmp ult i32 %isdigittmp2.i24132, 10
  br i1 %isdigit3.i25133, label %.lr.ph, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27

.lr.ph.i22:                                       ; preds = %.lr.ph
  %.val911.i23.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.val911.i23.add
end_hunk_2
begin_hunk_3
.lr.ph.i22._ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27_crit_edge: ; preds = %.lr.ph.i22
  %.ptr80.le = getelementptr inbounds nuw i8, ptr %i.a, i64 %.val911.i23.add
  %i.ba = icmp eq i64 %.val911.i23.add, 2
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27: ; preds = %.lr.ph.i22._ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27_crit_edge, %.lr.ph.i22.preheader
  %.lcssa = phi ptr [ %.ptr80.le, %.lr.ph.i22._ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27_crit_edge ], [ %.ptr, %.lr.ph.i22.preheader ]
  %.val911.i23.idx.lcssa = phi i1 [ %i.ba, %.lr.ph.i22._ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27_crit_edge ], [ true, %.lr.ph.i22.preheader ]
  br i1 %.val911.i23.idx.lcssa, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27.thread73

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27.thread73.loopexit: ; preds = %.lr.ph
  %.ptr80.le143 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.val911.i23.add
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27.thread73

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27.thread73: ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27.thread73.loopexit, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27
  %.ptr80141 = phi ptr [ %.lcssa, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27 ], [ %.ptr80.le143, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27.thread73.loopexit ] ; 4 uses
  %.not.i28 = icmp eq ptr %.ptr80141, %i.c
  br i1 %.not.i28, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread, label %bb.q

end_hunk_3
begin_hunk_4
  store ptr %.sroa.3.0.i44.sink, ptr %.sroa.2.0..sroa_idx.i.i.i56, align 8, !tbaa !61
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread: ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.sink.split, %bb.a, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit52, %bb.aa, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27.thread73, %bb.q, %bb.p, %bb.o, %_ZNK10StringView10startsWithES_.exit.i9, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit, %bb.k, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27
  %.2 = phi ptr [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit ], [ null, %bb.p ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit52 ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27 ], [ null, %bb.aa ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit27.thread73 ], [ null, %bb.a ], [ null, %bb.k ], [ null, %_ZNK10StringView10startsWithES_.exit.i9 ], [ null, %bb.o ], [ null, %bb.q ], [ %i.cm, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread.sink.split ]
  ret ptr %.2
}

end_hunk_4
