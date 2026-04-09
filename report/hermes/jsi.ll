inline.NumInlined: 510
inline.NumDeleted: 310
begin_hunk_0_@main:bb.a
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 288
  %i.hn = load ptr, ptr %i.hm, align 8, !noalias !141
  invoke void %i.hn(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %_ZNK8facebook3jsi6String4utf8B5cxx11ERNS0_7RuntimeE.exit unwind label %bb.bt

_ZNK8facebook3jsi6String4utf8B5cxx11ERNS0_7RuntimeE.exit: ; preds = %bb.bk
  %i.ho = load ptr, ptr %20, align 8, !tbaa !52
end_hunk_0
begin_hunk_1_@main:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %_ZN4llvh11raw_ostreamlsEc.exit134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135
  %i.id = load ptr, ptr %21, align 8, !tbaa !144  ; 3 uses
  %.not.i138 = icmp eq ptr %i.id, null
  br i1 %.not.i138, label %_ZN8facebook3jsi7PointerD2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !33
  %i.if = load ptr, ptr %i.ie, align 8
  call void %i.if(ptr noundef nonnull align 8 dereferenceable(8) %i.id) #23, !inline_history !147
  br label %_ZN8facebook3jsi7PointerD2Ev.exit

_ZN8facebook3jsi7PointerD2Ev.exit:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, %bb.bn
end_hunk_1
begin_hunk_2_@main:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142, %bb.bt
  %.pn58 = phi { ptr, i32 } [ %i.ip, %bb.bt ], [ %i.iq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142 ], [ %i.iq, %bb.bu ] ; 2 uses
  %i.iw = load ptr, ptr %21, align 8, !tbaa !144  ; 3 uses
  %.not.i145 = icmp eq ptr %i.iw, null
  br i1 %.not.i145, label %_ZN8facebook3jsi7PointerD2Ev.exit146, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !33
  %i.iy = load ptr, ptr %i.ix, align 8
  call void %i.iy(ptr noundef nonnull align 8 dereferenceable(8) %i.iw) #23, !inline_history !147
  br label %_ZN8facebook3jsi7PointerD2Ev.exit146

_ZN8facebook3jsi7PointerD2Ev.exit146:             ; preds = %bb.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %bb.bs
end_hunk_2
begin_hunk_3_@main:bb.a
  %i.jg = load ptr, ptr %i.ja, align 8, !tbaa !33
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %i.ji = load ptr, ptr %i.jh, align 8
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(16) %i.ja) #23, !inline_history !148
  %i.jj = load ptr, ptr %i.ja, align 8, !tbaa !33
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  %i.jl = load ptr, ptr %i.jk, align 8
  call void %i.jl(ptr noundef nonnull align 8 dereferenceable(16) %i.ja) #23, !inline_history !148
  br label %.thread194

bb.cc:                                            ; preds = %bb.ca
end_hunk_3
begin_hunk_4_@main:bb.a
  %i.le = load ptr, ptr %i.ky, align 8, !tbaa !33
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %i.lg = load ptr, ptr %i.lf, align 8
  call void %i.lg(ptr noundef nonnull align 8 dereferenceable(16) %i.ky) #23, !inline_history !149
  %i.lh = load ptr, ptr %i.ky, align 8, !tbaa !33
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  %i.lj = load ptr, ptr %i.li, align 8
  call void %i.lj(ptr noundef nonnull align 8 dereferenceable(16) %i.ky) #23, !inline_history !149
  br label %_ZNSt12__shared_ptrIN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ct:                                            ; preds = %bb.cr
end_hunk_4
begin_hunk_5_@_ZN6hermes2vm13RuntimeConfigD2Ev:bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !150
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !150
  br label %_ZNSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
end_hunk_5
begin_hunk_6_@_ZN6hermes2vm13RuntimeConfigD2Ev:bb.a

_ZNSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !151  ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.h

end_hunk_6
begin_hunk_7_@_ZN6hermes2vm13RuntimeConfigD2Ev:bb.a

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.h, %_ZNSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !151  ; 2 uses
  %.not.i1.i = icmp eq ptr %i.y, null
  br i1 %.not.i1.i, label %_ZNSt14_Function_baseD2Ev.exit2.i, label %bb.j

end_hunk_7
begin_hunk_8_@_ZN6hermes2vm13RuntimeConfigD2Ev:bb.a

_ZNSt14_Function_baseD2Ev.exit2.i:                ; preds = %bb.j, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i2, label %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i, label %bb.l

end_hunk_8
begin_hunk_9_@_ZNSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !152
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !152
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
end_hunk_9
begin_hunk_10_@_ZNSt12__shared_ptrIKN8facebook3jsi18PreparedJavaScriptELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !152
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !152
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
end_hunk_10
begin_hunk_11_@_ZNSt12__shared_ptrIN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !152
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !152
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
end_hunk_11
begin_hunk_12_@_ZNSt23_Sp_counted_ptr_inplaceI10FileBufferSaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #23, !inline_history !153
  ret void
}

end_hunk_12
begin_hunk_13_@_ZN10FileBufferD2Ev:bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #23, !inline_history !154
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i
end_hunk_13
begin_hunk_14_@_ZN10FileBufferD0Ev:bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #23, !inline_history !155
  br label %_ZN10FileBufferD2Ev.exit

_ZN10FileBufferD2Ev.exit:                         ; preds = %bb.a, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i
  tail call void @_ZN8facebook3jsi6BufferD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %0) #23, !inline_history !156
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #24
  ret void
}
end_hunk_14
begin_hunk_15_@_ZNK10FileBuffer4sizeEv:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !157
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !159
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
end_hunk_15
begin_hunk_16_@_ZNK10FileBuffer4dataEv:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !159
  ret ptr %i.d
}

end_hunk_16
begin_hunk_17_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #23, !inline_history !160
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !49
  %.not.i = icmp eq i8 %i.e, 0
end_hunk_17
begin_hunk_18_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #23, !inline_history !160
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
end_hunk_18
begin_hunk_19_@_ZN6hermes2vm8GCConfigD2Ev
define linkonce_odr hidden void @_ZN6hermes2vm8GCConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

end_hunk_19
begin_hunk_20_@_ZN6hermes2vm8GCConfigD2Ev:bb.a

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !151  ; 2 uses
  %.not.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i1, label %_ZNSt14_Function_baseD2Ev.exit2, label %bb.d

end_hunk_20
begin_hunk_21_@_ZN6hermes2vm8GCConfigD2Ev:bb.a

_ZNSt14_Function_baseD2Ev.exit2:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !151  ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit, label %bb.f

end_hunk_21
begin_hunk_22_@_ZNK4llvh2cl11initializerIA2_cE5applyINS0_3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserISB_EEEEEEvRT_:bb.a
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.b = load ptr, ptr %0, align 8, !tbaa !161, !nonnull !42 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !45
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #23 ; 4 uses
end_hunk_22
begin_hunk_23_@_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN8facebook3jsi12StringBufferESaIvEJRN4llvh2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS9_6parserISG_EEEEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_:_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN8facebook3jsi12StringBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSA_.exit
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store ptr %i.b, ptr %0, align 8, !tbaa !93
  store ptr %i.e, ptr %1, align 8, !tbaa !163
  ret void

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook3jsi12StringBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10: ; preds = %.noexc.i.i.i
end_hunk_23
begin_hunk_24_@_ZNSt23_Sp_counted_ptr_inplaceIN8facebook3jsi12StringBufferESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23, !inline_history !164
  ret void
}

end_hunk_24
begin_hunk_25_@_ZN8facebook3jsi12StringBufferD0Ev:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !49
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #24, !inline_history !165
  br label %_ZN8facebook3jsi12StringBufferD2Ev.exit

_ZN8facebook3jsi12StringBufferD2Ev.exit:          ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZN8facebook3jsi6BufferD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #23, !inline_history !165
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #24
  ret void
}
end_hunk_25
begin_hunk_26_@bcmp
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZNK8facebook3jsi6String4utf8B5cxx11ERNS0_7RuntimeE: argument 0"}
!143 = distinct !{!143, !"_ZNK8facebook3jsi6String4utf8B5cxx11ERNS0_7RuntimeE"}
!144 = !{!145, !146, i64 0}
!145 = !{!"_ZTSN8facebook3jsi7PointerE", !146, i64 0}
!146 = !{!"p1 _ZTSN8facebook3jsi7Runtime12PointerValueE", !12, i64 0}
!147 = distinct !{null}
!148 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook3jsi18PreparedJavaScriptELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!149 = distinct !{ptr @_ZNSt12__shared_ptrIN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!150 = distinct !{null, null, null}
!151 = !{!101, !12, i64 16}
!152 = distinct !{null, null}
!153 = distinct !{null}
!154 = distinct !{null, null}
!155 = distinct !{ptr @_ZN10FileBufferD2Ev, null, null}
!156 = !{ptr @_ZN10FileBufferD2Ev}
!157 = !{!158, !11, i64 16}
!158 = !{!"_ZTSN4llvh12MemoryBufferE", !11, i64 8, !11, i64 16}
!159 = !{!158, !11, i64 8}
!160 = distinct !{null}
!161 = !{!162, !11, i64 0}
!162 = !{!"_ZTSN4llvh2cl11initializerIA2_cEE", !11, i64 0}
!163 = !{!71, !71, i64 0}
!164 = distinct !{null}
!165 = !{ptr @_ZN8facebook3jsi12StringBufferD2Ev}
end_hunk_26
