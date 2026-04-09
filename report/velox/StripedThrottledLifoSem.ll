inline.NumInlined: 173
inline.NumDeleted: 140
begin_hunk_0_@_ZN5folly31StripedThrottledLifoSemBalancer6Worker4loopEv:bb.a
  %i.ae = getelementptr inbounds i8, ptr %.pn, i64 -16
  %i.af = load ptr, ptr %i.ae, align 16, !tbaa !481
  %i.ag = invoke noundef i64 %i.af(ptr noundef nonnull align 16 dereferenceable(48) %i.ad)
          to label %_ZNK5folly6detail8function14FunctionTraitsIKFlvEEclEv.exit unwind label %bb.f ; 3 uses

_ZNK5folly6detail8function14FunctionTraitsIKFlvEEclEv.exit: ; preds = %.lr.ph
  %.sroa.029.052 = getelementptr inbounds i8, ptr %.pn, i64 -80 ; 3 uses
  %i.ah = load ptr, ptr %.sroa.029.052, align 8, !tbaa !483
  call void asm sideeffect "990: nop\0A.pushsection .note.stapsdt,\22?\22,\22note\22\0A.balign 4\0A.4byte 992f-991f,994f-993f,3\0A991: .asciz \22stapsdt\22\0A992: .balign 4\0A993: .8byte 990b\0A.8byte _.stapsdt.base\0A.8byte 0\0A.asciz \22folly\22\0A.asciz \22striped_throttled_lifo_sem_balancer_step\22\0A.asciz \22${1:n}@$2 ${3:n}@$4\22\0A994: .balign 4\0A.popsection\0A", "ip,n,nor,n,nor,~{dirflag},~{fpsr},~{flags}"(i32 0, i64 8, ptr %i.ah, i64 8, i64 %i.ag) #14, !srcloc !484
  call void asm sideeffect ".ifndef _.stapsdt.base\0A.pushsection .stapsdt.base,\22aG\22,\22progbits\22,.stapsdt.base,comdat\0A.weak _.stapsdt.base\0A.hidden _.stapsdt.base\0A_.stapsdt.base: .space 1\0A.size _.stapsdt.base,1\0A.popsection\0A.endif\0A", "~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !485
  %i.ai = icmp sgt i64 %i.ag, 0
  %i.aj = or i1 %.1.shrunk53, %i.ai               ; 2 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !469, !nonnull !171, !align !470
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 112
  %i.am = atomicrmw add ptr %i.al, i64 %i.ag monotonic, align 8 ; 0 uses
  %i.an = icmp eq ptr %i.ab, %.sroa.029.052
  br i1 %i.an, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %.lr.ph, !prof !486

bb.f:                                             ; preds = %.lr.ph
  %i.ao = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_StripedThrottledLifoSem.cpp:bb.a
!480 = !{!20, !21, i64 0}
!481 = !{!482, !15, i64 48}
!482 = !{!"_ZTSN5folly8FunctionIKFlvEEE", !9, i64 0, !15, i64 48, !15, i64 56}
!483 = !{!15, !15, i64 0}
!484 = !{i64 2162134957, i64 2162135080, i64 2162135167, i64 2162135283, i64 2162135379, i64 2162135443, i64 2162135507, i64 2162135578, i64 2162135711, i64 2162135816, i64 2162136034, i64 2162136370, i64 2162136487, i64 2162136539}
!485 = !{i64 2162138459, i64 2162138672, i64 2162138806, i64 2162138875, i64 2162138948, i64 2162139040, i64 2162139105, i64 2162139149}
!486 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_1
