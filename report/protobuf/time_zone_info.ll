inline.NumInlined: 1281
inline.NumDeleted: 547
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@"_ZNSt17_Function_handlerIFSt10unique_ptrIN4absl12lts_2025051213time_internal4cctz14ZoneInfoSourceESt14default_deleteIS5_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZNS4_12TimeZoneInfo4LoadESG_E3$_0E9_M_invokeERKSt9_Any_dataSG_":bb.a
  store i8 47, ptr %i.ag, align 1, !tbaa !33, !noalias !263
  store i64 %i.y, ptr %i.n, align 8, !tbaa !7, !noalias !263
  %i.ah = load ptr, ptr %10, align 8, !tbaa !17, !noalias !263
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.y
  store i8 0, ptr %i.ai, align 1, !tbaa !33, !noalias !263
  %.pre.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !7, !noalias !263
  br label %bb.i

bb.h:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i.i.i, %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit30.i.i.i.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i, %bb.b
  %i.ak = phi i64 [ %.pre.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i ], [ %i.i, %bb.b ] ; 3 uses
  %i.al = icmp ugt i64 %.0.i.i.i.i.i, %i.ak
  br i1 %i.al, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.6, i64 noundef %.0.i.i.i.i.i, i64 noundef %i.ak) #25
          to label %.noexc24.i.i.i.i unwind label %bb.m, !noalias !263

.noexc24.i.i.i.i:                                 ; preds = %bb.j
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i: ; preds = %bb.i
  %i.am = sub nuw i64 %i.ak, %.0.i.i.i.i.i        ; 2 uses
  %i.an = load i64, ptr %i.n, align 8, !tbaa !7, !noalias !263
  %i.ao = sub i64 4611686018427387903, %i.an
  %i.ap = icmp ult i64 %i.ao, %i.am
  br i1 %i.ap, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #25
          to label %.noexc25.i.i.i.i unwind label %bb.m, !noalias !263

.noexc25.i.i.i.i:                                 ; preds = %bb.k
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i
  %i.aq = load ptr, ptr %2, align 8, !tbaa !17, !noalias !263
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.0.i.i.i.i.i
  %i.as = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.ar, i64 noundef %i.am)
          to label %bb.l unwind label %bb.m, !noalias !263 ; 0 uses

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i.i
  %i.at = load ptr, ptr %10, align 8, !tbaa !17, !noalias !263
  %i.au = call noalias ptr @fopen(ptr noundef readonly %i.at, ptr noundef nonnull @.str.13), !noalias !264 ; 3 uses
  %.not.i27.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i27.i.i.i.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit32.i.i.i.i, label %bb.n

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i.i, %bb.k, %bb.j
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit30.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.aw = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26
          to label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit.i.i.i.i unwind label %bb.o, !noalias !263 ; 5 uses

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit.i.i.i.i: ; preds = %bb.n
  %i.ax = ptrtoint ptr %i.au to i64
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE, i64 16), ptr %i.aw, align 8, !tbaa !111, !noalias !263
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 ptrtoint (ptr @fclose to i64), ptr %i.ay, align 8, !tbaa !143, !noalias !263
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 %i.ax, ptr %i.az, align 8, !tbaa !267, !noalias !263
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i64 -1, ptr %i.ba, align 8, !tbaa !269, !noalias !263
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit32.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = call noundef i32 @fclose(ptr noundef nonnull %i.au), !noalias !263 ; 0 uses
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit30.i.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit32.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit.i.i.i.i, %bb.l
  %storemerge.i.i.i.i = phi ptr [ %i.aw, %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit.i.i.i.i ], [ null, %bb.l ] ; 2 uses
  store ptr %storemerge.i.i.i.i, ptr %0, align 8, !tbaa !148, !alias.scope !263
  %i.bd = load ptr, ptr %10, align 8, !tbaa !17, !noalias !263 ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.m
  br i1 %i.be, label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit32.i.i.i.i
  %i.bf = load i64, ptr %i.m, align 8, !tbaa !33, !noalias !263
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #27, !noalias !263
  br label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit30.i.i.i.i: ; preds = %bb.o, %bb.m, %bb.h
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.aj, %bb.h ], [ %i.av, %bb.m ], [ %i.bb, %bb.o ]
  %i.bh = load ptr, ptr %10, align 8, !tbaa !17, !noalias !263 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.m
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit30.i.i.i.i
  %i.bj = load i64, ptr %i.m, align 8, !tbaa !33, !noalias !263
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #27, !noalias !263
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.i.i.i.i

common.resume.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85.i.i.i.i, %bb.ax, %.thread.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.i.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.i.i.i.i ], [ %.pn33.pn.pn.pn.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85.i.i.i.i ], [ %i.ep, %.thread.i.i.i.i ], [ %i.ik, %bb.ax ]
  resume { ptr, i32 } %common.resume.op.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit30.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24, !noalias !263
  br label %common.resume.i.i.i

_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit32.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24, !noalias !263
  %.not.i.i.i = icmp eq ptr %storemerge.i.i.i.i, null
  br i1 %.not.i.i.i, label %bb.p, label %"_ZSt10__invoke_rISt10unique_ptrIN4absl12lts_2025051213time_internal4cctz14ZoneInfoSourceESt14default_deleteIS5_EERZNS4_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit"

bb.p:                                             ; preds = %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !280)
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !283
  %i.bl = load i64, ptr %i.h, align 8, !tbaa !7, !noalias !284 ; 3 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i24.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i14.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i14.i.i.i: ; preds = %bb.p
  %spec.select.i.i.i15.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bl, i64 5)
  %i.bn = load ptr, ptr %2, align 8, !tbaa !17, !noalias !284
  %bcmp145.i.i.i.i = call i32 @bcmp(ptr %i.bn, ptr nonnull @.str.10, i64 %spec.select.i.i.i15.i.i.i), !noalias !284
  %.not.i.i16.i.i.i = icmp eq i32 %bcmp145.i.i.i.i, 0
  br i1 %.not.i.i16.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i24.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i17.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i24.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i14.i.i.i, %bb.p
  %.inv.i25.i.i.i = icmp ult i64 %i.bl, 5
  %i.bo = select i1 %.inv.i25.i.i.i, i64 0, i64 5
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i17.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i17.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i24.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i14.i.i.i
  %.0.i.i18.i.i.i = phi i64 [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i14.i.i.i ], [ %i.bo, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i24.i.i.i ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 11 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 9 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 44 ; 6 uses
  %i.bu = call noalias ptr @fopen(ptr noundef nonnull readonly @.str.16, ptr noundef nonnull @.str.13), !noalias !285 ; 7 uses
  %.not.i65.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i65.i.i.i.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.thread.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i17.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24, !noalias !284
  %i.bv = call i64 @fread(ptr noundef nonnull %i.f, i64 noundef 1, i64 noundef 24, ptr noundef nonnull %i.bu), !noalias !284
  %.not54.i.i.i.i = icmp eq i64 %i.bv, 24
  br i1 %.not54.i.i.i.i, label %bb.r, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.bw = load i32, ptr %i.f, align 16
  %i.bx = xor i32 %i.bw, 1633974900
  %i.by = getelementptr i8, ptr %i.f, i64 4
  %i.bz = load i16, ptr %i.by, align 4
  %i.ca = zext i16 %i.bz to i32
  %i.cb = xor i32 %i.ca, 24948
  %i.cc = or i32 %i.bx, %i.cb
  %i.cd = icmp ne i32 %i.cc, 0
  %i.ce = zext i1 %i.cd to i32
  %.not55.i.i.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not55.i.i.i.i, label %bb.s, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.cf = load i8, ptr %i.bp, align 1, !tbaa !33, !noalias !284
  %.07.val.i.i.i.i.i = load i8, ptr %i.bq, align 4, !tbaa !33, !noalias !284
  %i.cg = load i32, ptr %i.bq, align 4, !tbaa !33, !noalias !284
  %i.ch = call i32 @llvm.bswap.i32(i32 %i.cg)
  %i.ci = zext i32 %i.ch to i64                   ; 4 uses
  %i.cj = or disjoint i64 %i.ci, -4294967296
  %i.ck = icmp slt i8 %.07.val.i.i.i.i.i, 0       ; 2 uses
  %.0.i66.i.i.i.i = select i1 %i.ck, i64 %i.cj, i64 %i.ci
  %.07.val.i67.i.i.i.i = load i8, ptr %i.br, align 16, !tbaa !33, !noalias !284
  %i.cl = load i32, ptr %i.br, align 16, !tbaa !33, !noalias !284
  %i.cm = call i32 @llvm.bswap.i32(i32 %i.cl)
  %i.cn = zext i32 %i.cm to i64                   ; 2 uses
  %i.co = or disjoint i64 %i.cn, -4294967296
  %i.cp = icmp slt i8 %.07.val.i67.i.i.i.i, 0
  %.0.i71.i.i.i.i = select i1 %i.cp, i64 %i.co, i64 %i.cn ; 3 uses
  %i.cq = icmp slt i64 %.0.i71.i.i.i.i, %.0.i66.i.i.i.i
  %or.cond.i.i.i.i = or i1 %i.ck, %i.cq
  br i1 %or.cond.i.i.i.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cr = call i32 @fseek(ptr noundef nonnull %i.bu, i64 noundef %i.ci, i32 noundef 0), !noalias !284
  %.not56.i.i.i.i = icmp eq i32 %i.cr, 0
  br i1 %.not56.i.i.i.i, label %bb.u, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.i.i.i.i

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24, !noalias !284
  %i.cs = sub nsw i64 %.0.i71.i.i.i.i, %i.ci      ; 3 uses
  %i.ct = udiv i64 %i.cs, 52                      ; 2 uses
  %i.cu = mul nuw i64 %i.ct, 52
  %.not57.i.i.i.i = icmp ne i64 %i.cu, %i.cs
  %.not58148.i.i.i.i = icmp ult i64 %i.cs, 52
  %or.cond171.i.i.i.i = or i1 %.not58148.i.i.i.i, %.not57.i.i.i.i
  br i1 %or.cond171.i.i.i.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.sink.split.i.i.i.i, label %.lr.ph.i.i.i.i

bb.v:                                             ; preds = %bb.x
  %i.cv = add nuw nsw i64 %.041149.i.i.i.i, 1     ; 2 uses
  %.not58.i.i.i.i = icmp eq i64 %i.cv, %i.ct
  br i1 %.not58.i.i.i.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.sink.split.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !288

.lr.ph.i.i.i.i:                                   ; preds = %bb.u, %bb.v
  %.041149.i.i.i.i = phi i64 [ %i.cv, %bb.v ], [ 0, %bb.u ]
  %i.cw = call i64 @fread(ptr noundef nonnull %i.g, i64 noundef 1, i64 noundef 52, ptr noundef nonnull %i.bu), !noalias !284
  %.not59.i.i.i.i = icmp eq i64 %i.cw, 52
  br i1 %.not59.i.i.i.i, label %bb.w, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.sink.split.i.i.i.i

bb.w:                                             ; preds = %.lr.ph.i.i.i.i
  %.07.val.i72.i.i.i.i = load i8, ptr %i.bs, align 8, !tbaa !33, !noalias !284
  %i.cx = load i32, ptr %i.bs, align 8, !tbaa !33, !noalias !284
  %i.cy = call i32 @llvm.bswap.i32(i32 %i.cx)
  %i.cz = zext i32 %i.cy to i64                   ; 2 uses
  %i.da = or disjoint i64 %i.cz, -4294967296
  %i.db = icmp slt i8 %.07.val.i72.i.i.i.i, 0
  %.0.i76.i.i.i.i = select i1 %i.db, i64 %i.da, i64 %i.cz
  %i.dc = add nsw i64 %.0.i76.i.i.i.i, %.0.i71.i.i.i.i ; 2 uses
  %.07.val.i77.i.i.i.i = load i8, ptr %i.bt, align 4, !tbaa !33, !noalias !284
  %i.dd = load i32, ptr %i.bt, align 4, !tbaa !33, !noalias !284
  %i.de = call i32 @llvm.bswap.i32(i32 %i.dd)
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  %i.dg = or disjoint i64 %i.df, -4294967296
  %i.dh = icmp slt i8 %.07.val.i77.i.i.i.i, 0
  %.0.i81.i.i.i.i = select i1 %i.dh, i64 %i.dg, i64 %i.df ; 2 uses
  %i.di = or i64 %.0.i81.i.i.i.i, %i.dc
  %or.cond.not.i.i.i.i = icmp sgt i64 %i.di, -1
  br i1 %or.cond.not.i.i.i.i, label %bb.x, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.sink.split.i.i.i.i

bb.x:                                             ; preds = %bb.w
  store i8 0, ptr %i.bs, align 8, !tbaa !33, !noalias !284
  %i.dj = load ptr, ptr %2, align 8, !tbaa !17, !noalias !284
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.0.i.i18.i.i.i
  %i.dl = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dk, ptr noundef nonnull dereferenceable(1) %i.g) #29, !noalias !284
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.y, label %bb.v

bb.y:                                             ; preds = %bb.x
  %i.dn = call i32 @fseek(ptr noundef nonnull %i.bu, i64 noundef %i.dc, i32 noundef 0), !noalias !284
  %.not60.i.i.i.i = icmp eq i32 %i.dn, 0
  br i1 %.not60.i.i.i.i, label %bb.z, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.sink.split.i.i.i.i

bb.z:                                             ; preds = %bb.aw, %bb.an, %bb.y
  %.lcssa89 = phi ptr [ %i.bu, %bb.y ], [ %i.es, %bb.an ], [ %i.gn, %bb.aw ] ; 3 uses
  %.lcssa88 = phi i8 [ %i.cf, %bb.y ], [ %i.fd, %bb.an ], [ %i.gy, %bb.aw ]
  %.0.i81.i.i.i.i.lcssa.lcssa = phi i64 [ %.0.i81.i.i.i.i, %bb.y ], [ %.0.i81.i.i.i.i.1, %bb.an ], [ %.0.i81.i.i.i.i.2, %bb.aw ]
  %i.do = icmp eq i8 %.lcssa88, 0
  %i.dp = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.dq = select i1 %i.do, ptr %i.dp, ptr @.str.21 ; 3 uses
  %i.dr = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26
          to label %bb.aa unwind label %bb.ax, !noalias !284 ; 9 uses

bb.aa:                                            ; preds = %bb.z
  %i.ds = ptrtoint ptr %.lcssa89 to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.dt, ptr %9, align 8, !tbaa !47, !noalias !284
  %i.du = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dq) #24, !noalias !284 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24, !noalias !284
  store i64 %i.du, ptr %i.e, align 8, !tbaa !72, !noalias !284
  %i.dv = icmp ugt i64 %i.du, 15
  br i1 %i.dv, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %bb.aa
  %i.dw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc.i23.i.i.i unwind label %.thread.i.i.i.i, !noalias !284 ; 2 uses

.noexc.i23.i.i.i:                                 ; preds = %.noexc.i.i.i.i.i
  store ptr %i.dw, ptr %9, align 8, !tbaa !17, !noalias !284
  %i.dx = load i64, ptr %i.e, align 8, !tbaa !72, !noalias !284
  store i64 %i.dx, ptr %i.dt, align 8, !tbaa !33, !noalias !284
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc.i23.i.i.i, %bb.aa
  %i.dy = phi ptr [ %i.dw, %.noexc.i23.i.i.i ], [ %i.dt, %bb.aa ] ; 2 uses
  switch i64 %i.du, label %bb.ac [
    i64 1, label %bb.ab
    i64 0, label %bb.ad
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.dz = load i8, ptr %i.dq, align 1, !tbaa !33, !noalias !284
  store i8 %i.dz, ptr %i.dy, align 1, !tbaa !33, !noalias !284
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dy, ptr nonnull align 1 %i.dq, i64 %i.du, i1 false), !noalias !284
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %._crit_edge.i.i.i.i.i.i
  %i.ea = load i64, ptr %i.e, align 8, !tbaa !72, !noalias !284 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !7, !noalias !284
  %i.ec = load ptr, ptr %9, align 8, !tbaa !17, !noalias !284
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ea
  store i8 0, ptr %i.ed, align 1, !tbaa !33, !noalias !284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24, !noalias !284
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store i64 ptrtoint (ptr @fclose to i64), ptr %i.ee, align 8, !tbaa !143, !noalias !284
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store i64 %i.ds, ptr %i.ef, align 8, !tbaa !267, !noalias !284
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  store i64 %.0.i81.i.i.i.i.lcssa.lcssa, ptr %i.eg, align 8, !tbaa !269, !noalias !284
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceE, i64 16), ptr %i.dr, align 8, !tbaa !111, !noalias !284
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dr, i64 32 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dr, i64 48 ; 3 uses
  store ptr %i.ei, ptr %i.eh, align 8, !tbaa !47, !noalias !284
  %i.ej = load ptr, ptr %9, align 8, !tbaa !17, !noalias !284 ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.dt
  br i1 %i.ek, label %bb.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.el = load i64, ptr %i.eb, align 8, !tbaa !7, !noalias !284 ; 3 uses
  %i.em = icmp ult i64 %i.el, 16
  call void @llvm.assume(i1 %i.em)
  %i.en = add nuw nsw i64 %i.el, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ei, ptr noundef nonnull align 8 dereferenceable(1) %i.dt, i64 %i.en, i1 false), !noalias !284
  br label %bb.ay

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i.i.i: ; preds = %bb.ad
  store ptr %i.ej, ptr %i.eh, align 8, !tbaa !17, !noalias !284
  %i.eo = load i64, ptr %i.dt, align 8, !tbaa !33, !noalias !284
  store i64 %i.eo, ptr %i.ei, align 8, !tbaa !33, !noalias !284
  %.pre.i22.i.i.i = load i64, ptr %i.eb, align 8, !tbaa !7, !noalias !284
  br label %bb.ay

.thread.i.i.i.i:                                  ; preds = %.noexc.i.i.i.i.i
  %i.ep = landingpad { ptr, i32 }
          cleanup
  %i.eq = call noundef i32 @fclose(ptr noundef nonnull %.lcssa89), !noalias !284 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef 64) #27, !noalias !284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24, !noalias !284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24, !noalias !284
  br label %common.resume.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.sink.split.i.i.i.i: ; preds = %bb.w, %.lr.ph.i.i.i.i, %bb.v, %bb.y, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24, !noalias !284
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.i.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.sink.split.i.i.i.i, %bb.t, %bb.s, %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24, !noalias !284
  %i.er = call noundef i32 @fclose(ptr noundef nonnull %i.bu), !noalias !284 ; 0 uses
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.thread.i.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.thread.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i17.i.i.i
  %i.es = call noalias ptr @fopen(ptr noundef nonnull readonly @.str.17, ptr noundef nonnull @.str.13), !noalias !285 ; 7 uses
  %.not.i65.i.i.i.i.1 = icmp eq ptr %i.es, null
  br i1 %.not.i65.i.i.i.i.1, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.thread.i.i.i.i.1, label %bb.af

bb.af:                                            ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.thread.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24, !noalias !284
  %i.et = call i64 @fread(ptr noundef nonnull %i.f, i64 noundef 1, i64 noundef 24, ptr noundef nonnull %i.es), !noalias !284
  %.not54.i.i.i.i.1 = icmp eq i64 %i.et, 24
  br i1 %.not54.i.i.i.i.1, label %bb.ag, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.i.i.i.i.1

bb.ag:                                            ; preds = %bb.af
  %i.eu = load i32, ptr %i.f, align 16
  %i.ev = xor i32 %i.eu, 1633974900
  %i.ew = getelementptr i8, ptr %i.f, i64 4
  %i.ex = load i16, ptr %i.ew, align 4
  %i.ey = zext i16 %i.ex to i32
  %i.ez = xor i32 %i.ey, 24948
  %i.fa = or i32 %i.ev, %i.ez
  %i.fb = icmp ne i32 %i.fa, 0
  %i.fc = zext i1 %i.fb to i32
  %.not55.i.i.i.i.1 = icmp eq i32 %i.fc, 0
  br i1 %.not55.i.i.i.i.1, label %bb.ah, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.i.i.i.i.1

bb.ah:                                            ; preds = %bb.ag
  %i.fd = load i8, ptr %i.bp, align 1, !tbaa !33, !noalias !284
  %.07.val.i.i.i.i.i.1 = load i8, ptr %i.bq, align 4, !tbaa !33, !noalias !284
  %i.fe = load i32, ptr %i.bq, align 4, !tbaa !33, !noalias !284
  %i.ff = call i32 @llvm.bswap.i32(i32 %i.fe)
  %i.fg = zext i32 %i.ff to i64                   ; 4 uses
  %i.fh = or disjoint i64 %i.fg, -4294967296
  %i.fi = icmp slt i8 %.07.val.i.i.i.i.i.1, 0     ; 2 uses
  %.0.i66.i.i.i.i.1 = select i1 %i.fi, i64 %i.fh, i64 %i.fg
  %.07.val.i67.i.i.i.i.1 = load i8, ptr %i.br, align 16, !tbaa !33, !noalias !284
  %i.fj = load i32, ptr %i.br, align 16, !tbaa !33, !noalias !284
  %i.fk = call i32 @llvm.bswap.i32(i32 %i.fj)
  %i.fl = zext i32 %i.fk to i64                   ; 2 uses
  %i.fm = or disjoint i64 %i.fl, -4294967296
  %i.fn = icmp slt i8 %.07.val.i67.i.i.i.i.1, 0
  %.0.i71.i.i.i.i.1 = select i1 %i.fn, i64 %i.fm, i64 %i.fl ; 3 uses
  %i.fo = icmp slt i64 %.0.i71.i.i.i.i.1, %.0.i66.i.i.i.i.1
  %or.cond.i.i.i.i.1 = or i1 %i.fi, %i.fo
  br i1 %or.cond.i.i.i.i.1, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.i.i.i.i.1, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fp = call i32 @fseek(ptr noundef nonnull %i.es, i64 noundef %i.fg, i32 noundef 0), !noalias !284
  %.not56.i.i.i.i.1 = icmp eq i32 %i.fp, 0
  br i1 %.not56.i.i.i.i.1, label %bb.aj, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.i.i.i.i.1

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24, !noalias !284
  %i.fq = sub nsw i64 %.0.i71.i.i.i.i.1, %i.fg    ; 3 uses
  %i.fr = udiv i64 %i.fq, 52                      ; 2 uses
  %i.fs = mul nuw i64 %i.fr, 52
  %.not57.i.i.i.i.1 = icmp ne i64 %i.fs, %i.fq
  %.not58148.i.i.i.i.1 = icmp ult i64 %i.fq, 52
  %or.cond171.i.i.i.i.1 = or i1 %.not58148.i.i.i.i.1, %.not57.i.i.i.i.1
  br i1 %or.cond171.i.i.i.i.1, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.sink.split.i.i.i.i.1, label %.lr.ph.i.i.i.i.1

.lr.ph.i.i.i.i.1:                                 ; preds = %bb.aj, %bb.am
  %.041149.i.i.i.i.1 = phi i64 [ %i.gk, %bb.am ], [ 0, %bb.aj ]
  %i.ft = call i64 @fread(ptr noundef nonnull %i.g, i64 noundef 1, i64 noundef 52, ptr noundef nonnull %i.es), !noalias !284
  %.not59.i.i.i.i.1 = icmp eq i64 %i.ft, 52
  br i1 %.not59.i.i.i.i.1, label %bb.ak, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.sink.split.i.i.i.i.1

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i.1
  %.07.val.i72.i.i.i.i.1 = load i8, ptr %i.bs, align 8, !tbaa !33, !noalias !284
  %i.fu = load i32, ptr %i.bs, align 8, !tbaa !33, !noalias !284
  %i.fv = call i32 @llvm.bswap.i32(i32 %i.fu)
  %i.fw = zext i32 %i.fv to i64                   ; 2 uses
  %i.fx = or disjoint i64 %i.fw, -4294967296
  %i.fy = icmp slt i8 %.07.val.i72.i.i.i.i.1, 0
  %.0.i76.i.i.i.i.1 = select i1 %i.fy, i64 %i.fx, i64 %i.fw
  %i.fz = add nsw i64 %.0.i76.i.i.i.i.1, %.0.i71.i.i.i.i.1 ; 2 uses
  %.07.val.i77.i.i.i.i.1 = load i8, ptr %i.bt, align 4, !tbaa !33, !noalias !284
  %i.ga = load i32, ptr %i.bt, align 4, !tbaa !33, !noalias !284
  %i.gb = call i32 @llvm.bswap.i32(i32 %i.ga)
  %i.gc = zext i32 %i.gb to i64                   ; 2 uses
  %i.gd = or disjoint i64 %i.gc, -4294967296
  %i.ge = icmp slt i8 %.07.val.i77.i.i.i.i.1, 0
  %.0.i81.i.i.i.i.1 = select i1 %i.ge, i64 %i.gd, i64 %i.gc ; 2 uses
  %i.gf = or i64 %.0.i81.i.i.i.i.1, %i.fz
  %or.cond.not.i.i.i.i.1 = icmp sgt i64 %i.gf, -1
  br i1 %or.cond.not.i.i.i.i.1, label %bb.al, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.sink.split.i.i.i.i.1

bb.al:                                            ; preds = %bb.ak
  store i8 0, ptr %i.bs, align 8, !tbaa !33, !noalias !284
  %i.gg = load ptr, ptr %2, align 8, !tbaa !17, !noalias !284
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %.0.i.i18.i.i.i
  %i.gi = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.gh, ptr noundef nonnull dereferenceable(1) %i.g) #29, !noalias !284
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gk = add nuw nsw i64 %.041149.i.i.i.i.1, 1   ; 2 uses
  %.not58.i.i.i.i.1 = icmp eq i64 %i.gk, %i.fr
  br i1 %.not58.i.i.i.i.1, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.sink.split.i.i.i.i.1, label %.lr.ph.i.i.i.i.1, !llvm.loop !288

bb.an:                                            ; preds = %bb.al
  %i.gl = call i32 @fseek(ptr noundef nonnull %i.es, i64 noundef %i.fz, i32 noundef 0), !noalias !284
  %.not60.i.i.i.i.1 = icmp eq i32 %i.gl, 0
  br i1 %.not60.i.i.i.i.1, label %bb.z, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.sink.split.i.i.i.i.1

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.sink.split.i.i.i.i.1: ; preds = %.lr.ph.i.i.i.i.1, %bb.ak, %bb.am, %bb.an, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24, !noalias !284
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.i.i.i.i.1

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.i.i.i.i.1: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.sink.split.i.i.i.i.1, %bb.ai, %bb.ah, %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24, !noalias !284
  %i.gm = call noundef i32 @fclose(ptr noundef nonnull %i.es), !noalias !284 ; 0 uses
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.thread.i.i.i.i.1

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.thread.i.i.i.i.1: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.i.i.i.i.1, %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.thread.i.i.i.i
  %i.gn = call noalias ptr @fopen(ptr noundef nonnull readonly @.str.18, ptr noundef nonnull @.str.13), !noalias !285 ; 7 uses
  %.not.i65.i.i.i.i.2 = icmp eq ptr %i.gn, null
  br i1 %.not.i65.i.i.i.i.2, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.thread.i.i.i.i.2, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.thread.i.i.i.i.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24, !noalias !284
  %i.go = call i64 @fread(ptr noundef nonnull %i.f, i64 noundef 1, i64 noundef 24, ptr noundef nonnull %i.gn), !noalias !284
  %.not54.i.i.i.i.2 = icmp eq i64 %i.go, 24
  br i1 %.not54.i.i.i.i.2, label %bb.ap, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.i.i.i.i.2

bb.ap:                                            ; preds = %bb.ao
  %i.gp = load i32, ptr %i.f, align 16
  %i.gq = xor i32 %i.gp, 1633974900
  %i.gr = getelementptr i8, ptr %i.f, i64 4
  %i.gs = load i16, ptr %i.gr, align 4
  %i.gt = zext i16 %i.gs to i32
  %i.gu = xor i32 %i.gt, 24948
  %i.gv = or i32 %i.gq, %i.gu
  %i.gw = icmp ne i32 %i.gv, 0
  %i.gx = zext i1 %i.gw to i32
  %.not55.i.i.i.i.2 = icmp eq i32 %i.gx, 0
  br i1 %.not55.i.i.i.i.2, label %bb.aq, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.i.i.i.i.2

bb.aq:                                            ; preds = %bb.ap
  %i.gy = load i8, ptr %i.bp, align 1, !tbaa !33, !noalias !284
  %.07.val.i.i.i.i.i.2 = load i8, ptr %i.bq, align 4, !tbaa !33, !noalias !284
  %i.gz = load i32, ptr %i.bq, align 4, !tbaa !33, !noalias !284
  %i.ha = call i32 @llvm.bswap.i32(i32 %i.gz)
  %i.hb = zext i32 %i.ha to i64                   ; 4 uses
  %i.hc = or disjoint i64 %i.hb, -4294967296
  %i.hd = icmp slt i8 %.07.val.i.i.i.i.i.2, 0     ; 2 uses
  %.0.i66.i.i.i.i.2 = select i1 %i.hd, i64 %i.hc, i64 %i.hb
  %.07.val.i67.i.i.i.i.2 = load i8, ptr %i.br, align 16, !tbaa !33, !noalias !284
  %i.he = load i32, ptr %i.br, align 16, !tbaa !33, !noalias !284
  %i.hf = call i32 @llvm.bswap.i32(i32 %i.he)
  %i.hg = zext i32 %i.hf to i64                   ; 2 uses
  %i.hh = or disjoint i64 %i.hg, -4294967296
  %i.hi = icmp slt i8 %.07.val.i67.i.i.i.i.2, 0
  %.0.i71.i.i.i.i.2 = select i1 %i.hi, i64 %i.hh, i64 %i.hg ; 3 uses
  %i.hj = icmp slt i64 %.0.i71.i.i.i.i.2, %.0.i66.i.i.i.i.2
  %or.cond.i.i.i.i.2 = or i1 %i.hd, %i.hj
  br i1 %or.cond.i.i.i.i.2, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.i.i.i.i.2, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hk = call i32 @fseek(ptr noundef nonnull %i.gn, i64 noundef %i.hb, i32 noundef 0), !noalias !284
  %.not56.i.i.i.i.2 = icmp eq i32 %i.hk, 0
  br i1 %.not56.i.i.i.i.2, label %bb.as, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.i.i.i.i.2

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24, !noalias !284
  %i.hl = sub nsw i64 %.0.i71.i.i.i.i.2, %i.hb    ; 3 uses
  %i.hm = udiv i64 %i.hl, 52                      ; 2 uses
  %i.hn = mul nuw i64 %i.hm, 52
  %.not57.i.i.i.i.2 = icmp ne i64 %i.hn, %i.hl
  %.not58148.i.i.i.i.2 = icmp ult i64 %i.hl, 52
  %or.cond171.i.i.i.i.2 = or i1 %.not58148.i.i.i.i.2, %.not57.i.i.i.i.2
  br i1 %or.cond171.i.i.i.i.2, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.sink.split.i.i.i.i.2, label %.lr.ph.i.i.i.i.2

.lr.ph.i.i.i.i.2:                                 ; preds = %bb.as, %bb.av
  %.041149.i.i.i.i.2 = phi i64 [ %i.if, %bb.av ], [ 0, %bb.as ]
  %i.ho = call i64 @fread(ptr noundef nonnull %i.g, i64 noundef 1, i64 noundef 52, ptr noundef nonnull %i.gn), !noalias !284
  %.not59.i.i.i.i.2 = icmp eq i64 %i.ho, 52
  br i1 %.not59.i.i.i.i.2, label %bb.at, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.sink.split.i.i.i.i.2

bb.at:                                            ; preds = %.lr.ph.i.i.i.i.2
  %.07.val.i72.i.i.i.i.2 = load i8, ptr %i.bs, align 8, !tbaa !33, !noalias !284
  %i.hp = load i32, ptr %i.bs, align 8, !tbaa !33, !noalias !284
  %i.hq = call i32 @llvm.bswap.i32(i32 %i.hp)
  %i.hr = zext i32 %i.hq to i64                   ; 2 uses
  %i.hs = or disjoint i64 %i.hr, -4294967296
  %i.ht = icmp slt i8 %.07.val.i72.i.i.i.i.2, 0
  %.0.i76.i.i.i.i.2 = select i1 %i.ht, i64 %i.hs, i64 %i.hr
  %i.hu = add nsw i64 %.0.i76.i.i.i.i.2, %.0.i71.i.i.i.i.2 ; 2 uses
  %.07.val.i77.i.i.i.i.2 = load i8, ptr %i.bt, align 4, !tbaa !33, !noalias !284
  %i.hv = load i32, ptr %i.bt, align 4, !tbaa !33, !noalias !284
  %i.hw = call i32 @llvm.bswap.i32(i32 %i.hv)
  %i.hx = zext i32 %i.hw to i64                   ; 2 uses
  %i.hy = or disjoint i64 %i.hx, -4294967296
  %i.hz = icmp slt i8 %.07.val.i77.i.i.i.i.2, 0
  %.0.i81.i.i.i.i.2 = select i1 %i.hz, i64 %i.hy, i64 %i.hx ; 2 uses
  %i.ia = or i64 %.0.i81.i.i.i.i.2, %i.hu
  %or.cond.not.i.i.i.i.2 = icmp sgt i64 %i.ia, -1
  br i1 %or.cond.not.i.i.i.i.2, label %bb.au, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.sink.split.i.i.i.i.2

bb.au:                                            ; preds = %bb.at
  store i8 0, ptr %i.bs, align 8, !tbaa !33, !noalias !284
  %i.ib = load ptr, ptr %2, align 8, !tbaa !17, !noalias !284
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %.0.i.i18.i.i.i
  %i.id = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ic, ptr noundef nonnull dereferenceable(1) %i.g) #29, !noalias !284
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.if = add nuw nsw i64 %.041149.i.i.i.i.2, 1   ; 2 uses
  %.not58.i.i.i.i.2 = icmp eq i64 %i.if, %i.hm
  br i1 %.not58.i.i.i.i.2, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.sink.split.i.i.i.i.2, label %.lr.ph.i.i.i.i.2, !llvm.loop !288

bb.aw:                                            ; preds = %bb.au
  %i.ig = call i32 @fseek(ptr noundef nonnull %i.gn, i64 noundef %i.hu, i32 noundef 0), !noalias !284
  %.not60.i.i.i.i.2 = icmp eq i32 %i.ig, 0
  br i1 %.not60.i.i.i.i.2, label %bb.z, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.sink.split.i.i.i.i.2

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.sink.split.i.i.i.i.2: ; preds = %.lr.ph.i.i.i.i.2, %bb.at, %bb.av, %bb.aw, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24, !noalias !284
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.i.i.i.i.2

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.i.i.i.i.2: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.sink.split.i.i.i.i.2, %bb.ar, %bb.aq, %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24, !noalias !284
  %i.ih = call noundef i32 @fclose(ptr noundef nonnull %i.gn), !noalias !284 ; 0 uses
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.thread.i.i.i.i.2

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.thread.i.i.i.i.2: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.i.i.i.i.2, %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.thread.i.i.i.i.1
  store ptr null, ptr %0, align 8, !tbaa !289, !alias.scope !284
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !283
  call void @llvm.experimental.noalias.scope.decl(metadata !291)
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !283
  %i.ii = load i64, ptr %i.h, align 8, !tbaa !7, !noalias !294 ; 4 uses
  %i.ij = icmp eq i64 %i.ii, 0
  br i1 %i.ij, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i48.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i29.i.i.i

bb.ax:                                            ; preds = %bb.z
  %i.ik = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24, !noalias !284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24, !noalias !284
  %i.il = call noundef i32 @fclose(ptr noundef nonnull %.lcssa89), !noalias !284 ; 0 uses
  br label %common.resume.i.i.i

bb.ay:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i.i.i, %bb.ae
  %i.im = phi i64 [ %i.el, %bb.ae ], [ %.pre.i22.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i.i.i ]
  %i.in = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  store i64 %i.im, ptr %i.in, align 8, !tbaa !7, !noalias !284
  store ptr %i.dr, ptr %0, align 8, !tbaa !148, !alias.scope !284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24, !noalias !284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24, !noalias !284
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !283
  br label %"_ZSt10__invoke_rISt10unique_ptrIN4absl12lts_2025051213time_internal4cctz14ZoneInfoSourceESt14default_deleteIS5_EERZNS4_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i29.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.thread.i.i.i.i.2
  %spec.select.i.i.i30.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ii, i64 5)
  %i.io = load ptr, ptr %2, align 8, !tbaa !17, !noalias !294
  %bcmp.i31.i.i.i = call i32 @bcmp(ptr %i.io, ptr nonnull @.str.10, i64 %spec.select.i.i.i30.i.i.i), !noalias !294
  %.not.i.i32.i.i.i = icmp eq i32 %bcmp.i31.i.i.i, 0
  br i1 %.not.i.i32.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i48.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i33.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i48.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i29.i.i.i, %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.thread.i.i.i.i.2
  %.inv.i49.i.i.i = icmp ult i64 %i.ii, 5
  %i.ip = select i1 %.inv.i49.i.i.i, i64 0, i64 5
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i33.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i33.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i48.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i29.i.i.i
  %.0.i.i34.i.i.i = phi i64 [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i29.i.i.i ], [ %i.ip, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i48.i.i.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24, !noalias !294
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @constinit.27, i64 32, i1 false), !tbaa.struct !295, !noalias !294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24, !noalias !294
  store ptr @.str.21, ptr %i.d, align 8, !tbaa !296, !noalias !294
  %.not.i35.i.i.i = icmp eq i64 %.0.i.i34.i.i.i, %i.ii
  br i1 %.not.i35.i.i.i, label %.lr.ph.i36.i.i.i, label %bb.az

bb.az:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i33.i.i.i
  %i.iq = load ptr, ptr %2, align 8, !tbaa !17, !noalias !294
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 %.0.i.i34.i.i.i
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !33, !noalias !294
  %i.it = icmp eq i8 %i.is, 47                    ; 2 uses
  %i.iu = select i1 %i.it, ptr %i.d, ptr %i.c
  %i.iv = select i1 %i.it, i64 8, i64 32
  br label %.lr.ph.i36.i.i.i

.lr.ph.i36.i.i.i:                                 ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i33.i.i.i
  %.sroa.6.0.copyload.i.i.i.i = phi i64 [ 32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i33.i.i.i ], [ %i.iv, %bb.az ]
  %.sroa.0101.0.copyload.i.i.i.i = phi ptr [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i33.i.i.i ], [ %i.iu, %bb.az ] ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.0101.0.copyload.i.i.i.i, i64 %.sroa.6.0.copyload.i.i.i.i
  %i.ix = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i92.i.i.i.i, %.lr.ph.i36.i.i.i
  %.0131.i.i.i.i = phi ptr [ %.sroa.0101.0.copyload.i.i.i.i, %.lr.ph.i36.i.i.i ], [ %i.oo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i92.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !294
  %i.jb = load ptr, ptr %.0131.i.i.i.i, align 8, !tbaa !296, !noalias !294 ; 4 uses
  store ptr %i.ix, ptr %3, align 8, !tbaa !47, !noalias !294
  %i.jc = icmp eq ptr %i.jb, null
  br i1 %i.jc, label %.noexc.i47.i.i.i, label %bb.bb

.noexc.i47.i.i.i:                                 ; preds = %bb.ba
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.22) #25, !noalias !294
  unreachable

bb.bb:                                            ; preds = %bb.ba
  %i.jd = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jb) #24, !noalias !294 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24, !noalias !294
  store i64 %i.jd, ptr %i.b, align 8, !tbaa !72, !noalias !294
  %i.je = icmp ugt i64 %i.jd, 15
  br i1 %i.je, label %.noexc.i.i46.i.i.i, label %._crit_edge.i.i.i37.i.i.i

.noexc.i.i46.i.i.i:                               ; preds = %bb.bb
  %i.jf = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0), !noalias !294 ; 2 uses
  store ptr %i.jf, ptr %3, align 8, !tbaa !17, !noalias !294
  %i.jg = load i64, ptr %i.b, align 8, !tbaa !72, !noalias !294
  store i64 %i.jg, ptr %i.ix, align 8, !tbaa !33, !noalias !294
  br label %._crit_edge.i.i.i37.i.i.i

._crit_edge.i.i.i37.i.i.i:                        ; preds = %.noexc.i.i46.i.i.i, %bb.bb
  %i.jh = phi ptr [ %i.jf, %.noexc.i.i46.i.i.i ], [ %i.ix, %bb.bb ] ; 2 uses
  switch i64 %i.jd, label %bb.bd [
    i64 1, label %bb.bc
    i64 0, label %bb.be
  ]

bb.bc:                                            ; preds = %._crit_edge.i.i.i37.i.i.i
  %i.ji = load i8, ptr %i.jb, align 1, !tbaa !33, !noalias !294
  store i8 %i.ji, ptr %i.jh, align 1, !tbaa !33, !noalias !294
  br label %bb.be

bb.bd:                                            ; preds = %._crit_edge.i.i.i37.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jh, ptr nonnull align 1 %i.jb, i64 %i.jd, i1 false), !noalias !294
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %._crit_edge.i.i.i37.i.i.i
  %i.jj = load i64, ptr %i.b, align 8, !tbaa !72, !noalias !294 ; 2 uses
  store i64 %i.jj, ptr %i.iy, align 8, !tbaa !7, !noalias !294
  %i.jk = load ptr, ptr %3, align 8, !tbaa !17, !noalias !294
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jj
  store i8 0, ptr %i.jl, align 1, !tbaa !33, !noalias !294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !294
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !294
  store ptr %i.iz, ptr %4, align 8, !tbaa !47, !noalias !294
  %i.jm = load ptr, ptr %3, align 8, !tbaa !17, !noalias !294 ; 2 uses
  %i.jn = load i64, ptr %i.iy, align 8, !tbaa !7, !noalias !294 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !294
  store i64 %i.jn, ptr %i.a, align 8, !tbaa !72, !noalias !294
  %i.jo = icmp ugt i64 %i.jn, 15
  br i1 %i.jo, label %.noexc.i43.i.i.i.i, label %._crit_edge.i.i42.i.i.i.i

.noexc.i43.i.i.i.i:                               ; preds = %bb.be
  %i.jp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc44.i.i.i.i unwind label %bb.bj, !noalias !294 ; 2 uses

.noexc44.i.i.i.i:                                 ; preds = %.noexc.i43.i.i.i.i
  store ptr %i.jp, ptr %4, align 8, !tbaa !17, !noalias !294
  %i.jq = load i64, ptr %i.a, align 8, !tbaa !72, !noalias !294
  store i64 %i.jq, ptr %i.iz, align 8, !tbaa !33, !noalias !294
  br label %._crit_edge.i.i42.i.i.i.i

._crit_edge.i.i42.i.i.i.i:                        ; preds = %.noexc44.i.i.i.i, %bb.be
  %i.jr = phi ptr [ %i.jp, %.noexc44.i.i.i.i ], [ %i.iz, %bb.be ] ; 2 uses
  switch i64 %i.jn, label %bb.bg [
    i64 1, label %bb.bf
    i64 0, label %bb.bh
  ]

bb.bf:                                            ; preds = %._crit_edge.i.i42.i.i.i.i
  %i.js = load i8, ptr %i.jm, align 1, !tbaa !33, !noalias !294
  store i8 %i.js, ptr %i.jr, align 1, !tbaa !33, !noalias !294
  br label %bb.bh

bb.bg:                                            ; preds = %._crit_edge.i.i42.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jr, ptr align 1 %i.jm, i64 %i.jn, i1 false), !noalias !294
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %._crit_edge.i.i42.i.i.i.i
  %i.jt = load i64, ptr %i.a, align 8, !tbaa !72, !noalias !294 ; 2 uses
  store i64 %i.jt, ptr %i.ja, align 8, !tbaa !7, !noalias !294
  %i.ju = load ptr, ptr %4, align 8, !tbaa !17, !noalias !294
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.jt
  store i8 0, ptr %i.jv, align 1, !tbaa !33, !noalias !294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !294
  %i.jw = load i64, ptr %i.iy, align 8, !tbaa !7, !noalias !294
  %i.jx = icmp eq i64 %i.jw, 0
  br i1 %i.jx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i39.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jy = load i64, ptr %i.ja, align 8, !tbaa !7, !noalias !294
  %i.jz = add i64 %i.jy, -4611686018427387889
  %i.ka = icmp ult i64 %i.jz, 15
  br i1 %i.ka, label %.invoke.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i38.i.i.i

.invoke.i.i.i.i:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i40.i.i.i, %bb.bi
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #25
          to label %.cont.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !294

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i38.i.i.i: ; preds = %bb.bi
  %i.kb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.28, i64 noundef 15)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i39.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !294 ; 0 uses

bb.bj:                                            ; preds = %.noexc.i43.i.i.i.i
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i.i.i.i
end_hunk_0
