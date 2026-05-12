inline.NumInlined: 1121
inline.NumDeleted: 375
begin_hunk_0_@_ZN6Assimp3FBX4Node22WritePropertyNodeAsciiERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIdSaIdEERNS_12StreamWriterILb0ELb0EEEi:bb.a
  %indvars.iv = phi i64 [ 0, %.lr.ph155.preheader ], [ %indvars.iv.next, %bb.ap ] ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %i.ge = load i8, ptr %i.gd, align 1
  %i.gf = add i64 %i.gc, 1                        ; 5 uses
  %i.gg = load ptr, ptr %i.ab, align 8            ; 5 uses
  %i.gh = load ptr, ptr %i.aa, align 8            ; 7 uses
  %i.gi = ptrtoint ptr %i.gg to i64               ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp3FBX4Node22WritePropertyNodeAsciiERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIdSaIdEERNS_12StreamWriterILb0ELb0EEEi:bb.a
  br i1 %i.gl, label %bb.ah, label %.noexc120

bb.ah:                                            ; preds = %bb.ag
  %i.gm = sub nuw i64 %i.gf, %i.gk                ; 5 uses
  %i.gn = load ptr, ptr %i.dt, align 8
  %i.go = ptrtoint ptr %i.gn to i64               ; 2 uses
  %i.gp = sub i64 %i.go, %i.gi                    ; 2 uses
  %i.gq = icmp sgt i64 %i.gk, -1
  call void @llvm.assume(i1 %i.gq)
  %8 = sub nuw nsw i64 9223372036854775807, %i.gk
  %i.gr = icmp ule i64 %i.gp, %8
  call void @llvm.assume(i1 %i.gr)
  %.not28.i.i = icmp ult i64 %i.gp, %i.gm
end_hunk_1
begin_hunk_2_@_ZN6Assimp3FBX4Node22WritePropertyNodeAsciiERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIdSaIdEERNS_12StreamWriterILb0ELb0EEEi:bb.a
  br label %.noexc120

bb.ak:                                            ; preds = %bb.ah
  %9 = icmp slt i64 %i.gf, 0
  br i1 %9, label %bb.al, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.al:                                            ; preds = %bb.ak
end_hunk_2
begin_hunk_3_@_ZN6Assimp3FBX4Node22WritePropertyNodeAsciiERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIiSaIiEERNS_12StreamWriterILb0ELb0EEEi:bb.a
  %indvars.iv = phi i64 [ 0, %.lr.ph155.preheader ], [ %indvars.iv.next, %bb.ap ] ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %i.ge = load i8, ptr %i.gd, align 1
  %i.gf = add i64 %i.gc, 1                        ; 5 uses
  %i.gg = load ptr, ptr %i.ab, align 8            ; 5 uses
  %i.gh = load ptr, ptr %i.aa, align 8            ; 7 uses
  %i.gi = ptrtoint ptr %i.gg to i64               ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN6Assimp3FBX4Node22WritePropertyNodeAsciiERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIiSaIiEERNS_12StreamWriterILb0ELb0EEEi:bb.a
  br i1 %i.gl, label %bb.ah, label %.noexc120

bb.ah:                                            ; preds = %bb.ag
  %i.gm = sub nuw i64 %i.gf, %i.gk                ; 5 uses
  %i.gn = load ptr, ptr %i.dt, align 8
  %i.go = ptrtoint ptr %i.gn to i64               ; 2 uses
  %i.gp = sub i64 %i.go, %i.gi                    ; 2 uses
  %i.gq = icmp sgt i64 %i.gk, -1
  call void @llvm.assume(i1 %i.gq)
  %8 = sub nuw nsw i64 9223372036854775807, %i.gk
  %i.gr = icmp ule i64 %i.gp, %8
  call void @llvm.assume(i1 %i.gr)
  %.not28.i.i = icmp ult i64 %i.gp, %i.gm
end_hunk_4
begin_hunk_5_@_ZN6Assimp3FBX4Node22WritePropertyNodeAsciiERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIiSaIiEERNS_12StreamWriterILb0ELb0EEEi:bb.a
  br label %.noexc120

bb.ak:                                            ; preds = %bb.ah
  %9 = icmp slt i64 %i.gf, 0
  br i1 %9, label %bb.al, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.al:                                            ; preds = %bb.ak
end_hunk_5
begin_hunk_6_@_ZNSt6vectorIhSaIhEE6resizeEm:bb.a
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %i.f                     ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = sub i64 %i.k, %i.d                       ; 2 uses
  %i.m = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.m)
  %2 = sub nuw nsw i64 9223372036854775807, %i.f
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not28.i = icmp ult i64 %i.l, %i.h
end_hunk_6
begin_hunk_7_@_ZNSt6vectorIhSaIhEE6resizeEm:bb.a
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.e:                                             ; preds = %bb.b
  %3 = icmp slt i64 %1, 0
  br i1 %3, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
end_hunk_7
