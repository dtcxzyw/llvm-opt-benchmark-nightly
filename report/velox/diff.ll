inline.NumInlined: 8612
inline.NumDeleted: 3310
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN5arrow15VisitEditScriptERKNS_5ArrayERKSt8functionIFNS_6StatusEllllEE:bb.a
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !14
  %.not80 = icmp slt i64 %i.ff, %i.fh
  br i1 %.not80, label %bb.ay, label %._crit_edge, !llvm.loop !257

._crit_edge:                                      ; preds = %bb.bd, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit109
  %.046.lcssa = phi i64 [ %i.dv, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit109 ], [ %i.ex, %bb.bd ]
  %.044.lcssa = phi i64 [ %i.dv, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit109 ], [ %.145, %bb.bd ]
  %.040.lcssa = phi i64 [ %i.dv, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit109 ], [ %.242, %bb.bd ]
  %.038.lcssa = phi i64 [ %i.dv, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit109 ], [ %.139, %bb.bd ]
  %.036.lcssa = phi i64 [ %i.dv, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit109 ], [ %.2, %bb.bd ]
  %i.fi = icmp eq i64 %.046.lcssa, 0
  br i1 %i.fi, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %.044.lcssa, ptr %i.a, align 8, !tbaa !62, !noalias !258
  store i64 %.040.lcssa, ptr %i.b, align 8, !tbaa !62, !noalias !258
  store i64 %.038.lcssa, ptr %i.c, align 8, !tbaa !62, !noalias !258
  store i64 %.036.lcssa, ptr %i.d, align 8, !tbaa !62, !noalias !258
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !249, !noalias !258
  %.not.i.i114 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i114, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZSt25__throw_bad_function_callv() #27
          to label %.noexc115 unwind label %bb.bh

.noexc115:                                        ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !251, !noalias !258
  invoke void %i.fm(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZNKSt8functionIFN5arrow6StatusEllllEEclEllll.exit117 unwind label %bb.bh, !inline_history !253

_ZNKSt8functionIFN5arrow6StatusEllllEEclEllll.exit117: ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.critedge.thread

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bi:                                            ; preds = %._crit_edge
  store ptr null, ptr %0, align 8, !tbaa !48, !alias.scope !261
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNKSt8functionIFN5arrow6StatusEllllEEclEllll.exit117, %bb.bi
  %i.fo = load ptr, ptr %i.cu, align 8, !tbaa !84 ; 8 uses
  %.not.i.i118 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i118, label %_ZNSt12__shared_ptrIN5arrow12NumericArrayINS0_9Int64TypeEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %.critedge.thread
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 4 uses
  %i.fq = load atomic i64, ptr %i.fp acquire, align 8 ; 2 uses
  %i.fr = icmp eq i64 %i.fq, 4294967297
  %i.fs = trunc i64 %i.fq to i32                  ; 2 uses
  br i1 %i.fr, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i32 0, ptr %i.fp, align 8, !tbaa !109
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  store i32 0, ptr %i.ft, align 4, !tbaa !111
  %i.fu = load ptr, ptr %i.fo, align 8, !tbaa !112
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr noundef nonnull align 8 dereferenceable(16) %i.fo) #23, !inline_history !126
  %i.fx = load ptr, ptr %i.fo, align 8, !tbaa !112
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8
  call void %i.fz(ptr noundef nonnull align 8 dereferenceable(16) %i.fo) #23, !inline_history !126
  br label %_ZNSt12__shared_ptrIN5arrow12NumericArrayINS0_9Int64TypeEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bl:                                            ; preds = %bb.bj
  %i.ga = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i119 = icmp eq i8 %i.ga, 0
  br i1 %.not.i.i.i119, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gb = add nsw i32 %i.fs, -1
  store i32 %i.gb, ptr %i.fp, align 8, !tbaa !98
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i120

bb.bn:                                            ; preds = %bb.bl
  %i.gc = atomicrmw volatile add ptr %i.fp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i120

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i120: ; preds = %bb.bn, %bb.bm
  %.0.i.i.i.i121 = phi i32 [ %i.fs, %bb.bm ], [ %i.gc, %bb.bn ]
  %i.gd = icmp eq i32 %.0.i.i.i.i121, 1
  br i1 %i.gd, label %bb.bo, label %_ZNSt12__shared_ptrIN5arrow12NumericArrayINS0_9Int64TypeEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !115

bb.bo:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i120
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fo) #23
  br label %_ZNSt12__shared_ptrIN5arrow12NumericArrayINS0_9Int64TypeEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12NumericArrayINS0_9Int64TypeEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.critedge.thread, %bb.bk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i120, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %i.ge = load ptr, ptr %i.bs, align 8, !tbaa !84 ; 8 uses
  %.not.i.i122 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i122, label %_ZNSt12__shared_ptrIN5arrow12BooleanArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow12NumericArrayINS0_9Int64TypeEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 4 uses
  %i.gg = load atomic i64, ptr %i.gf acquire, align 8 ; 2 uses
  %i.gh = icmp eq i64 %i.gg, 4294967297
  %i.gi = trunc i64 %i.gg to i32                  ; 2 uses
  br i1 %i.gh, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store i32 0, ptr %i.gf, align 8, !tbaa !109
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  store i32 0, ptr %i.gj, align 4, !tbaa !111
  %i.gk = load ptr, ptr %i.ge, align 8, !tbaa !112
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8
  call void %i.gm(ptr noundef nonnull align 8 dereferenceable(16) %i.ge) #23, !inline_history !127
  %i.gn = load ptr, ptr %i.ge, align 8, !tbaa !112
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.gp = load ptr, ptr %i.go, align 8
  call void %i.gp(ptr noundef nonnull align 8 dereferenceable(16) %i.ge) #23, !inline_history !127
  br label %_ZNSt12__shared_ptrIN5arrow12BooleanArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.br:                                            ; preds = %bb.bp
  %i.gq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i123 = icmp eq i8 %i.gq, 0
  br i1 %.not.i.i.i123, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gr = add nsw i32 %i.gi, -1
  store i32 %i.gr, ptr %i.gf, align 8, !tbaa !98
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i124

bb.bt:                                            ; preds = %bb.br
  %i.gs = atomicrmw volatile add ptr %i.gf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i124

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i124: ; preds = %bb.bt, %bb.bs
  %.0.i.i.i.i125 = phi i32 [ %i.gi, %bb.bs ], [ %i.gs, %bb.bt ]
  %i.gt = icmp eq i32 %.0.i.i.i.i125, 1
  br i1 %i.gt, label %bb.bu, label %_ZNSt12__shared_ptrIN5arrow12BooleanArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !115

bb.bu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i124
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ge) #23
  br label %_ZNSt12__shared_ptrIN5arrow12BooleanArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12BooleanArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow12NumericArrayINS0_9Int64TypeEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i124, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  ret void

bb.bv:                                            ; preds = %bb.bh, %bb.bc
  %.pn81 = phi { ptr, i32 } [ %i.fn, %bb.bh ], [ %lpad.phi, %bb.bc ]
  call void @_ZNSt12__shared_ptrIN5arrow12NumericArrayINS0_9Int64TypeEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #23
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.ax
  %.pn81.pn = phi { ptr, i32 } [ %.pn81, %bb.bv ], [ %i.ee, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @_ZNSt12__shared_ptrIN5arrow12BooleanArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %.loopexit138
  %.pn81.pn.pn = phi { ptr, i32 } [ %.pn81.pn, %bb.bw ], [ %.pn.pn.pn.pn.pn.pn.pn134, %.loopexit138 ]
  resume { ptr, i32 } %.pn81.pn.pn
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #5

declare void @_ZN5arrow7struct_ERKSt6vectorISt10shared_ptrINS_5FieldEESaIS3_EE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.30") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow11StructArray5fieldEi(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow24MakeUnifiedDiffFormatterERKNS_8DataTypeEPSo(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.49") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %5 = alloca %"class.arrow::MakeFormatterImpl", align 8 ; 14 uses
  %6 = alloca %"class.arrow::Result.54", align 8  ; 17 uses
  %.sroa.4 = alloca [32 x i8], align 8            ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !142
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %2 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  store i64 %i.d, ptr %i.e, align 8, !tbaa !264
  store ptr @"_ZNSt17_Function_handlerIFN5arrow6StatusERKNS0_5ArrayES4_S4_EZNS0_24MakeUnifiedDiffFormatterERKNS0_8DataTypeEPSoE3$_0E9_M_invokeERKSt9_Any_dataS4_S4_S4_", ptr %i.g, align 8, !tbaa !266
  store ptr @"_ZNSt17_Function_handlerIFN5arrow6StatusERKNS0_5ArrayES4_S4_EZNS0_24MakeUnifiedDiffFormatterERKNS0_8DataTypeEPSoE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", ptr %i.f, align 8, !tbaa !249
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !268
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false), !noalias !268
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !274
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !274
  invoke void @_ZN5arrow15VisitTypeInlineINS_17MakeFormatterImplEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc.i unwind label %bb.j, !noalias !268, !inline_history !275

.noexc.i:                                         ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !276)
  %i.h = load ptr, ptr %4, align 8, !tbaa !48, !noalias !279 ; 2 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !48, !alias.scope !276, !noalias !274
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !274
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.d, !prof !58

bb.d:                                             ; preds = %.noexc.i
  call void @_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(8) %3) #23, !inline_history !275
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !48, !noalias !274
  %.not.i2.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i2.i.i, label %_ZNO5arrow17MakeFormatterImpl4MakeERKNS_8DataTypeE.exit.i, label %bb.e, !prof !200

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3), !inline_history !275
  br label %_ZNO5arrow17MakeFormatterImpl4MakeERKNS_8DataTypeE.exit.i

bb.f:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !274
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 32, i1 false), !alias.scope !274
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !280, !noalias !274
  store ptr %i.l, ptr %i.j, align 8, !tbaa !280, !alias.scope !274
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !249, !noalias !274 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZN5arrowL13MakeFormatterERKNS_8DataTypeE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 16, i1 false), !tbaa.struct !282
  store ptr %i.n, ptr %i.p, align 8, !tbaa !249, !alias.scope !274
  br label %_ZN5arrowL13MakeFormatterERKNS_8DataTypeE.exit

_ZNO5arrow17MakeFormatterImpl4MakeERKNS_8DataTypeE.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !274
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !249, !noalias !268 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i, label %_ZN5arrowL13MakeFormatterERKNS_8DataTypeE.exit, label %bb.h

bb.h:                                             ; preds = %_ZNO5arrow17MakeFormatterImpl4MakeERKNS_8DataTypeE.exit.i
  %i.q = invoke noundef zeroext i1 %.pre.i(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZN5arrowL13MakeFormatterERKNS_8DataTypeE.exit unwind label %bb.i, !inline_history !283 ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #26, !inline_history !283
  unreachable

bb.j:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !249, !noalias !268 ; 2 uses
  %.not.i.i2.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i2.i, label %_ZN5arrow17MakeFormatterImplD2Ev.exit3.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = invoke noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZN5arrow17MakeFormatterImplD2Ev.exit3.i unwind label %bb.l, !noalias !268, !inline_history !283 ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #26, !noalias !268, !inline_history !283
  unreachable

_ZN5arrow17MakeFormatterImplD2Ev.exit3.i:         ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !268
  resume { ptr, i32 } %i.t

_ZN5arrowL13MakeFormatterERKNS_8DataTypeE.exit:   ; preds = %bb.f, %bb.g, %_ZNO5arrow17MakeFormatterImpl4MakeERKNS_8DataTypeE.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !268
  %i.z = load ptr, ptr %6, align 8, !tbaa !48
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.m, label %bb.p, !prof !58

bb.m:                                             ; preds = %_ZN5arrowL13MakeFormatterERKNS_8DataTypeE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !280, !noalias !284
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !249, !noalias !284 ; 3 uses
  %.not.i.i.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2EOS6_.exit.thread, label %bb.n

_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2EOS6_.exit.thread: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4, i8 0, i64 32, i1 false)
  br label %_ZN5arrow20UnifiedDiffFormatterC2EPSoSt8functionIFvRKNS_5ArrayElS1_EE.exit

bb.n:                                             ; preds = %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false), !noalias !284
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i8 0, i64 16, i1 false)
  %.sroa.4.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false)
  br label %_ZN5arrow20UnifiedDiffFormatterC2EPSoSt8functionIFvRKNS_5ArrayElS1_EE.exit

_ZN5arrow20UnifiedDiffFormatterC2EPSoSt8functionIFvRKNS_5ArrayElS1_EE.exit: ; preds = %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2EOS6_.exit.thread, %bb.n
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %i.ag = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #24
          to label %.noexc.i.i.i unwind label %bb.o ; 6 uses

.noexc.i.i.i:                                     ; preds = %_ZN5arrow20UnifiedDiffFormatterC2EPSoSt8functionIFvRKNS_5ArrayElS1_EE.exit
  store ptr %2, ptr %i.ag, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i8 0, i64 24, i1 false)
  store ptr %i.ac, ptr %i.ai, align 8, !tbaa !280
  %.not.i.i.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i, label %.thread, label %_ZN5arrow6ResultISt8functionIFNS_6StatusERKNS_5ArrayES5_S5_EEEC2INS_20UnifiedDiffFormatterEvEEOT_.exit

bb.o:                                             ; preds = %_ZN5arrow20UnifiedDiffFormatterC2EPSoSt8functionIFvRKNS_5ArrayElS1_EE.exit
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #26
  unreachable

_ZN5arrow6ResultISt8functionIFNS_6StatusERKNS_5ArrayES5_S5_EEEC2INS_20UnifiedDiffFormatterEvEEOT_.exit: ; preds = %.noexc.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %.sroa.4.24..sroa_idx11 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.24..sroa_idx11, i64 16, i1 false), !tbaa.struct !282
  store ptr %i.ae, ptr %i.al, align 8, !tbaa !249
  br label %.thread

.thread:                                          ; preds = %_ZN5arrow6ResultISt8functionIFNS_6StatusERKNS_5ArrayES5_S5_EEEC2INS_20UnifiedDiffFormatterEvEEOT_.exit, %.noexc.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.am, align 8, !tbaa !289
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @_ZNSt17_Function_handlerIFN5arrow6StatusERKNS0_5ArrayES4_S4_ENS0_20UnifiedDiffFormatterEE9_M_invokeERKSt9_Any_dataS4_S4_S4_, ptr %i.an, align 8, !tbaa !266
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZNSt17_Function_handlerIFN5arrow6StatusERKNS0_5ArrayES4_S4_ENS0_20UnifiedDiffFormatterEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.ao, align 8, !tbaa !249
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  br label %bb.q

bb.p:                                             ; preds = %_ZN5arrowL13MakeFormatterERKNS_8DataTypeE.exit
  call void @_ZN5arrow6ResultISt8functionIFNS_6StatusERKNS_5ArrayES5_S5_EEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #23
  %.pre = load ptr, ptr %6, align 8, !tbaa !48
  %i.ap = icmp eq ptr %.pre, null
  br i1 %i.ap, label %bb.q, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread.i, !prof !291

bb.q:                                             ; preds = %.thread, %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !249 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.at = invoke noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i32 noundef 3)
          to label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.i unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #26
  unreachable

_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.i: ; preds = %bb.r
  %.pr.pre.i = load ptr, ptr %6, align 8, !tbaa !48
  %i.aw = icmp eq ptr %.pr.pre.i, null
  br i1 %i.aw, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread.i, !prof !216

_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.i, %bb.p
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(40) %6)
  br label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit

_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit: ; preds = %bb.q, %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.t

bb.t:                                             ; preds = %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt8functionIFNS_6StatusERKNS_5ArrayES5_S5_EEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.27", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !48     ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #24
          to label %.noexc unwind label %bb.p     ; 9 uses

.noexc:                                           ; preds = %bb.b
  %i.e = load i8, ptr %i.b, align 8, !tbaa !130
  store i8 %i.e, ptr %i.d, align 8, !tbaa !130
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !100
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !122  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !102  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.k, ptr %i.a, align 8, !tbaa !62
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.noexc
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %bb.h   ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i.i
  store ptr %i.m, ptr %i.f, align 8, !tbaa !122
  %i.n = load i64, ptr %i.a, align 8, !tbaa !62
  store i64 %i.n, ptr %i.h, align 8, !tbaa !61
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i, %.noexc
  %i.o = phi ptr [ %i.m, %.noexc.i ], [ %i.h, %.noexc ] ; 2 uses
  switch i64 %i.k, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.p = load i8, ptr %i.i, align 1, !tbaa !61
  store i8 %i.p, ptr %i.o, align 1, !tbaa !61
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i
  %i.q = load i64, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.q, ptr %i.r, align 8, !tbaa !102
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !122
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !84   ; 2 uses
  %i.y = load <2 x ptr>, ptr %i.v, align 8, !tbaa !83
  store <2 x ptr> %i.y, ptr %i.u, align 8, !tbaa !83
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !98
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.z, align 4, !tbaa !98
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ad = atomicrmw volatile add ptr %i.z, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %.noexc.i.i.i
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 56) #25
  br label %.body

bb.i:                                             ; preds = %bb.g, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i, %bb.a
  %i.af = phi ptr [ null, %bb.a ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i ], [ %i.d, %bb.f ], [ %i.d, %bb.g ]
  store ptr %i.af, ptr %0, align 8, !tbaa !48
  %i.ag = load ptr, ptr %1, align 8, !tbaa !48
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.j, label %bb.o, !prof !115

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ai = load ptr, ptr %2, align 8, !tbaa !122   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !61
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.an = load ptr, ptr %5, align 8, !tbaa !122   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !61
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.as = load ptr, ptr %3, align 8, !tbaa !122   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.av = load i64, ptr %i.at, align 8, !tbaa !61
  %i.aw = add i64 %i.av, 1
end_hunk_0
