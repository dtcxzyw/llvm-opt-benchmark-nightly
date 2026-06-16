inline.NumInlined: 6620
inline.NumDeleted: 2684
begin_hunk_0_@_ZN4node17PerProcessOptions12CheckOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESA_:bb.a
  %i.bc = phi i64 [ %.pre60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ], [ %i.ad, %bb.e ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8            ; 2 uses
  %i.bf = call i64 @llvm.smin.i64(i64 %i.be, i64 %i.bc)
  %i.bg = icmp sgt i64 %i.bf, 2147483647
  %.sroa.speculate.load.false.sroa.speculated = call i64 @llvm.smin.i64(i64 %i.be, i64 %i.bc)
  %i.bh = call i64 @llvm.smax.i64(i64 %.sroa.speculate.load.false.sroa.speculated, i64 2)
  %.sroa.speculated = select i1 %i.bg, i64 2147483647, i64 %i.bh ; 2 uses
  store i64 %.sroa.speculated, ptr %i.bd, align 8
  %i.bi = call range(i64 1, 64) i64 @llvm.ctpop.i64(i64 %.sroa.speculated)
  %.not7 = icmp samesign ult i64 %i.bi, 2
  br i1 %.not7, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i22: ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.bk = call noalias noundef nonnull dereferenceable(39) ptr @_Znwm(i64 noundef 39) #28 ; 3 uses
  store ptr %i.bk, ptr %5, align 8
  store i64 38, ptr %i.bj, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.bk, ptr noundef nonnull align 1 dereferenceable(38) @.str.19, i64 38, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 38, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 38
  store i8 0, ptr %i.bm, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8            ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  %.not.i.i24 = icmp eq ptr %i.bo, %i.bq
  br i1 %.not.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit27, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i22
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 3 uses
  store ptr %i.br, ptr %i.bo, align 8
  %i.bs = load ptr, ptr %5, align 8               ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.bj
  br i1 %i.bt, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i25

bb.i:                                             ; preds = %bb.h
  %i.bu = load i64, ptr %i.bl, align 8            ; 3 uses
  %i.bv = icmp ult i64 %i.bu, 16
  call void @llvm.assume(i1 %i.bv)
  %i.bw = add nuw nsw i64 %i.bu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.br, ptr noundef nonnull align 8 dereferenceable(1) %i.bj, i64 %i.bw, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit27.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i25: ; preds = %bb.h
  store ptr %i.bs, ptr %i.bo, align 8
  %i.bx = load i64, ptr %i.bj, align 8
  store i64 %i.bx, ptr %i.br, align 8
  %.pre61 = load i64, ptr %i.bl, align 8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit27.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit27.thread: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i25
  %i.by = phi i64 [ %.pre61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i25 ], [ %i.bu, %bb.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 %i.by, ptr %i.bz, align 8
  store ptr %i.bj, ptr %5, align 8
  store i64 0, ptr %i.bl, align 8
  %i.ca = load ptr, ptr %i.bn, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  store ptr %i.cb, ptr %i.bn, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i22
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %5)
  %.pre62 = load ptr, ptr %5, align 8             ; 2 uses
  %i.cc = icmp eq ptr %.pre62, %i.bj
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit27
  %i.cd = load i64, ptr %i.bj, align 8
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %.pre62, i64 noundef %i.ce) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit27, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit27.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %bb.d
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ch = load i64, ptr %i.cg, align 8            ; 3 uses
  switch i64 %i.ch, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread51 [
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 2, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.j
  %i.ci = load ptr, ptr %i.cf, align 8            ; 2 uses
  %i.cj = load i16, ptr %i.ci, align 1
  %i.ck = xor i16 %i.cj, 26223
  %i.cl = getelementptr i8, ptr %i.ci, i64 2
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = zext i8 %i.cm to i16
  %i.co = xor i16 %i.cn, 102
  %i.cp = or i16 %i.ck, %i.co
  %i.cq = icmp ne i16 %i.cp, 0
  %i.cr = zext i1 %i.cq to i32
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread51

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32: ; preds = %bb.j
  %.pre63 = load ptr, ptr %i.cf, align 8
  %bcmp.i31 = call i32 @bcmp(ptr %.pre63, ptr nonnull @.str.21, i64 %i.ch)
  %i.ct = icmp eq i32 %bcmp.i31, 0
  br i1 %i.ct, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread51

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34: ; preds = %bb.j
  %.pre64 = load ptr, ptr %i.cf, align 8
  %bcmp.i33 = call i32 @bcmp(ptr %.pre64, ptr nonnull @.str.22, i64 %i.ch)
  %i.cu = icmp eq i32 %bcmp.i33, 0
  br i1 %i.cu, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread51

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread51: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.j, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.cw = call noalias noundef nonnull dereferenceable(35) ptr @_Znwm(i64 noundef 35) #28 ; 3 uses
  store ptr %i.cw, ptr %6, align 8
  store i64 34, ptr %i.cv, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.cw, ptr noundef nonnull align 1 dereferenceable(34) @.str.23, i64 34, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i64 34, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 34
  store i8 0, ptr %i.cy, align 1
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8            ; 6 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  %.not.i.i38 = icmp eq ptr %i.da, %i.dc
  br i1 %.not.i.i38, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit41, label %bb.k

bb.k:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread51
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 3 uses
  store ptr %i.dd, ptr %i.da, align 8
  %i.de = load ptr, ptr %6, align 8               ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.cv
  br i1 %i.df, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39

bb.l:                                             ; preds = %bb.k
  %i.dg = load i64, ptr %i.cx, align 8            ; 3 uses
  %i.dh = icmp ult i64 %i.dg, 16
  call void @llvm.assume(i1 %i.dh)
  %i.di = add nuw nsw i64 %i.dg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dd, ptr noundef nonnull align 8 dereferenceable(1) %i.cv, i64 %i.di, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit41.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39: ; preds = %bb.k
  store ptr %i.de, ptr %i.da, align 8
  %i.dj = load i64, ptr %i.cv, align 8
  store i64 %i.dj, ptr %i.dd, align 8
  %.pre65 = load i64, ptr %i.cx, align 8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit41.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit41.thread: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39
  %i.dk = phi i64 [ %.pre65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39 ], [ %i.dg, %bb.l ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i64 %i.dk, ptr %i.dl, align 8
  store ptr %i.cv, ptr %6, align 8
  store i64 0, ptr %i.cx, align 8
  %i.dm = load ptr, ptr %i.cz, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  store ptr %i.dn, ptr %i.cz, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit41: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread51
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.da, ptr noundef nonnull align 8 dereferenceable(32) %6)
  %.pre66 = load ptr, ptr %6, align 8             ; 2 uses
  %i.do = icmp eq ptr %.pre66, %i.cv
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit41
  %i.dp = load i64, ptr %i.cv, align 8
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %.pre66, i64 noundef %i.dq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit41, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit41.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8            ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(176) %i.ds, ptr noundef %1, ptr noundef %2) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node17PerIsolateOptions31HandleMaxOldSpaceSizePercentageEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEPS7_(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(176) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.b, ptr %4, align 8
  %i.c = load ptr, ptr %2, align 8                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 8 uses
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.e, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !5

bb.e:                                             ; preds = %bb.d
  call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.d
  %i.j = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #28 ; 2 uses
  store ptr %i.j, ptr %4, align 8
  store i64 %i.e, ptr %i.b, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.k = phi ptr [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.b, %bb.a ] ; 3 uses
  switch i64 %i.e, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.c, align 1
  store i8 %i.l, ptr %i.k, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.f, %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.e, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.e
  store i8 0, ptr %i.n, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.o = call double @strtod(ptr noundef %i.c, ptr noundef nonnull %i.a) #26 ; 3 uses
  %i.p = load ptr, ptr %i.a, align 8
  %i.q = load i8, ptr %i.p, align 1
  %i.r = icmp ne i8 %i.q, 0
  %i.s = fcmp ole double %i.o, 0.000000e+00
  %i.t = fcmp ogt double %i.o, 1.000000e+02
  %i.u = or i1 %i.s, %i.t
  %or.cond3 = select i1 %i.r, i1 true, i1 %i.u
  br i1 %or.cond3, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.v = load ptr, ptr %4, align 8, !noalias !34
  %i.w = load i64, ptr %i.m, align 8, !noalias !34
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !34
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull @.str.24, i64 noundef 75, ptr noundef %i.v, i64 noundef %i.w, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !34
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %.not.i.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 3 uses
  store ptr %i.ab, ptr %i.y, align 8
  %i.ac = load ptr, ptr %5, align 8               ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ag = load i64, ptr %i.af, align 8            ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 16
  call void @llvm.assume(i1 %i.ah)
  %i.ai = add nuw nsw i64 %i.ag, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.ai, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  store ptr %i.ac, ptr %i.y, align 8
  %i.aj = load i64, ptr %i.ad, align 8
  store i64 %i.aj, ptr %i.ab, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre47 = load i64, ptr %.phi.trans.insert, align 8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ak = phi i64 [ %.pre47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ag, %bb.j ]
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %i.ak, ptr %i.am, align 8
  store ptr %i.ad, ptr %5, align 8
  store i64 0, ptr %i.al, align 8
  %i.an = load ptr, ptr %i.x, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store ptr %i.ao, ptr %i.x, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.h
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.y, ptr noundef nonnull align 8 dereferenceable(32) %5)
  %.pre48 = load ptr, ptr %5, align 8             ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %.pre48, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.ar = load i64, ptr %i.ap, align 8
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %.pre48, i64 noundef %i.as) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.af

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.at = call i64 @uv_get_total_memory() #26
  %i.au = call i64 @uv_get_constrained_memory() #26 ; 2 uses
  %i.av = add i64 %i.au, -1
  %or.cond5 = icmp ult i64 %i.av, -2
  %i.aw = select i1 %or.cond5, i64 %i.au, i64 %i.at ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i22, label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i22: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.az = call noalias noundef nonnull dereferenceable(43) ptr @_Znwm(i64 noundef 43) #28 ; 3 uses
  store ptr %i.az, ptr %6, align 8
  store i64 42, ptr %i.ay, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.az, ptr noundef nonnull align 1 dereferenceable(42) @.str.25, i64 42, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i64 42, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 42
  store i8 0, ptr %i.bb, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8            ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  %.not.i.i23 = icmp eq ptr %i.bd, %i.bf
  br i1 %.not.i.i23, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit26, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i22
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 3 uses
  store ptr %i.bg, ptr %i.bd, align 8
  %i.bh = load ptr, ptr %6, align 8               ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.ay
  br i1 %i.bi, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i24

bb.m:                                             ; preds = %bb.l
  %i.bj = load i64, ptr %i.ba, align 8            ; 3 uses
  %i.bk = icmp ult i64 %i.bj, 16
  call void @llvm.assume(i1 %i.bk)
  %i.bl = add nuw nsw i64 %i.bj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bg, ptr noundef nonnull align 8 dereferenceable(1) %i.ay, i64 %i.bl, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit26.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i24: ; preds = %bb.l
  store ptr %i.bh, ptr %i.bd, align 8
  %i.bm = load i64, ptr %i.ay, align 8
  store i64 %i.bm, ptr %i.bg, align 8
  %.pre = load i64, ptr %i.ba, align 8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit26.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit26.thread: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i24
  %i.bn = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i24 ], [ %i.bj, %bb.m ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 %i.bn, ptr %i.bo, align 8
  store ptr %i.ay, ptr %6, align 8
  store i64 0, ptr %i.ba, align 8
  %i.bp = load ptr, ptr %i.bc, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  store ptr %i.bq, ptr %i.bc, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i22
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %6)
  %.pre46 = load ptr, ptr %6, align 8             ; 2 uses
  %i.br = icmp eq ptr %.pre46, %i.ay
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit26
  %i.bs = load i64, ptr %i.ay, align 8
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %.pre46, i64 noundef %i.bt) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit26, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit26.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.af

bb.n:                                             ; preds = %bb.k
  %i.bu = lshr i64 %i.aw, 20
  %i.bv = uitofp nneg i64 %i.bu to double
  %i.bw = fmul double %i.o, %i.bv
  %i.bx = fdiv double %i.bw, 1.000000e+02
  %i.by = fptoui double %i.bx to i64              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %i.bz = icmp ult i64 %i.by, 10
  br i1 %i.bz, label %.thread.i, label %.lr.ph.i.i

.thread.i:                                        ; preds = %bb.n
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.ca, ptr %7, align 8, !alias.scope !37
  br label %bb.w

.lr.ph.i.i:                                       ; preds = %bb.n, %bb.t
  %.02229.i.i = phi i64 [ %i.ch, %bb.t ], [ %i.by, %bb.n ] ; 5 uses
  %.02328.i.i = phi i32 [ %i.ci, %bb.t ], [ 1, %bb.n ] ; 4 uses
  %i.cb = icmp ult i64 %.02229.i.i, 100
  br i1 %i.cb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.cc = add i32 %.02328.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.cd = icmp ult i64 %.02229.i.i, 1000
  br i1 %i.cd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ce = add i32 %.02328.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.r:                                             ; preds = %bb.p
  %i.cf = icmp ult i64 %.02229.i.i, 10000
  br i1 %i.cf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cg = add i32 %.02328.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.t:                                             ; preds = %bb.r
  %i.ch = udiv i64 %.02229.i.i, 10000
  %i.ci = add i32 %.02328.i.i, 4                  ; 2 uses
  %i.cj = icmp ult i64 %.02229.i.i, 100000
  br i1 %i.cj, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !40

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.t, %bb.s, %bb.q, %bb.o
  %.0.i.i = phi i32 [ %i.cg, %bb.s ], [ %i.cc, %bb.o ], [ %i.ce, %bb.q ], [ %i.ci, %bb.t ] ; 3 uses
  %i.ck = zext i32 %.0.i.i to i64                 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.cl, ptr %7, align 8, !alias.scope !37
  %i.cm = icmp ugt i32 %.0.i.i, 15
  br i1 %i.cm, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.cn = add nuw nsw i64 %i.ck, 1
  %i.co = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #28 ; 2 uses
  store ptr %i.co, ptr %7, align 8, !alias.scope !37
  store i64 %i.ck, ptr %i.cl, align 8, !alias.scope !37
  br label %bb.x

bb.v:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  switch i32 %.0.i.i, label %bb.x [
    i32 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
    i32 1, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %.thread.i
  %i.cp = phi ptr [ %i.ca, %.thread.i ], [ %i.cl, %bb.v ] ; 2 uses
  store i8 0, ptr %i.cp, align 1, !alias.scope !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.cq = phi ptr [ %i.co, %bb.u ], [ %i.cl, %bb.v ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cq, i8 0, i64 %i.ck, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %bb.x, %bb.w, %bb.v
  %i.cr = phi i64 [ 0, %bb.v ], [ 1, %bb.w ], [ %i.ck, %bb.x ] ; 2 uses
  %i.cs = phi ptr [ %i.cl, %bb.v ], [ %i.cp, %bb.w ], [ %i.cq, %bb.x ]
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 7 uses
  store i64 %i.cr, ptr %i.ct, align 8, !alias.scope !37
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cr
  store i8 0, ptr %i.cu, align 1
  %i.cv = load ptr, ptr %7, align 8, !alias.scope !37 ; 4 uses
  %i.cw = icmp ugt i64 %i.by, 99
  br i1 %i.cw, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i30

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.cx = load i64, ptr %i.ct, align 8, !alias.scope !37
  %i.cy = trunc i64 %i.cx to i32
  %i.cz = add i32 %i.cy, -1
  br label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.lr.ph.i2.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.dc, %.lr.ph.i2.i ], [ %i.by, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.dm, %.lr.ph.i2.i ], [ %i.cz, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.da = urem i64 %.020.i.i, 100
  %i.db = shl nuw nsw i64 %i.da, 1
  %i.dc = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.db ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  %i.df = load i8, ptr %i.de, align 1, !noalias !37
  %i.dg = zext i32 %.01819.i.i to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.dg
  store i8 %i.df, ptr %i.dh, align 1
  %i.di = load i8, ptr %i.dd, align 2, !noalias !37
  %i.dj = add i32 %.01819.i.i, -1
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.dk
  store i8 %i.di, ptr %i.dl, align 1
  %i.dm = add i32 %.01819.i.i, -2
  %i.dn = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.dn, label %.lr.ph.i2.i, label %._crit_edge.i.i30, !llvm.loop !41

._crit_edge.i.i30:                                ; preds = %.lr.ph.i2.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %.0.lcssa.i.i = phi i64 [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i ], [ %i.dc, %.lr.ph.i2.i ] ; 3 uses
  %i.do = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.do, label %bb.y, label %bb.z

bb.y:                                             ; preds = %._crit_edge.i.i30
  %i.dp = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.dq = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.dp ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.ds = load i8, ptr %i.dr, align 1, !noalias !37
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  store i8 %i.ds, ptr %i.dt, align 1
  %i.du = load i8, ptr %i.dq, align 2, !noalias !37
  br label %_ZNSt7__cxx119to_stringEm.exit

bb.z:                                             ; preds = %._crit_edge.i.i30
  %i.dv = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.dw = or disjoint i8 %i.dv, 48
  br label %_ZNSt7__cxx119to_stringEm.exit

_ZNSt7__cxx119to_stringEm.exit:                   ; preds = %bb.y, %bb.z
  %storemerge.i.i = phi i8 [ %i.dw, %bb.z ], [ %i.du, %bb.y ]
  store i8 %storemerge.i.i, ptr %i.cv, align 1
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.dy = load ptr, ptr %i.dx, align 8            ; 6 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  %i.eb = load ptr, ptr %7, align 8               ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec                ; 2 uses
  br i1 %i.ea, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx119to_stringEm.exit
  br i1 %i.ed, label %bb.aa, label %.thread.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx119to_stringEm.exit
  br i1 %i.ed, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ee = load i64, ptr %i.ct, align 8            ; 3 uses
  %i.ef = icmp ult i64 %i.ee, 16
  call void @llvm.assume(i1 %i.ef)
  %.not21.i = icmp eq ptr %7, %i.dx
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %8, !prof !5

8:                                                ; preds = %bb.aa
  switch i64 %i.ee, label %bb.ac [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ab
  ]

bb.ab:                                            ; preds = %8
  %i.eg = load i8, ptr %i.eb, align 1
  store i8 %i.eg, ptr %i.dy, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ac:                                            ; preds = %8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dy, ptr align 1 %i.eb, i64 %i.ee, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ac, %bb.ab, %8
  %i.eh = load i64, ptr %i.ct, align 8            ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.eh, ptr %i.ei, align 8
  %i.ej = load ptr, ptr %i.dx, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eh
  store i8 0, ptr %i.ek, align 1
  %.pre.i = load ptr, ptr %7, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i31:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.eb, ptr %i.dx, align 8
  %i.em = load <2 x i64>, ptr %i.ct, align 8
  store <2 x i64> %i.em, ptr %i.el, align 8
  br label %bb.ae

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.en = load i64, ptr %i.dz, align 8
  store ptr %i.eb, ptr %i.dx, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ep = load <2 x i64>, ptr %i.ct, align 8
  store <2 x i64> %i.ep, ptr %i.eo, align 8
  %.not.i = icmp eq ptr %i.dy, null
  br i1 %.not.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.dy, ptr %7, align 8
  store i64 %i.en, ptr %i.ec, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i31
  store ptr %i.ec, ptr %7, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ad, %bb.ae
  %9 = phi ptr [ %i.dy, %bb.ad ], [ %i.ec, %bb.ae ], [ %i.eb, %bb.aa ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.ct, align 8
  store i8 0, ptr %9, align 1
  %i.eq = load ptr, ptr %7, align 8               ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.et = load i64, ptr %i.er, align 8
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.eu) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ev = load ptr, ptr %4, align 8               ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.b
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.af
  %i.ex = load i64, ptr %i.b, align 8
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #7

declare i64 @uv_get_total_memory() local_unnamed_addr #8

declare i64 @uv_get_constrained_memory() local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = icmp eq ptr %i.a, %i.b
  %i.d = load ptr, ptr %1, align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.f = icmp eq ptr %i.d, %i.e                   ; 2 uses
  br i1 %i.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit: ; preds = %bb.a
  br i1 %i.f, label %bb.b, label %.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread: ; preds = %bb.a
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8              ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %.not21 = icmp eq ptr %1, %0
  br i1 %.not21, label %bb.h, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  switch i64 %i.h, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.d, align 1
  store i8 %i.j, ptr %i.a, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.a, ptr align 1 %i.d, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.c, %bb.e, %bb.d
  %i.k = load i64, ptr %i.g, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8
  %i.m = load ptr, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1
  %.pre = load ptr, ptr %1, align 8
  br label %bb.h

.thread:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8
  store i64 %i.q, ptr %i.o, align 8
  %i.r = load i64, ptr %i.e, align 8
  store i64 %i.r, ptr %i.b, align 8
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread
  %i.s = load i64, ptr %i.b, align 8
  store ptr %i.d, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.v, align 8
  %i.w = load i64, ptr %i.e, align 8
  store i64 %i.w, ptr %i.b, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25
  store ptr %i.a, ptr %1, align 8
  store i64 %i.s, ptr %i.e, align 8
  br label %bb.h

bb.g:                                             ; preds = %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25
  store ptr %i.e, ptr %1, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.x = phi ptr [ %i.a, %bb.f ], [ %i.e, %bb.g ], [ %i.d, %bb.b ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.y, align 8
  store i8 0, ptr %i.x, align 1
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node17PerIsolateOptions12CheckOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESA_(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(176) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN4node17PerIsolateOptions31HandleMaxOldSpaceSizePercentageEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEPS7_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef nonnull %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(1440) %i.f, ptr noundef %1, ptr noundef %2) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node18EnvironmentOptions12CheckOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESA_(ptr noundef nonnull align 8 dereferenceable(1440) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::allocator", align 1   ; 3 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load i64, ptr %i.b, align 8              ; 4 uses
  switch i64 %i.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39.thread [
    i64 0, label %bb.d
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35
    i64 19, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit37
    i64 17, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = load i64, ptr %i.d, align 1
  %i.f = icmp ne i64 %i.e, 8316581086749355875
  %i.g = zext i1 %i.f to i32
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35: ; preds = %bb.a
  %.pre = load ptr, ptr %i.a, align 8
  %bcmp.i34 = tail call i32 @bcmp(ptr %.pre, ptr nonnull @.str.9, i64 %i.c)
end_hunk_0
