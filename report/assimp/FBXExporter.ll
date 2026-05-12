inline.NumInlined: 9031
inline.NumDeleted: 2243
begin_hunk_0_@_ZN6Assimp11FBXExporter17WriteBinaryHeaderEv:bb.a
_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.f, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.aw = load i64, ptr %i.av, align 16           ; 2 uses
  %i.ax = add i64 %i.aw, 4                        ; 4 uses
  %i.ay = load ptr, ptr %i.ac, align 16           ; 5 uses
  %i.az = load ptr, ptr %i.z, align 8             ; 7 uses
  %i.ba = ptrtoint ptr %i.ay to i64               ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp11FBXExporter17WriteBinaryHeaderEv:bb.a
  br i1 %i.bd, label %bb.n, label %.noexc

bb.n:                                             ; preds = %bb.m
  %i.be = sub nuw i64 %i.ax, %i.bc                ; 6 uses
  %i.bf = load ptr, ptr %i.ad, align 8
  %i.bg = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bh = sub i64 %i.bg, %i.ba                    ; 2 uses
  %i.bi = icmp sgt i64 %i.bc, -1
  call void @llvm.assume(i1 %i.bi)
  %3 = xor i64 %i.bc, 9223372036854775807         ; 2 uses
  %i.bj = icmp ule i64 %i.bh, %3
  call void @llvm.assume(i1 %i.bj)
  %.not28.i.i = icmp ult i64 %i.bh, %i.be
end_hunk_1
begin_hunk_2_@_ZN6Assimp11FBXExporter17WriteBinaryHeaderEv:bb.a
  br label %.noexc

bb.q:                                             ; preds = %bb.n
  %4 = icmp ult i64 %3, %i.be
  br i1 %4, label %bb.r, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
end_hunk_2
begin_hunk_3_@_ZN6Assimp11FBXExporter17WriteBinaryFooterEv:bb.a
_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.g, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cj = load i64, ptr %i.ci, align 16           ; 3 uses
  %i.ck = add i64 %i.cj, 4                        ; 3 uses
  %i.cl = load ptr, ptr %i.bp, align 16           ; 5 uses
  %i.cm = load ptr, ptr %i.bm, align 8            ; 6 uses
  %i.cn = ptrtoint ptr %i.cl to i64               ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN6Assimp11FBXExporter17WriteBinaryFooterEv:bb.a
  br i1 %i.cq, label %bb.n, label %.noexc

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cr = sub nuw i64 %i.ck, %i.cp                ; 6 uses
  %i.cs = load ptr, ptr %i.bq, align 8
  %i.ct = ptrtoint ptr %i.cs to i64               ; 2 uses
  %i.cu = sub i64 %i.ct, %i.cn                    ; 2 uses
  %i.cv = icmp sgt i64 %i.cp, -1
  tail call void @llvm.assume(i1 %i.cv)
  %3 = xor i64 %i.cp, 9223372036854775807         ; 2 uses
  %i.cw = icmp ule i64 %i.cu, %3
  tail call void @llvm.assume(i1 %i.cw)
  %.not28.i.i = icmp ult i64 %i.cu, %i.cr
end_hunk_4
begin_hunk_5_@_ZN6Assimp11FBXExporter17WriteBinaryFooterEv:bb.a
  br label %.noexc

bb.q:                                             ; preds = %bb.n
  %4 = icmp ult i64 %3, %i.cr
  br i1 %4, label %bb.r, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
end_hunk_5
begin_hunk_6_@_ZN6Assimp11FBXExporter23WriteAsciiSectionHeaderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.ca = load i64, ptr %i.bz, align 16           ; 2 uses
  %i.cb = load i64, ptr %i.bj, align 8            ; 2 uses
  %i.cc = add i64 %i.cb, %i.ca                    ; 4 uses
  %i.cd = load ptr, ptr %i.x, align 16            ; 5 uses
  %i.ce = load ptr, ptr %i.u, align 8             ; 7 uses
  %i.cf = ptrtoint ptr %i.cd to i64               ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN6Assimp11FBXExporter23WriteAsciiSectionHeaderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br i1 %i.ci, label %bb.u, label %.noexc22

bb.u:                                             ; preds = %bb.t
  %i.cj = sub nuw i64 %i.cc, %i.ch                ; 6 uses
  %i.ck = load ptr, ptr %i.y, align 8
  %i.cl = ptrtoint ptr %i.ck to i64               ; 2 uses
  %i.cm = sub i64 %i.cl, %i.cf                    ; 2 uses
  %i.cn = icmp sgt i64 %i.ch, -1
  call void @llvm.assume(i1 %i.cn)
  %6 = xor i64 %i.ch, 9223372036854775807         ; 2 uses
  %i.co = icmp ule i64 %i.cm, %6
  call void @llvm.assume(i1 %i.co)
  %.not28.i.i = icmp ult i64 %i.cm, %i.cj
end_hunk_7
begin_hunk_8_@_ZN6Assimp11FBXExporter23WriteAsciiSectionHeaderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %.noexc22

bb.x:                                             ; preds = %bb.u
  %7 = icmp ult i64 %6, %i.cj
  br i1 %7, label %bb.y, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.y:                                             ; preds = %bb.x
end_hunk_8
begin_hunk_9_@"_ZZN6Assimp11FBXExporter12WriteObjectsEvENK3$_0clEPK6aiNode":bb.a
  %i.lt = ashr exact i64 %i.ls, 2                 ; 2 uses
  %i.lu = icmp ult i64 %i.gs, 2305843009213693952
  call void @llvm.assume(i1 %i.lu)
  %78 = xor i64 %i.gs, 2305843009213693951        ; 2 uses
  %i.lv = icmp ule i64 %i.lt, %78
  call void @llvm.assume(i1 %i.lv)
  %.not28.i = icmp ult i64 %i.lt, %i.lo
end_hunk_9
