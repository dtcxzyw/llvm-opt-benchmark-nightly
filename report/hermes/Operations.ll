inline.NumInlined: 2743
inline.NumDeleted: 1013
begin_hunk_0_@_ZN6hermes2vm23symbolDescriptiveStringERNS0_7RuntimeENS0_6HandleINS0_8SymbolIDEEE:bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k
  %.0.i.i = phi ptr [ %i.as, %bb.k ], [ %i.au, %bb.m ], [ %i.av, %bb.n ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.0.i.i, ptr noundef nonnull align 1 dereferenceable(7) @.str.28, i64 7, i1 false)
  br label %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm23symbolDescriptiveStringERNS0_7RuntimeENS0_6HandleINS0_8SymbolIDEEE:bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  br label %.lr.ph.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.t, %bb.s, %bb.q
  %.0.i4.i = phi ptr [ %i.ax, %bb.q ], [ %i.az, %bb.s ], [ %i.ba, %bb.t ] ; 4 uses
  store <4 x i16> <i16 83, i16 121, i16 109, i16 98>, ptr %.0.i4.i, align 2, !tbaa !46
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 8
end_hunk_1
