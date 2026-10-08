Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/interfaces?download=true
inline.NumInlined: 1995
inline.NumDeleted: 945
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5arrow2io8internal22SharedExclusiveChecker10LockSharedEv:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN5arrow2io8internal22SharedExclusiveChecker12UnlockSharedEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #8 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN5arrow2io8internal22SharedExclusiveChecker13LockExclusiveEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #8 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN5arrow2io8internal22SharedExclusiveChecker15UnlockExclusiveEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #8 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow2io8internal12_GLOBAL__N_116MakeIOThreadPoolEv() unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %0 = alloca %"class.arrow::Result.99", align 8  ; 16 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.arrow::util::ArrowLog", align 8 ; 10 uses
  %3 = alloca %"class.arrow::Result.103", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.92", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #32
  call void @_ZN5arrow8internal9GetEnvVarB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.99") align 8 %0, i64 16, ptr nonnull @.str.16)
  %i.b = load ptr, ptr %0, align 8, !tbaa !67
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %.thread3

.thread3:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  br label %bb.w

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !376)
  call void @llvm.experimental.noalias.scope.decl(metadata !377)
  call void @llvm.experimental.noalias.scope.decl(metadata !378)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !113, !alias.scope !379
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !83, !noalias !379 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !112, !noalias !379 ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %bb.d

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.f, ptr %1, align 8, !tbaa !83, !alias.scope !379
  %i.m = load i64, ptr %i.g, align 8, !tbaa !44, !noalias !379
  store i64 %i.m, ptr %i.e, align 8, !tbaa !44, !alias.scope !379
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !112, !noalias !379
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.c
  %i.n = phi ptr [ %i.e, %bb.c ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ] ; 2 uses
  %i.o = phi i64 [ %i.j, %bb.c ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.o, ptr %i.q, align 8, !tbaa !112, !alias.scope !379
  store ptr %i.g, ptr %i.d, align 8, !tbaa !83, !noalias !379
  store i64 0, ptr %i.p, align 8, !tbaa !112, !noalias !379
  store i8 0, ptr %i.g, align 8, !tbaa !44, !noalias !379
  %i.r = icmp eq i64 %i.o, 0
  br i1 %i.r, label %bb.u, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.s = tail call ptr @__errno_location() #37    ; 6 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !18   ; 2 uses
  store i32 0, ptr %i.s, align 4, !tbaa !18
  %i.u = call noundef i64 @__isoc23_strtol(ptr noundef %i.n, ptr noundef nonnull %i.a, i32 noundef 10) ; 3 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !380
  %i.w = icmp eq ptr %i.v, %i.n
  br i1 %i.w, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.19) #34
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %.critedge.i.i, %bb.f
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = load i32, ptr %i.s, align 4, !tbaa !18
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.i, label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.t, ptr %i.s, align 4, !tbaa !18
  br label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.aa = extractvalue { ptr, i32 } %i.x, 0
  %i.ab = call ptr @__cxa_begin_catch(ptr %i.aa) #32 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %.thread unwind label %bb.q

bb.j:                                             ; preds = %bb.e
  %i.ac = load i32, ptr %i.s, align 4, !tbaa !18  ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 34
  %i.ae = add i64 %i.u, -2147483648
  %i.af = icmp ult i64 %i.ae, -4294967296
  %or.cond.i.i = or i1 %i.af, %i.ad
  br i1 %or.cond.i.i, label %.critedge.i.i, label %bb.l

.critedge.i.i:                                    ; preds = %bb.j
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.19) #34
          to label %bb.k unwind label %bb.h

bb.k:                                             ; preds = %.critedge.i.i
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ag = icmp eq i32 %i.ac, 0
  br i1 %i.ag, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %i.t, ptr %i.s, align 4, !tbaa !18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ah = trunc nsw i64 %i.u to i32               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.ai = icmp slt i64 %i.u, 1
  br i1 %i.ai, label %.thread, label %bb.u

.thread:                                          ; preds = %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i, %bb.n
  %.0122 = phi i32 [ %i.ah, %bb.n ], [ 0, %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  invoke void @_ZN5arrow4util8ArrowLogC1EPKciNS0_13ArrowLogLevelE(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull @.str.4, i32 noundef 402, i32 noundef 1)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %.thread
  %i.aj = load ptr, ptr %2, align 8, !tbaa !43
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc24 unwind label %bb.s, !inline_history !369

.noexc24:                                         ; preds = %bb.o
  br i1 %i.am, label %bb.p, label %_ZN5arrow4util12ArrowLogBaselsIA87_cEERS1_RKT_.exit

bb.p:                                             ; preds = %.noexc24
  %i.an = load ptr, ptr %2, align 8, !tbaa !43
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc25 unwind label %bb.s, !inline_history !369

.noexc25:                                         ; preds = %bb.p
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.17, i64 noundef 86)
          to label %_ZN5arrow4util12ArrowLogBaselsIA87_cEERS1_RKT_.exit unwind label %bb.s ; 0 uses

_ZN5arrow4util12ArrowLogBaselsIA87_cEERS1_RKT_.exit: ; preds = %.noexc24, %.noexc25
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.u

bb.q:                                             ; preds = %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.r:                                             ; preds = %.thread
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %.noexc25, %bb.p, %bb.o
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %2) #32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.au, %bb.s ], [ %i.at, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.v

bb.u:                                             ; preds = %bb.n, %_ZN5arrow4util12ArrowLogBaselsIA87_cEERS1_RKT_.exit, %bb.d
  %.113 = phi i32 [ 0, %bb.d ], [ %.0122, %_ZN5arrow4util12ArrowLogBaselsIA87_cEERS1_RKT_.exit ], [ %i.ah, %bb.n ]
  %.113.fr = freeze i32 %.113                     ; 2 uses
  %i.av = load ptr, ptr %1, align 8, !tbaa !83    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.e
  br i1 %i.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.u
  %i.ax = load i64, ptr %i.e, align 8, !tbaa !44
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

bb.v:                                             ; preds = %bb.t, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.t ], [ %i.as, %bb.q ]
  %i.az = load ptr, ptr %1, align 8, !tbaa !83    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.e
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.v
  %i.bb = load i64, ptr %i.e, align 8, !tbaa !44
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %bb.ah

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.bd = icmp sgt i32 %.113.fr, 0
  %spec.select = select i1 %i.bd, i32 %.113.fr, i32 8
  br label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %.thread3
  %i.be = phi i32 [ 8, %.thread3 ], [ %spec.select, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  invoke void @_ZN5arrow8internal10ThreadPool11MakeEternalEi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.103") align 8 %3, i32 noundef %i.be)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.bf = load ptr, ptr %3, align 8, !tbaa !67
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %bb.y
  invoke void @_ZNK5arrow6Status5AbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) #34
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.w
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ac:                                            ; preds = %bb.y
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31

bb.ad:                                            ; preds = %bb.z
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %4, align 8, !tbaa !83    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.ad
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !44
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31

_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEED2Ev.exit: ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !381)
  call void @llvm.experimental.noalias.scope.decl(metadata !382)
  call void @llvm.experimental.noalias.scope.decl(metadata !383)
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bq = load <2 x ptr>, ptr %i.bp, align 8, !tbaa !26, !noalias !384
  store <2 x ptr> %i.bq, ptr @_ZZN5arrow2io8internal15GetIOThreadPoolEvE4pool, align 16, !tbaa !26, !alias.scope !384
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.br = load ptr, ptr %0, align 8, !tbaa !67    ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.ae, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i, !prof !68

bb.ae:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEED2Ev.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !83 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i: ; preds = %bb.ae
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !44
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #36
  %.pr.pre.i = load ptr, ptr %0, align 8, !tbaa !67 ; 2 uses
  %.not.i.i34 = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i34, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i, !prof !81

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEED2Ev.exit
  %i.bz = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i ], [ %i.br, %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEED2Ev.exit ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !78, !range !79, !noundef !80
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #32
  br label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.ae, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #32
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31: ; preds = %bb.ad, %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  %.pn18 = phi { ptr, i32 } [ %i.bi, %bb.ac ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %i.bj, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #32
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31, %bb.ab
  %.pn20.pn = phi { ptr, i32 } [ %.pn18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31 ], [ %i.bh, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %.pn20.pn.pn = phi { ptr, i32 } [ %.pn20.pn, %bb.ag ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ]
  call void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #32
  resume { ptr, i32 } %.pn20.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow8internal10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !41
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !6
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !6
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !18
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !45

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io8internal18CoalesceReadRangesESt6vectorINS0_9ReadRangeESaIS3_EEll(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Result.88") align 8 captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.64", align 8    ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !115    ; 27 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !115
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !116  ; 11 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !116
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !117  ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !117
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %i.h = icmp eq ptr %i.a, %i.d
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !67, !alias.scope !395
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.i, align 8, !tbaa !115, !alias.scope !395
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.j, align 8, !tbaa !116, !alias.scope !395
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.g, ptr %i.k, align 8, !tbaa !117, !alias.scope !395
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.l = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.m = ptrtoint ptr %i.a to i64                 ; 4 uses
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  %i.o = ashr i64 %i.n, 6                         ; 2 uses
end_hunk_0
