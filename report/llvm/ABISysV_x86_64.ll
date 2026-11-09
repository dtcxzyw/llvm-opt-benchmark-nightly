Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ABISysV_x86_64?download=true
inline.NumInlined: 1206
inline.NumDeleted: 656
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN14ABISysV_x86_6421RegisterIsCalleeSavedEPKN12lldb_private12RegisterInfoE:bb.a
  %i.ds = icmp ne i16 %i.dr, 0
  %i.dt = zext i1 %i.ds to i32
  %.not.i.i20.3 = icmp eq i32 %i.dt, 0
  br i1 %.not.i.i20.3, label %_ZN4llvm12StringSwitchIbbE5CasesESt16initializer_listINS_13StringLiteralEEb.exit22, label %_ZN4llvm12StringSwitchIbbE8CaseImplENS_13StringLiteralERb.exit.i16.6

_ZN4llvmneENS_9StringRefES0_.exit.i.i18.4:        ; preds = %.lr.ph.split.preheader.i
  %i.du = load i16, ptr %i.o, align 1
  %i.dv = icmp ne i16 %i.du, 28787
  %i.dw = zext i1 %i.dv to i32
  %.not.i.i20.4 = icmp eq i32 %i.dw, 0
  br i1 %.not.i.i20.4, label %_ZN4llvm12StringSwitchIbbE5CasesESt16initializer_listINS_13StringLiteralEEb.exit22, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i18.5

_ZN4llvmneENS_9StringRefES0_.exit.i.i18.5:        ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i18.4
  %i.dx = load i16, ptr %i.o, align 1
  %i.dy = icmp ne i16 %i.dx, 28774
  %i.dz = zext i1 %i.dy to i32
  %.not.i.i20.5 = icmp eq i32 %i.dz, 0
  br i1 %.not.i.i20.5, label %_ZN4llvm12StringSwitchIbbE5CasesESt16initializer_listINS_13StringLiteralEEb.exit22, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i18.6

_ZN4llvmneENS_9StringRefES0_.exit.i.i18.6:        ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i18.5
  %i.ea = load i16, ptr %i.o, align 1
  %i.eb = icmp ne i16 %i.ea, 25456
  %i.ec = zext i1 %i.eb to i32
  %.not.i.i20.6 = icmp eq i32 %i.ec, 0
  br i1 %.not.i.i20.6, label %_ZN4llvm12StringSwitchIbbE5CasesESt16initializer_listINS_13StringLiteralEEb.exit22, label %_ZN4llvm12StringSwitchIbbE8CaseImplENS_13StringLiteralERb.exit.i16.6

_ZN4llvm12StringSwitchIbbE8CaseImplENS_13StringLiteralERb.exit.i16.6: ; preds = %.lr.ph.split.preheader.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i18.3, %_ZN4llvmneENS_9StringRefES0_.exit.i.i18.6
  br label %_ZN4llvm12StringSwitchIbbE5CasesESt16initializer_listINS_13StringLiteralEEb.exit22

_ZN4llvm12StringSwitchIbbE5CasesESt16initializer_listINS_13StringLiteralEEb.exit22: ; preds = %.lr.ph.split.preheader.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i18, %_ZN4llvmneENS_9StringRefES0_.exit.i.i18.1, %_ZN4llvmneENS_9StringRefES0_.exit.i.i18.2, %_ZN4llvmneENS_9StringRefES0_.exit.i.i18.3, %_ZN4llvmneENS_9StringRefES0_.exit.i.i18.4, %_ZN4llvmneENS_9StringRefES0_.exit.i.i18.5, %_ZN4llvmneENS_9StringRefES0_.exit.i.i18.6, %_ZN4llvm12StringSwitchIbbE8CaseImplENS_13StringLiteralERb.exit.i16.6, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.7, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.6, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.5, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.4, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.3, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.2, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.1, %_ZN4llvmneENS_9StringRefES0_.exit.i.i
  %i.ed = phi i1 [ false, %.lr.ph.split.preheader.i ], [ true, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.7 ], [ true, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ], [ true, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.1 ], [ true, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.2 ], [ true, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.3 ], [ true, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.4 ], [ true, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.5 ], [ true, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.6 ], [ true, %_ZN4llvmneENS_9StringRefES0_.exit.i.i18 ], [ false, %_ZN4llvm12StringSwitchIbbE8CaseImplENS_13StringLiteralERb.exit.i16.6 ], [ true, %_ZN4llvmneENS_9StringRefES0_.exit.i.i18.1 ], [ true, %_ZN4llvmneENS_9StringRefES0_.exit.i.i18.6 ], [ true, %_ZN4llvmneENS_9StringRefES0_.exit.i.i18.2 ], [ true, %_ZN4llvmneENS_9StringRefES0_.exit.i.i18.4 ], [ true, %_ZN4llvmneENS_9StringRefES0_.exit.i.i18.3 ], [ true, %_ZN4llvmneENS_9StringRefES0_.exit.i.i18.5 ]
  %i.ee = icmp eq ptr %i.o, %i.c
  br i1 %i.ee, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN4llvm12StringSwitchIbbE5CasesESt16initializer_listINS_13StringLiteralEEb.exit22
  %i.ef = icmp ult i64 %.fr37, 16
  call void @llvm.assume(i1 %i.ef)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm12StringSwitchIbbE5CasesESt16initializer_listINS_13StringLiteralEEb.exit22
  %i.eg = load i64, ptr %i.c, align 8, !tbaa !34
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.eh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0 = phi i1 [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN14ABISysV_x86_6413GetGenericNumEN4llvm9StringRefE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(none) %1, i64 %2) unnamed_addr #8 align 2 {
bb.a:
  switch i64 %2, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit82 [
    i64 3, label %bb.b
    i64 6, label %bb.e
    i64 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i16, ptr %1, align 1
  %i.b = xor i16 %i.a, 26994
  %i.c = getelementptr i8, ptr %1, i64 2
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i16
  %i.f = xor i16 %i.e, 112
  %i.g = or i16 %i.b, %i.f
  %i.h = icmp ne i16 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit82, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i16, ptr %1, align 1
  %i.k = xor i16 %i.j, 29554
  %i.l = getelementptr i8, ptr %1, i64 2
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i16
  %i.o = xor i16 %i.n, 112
  %i.p = or i16 %i.k, %i.o
  %i.q = icmp ne i16 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %.not.i.i8 = icmp eq i32 %i.r, 0
  br i1 %.not.i.i8, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit82, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load i16, ptr %1, align 1
  %i.t = xor i16 %i.s, 25202
  %i.u = getelementptr i8, ptr %1, i64 2
  %i.v = load i8, ptr %i.u, align 1
  %i.w = zext i8 %i.v to i16
  %i.x = xor i16 %i.w, 112
  %i.y = or i16 %i.t, %i.x
  %i.z = icmp ne i16 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %.not.i.i16 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i16, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit82, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit34.thread

bb.e:                                             ; preds = %bb.a
  %i.ab = load i32, ptr %1, align 1
  %i.ac = xor i32 %i.ab, 1634494066
  %i.ad = getelementptr i8, ptr %1, i64 4
  %i.ae = load i16, ptr %i.ad, align 1
  %i.af = zext i16 %i.ae to i32
  %i.ag = xor i32 %i.af, 29543
  %i.ah = or i32 %i.ac, %i.ag
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  %.not.i.i24 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i24, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit82, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = load i32, ptr %1, align 1
  %i.al = xor i32 %i.ak, 1634494053
  %i.am = getelementptr i8, ptr %1, i64 4
  %i.an = load i16, ptr %i.am, align 1
  %i.ao = zext i16 %i.an to i32
  %i.ap = xor i32 %i.ao, 29543
  %i.aq = or i32 %i.al, %i.ap
  %i.ar = icmp ne i32 %i.aq, 0
  %i.as = zext i1 %i.ar to i32
  %.not.i.i32 = icmp eq i32 %i.as, 0
  %spec.select = select i1 %.not.i.i32, i64 4294967300, i64 0
  br label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit82

_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit34.thread: ; preds = %bb.d
  %i.at = load i16, ptr %1, align 1
  %i.au = xor i16 %i.at, 25714
  %i.av = getelementptr i8, ptr %1, i64 2
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i16
  %i.ay = xor i16 %i.ax, 105
  %i.az = or i16 %i.au, %i.ay
  %i.ba = icmp ne i16 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %.not.i.i40 = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i40, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit82, label %.thread205

.thread205:                                       ; preds = %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit34.thread
  %i.bc = load i16, ptr %1, align 1
  %i.bd = xor i16 %i.bc, 29554
  %i.be = getelementptr i8, ptr %1, i64 2
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = zext i8 %i.bf to i16
  %i.bh = xor i16 %i.bg, 105
  %i.bi = or i16 %i.bd, %i.bh
  %i.bj = icmp ne i16 %i.bi, 0
  %i.bk = zext i1 %i.bj to i32
  %.not.i.i48 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i48, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit82, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit50

_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit50: ; preds = %.thread205
  %i.bl = load i16, ptr %1, align 1
  %i.bm = xor i16 %i.bl, 25714
  %i.bn = getelementptr i8, ptr %1, i64 2
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = zext i8 %i.bo to i16
  %i.bq = xor i16 %i.bp, 120
  %i.br = or i16 %i.bm, %i.bq
  %i.bs = icmp ne i16 %i.br, 0
  %i.bt = zext i1 %i.bs to i32
  %.not.i.i56 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i56, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit82, label %.thread220

.thread220:                                       ; preds = %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit50
  %i.bu = load i16, ptr %1, align 1
  %i.bv = xor i16 %i.bu, 25458
  %i.bw = getelementptr i8, ptr %1, i64 2
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = zext i8 %i.bx to i16
  %i.bz = xor i16 %i.by, 120
  %i.ca = or i16 %i.bv, %i.bz
  %i.cb = icmp ne i16 %i.ca, 0
  %i.cc = zext i1 %i.cb to i32
  %.not.i.i64 = icmp eq i32 %i.cc, 0
  %spec.select346 = select i1 %.not.i.i64, i64 4294967304, i64 0
  br label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit82

bb.g:                                             ; preds = %bb.a
  %i.cd = load i16, ptr %1, align 1
  %i.ce = icmp ne i16 %i.cd, 14450
  %i.cf = zext i1 %i.ce to i32
  %.not.i.i72 = icmp eq i32 %i.cf, 0
  br i1 %.not.i.i72, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit82, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cg = load i16, ptr %1, align 1
  %i.ch = icmp ne i16 %i.cg, 14706
  %i.ci = zext i1 %i.ch to i32
  %.not.i.i80 = icmp eq i32 %i.ci, 0
  %spec.select341 = select i1 %.not.i.i80, i64 4294967306, i64 0
  br label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit82

_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit82: ; preds = %.thread220, %bb.b, %bb.c, %bb.a, %bb.h, %bb.f, %bb.d, %bb.e, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit34.thread, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit50, %.thread205, %bb.g
  %.sroa.26.10 = phi i64 [ 4294967300, %bb.e ], [ 4294967298, %bb.d ], [ %spec.select341, %bb.h ], [ %spec.select346, %.thread220 ], [ 4294967305, %bb.g ], [ 4294967301, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit34.thread ], [ 0, %bb.a ], [ %spec.select, %bb.f ], [ 4294967303, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit50 ], [ 4294967302, %.thread205 ], [ 4294967297, %bb.c ], [ 4294967296, %bb.b ] ; 2 uses
  %.not = icmp samesign ult i64 %.sroa.26.10, 4294967296
  %.sroa.26.16.extract.trunc = trunc i64 %.sroa.26.10 to i32
  %spec.select.i = select i1 %.not, i32 -1, i32 %.sroa.26.16.extract.trunc
  ret i32 %spec.select.i
}

declare noundef zeroext i1 @_ZN12lldb_private13PluginManager14RegisterPluginEN4llvm9StringRefES2_PFSt10shared_ptrINS_3ABIEES3_INS_7ProcessEERKNS_8ArchSpecEE(ptr, i64, ptr, i64, ptr noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN12lldb_private13PluginManager16UnregisterPluginEPFSt10shared_ptrINS_3ABIEES1_INS_7ProcessEERKNS_8ArchSpecEE(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN12lldb_private3ABID2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN14ABISysV_x86_64D0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN12lldb_private3ABID2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN14ABISysV_x86_6413GetPluginNameEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.52, i64 11 }
}

declare void @_ZNK12lldb_private3ABI18PrepareTrivialCallERNS_6ThreadEmmmRN4llvm4TypeENS3_8ArrayRefINS0_12CallArgumentEEE() unnamed_addr

declare void @_ZNK12lldb_private3ABI24GetReturnValueObjectImplERNS_6ThreadERN4llvm4TypeE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.276") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(576), ptr noundef nonnull align 1) unnamed_addr #5

declare noundef zeroext i1 @_ZN12lldb_private3ABI27GetFallbackRegisterLocationEPKNS_12RegisterInfoERNS_10UnwindPlan3Row24AbstractRegisterLocationE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN14ABISysV_x86_6423CallFrameAddressIsValidEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i64 %1, 7
  %.not = icmp eq i64 %i.a, 0
  %i.b = icmp ne i64 %1, 0
  %.0 = and i1 %i.b, %.not
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN14ABISysV_x86_6418CodeAddressIsValidEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

declare noundef i64 @_ZN12lldb_private3ABI14FixCodeAddressEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) unnamed_addr #5

declare noundef i64 @_ZN12lldb_private3ABI14FixDataAddressEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN12lldb_private3ABI13FixAnyAddressEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #20
  ret i64 %i.d
}

declare void @_ZN6ABIX8619AugmentRegisterInfoERSt6vectorIN12lldb_private19DynamicRegisterInfo8RegisterESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 1) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN12lldb_private3ABI17GetStackFrameSizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 524288
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i8 } @_ZN12lldb_private3ABI20GetMemoryPermissionsERNS_15RegisterContextEjj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret { i64, i8 } { i64 undef, i8 0 }
}

declare i64 @_ZN12lldb_private10MCBasedABI17GetEHAndDWARFNumsEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9ABIX86_649GetMCNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN12lldb_private10MCBasedABI15MapRegisterNameERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvm9StringRefES9_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nonnull @.str.53, i64 4, ptr nonnull @.str.54, i64 2) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !105
  %i.b = load ptr, ptr %2, align 8, !tbaa !106    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !107  ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !106
  %i.i = load i64, ptr %i.c, align 8, !tbaa !34
  store i64 %i.i, ptr %i.a, align 8, !tbaa !34
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !107
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = phi i64 [ %i.f, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.l, align 8, !tbaa !107
  store ptr %i.c, ptr %2, align 8, !tbaa !106
  store i64 0, ptr %i.k, align 8, !tbaa !107
  store i8 0, ptr %i.c, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK9ABIX86_647Is64BitEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !342
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !35   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !342
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

declare noundef zeroext i1 @_ZN12lldb_private6Scalar10SignExtendEj(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #5

declare noundef i64 @_ZN12lldb_private7Process27ReadScalarIntegerFromMemoryEmjbRNS_6ScalarERNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(3224), i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

declare void @_ZN12lldb_private6StatusC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40), ptr nofree noundef align 8 dereferenceable(32)) unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #12

declare void @_ZN4llvm6detail9IEEEFloatC1Ef(ptr noundef nonnull align 8 dereferenceable(24), float noundef) unnamed_addr #5

declare void @_ZN4llvm7APFloat7StorageC1ENS_6detail9IEEEFloatERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(29)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN4llvm6detail9IEEEFloatD1Ev(ptr noundef nonnull align 8 dead_on_return(21) dereferenceable(24)) unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm7APFloat7StorageaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #6

declare void @_ZN4llvm6detail9IEEEFloatC1Ed(ptr noundef nonnull align 8 dereferenceable(24), double noundef) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN12lldb_private14DataBufferHeapD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #6

declare noundef i32 @_ZNK12lldb_private12CompilerType12GetNumFieldsEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZNK12lldb_private12CompilerType15GetFieldAtIndexEmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPjPb(ptr dead_on_unwind writable sret(%"class.lldb_private::CompilerType") align 8, ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13
end_hunk_0
