Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/bagofwords_classification?download=true
inline.NumInlined: 4875
inline.NumDeleted: 1409
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN7VocData24calcClassifierPrecRecallERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorI8ObdImageSaIS9_EERKS8_IfSaIfEERSF_SI_RfRS8_ImSaImEE:bb.a

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN7VocData19calcPrecRecall_implERKSt6vectorIcSaIcEERKS0_IfSaIfEERS6_S9_RfRS0_ImSaImEEi(ptr noundef nonnull align 8 dereferenceable(365) %0, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef -1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.a = load ptr, ptr %8, align 8, !tbaa !54     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #33
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  ret void

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %8, align 8, !tbaa !54     ; 3 uses
  %.not.i.i.i9 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorIcSaIcEED2Ev.exit10, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !82
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #33
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit10

_ZNSt6vectorIcSaIcEED2Ev.exit10:                  ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7VocData19calcPrecRecall_implERKSt6vectorIcSaIcEERKS0_IfSaIfEERS6_S9_RfRS0_ImSaImEEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(365) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %6, i32 noundef %7) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.c = load ptr, ptr %1, align 8, !tbaa !54
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !134  ; 2 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !135    ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 2
  %i.n = icmp eq i64 %i.f, %i.m
  br i1 %i.n, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(1) %9)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN7VocData19calcPrecRecall_implERKSt6vectorIcSaIcEERKS0_IfSaIfEERS6_S9_RfRS0_ImSaImEEi, ptr noundef nonnull @.str.11, i32 noundef 836) #31
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %8, align 8, !tbaa !40     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.s = load i64, ptr %i.q, align 8, !tbaa !41
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  resume { ptr, i32 } %i.o

bb.e:                                             ; preds = %bb.a
  %i.u = add nsw i64 %i.f, 1                      ; 4 uses
  %i.v = icmp ugt i64 %i.u, 2305843009213693951
  br i1 %i.v, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.228) #31
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.e
  %.not.i.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %.noexc93

.noexc93:                                         ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.w = shl nuw nsw i64 %i.u, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #35 ; 5 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.u ; 2 uses
  store float 0.000000e+00, ptr %i.x, align 4, !tbaa !142
  %i.z = getelementptr i8, ptr %i.x, i64 4        ; 3 uses
  %i.aa = icmp eq ptr %i.h, %i.i
  br i1 %i.aa, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc93
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.z, i8 0, i64 %i.l, i1 false), !tbaa !142
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.l
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc93, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12163.0 = phi ptr [ %i.y, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.y, %.noexc93 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.0160.0 = phi ptr [ %i.x, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.x, %.noexc93 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.0.i.i.i.i.i = phi ptr [ %i.ab, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.z, %.noexc93 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.ac = load ptr, ptr %3, align 8, !tbaa !135   ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !166
  store ptr %.sroa.0160.0, ptr %3, align 8, !tbaa !135
  store ptr %.0.i.i.i.i.i, ptr %i.ad, align 8, !tbaa !134
  store ptr %.sroa.12163.0, ptr %i.ae, align 8, !tbaa !166
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ac to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ai) #33
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, %bb.f
  %i.aj = load ptr, ptr %i.g, align 8, !tbaa !134 ; 2 uses
  %i.ak = load ptr, ptr %2, align 8, !tbaa !135   ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am                    ; 3 uses
  %i.ao = ashr exact i64 %i.an, 2
  %i.ap = add nsw i64 %i.ao, 1                    ; 4 uses
  %i.aq = icmp ugt i64 %i.ap, 2305843009213693951
  br i1 %i.aq, label %.noexc99, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i94

.noexc99:                                         ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.228) #31
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i94: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %.not.i.i.i.i95 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.i.i95, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit101, label %.noexc100

.noexc100:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i94
  %i.ar = shl nuw nsw i64 %i.ap, 2
  %i.as = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #35 ; 5 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ap ; 2 uses
  store float 0.000000e+00, ptr %i.as, align 4, !tbaa !142
  %i.au = getelementptr i8, ptr %i.as, i64 4      ; 3 uses
  %i.av = icmp eq ptr %i.aj, %i.ak
  br i1 %i.av, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit101, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i96

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i96: ; preds = %.noexc100
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.au, i8 0, i64 %i.an, i1 false), !tbaa !142
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.an
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit101

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit101:            ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i96, %.noexc100, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i94
  %.sroa.12157.0 = phi ptr [ %i.at, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i96 ], [ %i.at, %.noexc100 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i94 ]
  %.sroa.0155.0 = phi ptr [ %i.as, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i96 ], [ %i.as, %.noexc100 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i94 ]
  %.0.i.i.i.i.i97 = phi ptr [ %i.aw, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i96 ], [ %i.au, %.noexc100 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i94 ]
  %i.ax = load ptr, ptr %4, align 8, !tbaa !135   ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !166
  store ptr %.sroa.0155.0, ptr %4, align 8, !tbaa !135
  store ptr %.0.i.i.i.i.i97, ptr %i.ay, align 8, !tbaa !134
  store ptr %.sroa.12157.0, ptr %i.az, align 8, !tbaa !166
  %.not.i.i.i102 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i102, label %_ZNSt6vectorIfSaIfEED2Ev.exit103, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit101
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ax to i64
  %i.bd = sub i64 %i.bb, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bd) #33
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit103

_ZNSt6vectorIfSaIfEED2Ev.exit103:                 ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit101, %bb.g
  tail call void @_ZN7VocData12getSortOrderERKSt6vectorIfSaIfEERS0_ImSaImEEb(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext true)
  %.not = icmp eq i32 %7, -1
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !121 ; 5 uses
  %.pre222 = ptrtoaddr ptr %.pre to i64
  %.pre178 = load ptr, ptr %1, align 8, !tbaa !121 ; 9 uses
  %.pre178221 = ptrtoaddr ptr %.pre178 to i64
  br i1 %.not, label %bb.h, label %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEZN7VocData19calcPrecRecall_implERKS6_RKS4_IfSaIfEERSC_SF_RfRS4_ImSaImEEiE3$_0ENSt15iterator_traitsIT_E15difference_typeESM_SM_T0_.exit"

bb.h:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit103
  %.not4.i.i = icmp eq ptr %.pre178, %.pre
  br i1 %.not4.i.i, label %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEZN7VocData19calcPrecRecall_implERKS6_RKS4_IfSaIfEERSC_SF_RfRS4_ImSaImEEiE3$_0ENSt15iterator_traitsIT_E15difference_typeESM_SM_T0_.exit", label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.h
  %i.be = sub i64 %.pre222, %.pre178221           ; 3 uses
  %min.iters.check = icmp ult i64 %i.be, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader225, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.be, -8                      ; 3 uses
  %i.bf = getelementptr i8, ptr %.pre178, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bl, %vector.body ]
  %vec.phi221 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bm, %vector.body ]
  %next.gep = getelementptr i8, ptr %.pre178, i64 %index ; 2 uses
  %i.bg = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !41
  %wide.load222 = load <4 x i8>, ptr %i.bg, align 1, !tbaa !41
  %i.bh = icmp eq <4 x i8> %wide.load, splat (i8 1)
  %i.bi = icmp eq <4 x i8> %wide.load222, splat (i8 1)
  %i.bj = zext <4 x i1> %i.bh to <4 x i32>
  %i.bk = zext <4 x i1> %i.bi to <4 x i32>
  %i.bl = add <4 x i32> %vec.phi, %i.bj           ; 2 uses
  %i.bm = add <4 x i32> %vec.phi221, %i.bk        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !343

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bm, %i.bl
  %i.bo = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEZN7VocData19calcPrecRecall_implERKS6_RKS4_IfSaIfEERSC_SF_RfRS4_ImSaImEEiE3$_0ENSt15iterator_traitsIT_E15difference_typeESM_SM_T0_.exit", label %.lr.ph.i.i.preheader225

.lr.ph.i.i.preheader225:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.06.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.bo, %middle.block ]
  %.sroa.02.05.i.i.ph = phi ptr [ %.pre178, %.lr.ph.i.i.preheader ], [ %i.bf, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader225, %.lr.ph.i.i
  %.06.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.06.i.i.ph, %.lr.ph.i.i.preheader225 ]
  %.sroa.02.05.i.i = phi ptr [ %i.bs, %.lr.ph.i.i ], [ %.sroa.02.05.i.i.ph, %.lr.ph.i.i.preheader225 ] ; 2 uses
  %i.bp = load i8, ptr %.sroa.02.05.i.i, align 1, !tbaa !41
  %i.bq = icmp eq i8 %i.bp, 1
  %i.br = zext i1 %i.bq to i32
  %spec.select.i.i = add i32 %.06.i.i, %i.br      ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bs, %.pre
  br i1 %.not.i.i, label %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEZN7VocData19calcPrecRecall_implERKS6_RKS4_IfSaIfEERSC_SF_RfRS4_ImSaImEEiE3$_0ENSt15iterator_traitsIT_E15difference_typeESM_SM_T0_.exit", label %.lr.ph.i.i, !llvm.loop !344

"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEZN7VocData19calcPrecRecall_implERKS6_RKS4_IfSaIfEERSC_SF_RfRS4_ImSaImEEiE3$_0ENSt15iterator_traitsIT_E15difference_typeESM_SM_T0_.exit": ; preds = %.lr.ph.i.i, %middle.block, %bb.h, %_ZNSt6vectorIfSaIfEED2Ev.exit103
  %.084 = phi i32 [ %7, %_ZNSt6vectorIfSaIfEED2Ev.exit103 ], [ 0, %bb.h ], [ %i.bo, %middle.block ], [ %spec.select.i.i, %.lr.ph.i.i ]
  store float 0.000000e+00, ptr %5, align 4, !tbaa !142
  %i.bt = load ptr, ptr %4, align 8, !tbaa !135   ; 5 uses
  store float 0.000000e+00, ptr %i.bt, align 4, !tbaa !142
  %i.bu = ptrtoint ptr %.pre to i64
  %i.bv = ptrtoint ptr %.pre178 to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 2 uses
  %i.bx = sitofp i32 %.084 to float               ; 2 uses
  %exitcond.peel.not = icmp eq ptr %.pre, %.pre178
  br i1 %exitcond.peel.not, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit107, label %bb.i

bb.i:                                             ; preds = %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEZN7VocData19calcPrecRecall_implERKS6_RKS4_IfSaIfEERSC_SF_RfRS4_ImSaImEEiE3$_0ENSt15iterator_traitsIT_E15difference_typeESM_SM_T0_.exit"
  %i.by = load ptr, ptr %6, align 8, !tbaa !171   ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !38
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre178, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !41
  %.not89.peel = icmp ne i8 %i.cb, 0              ; 2 uses
  %i.cc = uitofp i1 %.not89.peel to float         ; 2 uses
  %i.cd = load ptr, ptr %3, align 8, !tbaa !135   ; 7 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4 ; 2 uses
  store float %i.cc, ptr %i.ce, align 4, !tbaa !142
  %i.cf = fdiv float %i.cc, %i.bx
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bt, i64 4 ; 2 uses
  store float %i.cf, ptr %i.cg, align 4, !tbaa !142
  %i.ch = load float, ptr %i.ce, align 4, !tbaa !142
  store float %i.ch, ptr %i.cd, align 4, !tbaa !142
  %.pr.peel = load float, ptr %i.cg, align 4, !tbaa !142
  %i.ci = fcmp oeq float %.pr.peel, 1.000000e+00
  br i1 %i.ci, label %bb.l, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.i
  %exitcond.not213 = icmp eq i64 %i.bw, 1
  br i1 %exitcond.not213, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit107, label %.lr.ph216.preheader

.lr.ph216.preheader:                              ; preds = %.peel.next.preheader
  %i.cj = zext i1 %.not89.peel to i32
  br label %.lr.ph216

.peel.next:                                       ; preds = %bb.k
  %exitcond.not = icmp eq i64 %i.cq, %i.bw
  br i1 %exitcond.not, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit107, label %.lr.ph216, !llvm.loop !345

.lr.ph216:                                        ; preds = %.lr.ph216.preheader, %.peel.next
  %.082215 = phi i32 [ %spec.select, %.peel.next ], [ %i.cj, %.lr.ph216.preheader ]
  %.086214 = phi i64 [ %i.cq, %.peel.next ], [ 1, %.lr.ph216.preheader ] ; 4 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.086214
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !38
  %i.cm = getelementptr inbounds nuw i8, ptr %.pre178, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !41
  %.not89 = icmp ne i8 %i.cn, 0
  %i.co = zext i1 %.not89 to i32
  %spec.select = add nuw nsw i32 %.082215, %i.co  ; 2 uses
  %i.cp = uitofp nneg i32 %spec.select to float   ; 2 uses
  %i.cq = add i64 %.086214, 1                     ; 5 uses
  %i.cr = uitofp i64 %i.cq to float
  %i.cs = fdiv float %i.cp, %i.cr
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.cq ; 2 uses
  store float %i.cs, ptr %i.ct, align 4, !tbaa !142
  %i.cu = fdiv float %i.cp, %i.bx                 ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.cq ; 2 uses
  store float %i.cu, ptr %i.cv, align 4, !tbaa !142
  %i.cw = icmp eq i64 %.086214, 0
  br i1 %i.cw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph216
  %i.cx = load float, ptr %i.ct, align 4, !tbaa !142
  store float %i.cx, ptr %i.cd, align 4, !tbaa !142
  %.pr = load float, ptr %i.cv, align 4, !tbaa !142
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph216
  %i.cy = phi float [ %.pr, %bb.j ], [ %i.cu, %.lr.ph216 ]
  %i.cz = fcmp oeq float %i.cy, 1.000000e+00
  br i1 %i.cz, label %.loopexit, label %.peel.next, !llvm.loop !345

.loopexit:                                        ; preds = %bb.k
  %i.da = add i64 %.086214, 2
  br label %bb.l

bb.l:                                             ; preds = %.loopexit, %bb.i
  %.086.lcssa175 = phi i64 [ 2, %bb.i ], [ %i.da, %.loopexit ] ; 8 uses
  %i.db = load ptr, ptr %i.ay, align 8, !tbaa !134 ; 2 uses
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.bt to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = ashr exact i64 %i.de, 2                 ; 3 uses
  %i.dg = icmp ugt i64 %.086.lcssa175, %i.df
  br i1 %i.dg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dh = sub nuw i64 %.086.lcssa175, %i.df
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.dh)
  %.pre180 = load ptr, ptr %3, align 8, !tbaa !135
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.n:                                             ; preds = %bb.l
  %i.di = icmp ult i64 %.086.lcssa175, %i.df
  br i1 %i.di, label %bb.o, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.o:                                             ; preds = %bb.n
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %.086.lcssa175 ; 2 uses
  %.not.i.i104 = icmp eq ptr %i.db, %i.dj
  br i1 %.not.i.i104, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.o
  store ptr %i.dj, ptr %i.ay, align 8, !tbaa !134
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %bb.m, %bb.n, %bb.o, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %i.dk = phi ptr [ %.pre180, %bb.m ], [ %i.cd, %bb.n ], [ %i.cd, %bb.o ], [ %i.cd, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.dl = load ptr, ptr %i.ad, align 8, !tbaa !134 ; 2 uses
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.dk to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = ashr exact i64 %i.do, 2                 ; 3 uses
  %i.dq = icmp ugt i64 %.086.lcssa175, %i.dp
  br i1 %i.dq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.dr = sub nuw i64 %.086.lcssa175, %i.dp
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.dr)
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit107

bb.q:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.ds = icmp ult i64 %.086.lcssa175, %i.dp
  br i1 %i.ds, label %bb.r, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit107

bb.r:                                             ; preds = %bb.q
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %.086.lcssa175 ; 2 uses
  %.not.i.i105 = icmp eq ptr %i.dl, %i.dt
  br i1 %.not.i.i105, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit107, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i106

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i106:     ; preds = %bb.r
  store ptr %i.dt, ptr %i.ad, align 8, !tbaa !134
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit107

_ZNSt6vectorIfSaIfEE6resizeEm.exit107:            ; preds = %.peel.next, %.peel.next.preheader, %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEZN7VocData19calcPrecRecall_implERKS6_RKS4_IfSaIfEERSC_SF_RfRS4_ImSaImEEiE3$_0ENSt15iterator_traitsIT_E15difference_typeESM_SM_T0_.exit", %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i106, %bb.r, %bb.q, %bb.p
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.dv = load i8, ptr %i.du, align 4, !tbaa !173, !range !110, !noundef !111
  %i.dw = icmp eq i8 %i.dv, 0
  %i.dx = load ptr, ptr %3, align 8, !tbaa !174   ; 3 uses
  br i1 %i.dw, label %bb.s, label %.preheader166

.preheader166:                                    ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit107
  %i.dy = load ptr, ptr %4, align 8, !tbaa !174
  %i.dz = load ptr, ptr %i.ay, align 8, !tbaa !174
  br label %bb.u

bb.s:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit107
  %i.ea = load ptr, ptr %i.ad, align 8, !tbaa !134 ; 2 uses
  %i.eb = ptrtoint ptr %i.ea to i64
end_hunk_0
begin_hunk_1_@main:bb.a

bb.lu:                                            ; preds = %bb.ls, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i8.i.i454
  %i.bol = landingpad { ptr, i32 }
          cleanup
  br label %.body.i418

bb.lv:                                            ; preds = %bb.lt
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #32, !noalias !652
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #32, !noalias !652
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %50, ptr noundef nonnull @.str.236, ptr noundef nonnull align 1 dereferenceable(1) %51)
          to label %bb.lw unwind label %bb.ly, !noalias !652

bb.lw:                                            ; preds = %bb.lv
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %50, ptr noundef nonnull @__func__._ZL18trainSVMClassifierRK17SVMTrainParamsExtRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER7VocDataRN2cv3PtrINSC_11xfeatures2d25BOWImgDescriptorExtractorEEERKNSD_INSC_9Feature2DEEES9_, ptr noundef nonnull @.str.11, i32 noundef 2420) #31
          to label %bb.lx unwind label %bb.lz, !noalias !652

bb.lx:                                            ; preds = %bb.lw
  unreachable

bb.ly:                                            ; preds = %bb.lv
  %i.bom = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156.i

bb.lz:                                            ; preds = %bb.lw
  %i.bon = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.boo = load ptr, ptr %50, align 8, !tbaa !40, !noalias !652 ; 2 uses
  %i.bop = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 2 uses
  %i.boq = icmp eq ptr %i.boo, %i.bop
  br i1 %i.boq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154.i: ; preds = %bb.lz
  %i.bor = load i64, ptr %i.bop, align 8, !tbaa !41, !noalias !652
  %i.bos = add i64 %i.bor, 1
  call void @_ZdlPvm(ptr noundef %i.boo, i64 noundef %i.bos) #33, !noalias !652
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156.i: ; preds = %bb.lz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154.i, %bb.ly
  %.pn62.i = phi { ptr, i32 } [ %i.bom, %bb.ly ], [ %i.bon, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154.i ], [ %i.bon, %bb.lz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #32, !noalias !652
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #32, !noalias !652
  br label %.body.i418

bb.ma:                                            ; preds = %bb.lt
  %i.bot = fcmp olt float %i.boi, 1.000000e+00
  br i1 %i.bot, label %bb.mb, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit.i

bb.mb:                                            ; preds = %bb.ma
  %i.bou = load ptr, ptr %i.bch, align 8, !tbaa !46, !noalias !652
  %i.bov = load ptr, ptr %47, align 8, !tbaa !45, !noalias !652
  %i.bow = ptrtoint ptr %i.bou to i64
  %i.box = ptrtoint ptr %i.bov to i64
  %i.boy = sub i64 %i.bow, %i.box
  %i.boz = ashr exact i64 %i.boy, 6
  %i.bpa = uitofp i64 %i.boz to float
  %i.bpb = fpext nnan ninf float %i.bpa to double
  %i.bpc = fpext nnan ninf float %i.boi to double
  %i.bpd = fsub nnan double 1.000000e+00, %i.bpc
  %i.bpe = fmul double %i.bpd, %i.bpb
  %i.bpf = fptosi double %i.bpe to i32            ; 3 uses
  %i.bpg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.237, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit158.i unwind label %.loopexit712, !noalias !652 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit158.i: ; preds = %bb.mb
  %i.bph = load ptr, ptr %i.bch, align 8, !tbaa !46, !noalias !652
  %i.bpi = load ptr, ptr %47, align 8, !tbaa !45, !noalias !652
  %i.bpj = ptrtoint ptr %i.bph to i64
  %i.bpk = ptrtoint ptr %i.bpi to i64
  %i.bpl = sub i64 %i.bpj, %i.bpk
  %i.bpm = ashr exact i64 %i.bpl, 6
  %i.bpn = sext i32 %i.bpf to i64
  %i.bpo = sub nsw i64 %i.bpm, %i.bpn
  %i.bpp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.bpo)
          to label %_ZNSolsEm.exit.i443 unwind label %.loopexit712, !noalias !652 ; 2 uses

_ZNSolsEm.exit.i443:                              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit158.i
  %i.bpq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bpp, ptr noundef nonnull @.str.238, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit161.i unwind label %.loopexit712, !noalias !652 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit161.i: ; preds = %_ZNSolsEm.exit.i443
  %i.bpr = load ptr, ptr %i.bch, align 8, !tbaa !46, !noalias !652
  %i.bps = load ptr, ptr %47, align 8, !tbaa !45, !noalias !652
  %i.bpt = ptrtoint ptr %i.bpr to i64
  %i.bpu = ptrtoint ptr %i.bps to i64
  %i.bpv = sub i64 %i.bpt, %i.bpu
  %i.bpw = ashr exact i64 %i.bpv, 6
  %i.bpx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bpp, i64 noundef %i.bpw)
          to label %_ZNSolsEm.exit163.i unwind label %.loopexit712, !noalias !652 ; 2 uses

_ZNSolsEm.exit163.i:                              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit161.i
  %i.bpy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bpx, ptr noundef nonnull @.str.239, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit165.i unwind label %.loopexit712, !noalias !652 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit165.i: ; preds = %_ZNSolsEm.exit163.i
  %i.bpz = load float, ptr %115, align 8, !tbaa !222, !noalias !652
  %i.bqa = fpext float %i.bpz to double
  %i.bqb = fmul double %i.bqa, 1.000000e+02
  %i.bqc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bpx, double noundef %i.bqb)
          to label %_ZNSolsEd.exit.i unwind label %.loopexit712, !noalias !652 ; 4 uses

_ZNSolsEd.exit.i:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit165.i
  %i.bqd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bqc, ptr noundef nonnull @.str.240, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168.i unwind label %.loopexit712, !noalias !652 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168.i: ; preds = %_ZNSolsEd.exit.i
  %i.bqe = load ptr, ptr %i.bqc, align 8, !tbaa !58, !noalias !652
  %i.bqf = getelementptr i8, ptr %i.bqe, i64 -24
  %i.bqg = load i64, ptr %i.bqf, align 8, !noalias !652
  %i.bqh = getelementptr inbounds i8, ptr %i.bqc, i64 %i.bqg
  %i.bqi = getelementptr inbounds nuw i8, ptr %i.bqh, i64 240
  %i.bqj = load ptr, ptr %i.bqi, align 8, !tbaa !75, !noalias !652 ; 6 uses
  %.not.i.i.i314.i = icmp eq ptr %i.bqj, null
  br i1 %.not.i.i.i314.i, label %bb.mc, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i315.i

bb.mc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168.i
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc319.i unwind label %.loopexit.split-lp713, !noalias !652

.noexc319.i:                                      ; preds = %bb.mc
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i315.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168.i
  %i.bqk = getelementptr inbounds nuw i8, ptr %i.bqj, i64 56
  %i.bql = load i8, ptr %i.bqk, align 8, !tbaa !81, !noalias !652
  %.not.i1.i.i316.i = icmp eq i8 %i.bql, 0
  br i1 %.not.i1.i.i316.i, label %bb.me, label %bb.md

bb.md:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i315.i
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bqj, i64 67
  %i.bqn = load i8, ptr %i.bqm, align 1, !tbaa !41, !noalias !652
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i317.i

bb.me:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i315.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bqj)
          to label %.noexc320.i unwind label %.loopexit712, !noalias !652

.noexc320.i:                                      ; preds = %bb.me
  %i.bqo = load ptr, ptr %i.bqj, align 8, !tbaa !58, !noalias !652
  %i.bqp = getelementptr inbounds nuw i8, ptr %i.bqo, i64 48
  %i.bqq = load ptr, ptr %i.bqp, align 8, !noalias !652
  %i.bqr = invoke noundef signext i8 %i.bqq(ptr noundef nonnull align 8 dereferenceable(570) %i.bqj, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i317.i unwind label %.loopexit712, !noalias !652, !inline_history !8

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i317.i: ; preds = %.noexc320.i, %bb.md
  %.0.i.i.i318.i = phi i8 [ %i.bqn, %bb.md ], [ %i.bqr, %.noexc320.i ]
  %i.bqs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bqc, i8 noundef signext %.0.i.i.i318.i)
          to label %.noexc322.i unwind label %.loopexit712, !noalias !652

.noexc322.i:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i317.i
  %i.bqt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bqs)
          to label %_ZNSolsEPFRSoS_E.exit170.i unwind label %.loopexit712, !noalias !652 ; 0 uses

_ZNSolsEPFRSoS_E.exit170.i:                       ; preds = %.noexc322.i
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %52, ptr noundef nonnull align 8 dereferenceable(24) %48)
          to label %bb.mf unwind label %.loopexit712, !noalias !652

bb.mf:                                            ; preds = %_ZNSolsEPFRSoS_E.exit170.i
  %i.bqu = load ptr, ptr %i.bci, align 8, !tbaa !55, !noalias !652 ; 2 uses
  %i.bqv = load ptr, ptr %49, align 8, !tbaa !54, !noalias !652 ; 4 uses
  %i.bqw = ptrtoint ptr %i.bqu to i64
  %i.bqx = ptrtoint ptr %i.bqv to i64
  %i.bqy = sub i64 %i.bqw, %i.bqx                 ; 6 uses
  %.not.i.i.i.i171.i = icmp eq ptr %i.bqu, %i.bqv
  br i1 %.not.i.i.i.i171.i, label %bb.mi, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  %i.bqz = icmp slt i64 %i.bqy, 0
  br i1 %i.bqz, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i.i, !prof !113

.noexc.i.i.i:                                     ; preds = %bb.mg
  invoke void @_ZSt17__throw_bad_allocv() #31
          to label %.noexc172.i unwind label %.loopexit.split-lp718, !noalias !652

.noexc172.i:                                      ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.mg
  %i.bra = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bqy) #35
          to label %.noexc173.i unwind label %.loopexit717, !noalias !652 ; 5 uses

.noexc173.i:                                      ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i.i
  %i.brb = getelementptr inbounds nuw i8, ptr %i.bra, i64 %i.bqy ; 2 uses
  %i.brc = icmp samesign ugt i64 %i.bqy, 1
  br i1 %i.brc, label %bb.mh, label %bb.mj, !prof !662

bb.mh:                                            ; preds = %.noexc173.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bra, ptr align 1 %i.bqv, i64 %i.bqy, i1 false), !noalias !652
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit.i

bb.mi:                                            ; preds = %bb.mf
  %i.brd = getelementptr inbounds i8, ptr null, i64 %i.bqy
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit.i

bb.mj:                                            ; preds = %.noexc173.i
  %i.bre = load i8, ptr %i.bqv, align 1, !tbaa !41, !noalias !652
  store i8 %i.bre, ptr %i.bra, align 1, !tbaa !41, !noalias !652
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit.i

_ZNSt6vectorIcSaIcEEC2ERKS1_.exit.i:              ; preds = %bb.mj, %bb.mi, %bb.mh
  %i.brf = phi ptr [ %i.brb, %bb.mh ], [ %i.brd, %bb.mi ], [ %i.brb, %bb.mj ] ; 9 uses
  %i.brg = phi ptr [ %i.bra, %bb.mh ], [ null, %bb.mi ], [ %i.bra, %bb.mj ] ; 15 uses
  %144 = ptrtoaddr ptr %i.brg to i64              ; 2 uses
  %145 = ptrtoaddr ptr %i.brf to i64              ; 2 uses
  %i.brh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv6theRNGEv()
          to label %.noexc179.i444 unwind label %.loopexit.split-lp369.i.loopexit, !noalias !652 ; 2 uses

.noexc179.i444:                                   ; preds = %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit.i
  %.not5.i.i.i.i = icmp eq ptr %i.brg, %i.brf
  br i1 %.not5.i.i.i.i, label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcENSt15iterator_traitsIT_E15difference_typeES8_S8_RKT0_.exit42.i.i, label %.lr.ph.i.i.i.i445.preheader

.lr.ph.i.i.i.i445.preheader:                      ; preds = %.noexc179.i444
  %i.bri = sub i64 %145, %144                     ; 3 uses
  %min.iters.check2757 = icmp ult i64 %i.bri, 8
  br i1 %min.iters.check2757, label %.lr.ph.i.i.i.i445.preheader2794, label %vector.ph2758

vector.ph2758:                                    ; preds = %.lr.ph.i.i.i.i445.preheader
  %n.vec2759 = and i64 %i.bri, -8                 ; 3 uses
  %i.brj = getelementptr i8, ptr %i.brg, i64 %n.vec2759
  br label %vector.body2760

vector.body2760:                                  ; preds = %vector.body2760, %vector.ph2758
  %index2761 = phi i64 [ 0, %vector.ph2758 ], [ %index.next2767, %vector.body2760 ] ; 2 uses
  %vec.phi2762 = phi <4 x i32> [ zeroinitializer, %vector.ph2758 ], [ %i.brp, %vector.body2760 ]
  %vec.phi2763 = phi <4 x i32> [ zeroinitializer, %vector.ph2758 ], [ %i.brq, %vector.body2760 ]
  %next.gep2764 = getelementptr i8, ptr %i.brg, i64 %index2761 ; 2 uses
  %i.brk = getelementptr i8, ptr %next.gep2764, i64 4
  %wide.load2765 = load <4 x i8>, ptr %next.gep2764, align 1, !tbaa !41, !noalias !652
  %wide.load2766 = load <4 x i8>, ptr %i.brk, align 1, !tbaa !41, !noalias !652
  %i.brl = icmp eq <4 x i8> %wide.load2765, splat (i8 1)
  %i.brm = icmp eq <4 x i8> %wide.load2766, splat (i8 1)
  %i.brn = zext <4 x i1> %i.brl to <4 x i32>
  %i.bro = zext <4 x i1> %i.brm to <4 x i32>
  %i.brp = add <4 x i32> %vec.phi2762, %i.brn     ; 2 uses
  %i.brq = add <4 x i32> %vec.phi2763, %i.bro     ; 2 uses
  %index.next2767 = add nuw i64 %index2761, 8     ; 2 uses
  %i.brr = icmp eq i64 %index.next2767, %n.vec2759
  br i1 %i.brr, label %middle.block2768, label %vector.body2760, !llvm.loop !559

middle.block2768:                                 ; preds = %vector.body2760
  %bin.rdx2769 = add <4 x i32> %i.brq, %i.brp
  %i.brs = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx2769) ; 2 uses
  %cmp.n2770 = icmp eq i64 %i.bri, %n.vec2759
  br i1 %cmp.n2770, label %.lr.ph.i.i36.i.i.preheader, label %.lr.ph.i.i.i.i445.preheader2794

.lr.ph.i.i.i.i445.preheader2794:                  ; preds = %.lr.ph.i.i.i.i445.preheader, %middle.block2768
  %.07.i.i.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.i.i445.preheader ], [ %i.brs, %middle.block2768 ]
  %.sroa.03.06.i.i.i.i.ph = phi ptr [ %i.brg, %.lr.ph.i.i.i.i445.preheader ], [ %i.brj, %middle.block2768 ]
  br label %.lr.ph.i.i.i.i445

.lr.ph.i.i.i.i445:                                ; preds = %.lr.ph.i.i.i.i445.preheader2794, %.lr.ph.i.i.i.i445
  %.07.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i445 ], [ %.07.i.i.i.i.ph, %.lr.ph.i.i.i.i445.preheader2794 ]
  %.sroa.03.06.i.i.i.i = phi ptr [ %i.brw, %.lr.ph.i.i.i.i445 ], [ %.sroa.03.06.i.i.i.i.ph, %.lr.ph.i.i.i.i445.preheader2794 ] ; 2 uses
  %i.brt = load i8, ptr %.sroa.03.06.i.i.i.i, align 1, !tbaa !41, !noalias !652
  %i.bru = icmp eq i8 %i.brt, 1
  %i.brv = zext i1 %i.bru to i32
  %spec.select.i.i.i.i = add i32 %.07.i.i.i.i, %i.brv ; 2 uses
  %i.brw = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i174.i = icmp eq ptr %i.brw, %i.brf
  br i1 %.not.i.i.i174.i, label %.lr.ph.i.i36.i.i.preheader, label %.lr.ph.i.i.i.i445, !llvm.loop !560

.lr.ph.i.i36.i.i.preheader:                       ; preds = %.lr.ph.i.i.i.i445, %middle.block2768
  %spec.select.i.i.i.i.lcssa = phi i32 [ %i.brs, %middle.block2768 ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i445 ] ; 2 uses
  %i.brx = sub i64 %145, %144                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.brx, 8
  br i1 %min.iters.check, label %.lr.ph.i.i36.i.i.preheader2793, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i36.i.i.preheader
  %n.vec = and i64 %i.brx, -8                     ; 3 uses
  %i.bry = getelementptr i8, ptr %i.brg, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bse, %vector.body ]
  %vec.phi2754 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bsf, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.brg, i64 %index ; 2 uses
  %i.brz = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !41, !noalias !652
  %wide.load2755 = load <4 x i8>, ptr %i.brz, align 1, !tbaa !41, !noalias !652
  %i.bsa = icmp eq <4 x i8> %wide.load, zeroinitializer
  %i.bsb = icmp eq <4 x i8> %wide.load2755, zeroinitializer
  %i.bsc = zext <4 x i1> %i.bsa to <4 x i32>
  %i.bsd = zext <4 x i1> %i.bsb to <4 x i32>
  %i.bse = add <4 x i32> %vec.phi, %i.bsc         ; 2 uses
  %i.bsf = add <4 x i32> %vec.phi2754, %i.bsd     ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bsg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bsg, label %middle.block, label %vector.body, !llvm.loop !561

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bsf, %i.bse
  %i.bsh = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.brx, %n.vec
  br i1 %cmp.n, label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcENSt15iterator_traitsIT_E15difference_typeES8_S8_RKT0_.exit42.i.i, label %.lr.ph.i.i36.i.i.preheader2793

.lr.ph.i.i36.i.i.preheader2793:                   ; preds = %.lr.ph.i.i36.i.i.preheader, %middle.block
  %.07.i.i37.i.i.ph = phi i32 [ 0, %.lr.ph.i.i36.i.i.preheader ], [ %i.bsh, %middle.block ]
  %.sroa.03.06.i.i38.i.i.ph = phi ptr [ %i.brg, %.lr.ph.i.i36.i.i.preheader ], [ %i.bry, %middle.block ]
  br label %.lr.ph.i.i36.i.i

.lr.ph.i.i36.i.i:                                 ; preds = %.lr.ph.i.i36.i.i.preheader2793, %.lr.ph.i.i36.i.i
  %.07.i.i37.i.i = phi i32 [ %spec.select.i.i39.i.i, %.lr.ph.i.i36.i.i ], [ %.07.i.i37.i.i.ph, %.lr.ph.i.i36.i.i.preheader2793 ]
  %.sroa.03.06.i.i38.i.i = phi ptr [ %i.bsl, %.lr.ph.i.i36.i.i ], [ %.sroa.03.06.i.i38.i.i.ph, %.lr.ph.i.i36.i.i.preheader2793 ] ; 2 uses
  %i.bsi = load i8, ptr %.sroa.03.06.i.i38.i.i, align 1, !tbaa !41, !noalias !652
  %i.bsj = icmp eq i8 %i.bsi, 0
  %i.bsk = zext i1 %i.bsj to i32
  %spec.select.i.i39.i.i = add i32 %.07.i.i37.i.i, %i.bsk ; 2 uses
  %i.bsl = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i38.i.i, i64 1 ; 2 uses
  %.not.i.i40.i.i = icmp eq ptr %i.bsl, %i.brf
  br i1 %.not.i.i40.i.i, label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcENSt15iterator_traitsIT_E15difference_typeES8_S8_RKT0_.exit42.i.i, label %.lr.ph.i.i36.i.i, !llvm.loop !562

_ZSt5countIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcENSt15iterator_traitsIT_E15difference_typeES8_S8_RKT0_.exit42.i.i: ; preds = %.lr.ph.i.i36.i.i, %middle.block, %.noexc179.i444
  %i.bsm = phi i32 [ 0, %.noexc179.i444 ], [ %spec.select.i.i.i.i.lcssa, %middle.block ], [ %spec.select.i.i.i.i.lcssa, %.lr.ph.i.i36.i.i ]
  %.0.lcssa.i.i41.i.i = phi i32 [ 0, %.noexc179.i444 ], [ %i.bsh, %middle.block ], [ %spec.select.i.i39.i.i, %.lr.ph.i.i36.i.i ]
  %.not65.i.i = icmp eq i32 %i.bpf, 0
  br i1 %.not65.i.i, label %._crit_edge.i.i448, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcENSt15iterator_traitsIT_E15difference_typeES8_S8_RKT0_.exit42.i.i
  %.pre383.i = load ptr, ptr %47, align 8, !tbaa !45, !noalias !652
  br label %bb.mk

bb.mk:                                            ; preds = %bb.ng, %.lr.ph.i.i
  %i.bsn = phi ptr [ %.pre383.i, %.lr.ph.i.i ], [ %i.bxo, %bb.ng ] ; 3 uses
  %.sroa.8.0.i = phi ptr [ %i.brf, %.lr.ph.i.i ], [ %.sroa.8.1.i, %bb.ng ] ; 4 uses
  %i.bso = phi ptr [ %i.brf, %.lr.ph.i.i ], [ %i.bxp, %bb.ng ]
  %.02768.i.i = phi i32 [ %i.bpf, %.lr.ph.i.i ], [ %.1.i.i, %bb.ng ] ; 2 uses
  %.02867.i.i = phi i32 [ %i.bsm, %.lr.ph.i.i ], [ %.2.i.i, %bb.ng ] ; 5 uses
  %.03066.i.i = phi i32 [ %.0.lcssa.i.i41.i.i, %.lr.ph.i.i ], [ %.232.i.i, %bb.ng ] ; 5 uses
  %i.bsp = load ptr, ptr %i.bch, align 8, !tbaa !46, !noalias !652 ; 4 uses
  %i.bsq = ptrtoint ptr %i.bsp to i64             ; 2 uses
  %i.bsr = ptrtoint ptr %i.bsn to i64
  %i.bss = sub i64 %i.bsq, %i.bsr
  %i.bst = lshr exact i64 %i.bss, 6
  %i.bsu = trunc i64 %i.bst to i32                ; 2 uses
  %i.bsv = icmp eq i32 %i.bsu, 0
  br i1 %i.bsv, label %_ZN2cv3RNGclEj.exit.i.i, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  %i.bsw = load i64, ptr %i.brh, align 8, !tbaa !640, !noalias !652 ; 2 uses
  %i.bsx = and i64 %i.bsw, 4294967295
  %i.bsy = mul nuw i64 %i.bsx, 4164903690
  %i.bsz = lshr i64 %i.bsw, 32
  %i.bta = add nuw i64 %i.bsy, %i.bsz             ; 2 uses
  store i64 %i.bta, ptr %i.brh, align 8, !tbaa !640, !noalias !652
  %i.btb = trunc i64 %i.bta to i32
  %i.btc = urem i32 %i.btb, %i.bsu
  %i.btd = sext i32 %i.btc to i64
  br label %_ZN2cv3RNGclEj.exit.i.i

_ZN2cv3RNGclEj.exit.i.i:                          ; preds = %bb.ml, %bb.mk
  %i.bte = phi i64 [ %i.btd, %bb.ml ], [ 0, %bb.mk ] ; 3 uses
  %i.btf = getelementptr inbounds nuw i8, ptr %i.brg, i64 %i.bte ; 4 uses
  %i.btg = load i8, ptr %i.btf, align 1, !tbaa !41, !noalias !652
  %.not34.i.i = icmp eq i8 %i.btg, 0
  br i1 %.not34.i.i, label %bb.mo, label %bb.mm

bb.mm:                                            ; preds = %_ZN2cv3RNGclEj.exit.i.i
  %i.bth = sitofp i32 %.02867.i.i to float
  %i.bti = add nsw i32 %.03066.i.i, %.02867.i.i
  %i.btj = sitofp i32 %i.bti to float
  %i.btk = fdiv float %i.bth, %i.btj
  %i.btl = load float, ptr %i.cw, align 4, !tbaa !223, !noalias !652
  %i.btm = fcmp olt float %i.btk, %i.btl
  %i.btn = icmp sgt i32 %.03066.i.i, 0
  %or.cond.i.i = select i1 %i.btm, i1 %i.btn, i1 false
  %i.bto = load i8, ptr %i.cx, align 8, !range !110
  %i.btp = icmp eq i8 %i.bto, 0
  %or.cond690 = select i1 %or.cond.i.i, i1 %i.btp, i1 false
  br i1 %or.cond690, label %bb.ng, label %bb.mn, !llvm.loop !563

bb.mn:                                            ; preds = %bb.mm
  %i.btq = add nsw i32 %.02867.i.i, -1
  br label %bb.mp

bb.mo:                                            ; preds = %_ZN2cv3RNGclEj.exit.i.i
  %i.btr = add nsw i32 %.03066.i.i, -1
  br label %bb.mp

bb.mp:                                            ; preds = %bb.mo, %bb.mn
  %.131.i.i = phi i32 [ %.03066.i.i, %bb.mn ], [ %i.btr, %bb.mo ]
  %.129.i.i = phi i32 [ %i.btq, %bb.mn ], [ %.02867.i.i, %bb.mo ]
  %i.bts = getelementptr inbounds [64 x i8], ptr %i.bsn, i64 %i.bte ; 2 uses
  %i.btt = getelementptr inbounds nuw i8, ptr %i.bts, i64 64 ; 3 uses
  %.not.i.i43.i.i = icmp eq ptr %i.btt, %i.bsp
  br i1 %.not.i.i43.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP8ObdImageSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i.i.i, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  %i.btu = ptrtoint ptr %i.btt to i64
  %i.btv = sub i64 %i.bsq, %i.btu
  %i.btw = ashr exact i64 %i.btv, 6               ; 2 uses
  %i.btx = icmp sgt i64 %i.btw, 0
  br i1 %i.btx, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP8ObdImageSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.mq, %_ZN8ObdImageaSEOS_.exit.i.i
  %.012.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bwa, %_ZN8ObdImageaSEOS_.exit.i.i ], [ %i.btw, %bb.mq ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bvz, %_ZN8ObdImageaSEOS_.exit.i.i ], [ %i.bts, %bb.mq ] ; 14 uses
  %.0910.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bvy, %_ZN8ObdImageaSEOS_.exit.i.i ], [ %i.btt, %bb.mq ] ; 16 uses
  %i.bty = load ptr, ptr %.0811.i.i.i.i.i.i.i.i.i, align 8, !tbaa !40, !noalias !652 ; 6 uses
  %i.btz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i, i64 16 ; 4 uses
  %i.bua = icmp eq ptr %i.bty, %i.btz
  %i.bub = load ptr, ptr %.0910.i.i.i.i.i.i.i.i.i, align 8, !tbaa !40, !noalias !652 ; 5 uses
  %i.buc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i, i64 16 ; 6 uses
  %i.bud = icmp eq ptr %i.bub, %i.buc             ; 2 uses
  br i1 %i.bua, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i51.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  br i1 %i.bud, label %bb.mr, label %.thread.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i51.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  br i1 %i.bud, label %bb.mr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i

bb.mr:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i51.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i.i
  %i.bue = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.buf = load i64, ptr %i.bue, align 8, !tbaa !42, !noalias !652 ; 3 uses
  %i.bug = icmp ult i64 %i.buf, 16
  call void @llvm.assume(i1 %i.bug)
  switch i64 %i.buf, label %bb.mt [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i
    i64 1, label %bb.ms
  ]

bb.ms:                                            ; preds = %bb.mr
  %i.buh = load i8, ptr %i.bub, align 1, !tbaa !41, !noalias !652
  store i8 %i.buh, ptr %i.bty, align 1, !tbaa !41, !noalias !652
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i

bb.mt:                                            ; preds = %bb.mr
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bty, ptr align 1 %i.bub, i64 %i.buf, i1 false), !noalias !652
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i: ; preds = %bb.mt, %bb.ms, %bb.mr
  %i.bui = load i64, ptr %i.bue, align 8, !tbaa !42, !noalias !652 ; 2 uses
  %i.buj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i, i64 8
  store i64 %i.bui, ptr %i.buj, align 8, !tbaa !42, !noalias !652
  %i.buk = load ptr, ptr %.0811.i.i.i.i.i.i.i.i.i, align 8, !tbaa !40, !noalias !652
  %i.bul = getelementptr inbounds nuw i8, ptr %i.buk, i64 %i.bui
  store i8 0, ptr %i.bul, align 1, !tbaa !41, !noalias !652
  %.pre.i.i53.i.i = load ptr, ptr %.0910.i.i.i.i.i.i.i.i.i, align 8, !tbaa !40, !noalias !652
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i

.thread.i.i.i.i:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i.i
  %i.bum = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i, i64 8
  store ptr %i.bub, ptr %.0811.i.i.i.i.i.i.i.i.i, align 8, !tbaa !40, !noalias !652
  %i.bun = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i, i64 8
  %i.buo = load i64, ptr %i.bun, align 8, !tbaa !42, !noalias !652
  store i64 %i.buo, ptr %i.bum, align 8, !tbaa !42, !noalias !652
  %i.bup = load i64, ptr %i.buc, align 8, !tbaa !41, !noalias !652
  store i64 %i.bup, ptr %i.btz, align 8, !tbaa !41, !noalias !652
  br label %bb.mv

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i51.i.i
  %i.buq = load i64, ptr %i.btz, align 8, !tbaa !41, !noalias !652
  store ptr %i.bub, ptr %.0811.i.i.i.i.i.i.i.i.i, align 8, !tbaa !40, !noalias !652
  %i.bur = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i, i64 8
  %i.bus = load i64, ptr %i.bur, align 8, !tbaa !42, !noalias !652
  %i.but = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i, i64 8
  store i64 %i.bus, ptr %i.but, align 8, !tbaa !42, !noalias !652
  %i.buu = load i64, ptr %i.buc, align 8, !tbaa !41, !noalias !652
  store i64 %i.buu, ptr %i.btz, align 8, !tbaa !41, !noalias !652
  %.not.i.i52.i.i = icmp eq ptr %i.bty, null
  br i1 %.not.i.i52.i.i, label %bb.mv, label %bb.mu

bb.mu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i
end_hunk_1
