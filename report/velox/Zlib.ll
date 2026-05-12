inline.NumInlined: 620
inline.NumDeleted: 317
begin_hunk_0_@_ZNK5folly11compression4zlib12_GLOBAL__N_115ZlibStreamCodec13validPrefixesB5cxx11Ev:bb.a
  %.022128 = phi i32 [ 0, %.preheader ], [ %i.dl, %bb.t ] ; 3 uses
  %i.r = or disjoint i32 %.022128, %.023129       ; 2 uses
  %i.s = urem i32 %i.r, 31
  %5 = or disjoint i32 %i.s, %i.r
  %i.t = trunc nuw i32 %5 to i16
  %6 = xor i16 %i.t, 31                           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.u = call noundef i16 @llvm.bswap.i16(i16 %6)
  store ptr %i.g, ptr %2, align 8, !tbaa !48, !alias.scope !62
  store i64 2, ptr %i.h, align 8, !tbaa !49, !alias.scope !62
  store i8 0, ptr %i.i, align 2, !tbaa !28
end_hunk_0
begin_hunk_1_@_ZNK5folly11compression4zlib12_GLOBAL__N_115ZlibStreamCodec13validPrefixesB5cxx11Ev:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bm = phi ptr [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ac, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread ], [ %i.bh, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.bn = and i16 %6, 31
  %i.bo = icmp eq i16 %i.bn, 31
  br i1 %i.bo, label %bb.l, label %bb.t

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %7 = add nsw i16 %6, -31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.bp = call noundef i16 @llvm.bswap.i16(i16 %7)
  store ptr %i.j, ptr %3, align 8, !tbaa !48, !alias.scope !72
  store i64 2, ptr %i.k, align 8, !tbaa !49, !alias.scope !72
  store i8 0, ptr %i.l, align 2, !tbaa !28
end_hunk_1
