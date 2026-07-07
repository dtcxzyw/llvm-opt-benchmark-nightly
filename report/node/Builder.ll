inline.NumInlined: 5152
inline.NumDeleted: 1417
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4LIEF5MachO7Builder5buildINS0_7details7MachO64EEENS_10ok_error_tERNS0_15DylinkerCommandE:bb.a
_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.an, i64 1)
  %i.ap = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i, %i.an ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.an
  %i.ar = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 9223372036854775807)
  %i.as = select i1 %i.aq, i64 9223372036854775807, i64 %i.ar ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.as, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i.i)
  %i.at = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #21 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.an ; 2 uses
  %i.av = load i8, ptr %.056.i.i.i.i.i, align 1
  store i8 %i.av, ptr %i.au, align 1
  %i.aw = icmp sgt i64 %i.an, 0
  br i1 %i.aw, label %bb.j, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.at, ptr align 1 %i.ak, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i17.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.an) #19
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i
  store ptr %i.at, ptr %i.c, align 8
  store ptr %i.ax, ptr %i.d, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as
  store ptr %i.ay, ptr %i.ae, align 8
  br label %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i

_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i.i.i, %bb.g
  %.pre.i.i.i.i.i26 = phi ptr [ %i.aj, %bb.g ], [ %i.ax, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 1
  %i.ba = add nsw i64 %.07.i.i.i.i.i, -1
  %i.bb = icmp samesign ugt i64 %.07.i.i.i.i.i, 1
  br i1 %i.bb, label %bb.f, label %_ZSt4moveIPhSt20back_insert_iteratorISt6vectorIhSaIhEEEET0_T_S7_S6_.exit, !llvm.loop !17

_ZSt4moveIPhSt20back_insert_iteratorISt6vectorIhSaIhEEEET0_T_S7_S6_.exit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i
  %i.bc = load i64, ptr %i.l, align 8             ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorISt6vectorIhSaIhEEEET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt4moveIPhSt20back_insert_iteratorISt6vectorIhSaIhEEEET0_T_S7_S6_.exit
  %i.be = load ptr, ptr %i.k, align 8
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i28, %.lr.ph.i.i.i.i.i
  %i.bf = phi ptr [ %.pre.i.i.i.i.i26, %.lr.ph.i.i.i.i.i ], [ %i.by, %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i28 ] ; 3 uses
  %.08.i.i.i.i.i = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %i.ca, %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i28 ] ; 2 uses
  %.057.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %i.bz, %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i28 ] ; 2 uses
  %i.bg = load i8, ptr %.057.i.i.i.i.i, align 1   ; 2 uses
  %i.bh = load ptr, ptr %i.ae, align 8
  %.not.i.i.i.i.i.i.i.i27 = icmp eq ptr %i.bf, %i.bh
  br i1 %.not.i.i.i.i.i.i.i.i27, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 %i.bg, ptr %i.bf, align 1
  %i.bi = load ptr, ptr %i.d, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 2 uses
  store ptr %i.bj, ptr %i.d, align 8
  br label %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i28

bb.n:                                             ; preds = %bb.l
  %i.bk = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.bl = ptrtoint ptr %i.bf to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 8 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775807
  br i1 %i.bo, label %bb.o, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i29

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #20
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i29: ; preds = %bb.n
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i30 = tail call i64 @llvm.umax.i64(i64 %i.bn, i64 1)
  %i.bp = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i30, %i.bn ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.bn
  %i.br = tail call i64 @llvm.umin.i64(i64 %i.bp, i64 9223372036854775807)
  %i.bs = select i1 %i.bq, i64 9223372036854775807, i64 %i.br ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i31 = icmp ne i64 %i.bs, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i.i31)
  %i.bt = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #21 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bn ; 2 uses
  store i8 %i.bg, ptr %i.bu, align 1
  %i.bv = icmp sgt i64 %i.bn, 0
  br i1 %i.bv, label %bb.p, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i32

bb.p:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i29
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bt, ptr align 1 %i.bk, i64 %i.bn, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i32

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i32: ; preds = %bb.p, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i29
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i.i.i.i33 = icmp eq ptr %i.bk, null
  br i1 %.not.i17.i.i.i.i.i.i.i.i.i33, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i.i.i34, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i32
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bn) #19
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i.i.i34

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i.i.i34: ; preds = %bb.q, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i32
  store ptr %i.bt, ptr %i.c, align 8
  store ptr %i.bw, ptr %i.d, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bs
  store ptr %i.bx, ptr %i.ae, align 8
  br label %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i28

_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i28: ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i.i.i34, %bb.m
  %i.by = phi ptr [ %i.bj, %bb.m ], [ %i.bw, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i.i.i34 ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i.i, i64 1
  %i.ca = add nsw i64 %.08.i.i.i.i.i, -1
  %i.cb = icmp sgt i64 %.08.i.i.i.i.i, 1
  br i1 %i.cb, label %bb.l, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorISt6vectorIhSaIhEEEET0_T_SH_SG_.exit, !llvm.loop !18

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorISt6vectorIhSaIhEEEET0_T_SH_SG_.exit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i28, %_ZSt4moveIPhSt20back_insert_iteratorISt6vectorIhSaIhEEEET0_T_S7_S6_.exit
  %i.cc = phi ptr [ %.pre.i.i.i.i.i26, %_ZSt4moveIPhSt20back_insert_iteratorISt6vectorIhSaIhEEEET0_T_S7_S6_.exit ], [ %i.by, %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i28 ] ; 3 uses
  %i.cd = load ptr, ptr %i.ae, align 8
  %.not.i.i35 = icmp eq ptr %i.cc, %i.cd
  br i1 %.not.i.i35, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorISt6vectorIhSaIhEEEET0_T_SH_SG_.exit
  store i8 0, ptr %i.cc, align 1
  %i.ce = load ptr, ptr %i.d, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 1 ; 2 uses
  store ptr %i.cf, ptr %i.d, align 8
  %.pre50 = load ptr, ptr %i.c, align 8
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

bb.s:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorISt6vectorIhSaIhEEEET0_T_SH_SG_.exit
  %i.cg = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.ch = ptrtoint ptr %i.cc to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci                    ; 8 uses
  %i.ck = icmp eq i64 %i.cj, 9223372036854775807
  br i1 %i.ck, label %bb.t, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #20
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.s
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cj, i64 1)
  %i.cl = add i64 %.sroa.speculated.i.i.i.i, %i.cj ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %i.cj
  %i.cn = tail call i64 @llvm.umin.i64(i64 %i.cl, i64 9223372036854775807)
  %i.co = select i1 %i.cm, i64 9223372036854775807, i64 %i.cn ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.co, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #21 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cj ; 2 uses
  store i8 0, ptr %i.cq, align 1
  %i.cr = icmp sgt i64 %i.cj, 0
  br i1 %i.cr, label %bb.u, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.u:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cp, ptr align 1 %i.cg, i64 %i.cj, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.u, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 1 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cj) #19
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.v, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  store ptr %i.cp, ptr %i.c, align 8
  store ptr %i.cs, ptr %i.d, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.co
  store ptr %i.ct, ptr %i.ae, align 8
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

_ZNSt6vectorIhSaIhEE9push_backEOh.exit:           ; preds = %bb.r, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i
  %i.cu = phi ptr [ %.pre50, %bb.r ], [ %i.cp, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.cv = phi ptr [ %i.cf, %bb.r ], [ %i.cs, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ]
  %i.cw = sub i32 %.sroa.speculated, %i.o
  %i.cx = zext i32 %i.cw to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 0, ptr %i.a, align 1
  %i.cy = ptrtoint ptr %i.cv to i64
  %i.cz = ptrtoint ptr %i.cu to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = getelementptr inbounds i8, ptr %i.cu, i64 %i.da
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr %i.db, i64 noundef %i.cx, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i64 4294967296
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF5MachO7Builder5buildINS0_7details7MachO64EEENS_10ok_error_tERNS0_10VersionMinE(ptr noundef nonnull align 8 dereferenceable(201) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %"struct.LIEF::MachO::details::version_min_command", align 4 ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.7) #22 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call noundef ptr @_ZN4LIEF5MachO9to_stringENS0_11LoadCommand4TYPEE(i64 noundef %i.d) #22 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load i64, ptr %i.c, align 8
  %i.h = trunc i64 %i.g to i32
  store i32 %i.h, ptr %2, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.j, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %3 = load <4 x i32>, ptr %i.f, align 8          ; 3 uses
  %4 = shufflevector <4 x i32> %3, <4 x i32> poison, <2 x i32> <i32 0, i32 3>
  %5 = shl <2 x i32> %4, splat (i32 16)
  %6 = load <2 x i32>, ptr %i.m, align 8
  %7 = shufflevector <2 x i32> %6, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %8 = shufflevector <4 x i32> %3, <4 x i32> %7, <2 x i32> <i32 1, i32 4>
  %9 = shl <2 x i32> %8, splat (i32 8)
  %10 = or <2 x i32> %9, %5
  %11 = shufflevector <4 x i32> %3, <4 x i32> %7, <2 x i32> <i32 2, i32 5>
  %12 = or <2 x i32> %10, %11
  store <2 x i32> %12, ptr %i.l, align 4
  store i32 16, ptr %i.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, %i.o
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.o, ptr %i.p, align 8
  br label %_ZNSt6vectorIhSaIhEE5clearEv.exit

_ZNSt6vectorIhSaIhEE5clearEv.exit:                ; preds = %bb.a, %bb.b
  %.pre.i.i.i.i.i = phi ptr [ %i.q, %bb.a ], [ %i.o, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i, %_ZNSt6vectorIhSaIhEE5clearEv.exit
  %i.s = phi ptr [ %.pre.i.i.i.i.i, %_ZNSt6vectorIhSaIhEE5clearEv.exit ], [ %i.am, %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i ] ; 3 uses
  %.07.i.i.i.i.i = phi i64 [ 16, %_ZNSt6vectorIhSaIhEE5clearEv.exit ], [ %i.ao, %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i ] ; 2 uses
  %.056.i.i.i.i.i = phi ptr [ %2, %_ZNSt6vectorIhSaIhEE5clearEv.exit ], [ %i.an, %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i ] ; 3 uses
  %i.t = load ptr, ptr %i.r, align 8
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i8, ptr %.056.i.i.i.i.i, align 1
  store i8 %i.u, ptr %i.s, align 1
  %i.v = load ptr, ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 2 uses
  store ptr %i.w, ptr %i.p, align 8
  br label %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.n, align 8              ; 4 uses
  %i.y = ptrtoint ptr %i.s to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 8 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775807
  br i1 %i.ab, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #20
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ac = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i, %i.aa ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.aa
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 9223372036854775807)
  %i.af = select i1 %i.ad, i64 9223372036854775807, i64 %i.ae ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i.i)
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #21 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aa ; 2 uses
  %i.ai = load i8, ptr %.056.i.i.i.i.i, align 1
  store i8 %i.ai, ptr %i.ah, align 1
  %i.aj = icmp sgt i64 %i.aa, 0
  br i1 %i.aj, label %bb.g, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr align 1 %i.x, i64 %i.aa, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i17.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.aa) #19
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i
  store ptr %i.ag, ptr %i.n, align 8
  store ptr %i.ak, ptr %i.p, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  store ptr %i.al, ptr %i.r, align 8
  br label %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i

_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i.i.i, %bb.d
  %i.am = phi ptr [ %i.w, %bb.d ], [ %i.ak, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 1
  %i.ao = add nsw i64 %.07.i.i.i.i.i, -1
  %i.ap = icmp samesign ugt i64 %.07.i.i.i.i.i, 1
  br i1 %i.ap, label %bb.c, label %_ZSt4moveIPhSt20back_insert_iteratorISt6vectorIhSaIhEEEET0_T_S7_S6_.exit, !llvm.loop !17

_ZSt4moveIPhSt20back_insert_iteratorISt6vectorIhSaIhEEEET0_T_S7_S6_.exit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 0, ptr %i.a, align 1
  %i.aq = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.ar = ptrtoint ptr %i.am to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = getelementptr inbounds i8, ptr %i.aq, i64 %i.at
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr %i.au, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i64 4294967296
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF5MachO7Builder5buildINS0_7details7MachO64EEENS_10ok_error_tERNS0_13SourceVersionE(ptr noundef nonnull align 8 dereferenceable(201) %0, ptr noundef nonnull align 8 dereferenceable(76) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %"struct.LIEF::MachO::details::source_version_command", align 8 ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.7) #22 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call noundef ptr @_ZN4LIEF5MachO9to_stringENS0_11LoadCommand4TYPEE(i64 noundef %i.d) #22 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load i64, ptr %i.c, align 8
  %i.h = trunc i64 %i.g to i32
  store i32 %i.h, ptr %2, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.j, ptr %i.k, align 4
  %i.l = load i32, ptr %i.f, align 8
  %i.m = zext i32 %i.l to i64
  %i.n = shl i64 %i.m, 40
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.p = load i32, ptr %i.o, align 4
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 30
  %i.s = or i64 %i.r, %i.n
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = load i32, ptr %i.t, align 8
  %i.v = zext i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 20
  %i.x = or i64 %i.s, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = zext i32 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 10
  %i.ac = or i64 %i.x, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = zext i32 %i.ae to i64
  %i.ag = or i64 %i.ac, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ag, ptr %i.ah, align 8
  store i32 16, ptr %i.i, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.al, %i.aj
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.aj, ptr %i.ak, align 8
  br label %_ZNSt6vectorIhSaIhEE5clearEv.exit

_ZNSt6vectorIhSaIhEE5clearEv.exit:                ; preds = %bb.a, %bb.b
  %.pre.i.i.i.i.i = phi ptr [ %i.al, %bb.a ], [ %i.aj, %bb.b ]
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i, %_ZNSt6vectorIhSaIhEE5clearEv.exit
  %i.an = phi ptr [ %.pre.i.i.i.i.i, %_ZNSt6vectorIhSaIhEE5clearEv.exit ], [ %i.bh, %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i ] ; 3 uses
  %.07.i.i.i.i.i = phi i64 [ 16, %_ZNSt6vectorIhSaIhEE5clearEv.exit ], [ %i.bj, %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i ] ; 2 uses
  %.056.i.i.i.i.i = phi ptr [ %2, %_ZNSt6vectorIhSaIhEE5clearEv.exit ], [ %i.bi, %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i ] ; 3 uses
  %i.ao = load ptr, ptr %i.am, align 8
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = load i8, ptr %.056.i.i.i.i.i, align 1
  store i8 %i.ap, ptr %i.an, align 1
  %i.aq = load ptr, ptr %i.ak, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 2 uses
  store ptr %i.ar, ptr %i.ak, align 8
  br label %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.as = load ptr, ptr %i.ai, align 8            ; 4 uses
  %i.at = ptrtoint ptr %i.an to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au                    ; 8 uses
  %i.aw = icmp eq i64 %i.av, 9223372036854775807
  br i1 %i.aw, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #20
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.av, i64 1)
  %i.ax = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i, %i.av ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.av
  %i.az = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 9223372036854775807)
  %i.ba = select i1 %i.ay, i64 9223372036854775807, i64 %i.az ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.ba, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i.i)
  %i.bb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #21 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.av ; 2 uses
  %i.bd = load i8, ptr %.056.i.i.i.i.i, align 1
  store i8 %i.bd, ptr %i.bc, align 1
end_hunk_0
begin_hunk_1_@_ZN4LIEF5MachO7Builder5buildINS0_7details7MachO32EEENS_10ok_error_tERNS0_15DylinkerCommandE:bb.a
_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.an, i64 1)
  %i.ap = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i, %i.an ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.an
  %i.ar = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 9223372036854775807)
  %i.as = select i1 %i.aq, i64 9223372036854775807, i64 %i.ar ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.as, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i.i)
  %i.at = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #21 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.an ; 2 uses
  %i.av = load i8, ptr %.056.i.i.i.i.i, align 1
  store i8 %i.av, ptr %i.au, align 1
  %i.aw = icmp sgt i64 %i.an, 0
  br i1 %i.aw, label %bb.j, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.at, ptr align 1 %i.ak, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i17.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.an) #19
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i
  store ptr %i.at, ptr %i.c, align 8
  store ptr %i.ax, ptr %i.d, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as
  store ptr %i.ay, ptr %i.ae, align 8
  br label %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i

_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i.i.i, %bb.g
  %.pre.i.i.i.i.i26 = phi ptr [ %i.aj, %bb.g ], [ %i.ax, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 1
  %i.ba = add nsw i64 %.07.i.i.i.i.i, -1
  %i.bb = icmp samesign ugt i64 %.07.i.i.i.i.i, 1
  br i1 %i.bb, label %bb.f, label %_ZSt4moveIPhSt20back_insert_iteratorISt6vectorIhSaIhEEEET0_T_S7_S6_.exit, !llvm.loop !17

_ZSt4moveIPhSt20back_insert_iteratorISt6vectorIhSaIhEEEET0_T_S7_S6_.exit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i
  %i.bc = load i64, ptr %i.l, align 8             ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorISt6vectorIhSaIhEEEET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt4moveIPhSt20back_insert_iteratorISt6vectorIhSaIhEEEET0_T_S7_S6_.exit
  %i.be = load ptr, ptr %i.k, align 8
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i28, %.lr.ph.i.i.i.i.i
  %i.bf = phi ptr [ %.pre.i.i.i.i.i26, %.lr.ph.i.i.i.i.i ], [ %i.by, %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i28 ] ; 3 uses
  %.08.i.i.i.i.i = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %i.ca, %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i28 ] ; 2 uses
  %.057.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %i.bz, %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i28 ] ; 2 uses
  %i.bg = load i8, ptr %.057.i.i.i.i.i, align 1   ; 2 uses
  %i.bh = load ptr, ptr %i.ae, align 8
  %.not.i.i.i.i.i.i.i.i27 = icmp eq ptr %i.bf, %i.bh
  br i1 %.not.i.i.i.i.i.i.i.i27, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 %i.bg, ptr %i.bf, align 1
  %i.bi = load ptr, ptr %i.d, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 2 uses
  store ptr %i.bj, ptr %i.d, align 8
  br label %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i28

bb.n:                                             ; preds = %bb.l
  %i.bk = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.bl = ptrtoint ptr %i.bf to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 8 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775807
  br i1 %i.bo, label %bb.o, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i29

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #20
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i29: ; preds = %bb.n
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i30 = tail call i64 @llvm.umax.i64(i64 %i.bn, i64 1)
  %i.bp = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i30, %i.bn ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.bn
  %i.br = tail call i64 @llvm.umin.i64(i64 %i.bp, i64 9223372036854775807)
  %i.bs = select i1 %i.bq, i64 9223372036854775807, i64 %i.br ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i31 = icmp ne i64 %i.bs, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i.i31)
  %i.bt = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #21 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bn ; 2 uses
  store i8 %i.bg, ptr %i.bu, align 1
  %i.bv = icmp sgt i64 %i.bn, 0
  br i1 %i.bv, label %bb.p, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i32

bb.p:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i29
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bt, ptr align 1 %i.bk, i64 %i.bn, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i32

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i32: ; preds = %bb.p, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i29
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i.i.i.i33 = icmp eq ptr %i.bk, null
  br i1 %.not.i17.i.i.i.i.i.i.i.i.i33, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i.i.i34, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i32
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bn) #19
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i.i.i34

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i.i.i34: ; preds = %bb.q, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i32
  store ptr %i.bt, ptr %i.c, align 8
  store ptr %i.bw, ptr %i.d, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bs
  store ptr %i.bx, ptr %i.ae, align 8
  br label %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i28

_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i28: ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i.i.i34, %bb.m
  %i.by = phi ptr [ %i.bj, %bb.m ], [ %i.bw, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i.i.i34 ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i.i, i64 1
  %i.ca = add nsw i64 %.08.i.i.i.i.i, -1
  %i.cb = icmp sgt i64 %.08.i.i.i.i.i, 1
  br i1 %i.cb, label %bb.l, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorISt6vectorIhSaIhEEEET0_T_SH_SG_.exit, !llvm.loop !18

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorISt6vectorIhSaIhEEEET0_T_SH_SG_.exit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i28, %_ZSt4moveIPhSt20back_insert_iteratorISt6vectorIhSaIhEEEET0_T_S7_S6_.exit
  %i.cc = phi ptr [ %.pre.i.i.i.i.i26, %_ZSt4moveIPhSt20back_insert_iteratorISt6vectorIhSaIhEEEET0_T_S7_S6_.exit ], [ %i.by, %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i28 ] ; 3 uses
  %i.cd = load ptr, ptr %i.ae, align 8
  %.not.i.i35 = icmp eq ptr %i.cc, %i.cd
  br i1 %.not.i.i35, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorISt6vectorIhSaIhEEEET0_T_SH_SG_.exit
  store i8 0, ptr %i.cc, align 1
  %i.ce = load ptr, ptr %i.d, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 1 ; 2 uses
  store ptr %i.cf, ptr %i.d, align 8
  %.pre50 = load ptr, ptr %i.c, align 8
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

bb.s:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorISt6vectorIhSaIhEEEET0_T_SH_SG_.exit
  %i.cg = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.ch = ptrtoint ptr %i.cc to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci                    ; 8 uses
  %i.ck = icmp eq i64 %i.cj, 9223372036854775807
  br i1 %i.ck, label %bb.t, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #20
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.s
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cj, i64 1)
  %i.cl = add i64 %.sroa.speculated.i.i.i.i, %i.cj ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %i.cj
  %i.cn = tail call i64 @llvm.umin.i64(i64 %i.cl, i64 9223372036854775807)
  %i.co = select i1 %i.cm, i64 9223372036854775807, i64 %i.cn ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.co, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #21 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cj ; 2 uses
  store i8 0, ptr %i.cq, align 1
  %i.cr = icmp sgt i64 %i.cj, 0
  br i1 %i.cr, label %bb.u, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.u:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cp, ptr align 1 %i.cg, i64 %i.cj, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.u, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 1 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cj) #19
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.v, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  store ptr %i.cp, ptr %i.c, align 8
  store ptr %i.cs, ptr %i.d, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.co
  store ptr %i.ct, ptr %i.ae, align 8
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

_ZNSt6vectorIhSaIhEE9push_backEOh.exit:           ; preds = %bb.r, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i
  %i.cu = phi ptr [ %.pre50, %bb.r ], [ %i.cp, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.cv = phi ptr [ %i.cf, %bb.r ], [ %i.cs, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ]
  %i.cw = sub i32 %.sroa.speculated, %i.o
  %i.cx = zext i32 %i.cw to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 0, ptr %i.a, align 1
  %i.cy = ptrtoint ptr %i.cv to i64
  %i.cz = ptrtoint ptr %i.cu to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = getelementptr inbounds i8, ptr %i.cu, i64 %i.da
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr %i.db, i64 noundef %i.cx, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i64 4294967296
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF5MachO7Builder5buildINS0_7details7MachO32EEENS_10ok_error_tERNS0_10VersionMinE(ptr noundef nonnull align 8 dereferenceable(201) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %"struct.LIEF::MachO::details::version_min_command", align 4 ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.7) #22 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call noundef ptr @_ZN4LIEF5MachO9to_stringENS0_11LoadCommand4TYPEE(i64 noundef %i.d) #22 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load i64, ptr %i.c, align 8
  %i.h = trunc i64 %i.g to i32
  store i32 %i.h, ptr %2, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.j, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %3 = load <4 x i32>, ptr %i.f, align 8          ; 3 uses
  %4 = shufflevector <4 x i32> %3, <4 x i32> poison, <2 x i32> <i32 0, i32 3>
  %5 = shl <2 x i32> %4, splat (i32 16)
  %6 = load <2 x i32>, ptr %i.m, align 8
  %7 = shufflevector <2 x i32> %6, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %8 = shufflevector <4 x i32> %3, <4 x i32> %7, <2 x i32> <i32 1, i32 4>
  %9 = shl <2 x i32> %8, splat (i32 8)
  %10 = or <2 x i32> %9, %5
  %11 = shufflevector <4 x i32> %3, <4 x i32> %7, <2 x i32> <i32 2, i32 5>
  %12 = or <2 x i32> %10, %11
  store <2 x i32> %12, ptr %i.l, align 4
  store i32 16, ptr %i.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, %i.o
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.o, ptr %i.p, align 8
  br label %_ZNSt6vectorIhSaIhEE5clearEv.exit

_ZNSt6vectorIhSaIhEE5clearEv.exit:                ; preds = %bb.a, %bb.b
  %.pre.i.i.i.i.i = phi ptr [ %i.q, %bb.a ], [ %i.o, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i, %_ZNSt6vectorIhSaIhEE5clearEv.exit
  %i.s = phi ptr [ %.pre.i.i.i.i.i, %_ZNSt6vectorIhSaIhEE5clearEv.exit ], [ %i.am, %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i ] ; 3 uses
  %.07.i.i.i.i.i = phi i64 [ 16, %_ZNSt6vectorIhSaIhEE5clearEv.exit ], [ %i.ao, %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i ] ; 2 uses
  %.056.i.i.i.i.i = phi ptr [ %2, %_ZNSt6vectorIhSaIhEE5clearEv.exit ], [ %i.an, %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i ] ; 3 uses
  %i.t = load ptr, ptr %i.r, align 8
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i8, ptr %.056.i.i.i.i.i, align 1
  store i8 %i.u, ptr %i.s, align 1
  %i.v = load ptr, ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 2 uses
  store ptr %i.w, ptr %i.p, align 8
  br label %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.n, align 8              ; 4 uses
  %i.y = ptrtoint ptr %i.s to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 8 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775807
  br i1 %i.ab, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #20
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ac = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i, %i.aa ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.aa
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 9223372036854775807)
  %i.af = select i1 %i.ad, i64 9223372036854775807, i64 %i.ae ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i.i)
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #21 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aa ; 2 uses
  %i.ai = load i8, ptr %.056.i.i.i.i.i, align 1
  store i8 %i.ai, ptr %i.ah, align 1
  %i.aj = icmp sgt i64 %i.aa, 0
  br i1 %i.aj, label %bb.g, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr align 1 %i.x, i64 %i.aa, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i17.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.aa) #19
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i
  store ptr %i.ag, ptr %i.n, align 8
  store ptr %i.ak, ptr %i.p, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  store ptr %i.al, ptr %i.r, align 8
  br label %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i

_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i.i.i, %bb.d
  %i.am = phi ptr [ %i.w, %bb.d ], [ %i.ak, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 1
  %i.ao = add nsw i64 %.07.i.i.i.i.i, -1
  %i.ap = icmp samesign ugt i64 %.07.i.i.i.i.i, 1
  br i1 %i.ap, label %bb.c, label %_ZSt4moveIPhSt20back_insert_iteratorISt6vectorIhSaIhEEEET0_T_S7_S6_.exit, !llvm.loop !17

_ZSt4moveIPhSt20back_insert_iteratorISt6vectorIhSaIhEEEET0_T_S7_S6_.exit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 0, ptr %i.a, align 1
  %i.aq = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.ar = ptrtoint ptr %i.am to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = getelementptr inbounds i8, ptr %i.aq, i64 %i.at
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr %i.au, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i64 4294967296
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF5MachO7Builder5buildINS0_7details7MachO32EEENS_10ok_error_tERNS0_13SourceVersionE(ptr noundef nonnull align 8 dereferenceable(201) %0, ptr noundef nonnull align 8 dereferenceable(76) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %"struct.LIEF::MachO::details::source_version_command", align 8 ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.7) #22 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call noundef ptr @_ZN4LIEF5MachO9to_stringENS0_11LoadCommand4TYPEE(i64 noundef %i.d) #22 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load i64, ptr %i.c, align 8
  %i.h = trunc i64 %i.g to i32
  store i32 %i.h, ptr %2, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.j, ptr %i.k, align 4
  %i.l = load i32, ptr %i.f, align 8
  %i.m = zext i32 %i.l to i64
  %i.n = shl i64 %i.m, 40
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.p = load i32, ptr %i.o, align 4
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 30
  %i.s = or i64 %i.r, %i.n
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = load i32, ptr %i.t, align 8
  %i.v = zext i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 20
  %i.x = or i64 %i.s, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = zext i32 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 10
  %i.ac = or i64 %i.x, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = zext i32 %i.ae to i64
  %i.ag = or i64 %i.ac, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ag, ptr %i.ah, align 8
  store i32 16, ptr %i.i, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.al, %i.aj
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.aj, ptr %i.ak, align 8
  br label %_ZNSt6vectorIhSaIhEE5clearEv.exit

_ZNSt6vectorIhSaIhEE5clearEv.exit:                ; preds = %bb.a, %bb.b
  %.pre.i.i.i.i.i = phi ptr [ %i.al, %bb.a ], [ %i.aj, %bb.b ]
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i, %_ZNSt6vectorIhSaIhEE5clearEv.exit
  %i.an = phi ptr [ %.pre.i.i.i.i.i, %_ZNSt6vectorIhSaIhEE5clearEv.exit ], [ %i.bh, %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i ] ; 3 uses
  %.07.i.i.i.i.i = phi i64 [ 16, %_ZNSt6vectorIhSaIhEE5clearEv.exit ], [ %i.bj, %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i ] ; 2 uses
  %.056.i.i.i.i.i = phi ptr [ %2, %_ZNSt6vectorIhSaIhEE5clearEv.exit ], [ %i.bi, %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i ] ; 3 uses
  %i.ao = load ptr, ptr %i.am, align 8
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = load i8, ptr %.056.i.i.i.i.i, align 1
  store i8 %i.ap, ptr %i.an, align 1
  %i.aq = load ptr, ptr %i.ak, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 2 uses
  store ptr %i.ar, ptr %i.ak, align 8
  br label %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSEOh.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.as = load ptr, ptr %i.ai, align 8            ; 4 uses
  %i.at = ptrtoint ptr %i.an to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au                    ; 8 uses
  %i.aw = icmp eq i64 %i.av, 9223372036854775807
  br i1 %i.aw, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #20
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.av, i64 1)
  %i.ax = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i, %i.av ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.av
  %i.az = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 9223372036854775807)
  %i.ba = select i1 %i.ay, i64 9223372036854775807, i64 %i.az ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.ba, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i.i)
  %i.bb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #21 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.av ; 2 uses
  %i.bd = load i8, ptr %.056.i.i.i.i.i, align 1
  store i8 %i.bd, ptr %i.bc, align 1
end_hunk_1
