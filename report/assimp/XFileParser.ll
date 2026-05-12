inline.NumInlined: 2013
inline.NumDeleted: 808
begin_hunk_0_@_ZN6Assimp11XFileParserC2ERKSt6vectorIcSaIcEE:bb.a
  br label %_ZN6Assimp11XFileParser18ReadUntilEndOfLineEv.exit

bb.am:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.af, %bb.ag, %bb.ae
  %.sroa.0.1 = phi ptr [ null, %bb.ae ], [ %i.cm, %bb.ag ], [ %i.cm, %bb.af ], [ %i.cm, %.loopexit.split-lp ], [ %i.cm, %.loopexit ]
  %.sroa.14.1 = phi ptr [ null, %bb.ae ], [ %i.cq, %bb.ag ], [ %i.cq, %bb.af ], [ %i.cq, %.loopexit.split-lp ], [ %i.cq, %.loopexit ]
  %.pn.pn.pn = phi { ptr, i32 } [ %i.di, %bb.ae ], [ %i.dk, %bb.ag ], [ %i.dj, %bb.af ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  call void @_ZN6Assimp11CompressionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #28
  br label %bb.an

end_hunk_0
begin_hunk_1_@_ZNSt6vectorI10aiVector2tIfESaIS1_EE6resizeEm:bb.a
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNSt6vectorI10aiVector2tIfESaIS1_EE6resizeEm:bb.a
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %2 = sub nuw nsw i64 1152921504606846975, %i.g
  %i.p = icmp ule i64 %i.n, %2
  tail call void @llvm.assume(i1 %i.p)
  %.not28.i = icmp ult i64 %i.n, %i.i
end_hunk_2
begin_hunk_3_@_ZNSt6vectorI10aiVector2tIfESaIS1_EE6resizeEm:bb.a
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %3 = icmp ugt i64 %1, 1152921504606846975
  br i1 %3, label %bb.d, label %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
end_hunk_3
