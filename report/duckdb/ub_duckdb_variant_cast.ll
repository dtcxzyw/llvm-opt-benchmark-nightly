inline.NumInlined: 6391
inline.NumDeleted: 1307
loop-unroll.NumCompletelyUnrolled: 99
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 119
begin_hunk_0_@_ZN6duckdb7variant16ConvertToVariantILb0ELb0EEEbRNS0_19ToVariantSourceDataERNS0_25ToVariantGlobalResultDataEmNS_12optional_ptrIKNS_15SelectionVectorELb1EEES9_b:bb.a
  br label %bb.q

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_ZN6duckdb7variant22ConvertStructToVariantILb0ELb0EEEbRNS0_19ToVariantSourceDataERNS0_25ToVariantGlobalResultDataEmNS_12optional_ptrIKNS_15SelectionVectorELb1EEES9_b(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, ptr %3, ptr %4, i1 noundef zeroext %5)
  br label %bb.q

bb.f:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_ZN6duckdb7variant21ConvertUnionToVariantILb0ELb0EEEbRNS0_19ToVariantSourceDataERNS0_25ToVariantGlobalResultDataEmNS_12optional_ptrIKNS_15SelectionVectorELb1EEES9_b(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, ptr %3, ptr %4, i1 noundef zeroext %5)
  br label %bb.q

bb.g:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN6duckdb7variant23ConvertVariantToVariantILb0ELb0EEEbRNS0_19ToVariantSourceDataERNS0_25ToVariantGlobalResultDataEmNS_12optional_ptrIKNS_15SelectionVectorELb1EEES9_b(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, ptr %3, ptr %4, i1 noundef zeroext %5)
  br label %bb.q

bb.h:                                             ; preds = %bb.b
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.thread

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZN6duckdb8EnumUtil8ToStringINS_13LogicalTypeIdEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, i8 noundef zeroext %i.c)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6duckdb23NotImplementedExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.r unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.thread: ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.l:                                             ; preds = %bb.k, %bb.j
  %.055 = phi i1 [ false, %bb.k ], [ true, %bb.j ] ; 2 uses
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.n = load ptr, ptr %8, align 8, !tbaa !52     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.n) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.q = load ptr, ptr %6, align 8, !tbaa !52     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.u = load ptr, ptr %6, align 8, !tbaa !52     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  call void @_ZdlPv(ptr noundef %i.u) #25
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.q) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.055, label %bb.m, label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.055, label %bb.m, label %bb.n

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.thread
  %.pn.pn66.ph = phi { ptr, i32 } [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.thread ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.thread ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %.pn.pn66 = phi { ptr, i32 } [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59 ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ %.pn.pn66.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.k) #24
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %.pn.pn65 = phi { ptr, i32 } [ %.pn.pn66, %bb.m ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59 ]
  resume { ptr, i32 } %.pn.pn65

_ZNK6duckdb11LogicalType8IsNestedEv.exit:         ; preds = %bb.a
  %i.x = tail call noundef zeroext i1 @_ZNK6duckdb11LogicalType10IsJSONTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  br i1 %i.x, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNK6duckdb11LogicalType8IsNestedEv.exit
  %i.y = tail call noundef zeroext i1 @_ZN6duckdb7variant20ConvertJSONToVariantILb0ELb0EEEbRNS0_19ToVariantSourceDataERNS0_25ToVariantGlobalResultDataEmNS_12optional_ptrIKNS_15SelectionVectorELb1EEES9_b(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, ptr %3, ptr %4, i1 noundef zeroext %5)
  br label %bb.q

bb.p:                                             ; preds = %_ZNK6duckdb11LogicalType8IsNestedEv.exit
  %i.z = tail call noundef zeroext i1 @_ZN6duckdb7variant25ConvertPrimitiveToVariantILb0ELb0EEEbRNS0_19ToVariantSourceDataERNS0_25ToVariantGlobalResultDataEmNS_12optional_ptrIKNS_15SelectionVectorELb1EEES9_b(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, ptr %3, ptr %4, i1 noundef zeroext %5)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0 = phi i1 [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ %i.h, %bb.e ], [ %i.i, %bb.f ], [ %i.j, %bb.g ], [ %i.y, %bb.o ], [ %i.z, %bb.p ]
  ret i1 %.0

bb.r:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb7variant20ConvertListToVariantILb0ELb0EEEbRNS0_19ToVariantSourceDataERNS0_25ToVariantGlobalResultDataEmNS_12optional_ptrIKNS_15SelectionVectorELb1EEES9_b(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, ptr %3, ptr %4, i1 noundef zeroext %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.duckdb::optional_ptr.62", align 8 ; 4 uses
  %7 = alloca %"struct.duckdb::variant::ContainerSelectionVectors", align 8 ; 23 uses
  %8 = alloca %"class.duckdb::Vector", align 8    ; 8 uses
  %9 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %10 = alloca %"struct.duckdb::variant::ToVariantSourceData", align 8 ; 12 uses
  %11 = alloca %"struct.duckdb::variant::ToVariantSourceData", align 8 ; 12 uses
  store ptr %3, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !946, !nonnull !130, !align !131
  %i.c = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 noundef 3) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !946, !nonnull !130, !align !131
  %i.g = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 noundef 2) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81   ; 2 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !946, !nonnull !130, !align !131
  %i.k = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 noundef 1) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !81
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_12list_entry_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !948  ; 20 uses
  %.not153 = icmp eq i64 %2, 0
  br i1 %.not153, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !128  ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !949
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !31   ; 9 uses
  %.not.i2.i.us = icmp eq ptr %i.v, null          ; 2 uses
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !177  ; 7 uses
  %.not.i100.us = icmp eq ptr %i.w, null
  br i1 %.not.i100.us, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  br i1 %.not.i2.i.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.preheader: ; preds = %.lr.ph.split.us.split.us
  %xtraiter242 = and i64 %2, 3                    ; 3 uses
  %i.x = icmp ult i64 %2, 4
  br i1 %i.x, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.preheader
  %unroll_iter246 = and i64 %2, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader: ; preds = %.lr.ph.split.us.split.us
  %i.y = add i64 %2, -4294967297
  %or.cond = icmp ult i64 %i.y, -4294967292
  br i1 %or.cond, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader225, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader
  %n.mod.vf = and i64 %2, 3                       ; 2 uses
  %i.z = icmp eq i64 %n.mod.vf, 0
  %i.aa = select i1 %i.z, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %2, %i.aa                  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ah, %vector.body ]
  %vec.phi205 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %i.ab = and i64 %index, 4294967292
  %i.ac = and i64 %index, 4294967292
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.ab
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %wide.vec = load <4 x i64>, ptr %i.af, align 8, !tbaa !139
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec206 = load <4 x i64>, ptr %i.ag, align 8, !tbaa !139
  %strided.vec207 = shufflevector <4 x i64> %wide.vec206, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.ah = add <2 x i64> %strided.vec, %vec.phi    ; 2 uses
  %i.ai = add <2 x i64> %strided.vec207, %vec.phi205 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !950

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ai, %i.ah
  %i.ak = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader225

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader225: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader, %middle.block
  %.072138.us.us.us.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader ], [ %i.ak, %middle.block ] ; 2 uses
  %.073137.us.us.us.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %i.al = sub i64 %2, %.073137.us.us.us.ph
  %xtraiter248 = and i64 %i.al, 3                 ; 2 uses
  %lcmp.mod249.not = icmp eq i64 %xtraiter248, 0
  br i1 %lcmp.mod249.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader225, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol
  %.072138.us.us.us.prol = phi i64 [ %i.aq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol ], [ %.072138.us.us.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader225 ]
  %.073137.us.us.us.prol = phi i64 [ %i.ar, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol ], [ %.073137.us.us.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader225 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader225 ]
  %i.am = and i64 %.073137.us.us.us.prol, 4294967295
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !139
  %i.aq = add i64 %i.ap, %.072138.us.us.us.prol   ; 3 uses
  %i.ar = add nuw i64 %.073137.us.us.us.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter248
  br i1 %prol.iter.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol, !llvm.loop !951

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader225
  %.lcssa226.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader225 ], [ %i.aq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol ]
  %.072138.us.us.us.unr = phi i64 [ %.072138.us.us.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader225 ], [ %i.aq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol ]
  %.073137.us.us.us.unr = phi i64 [ %.073137.us.us.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader225 ], [ %i.ar, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol ]
  %i.as = sub i64 %.073137.us.us.us.ph, %2
  %i.at = icmp ugt i64 %i.as, -4
  br i1 %i.at, label %.lr.ph151, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us
  %.072138.us.us.us = phi i64 [ %i.bq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us ], [ %.072138.us.us.us.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol.loopexit ]
  %.073137.us.us.us = phi i64 [ %i.br, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us ], [ %.073137.us.us.us.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol.loopexit ] ; 5 uses
  %i.au = and i64 %.073137.us.us.us, 4294967295
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !139
  %i.ay = add i64 %i.ax, %.072138.us.us.us
  %i.az = add nuw i64 %.073137.us.us.us, 1
  %i.ba = and i64 %i.az, 4294967295
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !139
  %i.be = add i64 %i.bd, %i.ay
  %i.bf = add nuw i64 %.073137.us.us.us, 2
  %i.bg = and i64 %i.bf, 4294967295
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !139
  %i.bk = add i64 %i.bj, %i.be
  %i.bl = add nuw i64 %.073137.us.us.us, 3
  %i.bm = and i64 %i.bl, 4294967295
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !139
  %i.bq = add i64 %i.bp, %i.bk                    ; 2 uses
  %i.br = add nuw i64 %.073137.us.us.us, 4        ; 2 uses
  %exitcond165.not.3 = icmp eq i64 %i.br, %2
  br i1 %exitcond165.not.3, label %.lr.ph151, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us, !llvm.loop !953

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.preheader.new
  %.072138.us.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.preheader.new ], [ %i.cw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us ]
  %.073137.us.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.preheader.new ], [ %i.cx, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us ] ; 5 uses
  %niter247 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.preheader.new ], [ %niter247.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us ]
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.073137.us.us
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !139
  %i.by = add i64 %i.bx, %.072138.us.us
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.073137.us.us
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !139
  %i.cg = add i64 %i.cf, %i.by
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.073137.us.us
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !139
  %i.co = add i64 %i.cn, %i.cg
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.073137.us.us
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !139
  %i.cw = add i64 %i.cv, %i.co                    ; 3 uses
  %i.cx = add nuw i64 %.073137.us.us, 4           ; 2 uses
  %niter247.next.3 = add nuw i64 %niter247, 4     ; 2 uses
  %niter247.ncmp.3 = icmp eq i64 %niter247.next.3, %unroll_iter246
  br i1 %niter247.ncmp.3, label %.lr.ph151.loopexit229.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us, !llvm.loop !954

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  br i1 %.not.i2.i.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us140.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.preheader: ; preds = %.lr.ph.split.us.split
  %xtraiter = and i64 %2, 1
  %i.cy = icmp eq i64 %2, 1
  br i1 %i.cy, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.preheader
  %unroll_iter = and i64 %2, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us140.preheader: ; preds = %.lr.ph.split.us.split
  %xtraiter236 = and i64 %2, 1
  %i.cz = icmp eq i64 %2, 1
  br i1 %i.cz, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us140.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us140.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us140.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us140.preheader
  %unroll_iter240 = and i64 %2, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us140

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us140: ; preds = %bb.b, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us140.preheader.new
  %.072138.us.us141 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us140.preheader.new ], [ %.1.us.us145.1, %bb.b ] ; 2 uses
  %.073137.us.us142 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us140.preheader.new ], [ %i.dx, %bb.b ] ; 4 uses
  %niter241 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us140.preheader.new ], [ %niter241.next.1, %bb.b ]
  %i.da = and i64 %.073137.us.us142, 4294967294   ; 2 uses
  %i.db = lshr i64 %i.da, 6
  %i.dc = and i64 %.073137.us.us142, 62
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.db
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !53
  %i.df = shl nuw nsw i64 1, %i.dc
  %i.dg = and i64 %i.de, %i.df
  %.not135.us.us = icmp eq i64 %i.dg, 0
  br i1 %.not135.us.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us140.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us144

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us144: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us140
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.da
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !139
  %i.dk = add i64 %i.dj, %.072138.us.us141
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us140.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us140.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us144, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us140
  %.1.us.us145 = phi i64 [ %i.dk, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us144 ], [ %.072138.us.us141, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us140 ] ; 2 uses
  %i.dl = or disjoint i64 %.073137.us.us142, 1    ; 2 uses
  %i.dm = and i64 %i.dl, 4294967295               ; 2 uses
  %i.dn = lshr i64 %i.dm, 6
  %i.do = and i64 %i.dl, 63
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.dn
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !53
  %i.dr = shl nuw i64 1, %i.do
  %i.ds = and i64 %i.dq, %i.dr
  %.not135.us.us.1 = icmp eq i64 %i.ds, 0
  br i1 %.not135.us.us.1, label %bb.b, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us144.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us144.1: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us140.1
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.dm
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !139
  %i.dw = add i64 %i.dv, %.1.us.us145
  br label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us144.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us140.1
  %.1.us.us145.1 = phi i64 [ %i.dw, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us144.1 ], [ %.1.us.us145, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us140.1 ] ; 3 uses
  %i.dx = add nuw i64 %.073137.us.us142, 2        ; 2 uses
  %niter241.next.1 = add nuw i64 %niter241, 2     ; 2 uses
  %niter241.ncmp.1 = icmp eq i64 %niter241.next.1, %unroll_iter240
  br i1 %niter241.ncmp.1, label %.lr.ph151.loopexit231.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us140, !llvm.loop !954

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us: ; preds = %bb.c, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.preheader.new
  %.072138.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.preheader.new ], [ %.1.us.1, %bb.c ] ; 2 uses
  %.073137.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.preheader.new ], [ %i.ez, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.preheader.new ], [ %niter.next.1, %bb.c ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.073137.us
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !3
  %i.ea = zext i32 %i.dz to i64                   ; 3 uses
  %i.eb = lshr i64 %i.ea, 6
  %i.ec = and i64 %i.ea, 63
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.eb
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !53
  %i.ef = shl nuw i64 1, %i.ec
  %i.eg = and i64 %i.ee, %i.ef
  %.not135.us = icmp eq i64 %i.eg, 0
  br i1 %.not135.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.ea
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !139
end_hunk_0
begin_hunk_1_@_ZN6duckdb19UnifiedVectorFormatC1EOS0_
declare void @_ZN6duckdb19UnifiedVectorFormatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(73), ptr noundef nonnull align 8 dereferenceable(73)) unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6duckdb7variant19ToVariantSourceDataEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4 = icmp eq ptr %0, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb7variant19ToVariantSourceDataEEvPT_.exit
  %.05 = phi ptr [ %i.ai, %_ZSt8_DestroyIN6duckdb7variant19ToVariantSourceDataEEvPT_.exit ], [ %0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75   ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !78
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !1061
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !1061
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i, !prof !80

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i:       ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %.05, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !75   ; 8 uses
  %.not.i.i.i.i1.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i1.i.i.i, label %_ZSt8_DestroyIN6duckdb7variant19ToVariantSourceDataEEvPT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !76
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !78
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !22
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !1062
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !1062
  br label %_ZSt8_DestroyIN6duckdb7variant19ToVariantSourceDataEEvPT_.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i.i.i2.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i2.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i4.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i.i4.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZSt8_DestroyIN6duckdb7variant19ToVariantSourceDataEEvPT_.exit, !prof !80

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24
  br label %_ZSt8_DestroyIN6duckdb7variant19ToVariantSourceDataEEvPT_.exit

_ZSt8_DestroyIN6duckdb7variant19ToVariantSourceDataEEvPT_.exit: ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %.05, i64 104 ; 2 uses
  %.not = icmp eq ptr %i.ai, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1063

._crit_edge:                                      ; preds = %_ZSt8_DestroyIN6duckdb7variant19ToVariantSourceDataEEvPT_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb7variant20ConvertListToVariantILb0ELb1EEEbRNS0_19ToVariantSourceDataERNS0_25ToVariantGlobalResultDataEmNS_12optional_ptrIKNS_15SelectionVectorELb1EEES9_b(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, ptr %3, ptr %4, i1 noundef zeroext %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.duckdb::optional_ptr.62", align 8 ; 4 uses
  %7 = alloca %"struct.duckdb::variant::ContainerSelectionVectors", align 8 ; 23 uses
  %8 = alloca %"class.duckdb::Vector", align 8    ; 8 uses
  %9 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %10 = alloca %"struct.duckdb::variant::ToVariantSourceData", align 8 ; 12 uses
  %11 = alloca %"struct.duckdb::variant::ToVariantSourceData", align 8 ; 12 uses
  store ptr %3, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !946, !nonnull !130, !align !131
  %i.c = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 noundef 3) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !946, !nonnull !130, !align !131
  %i.g = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 noundef 2) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !946, !nonnull !130, !align !131
  %i.k = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 noundef 1) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !81
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_12list_entry_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !948  ; 20 uses
  %.not146 = icmp eq i64 %2, 0
  br i1 %.not146, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !128  ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !949
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !31   ; 9 uses
  %.not.i2.i.us = icmp eq ptr %i.v, null          ; 2 uses
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !177  ; 7 uses
  %.not.i93.us = icmp eq ptr %i.w, null
  br i1 %.not.i93.us, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  br i1 %.not.i2.i.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.preheader: ; preds = %.lr.ph.split.us.split.us
  %xtraiter235 = and i64 %2, 3                    ; 3 uses
  %i.x = icmp ult i64 %2, 4
  br i1 %i.x, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.preheader
  %unroll_iter239 = and i64 %2, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader: ; preds = %.lr.ph.split.us.split.us
  %i.y = add i64 %2, -4294967297
  %or.cond = icmp ult i64 %i.y, -4294967292
  br i1 %or.cond, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader218, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader
  %n.mod.vf = and i64 %2, 3                       ; 2 uses
  %i.z = icmp eq i64 %n.mod.vf, 0
  %i.aa = select i1 %i.z, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %2, %i.aa                  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ah, %vector.body ]
  %vec.phi198 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %i.ab = and i64 %index, 4294967292
  %i.ac = and i64 %index, 4294967292
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.ab
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %wide.vec = load <4 x i64>, ptr %i.af, align 8, !tbaa !139
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec199 = load <4 x i64>, ptr %i.ag, align 8, !tbaa !139
  %strided.vec200 = shufflevector <4 x i64> %wide.vec199, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.ah = add <2 x i64> %strided.vec, %vec.phi    ; 2 uses
  %i.ai = add <2 x i64> %strided.vec200, %vec.phi198 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !1064

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ai, %i.ah
  %i.ak = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader218

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader218: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader, %middle.block
  %.065131.us.us.us.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader ], [ %i.ak, %middle.block ] ; 2 uses
  %.066130.us.us.us.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %i.al = sub i64 %2, %.066130.us.us.us.ph
  %xtraiter241 = and i64 %i.al, 3                 ; 2 uses
  %lcmp.mod242.not = icmp eq i64 %xtraiter241, 0
  br i1 %lcmp.mod242.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader218, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol
  %.065131.us.us.us.prol = phi i64 [ %i.aq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol ], [ %.065131.us.us.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader218 ]
  %.066130.us.us.us.prol = phi i64 [ %i.ar, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol ], [ %.066130.us.us.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader218 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader218 ]
  %i.am = and i64 %.066130.us.us.us.prol, 4294967295
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !139
  %i.aq = add i64 %i.ap, %.065131.us.us.us.prol   ; 3 uses
  %i.ar = add nuw i64 %.066130.us.us.us.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter241
  br i1 %prol.iter.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol, !llvm.loop !1065

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader218
  %.lcssa219.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader218 ], [ %i.aq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol ]
  %.065131.us.us.us.unr = phi i64 [ %.065131.us.us.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader218 ], [ %i.aq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol ]
  %.066130.us.us.us.unr = phi i64 [ %.066130.us.us.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader218 ], [ %i.ar, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol ]
  %i.as = sub i64 %.066130.us.us.us.ph, %2
  %i.at = icmp ugt i64 %i.as, -4
  br i1 %i.at, label %.lr.ph144, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us
  %.065131.us.us.us = phi i64 [ %i.bq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us ], [ %.065131.us.us.us.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol.loopexit ]
  %.066130.us.us.us = phi i64 [ %i.br, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us ], [ %.066130.us.us.us.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol.loopexit ] ; 5 uses
  %i.au = and i64 %.066130.us.us.us, 4294967295
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !139
  %i.ay = add i64 %i.ax, %.065131.us.us.us
  %i.az = add nuw i64 %.066130.us.us.us, 1
  %i.ba = and i64 %i.az, 4294967295
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !139
  %i.be = add i64 %i.bd, %i.ay
  %i.bf = add nuw i64 %.066130.us.us.us, 2
  %i.bg = and i64 %i.bf, 4294967295
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !139
  %i.bk = add i64 %i.bj, %i.be
  %i.bl = add nuw i64 %.066130.us.us.us, 3
  %i.bm = and i64 %i.bl, 4294967295
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !139
  %i.bq = add i64 %i.bp, %i.bk                    ; 2 uses
  %i.br = add nuw i64 %.066130.us.us.us, 4        ; 2 uses
  %exitcond158.not.3 = icmp eq i64 %i.br, %2
  br i1 %exitcond158.not.3, label %.lr.ph144, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us, !llvm.loop !1066

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.preheader.new
  %.065131.us.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.preheader.new ], [ %i.cw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us ]
  %.066130.us.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.preheader.new ], [ %i.cx, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us ] ; 5 uses
  %niter240 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.preheader.new ], [ %niter240.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us ]
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.066130.us.us
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !139
  %i.by = add i64 %i.bx, %.065131.us.us
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.066130.us.us
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !139
  %i.cg = add i64 %i.cf, %i.by
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.066130.us.us
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !139
  %i.co = add i64 %i.cn, %i.cg
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.066130.us.us
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !139
  %i.cw = add i64 %i.cv, %i.co                    ; 3 uses
  %i.cx = add nuw i64 %.066130.us.us, 4           ; 2 uses
  %niter240.next.3 = add nuw i64 %niter240, 4     ; 2 uses
  %niter240.ncmp.3 = icmp eq i64 %niter240.next.3, %unroll_iter239
  br i1 %niter240.ncmp.3, label %.lr.ph144.loopexit222.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us, !llvm.loop !1067

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  br i1 %.not.i2.i.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us133.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.preheader: ; preds = %.lr.ph.split.us.split
  %xtraiter = and i64 %2, 1
  %i.cy = icmp eq i64 %2, 1
  br i1 %i.cy, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.preheader
  %unroll_iter = and i64 %2, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us133.preheader: ; preds = %.lr.ph.split.us.split
  %xtraiter229 = and i64 %2, 1
  %i.cz = icmp eq i64 %2, 1
  br i1 %i.cz, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us133.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us133.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us133.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us133.preheader
  %unroll_iter233 = and i64 %2, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us133

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us133: ; preds = %bb.b, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us133.preheader.new
  %.065131.us.us134 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us133.preheader.new ], [ %.1.us.us138.1, %bb.b ] ; 2 uses
  %.066130.us.us135 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us133.preheader.new ], [ %i.dx, %bb.b ] ; 4 uses
  %niter234 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us133.preheader.new ], [ %niter234.next.1, %bb.b ]
  %i.da = and i64 %.066130.us.us135, 4294967294   ; 2 uses
  %i.db = lshr i64 %i.da, 6
  %i.dc = and i64 %.066130.us.us135, 62
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.db
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !53
  %i.df = shl nuw nsw i64 1, %i.dc
  %i.dg = and i64 %i.de, %i.df
  %.not128.us.us = icmp eq i64 %i.dg, 0
  br i1 %.not128.us.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us133.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us137

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us137: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us133
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.da
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !139
  %i.dk = add i64 %i.dj, %.065131.us.us134
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us133.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us133.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us137, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us133
  %.1.us.us138 = phi i64 [ %i.dk, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us137 ], [ %.065131.us.us134, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us133 ] ; 2 uses
  %i.dl = or disjoint i64 %.066130.us.us135, 1    ; 2 uses
  %i.dm = and i64 %i.dl, 4294967295               ; 2 uses
  %i.dn = lshr i64 %i.dm, 6
  %i.do = and i64 %i.dl, 63
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.dn
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !53
  %i.dr = shl nuw i64 1, %i.do
  %i.ds = and i64 %i.dq, %i.dr
  %.not128.us.us.1 = icmp eq i64 %i.ds, 0
  br i1 %.not128.us.us.1, label %bb.b, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us137.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us137.1: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us133.1
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.dm
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !139
  %i.dw = add i64 %i.dv, %.1.us.us138
  br label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us137.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us133.1
  %.1.us.us138.1 = phi i64 [ %i.dw, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us137.1 ], [ %.1.us.us138, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us133.1 ] ; 3 uses
  %i.dx = add nuw i64 %.066130.us.us135, 2        ; 2 uses
  %niter234.next.1 = add nuw i64 %niter234, 2     ; 2 uses
  %niter234.ncmp.1 = icmp eq i64 %niter234.next.1, %unroll_iter233
  br i1 %niter234.ncmp.1, label %.lr.ph144.loopexit224.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us133, !llvm.loop !1067

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us: ; preds = %bb.c, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.preheader.new
  %.065131.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.preheader.new ], [ %.1.us.1, %bb.c ] ; 2 uses
  %.066130.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.preheader.new ], [ %i.ez, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.preheader.new ], [ %niter.next.1, %bb.c ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.066130.us
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !3
  %i.ea = zext i32 %i.dz to i64                   ; 3 uses
  %i.eb = lshr i64 %i.ea, 6
  %i.ec = and i64 %i.ea, 63
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.eb
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !53
  %i.ef = shl nuw i64 1, %i.ec
  %i.eg = and i64 %i.ee, %i.ef
  %.not128.us = icmp eq i64 %i.eg, 0
  br i1 %.not128.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.ea
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !139
end_hunk_1
begin_hunk_2_@_ZN6duckdb7variant16ConvertToVariantILb1ELb0EEEbRNS0_19ToVariantSourceDataERNS0_25ToVariantGlobalResultDataEmNS_12optional_ptrIKNS_15SelectionVectorELb1EEES9_b:bb.a
  %i.h = tail call noundef zeroext i1 @_ZN6duckdb7variant22ConvertStructToVariantILb1ELb0EEEbRNS0_19ToVariantSourceDataERNS0_25ToVariantGlobalResultDataEmNS_12optional_ptrIKNS_15SelectionVectorELb1EEES9_b(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, ptr %3, ptr %4, i1 noundef zeroext %5)
  br label %bb.q

bb.f:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_ZN6duckdb7variant21ConvertUnionToVariantILb1ELb0EEEbRNS0_19ToVariantSourceDataERNS0_25ToVariantGlobalResultDataEmNS_12optional_ptrIKNS_15SelectionVectorELb1EEES9_b(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, ptr %3, ptr %4, i1 noundef zeroext %5)
  br label %bb.q

bb.g:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN6duckdb7variant23ConvertVariantToVariantILb1ELb0EEEbRNS0_19ToVariantSourceDataERNS0_25ToVariantGlobalResultDataEmNS_12optional_ptrIKNS_15SelectionVectorELb1EEES9_b(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, ptr %3, ptr %4, i1 noundef zeroext %5)
  br label %bb.q

bb.h:                                             ; preds = %bb.b
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.thread

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZN6duckdb8EnumUtil8ToStringINS_13LogicalTypeIdEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, i8 noundef zeroext %i.c)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6duckdb23NotImplementedExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.r unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.thread: ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.l:                                             ; preds = %bb.k, %bb.j
  %.055 = phi i1 [ false, %bb.k ], [ true, %bb.j ] ; 2 uses
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.n = load ptr, ptr %8, align 8, !tbaa !52     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.n) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.q = load ptr, ptr %6, align 8, !tbaa !52     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.u = load ptr, ptr %6, align 8, !tbaa !52     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  call void @_ZdlPv(ptr noundef %i.u) #25
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.q) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.055, label %bb.m, label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.055, label %bb.m, label %bb.n

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.thread
  %.pn.pn66.ph = phi { ptr, i32 } [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.thread ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.thread ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %.pn.pn66 = phi { ptr, i32 } [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59 ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ %.pn.pn66.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.k) #24
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %.pn.pn65 = phi { ptr, i32 } [ %.pn.pn66, %bb.m ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59 ]
  resume { ptr, i32 } %.pn.pn65

_ZNK6duckdb11LogicalType8IsNestedEv.exit:         ; preds = %bb.a
  %i.x = tail call noundef zeroext i1 @_ZNK6duckdb11LogicalType10IsJSONTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  br i1 %i.x, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNK6duckdb11LogicalType8IsNestedEv.exit
  %i.y = tail call noundef zeroext i1 @_ZN6duckdb7variant20ConvertJSONToVariantILb1ELb0EEEbRNS0_19ToVariantSourceDataERNS0_25ToVariantGlobalResultDataEmNS_12optional_ptrIKNS_15SelectionVectorELb1EEES9_b(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, ptr %3, ptr %4, i1 noundef zeroext %5)
  br label %bb.q

bb.p:                                             ; preds = %_ZNK6duckdb11LogicalType8IsNestedEv.exit
  %i.z = tail call noundef zeroext i1 @_ZN6duckdb7variant25ConvertPrimitiveToVariantILb1ELb0EEEbRNS0_19ToVariantSourceDataERNS0_25ToVariantGlobalResultDataEmNS_12optional_ptrIKNS_15SelectionVectorELb1EEES9_b(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, ptr %3, ptr %4, i1 noundef zeroext %5)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0 = phi i1 [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ %i.h, %bb.e ], [ %i.i, %bb.f ], [ %i.j, %bb.g ], [ %i.y, %bb.o ], [ %i.z, %bb.p ]
  ret i1 %.0

bb.r:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb7variant20ConvertListToVariantILb1ELb0EEEbRNS0_19ToVariantSourceDataERNS0_25ToVariantGlobalResultDataEmNS_12optional_ptrIKNS_15SelectionVectorELb1EEES9_b(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, ptr %3, ptr %4, i1 noundef zeroext %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.duckdb::optional_ptr.62", align 8 ; 5 uses
  %7 = alloca %"class.duckdb::optional_ptr.62", align 8 ; 5 uses
  %8 = alloca %"class.duckdb::optional_ptr.62", align 8 ; 4 uses
  %9 = alloca %"struct.duckdb::variant::ContainerSelectionVectors", align 8 ; 28 uses
  %10 = alloca %"class.duckdb::Vector", align 8   ; 8 uses
  %11 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %12 = alloca %"struct.duckdb::variant::ToVariantSourceData", align 8 ; 12 uses
  %13 = alloca %"struct.duckdb::variant::ToVariantSourceData", align 8 ; 12 uses
  store ptr %3, ptr %8, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !946, !nonnull !130, !align !131
  %i.c = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 noundef 3) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !946, !nonnull !130, !align !131
  %i.g = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 noundef 2) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81   ; 2 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !946, !nonnull !130, !align !131
  %i.k = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 noundef 1) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !81
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_12list_entry_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !948  ; 20 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !1178, !nonnull !130, !align !131
  %.not169 = icmp eq i64 %2, 0
  br i1 %.not169, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !128  ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !949
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31   ; 9 uses
  %.not.i2.i.us = icmp eq ptr %i.w, null          ; 2 uses
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !177  ; 7 uses
  %.not.i100.us = icmp eq ptr %i.x, null
  br i1 %.not.i100.us, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  br i1 %.not.i2.i.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.preheader: ; preds = %.lr.ph.split.us.split.us
  %xtraiter260 = and i64 %2, 3                    ; 3 uses
  %i.y = icmp ult i64 %2, 4
  br i1 %i.y, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.preheader
  %unroll_iter264 = and i64 %2, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader: ; preds = %.lr.ph.split.us.split.us
  %i.z = add i64 %2, -4294967297
  %or.cond = icmp ult i64 %i.z, -4294967292
  br i1 %or.cond, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader243, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader
  %n.mod.vf = and i64 %2, 3                       ; 2 uses
  %i.aa = icmp eq i64 %n.mod.vf, 0
  %i.ab = select i1 %i.aa, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %2, %i.ab                  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %vec.phi235 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aj, %vector.body ]
  %i.ac = and i64 %index, 4294967292
  %i.ad = and i64 %index, 4294967292
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.ac
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %wide.vec = load <4 x i64>, ptr %i.ag, align 8, !tbaa !139
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec236 = load <4 x i64>, ptr %i.ah, align 8, !tbaa !139
  %strided.vec237 = shufflevector <4 x i64> %wide.vec236, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.ai = add <2 x i64> %strided.vec, %vec.phi    ; 2 uses
  %i.aj = add <2 x i64> %strided.vec237, %vec.phi235 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !1179

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aj, %i.ai
  %i.al = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader243

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader243: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader, %middle.block
  %.072151.us.us.us.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader ], [ %i.al, %middle.block ] ; 2 uses
  %.073150.us.us.us.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %i.am = sub i64 %2, %.073150.us.us.us.ph
  %xtraiter266 = and i64 %i.am, 3                 ; 2 uses
  %lcmp.mod267.not = icmp eq i64 %xtraiter266, 0
  br i1 %lcmp.mod267.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader243, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol
  %.072151.us.us.us.prol = phi i64 [ %i.ar, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol ], [ %.072151.us.us.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader243 ]
  %.073150.us.us.us.prol = phi i64 [ %i.as, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol ], [ %.073150.us.us.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader243 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader243 ]
  %i.an = and i64 %.073150.us.us.us.prol, 4294967295
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !139
  %i.ar = add i64 %i.aq, %.072151.us.us.us.prol   ; 3 uses
  %i.as = add nuw i64 %.073150.us.us.us.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter266
  br i1 %prol.iter.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol, !llvm.loop !1180

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader243
  %.lcssa244.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader243 ], [ %i.ar, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol ]
  %.072151.us.us.us.unr = phi i64 [ %.072151.us.us.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader243 ], [ %i.ar, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol ]
  %.073150.us.us.us.unr = phi i64 [ %.073150.us.us.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader243 ], [ %i.as, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol ]
  %i.at = sub i64 %.073150.us.us.us.ph, %2
  %i.au = icmp ugt i64 %i.at, -4
  br i1 %i.au, label %.lr.ph167, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us
  %.072151.us.us.us = phi i64 [ %i.br, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us ], [ %.072151.us.us.us.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol.loopexit ]
  %.073150.us.us.us = phi i64 [ %i.bs, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us ], [ %.073150.us.us.us.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol.loopexit ] ; 5 uses
  %i.av = and i64 %.073150.us.us.us, 4294967295
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !139
  %i.az = add i64 %i.ay, %.072151.us.us.us
  %i.ba = add nuw i64 %.073150.us.us.us, 1
  %i.bb = and i64 %i.ba, 4294967295
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !139
  %i.bf = add i64 %i.be, %i.az
  %i.bg = add nuw i64 %.073150.us.us.us, 2
  %i.bh = and i64 %i.bg, 4294967295
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !139
  %i.bl = add i64 %i.bk, %i.bf
  %i.bm = add nuw i64 %.073150.us.us.us, 3
  %i.bn = and i64 %i.bm, 4294967295
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !139
  %i.br = add i64 %i.bq, %i.bl                    ; 2 uses
  %i.bs = add nuw i64 %.073150.us.us.us, 4        ; 2 uses
  %exitcond184.not.3 = icmp eq i64 %i.bs, %2
  br i1 %exitcond184.not.3, label %.lr.ph167, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us, !llvm.loop !1181

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.preheader.new
  %.072151.us.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.preheader.new ], [ %i.cx, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us ]
  %.073150.us.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.preheader.new ], [ %i.cy, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us ] ; 5 uses
  %niter265 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.preheader.new ], [ %niter265.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.073150.us.us
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !139
  %i.bz = add i64 %i.by, %.072151.us.us
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.073150.us.us
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !139
  %i.ch = add i64 %i.cg, %i.bz
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.073150.us.us
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !3
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !139
  %i.cp = add i64 %i.co, %i.ch
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.073150.us.us
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !139
  %i.cx = add i64 %i.cw, %i.cp                    ; 3 uses
  %i.cy = add nuw i64 %.073150.us.us, 4           ; 2 uses
  %niter265.next.3 = add nuw i64 %niter265, 4     ; 2 uses
  %niter265.ncmp.3 = icmp eq i64 %niter265.next.3, %unroll_iter264
  br i1 %niter265.ncmp.3, label %.lr.ph167.loopexit247.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us, !llvm.loop !1182

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  br i1 %.not.i2.i.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us153.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.preheader: ; preds = %.lr.ph.split.us.split
  %xtraiter = and i64 %2, 1
  %i.cz = icmp eq i64 %2, 1
  br i1 %i.cz, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.preheader
  %unroll_iter = and i64 %2, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us153.preheader: ; preds = %.lr.ph.split.us.split
  %xtraiter254 = and i64 %2, 1
  %i.da = icmp eq i64 %2, 1
  br i1 %i.da, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us153.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us153.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us153.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us153.preheader
  %unroll_iter258 = and i64 %2, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us153

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us153: ; preds = %bb.b, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us153.preheader.new
  %.072151.us.us154 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us153.preheader.new ], [ %.1.us.us158.1, %bb.b ] ; 2 uses
  %.073150.us.us155 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us153.preheader.new ], [ %i.dy, %bb.b ] ; 4 uses
  %niter259 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us153.preheader.new ], [ %niter259.next.1, %bb.b ]
  %i.db = and i64 %.073150.us.us155, 4294967294   ; 2 uses
  %i.dc = lshr i64 %i.db, 6
  %i.dd = and i64 %.073150.us.us155, 62
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.dc
  %i.df = load i64, ptr %i.de, align 8, !tbaa !53
  %i.dg = shl nuw nsw i64 1, %i.dd
  %i.dh = and i64 %i.df, %i.dg
  %.not144.us.us = icmp eq i64 %i.dh, 0
  br i1 %.not144.us.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us153.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us157

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us157: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us153
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.db
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !139
  %i.dl = add i64 %i.dk, %.072151.us.us154
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us153.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us153.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us157, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us153
  %.1.us.us158 = phi i64 [ %i.dl, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us157 ], [ %.072151.us.us154, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us153 ] ; 2 uses
  %i.dm = or disjoint i64 %.073150.us.us155, 1    ; 2 uses
  %i.dn = and i64 %i.dm, 4294967295               ; 2 uses
  %i.do = lshr i64 %i.dn, 6
  %i.dp = and i64 %i.dm, 63
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.do
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !53
  %i.ds = shl nuw i64 1, %i.dp
  %i.dt = and i64 %i.dr, %i.ds
  %.not144.us.us.1 = icmp eq i64 %i.dt, 0
  br i1 %.not144.us.us.1, label %bb.b, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us157.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us157.1: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us153.1
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.dn
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !139
  %i.dx = add i64 %i.dw, %.1.us.us158
  br label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us157.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us153.1
  %.1.us.us158.1 = phi i64 [ %i.dx, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us157.1 ], [ %.1.us.us158, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us153.1 ] ; 3 uses
  %i.dy = add nuw i64 %.073150.us.us155, 2        ; 2 uses
  %niter259.next.1 = add nuw i64 %niter259, 2     ; 2 uses
  %niter259.ncmp.1 = icmp eq i64 %niter259.next.1, %unroll_iter258
  br i1 %niter259.ncmp.1, label %.lr.ph167.loopexit249.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us153, !llvm.loop !1182

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us: ; preds = %bb.c, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.preheader.new
  %.072151.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.preheader.new ], [ %.1.us.1, %bb.c ] ; 2 uses
  %.073150.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.preheader.new ], [ %i.fa, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.preheader.new ], [ %niter.next.1, %bb.c ]
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.073150.us
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.eb = zext i32 %i.ea to i64                   ; 3 uses
  %i.ec = lshr i64 %i.eb, 6
  %i.ed = and i64 %i.eb, 63
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ec
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !53
  %i.eg = shl nuw i64 1, %i.ed
  %i.eh = and i64 %i.ef, %i.eg
  %.not144.us = icmp eq i64 %i.eh, 0
  br i1 %.not144.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.eb
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !139
end_hunk_2
begin_hunk_3_@_ZN6duckdb7variant16ConvertToVariantILb1ELb1EEEbRNS0_19ToVariantSourceDataERNS0_25ToVariantGlobalResultDataEmNS_12optional_ptrIKNS_15SelectionVectorELb1EEES9_b:bb.a
bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_ZN6duckdb7variant22ConvertStructToVariantILb1ELb1EEEbRNS0_19ToVariantSourceDataERNS0_25ToVariantGlobalResultDataEmNS_12optional_ptrIKNS_15SelectionVectorELb1EEES9_b(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, ptr %3, ptr %4, i1 noundef zeroext %5)
  br label %bb.q

bb.f:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_ZN6duckdb7variant21ConvertUnionToVariantILb1ELb1EEEbRNS0_19ToVariantSourceDataERNS0_25ToVariantGlobalResultDataEmNS_12optional_ptrIKNS_15SelectionVectorELb1EEES9_b(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, ptr %3, ptr %4, i1 noundef zeroext %5)
  br label %bb.q

bb.g:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN6duckdb7variant23ConvertVariantToVariantILb1ELb1EEEbRNS0_19ToVariantSourceDataERNS0_25ToVariantGlobalResultDataEmNS_12optional_ptrIKNS_15SelectionVectorELb1EEES9_b(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, ptr %3, ptr %4, i1 noundef zeroext %5)
  br label %bb.q

bb.h:                                             ; preds = %bb.b
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.thread

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZN6duckdb8EnumUtil8ToStringINS_13LogicalTypeIdEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, i8 noundef zeroext %i.c)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6duckdb23NotImplementedExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.r unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.thread: ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.l:                                             ; preds = %bb.k, %bb.j
  %.055 = phi i1 [ false, %bb.k ], [ true, %bb.j ] ; 2 uses
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.n = load ptr, ptr %8, align 8, !tbaa !52     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.n) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.q = load ptr, ptr %6, align 8, !tbaa !52     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.u = load ptr, ptr %6, align 8, !tbaa !52     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  call void @_ZdlPv(ptr noundef %i.u) #25
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.q) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.055, label %bb.m, label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.055, label %bb.m, label %bb.n

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.thread
  %.pn.pn66.ph = phi { ptr, i32 } [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.thread ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.thread ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %.pn.pn66 = phi { ptr, i32 } [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59 ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ %.pn.pn66.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.k) #24
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %.pn.pn65 = phi { ptr, i32 } [ %.pn.pn66, %bb.m ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59 ]
  resume { ptr, i32 } %.pn.pn65

_ZNK6duckdb11LogicalType8IsNestedEv.exit:         ; preds = %bb.a
  %i.x = tail call noundef zeroext i1 @_ZNK6duckdb11LogicalType10IsJSONTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  br i1 %i.x, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNK6duckdb11LogicalType8IsNestedEv.exit
  %i.y = tail call noundef zeroext i1 @_ZN6duckdb7variant20ConvertJSONToVariantILb1ELb1EEEbRNS0_19ToVariantSourceDataERNS0_25ToVariantGlobalResultDataEmNS_12optional_ptrIKNS_15SelectionVectorELb1EEES9_b(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, ptr %3, ptr %4, i1 noundef zeroext %5)
  br label %bb.q

bb.p:                                             ; preds = %_ZNK6duckdb11LogicalType8IsNestedEv.exit
  %i.z = tail call noundef zeroext i1 @_ZN6duckdb7variant25ConvertPrimitiveToVariantILb1ELb1EEEbRNS0_19ToVariantSourceDataERNS0_25ToVariantGlobalResultDataEmNS_12optional_ptrIKNS_15SelectionVectorELb1EEES9_b(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, ptr %3, ptr %4, i1 noundef zeroext %5)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0 = phi i1 [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ %i.h, %bb.e ], [ %i.i, %bb.f ], [ %i.j, %bb.g ], [ %i.y, %bb.o ], [ %i.z, %bb.p ]
  ret i1 %.0

bb.r:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb7variant20ConvertListToVariantILb1ELb1EEEbRNS0_19ToVariantSourceDataERNS0_25ToVariantGlobalResultDataEmNS_12optional_ptrIKNS_15SelectionVectorELb1EEES9_b(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, ptr %3, ptr %4, i1 noundef zeroext %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.duckdb::optional_ptr.62", align 8 ; 5 uses
  %7 = alloca %"class.duckdb::optional_ptr.62", align 8 ; 4 uses
  %8 = alloca %"struct.duckdb::variant::ContainerSelectionVectors", align 8 ; 28 uses
  %9 = alloca %"class.duckdb::Vector", align 8    ; 8 uses
  %10 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %11 = alloca %"struct.duckdb::variant::ToVariantSourceData", align 8 ; 12 uses
  %12 = alloca %"struct.duckdb::variant::ToVariantSourceData", align 8 ; 12 uses
  store ptr %3, ptr %7, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !946, !nonnull !130, !align !131
  %i.c = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 noundef 3) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !946, !nonnull !130, !align !131
  %i.g = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 noundef 2) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !946, !nonnull !130, !align !131
  %i.k = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 noundef 1) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !81
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_12list_entry_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !948  ; 20 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !1178, !nonnull !130, !align !131
  %.not158 = icmp eq i64 %2, 0
  br i1 %.not158, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !128  ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !949
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31   ; 9 uses
  %.not.i2.i.us = icmp eq ptr %i.w, null          ; 2 uses
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !177  ; 7 uses
  %.not.i93.us = icmp eq ptr %i.x, null
  br i1 %.not.i93.us, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  br i1 %.not.i2.i.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.preheader: ; preds = %.lr.ph.split.us.split.us
  %xtraiter248 = and i64 %2, 3                    ; 3 uses
  %i.y = icmp ult i64 %2, 4
  br i1 %i.y, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.preheader
  %unroll_iter252 = and i64 %2, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader: ; preds = %.lr.ph.split.us.split.us
  %i.z = add i64 %2, -4294967297
  %or.cond = icmp ult i64 %i.z, -4294967292
  br i1 %or.cond, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader231, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader
  %n.mod.vf = and i64 %2, 3                       ; 2 uses
  %i.aa = icmp eq i64 %n.mod.vf, 0
  %i.ab = select i1 %i.aa, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %2, %i.ab                  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %vec.phi223 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aj, %vector.body ]
  %i.ac = and i64 %index, 4294967292
  %i.ad = and i64 %index, 4294967292
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.ac
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %wide.vec = load <4 x i64>, ptr %i.ag, align 8, !tbaa !139
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec224 = load <4 x i64>, ptr %i.ah, align 8, !tbaa !139
  %strided.vec225 = shufflevector <4 x i64> %wide.vec224, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.ai = add <2 x i64> %strided.vec, %vec.phi    ; 2 uses
  %i.aj = add <2 x i64> %strided.vec225, %vec.phi223 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !1289

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aj, %i.ai
  %i.al = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader231

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader231: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader, %middle.block
  %.065141.us.us.us.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader ], [ %i.al, %middle.block ] ; 2 uses
  %.066140.us.us.us.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %i.am = sub i64 %2, %.066140.us.us.us.ph
  %xtraiter254 = and i64 %i.am, 3                 ; 2 uses
  %lcmp.mod255.not = icmp eq i64 %xtraiter254, 0
  br i1 %lcmp.mod255.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader231, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol
  %.065141.us.us.us.prol = phi i64 [ %i.ar, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol ], [ %.065141.us.us.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader231 ]
  %.066140.us.us.us.prol = phi i64 [ %i.as, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol ], [ %.066140.us.us.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader231 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader231 ]
  %i.an = and i64 %.066140.us.us.us.prol, 4294967295
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !139
  %i.ar = add i64 %i.aq, %.065141.us.us.us.prol   ; 3 uses
  %i.as = add nuw i64 %.066140.us.us.us.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter254
  br i1 %prol.iter.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol, !llvm.loop !1290

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader231
  %.lcssa232.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader231 ], [ %i.ar, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol ]
  %.065141.us.us.us.unr = phi i64 [ %.065141.us.us.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader231 ], [ %i.ar, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol ]
  %.066140.us.us.us.unr = phi i64 [ %.066140.us.us.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.preheader231 ], [ %i.as, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol ]
  %i.at = sub i64 %.066140.us.us.us.ph, %2
  %i.au = icmp ugt i64 %i.at, -4
  br i1 %i.au, label %.lr.ph156, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us
  %.065141.us.us.us = phi i64 [ %i.br, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us ], [ %.065141.us.us.us.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol.loopexit ]
  %.066140.us.us.us = phi i64 [ %i.bs, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us ], [ %.066140.us.us.us.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us.prol.loopexit ] ; 5 uses
  %i.av = and i64 %.066140.us.us.us, 4294967295
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !139
  %i.az = add i64 %i.ay, %.065141.us.us.us
  %i.ba = add nuw i64 %.066140.us.us.us, 1
  %i.bb = and i64 %i.ba, 4294967295
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !139
  %i.bf = add i64 %i.be, %i.az
  %i.bg = add nuw i64 %.066140.us.us.us, 2
  %i.bh = and i64 %i.bg, 4294967295
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !139
  %i.bl = add i64 %i.bk, %i.bf
  %i.bm = add nuw i64 %.066140.us.us.us, 3
  %i.bn = and i64 %i.bm, 4294967295
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !139
  %i.br = add i64 %i.bq, %i.bl                    ; 2 uses
  %i.bs = add nuw i64 %.066140.us.us.us, 4        ; 2 uses
  %exitcond173.not.3 = icmp eq i64 %i.bs, %2
  br i1 %exitcond173.not.3, label %.lr.ph156, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.us, !llvm.loop !1291

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.preheader.new
  %.065141.us.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.preheader.new ], [ %i.cx, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us ]
  %.066140.us.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.preheader.new ], [ %i.cy, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us ] ; 5 uses
  %niter253 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us.preheader.new ], [ %niter253.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.066140.us.us
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !139
  %i.bz = add i64 %i.by, %.065141.us.us
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.066140.us.us
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !139
  %i.ch = add i64 %i.cg, %i.bz
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.066140.us.us
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !3
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !139
  %i.cp = add i64 %i.co, %i.ch
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.066140.us.us
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !139
  %i.cx = add i64 %i.cw, %i.cp                    ; 3 uses
  %i.cy = add nuw i64 %.066140.us.us, 4           ; 2 uses
  %niter253.next.3 = add nuw i64 %niter253, 4     ; 2 uses
  %niter253.ncmp.3 = icmp eq i64 %niter253.next.3, %unroll_iter252
  br i1 %niter253.ncmp.3, label %.lr.ph156.loopexit235.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us, !llvm.loop !1292

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  br i1 %.not.i2.i.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us143.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.preheader: ; preds = %.lr.ph.split.us.split
  %xtraiter = and i64 %2, 1
  %i.cz = icmp eq i64 %2, 1
  br i1 %i.cz, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.preheader
  %unroll_iter = and i64 %2, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us143.preheader: ; preds = %.lr.ph.split.us.split
  %xtraiter242 = and i64 %2, 1
  %i.da = icmp eq i64 %2, 1
  br i1 %i.da, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us143.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us143.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us143.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us143.preheader
  %unroll_iter246 = and i64 %2, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us143

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us143: ; preds = %bb.b, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us143.preheader.new
  %.065141.us.us144 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us143.preheader.new ], [ %.1.us.us148.1, %bb.b ] ; 2 uses
  %.066140.us.us145 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us143.preheader.new ], [ %i.dy, %bb.b ] ; 4 uses
  %niter247 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us143.preheader.new ], [ %niter247.next.1, %bb.b ]
  %i.db = and i64 %.066140.us.us145, 4294967294   ; 2 uses
  %i.dc = lshr i64 %i.db, 6
  %i.dd = and i64 %.066140.us.us145, 62
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.dc
  %i.df = load i64, ptr %i.de, align 8, !tbaa !53
  %i.dg = shl nuw nsw i64 1, %i.dd
  %i.dh = and i64 %i.df, %i.dg
  %.not134.us.us = icmp eq i64 %i.dh, 0
  br i1 %.not134.us.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us143.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us147

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us147: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us143
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.db
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !139
  %i.dl = add i64 %i.dk, %.065141.us.us144
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us143.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us143.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us147, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us143
  %.1.us.us148 = phi i64 [ %i.dl, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us147 ], [ %.065141.us.us144, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us143 ] ; 2 uses
  %i.dm = or disjoint i64 %.066140.us.us145, 1    ; 2 uses
  %i.dn = and i64 %i.dm, 4294967295               ; 2 uses
  %i.do = lshr i64 %i.dn, 6
  %i.dp = and i64 %i.dm, 63
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.do
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !53
  %i.ds = shl nuw i64 1, %i.dp
  %i.dt = and i64 %i.dr, %i.ds
  %.not134.us.us.1 = icmp eq i64 %i.dt, 0
  br i1 %.not134.us.us.1, label %bb.b, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us147.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us147.1: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us143.1
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.dn
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !139
  %i.dx = add i64 %i.dw, %.1.us.us148
  br label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us147.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us143.1
  %.1.us.us148.1 = phi i64 [ %i.dx, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us147.1 ], [ %.1.us.us148, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us143.1 ] ; 3 uses
  %i.dy = add nuw i64 %.066140.us.us145, 2        ; 2 uses
  %niter247.next.1 = add nuw i64 %niter247, 2     ; 2 uses
  %niter247.ncmp.1 = icmp eq i64 %niter247.next.1, %unroll_iter246
  br i1 %niter247.ncmp.1, label %.lr.ph156.loopexit237.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.us143, !llvm.loop !1292

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us: ; preds = %bb.c, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.preheader.new
  %.065141.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.preheader.new ], [ %.1.us.1, %bb.c ] ; 2 uses
  %.066140.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.preheader.new ], [ %i.fa, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.preheader.new ], [ %niter.next.1, %bb.c ]
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.066140.us
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.eb = zext i32 %i.ea to i64                   ; 3 uses
  %i.ec = lshr i64 %i.eb, 6
  %i.ed = and i64 %i.eb, 63
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ec
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !53
  %i.eg = shl nuw i64 1, %i.ed
  %i.eh = and i64 %i.ef, %i.eg
  %.not134.us = icmp eq i64 %i.eh, 0
  br i1 %.not134.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.us
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.eb
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !139
end_hunk_3
