inline.NumInlined: 8096
inline.NumDeleted: 3436
begin_hunk_0_@_ZN6google8protobuf8internal18MakeDenseEnumCacheB5cxx11EPKNS0_14EnumDescriptorEii:bb.a
  br i1 %.not26, label %._crit_edge, label %.lr.ph28.preheader

.lr.ph28.preheader:                               ; preds = %.preheader
  %3 = add i32 %2, 1
  %4 = sub i32 %3, %1                             ; 2 uses
  %wide.trip.count33 = zext i32 %4 to i64         ; 3 uses
  %min.iters.check = icmp ult i32 %4, 4
  br i1 %min.iters.check, label %.lr.ph28.preheader36, label %vector.ph
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal19NameOfDenseEnumSlowB5cxx11EiPNS1_18DenseEnumCacheInfoE:bb.a
  %i.i = tail call noundef ptr %i.h()             ; 2 uses
  %i.j = load i32, ptr %i.a, align 8, !tbaa !189  ; 4 uses
  %i.k = load i32, ptr %i.d, align 4, !tbaa !193
  %i.l = sub i32 %i.k, %i.j                       ; 3 uses
  %i.m = add i32 %i.l, 1                          ; 2 uses
  %i.n = zext i32 %i.m to i64                     ; 4 uses
  %i.o = icmp slt i32 %i.l, -1
end_hunk_1
begin_hunk_2_@_ZNK6google8protobuf10Reflection13SpaceUsedLongERKNS0_7MessageE:bb.a
  %i.aig = and i64 %i.aid, -4
  %i.aih = inttoptr i64 %i.aig to ptr
  %i.aii = tail call noundef i64 @_ZN6google8protobuf8internal32StringSpaceUsedExcludingSelfLongERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.aih)
  %i.aij = add i64 %.1450, 32
  %i.aik = add i64 %i.aij, %i.aii
  br label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit422

bb.eh:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit
end_hunk_2
begin_hunk_3_@_ZNK6google8protobuf10Reflection18CreateTcParseTableEv:bb.a
.lr.ph.i.preheader:                               ; preds = %bb.al
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = ptrtoint ptr %i.fy to i64
  %7 = add i64 %i.gb, -32
  %8 = sub i64 %7, %i.gc                          ; 2 uses
  %min.iters.check = icmp ult i64 %8, 128
  br i1 %min.iters.check, label %.lr.ph.i.preheader327, label %vector.ph

end_hunk_3
begin_hunk_4_@_ZNK6google8protobuf10Reflection18CreateTcParseTableEv:bb.a
  %i.ht = and <2 x i32> %i.hs, splat (i32 -2)
  %i.hu = trunc <2 x i64> %i.hr to <2 x i32>
  %i.hv = and <2 x i32> %i.hu, splat (i32 -2)
  %i.hw = add <2 x i32> %vec.phi, splat (i32 3)
  %i.hx = add <2 x i32> %vec.phi298, splat (i32 3)
  %i.hy = add <2 x i32> %i.hw, %i.ht              ; 2 uses
  %i.hz = add <2 x i32> %i.hx, %i.hv              ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ia = icmp eq i64 %index.next, %n.vec
  br i1 %i.ia, label %middle.block, label %vector.body, !llvm.loop !639
end_hunk_4
begin_hunk_5_@_ZNK6google8protobuf10Reflection18CreateTcParseTableEv:bb.a
  %sh.diff.i = lshr i64 %i.ii, 1
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %i.ij = and i32 %tr.sh.diff.i, -2
  %i.ik = add i32 %.010.i, 3
  %i.il = add i32 %i.ik, %i.ij                    ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 32 ; 2 uses
  %.not.i89 = icmp eq ptr %i.im, %i.ga
  br i1 %.not.i89, label %_ZNK6google8protobuf8internal17TailCallTableInfo15NumToEntryTable6size16Ev.exit.loopexit, label %.lr.ph.i, !llvm.loop !640
end_hunk_5
begin_hunk_6_@_ZNK6google8protobuf10Reflection18CreateTcParseTableEv:bb.a
  %i.iq = and i32 %i.ip, -4                       ; 2 uses
  %i.ir = trunc i64 %.pre-phi235 to i32
  %i.is = mul i32 %i.ir, 12
  %i.it = add i32 %i.is, 4
  %i.iu = add i32 %i.it, %i.iq
  %i.iv = and i32 %i.iu, -8                       ; 2 uses
  %i.iw = zext i32 %i.iv to i64
  %i.ix = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZNK6google8protobuf10Reflection18CreateTcParseTableEv:bb.a
  br i1 %.not89.i, label %._crit_edge.i, label %.lr.ph.i104.preheader

.lr.ph.i104.preheader:                            ; preds = %.lr.ph16.i
  %9 = add i64 %i.ov, -4
  %10 = sub i64 %9, %i.ox                         ; 2 uses
  %i.pe = lshr i64 %10, 2
  %i.pf = add nuw nsw i64 %i.pe, 1                ; 2 uses
  %min.iters.check306 = icmp ult i64 %10, 28
  br i1 %min.iters.check306, label %.lr.ph.i104.preheader326, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i104.preheader
  %scevgep = getelementptr i8, ptr %.014.i, i64 10
  %11 = add i64 %i.ov, -4
  %i.pg = sub i64 %11, %i.ox
  %i.ph = and i64 %i.pg, -4                       ; 2 uses
  %scevgep302.a = getelementptr i8, ptr %scevgep, i64 %i.ph
  %scevgep303 = getelementptr i8, ptr %i.ow, i64 4
  %scevgep304 = getelementptr i8, ptr %scevgep303, i64 %i.ph
  %bound0 = icmp ult ptr %i.pd, %scevgep304
  %bound1 = icmp ult ptr %i.ow, %scevgep302.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i104.preheader326, label %vector.ph307

end_hunk_7
begin_hunk_8_@_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb:bb.a
bb.a:
  %.neg = select i1 %5, i64 -9, i64 -8
  %i.a = select i1 %5, i64 9, i64 8
  %i.b = add i64 %1, 15
  %i.c = add i64 %i.b, %4
  %i.d = add i64 %i.c, %i.a
  %i.e = sub i64 0, %4
  %i.f = and i64 %i.d, %i.e
  %i.g = mul i64 %3, %1
  %i.h = getelementptr inbounds i8, ptr %2, i64 %.neg
  %i.i = add i64 %i.g, 7
  %i.j = add i64 %i.i, %i.f
  %i.k = and i64 %i.j, -8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #40
  ret void
end_hunk_8
begin_hunk_9_@_ZNK6google8protobuf8internal20RepeatedPtrFieldBase26SpaceUsedExcludingSelfLongINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEmv:bb.a
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !94
  %i.u = tail call noundef i64 @_ZN6google8protobuf8internal32StringSpaceUsedExcludingSelfLongERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.t)
  %i.v = add i64 %.078, 32
  %i.w = add i64 %i.v, %i.u                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !800
end_hunk_9
begin_hunk_10_@_ZNSt5dequeIPN6google8protobuf7MessageESaIS3_EE17_M_reallocate_mapEmb:bb.a

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIPN6google8protobuf7MessageESaIS3_EE15_M_allocate_mapEm.exit, !prof !38

end_hunk_10
