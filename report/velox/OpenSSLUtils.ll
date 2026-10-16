Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/OpenSSLUtils?download=true
inline.NumInlined: 550
inline.NumDeleted: 364
begin_hunk_0_@_ZN5folly3ssl12OpenSSLUtils21subjectNamesInPEMFileEPKc:bb.a
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.17)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #27
          to label %bb.j unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #23
  br label %bb.i

bb.e:                                             ; preds = %bb.f, %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  invoke fastcc void @_ZN5folly3sslL22getSubjectNamesFromBIOEP6bio_st(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull %i.a)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  invoke void @BIO_vfree(ptr noundef nonnull %i.a)
          to label %_ZNSt10unique_ptrI6bio_stN5folly23static_function_deleterIS0_XadL_Z9BIO_vfreeEEEEED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #24
  unreachable

_ZNSt10unique_ptrI6bio_stN5folly23static_function_deleterIS0_XadL_Z9BIO_vfreeEEEEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.i:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.c, %bb.d ]
  call void @_ZNSt10unique_ptrI6bio_stN5folly23static_function_deleterIS0_XadL_Z9BIO_vfreeEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %bb.c
  unreachable
}

declare void @BIO_vfree(ptr noundef) local_unnamed_addr #1

declare ptr @BIO_new_file(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5folly3sslL22getSubjectNamesFromBIOEP6bio_st(ptr dead_on_unwind noalias writable align 8 initializes((0, 24)) %0, ptr noundef %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.67", align 8 ; 5 uses
  %3 = alloca %"class.std::unique_ptr.58", align 8 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrI7x509_stN5folly23static_function_deleterIS0_XadL_Z9X509_freeEEEEED2Ev.exit.i, %bb.a
  %i.c = phi ptr [ %i.bc, %_ZNSt10unique_ptrI7x509_stN5folly23static_function_deleterIS0_XadL_Z9X509_freeEEEEED2Ev.exit.i ], [ null, %bb.a ] ; 13 uses
  %i.d = phi ptr [ %i.bd, %_ZNSt10unique_ptrI7x509_stN5folly23static_function_deleterIS0_XadL_Z9X509_freeEEEEED2Ev.exit.i ], [ null, %bb.a ] ; 5 uses
  %i.e = phi ptr [ %i.be, %_ZNSt10unique_ptrI7x509_stN5folly23static_function_deleterIS0_XadL_Z9X509_freeEEEEED2Ev.exit.i ], [ null, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.f = invoke ptr @PEM_read_bio_X509(ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %.noexc unwind label %bb.k     ; 4 uses

.noexc:                                           ; preds = %bb.b
  store ptr %i.f, ptr %3, align 8, !tbaa !71
  %.not.i.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  invoke void @ERR_clear_error()
          to label %bb.l unwind label %.loopexit.split-lp11.i

.loopexit10.i:                                    ; preds = %.noexc.i, %bb.d
  %lpad.loopexit12.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp11.i:                           ; preds = %bb.c
  %lpad.loopexit.split-lp13.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.h, %.loopexit.split-lp11.i, %.loopexit10.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %lpad.phi.i, %bb.h ], [ %lpad.loopexit12.i, %.loopexit10.i ], [ %lpad.loopexit.split-lp13.i, %.loopexit.split-lp11.i ]
  call void @_ZNSt10unique_ptrI7x509_stN5folly23static_function_deleterIS0_XadL_Z9X509_freeEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.body

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.g = invoke ptr @X509_get_subject_name(ptr noundef nonnull %i.f)
          to label %.noexc.i unwind label %.loopexit10.i

.noexc.i:                                         ; preds = %bb.d
  %i.h = invoke ptr @X509_NAME_dup(ptr noundef %i.g)
          to label %.noexc4.i unwind label %.loopexit10.i ; 2 uses

.noexc4.i:                                        ; preds = %.noexc.i
  store ptr %i.h, ptr %2, align 8, !tbaa !73
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.d
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZNSt6vectorISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EE9push_backEOS5_.exit.thread.i.i

_ZNSt6vectorISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EE9push_backEOS5_.exit.thread.i.i: ; preds = %.noexc4.i
  store i64 %i.i, ptr %i.e, align 8, !tbaa !73
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !76
  br label %bb.i

bb.e:                                             ; preds = %.noexc4.i
  %i.k = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.l = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 4 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #27
          to label %.noexc4.i.i unwind label %.loopexit.split-lp.i

.noexc4.i.i:                                      ; preds = %bb.f
  unreachable

_ZNKSt6vectorISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i3.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i3.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #25
          to label %.noexc5.i.i unwind label %.loopexit.i ; 13 uses

.noexc5.i.i:                                      ; preds = %_ZNKSt6vectorISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store i64 %i.i, ptr %i.v, align 8, !tbaa !73
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %iter.check

iter.check:                                       ; preds = %.noexc5.i.i
  %i.w = add i64 %i.k, -8
  %i.x = sub i64 %i.w, %i.l                       ; 3 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.x, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.u, i64 8
  %i.aa = add i64 %i.k, -8
  %i.ab = sub i64 %i.aa, %i.l
  %i.ac = and i64 %i.ab, -8                       ; 2 uses
  %scevgep7 = getelementptr i8, ptr %scevgep, i64 %i.ac
  %scevgep8 = getelementptr i8, ptr %i.c, i64 8
  %scevgep9 = getelementptr i8, ptr %scevgep8, i64 %i.ac
  %bound0 = icmp ult ptr %i.u, %scevgep9
  %bound1 = icmp ult ptr %i.c, %scevgep7
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check10 = icmp ult i64 %i.x, 120
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ad = and i64 %i.z, 12
  %n.vec = and i64 %i.z, 4611686018427387888      ; 4 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.u, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.c, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ah ; 4 uses
  %next.gep11 = getelementptr i8, ptr %i.c, i64 %i.ah ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.ai = getelementptr i8, ptr %next.gep11, i64 32
  %i.aj = getelementptr i8, ptr %next.gep11, i64 64
  %i.ak = getelementptr i8, ptr %next.gep11, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep11, align 8, !tbaa !73, !alias.scope !126
  %wide.load12 = load <4 x i64>, ptr %i.ai, align 8, !tbaa !73, !alias.scope !126
  %wide.load13 = load <4 x i64>, ptr %i.aj, align 8, !tbaa !73, !alias.scope !126
  %wide.load14 = load <4 x i64>, ptr %i.ak, align 8, !tbaa !73, !alias.scope !126
  %i.al = getelementptr i8, ptr %next.gep, i64 32
  %i.am = getelementptr i8, ptr %next.gep, i64 64
  %i.an = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !73, !alias.scope !127, !noalias !128
  store <4 x i64> %wide.load12, ptr %i.al, align 8, !tbaa !73, !alias.scope !127, !noalias !128
  store <4 x i64> %wide.load13, ptr %i.am, align 8, !tbaa !73, !alias.scope !127, !noalias !128
  store <4 x i64> %wide.load14, ptr %i.an, align 8, !tbaa !73, !alias.scope !127, !noalias !128
  %i.ao = getelementptr i8, ptr %next.gep11, i64 32
  %i.ap = getelementptr i8, ptr %next.gep11, i64 64
  %i.aq = getelementptr i8, ptr %next.gep11, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep11, align 8, !tbaa !73, !alias.scope !126
  store <4 x ptr> splat (ptr null), ptr %i.ao, align 8, !tbaa !73, !alias.scope !126
  store <4 x ptr> splat (ptr null), ptr %i.ap, align 8, !tbaa !73, !alias.scope !126
  store <4 x ptr> splat (ptr null), ptr %i.aq, align 8, !tbaa !73, !alias.scope !126
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !121

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !131

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %i.z, 4611686018427387900    ; 3 uses
  %i.as = shl i64 %n.vec16, 3                     ; 2 uses
  %i.at = getelementptr i8, ptr %i.u, i64 %i.as   ; 2 uses
  %i.au = getelementptr i8, ptr %i.c, i64 %i.as
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index17 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ] ; 2 uses
  %i.av = shl i64 %index17, 3                     ; 2 uses
  %next.gep18 = getelementptr i8, ptr %i.u, i64 %i.av
  %next.gep19 = getelementptr i8, ptr %i.c, i64 %i.av ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %wide.load20 = load <4 x i64>, ptr %next.gep19, align 8, !tbaa !73, !alias.scope !126
  store <4 x i64> %wide.load20, ptr %next.gep18, align 8, !tbaa !73, !alias.scope !127, !noalias !128
  store <4 x ptr> splat (ptr null), ptr %next.gep19, align 8, !tbaa !73, !alias.scope !126
  %index.next21 = add nuw i64 %index17, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next21, %n.vec16
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !122

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n22 = icmp eq i64 %i.z, %n.vec16
  br i1 %cmp.n22, label %_ZNSt6vectorISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.u, %iter.check ], [ %i.u, %vector.memcheck ], [ %i.af, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.c, %iter.check ], [ %i.c, %vector.memcheck ], [ %i.ag, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.ax = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !73, !alias.scope !125
  store i64 %i.ax, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !73, !alias.scope !124
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !73, !alias.scope !125
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.d
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !123

_ZNSt6vectorISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc5.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.u, %.noexc5.i.i ], [ %i.at, %vec.epilog.middle.block ], [ %i.af, %middle.block ], [ %i.az, %.lr.ph.i.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EE9push_backEOS5_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.m) #26
  br label %_ZNSt6vectorISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EE9push_backEOS5_.exit.i.i

_ZNSt6vectorISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EE9push_backEOS5_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.u, ptr %0, align 8, !tbaa !77
  store ptr %i.ba, ptr %i.a, align 8, !tbaa !76
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s ; 2 uses
  store ptr %i.bb, ptr %i.b, align 8, !tbaa !78
  br label %bb.i

.loopexit.i:                                      ; preds = %_ZNKSt6vectorISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp.i:                             ; preds = %bb.f
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_ZNSt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS0_XadL_Z14X509_NAME_freeEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.body.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EE9push_backEOS5_.exit.i.i, %_ZNSt6vectorISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EE9push_backEOS5_.exit.thread.i.i
  %i.bc = phi ptr [ %i.u, %_ZNSt6vectorISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EE9push_backEOS5_.exit.i.i ], [ %i.c, %_ZNSt6vectorISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EE9push_backEOS5_.exit.thread.i.i ]
  %i.bd = phi ptr [ %i.bb, %_ZNSt6vectorISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EE9push_backEOS5_.exit.i.i ], [ %i.d, %_ZNSt6vectorISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EE9push_backEOS5_.exit.thread.i.i ]
  %i.be = phi ptr [ %i.ba, %_ZNSt6vectorISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EE9push_backEOS5_.exit.i.i ], [ %i.j, %_ZNSt6vectorISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EE9push_backEOS5_.exit.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  invoke void @X509_free(ptr noundef nonnull %i.f)
          to label %_ZNSt10unique_ptrI7x509_stN5folly23static_function_deleterIS0_XadL_Z9X509_freeEEEEED2Ev.exit.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  tail call void @__clang_call_terminate(ptr %i.bg) #24
  unreachable

_ZNSt10unique_ptrI7x509_stN5folly23static_function_deleterIS0_XadL_Z9X509_freeEEEEED2Ev.exit.i: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.b

bb.k:                                             ; preds = %bb.b
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.bh, %bb.k ], [ %eh.lpad-body.i, %.body.i ]
  call void @_ZNSt6vectorISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  resume { ptr, i32 } %eh.lpad-body

bb.l:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrI6bio_stN5folly23static_function_deleterIS0_XadL_Z9BIO_vfreeEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !69     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNK5folly23static_function_deleterI6bio_stXadL_Z9BIO_vfreeEEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @BIO_vfree(ptr noundef nonnull %i.a)
          to label %_ZNK5folly23static_function_deleterI6bio_stXadL_Z9BIO_vfreeEEEclEPS1_.exit unwind label %bb.c

_ZNK5folly23static_function_deleterI6bio_stXadL_Z9BIO_vfreeEEEclEPS1_.exit: ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #24
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !77     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.g, %_ZSt8_DestroyISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !73 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  invoke void @X509_NAME_free(ptr noundef nonnull %i.d)
          to label %_ZSt8_DestroyISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEEEvPT_.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #24
  unreachable

_ZSt8_DestroyISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !132

_ZSt8_DestroyIPSt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPSt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.h = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEES5_EvT_S7_RSaIT0_E.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !78
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #26
  br label %_ZNSt12_Vector_baseISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEES5_EvT_S7_RSaIT0_E.exit, %bb.d
  ret void
}

declare void @X509_free(ptr noundef) local_unnamed_addr #1

declare ptr @PEM_read_bio_X509(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ERR_clear_error() local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrI7x509_stN5folly23static_function_deleterIS0_XadL_Z9X509_freeEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !71     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNK5folly23static_function_deleterI7x509_stXadL_Z9X509_freeEEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @X509_free(ptr noundef nonnull %i.a)
          to label %_ZNK5folly23static_function_deleterI7x509_stXadL_Z9X509_freeEEEclEPS1_.exit unwind label %bb.c

_ZNK5folly23static_function_deleterI7x509_stXadL_Z9X509_freeEEEclEPS1_.exit: ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #24
  unreachable
}

declare ptr @X509_NAME_dup(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS0_XadL_Z14X509_NAME_freeEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !73     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNK5folly23static_function_deleterI12X509_name_stXadL_Z14X509_NAME_freeEEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @X509_NAME_free(ptr noundef nonnull %i.a)
          to label %_ZNK5folly23static_function_deleterI12X509_name_stXadL_Z14X509_NAME_freeEEEclEPS1_.exit unwind label %bb.c

_ZNK5folly23static_function_deleterI12X509_name_stXadL_Z14X509_NAME_freeEEEclEPS1_.exit: ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #24
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly3ssl12OpenSSLUtils23subjectNamesInPEMBufferENS_5RangeIPKhEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.43") align 8 %0, ptr %1, ptr %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.48", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = trunc i64 %i.c to i32
  %i.e = tail call ptr @BIO_new_mem_buf(ptr noundef %1, i32 noundef %i.d) ; 4 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !69
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull @.str.19)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #27
          to label %bb.j unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.f) #23
  br label %bb.i

bb.e:                                             ; preds = %bb.f, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  invoke fastcc void @_ZN5folly3sslL22getSubjectNamesFromBIOEP6bio_st(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull %i.e)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  invoke void @BIO_vfree(ptr noundef nonnull %i.e)
          to label %_ZNSt10unique_ptrI6bio_stN5folly23static_function_deleterIS0_XadL_Z9BIO_vfreeEEEEED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #24
  unreachable

_ZNSt10unique_ptrI6bio_stN5folly23static_function_deleterIS0_XadL_Z9BIO_vfreeEEEEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.i:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  call void @_ZNSt10unique_ptrI6bio_stN5folly23static_function_deleterIS0_XadL_Z9BIO_vfreeEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %bb.c
  unreachable
}

declare ptr @BIO_new_mem_buf(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { cold noreturn }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn }
attributes #28 = { cold }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>", scope: !32, file: !27, line: 125, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE")
!1 = distinct !{!1, !40}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 7, !"openmp", i32 51}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!16 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!10, !10, i64 0}
!19 = !{!11, !11, i64 0}
!20 = !{!"p1 _ZTS14ssl_session_st", !14, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 8, !11, i64 12}
!23 = !{!22, !11, i64 8}
!24 = !{!22, !11, i64 12}
!25 = !{!"vtable pointer", !9, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/shared_ptr_base.h", directory: "", checksumkind: CSK_MD5, checksum: "398b697f034a380e2062e59e71a6eec9")
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !0, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!29 = !{null, !28}
!30 = !DISubroutineType(types: !29)
!31 = !DISubprogram(name: "_M_dispose", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv", scope: !0, file: !27, line: 139, type: !30, scopeLine: 139, containingType: !0, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!32 = !DINamespace(name: "std", scope: null)
!33 = !DISubprogram(name: "_M_destroy", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv", scope: !0, file: !27, line: 143, type: !30, scopeLine: 143, containingType: !0, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!34 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!35 = !{!"p1 _ZTS21stack_st_GENERAL_NAME", !14, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"short", !10, i64 0}
!38 = !{!"p1 omnipotent char", !14, i64 0}
!39 = !{!"long", !10, i64 0}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"any p2 pointer", !14, i64 0}
!42 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !41, i64 0}
!43 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !14, i64 0}
!44 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !43, i64 0}
!45 = !{!"float", !10, i64 0}
!46 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !45, i64 0, !39, i64 8}
!47 = !{!"_ZTSSt10_HashtableItSt4pairIKtNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE", !42, i64 0, !39, i64 8, !44, i64 16, !39, i64 24, !46, i64 32, !43, i64 48}
!48 = !{!47, !39, i64 24}
!49 = !{!44, !43, i64 0}
!50 = !{!37, !37, i64 0}
!51 = !{!47, !39, i64 8}
!52 = !{!47, !42, i64 0}
!53 = !{!43, !43, i64 0}
!54 = !{!"p1 _ZTS10ssl_ctx_st", !14, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!"p1 _ZTS6ssl_st", !14, i64 0}
!57 = !{!56, !56, i64 0}
!58 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEEE", !14, i64 0}
!59 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKtNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEE", !14, i64 0}
!60 = !{!"_ZTSNSt10_HashtableItSt4pairIKtNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeE", !58, i64 0, !59, i64 8}
!61 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !38, i64 0}
!62 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !61, i64 0, !39, i64 8, !10, i64 16}
!63 = !{!61, !38, i64 0}
!64 = !{!62, !39, i64 8}
!65 = !{!60, !59, i64 8}
!66 = !{!47, !43, i64 16}
!67 = !{!62, !38, i64 0}
!68 = !{!"p1 _ZTS6bio_st", !14, i64 0}
!69 = !{!68, !68, i64 0}
!70 = !{!"p1 _ZTS7x509_st", !14, i64 0}
!71 = !{!70, !70, i64 0}
!72 = !{!"p1 _ZTS12X509_name_st", !14, i64 0}
!73 = !{!72, !72, i64 0}
!74 = !{!"p1 _ZTSSt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS0_XadL_Z14X509_NAME_freeEEEEE", !14, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EE17_Vector_impl_dataE", !74, i64 0, !74, i64 8, !74, i64 16}
!76 = !{!75, !74, i64 8}
!77 = !{!75, !74, i64 0}
!78 = !{!75, !74, i64 16}
!79 = distinct !{!79, i1 true, !"_ZSt20dynamic_pointer_castIN5folly3ssl6detail14OpenSSLSessionENS1_10SSLSessionEESt10shared_ptrIT_ERKS5_IT0_E"}
!80 = distinct !{!80, !79, !"_ZSt20dynamic_pointer_castIN5folly3ssl6detail14OpenSSLSessionENS1_10SSLSessionEESt10shared_ptrIT_ERKS5_IT0_E: argument 0"}
!81 = distinct !{ptr @_ZNSt12__shared_ptrIN5folly3ssl6detail14OpenSSLSessionELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!82 = !{!80}
!83 = !{!"p1 _ZTSN5folly3ssl10SSLSessionE", !14, i64 0}
!84 = !{!"_ZTSSt12__shared_ptrIN5folly3ssl10SSLSessionELN9__gnu_cxx12_Lock_policyE2EE", !83, i64 0, !16, i64 8}
!85 = !{!84, !83, i64 0}
!86 = !{!"p1 _ZTSN5folly3ssl6detail14OpenSSLSessionE", !14, i64 0}
!87 = !{!"_ZTSSt12__shared_ptrIN5folly3ssl6detail14OpenSSLSessionELN9__gnu_cxx12_Lock_policyE2EE", !86, i64 0, !16, i64 8}
!88 = !{!87, !86, i64 0}
!89 = distinct !{null, null}
!90 = distinct !{null}
!91 = distinct !{!91, !40}
!92 = !{!"_ZTS8sockaddr", !37, i64 0, !10, i64 2}
!93 = !{!92, !37, i64 0}
!94 = !{!"_ZTS15GENERAL_NAME_st", !11, i64 0, !10, i64 8}
!95 = !{!94, !11, i64 0}
!96 = !{!"_ZTS14asn1_string_st", !11, i64 0, !11, i64 4, !38, i64 8, !39, i64 16}
!97 = !{!96, !11, i64 0}
!98 = !{!96, !38, i64 8}
!99 = distinct !{!99, !40}
!100 = !{!"branch_weights", i32 1, i32 1048575}
!101 = distinct !{!101, !40}
!102 = !{!46, !45, i64 0}
!103 = !{!60, !58, i64 0}
!104 = !{!"_ZTSSt4pairIKtNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !37, i64 0, !62, i64 8}
!105 = !{!104, !37, i64 0}
!106 = distinct !{!106, !40}
!107 = !{!46, !39, i64 8}
!108 = distinct !{!108, !40}
!109 = !{!47, !43, i64 48}
!110 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!111 = !{!"p1 _ZTS13bio_method_st", !14, i64 0}
!112 = !{!111, !111, i64 0}
!113 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0}
!114 = !{!113, !113, i64 0}
!115 = distinct !{!115, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEES5_SaIS5_EEvPT_PT0_RT1_"}
!116 = distinct !{!116, !115, !"_ZSt19__relocate_object_aISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!117 = distinct !{!117, !115, !"_ZSt19__relocate_object_aISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!118 = distinct !{!118, i1 false, !"LVerDomain"}
!119 = distinct !{!119, !118}
!120 = distinct !{!120, !118}
!121 = distinct !{!121, !40, !129, !130}
!122 = distinct !{!122, !40, !129, !130}
!123 = distinct !{!123, !40, !129}
!124 = !{!116}
!125 = !{!117}
!126 = !{!117, !119}
!127 = !{!116, !120}
!128 = !{!119}
!129 = !{!"llvm.loop.isvectorized", i32 1}
!130 = !{!"llvm.loop.unroll.runtime.disable"}
!131 = !{!"branch_weights", i32 4, i32 12}
!132 = distinct !{!132, !40}
end_hunk_0
