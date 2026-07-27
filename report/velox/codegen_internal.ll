inline.NumInlined: 658
inline.NumDeleted: 265
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5arrow7compute8internal22ExampleParametricTypesEv:bb.a
_ZNSt6vectorIaSaIaEED2Ev.exit65:                  ; preds = %bb.bf, %bb.bg
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #22
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit65, %bb.ba
  %.531 = phi ptr [ %.430, %_ZNSt6vectorIaSaIaEED2Ev.exit65 ], [ %i.an, %bb.ba ]
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt6vectorIaSaIaEED2Ev.exit65 ], [ %i.cx, %bb.ba ]
  %.3 = phi i1 [ %.2, %_ZNSt6vectorIaSaIaEED2Ev.exit65 ], [ false, %bb.ba ]
  %i.dw = load ptr, ptr %9, align 8, !tbaa !16    ; 3 uses
  %.not.i.i.i66 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i66, label %_ZNSt6vectorIaSaIaEED2Ev.exit67, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !19
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dw to i64
  %i.eb = sub i64 %i.dz, %i.ea
  call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.eb) #23
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit67

_ZNSt6vectorIaSaIaEED2Ev.exit67:                  ; preds = %bb.bh, %bb.bi
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #22
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit67, %bb.az
  %.632 = phi ptr [ %.531, %_ZNSt6vectorIaSaIaEED2Ev.exit67 ], [ %.228, %bb.az ]
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNSt6vectorIaSaIaEED2Ev.exit67 ], [ %i.cw, %bb.az ]
  %.4 = phi i1 [ %.3, %_ZNSt6vectorIaSaIaEED2Ev.exit67 ], [ false, %bb.az ]
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.ay
  %.733 = phi ptr [ %.632, %bb.bj ], [ %i.ac, %bb.ay ]
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.bj ], [ %i.cv, %bb.ay ]
  %.5 = phi i1 [ %.4, %bb.bj ], [ false, %bb.ay ]
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #22
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #22
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.ax
  %.834 = phi ptr [ %.733, %bb.bk ], [ %i.ac, %bb.ax ] ; 2 uses
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.bk ], [ %i.cu, %bb.ax ] ; 2 uses
  %.6 = phi i1 [ %.5, %bb.bk ], [ false, %bb.ax ] ; 2 uses
  %i.ec = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.bl
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !14
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68, %bb.aw
  %.935 = phi ptr [ %i.ac, %bb.aw ], [ %.834, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %.834, %bb.bl ]
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ct, %bb.aw ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %.pn.pn.pn.pn.pn.pn.pn, %bb.bl ]
  %.7 = phi i1 [ false, %bb.aw ], [ %.6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %.6, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.bm

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %bb.av
  %.1036 = phi ptr [ %.935, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %i.s, %bb.av ]
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %i.cs, %bb.av ]
  %.8 = phi i1 [ %.7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ false, %bb.av ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #22
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.au
  %.11 = phi ptr [ %.1036, %bb.bm ], [ %.127, %bb.au ]
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bm ], [ %i.cr, %bb.au ]
  %.9 = phi i1 [ %.8, %bb.bm ], [ false, %bb.au ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #22
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.at
  %.12 = phi ptr [ %.11, %bb.bn ], [ %.026, %bb.at ] ; 2 uses
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bn ], [ %i.cq, %bb.at ]
  %.10 = phi i1 [ %.9, %bb.bn ], [ false, %bb.at ]
  %i.eh = icmp eq ptr %0, %.12
  %or.cond = select i1 %.10, i1 true, i1 %i.eh
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.bo, %.preheader
  %i.ei = phi ptr [ %i.ej, %.preheader ], [ %.12, %bb.bo ]
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 -16 ; 3 uses
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ej) #22
  %i.ek = icmp eq ptr %i.ej, %0
  br i1 %i.ek, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5arrow7compute8internal22ExampleParametricTypesEvE24example_parametric_types) #22
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_ZN5arrow10decimal128Eii(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare void @_ZN5arrow8durationENS_8TimeUnit4typeE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, i32 noundef) local_unnamed_addr #3

declare void @_ZN5arrow9timestampENS_8TimeUnit4typeE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, i32 noundef) local_unnamed_addr #3

declare void @_ZN5arrow6time32ENS_8TimeUnit4typeE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, i32 noundef) local_unnamed_addr #3

declare void @_ZN5arrow6time64ENS_8TimeUnit4typeE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, i32 noundef) local_unnamed_addr #3

declare void @_ZN5arrow17fixed_size_binaryEi(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, i32 noundef) local_unnamed_addr #3

declare void @_ZN5arrow4listESt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef align 8) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4nullEv() local_unnamed_addr #3

declare void @_ZN5arrow10large_listESt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef align 8) local_unnamed_addr #3

declare void @_ZN5arrow15fixed_size_listESt10shared_ptrINS_5FieldEEi(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef align 8, i32 noundef) local_unnamed_addr #3

declare void @_ZN5arrow5fieldENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_8DataTypeEEbS6_IKNS_16KeyValueMetadataEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.0") align 8, ptr noundef align 8, ptr noundef align 8, i1 noundef zeroext, ptr noundef align 8) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !24
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.12) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.d, ptr %i.a, align 8, !tbaa !25
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !20
  %i.g = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.g, ptr %i.b, align 8, !tbaa !14
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !14
  store i8 %i.i, ptr %i.h, align 1, !tbaa !14
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !26
  %i.l = load ptr, ptr %0, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

declare void @_ZN5arrow7struct_ESt16initializer_listISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_8DataTypeEEEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr, i64) local_unnamed_addr #3

declare void @_ZN5arrow12sparse_unionESt6vectorISt10shared_ptrINS_5FieldEESaIS3_EES0_IaSaIaEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef align 8, ptr noundef align 8) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @_ZN5arrow11dense_unionESt6vectorISt10shared_ptrINS_5FieldEESaIS3_EES0_IaSaIaEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef align 8, ptr noundef align 8) local_unnamed_addr #3

declare void @_ZN5arrow10dictionaryERKSt10shared_ptrINS_8DataTypeEES4_b(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int32Ev() local_unnamed_addr #3

declare void @_ZN5arrow3mapESt10shared_ptrINS_8DataTypeEES2_b(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef align 8, ptr noundef align 8, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow8DataTypeEESaIS3_EEC2ESt16initializer_listIS3_ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt6vectorISt10shared_ptrIN5arrow8DataTypeEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.idx6 = shl nuw nsw i64 %2, 4                  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx6
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow8DataTypeEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.b = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx6) #25 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.d, align 8, !tbaa !30
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i
  %.011.i.i.i.i.i = phi ptr [ %i.n, %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.b, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.m, %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.preheader.i ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9    ; 2 uses
  %i.g = load <2 x ptr>, ptr %.0810.i.i.i.i.i, align 8, !tbaa !13
  store <2 x ptr> %i.g, ptr %.011.i.i.i.i.i, align 8, !tbaa !13
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.a

bb.a:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %i.h, align 4, !tbaa !15
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !15
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, %i.a
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !31

.loopexit:                                        ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt6vectorISt10shared_ptrIN5arrow8DataTypeEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorISt10shared_ptrIN5arrow8DataTypeEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ], [ %i.n, %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.o, align 8, !tbaa !33
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !34     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9    ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !40
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !43
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !43
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !15
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i, !prof !44

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !45

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !46
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #23
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !38
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !40
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !47
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !47
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !15
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !44

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !38
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !40
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !47
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !47
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !15
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !44

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow8DataTypeEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !27     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow8DataTypeEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow8DataTypeEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN5arrow8DataTypeEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9    ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow8DataTypeEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !40
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !48
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !48
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow8DataTypeEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !15
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow8DataTypeEEEvPT_.exit.i.i, !prof !44

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow8DataTypeEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow8DataTypeEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow8DataTypeEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !49

_ZSt8_DestroyIPSt10shared_ptrIN5arrow8DataTypeEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow8DataTypeEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !27
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow8DataTypeEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN5arrow8DataTypeEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow8DataTypeEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow8DataTypeEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow8DataTypeEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow8DataTypeEES3_EvT_S5_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !30
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #23
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow8DataTypeEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow8DataTypeEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow8DataTypeEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #1

; Function Attrs: mustprogress norecurse nounwind uwtable
define void @_ZN5arrow7compute8internal9FirstTypeEPNS0_13KernelContextERKSt6vectorINS_10TypeHolderESaIS5_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Result") align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !50     ; 2 uses
  store ptr null, ptr %0, align 8, !tbaa !52
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load <2 x ptr>, ptr %i.a, align 8, !tbaa !55
  store <2 x ptr> %i.c, ptr %i.b, align 8, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9    ; 3 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !9
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5arrow6ResultINS_10TypeHolderEEC2IRKS1_vEEOT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 4, !tbaa !15
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !15
  br label %_ZN5arrow6ResultINS_10TypeHolderEEC2IRKS1_vEEOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow6ResultINS_10TypeHolderEEC2IRKS1_vEEOT_.exit

_ZN5arrow6ResultINS_10TypeHolderEEC2IRKS1_vEEOT_.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define void @_ZN5arrow7compute8internal8LastTypeEPNS0_13KernelContextERKSt6vectorINS_10TypeHolderESaIS5_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Result") align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -24
  store ptr null, ptr %0, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load <2 x ptr>, ptr %i.c, align 8, !tbaa !55
  store <2 x ptr> %i.e, ptr %i.d, align 8, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !9    ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !9
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5arrow6ResultINS_10TypeHolderEEC2IRKS1_vEEOT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.i, align 4, !tbaa !15
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !15
  br label %_ZN5arrow6ResultINS_10TypeHolderEEC2IRKS1_vEEOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow6ResultINS_10TypeHolderEEC2IRKS1_vEEOT_.exit

_ZN5arrow6ResultINS_10TypeHolderEEC2IRKS1_vEEOT_.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5arrow7compute8internal14ListValuesTypeEPNS0_13KernelContextERKSt6vectorINS_10TypeHolderESaIS5_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Result") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !57
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !62   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !64   ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.critedge10, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i8, ptr %i.j, align 8, !tbaa !69, !range !74, !noundef !75
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.preheader, label %.critedge10

.preheader:                                       ; preds = %bb.b, %.critedge
  %i.m = phi ptr [ %i.r, %.critedge ], [ %i.g, %bb.b ] ; 3 uses
  %.0.in = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.0 = load i32, ptr %.0.in, align 8, !tbaa !76  ; 2 uses
  switch i32 %.0, label %_ZN5arrow7is_listENS_4Type4typeE.exit [
    i32 25, label %.critedge
    i32 36, label %.critedge
    i32 32, label %.critedge
  ]

_ZN5arrow7is_listENS_4Type4typeE.exit:            ; preds = %.preheader
  %.off.i = add i32 %.0, -41
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %.critedge, label %.critedge10

.critedge:                                        ; preds = %.preheader, %.preheader, %.preheader, %_ZN5arrow7is_listENS_4Type4typeE.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !62
  br label %.preheader, !llvm.loop !90

.critedge10:                                      ; preds = %_ZN5arrow7is_listENS_4Type4typeE.exit, %bb.b, %bb.a
  %.lcssa.sink = phi ptr [ %i.g, %bb.b ], [ %i.g, %bb.a ], [ %i.m, %_ZN5arrow7is_listENS_4Type4typeE.exit ]
  store ptr null, ptr %0, align 8, !tbaa !52
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.lcssa.sink, ptr %i.s, align 8, !tbaa !91
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5arrow7compute8internal23EnsureDictionaryDecodedEPSt6vectorINS_10TypeHolderESaIS3_EE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !57     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !94   ; 2 uses
  %.not14.i = icmp eq ptr %i.c, %i.a
  br i1 %.not14.i, label %_ZN5arrow7compute8internal23EnsureDictionaryDecodedEPNS_10TypeHolderEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %.015.i = phi ptr [ %i.ai, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = load ptr, ptr %.015.i, align 8, !tbaa !91 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !76
  %i.g = icmp eq i32 %i.f, 29
  br i1 %i.g, label %bb.b, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !9    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.l, align 4, !tbaa !15
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !15
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i: ; preds = %bb.e, %bb.d, %bb.b
  store ptr %i.i, ptr %.015.i, align 8, !tbaa !91
  %i.q = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  store ptr %i.i, ptr %i.q, align 8, !tbaa !55
  %i.r = getelementptr inbounds nuw i8, ptr %.015.i, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !9    ; 8 uses
  store ptr %i.k, ptr %i.r, align 8, !tbaa !9
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
end_hunk_0
begin_hunk_1_@_Znwm
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #17

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA44_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(44) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::util::detail::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !201
  call void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !201
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !189, !noalias !201, !nonnull !75, !align !199
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(44) %2) #22, !noalias !201
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(44) %2, i64 noundef %i.c)
          to label %_ZN5arrow4util22StringBuilderRecursiveIRA44_KcEEvRSoOT_.exit.i unwind label %bb.b, !noalias !201 ; 0 uses

_ZN5arrow4util22StringBuilderRecursiveIRA44_KcEEvRSoOT_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow4util13StringBuilderIJRA44_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.b

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA44_KcEEvRSoOT_.exit.i, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !201
  br label %common.resume

_ZN5arrow4util13StringBuilderIJRA44_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA44_KcEEvRSoOT_.exit.i
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !201
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN5arrow4util13StringBuilderIJRA44_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.f = load ptr, ptr %4, align 8, !tbaa !20     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.i = load i64, ptr %i.g, align 8, !tbaa !14
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

bb.d:                                             ; preds = %_ZN5arrow4util13StringBuilderIJRA44_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !20     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.d
  %i.o = load i64, ptr %i.m, align 8, !tbaa !14
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow4util13StringBuilderIJRA19_KcRiRA40_S2_RKiRA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(19) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 1 dereferenceable(2) %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.arrow::util::detail::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6)
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !189, !nonnull !75, !align !199 ; 5 uses
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(19) %1) #22
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(19) %1, i64 noundef %i.c)
          to label %.noexc unwind label %bb.c     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %i.e = load i32, ptr %2, align 4, !tbaa !15
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.e)
          to label %.noexc6 unwind label %bb.c    ; 0 uses

.noexc6:                                          ; preds = %.noexc
  %i.g = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(40) %3) #22
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(40) %3, i64 noundef %i.g)
          to label %.noexc7 unwind label %bb.c    ; 0 uses

.noexc7:                                          ; preds = %.noexc6
  %i.i = load i32, ptr %4, align 4, !tbaa !15
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.i)
          to label %.noexc8 unwind label %bb.c    ; 0 uses

.noexc8:                                          ; preds = %.noexc7
  %i.k = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(2) %5) #22
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(2) %5, i64 noundef %i.k)
          to label %_ZN5arrow4util22StringBuilderRecursiveIRA19_KcJRiRA40_S2_RKiRA2_S2_EEEvRSoOT_DpOT0_.exit unwind label %bb.c ; 0 uses

_ZN5arrow4util22StringBuilderRecursiveIRA19_KcJRiRA40_S2_RKiRA2_S2_EEEvRSoOT_DpOT0_.exit: ; preds = %.noexc8
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA19_KcJRiRA40_S2_RKiRA2_S2_EEEvRSoOT_DpOT0_.exit
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret void

bb.c:                                             ; preds = %.noexc8, %.noexc7, %.noexc6, %.noexc, %bb.a, %_ZN5arrow4util22StringBuilderRecursiveIRA19_KcJRiRA40_S2_RKiRA2_S2_EEEvRSoOT_DpOT0_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  resume { ptr, i32 } %i.m
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #20

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"branch_weights", i32 1, i32 1048575}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!11 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!6, !6, i64 0}
!15 = !{!5, !5, i64 0}
!16 = !{!17, !18, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!18 = !{!"p1 omnipotent char", !12, i64 0}
!19 = !{!17, !18, i64 16}
!20 = !{!21, !18, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0, !23, i64 8, !6, i64 16}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!23 = !{!"long", !6, i64 0}
!24 = !{!22, !18, i64 0}
!25 = !{!23, !23, i64 0}
!26 = !{!21, !23, i64 8}
!27 = !{!28, !29, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow8DataTypeEESaIS3_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!29 = !{!"p1 _ZTSSt10shared_ptrIN5arrow8DataTypeEE", !12, i64 0}
!30 = !{!28, !29, i64 16}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!28, !29, i64 8}
!34 = !{!35, !36, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!36 = !{!"p1 _ZTSSt10shared_ptrIN5arrow5FieldEE", !12, i64 0}
!37 = !{!35, !36, i64 8}
!38 = !{!39, !5, i64 8}
!39 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!40 = !{!39, !5, i64 12}
!41 = !{!42, !42, i64 0}
!42 = !{!"vtable pointer", !7, i64 0}
!43 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!44 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!45 = distinct !{!45, !32}
!46 = !{!35, !36, i64 16}
!47 = distinct !{null, null}
!48 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!49 = distinct !{!49, !32}
!50 = !{!51, !51, i64 0}
!51 = !{!"p1 _ZTSN5arrow10TypeHolderE", !12, i64 0}
!52 = !{!53, !54, i64 0}
!53 = !{!"_ZTSN5arrow6StatusE", !54, i64 0}
!54 = !{!"p1 _ZTSN5arrow6Status5StateE", !12, i64 0}
!55 = !{!56, !56, i64 0}
!56 = !{!"p1 _ZTSN5arrow8DataTypeE", !12, i64 0}
!57 = !{!58, !51, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseIN5arrow10TypeHolderESaIS1_EE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!59 = !{!60, !61, i64 0}
!60 = !{!"_ZTSSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EE", !61, i64 0, !10, i64 8}
!61 = !{!"p1 _ZTSN5arrow5FieldE", !12, i64 0}
!62 = !{!63, !56, i64 0}
!63 = !{!"_ZTSSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE", !56, i64 0, !10, i64 8}
!64 = !{!65, !67, i64 8}
!65 = !{!"_ZTSN5arrow7compute13KernelContextE", !66, i64 0, !67, i64 8, !68, i64 16}
!66 = !{!"p1 _ZTSN5arrow7compute11ExecContextE", !12, i64 0}
!67 = !{!"p1 _ZTSN5arrow7compute11KernelStateE", !12, i64 0}
!68 = !{!"p1 _ZTSN5arrow7compute6KernelE", !12, i64 0}
!69 = !{!70, !73, i64 16}
!70 = !{!"_ZTSN5arrow7compute18ListFlattenOptionsE", !71, i64 0, !73, i64 16}
!71 = !{!"_ZTSN5arrow7compute15FunctionOptionsE", !72, i64 8}
!72 = !{!"p1 _ZTSN5arrow7compute19FunctionOptionsTypeE", !12, i64 0}
!73 = !{!"bool", !6, i64 0}
!74 = !{i8 0, i8 2}
!75 = !{}
!76 = !{!77, !86, i64 40}
!77 = !{!"_ZTSN5arrow8DataTypeE", !78, i64 0, !82, i64 24, !86, i64 40, !87, i64 48}
!78 = !{!"_ZTSN5arrow6detail15FingerprintableE", !79, i64 8, !79, i64 16}
!79 = !{!"_ZTSSt6atomicIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !80, i64 0}
!80 = !{!"_ZTSSt13__atomic_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !81, i64 0}
!81 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!82 = !{!"_ZTSSt23enable_shared_from_thisIN5arrow8DataTypeEE", !83, i64 0}
!83 = !{!"_ZTSSt8weak_ptrIN5arrow8DataTypeEE", !84, i64 0}
!84 = !{!"_ZTSSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE", !56, i64 0, !85, i64 8}
!85 = !{!"_ZTSSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!86 = !{!"_ZTSN5arrow4Type4typeE", !6, i64 0}
!87 = !{!"_ZTSSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE", !88, i64 0}
!88 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE", !89, i64 0}
!89 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_Vector_implE", !35, i64 0}
!90 = distinct !{!90, !32}
!91 = !{!92, !56, i64 0}
!92 = !{!"_ZTSN5arrow10TypeHolderE", !56, i64 0, !93, i64 8}
!93 = !{!"_ZTSSt10shared_ptrIN5arrow8DataTypeEE", !63, i64 0}
!94 = !{!58, !51, i64 8}
!95 = distinct !{ptr @_ZN5arrow7compute8internal23EnsureDictionaryDecodedEPNS_10TypeHolderEm, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!96 = distinct !{!96, !32}
!97 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!98 = distinct !{null, null, null, null, null}
!99 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!100 = distinct !{!100, !32}
!101 = distinct !{ptr @_ZN5arrow7compute8internal12ReplaceTypesERKNS_10TypeHolderEPS2_m, null, null, null, null, null}
!102 = distinct !{!102, !32}
!103 = distinct !{!103, !32}
!104 = distinct !{!104, !32}
!105 = distinct !{!105, !32}
!106 = distinct !{!106, !32}
!107 = !{!108, !108, i64 0}
!108 = !{!"_ZTSN5arrow8TimeUnit4typeE", !6, i64 0}
!109 = !{!110, !108, i64 72}
!110 = !{!"_ZTSN5arrow13TimestampTypeE", !111, i64 0, !108, i64 72, !21, i64 80}
!111 = !{!"_ZTSN5arrow12TemporalTypeE", !112, i64 0}
!112 = !{!"_ZTSN5arrow14FixedWidthTypeE", !77, i64 0}
!113 = !{!114, !108, i64 72}
!114 = !{!"_ZTSN5arrow12DurationTypeE", !111, i64 0, !108, i64 72}
!115 = !{!116, !108, i64 72}
!116 = !{!"_ZTSN5arrow8TimeTypeE", !111, i64 0, !108, i64 72}
!117 = distinct !{!117, !32}
!118 = distinct !{!118, !32}
!119 = distinct !{!119, !32}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZN5arrow6Status2OKEv: argument 0"}
!122 = distinct !{!122, !"_ZN5arrow6Status2OKEv"}
!123 = !{!124, !5, i64 76}
!124 = !{!"_ZTSN5arrow11DecimalTypeE", !125, i64 0, !5, i64 76, !5, i64 80}
!125 = !{!"_ZTSN5arrow19FixedSizeBinaryTypeE", !112, i64 0, !5, i64 72}
!126 = !{!124, !5, i64 80}
!127 = !{!86, !86, i64 0}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZN5arrow26MaxDecimalDigitsForIntegerENS_4Type4typeE: argument 0"}
!130 = distinct !{!130, !"_ZN5arrow26MaxDecimalDigitsForIntegerENS_4Type4typeE"}
!131 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!132 = !{!"branch_weights", !"expected", i32 2137824803, i32 9658845}
!133 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZN5arrow26MaxDecimalDigitsForIntegerENS_4Type4typeE: argument 0"}
!136 = distinct !{!136, !"_ZN5arrow26MaxDecimalDigitsForIntegerENS_4Type4typeE"}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_ZNO5arrow6ResultISt10shared_ptrINS_8DataTypeEEE11ValueUnsafeEv: argument 0"}
!139 = distinct !{!139, !"_ZNO5arrow6ResultISt10shared_ptrINS_8DataTypeEEE11ValueUnsafeEv"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE15MoveValueUnsafeEv: argument 0"}
!142 = distinct !{!142, !"_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE15MoveValueUnsafeEv"}
!143 = !{!141, !138}
!144 = !{!145, !147}
!145 = distinct !{!145, !146, !"_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE15MoveValueUnsafeEv: argument 0"}
!146 = distinct !{!146, !"_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE15MoveValueUnsafeEv"}
!147 = distinct !{!147, !148, !"_ZNO5arrow6ResultISt10shared_ptrINS_8DataTypeEEE11ValueUnsafeEv: argument 0"}
!148 = distinct !{!148, !"_ZNO5arrow6ResultISt10shared_ptrINS_8DataTypeEEE11ValueUnsafeEv"}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZN5arrow6Status2OKEv: argument 0"}
!151 = distinct !{!151, !"_ZN5arrow6Status2OKEv"}
!152 = distinct !{ptr @_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev, null, null, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!153 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!154 = !{!155, !156, i64 0}
!155 = !{!"_ZTSN5arrow6Status5StateE", !156, i64 0, !21, i64 8, !157, i64 40}
!156 = !{!"_ZTSN5arrow10StatusCodeE", !6, i64 0}
!157 = !{!"_ZTSSt10shared_ptrIN5arrow12StatusDetailEE", !158, i64 0}
!158 = !{!"_ZTSSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EE", !159, i64 0, !10, i64 8}
!159 = !{!"p1 _ZTSN5arrow12StatusDetailE", !12, i64 0}
!160 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!161 = distinct !{!161, !32}
!162 = !{!163}
!163 = distinct !{!163, !164, !"_ZN5arrow6Status2OKEv: argument 0"}
!164 = distinct !{!164, !"_ZN5arrow6Status2OKEv"}
!165 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!166 = !{!167}
!167 = distinct !{!167, !168, !"_ZN5arrow6Status2OKEv: argument 0"}
!168 = distinct !{!168, !"_ZN5arrow6Status2OKEv"}
!169 = distinct !{!169, !32}
!170 = !{!171, !173}
!171 = distinct !{!171, !172, !"_ZN5arrow6Status8FromArgsIJRA19_KcRiRA40_S2_RKiRA2_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!172 = distinct !{!172, !"_ZN5arrow6Status8FromArgsIJRA19_KcRiRA40_S2_RKiRA2_S2_EEES0_NS_10StatusCodeEDpOT_"}
!173 = distinct !{!173, !174, !"_ZN5arrow6Status7InvalidIJRA19_KcRiRA40_S2_RKiRA2_S2_EEES0_DpOT_: argument 0"}
!174 = distinct !{!174, !"_ZN5arrow6Status7InvalidIJRA19_KcRiRA40_S2_RKiRA2_S2_EEES0_DpOT_"}
!175 = !{!176, !178}
!176 = distinct !{!176, !177, !"_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE15MoveValueUnsafeEv: argument 0"}
!177 = distinct !{!177, !"_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE15MoveValueUnsafeEv"}
!178 = distinct !{!178, !179, !"_ZNO5arrow6ResultISt10shared_ptrINS_8DataTypeEEE11ValueUnsafeEv: argument 0"}
!179 = distinct !{!179, !"_ZNO5arrow6ResultISt10shared_ptrINS_8DataTypeEEE11ValueUnsafeEv"}
!180 = !{!181}
!181 = distinct !{!181, !182, !"_ZN5arrow6Status2OKEv: argument 0"}
!182 = distinct !{!182, !"_ZN5arrow6Status2OKEv"}
!183 = distinct !{!183, !32}
!184 = distinct !{!184, !32}
!185 = distinct !{null}
!186 = !{!187}
!187 = distinct !{!187, !188, !"_ZN5arrow4util13StringBuilderIJRA22_KcRNS_4Type4typeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!188 = distinct !{!188, !"_ZN5arrow4util13StringBuilderIJRA22_KcRNS_4Type4typeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!189 = !{!190, !198, i64 8}
!190 = !{!"_ZTSN5arrow4util6detail19StringStreamWrapperE", !191, i64 0, !198, i64 8}
!191 = !{!"_ZTSSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !192, i64 0}
!192 = !{!"_ZTSSt15__uniq_ptr_dataINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_ELb1ELb1EE", !193, i64 0}
!193 = !{!"_ZTSSt15__uniq_ptr_implINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !194, i64 0}
!194 = !{!"_ZTSSt5tupleIJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !195, i64 0}
!195 = !{!"_ZTSSt11_Tuple_implILm0EJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !196, i64 0}
!196 = !{!"_ZTSSt10_Head_baseILm0EPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEELb0EE", !197, i64 0}
!197 = !{!"p1 _ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!198 = !{!"p1 _ZTSSo", !12, i64 0}
!199 = !{i64 8}
!200 = distinct !{null, null, null, null}
!201 = !{!202}
!202 = distinct !{!202, !203, !"_ZN5arrow4util13StringBuilderIJRA44_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!203 = distinct !{!203, !"_ZN5arrow4util13StringBuilderIJRA44_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
end_hunk_1
