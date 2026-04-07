inline.NumInlined: 66
inline.NumDeleted: 55
begin_hunk_0_@main:bb.a
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3) #7, !inline_history !17 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
end_hunk_0
begin_hunk_1_@main:bb.a
bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.m = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #7 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !22   ; 2 uses
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
end_hunk_1
begin_hunk_2_@main:bb.a

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(73) %i.q, ptr noundef nonnull align 1 dereferenceable(73) @.str.1, i64 73, i1 false)
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 73
  store ptr %i.x, ptr %i.p, align 8, !tbaa !22
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.d, %bb.e
  %i.y = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #7 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !22 ; 2 uses
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
end_hunk_2
begin_hunk_3_@main:bb.a

bb.g:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.ac, ptr noundef nonnull align 1 dereferenceable(56) @.str.2, i64 56, i1 false)
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !22
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  store ptr %i.aj, ptr %i.ab, align 8, !tbaa !22
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit3

bb.h:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @_ZN6hermes6driver29compileFromCommandLineOptionsEv(ptr dead_on_unwind nonnull writable sret(%"struct.hermes::driver::CompileResult") align 8 %4) #7
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !23
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #7 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !22 ; 2 uses
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
end_hunk_3
begin_hunk_4_@main:bb.a

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %i.aq, ptr noundef nonnull align 1 dereferenceable(37) @.str.3, i64 37, i1 false)
  %i.aw = load ptr, ptr %i.ap, align 8, !tbaa !22
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 37
  store ptr %i.ax, ptr %i.ap, align 8, !tbaa !22
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit6

bb.l:                                             ; preds = %bb.h
  %i.ay = load i32, ptr %4, align 8, !tbaa !25
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit6

_ZN4llvh11raw_ostreamlsEPKc.exit6:                ; preds = %bb.k, %bb.j, %bb.l
  %.0 = phi i32 [ %i.ay, %bb.l ], [ 1, %bb.j ], [ 1, %bb.k ]
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !39 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZN6hermes6driver18BytecodeBufferInfoD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit6
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !40
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #8
  br label %_ZN6hermes6driver18BytecodeBufferInfoD2Ev.exit.i

_ZN6hermes6driver18BytecodeBufferInfoD2Ev.exit.i: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.bf = load ptr, ptr %i.ak, align 8, !tbaa !23 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i, label %_ZN6hermes6driver13CompileResultD2Ev.exit, label %_ZNKSt14default_deleteIN6hermes3hbc14BCProviderBaseEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN6hermes3hbc14BCProviderBaseEEclEPS2_.exit.i.i: ; preds = %_ZN6hermes6driver18BytecodeBufferInfoD2Ev.exit.i
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !41
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %i.bf) #7, !inline_history !43
  br label %_ZN6hermes6driver13CompileResultD2Ev.exit

_ZN6hermes6driver13CompileResultD2Ev.exit:        ; preds = %_ZN6hermes6driver18BytecodeBufferInfoD2Ev.exit.i, %_ZNKSt14default_deleteIN6hermes3hbc14BCProviderBaseEEclEPS2_.exit.i.i
end_hunk_4
begin_hunk_5_@_ZNSt17_Function_handlerIFvRN4llvh11raw_ostreamEEPS3_E9_M_invokeERKSt9_Any_dataS2_
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRN4llvh11raw_ostreamEEPS3_E9_M_invokeERKSt9_Any_dataS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  tail call void %i.a(ptr noundef nonnull align 8 dereferenceable(36) %1) #7, !inline_history !44
  ret void
}

end_hunk_5
begin_hunk_6_@_ZNSt17_Function_handlerIFvRN4llvh11raw_ostreamEEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation:bb.a
!14 = !{!"_ZTSSt8functionIFvRN4llvh11raw_ostreamEEE", !15, i64 0, !11, i64 24}
!15 = !{!"_ZTSSt14_Function_base", !6, i64 0, !11, i64 16}
!16 = !{!15, !11, i64 16}
!17 = distinct !{null}
!18 = !{!19, !20, i64 16}
!19 = !{!"_ZTSN4llvh11raw_ostreamE", !20, i64 8, !20, i64 16, !20, i64 24, !21, i64 32}
!20 = !{!"p1 omnipotent char", !11, i64 0}
!21 = !{!"_ZTSN4llvh11raw_ostream10BufferKindE", !6, i64 0}
!22 = !{!19, !20, i64 24}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 _ZTSN6hermes3hbc14BCProviderBaseE", !11, i64 0}
!25 = !{!26, !27, i64 0}
!26 = !{!"_ZTSN6hermes6driver13CompileResultE", !27, i64 0, !28, i64 8, !34, i64 16}
!27 = !{!"_ZTSN6hermes6driver13CompileStatusE", !6, i64 0}
!28 = !{!"_ZTSSt10unique_ptrIN6hermes3hbc14BCProviderBaseESt14default_deleteIS2_EE", !29, i64 0}
!29 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes3hbc14BCProviderBaseESt14default_deleteIS2_ELb1ELb1EE", !30, i64 0}
!30 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes3hbc14BCProviderBaseESt14default_deleteIS2_EE", !31, i64 0}
!31 = !{!"_ZTSSt5tupleIJPN6hermes3hbc14BCProviderBaseESt14default_deleteIS2_EEE", !32, i64 0}
!32 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes3hbc14BCProviderBaseESt14default_deleteIS2_EEE", !33, i64 0}
!33 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes3hbc14BCProviderBaseELb0EE", !24, i64 0}
!34 = !{!"_ZTSN6hermes6driver18BytecodeBufferInfoE", !35, i64 0, !20, i64 8, !36, i64 16, !37, i64 24}
!35 = !{!"bool", !6, i64 0}
!36 = !{!"long", !6, i64 0}
!37 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !38, i64 0, !36, i64 8, !6, i64 16}
!38 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !20, i64 0}
!39 = !{!37, !20, i64 0}
!40 = !{!6, !6, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"vtable pointer", !7, i64 0}
!43 = distinct !{null, null, null}
!44 = distinct !{null, null}
end_hunk_6
