inline.NumInlined: 12825
inline.NumDeleted: 1651
begin_hunk_0_@_ZN2v88internal17DoubleStringCache3SetEPNS0_7IsolateENS0_13InternalIndexEmNS0_12DirectHandleINS0_6StringEEE:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.ag = load i64, ptr %i.af, align 8
  store atomic volatile i64 %i.ag, ptr %i.ae monotonic, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i32 %i.x, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ak = zext nneg i32 %i.x to i64
  %i.al = shl nuw nsw i64 %i.ak, 1
  %i.am = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 0, i64 %i.al, ptr nonnull %i.aj) #16, !srcloc !10 ; 0 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal17DoubleStringCache3SetEPNS0_7IsolateENS0_13InternalIndexEmNS0_12DirectHandleINS0_6StringEEE:bb.a
  br label %_ZN2v88internal17DoubleStringCache3NewINS0_7IsolateEEENS0_12DirectHandleIS1_EEPT_i.exit

_ZN2v88internal17DoubleStringCache3NewINS0_7IsolateEEENS0_12DirectHandleIS1_EEPT_i.exit: ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit.i, %bb.i
  %.0.i.i.i = phi ptr [ %i.as, %bb.i ], [ %i.ao, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit.i ] ; 4 uses
  %i.at = ptrtoint ptr %.0.i.i.i to i64
  %i.au = add i64 %i.at, 8
  %i.av = inttoptr i64 %i.au to ptr
end_hunk_1
begin_hunk_2_@_ZN2v88internal17DoubleStringCache3SetEPNS0_7IsolateENS0_13InternalIndexEmNS0_12DirectHandleINS0_6StringEEE:bb.a
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 9616
  store i64 %i.ac, ptr %i.ba, align 8
  %4 = load i64, ptr %.0.i.i.i, align 8
  %5 = add i64 %4, -1
  %6 = inttoptr i64 %5 to ptr                     ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bb = load i32, ptr %7, align 4
  %i.bc = lshr i64 %2, 32
  %i.bd = xor i64 %i.bc, %2
  %i.be = trunc i64 %i.bd to i32
  %i.bf = add i32 %i.bb, -1
  %i.bg = and i32 %i.bf, %i.be
  %i.bh = zext i32 %i.bg to i64
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %i.bh
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.a, %bb.d, %_ZN2v88internal17DoubleStringCache3NewINS0_7IsolateEEENS0_12DirectHandleIS1_EEPT_i.exit, %_ZN2v88internal7Isolate22MemorySaverModeEnabledEv.exit
end_hunk_2
