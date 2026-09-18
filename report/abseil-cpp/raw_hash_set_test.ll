Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/raw_hash_set_test?download=true
inline.NumInlined: 72231
inline.NumDeleted: 15383
loop-unroll.NumCompletelyUnrolled: 68
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 113
begin_hunk_0_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_146SmallTableResizeTest_InsertIntoSmallTable_TestINS2_10ValueTableINS2_12AlignedValueItLi5EEELb1ELb1ESaIS6_EEEE8TestBodyEv:bb.a

bb.ao:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb1ELb1EEEJEE10find_largeIS6_EENS8_8iteratorERKS6_m.exit.i100
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.aq unwind label %bb.au

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #43
  %i.fo = load ptr, ptr %i.k, align 8, !tbaa !182 ; 2 uses
  %.not.i.i112 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i112, label %_ZNK7testing15AssertionResult15failure_messageEv.exit113, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !160
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit113

_ZNK7testing15AssertionResult15failure_messageEv.exit113: ; preds = %bb.ar, %bb.aq
  %i.fq = phi ptr [ %i.fp, %bb.ar ], [ @.str.31, %bb.aq ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1310, ptr noundef %i.fq)
          to label %bb.as unwind label %bb.av

bb.as:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit113
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.at unwind label %bb.aw

bb.at:                                            ; preds = %bb.as
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #43
  %i.fr = load ptr, ptr %13, align 8, !tbaa !170  ; 3 uses
  %.not.i.i114 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i114, label %_ZN7testing7MessageD2Ev.exit116, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i115

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i115: ; preds = %bb.at
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !141
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(128) %i.fr) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit116

_ZN7testing7MessageD2Ev.exit116:                  ; preds = %bb.at, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #43
  br label %bb.ay

bb.au:                                            ; preds = %bb.ap
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit119

bb.av:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit113
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.aw:                                            ; preds = %bb.as
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #43
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.pn39 = phi { ptr, i32 } [ %i.fx, %bb.aw ], [ %i.fw, %bb.av ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #43
  %i.fy = load ptr, ptr %13, align 8, !tbaa !170  ; 3 uses
  %.not.i.i117 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i117, label %_ZN7testing7MessageD2Ev.exit119, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118: ; preds = %bb.ax
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !141
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8
  call void %i.gb(ptr noundef nonnull align 8 dereferenceable(128) %i.fy) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit119

_ZN7testing7MessageD2Ev.exit119:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118, %bb.ax, %bb.au
  %.pn39.pn = phi { ptr, i32 } [ %i.fv, %bb.au ], [ %.pn39, %bb.ax ], [ %.pn39, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #43
  br label %bb.ba

bb.ay:                                            ; preds = %bb.an, %_ZN7testing7MessageD2Ev.exit116
  %i.gc = load ptr, ptr %i.k, align 8, !tbaa !182 ; 4 uses
  %.not.i.i120 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i120, label %_ZN7testing15AssertionResultD2Ev.exit124, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !160 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 16 ; 2 uses
  %i.gf = icmp eq ptr %i.gd, %i.ge
  br i1 %i.gf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i121: ; preds = %bb.az
  %i.gg = load i64, ptr %i.ge, align 8, !tbaa !161
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gh) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i121
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef 32) #44
  br label %_ZN7testing15AssertionResultD2Ev.exit124

_ZN7testing15AssertionResultD2Ev.exit124:         ; preds = %bb.ay, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #43
  %i.gi = load i32, ptr %i.d, align 4, !tbaa !188 ; 2 uses
  %i.gj = add nsw i32 %i.gi, 1                    ; 2 uses
  store i32 %i.gj, ptr %i.d, align 4, !tbaa !188
  %i.gk = load i32, ptr %i.a, align 4, !tbaa !188 ; 2 uses
  %.not.not = icmp slt i32 %i.gi, %i.gk
  br i1 %.not.not, label %.lr.ph, label %._crit_edge, !llvm.loop !13071

bb.ba:                                            ; preds = %_ZN7testing7MessageD2Ev.exit119, %bb.ao
  %.pn39.pn.pn = phi { ptr, i32 } [ %.pn39.pn, %_ZN7testing7MessageD2Ev.exit119 ], [ %i.fn, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #43
  br label %bb.bc

bb.bb:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %_ZN7testing7MessageD2Ev.exit73
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #43
  br label %.loopexit

bb.bc:                                            ; preds = %bb.ba, %_ZN7testing7MessageD2Ev.exit80
  %.pn39.pn.pn.pn = phi { ptr, i32 } [ %.pn39.pn.pn, %bb.ba ], [ %.pn34.pn.pn, %_ZN7testing7MessageD2Ev.exit80 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #43
  br label %bb.bf

._crit_edge:                                      ; preds = %_ZN7testing15AssertionResultD2Ev.exit124, %bb.t
  %i.gl = phi i32 [ %i.bg, %bb.t ], [ %i.gk, %_ZN7testing15AssertionResultD2Ev.exit124 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #43
  %i.gm = add nsw i32 %i.gl, 1
  store i32 %i.gm, ptr %i.a, align 4, !tbaa !188
  %i.gn = icmp slt i32 %i.gl, 31
  br i1 %i.gn, label %bb.b, label %.loopexit, !llvm.loop !13072

.loopexit:                                        ; preds = %._crit_edge, %bb.bb, %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  %.val2.i.i = load i64, ptr %2, align 8          ; 2 uses
  %i.go = and i64 %.val2.i.i, 255
  %i.gp = icmp ne i64 %i.go, 0
  call void @llvm.assume(i1 %i.gp)
  %i.gq = and i64 %.val2.i.i, 254
  %i.gr = icmp eq i64 %i.gq, 0
  br i1 %i.gr, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb1ELb1EEEJEED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #43
  store ptr %2, ptr %1, align 8, !tbaa !782
  invoke void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 10, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_12_GLOBAL__N_111ValuePolicyINS5_12AlignedValueItLi5EEELb1ELb1EEEJEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSD_SE_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i unwind label %bb.be

.noexc.i:                                         ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  %.val2.i.i.i = load i64, ptr %2, align 8        ; 2 uses
  %i.gs = and i64 %.val2.i.i.i, 255               ; 2 uses
  %notmask.i.i.i.i.i.i125 = shl nsw i64 -1, %i.gs ; 4 uses
  %i.gt = add nsw i64 %notmask.i.i.i.i.i.i125, 281474976710655
  %i.gu = or i64 %i.gt, %notmask.i.i.i.i.i.i125
  %i.gv = icmp eq i64 %i.gu, -1
  call void @llvm.assume(i1 %i.gv)
  %i.gw = icmp ne i64 %i.gs, 0
  call void @llvm.assume(i1 %i.gw)
  %i.gx = icmp samesign ugt i64 %notmask.i.i.i.i.i.i125, -281474976710657
  call void @llvm.assume(i1 %i.gx)
  %i.gy = and i64 %.val2.i.i.i, 65536
  %.sroa.0.0.copyload.i.i.i.pre.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !161
  %i.gz = xor i64 %notmask.i.i.i.i.i.i125, -1
  %i.ha = icmp ne i64 %i.gy, 0
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.gz, ptr noundef %.sroa.0.0.copyload.i.i.i.pre.i.i.i, i64 noundef 10, i64 noundef 2, i1 noundef zeroext %i.ha)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb1ELb1EEEJEED2Ev.exit unwind label %bb.be

bb.be:                                            ; preds = %.noexc.i, %bb.bd
  %i.hb = landingpad { ptr, i32 }
          catch ptr null
  %i.hc = extractvalue { ptr, i32 } %i.hb, 0
  call void @__clang_call_terminate(ptr %i.hc) #48
  unreachable

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb1ELb1EEEJEED2Ev.exit: ; preds = %.loopexit, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  ret void

bb.bf:                                            ; preds = %bb.bc, %bb.u, %bb.g
  %.pn39.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn39.pn.pn.pn, %bb.bc ], [ %.pn27.pn.pn, %bb.u ], [ %i.ae, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  call fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb1ELb1EEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  resume { ptr, i32 } %.pn39.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 2 dereferenceable(10) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load i32, ptr %4, align 4, !tbaa !188, !noalias !13094 ; 3 uses
  %i.b = and i32 %i.a, -65536
  %isneg.i = icmp slt i32 %i.a, 0
  %.sroa.6.6.insert.insert.i = select i1 %isneg.i, i64 -4294967296, i64 0
  %8 = load i64, ptr %3, align 2, !noalias !13094
  %i.c = zext i32 %i.b to i64
  %i.d = or disjoint i64 %.sroa.6.6.insert.insert.i, %i.c
  %i.e = and i32 %i.a, 65535
  %i.f = zext nneg i32 %i.e to i64
  %i.g = or disjoint i64 %i.d, %i.f
  %i.h = icmp eq i64 %8, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %_ZN7testing8internal11CmpHelperEQIN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEiEENS_15AssertionResultEPKcSA_RKT_RKT0_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #43, !noalias !13095
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13096)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13097)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13098)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43, !noalias !13099
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5), !noalias !13099
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  invoke void @_ZN7testing8internal20PrintBytesInObjectToEPKhmPSo(ptr noundef nonnull align 2 dereferenceable(10) %3, i64 noundef 10, ptr noundef nonnull %i.i)
          to label %_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEE5PrintERKS7_PSo.exit.i.i.i.i.i unwind label %bb.g, !noalias !13099

_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEE5PrintERKS7_PSo.exit.i.i.i.i.i: ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !13100)
  call void @llvm.experimental.noalias.scope.decl(metadata !13101)
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  store ptr %i.j, ptr %6, align 8, !tbaa !164, !alias.scope !13102, !noalias !13095
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !165, !alias.scope !13102, !noalias !13095
  store i8 0, ptr %i.j, align 8, !tbaa !161, !alias.scope !13102, !noalias !13095
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !184, !noalias !13103 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !noalias !13103 ; 2 uses
  %i.p = icmp ugt ptr %i.m, %i.o
  %.08.i.i.i.i.i.i.i.i = select i1 %i.p, ptr %i.m, ptr %i.o ; 2 uses
  %.not5.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEE5PrintERKS7_PSo.exit.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !185, !noalias !13103 ; 2 uses
  %i.s = ptrtoint ptr %.08.i.i.i.i.i.i.i.i to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.r, i64 noundef %i.u)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i.i.i.i unwind label %bb.e, !noalias !13095 ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %6, align 8, !tbaa !160, !alias.scope !13102, !noalias !13095 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.j
  br i1 %i.y, label %.body.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.z = load i64, ptr %i.j, align 8, !tbaa !161, !alias.scope !13102, !noalias !13095
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #44, !noalias !13095
  br label %.body.i.i.i.i.i

bb.f:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEE5PrintERKS7_PSo.exit.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i.i.i.i unwind label %bb.e, !noalias !13095

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i.i.i.i: ; preds = %bb.f, %bb.d
  %i.ac = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8, !noalias !13099 ; 2 uses
  store ptr %i.ac, ptr %5, align 8, !tbaa !141, !noalias !13099
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8, !noalias !13099
  %i.ae = getelementptr i8, ptr %i.ac, i64 -24
  %i.af = load i64, ptr %i.ae, align 8, !noalias !13095
  %i.ag = getelementptr inbounds i8, ptr %5, i64 %i.af
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !141, !noalias !13099
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8, !noalias !13099
  store ptr %i.ah, ptr %i.i, align 8, !tbaa !141, !noalias !13099
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ai, align 8, !tbaa !141, !noalias !13099
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !160, !noalias !13099 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i.i.i.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !161, !noalias !13099
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #44, !noalias !13095
  br label %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i.i

bb.g:                                             ; preds = %bb.c
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

common.resume.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i, %.body.i.i.i.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i, %.body.i.i.i.i.i ], [ %.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.e, %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.ap, %bb.g ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.w, %bb.e ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #43, !noalias !13095
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43, !noalias !13099
  br label %common.resume.i.i

_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ai, align 8, !tbaa !141, !noalias !13099
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aq) #43, !noalias !13095
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8, !noalias !13099 ; 2 uses
  store ptr %i.ar, ptr %5, align 8, !tbaa !141, !noalias !13099
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8, !noalias !13099
  %i.at = getelementptr i8, ptr %i.ar, i64 -24
  %i.au = load i64, ptr %i.at, align 8, !noalias !13095
  %i.av = getelementptr inbounds i8, ptr %5, i64 %i.au
  store ptr %i.as, ptr %i.av, align 8, !tbaa !141, !noalias !13099
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.aw, align 8, !tbaa !187, !noalias !13099
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ax) #43, !noalias !13095
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43, !noalias !13099
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #43, !noalias !13095
  invoke void @_ZN7testing13PrintToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIiN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i.i unwind label %bb.i, !noalias !13095

_ZN7testing8internal33FormatForComparisonFailureMessageIiN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i.i: ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i.i
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, i1 noundef zeroext false)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIiN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i.i
  %i.ay = load ptr, ptr %7, align 8, !tbaa !160, !noalias !13095 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !161, !noalias !13095
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43, !noalias !13095
  %i.bd = load ptr, ptr %6, align 8, !tbaa !160, !noalias !13095 ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.j
  br i1 %i.be, label %_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEiEENS_15AssertionResultEPKcSA_RKT_RKT0_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.bf = load i64, ptr %i.j, align 8, !tbaa !161, !noalias !13095
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #44
  br label %_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEiEENS_15AssertionResultEPKcSA_RKT_RKT0_.exit.i

bb.i:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i

bb.j:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIiN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i.i
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = load ptr, ptr %7, align 8, !tbaa !160, !noalias !13095 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i: ; preds = %bb.j
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !161, !noalias !13095
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.bh, %bb.i ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i ], [ %i.bi, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43, !noalias !13095
  %i.bo = load ptr, ptr %6, align 8, !tbaa !160, !noalias !13095 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.j
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i
  %i.bq = load i64, ptr %i.j, align 8, !tbaa !161, !noalias !13095
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43, !noalias !13095
  br label %common.resume.i.i

_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEiEENS_15AssertionResultEPKcSA_RKT_RKT0_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43, !noalias !13095
  br label %_ZN7testing8internal11CmpHelperEQIN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEiEENS_15AssertionResultEPKcSA_RKT_RKT0_.exit

_ZN7testing8internal11CmpHelperEQIN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEiEENS_15AssertionResultEPKcSA_RKT_RKT0_.exit: ; preds = %bb.b, %_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052618container_internal12_GLOBAL__N_112AlignedValueItLi5EEEiEENS_15AssertionResultEPKcSA_RKT_RKT0_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_12AlignedValueItLi5EEELb1ELb1EEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
