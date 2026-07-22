inline.NumInlined: 3049
inline.NumDeleted: 1644
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK5arrow7compute8internal12_GLOBAL__N_120DropNullMetaFunction11ExecuteImplERKSt6vectorINS_5DatumESaIS5_EEPKNS0_15FunctionOptionsEPNS0_11ExecContextE:bb.a
  %.pr.i60.i = load ptr, ptr %9, align 8, !tbaa !890, !noalias !848
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, %.loopexit69.i
  %i.mq = phi ptr [ %.pr.i60.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.lw, %.loopexit69.i ] ; 3 uses
  %.not.i.i1.i.i27 = icmp eq ptr %i.mq, null
  br i1 %.not.i.i1.i.i27, label %_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EED2Ev.exit.i, label %bb.ev

bb.ev:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.mr = load ptr, ptr %i.hk, align 8, !tbaa !884, !noalias !848
  %i.ms = ptrtoint ptr %i.mr to i64
  %i.mt = ptrtoint ptr %i.mq to i64
  %i.mu = sub i64 %i.ms, %i.mt
  call void @_ZdlPvm(ptr noundef nonnull %i.mq, i64 noundef %i.mu) #24
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EED2Ev.exit.i: ; preds = %bb.ev, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !848
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_113DropNullTableERKSt10shared_ptrINS_5TableEEPNS0_11ExecContextE.exit

bb.ew:                                            ; preds = %bb.eo, %bb.dv, %bb.cl
  %.pn36.i = phi { ptr, i32 } [ %i.lv, %bb.eo ], [ %.pn.pn.i32, %bb.dv ], [ %i.ho, %bb.cl ]
  call void @_ZN5arrow16TableBatchReaderD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %10) #23
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ck
  %.pn36.pn.i = phi { ptr, i32 } [ %.pn36.i, %bb.ew ], [ %i.hn, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23, !noalias !848
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !848
  br label %common.resume

_ZN5arrow7compute8internal12_GLOBAL__N_113DropNullTableERKSt10shared_ptrINS_5TableEEPNS0_11ExecContextE.exit: ; preds = %bb.ce, %._crit_edge78.thread.i, %_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  br label %bb.fe

bb.ey:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  call void @_ZNK5arrow5Datum8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !893
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !898
  invoke void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc51 unwind label %bb.fd

.noexc51:                                         ; preds = %bb.ey
  %i.mv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !674, !noalias !898, !nonnull !149, !align !684 ; 2 uses
  %i.mx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mw, ptr noundef nonnull align 1 dereferenceable(51) @.str.38, i64 noundef 50)
          to label %.noexc.i50 unwind label %bb.ez, !noalias !898 ; 0 uses

.noexc.i50:                                       ; preds = %.noexc51
  %i.my = load ptr, ptr %28, align 8, !tbaa !13, !noalias !898
  %i.mz = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.na = load i64, ptr %i.mz, align 8, !tbaa !16, !noalias !898
  %i.nb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mw, ptr noundef %i.my, i64 noundef %i.na)
          to label %_ZN5arrow4util22StringBuilderRecursiveIRA51_KcJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRSoOT_DpOT0_.exit.i unwind label %bb.ez, !noalias !898 ; 0 uses

_ZN5arrow4util22StringBuilderRecursiveIRA51_KcJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRSoOT_DpOT0_.exit.i: ; preds = %.noexc.i50
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc unwind label %bb.ez

bb.ez:                                            ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA51_KcJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRSoOT_DpOT0_.exit.i, %.noexc.i50, %.noexc51
  %i.nc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !898
  br label %.body

.noexc:                                           ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA51_KcJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRSoOT_DpOT0_.exit.i
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !898
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %27, i8 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.fa unwind label %bb.fb

bb.fa:                                            ; preds = %.noexc
  %i.nd = load ptr, ptr %6, align 8, !tbaa !13, !noalias !893 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.nf = icmp eq ptr %i.nd, %i.ne
  br i1 %i.nf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.fa
  %i.ng = load i64, ptr %i.ne, align 8, !tbaa !15, !noalias !893
  %i.nh = add i64 %i.ng, 1
  call void @_ZdlPvm(ptr noundef %i.nd, i64 noundef %i.nh) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.fb:                                            ; preds = %.noexc
  %i.ni = landingpad { ptr, i32 }
          cleanup
  %i.nj = load ptr, ptr %6, align 8, !tbaa !13, !noalias !893 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.nl = icmp eq ptr %i.nj, %i.nk
  br i1 %i.nl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.fb
  %i.nm = load i64, ptr %i.nk, align 8, !tbaa !15, !noalias !893
  %i.nn = add i64 %i.nm, 1
  call void @_ZdlPvm(ptr noundef %i.nj, i64 noundef %i.nn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.fb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !893
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.fa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !893
  call void @_ZN5arrow6ResultINS_5DatumEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %27) #23
  %i.no = load ptr, ptr %27, align 8, !tbaa !49
  %.not.i46 = icmp eq ptr %i.no, null
  br i1 %.not.i46, label %_ZN5arrow6StatusD2Ev.exit, label %bb.fc, !prof !52

bb.fc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %27)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %bb.fc
  %i.np = load ptr, ptr %28, align 8, !tbaa !13   ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.nr = icmp eq ptr %i.np, %i.nq
  br i1 %i.nr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.ns = load i64, ptr %i.nq, align 8, !tbaa !15
  %i.nt = add i64 %i.ns, 1
  call void @_ZdlPvm(ptr noundef %i.np, i64 noundef %i.nt) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  br label %bb.fe

bb.fd:                                            ; preds = %bb.ey
  %i.nu = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.fd, %bb.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ni, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ], [ %i.nu, %bb.fd ], [ %i.nc, %bb.ez ]
  %i.nv = load ptr, ptr %28, align 8, !tbaa !13   ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.nx = icmp eq ptr %i.nv, %i.nw
  br i1 %i.nx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %.body
  %i.ny = load i64, ptr %i.nw, align 8, !tbaa !15
  %i.nz = add i64 %i.ny, 1
  call void @_ZdlPvm(ptr noundef %i.nv, i64 noundef %i.nz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  br label %common.resume

bb.fe:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN5arrow7compute8internal12_GLOBAL__N_113DropNullTableERKSt10shared_ptrINS_5TableEEPNS0_11ExecContextE.exit, %_ZNK5arrow5Datum12record_batchEv.exit, %_ZN5arrow7compute8internal12_GLOBAL__N_120DropNullChunkedArrayERKSt10shared_ptrINS_12ChunkedArrayEEPNS0_11ExecContextE.exit, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow7compute8internal12_GLOBAL__N_113DropNullArrayERKSt10shared_ptrINS_5ArrayEEPNS0_11ExecContextE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.360, align 1            ; 3 uses
  %4 = alloca %class.anon.360, align 1            ; 3 uses
  %5 = alloca %"class.std::shared_ptr.346", align 16 ; 7 uses
  %6 = alloca %"class.std::allocator.67", align 1 ; 3 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %7 = alloca %"class.arrow::Result.422", align 8 ; 9 uses
  %8 = alloca %"class.std::shared_ptr.46", align 16 ; 4 uses
  %9 = alloca %"class.std::shared_ptr.426", align 8 ; 5 uses
  %10 = alloca %"struct.arrow::Datum", align 8    ; 7 uses
  %11 = alloca %"class.std::shared_ptr.429", align 16 ; 6 uses
  %12 = alloca %"struct.arrow::Datum", align 8    ; 7 uses
  %13 = alloca %"class.arrow::compute::FilterOptions", align 8 ; 5 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !217
  %i.f = tail call noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !49
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN5arrow5DatumC1ERKSt10shared_ptrINS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN5arrow6ResultINS_5DatumEEC2IRKSt10shared_ptrINS_5ArrayEEvEEOT_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #25
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %1, align 8, !tbaa !217
  %i.l = tail call noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(32) %i.k)
  %i.m = load ptr, ptr %1, align 8, !tbaa !217
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !220  ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !901  ; 2 uses
  %i.r = icmp eq i64 %i.l, %i.q
  br i1 %i.r, label %bb.e, label %bb.x

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !53   ; 2 uses
  %i.v = load <2 x ptr>, ptr %i.o, align 8, !tbaa !47
  store <2 x ptr> %i.v, ptr %8, align 16, !tbaa !47
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load i32, ptr %i.w, align 4, !tbaa !3
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.w, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.h:                                             ; preds = %bb.f
  %i.aa = atomicrmw volatile add ptr %i.w, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.e, %bb.g, %bb.h
  %i.ab = load ptr, ptr %2, align 8, !tbaa !825
  invoke void @_ZN5arrow14MakeEmptyArrayESt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.422") align 8 %7, ptr noundef nonnull %8, ptr noundef %i.ab)
          to label %bb.i unwind label %bb.w

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  call void @_ZN5arrow6ResultINS_5DatumEEC2ISt10shared_ptrINS_5ArrayEEvEEONS0_IT_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %7) #23
  %i.ac = load ptr, ptr %7, align 8, !tbaa !49
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.j, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !52

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !53 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4294967297
  %i.aj = trunc i64 %i.ah to i32                  ; 2 uses
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ag, align 8, !tbaa !54
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !56
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !57
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #23, !inline_history !917
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !57
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #23, !inline_history !917
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = add nsw i32 %i.aj, -1
  store i32 %i.as, ptr %i.ag, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.at = atomicrmw volatile add ptr %i.ag, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.aj, %bb.n ], [ %i.at, %bb.o ]
  %i.au = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.au, label %bb.p, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, !prof !60

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #23
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.l, %bb.j
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !49
  %.not.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !613

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %bb.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %7)
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i
  %i.av = load ptr, ptr %i.s, align 8, !tbaa !53  ; 8 uses
  %.not.i.i20 = icmp eq ptr %i.av, null
  br i1 %.not.i.i20, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 4 uses
  %i.ax = load atomic i64, ptr %i.aw acquire, align 8 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 4294967297
  %i.az = trunc i64 %i.ax to i32                  ; 2 uses
  br i1 %i.ay, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.aw, align 8, !tbaa !54
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i32 0, ptr %i.ba, align 4, !tbaa !56
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !57
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #23, !inline_history !240
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !57
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #23, !inline_history !240
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i.i21 = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i21, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bi = add nsw i32 %i.az, -1
  store i32 %i.bi, ptr %i.aw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bj = atomicrmw volatile add ptr %i.aw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i = phi i32 [ %i.az, %bb.t ], [ %i.bj, %bb.u ]
  %i.bk = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bk, label %bb.v, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !60

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #23
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %_ZN5arrow6ResultINS_5DatumEEC2IRKSt10shared_ptrINS_5ArrayEEvEEOT_.exit

bb.w:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %common.resume

bb.x:                                             ; preds = %bb.d
  %i.bm = load ptr, ptr %i.o, align 8, !tbaa !107
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !301
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.y, label %bb.af

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !918)
  %i.bq = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26, !noalias !918 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i32 1, ptr %i.br, align 8, !tbaa !54, !noalias !918
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 1, ptr %i.bs, align 4, !tbaa !56, !noalias !918
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow9NullArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bq, align 8, !tbaa !57, !noalias !918
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  invoke void @_ZN5arrow9NullArrayC1El(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, i64 noundef 0)
          to label %_ZSt11make_sharedIN5arrow9NullArrayEJiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow9NullArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !918

common.resume:                                    ; preds = %bb.w, %bb.bd, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow9NullArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.bu, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow9NullArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ], [ %i.bl, %bb.w ], [ %.pn.pn.pn, %bb.bd ]
  resume { ptr, i32 } %common.resume.op

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow9NullArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %bb.y
  %i.bu = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef 48) #24, !noalias !918
  br label %common.resume

_ZSt11make_sharedIN5arrow9NullArrayEJiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_.exit: ; preds = %bb.y
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %i.bq, ptr %i.bv, align 8, !tbaa !53, !alias.scope !918
  store ptr %i.bt, ptr %9, align 8, !tbaa !921, !alias.scope !918
  store ptr null, ptr %0, align 8, !tbaa !49
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5arrow8internal14AlignedStorageINS_5DatumEE9constructIJSt10shared_ptrINS_9NullArrayEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %9) #23
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !53 ; 8 uses
  %.not.i.i22 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i22, label %_ZNSt12__shared_ptrIN5arrow9NullArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZSt11make_sharedIN5arrow9NullArrayEJiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_.exit
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 4 uses
  %i.bz = load atomic i64, ptr %i.by acquire, align 8 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 4294967297
  %i.cb = trunc i64 %i.bz to i32                  ; 2 uses
  br i1 %i.ca, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.by, align 8, !tbaa !54
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  store i32 0, ptr %i.cc, align 4, !tbaa !56
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !57
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #23, !inline_history !923
  %i.cg = load ptr, ptr %i.bx, align 8, !tbaa !57
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #23, !inline_history !923
  br label %_ZNSt12__shared_ptrIN5arrow9NullArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ab:                                            ; preds = %bb.z
  %i.cj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i.i23 = icmp eq i8 %i.cj, 0
  br i1 %.not.i.i.i23, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ck = add nsw i32 %i.cb, -1
  store i32 %i.ck, ptr %i.by, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24

bb.ad:                                            ; preds = %bb.ab
  %i.cl = atomicrmw volatile add ptr %i.by, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i25 = phi i32 [ %i.cb, %bb.ac ], [ %i.cl, %bb.ad ]
  %i.cm = icmp eq i32 %.0.i.i.i.i25, 1
  br i1 %i.cm, label %bb.ae, label %_ZNSt12__shared_ptrIN5arrow9NullArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !60

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #23
  br label %_ZNSt12__shared_ptrIN5arrow9NullArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9NullArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZSt11make_sharedIN5arrow9NullArrayEJiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_.exit, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %_ZN5arrow6ResultINS_5DatumEEC2IRKSt10shared_ptrINS_5ArrayEEvEEOT_.exit

bb.af:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !924)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !601, !noalias !924
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !924
  store i64 %i.q, ptr %i.a, align 8, !tbaa !11, !noalias !924
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23, !noalias !924
  store ptr null, ptr %i.b, align 8, !tbaa !927, !noalias !924
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23, !noalias !924
  store i32 0, ptr %i.c, align 4, !tbaa !3, !noalias !924
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23, !noalias !924
  %i.cp = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !929, !noalias !924
  store i64 %i.cq, ptr %i.d, align 8, !tbaa !11, !noalias !924
  tail call void @llvm.experimental.noalias.scope.decl(metadata !930)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !933
  store ptr null, ptr %11, align 16, !tbaa !934, !alias.scope !933
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow12BooleanArrayESaIvEJlRKSt10shared_ptrINS4_6BufferEEDnilEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr nonnull %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23, !noalias !924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23, !noalias !924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23, !noalias !924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !924
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.cs = load <2 x ptr>, ptr %11, align 16, !tbaa !47
  store ptr null, ptr %i.cr, align 8, !tbaa !53
  store <2 x ptr> %i.cs, ptr %5, align 16, !tbaa !47
  store ptr null, ptr %11, align 16, !tbaa !934
  invoke void @_ZN5arrow5DatumC2ERKSt10shared_ptrINS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.ag unwind label %.body

bb.ag:                                            ; preds = %bb.af
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !53 ; 8 uses
  %.not.i.i.i26 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i26, label %bb.an, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 4 uses
  %i.cw = load atomic i64, ptr %i.cv acquire, align 8 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 4294967297
  %i.cy = trunc i64 %i.cw to i32                  ; 2 uses
  br i1 %i.cx, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.cv, align 8, !tbaa !54
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  store i32 0, ptr %i.cz, align 4, !tbaa !56
  %i.da = load ptr, ptr %i.cu, align 8, !tbaa !57
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #23, !inline_history !937
  %i.dd = load ptr, ptr %i.cu, align 8, !tbaa !57
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #23, !inline_history !937
  br label %bb.an

bb.aj:                                            ; preds = %bb.ah
  %i.dg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i.i.i27 = icmp eq i8 %i.dg, 0
  br i1 %.not.i.i.i.i27, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dh = add nsw i32 %i.cy, -1
  store i32 %i.dh, ptr %i.cv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.di = atomicrmw volatile add ptr %i.cv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i.i = phi i32 [ %i.cy, %bb.ak ], [ %i.di, %bb.al ]
  %i.dj = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.dj, label %bb.am, label %bb.an, !prof !60

bb.am:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #23
  br label %bb.an

.body:                                            ; preds = %bb.af
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZNSt12__shared_ptrIN5arrow12BooleanArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #23
  br label %bb.bd

bb.an:                                            ; preds = %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ai, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.dl = load ptr, ptr %i.cr, align 8, !tbaa !53 ; 8 uses
  %.not.i.i28 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i28, label %_ZNSt12__shared_ptrIN5arrow12BooleanArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 4 uses
  %i.dn = load atomic i64, ptr %i.dm acquire, align 8 ; 2 uses
  %i.do = icmp eq i64 %i.dn, 4294967297
  %i.dp = trunc i64 %i.dn to i32                  ; 2 uses
  br i1 %i.do, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.dm, align 8, !tbaa !54
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  store i32 0, ptr %i.dq, align 4, !tbaa !56
  %i.dr = load ptr, ptr %i.dl, align 8, !tbaa !57
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #23, !inline_history !938
  %i.du = load ptr, ptr %i.dl, align 8, !tbaa !57
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #23, !inline_history !938
  br label %_ZNSt12__shared_ptrIN5arrow12BooleanArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aq:                                            ; preds = %bb.ao
  %i.dx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i.i29 = icmp eq i8 %i.dx, 0
  br i1 %.not.i.i.i29, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dy = add nsw i32 %i.dp, -1
  store i32 %i.dy, ptr %i.dm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i30

bb.as:                                            ; preds = %bb.aq
  %i.dz = atomicrmw volatile add ptr %i.dm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i30

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i30: ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i31 = phi i32 [ %i.dp, %bb.ar ], [ %i.dz, %bb.as ]
  %i.ea = icmp eq i32 %.0.i.i.i.i31, 1
  br i1 %i.ea, label %bb.at, label %_ZNSt12__shared_ptrIN5arrow12BooleanArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !60

bb.at:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i30
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #23
  br label %_ZNSt12__shared_ptrIN5arrow12BooleanArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12BooleanArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.an, %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i30, %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  invoke void @_ZN5arrow5DatumC1ERKSt10shared_ptrINS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.au unwind label %bb.ay

bb.au:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow12BooleanArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  invoke void @_ZN5arrow7compute13FilterOptionsC1ENS1_21NullSelectionBehaviorE(ptr noundef nonnull align 8 dereferenceable(20) %13, i32 noundef 0)
          to label %_ZN5arrow7compute13FilterOptions8DefaultsEv.exit unwind label %bb.az

_ZN5arrow7compute13FilterOptions8DefaultsEv.exit: ; preds = %bb.au
  invoke void @_ZN5arrow7compute6FilterERKNS_5DatumES3_RKNS0_13FilterOptionsEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result.72") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(20) %13, ptr noundef %2)
          to label %bb.av unwind label %bb.ba

bb.av:                                            ; preds = %_ZN5arrow7compute13FilterOptions8DefaultsEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %_ZN5arrow5DatumD2Ev.exit unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.eb = landingpad { ptr, i32 }
          catch ptr null
  %i.ec = extractvalue { ptr, i32 } %i.eb, 0
  call void @__clang_call_terminate(ptr %i.ec) #25
  unreachable

_ZN5arrow5DatumD2Ev.exit:                         ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %_ZN5arrow5DatumD2Ev.exit32 unwind label %bb.ax

bb.ax:                                            ; preds = %_ZN5arrow5DatumD2Ev.exit
  %i.ed = landingpad { ptr, i32 }
          catch ptr null
  %i.ee = extractvalue { ptr, i32 } %i.ed, 0
  call void @__clang_call_terminate(ptr %i.ee) #25
  unreachable

_ZN5arrow5DatumD2Ev.exit32:                       ; preds = %_ZN5arrow5DatumD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %_ZN5arrow6ResultINS_5DatumEEC2IRKSt10shared_ptrINS_5ArrayEEvEEOT_.exit

bb.ay:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow12BooleanArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.az:                                            ; preds = %bb.au
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ba:                                            ; preds = %_ZN5arrow7compute13FilterOptions8DefaultsEv.exit
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.pn = phi { ptr, i32 } [ %i.eh, %bb.ba ], [ %i.eg, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #23
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ay
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bb ], [ %i.ef, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #23
  br label %bb.bd
end_hunk_0
