Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/feather?download=true
inline.NumInlined: 2868
inline.NumDeleted: 1221
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV24ReadERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEPSt10shared_ptrINS_5TableEE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.m:                                             ; preds = %bb.i
  %.not.i = icmp eq ptr %i.q, %i.p
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %i.af, ptr %i.q, align 4, !tbaa !31
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  store ptr %i.at, ptr %i.j, align 8, !tbaa !209
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.o:                                             ; preds = %bb.m
  %i.au = ptrtoint ptr %i.p to i64
  %i.av = ptrtoint ptr %i.o to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 6 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775804
  br i1 %i.ax, label %bb.p, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #28
          to label %.noexc23 unwind label %.loopexit.split-lp37

.noexc23:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %i.ay = ashr exact i64 %i.aw, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.az = add nsw i64 %.sroa.speculated.i.i.i, %i.ay ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  %i.bb = call i64 @llvm.umin.i64(i64 %i.az, i64 2305843009213693951)
  %i.bc = select i1 %i.ba, i64 2305843009213693951, i64 %i.bb ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bc, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bd = shl nuw nsw i64 %i.bc, 2
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #26
          to label %.noexc24 unwind label %.loopexit36 ; 5 uses

.noexc24:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %i.aw ; 2 uses
  store i32 %i.af, ptr %i.bf, align 4, !tbaa !31
  %i.bg = icmp sgt i64 %i.aw, 0
  br i1 %i.bg, label %bb.q, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.q:                                             ; preds = %.noexc24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.be, ptr align 4 %i.o, i64 %i.aw, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.q, %.noexc24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.aw) #25
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.be, ptr %5, align 8, !tbaa !54
  store ptr %i.bh, ptr %i.j, align 8, !tbaa !209
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bc ; 2 uses
  store ptr %i.bi, ptr %i.k, align 8, !tbaa !55
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.n, %_ZN5arrow6Status7InvalidIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEES0_DpOT_.exit
  %i.bj = phi ptr [ %i.be, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.o, %bb.n ], [ %i.o, %_ZN5arrow6Status7InvalidIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEES0_DpOT_.exit ]
  %i.bk = phi ptr [ %i.bi, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.p, %bb.n ], [ %i.p, %_ZN5arrow6Status7InvalidIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEES0_DpOT_.exit ]
  %i.bl = phi ptr [ %i.bh, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.at, %bb.n ], [ %i.q, %_ZN5arrow6Status7InvalidIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEES0_DpOT_.exit ]
  %i.bm = load ptr, ptr %7, align 8, !tbaa !111   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.h
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.bo = load i64, ptr %i.h, align 8, !tbaa !88
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br i1 %.not, label %.loopexit41, label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.aa

.critedge:                                        ; preds = %bb.b, %bb.a
  %i.bq = load ptr, ptr %1, align 8, !tbaa !62
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bs = load ptr, ptr %i.br, align 8
  invoke void %i.bs(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %3)
          to label %.loopexit41 unwind label %bb.s

bb.s:                                             ; preds = %.critedge
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit41:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %.critedge
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !84 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %.loopexit41
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 4 uses
  %i.bx = load atomic i64, ptr %i.bw acquire, align 8 ; 2 uses
  %i.by = icmp eq i64 %i.bx, 4294967297
  %i.bz = trunc i64 %i.bx to i32                  ; 2 uses
  br i1 %i.by, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.bw, align 8, !tbaa !86
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  store i32 0, ptr %i.ca, align 4, !tbaa !87
  %i.cb = load ptr, ptr %i.bv, align 8, !tbaa !62
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #24, !inline_history !13
  %i.ce = load ptr, ptr %i.bv, align 8, !tbaa !62
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #24, !inline_history !13
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.v:                                             ; preds = %bb.t
  %i.ch = load i8, ptr @__libc_single_threaded, align 1, !tbaa !88
  %.not.i.i.i28 = icmp eq i8 %i.ch, 0
  br i1 %.not.i.i.i28, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ci = add nsw i32 %i.bz, -1
  store i32 %i.ci, ptr %i.bw, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.cj = atomicrmw volatile add ptr %i.bw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i = phi i32 [ %i.bz, %bb.w ], [ %i.cj, %bb.x ]
  %i.ck = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ck, label %bb.y, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !89

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #24
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.loopexit41, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.cl = load ptr, ptr %5, align 8, !tbaa !54    ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !55
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cl to i64
  %i.cq = sub i64 %i.co, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cq) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.s
  %.pn17 = phi { ptr, i32 } [ %i.bt, %bb.s ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #24
  %.pre = load ptr, ptr %5, align 8, !tbaa !54    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %.not.i.i.i30 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIiSaIiEED2Ev.exit31, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !55
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %.pre to i64
  %i.cv = sub i64 %i.ct, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cv) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit31

_ZNSt6vectorIiSaIiEED2Ev.exit31:                  ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %.pn17
}

declare noundef ptr @_ZN5arrow19default_memory_poolEv() local_unnamed_addr #3

declare void @_ZN5arrow2io12CacheOptions12LazyDefaultsEv(ptr dead_on_unwind writable sret(%"struct.arrow::io::CacheOptions") align 8) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV24ReadERKNS0_14IpcReadOptionsEPSt10shared_ptrINS_5TableEE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr nofree noundef captures(none) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Result.87", align 8  ; 13 uses
  %5 = alloca %"class.std::shared_ptr.91", align 16 ; 7 uses
  %6 = alloca %"class.std::vector.295", align 8   ; 12 uses
  %7 = alloca %"class.arrow::Result.300", align 8 ; 12 uses
  %8 = alloca %"class.arrow::Result.307", align 8 ; 13 uses
  %9 = alloca %"class.std::shared_ptr.28", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN5arrow3ipc21RecordBatchFileReader4OpenERKSt10shared_ptrINS_2io16RandomAccessFileEERKNS0_14IpcReadOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.87") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %2)
  %i.b = load ptr, ptr %4, align 8, !tbaa !65
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b, !prof !66

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !65
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !977)
  call void @llvm.experimental.noalias.scope.decl(metadata !978)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = load <2 x ptr>, ptr %i.e, align 8, !tbaa !80, !noalias !979
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !127, !noalias !979 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !84, !noalias !979
  store <2 x ptr> %i.h, ptr %5, align 16, !tbaa !80, !alias.scope !979
  store ptr null, ptr %i.e, align 8, !tbaa !127, !noalias !979
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.e unwind label %bb.j       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = icmp slt i32 %i.m, 0
  br i1 %i.o, label %bb.f, label %_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #28
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.p = shl nuw nsw i64 %i.n, 4                  ; 3 uses
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #26
          to label %.noexc40 unwind label %bb.k   ; 4 uses

.noexc40:                                         ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.q, ptr %6, align 8, !tbaa !249
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.n
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.q, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.q, i64 %i.p
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i, %.noexc40
  %.sink.i = phi ptr [ %i.r, %.noexc40 ], [ null, %_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.noexc40 ], [ null, %_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %.sink.i, ptr %i.t, align 8, !tbaa !250
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.s, align 8, !tbaa !251
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.h

bb.h:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit ], [ 0, %bb.g ] ; 4 uses
  %i.w = load ptr, ptr %5, align 16, !tbaa !127   ; 6 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = invoke noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ab = sext i32 %i.aa to i64
  %.not = icmp slt i64 %indvars.iv, %i.ab
  br i1 %.not, label %bb.m, label %.critedge

bb.j:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.k:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.l:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !62
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = trunc nuw nsw i64 %indvars.iv to i32
  invoke void %i.ah(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.300") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i32 noundef %i.ai)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.aj = load ptr, ptr %7, align 8, !tbaa !65
  %i.ak = icmp eq ptr %i.aj, null                 ; 2 uses
  br i1 %i.ak, label %bb.r, label %bb.o, !prof !66

bb.o:                                             ; preds = %bb.n
  store ptr null, ptr %0, align 8, !tbaa !65
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZN5arrow6StatusC2ERKS0_.exit42 unwind label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.q:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.bw

bb.r:                                             ; preds = %bb.n
  %i.an = load <2 x ptr>, ptr %i.u, align 8, !tbaa !80, !noalias !980
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.ao = load ptr, ptr %6, align 8, !tbaa !249
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %indvars.iv ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !84 ; 8 uses
  store <2 x ptr> %i.an, ptr %i.ap, align 8, !tbaa !80
  %.not.i.i.i.i43 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i43, label %_ZN5arrow6StatusC2ERKS0_.exit42, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.as, align 8, !tbaa !86
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !87
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !62
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #24, !inline_history !963
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !62
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #24, !inline_history !963
  br label %_ZN5arrow6StatusC2ERKS0_.exit42

bb.u:                                             ; preds = %bb.s
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !88
  %.not.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i = phi i32 [ %i.av, %bb.v ], [ %i.bf, %bb.w ]
  %i.bg = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bg, label %bb.x, label %_ZN5arrow6StatusC2ERKS0_.exit42, !prof !89

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #24
  br label %_ZN5arrow6StatusC2ERKS0_.exit42

_ZN5arrow6StatusC2ERKS0_.exit42:                  ; preds = %bb.r, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.x, %bb.o
  %i.bh = load ptr, ptr %7, align 8, !tbaa !65    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.y, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread.i, !prof !66

bb.y:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit42
  %i.bj = load ptr, ptr %i.v, align 8, !tbaa !84  ; 8 uses
  %.not.i.i.i.i.i44 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i44, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 4294967297
  %i.bn = trunc i64 %i.bl to i32                  ; 2 uses
  br i1 %i.bm, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.bk, align 8, !tbaa !86
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bo, align 4, !tbaa !87
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !62
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #24, !inline_history !964
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !62
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #24, !inline_history !964
  br label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i

bb.ab:                                            ; preds = %bb.z
  %i.bv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !88
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bw = add nsw i32 %i.bn, -1
  store i32 %i.bw, ptr %i.bk, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.bx = atomicrmw volatile add ptr %i.bk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bn, %bb.ac ], [ %i.bx, %bb.ad ]
  %i.by = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.by, label %bb.ae, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i, !prof !89

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #24
  br label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i: ; preds = %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.aa
  %.pr.i.pr = load ptr, ptr %7, align 8, !tbaa !65 ; 2 uses
  %.not.i.i45 = icmp eq ptr %.pr.i.pr, null
  br i1 %.not.i.i45, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread.i, !prof !123

_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit42
  %i.bz = phi ptr [ %.pr.i.pr, %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i ], [ %i.bh, %_ZN5arrow6StatusC2ERKS0_.exit42 ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !77, !range !78, !noundef !79
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #24
  br label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit: ; preds = %bb.y, %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.ak, label %bb.h, label %.loopexit, !llvm.loop !965

.critedge:                                        ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
end_hunk_0
