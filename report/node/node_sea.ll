Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/node_sea?download=true
inline.NumInlined: 4892
inline.NumDeleted: 1692
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN4node16BlobDeserializerINS_3sea12_GLOBAL__N_115SeaDeserializerEE14ReadArithmeticIjEET_v:bb.a
  %cond31.i = icmp eq i64 %i.cb, 1
  br i1 %cond31.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cz = load i8, ptr %i.cf, align 1, !noalias !362
  store i8 %i.cz, ptr %i.cy, align 1, !noalias !362
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i

bb.af:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cy, ptr align 1 %i.cf, i64 %i.cb, i1 false), !noalias !362
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i: ; preds = %bb.af, %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  br i1 %i.ch, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i
  %i.da = icmp ult i64 %i.cb, 16
  call void @llvm.assume(i1 %i.da), !noalias !362
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i
  %i.db = load i64, ptr %i.cg, align 8, !noalias !362
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.dc) #31, !noalias !362
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i
  store ptr %i.cx, ptr %4, align 8, !noalias !362
  store i64 %.0.i, ptr %i.cg, align 8, !noalias !362
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit
  store i64 %i.ce, ptr %i.av, align 8, !noalias !362
  %i.dd = load ptr, ptr %4, align 8, !noalias !362
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.ce
  store i8 0, ptr %i.de, align 1, !noalias !362
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 11 uses
  store ptr %i.df, ptr %3, align 8, !alias.scope !362
  %i.dg = load ptr, ptr %4, align 8               ; 3 uses
  %i.dh = icmp eq ptr %i.dg, %i.cg
  br i1 %i.dh, label %bb.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.exit
  %i.di = load i64, ptr %i.av, align 8            ; 3 uses
  %i.dj = icmp ult i64 %i.di, 16
  call void @llvm.assume(i1 %i.dj)
  %i.dk = add nuw nsw i64 %i.di, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.df, ptr noundef nonnull align 8 dereferenceable(1) %i.cg, i64 %i.dk, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.exit
  store ptr %i.dg, ptr %3, align 8, !alias.scope !362
  %i.dl = load i64, ptr %i.cg, align 8
  store i64 %i.dl, ptr %i.df, align 8, !alias.scope !362
  %.pre.i.i = load i64, ptr %i.av, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i, %bb.ag
  %i.dm = phi ptr [ %i.df, %bb.ag ], [ %i.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i ] ; 2 uses
  %i.dn = phi i64 [ %i.di, %bb.ag ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i ] ; 6 uses
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i64 %i.dn, ptr %i.do, align 8, !alias.scope !362
  store ptr %i.cg, ptr %4, align 8
  store i64 0, ptr %i.av, align 8
  store i8 0, ptr %i.cg, align 8
  %i.dp = load i64, ptr %i.a, align 8
  %i.dq = icmp ugt i64 %i.dp, 1                   ; 2 uses
  %i.dr = select i1 %i.dq, ptr @.str.120, ptr @.str.121 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !365)
  %i.ds = select i1 %i.dq, i64 7, i64 2           ; 4 uses
  %i.dt = sub i64 9223372036854775807, %i.dn
  %i.du = icmp ult i64 %i.dt, %i.ds
  br i1 %i.du, label %bb.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.ah:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.87) #29, !noalias !365
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.i
  %i.dv = add i64 %i.ds, %i.dn                    ; 3 uses
  %i.dw = icmp eq ptr %i.dm, %i.df
  br i1 %i.dw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.dx = icmp ult i64 %i.dn, 16
  call void @llvm.assume(i1 %i.dx)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.dy = load i64, ptr %i.df, align 8, !noalias !365
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.dz = phi i64 [ %i.dy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.dv, %i.dz
  br i1 %.not.i.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2) %i.ea, ptr noundef nonnull align 1 dereferenceable(2) %i.dr, i64 %i.ds, i1 false), !noalias !365
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.dn, i64 noundef 0, ptr noundef nonnull %i.dr, i64 noundef %i.ds), !noalias !365
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i: ; preds = %bb.aj, %bb.ai
  store i64 %i.dv, ptr %i.do, align 8, !noalias !365
  %i.eb = load ptr, ptr %3, align 8, !noalias !365
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.dv
  store i8 0, ptr %i.ec, align 1, !noalias !365
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.ed, ptr %2, align 8, !alias.scope !365
  %i.ee = load ptr, ptr %3, align 8, !noalias !365 ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.df
  br i1 %i.ef, label %bb.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  %i.eg = load i64, ptr %i.do, align 8, !noalias !365 ; 3 uses
  %i.eh = icmp ult i64 %i.eg, 16
  call void @llvm.assume(i1 %i.eh)
  %i.ei = add nuw nsw i64 %i.eg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ed, ptr noundef nonnull align 8 dereferenceable(1) %i.df, i64 %i.ei, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  store ptr %i.ee, ptr %2, align 8, !alias.scope !365
  %i.ej = load i64, ptr %i.df, align 8, !noalias !365
  store i64 %i.ej, ptr %i.ed, align 8, !alias.scope !365
  %.pre.i5.i = load i64, ptr %i.do, align 8, !noalias !365
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i, %bb.ak
  %i.ek = phi i64 [ %i.eg, %bb.ak ], [ %.pre.i5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i ]
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ek, ptr %i.el, align 8, !alias.scope !365
  store ptr %i.df, ptr %3, align 8, !noalias !365
  store i64 0, ptr %i.do, align 8, !noalias !365
  store i8 0, ptr %i.df, align 8, !noalias !365
  %i.em = load ptr, ptr %4, align 8               ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.cg
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i
  %i.eo = load i64, ptr %i.cg, align 8
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.eq = load i8, ptr %0, align 8, !range !26, !noundef !30
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %bb.al, label %_ZNK4node26BlobSerializerDeserializer5DebugIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmEEEvPKcDpOT_.exit.i

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i
  %i.es = load ptr, ptr @stderr, align 8
  call void @_ZN4node7FPrintFIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmEEEvP8_IO_FILESt17basic_string_viewIcS4_EDpOT_(ptr noundef %i.es, i64 19, ptr nonnull @.str.122, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #33
  br label %_ZNK4node26BlobSerializerDeserializer5DebugIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmEEEvPKcDpOT_.exit.i

_ZNK4node26BlobSerializerDeserializer5DebugIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmEEEvPKcDpOT_.exit.i: ; preds = %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i
  %i.et = load ptr, ptr %2, align 8               ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.ed
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i: ; preds = %_ZNK4node26BlobSerializerDeserializer5DebugIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmEEEvPKcDpOT_.exit.i
  %i.ev = load i64, ptr %i.ed, align 8
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ew) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i: ; preds = %_ZNK4node26BlobSerializerDeserializer5DebugIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmEEEvPKcDpOT_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %.pre23.i = load i64, ptr %i.c, align 8
  %.pre14 = load i64, ptr %i.y, align 8
  br label %_ZN4node16BlobDeserializerINS_3sea12_GLOBAL__N_115SeaDeserializerEE14ReadArithmeticIjEEvPT_m.exit

_ZN4node16BlobDeserializerINS_3sea12_GLOBAL__N_115SeaDeserializerEE14ReadArithmeticIjEEvPT_m.exit: ; preds = %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i
  %i.ex = phi ptr [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ], [ %i.i, %.thread ]
  %i.ey = phi i64 [ %.pre14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ], [ %i.j, %.thread ]
  %i.ez = phi i64 [ %.pre23.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ], [ 4, %.thread ]
  %i.fa = add i64 %i.ey, %i.ez
  store i64 %i.fa, ptr %i.ex, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.0..0..0. = load i32, ptr %i.d, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i32 %.0..0..0.
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i8 @_ZN4node16BlobDeserializerINS_3sea12_GLOBAL__N_115SeaDeserializerEE14ReadArithmeticIhEET_v(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.e = load i8, ptr %0, align 8, !range !26, !noundef !30
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1               ; 2 uses
  store i8 %i.l, ptr %i.d, align 1
  br label %_ZN4node16BlobDeserializerINS_3sea12_GLOBAL__N_115SeaDeserializerEE14ReadArithmeticIhEEvPT_m.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @_ZNK4node26BlobSerializerDeserializer7GetNameIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 1, ptr %i.b, align 8
  %i.m = load i8, ptr %0, align 8, !range !26, !noundef !30
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %_ZNK4node26BlobSerializerDeserializer5DebugIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRmEEEvPKcDpOT_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr @stderr, align 8
  call void @_ZN4node7FPrintFIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRmEEEvP8_IO_FILESt17basic_string_viewIcS4_EDpOT_(ptr noundef %i.o, i64 31, ptr nonnull @.str.118, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #33
  br label %_ZNK4node26BlobSerializerDeserializer5DebugIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRmEEEvPKcDpOT_.exit.i

_ZNK4node26BlobSerializerDeserializer5DebugIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRmEEEvPKcDpOT_.exit.i: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.p = load ptr, ptr %1, align 8                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNK4node26BlobSerializerDeserializer5DebugIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRmEEEvPKcDpOT_.exit.i
  %i.s = load i64, ptr %i.q, align 8
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNK4node26BlobSerializerDeserializer5DebugIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRmEEEvPKcDpOT_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %.pre.i = load i64, ptr %i.a, align 8           ; 3 uses
  %.pre = load i8, ptr %0, align 8, !range !26
  %i.u = trunc nuw i8 %.pre to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i64 %.pre.i, ptr %i.c, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.d, ptr align 1 %i.z, i64 %.pre.i, i1 false)
  %.0..0..0..pre = load i8, ptr %i.d, align 1     ; 9 uses
  br i1 %i.u, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i, label %_ZN4node16BlobDeserializerINS_3sea12_GLOBAL__N_115SeaDeserializerEE14ReadArithmeticIhEEvPT_m.exit

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i:  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !368)
  %i.aa = icmp ult i8 %.0..0..0..pre, 10          ; 2 uses
  %i.ab = icmp ult i8 %.0..0..0..pre, 100
  %5 = select i1 %i.ab, i64 2, i64 3              ; 5 uses
  %i.ac = select i1 %i.aa, i64 1, i64 %5
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 17 uses
  store ptr %i.ad, ptr %4, align 8, !alias.scope !368
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac ; 2 uses
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i
  store i64 1, ptr %6, align 8, !alias.scope !368
  store i8 0, ptr %7, align 1
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2) %i.ad, i8 45, i64 %5, i1 false)
  store i64 %5, ptr %6, align 8, !alias.scope !368
  store i8 0, ptr %7, align 1
  %i.ae = icmp ugt i8 %.0..0..0..pre, 99
  br i1 %i.ae, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i
  %i.af = urem i8 %.0..0..0..pre, 100
  %i.ag = shl nuw i8 %i.af, 1
  %i.ah = udiv i8 %.0..0..0..pre, 100
  %i.ai = zext i8 %i.ag to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !noalias !368
  %.sroa.gep7.sroa.gep9 = getelementptr inbounds nuw i8, ptr %4, i64 18
  store i8 %i.al, ptr %.sroa.gep7.sroa.gep9, align 2
  %i.am = load i8, ptr %i.aj, align 2, !noalias !368
  %.sroa.gep7.sroa.gep = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 %i.am, ptr %.sroa.gep7.sroa.gep, align 1
  br label %bb.d, !llvm.loop !361

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i
  %i.an = shl nuw i8 %.0..0..0..pre, 1
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !noalias !368
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 %i.ar, ptr %i.as, align 1
  %i.at = load i8, ptr %i.ap, align 2, !noalias !368
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.preheader.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread.i
  %i.au = phi i64 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread.i ], [ %5, %.lr.ph.preheader.i.i.i ]
  %.0.lcssa.i.i.ph.i = phi i8 [ %.0..0..0..pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread.i ], [ %i.ah, %.lr.ph.preheader.i.i.i ]
  %i.av = or disjoint i8 %.0.lcssa.i.i.ph.i, 48
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %i.aw = phi i64 [ %i.au, %bb.d ], [ %5, %._crit_edge.i.i.i ] ; 5 uses
  %storemerge.i.i.i = phi i8 [ %i.av, %bb.d ], [ %i.at, %._crit_edge.i.i.i ] ; 2 uses
  store i8 %storemerge.i.i.i, ptr %i.ad, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.ax = add nuw nsw i64 %i.aw, 2                ; 2 uses
  %i.ay = icmp ugt ptr %i.ad, @.str.119
  %i.az = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.aw
  %i.ba = icmp ult ptr %i.az, @.str.119
  %i.bb = select i1 %i.ay, i1 true, i1 %i.ba
  br i1 %i.bb, label %bb.f, label %bb.i, !prof !31

bb.f:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 18 ; 2 uses
  %cond38.i = icmp eq i64 %i.aw, 1
  br i1 %cond38.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 %storemerge.i.i.i, ptr %i.bc, align 2, !noalias !371
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.bc, ptr nonnull align 8 %i.ad, i64 %i.aw, i1 false), !noalias !371
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i: ; preds = %bb.h, %bb.g
  store i16 8315, ptr %i.ad, align 8, !noalias !371
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.exit

bb.i:                                             ; preds = %bb.e
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %i.ad, i64 noundef 0, ptr noundef nonnull @.str.119, i64 noundef 2, i64 noundef %i.aw) #36, !noalias !371
  %.pre11 = load ptr, ptr %4, align 8, !noalias !371
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i, %bb.i
  %i.bd = phi ptr [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i ], [ %.pre11, %bb.i ]
  store i64 %i.ax, ptr %6, align 8, !noalias !371
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ax
  store i8 0, ptr %i.be, align 1, !noalias !371
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 11 uses
  store ptr %i.bf, ptr %3, align 8, !alias.scope !371
  %i.bg = load ptr, ptr %4, align 8               ; 3 uses
  %i.bh = icmp eq ptr %i.bg, %i.ad
  br i1 %i.bh, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.exit
  %i.bi = load i64, ptr %6, align 8               ; 3 uses
  %i.bj = icmp ult i64 %i.bi, 16
  call void @llvm.assume(i1 %i.bj)
  %i.bk = add nuw nsw i64 %i.bi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bf, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.bk, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.exit
  store ptr %i.bg, ptr %3, align 8, !alias.scope !371
  %i.bl = load i64, ptr %i.ad, align 8
  store i64 %i.bl, ptr %i.bf, align 8, !alias.scope !371
  %.pre.i.i = load i64, ptr %6, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i, %bb.j
  %i.bm = phi ptr [ %i.bf, %bb.j ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i ] ; 2 uses
  %i.bn = phi i64 [ %i.bi, %bb.j ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i ] ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i64 %i.bn, ptr %i.bo, align 8, !alias.scope !371
  store ptr %i.ad, ptr %4, align 8
  store i64 0, ptr %6, align 8
  store i8 0, ptr %i.ad, align 8
  %i.bp = load i64, ptr %i.a, align 8
  %i.bq = icmp ugt i64 %i.bp, 1                   ; 2 uses
  %i.br = select i1 %i.bq, ptr @.str.120, ptr @.str.121 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !374)
  %i.bs = select i1 %i.bq, i64 7, i64 2           ; 4 uses
  %i.bt = sub i64 9223372036854775807, %i.bn
  %i.bu = icmp ult i64 %i.bt, %i.bs
  br i1 %i.bu, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.k:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.87) #29, !noalias !374
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.i
  %i.bv = add i64 %i.bs, %i.bn                    ; 3 uses
  %i.bw = icmp eq ptr %i.bm, %i.bf
  br i1 %i.bw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bx = icmp ult i64 %i.bn, 16
  call void @llvm.assume(i1 %i.bx)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.by = load i64, ptr %i.bf, align 8, !noalias !374
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.bz = phi i64 [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.bv, %i.bz
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2) %i.ca, ptr noundef nonnull align 1 dereferenceable(2) %i.br, i64 %i.bs, i1 false), !noalias !374
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bn, i64 noundef 0, ptr noundef nonnull %i.br, i64 noundef %i.bs), !noalias !374
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i: ; preds = %bb.m, %bb.l
  store i64 %i.bv, ptr %i.bo, align 8, !noalias !374
  %i.cb = load ptr, ptr %3, align 8, !noalias !374
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bv
  store i8 0, ptr %i.cc, align 1, !noalias !374
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.cd, ptr %2, align 8, !alias.scope !374
  %i.ce = load ptr, ptr %3, align 8, !noalias !374 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.bf
  br i1 %i.cf, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  %i.cg = load i64, ptr %i.bo, align 8, !noalias !374 ; 3 uses
  %i.ch = icmp ult i64 %i.cg, 16
  call void @llvm.assume(i1 %i.ch)
  %i.ci = add nuw nsw i64 %i.cg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cd, ptr noundef nonnull align 8 dereferenceable(1) %i.bf, i64 %i.ci, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  store ptr %i.ce, ptr %2, align 8, !alias.scope !374
  %i.cj = load i64, ptr %i.bf, align 8, !noalias !374
  store i64 %i.cj, ptr %i.cd, align 8, !alias.scope !374
  %.pre.i5.i = load i64, ptr %i.bo, align 8, !noalias !374
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i, %bb.n
  %i.ck = phi i64 [ %i.cg, %bb.n ], [ %.pre.i5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ck, ptr %i.cl, align 8, !alias.scope !374
  store ptr %i.bf, ptr %3, align 8, !noalias !374
  store i64 0, ptr %i.bo, align 8, !noalias !374
  store i8 0, ptr %i.bf, align 8, !noalias !374
  %i.cm = load ptr, ptr %4, align 8               ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.ad
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i
  %i.co = load i64, ptr %i.ad, align 8
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.cq = load i8, ptr %0, align 8, !range !26, !noundef !30
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.o, label %_ZNK4node26BlobSerializerDeserializer5DebugIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmEEEvPKcDpOT_.exit.i

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i
  %i.cs = load ptr, ptr @stderr, align 8
  call void @_ZN4node7FPrintFIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmEEEvP8_IO_FILESt17basic_string_viewIcS4_EDpOT_(ptr noundef %i.cs, i64 19, ptr nonnull @.str.122, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #33
  br label %_ZNK4node26BlobSerializerDeserializer5DebugIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmEEEvPKcDpOT_.exit.i

_ZNK4node26BlobSerializerDeserializer5DebugIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmEEEvPKcDpOT_.exit.i: ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i
  %i.ct = load ptr, ptr %2, align 8               ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.cd
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i: ; preds = %_ZNK4node26BlobSerializerDeserializer5DebugIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmEEEvPKcDpOT_.exit.i
  %i.cv = load i64, ptr %i.cd, align 8
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i: ; preds = %_ZNK4node26BlobSerializerDeserializer5DebugIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmEEEvPKcDpOT_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %.pre15.i = load i64, ptr %i.c, align 8
  %.pre12 = load i64, ptr %i.x, align 8
  br label %_ZN4node16BlobDeserializerINS_3sea12_GLOBAL__N_115SeaDeserializerEE14ReadArithmeticIhEEvPT_m.exit

_ZN4node16BlobDeserializerINS_3sea12_GLOBAL__N_115SeaDeserializerEE14ReadArithmeticIhEEvPT_m.exit: ; preds = %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i
  %.0..0..pre26 = phi i8 [ %.0..0..0..pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i ], [ %.0..0..0..pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ], [ %i.l, %.thread ]
  %i.cx = phi ptr [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ], [ %i.i, %.thread ]
  %i.cy = phi i64 [ %.pre12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ], [ %i.j, %.thread ]
  %i.cz = phi i64 [ %.pre15.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ], [ 1, %.thread ]
  %i.da = add i64 %i.cy, %i.cz
  store i64 %i.da, ptr %i.cx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i8 %.0..0..pre26
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { i64, ptr } @_ZN4node16BlobDeserializerINS_3sea12_GLOBAL__N_115SeaDeserializerEE14ReadStringViewENS_13StringLogModeE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.d = tail call fastcc noundef i64 @_ZN4node16BlobDeserializerINS_3sea12_GLOBAL__N_115SeaDeserializerEE14ReadArithmeticImEET_v(ptr noundef nonnull align 8 dereferenceable(32) %0) ; 2 uses
  store i64 %i.d, ptr %i.a, align 8
  %i.e = load i8, ptr %0, align 8, !range !26, !noundef !30
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZNK4node26BlobSerializerDeserializer5DebugIJRmEEEvPKcDpOT_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @stderr, align 8
  call void @_ZN4node7FPrintFIJRmEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.g, i64 30, ptr nonnull @.str.132, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #33
  %.pr = load i64, ptr %i.a, align 8
  br label %_ZNK4node26BlobSerializerDeserializer5DebugIJRmEEEvPKcDpOT_.exit

_ZNK4node26BlobSerializerDeserializer5DebugIJRmEEEvPKcDpOT_.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %i.d, %bb.a ], [ %.pr, %bb.b ] ; 3 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNK4node26BlobSerializerDeserializer5DebugIJRmEEEvPKcDpOT_.exit
  %i.j = load i8, ptr %0, align 8, !range !26, !noundef !30
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %_ZNK4node26BlobSerializerDeserializer5DebugIJEEEvPKcDpOT_.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr @stderr, align 8
  call void @_ZN4node7FPrintFIJEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.l, i64 36, ptr nonnull @.str.133) #33
  br label %_ZNK4node26BlobSerializerDeserializer5DebugIJEEEvPKcDpOT_.exit

bb.e:                                             ; preds = %_ZNK4node26BlobSerializerDeserializer5DebugIJRmEEEvPKcDpOT_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p ; 2 uses
  store i64 %i.h, ptr %2, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store ptr %i.q, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i64 %i.h, ptr %i.c, align 8
  %i.s = load i8, ptr %0, align 8, !range !26, !noundef !30
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.f, label %_ZNK4node26BlobSerializerDeserializer5DebugIJPKcmEEEvS3_DpOT_.exit

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr @stderr, align 8
  call void @_ZN4node7FPrintFIJPKcmEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.u, i64 18, ptr nonnull @.str.134, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #33
  %.pre2.pre = load i8, ptr %0, align 8, !range !26
  br label %_ZNK4node26BlobSerializerDeserializer5DebugIJPKcmEEEvS3_DpOT_.exit

_ZNK4node26BlobSerializerDeserializer5DebugIJPKcmEEEvS3_DpOT_.exit: ; preds = %bb.e, %bb.f
  %.pre2 = phi i8 [ 0, %bb.e ], [ %.pre2.pre, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %_ZNK4node26BlobSerializerDeserializer5DebugIJRA2_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEEvPS2_DpOT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK4node26BlobSerializerDeserializer5DebugIJPKcmEEEvS3_DpOT_.exit
  %i.v = trunc nuw i8 %.pre2 to i1
  br i1 %i.v, label %bb.h, label %_ZNK4node26BlobSerializerDeserializer5DebugIJEEEvPKcDpOT_.exit1

bb.h:                                             ; preds = %bb.g
  %i.w = load i64, ptr %i.a, align 8
  %i.x = icmp ugt i64 %i.w, 32
  %.str.136..str.137 = select i1 %i.x, ptr @.str.136, ptr @.str.137
end_hunk_0
