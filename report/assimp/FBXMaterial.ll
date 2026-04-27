inline.NumInlined: 873
inline.NumDeleted: 360
begin_hunk_0_@_ZN6Assimp3FBX8MaterialC2EmRKNS0_7ElementERKNS0_8DocumentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %bb.ca

bb.at:                                            ; preds = %.lr.ph294, %bb.bx
  %.sroa.0254.0292 = phi ptr [ %i.ho, %.lr.ph294 ], [ %i.lu, %bb.bx ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0254.0292) ]
  %i.il = load ptr, ptr %.sroa.0254.0292, align 8 ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8 ; 6 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 16 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp3FBX14LayeredTexture11fillTextureERKNS0_8DocumentE:bb.a
bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EE9push_backERKS4_.exit
  %i.r = phi ptr [ %i.f, %.lr.ph ], [ %i.bk, %_ZNSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EE9push_backERKS4_.exit ]
  %.043 = phi i64 [ 0, %.lr.ph ], [ %i.bi, %_ZNSt6vectorIPKN6Assimp3FBX7TextureESaIS4_EE9push_backERKS4_.exit ] ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.043 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = invoke noundef ptr @_ZNK6Assimp3FBX10Connection12SourceObjectEv(ptr noundef nonnull align 8 dereferenceable(64) %i.t)
          to label %bb.d unwind label %bb.f       ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN6Assimp3FBX7TextureC2EmRKNS0_7ElementERKNS0_8DocumentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit425.a: ; preds = %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i423.a
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  %i.od = load ptr, ptr %i.w, align 8, !nonnull !28, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  %i.oe = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.oe, ptr %18, align 8
end_hunk_2
begin_hunk_3_@_ZN6Assimp3FBX7TextureC2EmRKNS0_7ElementERKNS0_8DocumentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %bb.ei

._crit_edge.i.i441:                               ; preds = %bb.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434
  %i.pb = load ptr, ptr %i.w, align 8, !nonnull !28, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  %i.pc = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.pc, ptr %19, align 8
end_hunk_3
begin_hunk_4_@_ZN6Assimp3FBX7TextureC2EmRKNS0_7ElementERKNS0_8DocumentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %bb.ei

._crit_edge.i.i461:                               ; preds = %bb.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit457
  %i.pt = load ptr, ptr %i.w, align 8, !nonnull !28, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  %i.pu = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  store ptr %i.pu, ptr %20, align 8
end_hunk_4
begin_hunk_5_@_ZN6Assimp3FBX7TextureC2EmRKNS0_7ElementERKNS0_8DocumentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %bb.ei

bb.dw:                                            ; preds = %.lr.ph, %bb.ee
  %.sroa.0507.0534 = phi ptr [ %i.qq, %.lr.ph ], [ %i.ru, %bb.ee ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0507.0534) ]
  %i.rc = load ptr, ptr %.sroa.0507.0534, align 8
  %i.rd = invoke noundef ptr @_ZNK6Assimp3FBX10Connection12SourceObjectEv(ptr noundef nonnull align 8 dereferenceable(64) %i.rc)
          to label %bb.dx unwind label %bb.dz     ; 3 uses
end_hunk_5
begin_hunk_6_@_ZN6Assimp6Logger13formatMessageIJEPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_:bb.a
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !45)
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
end_hunk_6
