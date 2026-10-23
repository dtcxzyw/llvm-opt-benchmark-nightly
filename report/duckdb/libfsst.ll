Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/libfsst?download=true
inline.NumInlined: 716
inline.NumDeleted: 392
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN7libfsst10makeSampleEPhPS0_PmmRN6duckdb10unique_ptrISt6vectorImSaImEESt14default_deleteIS7_ELb1EEE:bb.a
  %i.dt = icmp eq i64 %i.ds, 9223372036854775800
  br i1 %i.dt, label %bb.z, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.z:                                             ; preds = %bb.y
  store ptr %i.di, ptr %i.bp, align 8
  store ptr %i.dh, ptr %i.bq, align 8
  store ptr %i.dg, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #24
          to label %.noexc70 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc70:                                         ; preds = %bb.z
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.y
  %i.du = ashr exact i64 %i.ds, 3                 ; 3 uses
  %.sroa.speculated.i.i.i67 = tail call i64 @llvm.umax.i64(i64 %i.du, i64 1)
  %i.dv = add nsw i64 %.sroa.speculated.i.i.i67, %i.du ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %i.du
  %i.dx = tail call i64 @llvm.umin.i64(i64 %i.dv, i64 1152921504606846975)
  %i.dy = select i1 %i.dw, i64 1152921504606846975, i64 %i.dx ; 3 uses
  %.not.i.i.i68 = icmp ne i64 %i.dy, 0
  tail call void @llvm.assume(i1 %.not.i.i.i68)
  %i.dz = shl nuw nsw i64 %i.dy, 3
  %i.ea = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dz) #21
          to label %.noexc71 unwind label %.loopexit.split-lp.loopexit ; 4 uses

.noexc71:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 %i.ds ; 2 uses
  store i64 %.sroa.speculated, ptr %i.eb, align 8, !tbaa !23
  %i.ec = icmp sgt i64 %i.ds, 0
  br i1 %i.ec, label %bb.aa, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.aa:                                            ; preds = %.noexc71
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ea, ptr align 8 %i.dp, i64 %i.ds, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.aa, %.noexc71
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %.not.i17.i.i69 = icmp eq ptr %i.dp, null
  br i1 %.not.i17.i.i69, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.dp) #23
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.ab, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.ea, ptr %i.dj, align 8, !tbaa !53
  store ptr %i.ed, ptr %i.dk, align 8, !tbaa !119
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.dy
  store ptr %i.ee, ptr %i.dm, align 8, !tbaa !118
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.x
  %.085.add = add nuw nsw i64 %.sroa.speculated, %.085.idx110 ; 2 uses
  %i.ef = icmp samesign ult i64 %.085.add, 16384
  br i1 %i.ef, label %bb.q, label %.loopexit87, !llvm.loop !117

.loopexit86:                                      ; preds = %_ZNKSt6vectorIPKhSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.p, ptr %0, align 8
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIPKhSaIS1_EE12_M_check_lenEmPKc.exit.i.i57, %_ZNSt6vectorIPKhSaIS1_EE9push_backERKS1_.exit65
  %i.eg = phi ptr [ %i.dg, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i ], [ %i.bt, %_ZNKSt6vectorIPKhSaIS1_EE12_M_check_lenEmPKc.exit.i.i57 ], [ %i.dg, %_ZNSt6vectorIPKhSaIS1_EE9push_backERKS1_.exit65 ] ; 2 uses
  %i.eh = phi ptr [ %i.dh, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i ], [ %i.bs, %_ZNKSt6vectorIPKhSaIS1_EE12_M_check_lenEmPKc.exit.i.i57 ], [ %i.dh, %_ZNSt6vectorIPKhSaIS1_EE9push_backERKS1_.exit65 ]
  %i.ei = phi ptr [ %i.di, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i ], [ %i.br, %_ZNKSt6vectorIPKhSaIS1_EE12_M_check_lenEmPKc.exit.i.i57 ], [ %i.di, %_ZNSt6vectorIPKhSaIS1_EE9push_backERKS1_.exit65 ]
  %lpad.loopexit88 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ei, ptr %i.bp, align 8
  store ptr %i.eh, ptr %i.bq, align 8
  store ptr %i.eg, ptr %0, align 8
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNSt10unique_ptrISt6vectorImSaImEESt14default_deleteIS2_EED2Ev.exit, %bb.e, %bb.m, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i, %bb.h, %bb.z, %bb.t
  %i.ej = phi ptr [ null, %_ZNSt10unique_ptrISt6vectorImSaImEESt14default_deleteIS2_EED2Ev.exit ], [ %i.p, %bb.e ], [ null, %bb.m ], [ null, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i ], [ null, %bb.h ], [ %i.dg, %bb.z ], [ %i.bt, %bb.t ]
  %lpad.loopexit.split-lp89 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit86
  %i.ek = phi ptr [ %i.p, %.loopexit86 ], [ %i.eg, %.loopexit.split-lp.loopexit ], [ %i.ej, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit86 ], [ %lpad.loopexit88, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp89, %.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i72 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i72, label %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit, label %bb.ac

.loopexit87:                                      ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  store ptr %i.di, ptr %i.bp, align 8
  store ptr %i.dh, ptr %i.bq, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt6vectorIPKhSaIS1_EE9push_backERKS1_.exit, %bb.a, %.loopexit87
  %storemerge = phi ptr [ %i.dg, %.loopexit87 ], [ null, %bb.a ], [ %i.al, %_ZNSt6vectorIPKhSaIS1_EE9push_backERKS1_.exit ]
  store ptr %storemerge, ptr %0, align 8
  ret void

bb.ac:                                            ; preds = %.loopexit.split-lp
  tail call void @_ZdlPv(ptr noundef nonnull %i.ek) #23
  br label %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit

_ZNSt6vectorIPKhSaIS1_EED2Ev.exit:                ; preds = %.loopexit.split-lp, %bb.ac
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrISt6vectorImSaImEESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !50     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNKSt14default_deleteISt6vectorImSaImEEEclEPS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #23
  br label %_ZNKSt14default_deleteISt6vectorImSaImEEEclEPS2_.exit

_ZNKSt14default_deleteISt6vectorImSaImEEEclEPS2_.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #23
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt14default_deleteISt6vectorImSaImEEEclEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK6duckdb10unique_ptrISt6vectorImSaImEESt14default_deleteIS3_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.31", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !50     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrISt6vectorImSaImEESt14default_deleteIS3_ELb1EE13AssertNotNullEb.exit, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !122    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrISt6vectorImSaImEESt14default_deleteIS3_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noalias noundef nonnull ptr @duckdb_fsst_create(i64 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::unique_ptr", align 8 ; 9 uses
  %5 = alloca %"class.std::vector", align 8       ; 8 uses
  %6 = alloca %"class.std::vector", align 8       ; 8 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(32768) ptr @_Znam(i64 noundef 32768) #21 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !125
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.b = tail call i64 @llvm.umax.i64(i64 %0, i64 1)
  invoke void @_ZN7libfsst10makeSampleEPhPS0_PmmRN6duckdb10unique_ptrISt6vectorImSaImEESt14default_deleteIS7_ELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %5, ptr noundef nonnull %i.a, ptr noundef %2, ptr noundef %1, i64 noundef %i.b, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.b unwind label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noalias noundef nonnull dereferenceable(1572880) ptr @_Znwm(i64 noundef 1572880) #21
          to label %bb.c unwind label %bb.ac      ; 5 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1572880) %i.c, i8 0, i64 1572880, i1 false)
  %i.d = load ptr, ptr %4, align 8, !tbaa !50
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = invoke noundef ptr @_ZNK6duckdb10unique_ptrISt6vectorImSaImEESt14default_deleteIS3_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.e unwind label %bb.ac

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.g = phi ptr [ %i.f, %bb.e ], [ %1, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30   ; 2 uses
  %i.j = load ptr, ptr %5, align 8, !tbaa !31     ; 6 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i.i.i.i, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = getelementptr inbounds i8, ptr null, i64 %i.m ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store ptr %i.o, ptr %i.p, align 8, !tbaa !48
  br label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.q = icmp ugt i64 %i.m, 9223372036854775800
  br i1 %i.q, label %.noexc.i.i, label %_ZNSt15__new_allocatorIPKhE8allocateEmPKv.exit.i.i.i.i, !prof !54

.noexc.i.i:                                       ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.ac

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIPKhE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #21
          to label %.noexc21 unwind label %bb.ac  ; 8 uses

.noexc21:                                         ; preds = %_ZNSt15__new_allocatorIPKhE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.r, ptr %6, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.m ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.t, ptr %i.u, align 8, !tbaa !48
  %i.v = icmp samesign ugt i64 %i.m, 8
  br i1 %i.v, label %bb.h, label %bb.i, !prof !126

bb.h:                                             ; preds = %.noexc21
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %i.j, i64 %i.m, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %.noexc21
  %i.w = icmp eq i64 %i.m, 8
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !33
  store ptr %i.x, ptr %i.r, align 8, !tbaa !33
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %.thread
  %i.y = phi ptr [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ], [ %i.o, %.thread ]
  %i.z = phi ptr [ %i.s, %bb.h ], [ %i.s, %bb.i ], [ %i.s, %bb.j ], [ %i.n, %.thread ]
  %i.aa = phi ptr [ %i.r, %bb.h ], [ %i.r, %bb.i ], [ %i.r, %bb.j ], [ null, %.thread ] ; 4 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ac = icmp ne i32 %3, 0
  %i.ad = invoke noundef ptr @_ZN7libfsst16buildSymbolTableERNS_8CountersESt6vectorIPKhSaIS4_EEPKmb(ptr noundef nonnull align 1 dereferenceable(394240) %i.ab, ptr noundef nonnull %6, ptr noundef %i.g, i1 noundef zeroext %i.ac)
          to label %bb.l unwind label %bb.ad      ; 3 uses

bb.l:                                             ; preds = %bb.k
  %i.ae = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21
          to label %bb.q unwind label %bb.m       ; 5 uses

bb.m:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  %i.ah = call ptr @__cxa_begin_catch(ptr %i.ag) #22 ; 0 uses
  call void @_ZdlPv(ptr noundef nonnull %i.ad) #23
  invoke void @__cxa_rethrow() #24
          to label %bb.p unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #25
  unreachable

bb.p:                                             ; preds = %bb.m
  unreachable

bb.q:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i32 1, ptr %i.al, align 8, !tbaa !56
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 1, ptr %i.am, align 4, !tbaa !57
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7libfsst11SymbolTableELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ae, align 8, !tbaa !14
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.ad, ptr %i.an, align 8, !tbaa !60
  store ptr %i.ad, ptr %i.c, align 8, !tbaa !127
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !63 ; 8 uses
  store ptr %i.ae, ptr %i.ao, align 8, !tbaa !63
  %.not.i.i.i.i22 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i22, label %_ZNSt12__shared_ptrIN7libfsst11SymbolTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.aq, align 8, !tbaa !56
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !57
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !14
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #22, !inline_history !123
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #22, !inline_history !123
  br label %_ZNSt12__shared_ptrIN7libfsst11SymbolTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.t:                                             ; preds = %bb.r
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !12
  %.not.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i = phi i32 [ %i.at, %bb.u ], [ %i.bd, %bb.v ]
  %i.be = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.be, label %bb.w, label %_ZNSt12__shared_ptrIN7libfsst11SymbolTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !54

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #22
  br label %_ZNSt12__shared_ptrIN7libfsst11SymbolTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7libfsst11SymbolTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.s, %bb.q
  %.not.i.i.i23 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i23, label %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt12__shared_ptrIN7libfsst11SymbolTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.aa) #23
  br label %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit

_ZNSt6vectorIPKhSaIS1_EED2Ev.exit:                ; preds = %_ZNSt12__shared_ptrIN7libfsst11SymbolTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.x
  call void @_ZdaPv(ptr noundef nonnull %i.a) #23
  %i.bf = load ptr, ptr %5, align 8, !tbaa !31    ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit25, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.bf) #23
  br label %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit25

_ZNSt6vectorIPKhSaIS1_EED2Ev.exit25:              ; preds = %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bg = load ptr, ptr %4, align 8, !tbaa !50    ; 3 uses
  %.not.i = icmp eq ptr %i.bg, null
  br i1 %.not.i, label %_ZNSt10unique_ptrISt6vectorImSaImEESt14default_deleteIS2_EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit25
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !53 ; 2 uses
  %.not.i.i.i.i.i26 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i26, label %_ZNKSt14default_deleteISt6vectorImSaImEEEclEPS2_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZdlPv(ptr noundef nonnull %i.bh) #23
  br label %_ZNKSt14default_deleteISt6vectorImSaImEEEclEPS2_.exit.i

_ZNKSt14default_deleteISt6vectorImSaImEEEclEPS2_.exit.i: ; preds = %bb.aa, %bb.z
  call void @_ZdlPv(ptr noundef nonnull %i.bg) #23
  br label %_ZNSt10unique_ptrISt6vectorImSaImEESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrISt6vectorImSaImEESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit25, %_ZNKSt14default_deleteISt6vectorImSaImEEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret ptr %i.c

bb.ab:                                            ; preds = %bb.a
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit30

bb.ac:                                            ; preds = %bb.d, %bb.b, %_ZNSt15__new_allocatorIPKhE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %5, align 8, !tbaa !31
  br label %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit28

bb.ad:                                            ; preds = %bb.k
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %bb.ad
  %eh.lpad-body = phi { ptr, i32 } [ %i.bk, %bb.ad ], [ %i.ai, %bb.n ] ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit28, label %bb.ae

bb.ae:                                            ; preds = %.body
  call void @_ZdlPv(ptr noundef nonnull %i.aa) #23
  br label %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit28

_ZNSt6vectorIPKhSaIS1_EED2Ev.exit28:              ; preds = %bb.ac, %.body, %bb.ae
  %i.bl = phi ptr [ %i.j, %bb.ae ], [ %.pre, %bb.ac ], [ %i.j, %.body ] ; 2 uses
  %.pn.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %bb.ae ], [ %i.bj, %bb.ac ], [ %eh.lpad-body, %.body ] ; 2 uses
  %.not.i.i.i29 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit30, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit28
  call void @_ZdlPv(ptr noundef nonnull %i.bl) #23
  br label %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit30

_ZNSt6vectorIPKhSaIS1_EED2Ev.exit30:              ; preds = %bb.af, %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit28, %bb.ab
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bi, %bb.ab ], [ %.pn.pn.pn, %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit28 ], [ %.pn.pn.pn, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt10unique_ptrISt6vectorImSaImEESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden noalias noundef nonnull ptr @duckdb_fsst_duplicate(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(1572880) ptr @_Znwm(i64 noundef 1572880) #21 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1572872) %i.b, i8 0, i64 1572872, i1 false)
  %i.c = load ptr, ptr %0, align 8, !tbaa !65
  store ptr %i.c, ptr %i.a, align 8, !tbaa !65
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN7libfsst11SymbolTableEEaSERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !12
  %.not.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread: ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 4, !tbaa !8
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !8
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !63 ; 8 uses
  %.not8.i.i.i = icmp eq ptr %.pr.pre.i.i.i, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.l, align 8, !tbaa !56
  %i.p = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !57
  %i.q = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #22, !inline_history !128
  %i.t = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #22, !inline_history !128
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !12
  %.not.i9.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i9.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.o, %bb.f ], [ %i.y, %bb.g ]
  %i.z = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.z, label %bb.h, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !54

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #22
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.f, ptr %i.d, align 8, !tbaa !63
  br label %_ZNSt10shared_ptrIN7libfsst11SymbolTableEEaSERKS2_.exit

_ZNSt10shared_ptrIN7libfsst11SymbolTableEEaSERKS2_.exit: ; preds = %bb.a, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @duckdb_fsst_export(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 17)) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !65     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 156162
  %i.c = load i16, ptr %i.b, align 2, !tbaa !20
  %i.d = zext i16 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 156164
  %i.g = load i16, ptr %i.f, align 4, !tbaa !21
  %i.h = zext i16 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 156160
  %i.k = load i16, ptr %i.j, align 8, !tbaa !42
  %i.l = zext i16 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 8
  %i.n = or i64 %i.e, %i.i
  %i.o = or i64 %i.n, %i.m
  %i.p = or i64 %i.o, 86716326009110529
  store i64 %i.p, ptr %1, align 1
  %i.q = load ptr, ptr %0, align 8, !tbaa !65
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 156166
  %i.s = load i8, ptr %i.r, align 2, !tbaa !22, !range !66, !noundef !67
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.s, ptr %i.t, align 1, !tbaa !12
  %i.u = load ptr, ptr %0, align 8, !tbaa !65
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 156168
  %i.w = load i16, ptr %i.v, align 2, !tbaa !24
  %i.x = trunc i16 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.x, ptr %i.y, align 1, !tbaa !12
  %i.z = load ptr, ptr %0, align 8, !tbaa !65
end_hunk_0
