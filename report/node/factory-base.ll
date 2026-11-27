Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/factory-base?download=true
inline.NumInlined: 12826
inline.NumDeleted: 1653
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN2v88internal11FactoryBaseINS0_7FactoryEE14DoubleToStringEdbNS0_15NumberCacheModeE:bb.a
  %i.d = tail call noundef i1 @llvm.is.fpclass.f64(double %1, /* (nzero) */ i32 32)
  br i1 %i.d, label %.thread, label %_ZN2v88internal11IsSmiDoubleEd.exit.i

_ZN2v88internal11IsSmiDoubleEd.exit.i:            ; preds = %bb.c
  %i.e = fptosi double %1 to i32                  ; 2 uses
  %i.f = sitofp i32 %i.e to double
  %i.g = fcmp oeq double %1, %i.f
  br i1 %i.g, label %bb.d, label %.thread

bb.d:                                             ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i
  %i.h = sext i32 %i.e to i64
  %i.i = shl nsw i64 %i.h, 32
  %i.j = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE11SmiToStringENS0_6TaggedINS0_3SmiEEENS0_15NumberCacheModeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.i, i32 noundef %3)
  br label %bb.t

.thread:                                          ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i, %bb.c, %bb.b, %bb.a
  %.not = icmp ne i32 %3, 0                       ; 3 uses
  br i1 %.not, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.thread
  %i.k = bitcast double %1 to i64                 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 9616
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, -1
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 4
  %i.r = lshr i64 %i.k, 32
  %i.s = xor i64 %i.r, %i.k
  %i.t = trunc i64 %i.s to i32
  %i.u = add i32 %i.q, -1
  %i.v = and i32 %i.u, %i.t
  %i.w = zext i32 %i.v to i64                     ; 5 uses
  %i.x = icmp eq i32 %3, 2
  br i1 %i.x, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.w ; 2 uses
  %.0.copyload.i.i.i.i = load i64, ptr %i.z, align 1
  %i.aa = icmp eq i64 %.0.copyload.i.i.i.i, %i.k  ; 2 uses
  %i.ab = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1512), align 8, !range !31, !noundef !32
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.g, label %bb.k, !prof !30

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 58656
  %i.ae = load ptr, ptr %i.ad, align 8            ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8592
  %i.ag = load atomic ptr, ptr %i.af acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %bb.h, label %_ZN2v88internal12StatsCounter9IncrementEi.exit.i, !prof !30

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8576
  %i.ai = tail call noundef ptr @_ZN2v88internal12StatsCounter22SetupPtrFromStatsTableEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ah) #15
  br label %_ZN2v88internal12StatsCounter9IncrementEi.exit.i

_ZN2v88internal12StatsCounter9IncrementEi.exit.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi ptr [ %i.ai, %bb.h ], [ %i.ag, %bb.g ]
  %i.aj = atomicrmw add ptr %.0.i.i.i, i32 1 monotonic, align 4 ; 0 uses
  br i1 %i.aa, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal12StatsCounter9IncrementEi.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 8616
  %i.al = load atomic ptr, ptr %i.ak acquire, align 8 ; 2 uses
  %.not.i.i17.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i17.i, label %bb.j, label %.thread.i, !prof !30

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 8600
  %i.an = tail call noundef ptr @_ZN2v88internal12StatsCounter22SetupPtrFromStatsTableEv(ptr noundef nonnull align 8 dereferenceable(24) %i.am) #15
  br label %.thread.i

.thread.i:                                        ; preds = %bb.j, %bb.i
  %.0.i.i18.i = phi ptr [ %i.an, %bb.j ], [ %i.al, %bb.i ]
  %i.ao = atomicrmw add ptr %.0.i.i18.i, i32 1 monotonic, align 4 ; 0 uses
  br label %.critedge

bb.k:                                             ; preds = %bb.f
  br i1 %i.aa, label %.critedge.i, label %.critedge

.critedge.i:                                      ; preds = %bb.k, %_ZN2v88internal12StatsCounter9IncrementEi.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.aq = load i64, ptr %i.ap, align 8            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = icmp eq ptr %i.as, %i.au
  br i1 %i.av, label %bb.l, label %_ZN2v88internal17DoubleStringCache3GetEPNS0_7IsolateENS0_13InternalIndexEm.exit, !prof !30

bb.l:                                             ; preds = %.critedge.i
  %i.aw = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #15
  br label %_ZN2v88internal17DoubleStringCache3GetEPNS0_7IsolateENS0_13InternalIndexEm.exit

_ZN2v88internal17DoubleStringCache3GetEPNS0_7IsolateENS0_13InternalIndexEm.exit: ; preds = %.critedge.i, %bb.l
  %.0.i.i = phi ptr [ %i.aw, %bb.l ], [ %i.as, %.critedge.i ] ; 3 uses
  %i.ax = ptrtoint ptr %.0.i.i to i64
  %i.ay = add i64 %i.ax, 8
  %i.az = inttoptr i64 %i.ay to ptr
  store ptr %i.az, ptr %i.ar, align 8
  store i64 %i.aq, ptr %.0.i.i, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 648
  %.pre48 = load i64, ptr %.phi.trans.insert, align 8
  %i.ba = icmp eq i64 %i.aq, %.pre48
  br i1 %i.ba, label %.critedge, label %bb.t

.critedge:                                        ; preds = %bb.k, %.thread.i, %.thread, %_ZN2v88internal17DoubleStringCache3GetEPNS0_7IsolateENS0_13InternalIndexEm.exit, %bb.e
  %.sroa.016.047 = phi i64 [ %i.w, %_ZN2v88internal17DoubleStringCache3GetEPNS0_7IsolateENS0_13InternalIndexEm.exit ], [ %i.w, %bb.e ], [ -1, %.thread ], [ %i.w, %.thread.i ], [ %i.w, %bb.k ]
  %.02746 = phi i64 [ %i.k, %_ZN2v88internal17DoubleStringCache3GetEPNS0_7IsolateENS0_13InternalIndexEm.exit ], [ %i.k, %bb.e ], [ 0, %.thread ], [ %i.k, %.thread.i ], [ %i.k, %bb.k ]
  %i.bb = fcmp oeq double %1, 0.000000e+00
  br i1 %i.bb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.critedge
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 3656
  br label %bb.r

bb.n:                                             ; preds = %.critedge
  %i.bd = fcmp uno double %1, 0.000000e+00
  br i1 %i.bd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 6776
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.bf = call { i64, ptr } @_ZN2v88internal18DoubleToStringViewEdNS_4base6VectorIcEE(double noundef %1, ptr nonnull %i.a, i64 32) #15 ; 2 uses
  %i.bg = extractvalue { i64, ptr } %i.bf, 0
  %i.bh = extractvalue { i64, ptr } %i.bf, 1
  %i.bi = zext i1 %.not to i8
  %i.bj = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %i.bh, i64 %i.bg, i8 noundef zeroext %i.bi) ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.q, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedESt17basic_string_viewIcSt11char_traitsIcEENS0_14AllocationTypeE.exit, !prof !30

bb.q:                                             ; preds = %bb.p
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.22) #17
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedESt17basic_string_viewIcSt11char_traitsIcEENS0_14AllocationTypeE.exit: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedESt17basic_string_viewIcSt11char_traitsIcEENS0_14AllocationTypeE.exit, %bb.m
  %.sroa.034.1 = phi ptr [ %i.bc, %bb.m ], [ %i.be, %bb.o ], [ %i.bj, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedESt17basic_string_viewIcSt11char_traitsIcEENS0_14AllocationTypeE.exit ] ; 3 uses
  br i1 %.not, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @_ZN2v88internal17DoubleStringCache3SetEPNS0_7IsolateENS0_13InternalIndexEmNS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull %0, i64 %.sroa.016.047, i64 noundef %.02746, ptr nonnull %.sroa.034.1)
  br label %bb.t

bb.t:                                             ; preds = %_ZN2v88internal17DoubleStringCache3GetEPNS0_7IsolateENS0_13InternalIndexEm.exit, %bb.d, %bb.s, %bb.r
  %.sroa.034.2 = phi ptr [ %.sroa.034.1, %bb.r ], [ %.sroa.034.1, %bb.s ], [ %i.j, %bb.d ], [ %.0.i.i, %_ZN2v88internal17DoubleStringCache3GetEPNS0_7IsolateENS0_13InternalIndexEm.exit ]
  ret ptr %.sroa.034.2
}

declare { i64, ptr } @_ZN2v88internal18DoubleToStringViewEdNS_4base6VectorIcEE(double noundef, ptr, i64) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal17DoubleStringCache3SetEPNS0_7IsolateENS0_13InternalIndexEmNS0_12DirectHandleINS0_6StringEEE(ptr noundef %0, i64 %1, i64 noundef %2, ptr %3) local_unnamed_addr #5 comdat align 2 !guid !1293 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9616 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = add i64 %i.b, -1
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = and i64 %1, 4294967295
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.f ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp eq i32 %i.i, 128
  br i1 %i.j, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp eq i64 %i.l, 0
  %i.n = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 704), align 64, !range !31
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond = select i1 %i.m, i1 true, i1 %i.o
  br i1 %or.cond, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 200), align 8 ; 2 uses
  %i.p = and i16 %.sroa.0.0.copyload.i.i, 256
  %.not.i = icmp eq i16 %i.p, 0
  br i1 %.not.i, label %.split, label %_ZN2v88internal7Isolate22MemorySaverModeEnabledEv.exit, !prof !34

.split:                                           ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 59181
  %i.r = load atomic i8, ptr %i.q seq_cst, align 1, !range !31, !noundef !32
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %.critedge, label %bb.d

_ZN2v88internal7Isolate22MemorySaverModeEnabledEv.exit: ; preds = %bb.c
  %i.t = trunc i16 %.sroa.0.0.copyload.i.i to i1
  br i1 %i.t, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.split, %_ZN2v88internal7Isolate22MemorySaverModeEnabledEv.exit
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 184), align 8 ; 3 uses
  %spec.select.i = tail call i32 @llvm.usub.sat.i32(i32 %i.u, i32 1)
  %i.v = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select.i, i1 false)
  %i.w = sub nuw nsw i32 32, %i.v                 ; 2 uses
  %i.x = shl nuw i32 1, %i.w                      ; 2 uses
  %i.y = icmp ugt i32 %i.u, 128
  br i1 %i.y, label %bb.f, label %bb.e, !prof !34

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #17
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.z = icmp ult i32 %i.u, 4097
  br i1 %i.z, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit.i, label %bb.g, !prof !34

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #17
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit.i: ; preds = %bb.f
  %i.aa = shl nuw i32 16, %i.w
  %i.ab = add nuw nsw i32 %i.aa, 16
  %i.ac = tail call i64 @_ZN2v88internal7Factory11AllocateRawEiNS0_14AllocationTypeENS0_19AllocationAlignmentENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ab, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 0) #15 ; 3 uses
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr               ; 4 uses
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
  %i.am = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 0, i64 %i.al, ptr nonnull %i.aj) #15, !srcloc !35 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = icmp eq ptr %i.ao, %i.aq
  br i1 %i.ar, label %bb.h, label %_ZN2v88internal17DoubleStringCache3NewINS0_7IsolateEEENS0_12DirectHandleIS1_EEPT_i.exit, !prof !30

bb.h:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit.i
  %i.as = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #15
  br label %_ZN2v88internal17DoubleStringCache3NewINS0_7IsolateEEENS0_12DirectHandleIS1_EEPT_i.exit

_ZN2v88internal17DoubleStringCache3NewINS0_7IsolateEEENS0_12DirectHandleIS1_EEPT_i.exit: ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit.i, %bb.h
  %.0.i.i.i = phi ptr [ %i.as, %bb.h ], [ %i.ao, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit.i ] ; 4 uses
  %i.at = ptrtoint ptr %.0.i.i.i to i64
  %i.au = add i64 %i.at, 8
  %i.av = inttoptr i64 %i.au to ptr
  store ptr %i.av, ptr %i.an, align 8
  store i64 %i.ac, ptr %.0.i.i.i, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 55464
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = add i64 %i.ax, -55464
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 9616
  store i64 %i.ac, ptr %i.ba, align 8
  %i.bb = load i64, ptr %.0.i.i.i, align 8
  %i.bc = add i64 %i.bb, -1
  %i.bd = inttoptr i64 %i.bc to ptr               ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = lshr i64 %2, 32
  %i.bh = xor i64 %i.bg, %2
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = add i32 %i.bf, -1
  %i.bk = and i32 %i.bj, %i.bi
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %i.bl
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.a, %.split, %_ZN2v88internal17DoubleStringCache3NewINS0_7IsolateEEENS0_12DirectHandleIS1_EEPT_i.exit, %_ZN2v88internal7Isolate22MemorySaverModeEnabledEv.exit
  %.sroa.032.0 = phi ptr [ %i.a, %_ZN2v88internal7Isolate22MemorySaverModeEnabledEv.exit ], [ %.0.i.i.i, %_ZN2v88internal17DoubleStringCache3NewINS0_7IsolateEEENS0_12DirectHandleIS1_EEPT_i.exit ], [ %i.a, %.split ], [ %i.a, %bb.b ], [ %i.a, %bb.a ]
  %.0 = phi ptr [ %i.g, %_ZN2v88internal7Isolate22MemorySaverModeEnabledEv.exit ], [ %i.bn, %_ZN2v88internal17DoubleStringCache3NewINS0_7IsolateEEENS0_12DirectHandleIS1_EEPT_i.exit ], [ %i.g, %.split ], [ %i.g, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  store i64 %2, ptr %.0, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 2 uses
  %i.bp = load i64, ptr %.sroa.032.0, align 8     ; 3 uses
  %i.bq = load i64, ptr %3, align 8               ; 5 uses
  store atomic volatile i64 %i.bq, ptr %i.bo monotonic, align 8
  %i.br = trunc i64 %i.bq to i1
  br i1 %i.br, label %bb.i, label %_ZN2v88internal12TaggedMemberINS0_5UnionIJNS0_3SmiENS0_6StringEEEENS0_27V8HeapCompressionSchemeImplINS0_8MainCageEEEE5storeEPNS0_16HeapObjectLayoutENS0_6TaggedIS5_EENS0_16WriteBarrierModeE.exit

bb.i:                                             ; preds = %.critedge
  %i.bs = ptrtoint ptr %i.bo to i64               ; 2 uses
  %i.bt = and i64 %i.bp, -262144
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load i64, ptr %i.bu, align 262144       ; 2 uses
  %i.bw = and i64 %i.bv, 32
  %.not.i.i.i.i = icmp eq i64 %i.bw, 0
  %i.bx = and i64 %i.bv, 25
  %.not38.i.i.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not38.i.i.i.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.by = and i64 %i.bq, -262144
  %i.bz = inttoptr i64 %i.by to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i = load i64, ptr %i.bz, align 262144
  %i.ca = and i64 %.sroa.0.0.copyload.i28.i.i.i.i, 25
  %.not39.i.i.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not39.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.bp, i64 noundef %i.bs, i64 %i.bq) #15
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  br i1 %.not.i.i.i.i, label %_ZN2v88internal12TaggedMemberINS0_5UnionIJNS0_3SmiENS0_6StringEEEENS0_27V8HeapCompressionSchemeImplINS0_8MainCageEEEE5storeEPNS0_16HeapObjectLayoutENS0_6TaggedIS5_EENS0_16WriteBarrierModeE.exit, label %bb.m, !prof !34

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.bp, i64 %i.bs, i64 %i.bq) #15
  br label %_ZN2v88internal12TaggedMemberINS0_5UnionIJNS0_3SmiENS0_6StringEEEENS0_27V8HeapCompressionSchemeImplINS0_8MainCageEEEE5storeEPNS0_16HeapObjectLayoutENS0_6TaggedIS5_EENS0_16WriteBarrierModeE.exit

_ZN2v88internal12TaggedMemberINS0_5UnionIJNS0_3SmiENS0_6StringEEEENS0_27V8HeapCompressionSchemeImplINS0_8MainCageEEEE5storeEPNS0_16HeapObjectLayoutENS0_6TaggedIS5_EENS0_16WriteBarrierModeE.exit: ; preds = %.critedge, %bb.l, %bb.m
  ret void
}

declare { i64, ptr } @_ZN2v88internal15IntToStringViewEiNS_4base6VectorIcEE(i32 noundef, ptr, i64) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal14SmiStringCache3SetEPNS0_7IsolateENS0_13InternalIndexENS0_6TaggedINS0_3SmiEEENS0_12DirectHandleINS0_6StringEEE(ptr noundef %0, i64 %1, i64 %2, ptr %3) local_unnamed_addr #5 comdat align 2 !guid !1294 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9608 ; 6 uses
  %i.b = trunc i64 %1 to i32
  %i.c = shl i32 %i.b, 1                          ; 5 uses
  %i.d = load i64, ptr %i.a, align 8
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr                 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, -8589934592
  %i.j = icmp eq i64 %i.i, 1099511627776
  br i1 %i.j, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.l = sext i32 %i.c to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load atomic volatile i64, ptr %i.m monotonic, align 8
  %i.o = icmp eq i64 %i.n, 0
  %i.p = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 704), align 64, !range !31
  %i.q = trunc nuw i8 %i.p to i1
  %or.cond = select i1 %i.o, i1 true, i1 %i.q
  br i1 %or.cond, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 200), align 8 ; 2 uses
  %i.r = and i16 %.sroa.0.0.copyload.i.i, 256
  %.not.i = icmp eq i16 %i.r, 0
  br i1 %.not.i, label %.split, label %_ZN2v88internal7Isolate22MemorySaverModeEnabledEv.exit, !prof !34

.split:                                           ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 59181
  %i.t = load atomic i8, ptr %i.s seq_cst, align 1, !range !31, !noundef !32
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %.split..critedge_crit_edge, label %bb.d

.split..critedge_crit_edge:                       ; preds = %.split
  %.pre = load i64, ptr %i.a, align 8
  %.pre51 = add i64 %.pre, -1
  %.pre52 = inttoptr i64 %.pre51 to ptr
  br label %.critedge

_ZN2v88internal7Isolate22MemorySaverModeEnabledEv.exit: ; preds = %bb.c
  %i.v = trunc i16 %.sroa.0.0.copyload.i.i to i1
  br i1 %i.v, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.split, %_ZN2v88internal7Isolate22MemorySaverModeEnabledEv.exit
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 180), align 4 ; 4 uses
  %spec.select.i = tail call i32 @llvm.usub.sat.i32(i32 %i.w, i32 1)
  %i.x = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select.i, i1 false)
  %i.y = sub nuw nsw i32 32, %i.x                 ; 2 uses
  %i.z = icmp ugt i32 %i.w, 128
  br i1 %i.z, label %bb.f, label %bb.e, !prof !34

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #17
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.aa = icmp ult i32 %i.w, 67108865
  br i1 %i.aa, label %bb.h, label %bb.g, !prof !34

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #17
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = shl nuw i32 2, %i.y
  %i.ac = shl nuw i32 16, %i.y                    ; 2 uses
  %i.ad = add nuw nsw i32 %i.ac, 16
  %i.ae = tail call i64 @_ZN2v88internal7Factory11AllocateRawEiNS0_14AllocationTypeENS0_19AllocationAlignmentENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ad, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 0) #15 ; 3 uses
  %i.af = icmp samesign ugt i32 %i.w, 4096
  %i.ag = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1222), align 2, !range !31
  %i.ah = trunc nuw i8 %i.ag to i1
  %or.cond.i.i.i = select i1 %i.af, i1 %i.ah, i1 false
  br i1 %or.cond.i.i.i, label %bb.i, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.ai = and i64 %i.ae, -262144
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8            ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  %i.an = load atomic ptr, ptr %i.am seq_cst, align 8
  %.not.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i, label %bb.j, label %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i.i.i, !prof !30

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.15) #17
  unreachable

_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i.i.i: ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 224
  %narrow.i = add nuw nsw i32 %i.ac, 131072
  %i.ap = lshr i32 %narrow.i, 17
  %i.aq = zext nneg i32 %i.ap to i64
  store i64 %i.aq, ptr %i.ao, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 232
  store atomic i64 0, ptr %i.ar seq_cst, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit.i.i

_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit.i.i: ; preds = %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i.i.i, %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.at = load i64, ptr %i.as, align 8
  %i.au = add i64 %i.ae, -1
  %i.av = inttoptr i64 %i.au to ptr               ; 3 uses
  store atomic volatile i64 %i.at, ptr %i.av monotonic, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.ax = zext nneg i32 %i.ab to i64
  %i.ay = shl nuw nsw i64 %i.ax, 32
  store atomic volatile i64 %i.ay, ptr %i.aw monotonic, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = icmp eq ptr %i.ba, %i.bc
  br i1 %i.bd, label %bb.k, label %_ZN2v88internal14SmiStringCache3NewINS0_7IsolateEEENS0_12DirectHandleIS1_EEPT_i.exit, !prof !30

bb.k:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit.i.i
  %i.be = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #15
  br label %_ZN2v88internal14SmiStringCache3NewINS0_7IsolateEEENS0_12DirectHandleIS1_EEPT_i.exit

_ZN2v88internal14SmiStringCache3NewINS0_7IsolateEEENS0_12DirectHandleIS1_EEPT_i.exit: ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit.i.i, %bb.k
  %.0.i.i.i.i = phi ptr [ %i.be, %bb.k ], [ %i.ba, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit.i.i ] ; 4 uses
  %i.bf = ptrtoint ptr %.0.i.i.i.i to i64
  %i.bg = add i64 %i.bf, 8
  %i.bh = inttoptr i64 %i.bg to ptr
  store ptr %i.bh, ptr %i.az, align 8
  store i64 %i.ae, ptr %.0.i.i.i.i, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bj = load i64, ptr %i.aw, align 8
  %i.bk = ashr i64 %i.bj, 32
  %i.bl = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 0, i64 %i.bk, ptr nonnull %i.bi) #15, !srcloc !35 ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 55464
  %i.bn = load i64, ptr %.0.i.i.i.i, align 8      ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = add i64 %i.bo, -55464
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 9608
  store i64 %i.bn, ptr %i.br, align 8
  %i.bs = add i64 %i.bn, -1
  %i.bt = inttoptr i64 %i.bs to ptr               ; 2 uses
  %i.bu = lshr i64 %2, 32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = lshr i64 %i.bw, 32
  %i.by = trunc nuw i64 %i.bx to i32
  %i.bz = sdiv i32 %i.by, 2
  %i.ca = add i32 %i.bz, 2147483647
  %i.cb = trunc nuw i64 %i.bu to i32
  %i.cc = and i32 %i.ca, %i.cb
  %i.cd = shl i32 %i.cc, 1
  br label %.critedge

.critedge:                                        ; preds = %.split..critedge_crit_edge, %bb.b, %bb.a, %_ZN2v88internal14SmiStringCache3NewINS0_7IsolateEEENS0_12DirectHandleIS1_EEPT_i.exit, %_ZN2v88internal7Isolate22MemorySaverModeEnabledEv.exit
  %.pre-phi53 = phi ptr [ %.pre52, %.split..critedge_crit_edge ], [ %i.f, %bb.b ], [ %i.f, %bb.a ], [ %i.bt, %_ZN2v88internal14SmiStringCache3NewINS0_7IsolateEEENS0_12DirectHandleIS1_EEPT_i.exit ], [ %i.f, %_ZN2v88internal7Isolate22MemorySaverModeEnabledEv.exit ]
  %.sroa.037.0 = phi ptr [ %i.a, %.split..critedge_crit_edge ], [ %i.a, %bb.b ], [ %i.a, %bb.a ], [ %.0.i.i.i.i, %_ZN2v88internal14SmiStringCache3NewINS0_7IsolateEEENS0_12DirectHandleIS1_EEPT_i.exit ], [ %i.a, %_ZN2v88internal7Isolate22MemorySaverModeEnabledEv.exit ]
  %.0 = phi i32 [ %i.c, %.split..critedge_crit_edge ], [ %i.c, %bb.b ], [ %i.c, %bb.a ], [ %i.cd, %_ZN2v88internal14SmiStringCache3NewINS0_7IsolateEEENS0_12DirectHandleIS1_EEPT_i.exit ], [ %i.c, %_ZN2v88internal7Isolate22MemorySaverModeEnabledEv.exit ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.pre-phi53, i64 16
  %i.cf = sext i32 %.0 to i64                     ; 2 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.cf
  store atomic volatile i64 %2, ptr %i.cg monotonic, align 8
  %i.ch = load i64, ptr %.sroa.037.0, align 8
  %i.ci = add i64 %i.ch, -1                       ; 3 uses
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = load i64, ptr %3, align 8               ; 5 uses
  %i.cl = getelementptr [8 x i8], ptr %i.cj, i64 %i.cf
  %i.cm = getelementptr i8, ptr %i.cl, i64 24     ; 2 uses
  store atomic volatile i64 %i.ck, ptr %i.cm monotonic, align 8
  %i.cn = trunc i64 %i.ck to i1
  br i1 %i.cn, label %bb.l, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.l:                                             ; preds = %.critedge
  %i.co = or disjoint i64 %i.ci, 1                ; 2 uses
  %i.cp = ptrtoint ptr %i.cm to i64               ; 2 uses
  %i.cq = and i64 %i.ci, -262144
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = load i64, ptr %i.cr, align 262144       ; 2 uses
  %i.ct = and i64 %i.cs, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.ct, 0
  %i.cu = and i64 %i.cs, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.cu, 0
  br i1 %.not38.i.i.i.i.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cv = and i64 %i.ck, -262144
  %i.cw = inttoptr i64 %i.cv to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.cw, align 262144
  %i.cx = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.cx, 0
  br i1 %.not39.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.co, i64 noundef %i.cp, i64 %i.ck) #15
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.p, !prof !34

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.co, i64 %i.cp, i64 %i.ck) #15
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %.critedge, %bb.o, %bb.p
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewRawSharedOneByteStringEi(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !guid !1295 {
bb.a:
  %i.a = icmp ugt i32 %1, 536870888
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @_ZN2v88internal7Factory27NewInvalidStringLengthErrorEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.c, ptr noundef null) #15 ; 0 uses
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawStringWithMapINS0_16SeqOneByteStringEEENS0_11MaybeHandleIT_EEiNS0_6TaggedINS0_3MapEEENS0_14AllocationTypeENS0_14AllocationHintE.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1720
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add nuw nsw i32 %1, 23
  %i.h = and i32 %i.g, 1073741816                 ; 2 uses
  %i.i = tail call i64 @_ZN2v88internal7Factory11AllocateRawEiNS0_14AllocationTypeENS0_19AllocationAlignmentENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.h, i8 noundef zeroext 5, i8 noundef zeroext 0, i8 0) #15 ; 2 uses
  %i.j = add i64 %i.i, -1
  %i.k = inttoptr i64 %i.j to ptr                 ; 4 uses
  store atomic volatile i64 %i.f, ptr %i.k monotonic, align 8
  %i.l = zext nneg i32 %i.h to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -8
  store i64 0, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store atomic volatile i32 %1, ptr %i.o monotonic, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store atomic i32 3, ptr %i.p monotonic, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %bb.d, label %_ZN2v88internal6HandleINS0_16SeqOneByteStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !30

bb.d:                                             ; preds = %bb.c
  %i.v = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  br label %_ZN2v88internal6HandleINS0_16SeqOneByteStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_16SeqOneByteStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi ptr [ %i.v, %bb.d ], [ %i.r, %bb.c ] ; 3 uses
  %i.w = ptrtoint ptr %.0.i.i.i to i64
  %i.x = add i64 %i.w, 8
  %i.y = inttoptr i64 %i.x to ptr
  store ptr %i.y, ptr %i.q, align 8
  store i64 %i.i, ptr %.0.i.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawStringWithMapINS0_16SeqOneByteStringEEENS0_11MaybeHandleIT_EEiNS0_6TaggedINS0_3MapEEENS0_14AllocationTypeENS0_14AllocationHintE.exit

_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawStringWithMapINS0_16SeqOneByteStringEEENS0_11MaybeHandleIT_EEiNS0_6TaggedINS0_3MapEEENS0_14AllocationTypeENS0_14AllocationHintE.exit: ; preds = %bb.b, %_ZN2v88internal6HandleINS0_16SeqOneByteStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.sroa.024.0.i = phi ptr [ null, %bb.b ], [ %.0.i.i.i, %_ZN2v88internal6HandleINS0_16SeqOneByteStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ]
  ret ptr %.sroa.024.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewRawSharedTwoByteStringEi(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !guid !1296 {
bb.a:
  %i.a = icmp ugt i32 %1, 536870888
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @_ZN2v88internal7Factory27NewInvalidStringLengthErrorEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.c, ptr noundef null) #15 ; 0 uses
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawStringWithMapINS0_16SeqTwoByteStringEEENS0_11MaybeHandleIT_EEiNS0_6TaggedINS0_3MapEEENS0_14AllocationTypeENS0_14AllocationHintE.exit
end_hunk_0
