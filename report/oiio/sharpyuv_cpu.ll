inline.NumInlined: 6
inline.NumDeleted: 3
begin_hunk_0_@x86CPUInfo:bb.a
  br label %CheckSlowModel.exit

bb.j:                                             ; preds = %bb.b
  %i.af = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0, i32 0) #1, !inline_history !9, !srcloc !7
  %i.ag = extractvalue { i32, i32, i32, i32 } %i.af, 0
  %i.ah = icmp slt i32 %i.ag, 1
  br i1 %i.ah, label %CheckSlowModel.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 1, i32 0) #1, !inline_history !9, !srcloc !7
  %i.aj = extractvalue { i32, i32, i32, i32 } %i.ai, 2
  %i.ak = and i32 %i.aj, 402653184
  %i.al = icmp eq i32 %i.ak, 402653184
  br i1 %i.al, label %x86CPUInfo.exit, label %CheckSlowModel.exit

x86CPUInfo.exit:                                  ; preds = %bb.k
  %i.am = tail call { i32, i32 } asm sideeffect ".byte 0x0f, 0x01, 0xd0\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0) #1, !inline_history !9, !srcloc !8
  %i.an = extractvalue { i32, i32 } %i.am, 0
  %i.ao = and i32 %i.an, 6
  %i.ap = icmp eq i32 %i.ao, 6
end_hunk_0
begin_hunk_1_@x86CPUInfo:bb.a
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{i64 333139}
!8 = !{i64 333957}
!9 = !{ptr @x86CPUInfo}
end_hunk_1
