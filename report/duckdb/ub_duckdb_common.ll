Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common?download=true
inline.NumInlined: 29986
inline.NumDeleted: 10454
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 387
loop-unroll.NumUnrolled: 433
begin_hunk_0_@_ZNK6duckdb11LogicalType8ToStringB5cxx11Ev:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548: ; preds = %bb.fs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i546, %bb.fr
  %.pn89 = phi { ptr, i32 } [ %i.zo, %bb.fr ], [ %i.zp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i546 ], [ %i.zp, %bb.fs ] ; 2 uses
  %i.zt = load ptr, ptr %42, align 8, !tbaa !217  ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %42, i64 16
  %i.zv = icmp eq ptr %i.zt, %i.zu
  br i1 %i.zv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit551, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i549

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i549: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548
  call void @_ZdlPv(ptr noundef %i.zt) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit551

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit551: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i549, %bb.fq
  %.pn89.pn = phi { ptr, i32 } [ %i.zn, %bb.fq ], [ %.pn89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i549 ], [ %.pn89, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #58
  %i.zw = load ptr, ptr %41, align 8, !tbaa !217  ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.zy = icmp eq ptr %i.zw, %i.zx
  br i1 %i.zy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit554, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i552

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i552: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit551
  call void @_ZdlPv(ptr noundef %i.zw) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit554

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit554: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit551, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i552
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #58
  br label %common.resume

bb.ft:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i150
  call void @llvm.experimental.noalias.scope.decl(metadata !2401)
  %i.zz = zext i8 %.pr to i32
  %i.aaa = call noundef ptr @_ZN6duckdb10StringUtil12EnumToStringEPKNS0_17EnumStringLiteralEmPKcj(ptr noundef nonnull @_ZZN6duckdb22GetLogicalTypeIdValuesEvE6values, i64 noundef 52, ptr noundef nonnull @.str.1191, i32 noundef %i.zz), !noalias !2401 ; 4 uses
  store ptr %i.cy, ptr %0, align 8, !tbaa !328, !alias.scope !2401
  %i.aab = icmp eq ptr %i.aaa, null
  br i1 %i.aab, label %.noexc.i557, label %bb.fu

.noexc.i557:                                      ; preds = %bb.ft
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.2090) #59
  unreachable

bb.fu:                                            ; preds = %bb.ft
  %i.aac = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aaa) #58 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58, !noalias !2401
  store i64 %i.aac, ptr %i.a, align 8, !tbaa !231, !noalias !2401
  %i.aad = icmp ugt i64 %i.aac, 15
  br i1 %i.aad, label %.noexc.i.i556, label %._crit_edge.i.i.i555

.noexc.i.i556:                                    ; preds = %bb.fu
  %i.aae = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.aae, ptr %0, align 8, !tbaa !217, !alias.scope !2401
  %i.aaf = load i64, ptr %i.a, align 8, !tbaa !231, !noalias !2401
  store i64 %i.aaf, ptr %i.cy, align 8, !tbaa !254, !alias.scope !2401
  br label %._crit_edge.i.i.i555

._crit_edge.i.i.i555:                             ; preds = %.noexc.i.i556, %bb.fu
  %i.aag = phi ptr [ %i.aae, %.noexc.i.i556 ], [ %i.cy, %bb.fu ] ; 2 uses
  switch i64 %i.aac, label %bb.fw [
    i64 1, label %bb.fv
    i64 0, label %_ZN6duckdb8EnumUtil8ToStringINS_13LogicalTypeIdEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit
  ]

bb.fv:                                            ; preds = %._crit_edge.i.i.i555
  %i.aah = load i8, ptr %i.aaa, align 1, !tbaa !254
  store i8 %i.aah, ptr %i.aag, align 1, !tbaa !254
  br label %_ZN6duckdb8EnumUtil8ToStringINS_13LogicalTypeIdEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit

bb.fw:                                            ; preds = %._crit_edge.i.i.i555
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aag, ptr nonnull align 1 %i.aaa, i64 %i.aac, i1 false)
  br label %_ZN6duckdb8EnumUtil8ToStringINS_13LogicalTypeIdEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit

_ZN6duckdb8EnumUtil8ToStringINS_13LogicalTypeIdEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit: ; preds = %._crit_edge.i.i.i555, %bb.fv, %bb.fw
  %i.aai = load i64, ptr %i.a, align 8, !tbaa !231, !noalias !2401 ; 2 uses
  store i64 %i.aai, ptr %i.cz, align 8, !tbaa !300, !alias.scope !2401
  %i.aaj = load ptr, ptr %0, align 8, !tbaa !217, !alias.scope !2401
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %i.aai
  store i8 0, ptr %i.aak, align 1, !tbaa !254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58, !noalias !2401
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %_ZNK6duckdb11LogicalType16HasExtensionInfoEv.exit, %bb.e, %_ZNK6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEptEv.exit.i139, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i451, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i302, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit506, %_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv.exit910, %bb.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit401, %_ZN6duckdb8EnumUtil8ToStringINS_13LogicalTypeIdEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545, %._crit_edge.i.i533, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit530, %._crit_edge.i.i517, %._crit_edge.i.i513, %bb.fh, %._crit_edge.i.i483, %._crit_edge.i.i414, %._crit_edge.i.i373, %._crit_edge.i.i294, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278, %._crit_edge.i.i234, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, %._crit_edge.i.i212, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb8ListType12GetChildTypeERKNS_11LogicalTypeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !514  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_ZN6duckdb12optional_ptrINS_13ExtraTypeInfoELb1EEptEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #58 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.2075, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #59
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !217    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn9.i.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #58
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn9.i.i, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn8.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb12optional_ptrINS_13ExtraTypeInfoELb1EEptEv.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  ret ptr %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 3) i32 @_ZN6duckdb25BoxRendererImplementation13TypeAlignmentERKNS_11LogicalTypeE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(672) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #23 align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !299
  %switch.tableidx = add i8 %i.a, -11             ; 2 uses
  %i.b = icmp ult i8 %switch.tableidx, 40
  br i1 %i.b, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN6duckdb25BoxRendererImplementation13TypeAlignmentERKNS_11LogicalTypeE, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11BoxRenderer20TryFormatLargeNumberERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i8 noundef signext %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !300  ; 2 uses
  %i.d = icmp ult i64 %i.c, 6
  br i1 %i.d, label %bb.b, label %.lr.ph.preheader

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !328
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !300
  store i8 0, ptr %i.e, align 8, !tbaa !254
  br label %.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !217    ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !254
  %i.i = icmp eq i8 %i.h, 45                      ; 2 uses
  %spec.select = zext i1 %i.i to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %.145121 = phi i64 [ %spec.select, %.lr.ph.preheader ], [ %i.v, %bb.g ] ; 2 uses
  %.047120 = phi i64 [ 0, %.lr.ph.preheader ], [ %i.u, %bb.g ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.145121
  %i.k = load i8, ptr %i.j, align 1, !tbaa !254   ; 3 uses
  %i.l = icmp eq i8 %i.k, 46
  br i1 %i.l, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = add i8 %i.k, -58
  %or.cond = icmp ult i8 %i.m, -10
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !328
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !300
  store i8 0, ptr %i.n, align 8, !tbaa !254
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.p = icmp ugt i64 %.047120, 999999999999999999
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !328
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !300
  store i8 0, ptr %i.q, align 8, !tbaa !254
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.s = mul nuw i64 %.047120, 10
  %narrow = add nsw i8 %i.k, -48
  %i.t = zext nneg i8 %narrow to i64
  %i.u = add nuw i64 %i.s, %i.t                   ; 2 uses
  %i.v = add i64 %.145121, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2402

._crit_edge:                                      ; preds = %.lr.ph, %bb.g
  %.047.lcssa.ph = phi i64 [ %.047120, %.lr.ph ], [ %i.u, %bb.g ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.w, ptr %3, align 8, !tbaa !328
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  store i64 0, ptr %i.x, align 8, !tbaa !300
  store i8 0, ptr %i.w, align 8, !tbaa !254
  %.not = icmp ult i64 %.047.lcssa.ph, 995000
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.4.thread, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.36, i64 noundef 7)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.h
  %.pre131.pre132.pre134.pre136.pre = load i64, ptr %i.x, align 8, !tbaa !300 ; 2 uses
  %.not.1 = icmp ult i64 %.047.lcssa.ph, 995000000
  br i1 %.not.1, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.4, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.aa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %.pre131.pre132.pre134.pre136.pre, ptr noundef nonnull @.str.37, i64 noundef 7)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.1 unwind label %bb.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.1: ; preds = %bb.j
  %.pre131.pre132.pre134.pre = load i64, ptr %i.x, align 8, !tbaa !300 ; 2 uses
  %.not.2 = icmp ult i64 %.047.lcssa.ph, 995000000000
  br i1 %.not.2, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.4, label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.1
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %.pre131.pre132.pre134.pre, ptr noundef nonnull @.str.38, i64 noundef 8)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.2 unwind label %bb.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.2: ; preds = %bb.k
  %.pre131.pre132.pre = load i64, ptr %i.x, align 8, !tbaa !300 ; 2 uses
  %.not.3 = icmp ult i64 %.047.lcssa.ph, 995000000000000
  br i1 %.not.3, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.4, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.2
  %i.ac = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %.pre131.pre132.pre, ptr noundef nonnull @.str.39, i64 noundef 11)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.3 unwind label %bb.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.3: ; preds = %bb.l
  %.pre131.pre = load i64, ptr %i.x, align 8, !tbaa !300 ; 2 uses
  %.not.4 = icmp ult i64 %.047.lcssa.ph, 995000000000000000
  br i1 %.not.4, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.4, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.3
  %i.ad = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %.pre131.pre, ptr noundef nonnull @.str.40, i64 noundef 11)
          to label %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.4_crit_edge unwind label %bb.i ; 0 uses

._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.4_crit_edge: ; preds = %bb.m
  %.pre = load i64, ptr %i.x, align 8, !tbaa !300
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.2, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.4_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.3
  %i.ae = phi i64 [ %.pre131.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.3 ], [ %.pre, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.4_crit_edge ], [ %.pre131.pre132.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.2 ], [ %.pre131.pre132.pre134.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.1 ], [ %.pre131.pre132.pre134.pre136.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ]
  %.142.4 = phi i64 [ 1000000000000000, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.3 ], [ 1000000000000000000, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.4_crit_edge ], [ 1000000000000, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.2 ], [ 1000000000, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.1 ], [ 1000000, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ] ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.4.thread, label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.4.thread: ; preds = %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !328
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ah, align 8, !tbaa !300
  store i8 0, ptr %i.ag, align 8, !tbaa !254
  br label %bb.an

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.4
  %i.ai = udiv i64 %.142.4, 100
  %i.aj = udiv i64 %.142.4, 200
  %i.ak = add nuw i64 %i.aj, %.047.lcssa.ph
  %i.al = udiv i64 %i.ak, %i.ai                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  call void @llvm.experimental.noalias.scope.decl(metadata !2409)
  %i.am = icmp ult i64 %i.al, 10
  br i1 %i.am, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.n, %bb.t
  %.029.i.i = phi i32 [ %i.au, %bb.t ], [ 1, %bb.n ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.at, %bb.t ], [ %i.al, %bb.n ] ; 5 uses
  %i.an = icmp ult i64 %.02328.i.i, 100
  br i1 %i.an, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.ao = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.ap = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.ap, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.aq = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.r:                                             ; preds = %bb.p
  %i.ar = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.ar, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.as = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.t:                                             ; preds = %bb.r
  %i.at = udiv i64 %.02328.i.i, 10000
  %i.au = add i32 %.029.i.i, 4                    ; 2 uses
  %i.av = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.av, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !8

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.t, %bb.s, %bb.q, %bb.o, %bb.n
  %.022.i.i = phi i32 [ %i.as, %bb.s ], [ %i.ao, %bb.o ], [ %i.aq, %bb.q ], [ 1, %bb.n ], [ %i.au, %bb.t ]
  %i.aw = zext i32 %.022.i.i to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.ax, ptr %4, align 8, !tbaa !328, !alias.scope !2409
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.aw, i8 noundef signext 0)
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.ay = load ptr, ptr %4, align 8, !tbaa !217, !alias.scope !2409 ; 4 uses
  %i.az = icmp ugt i64 %i.al, 99
  br i1 %i.az, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.noexc
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !300, !alias.scope !2409
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = add i32 %i.bc, -1
  br label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %.lr.ph.i4.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.bg, %.lr.ph.i4.i ], [ %i.al, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.bq, %.lr.ph.i4.i ], [ %i.bd, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.be = urem i64 %.020.i.i, 100
  %i.bf = shl nuw nsw i64 %i.be, 1
  %i.bg = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bf ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !254, !noalias !2409
  %i.bk = zext i32 %.01819.i.i to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bk
  store i8 %i.bj, ptr %i.bl, align 1, !tbaa !254
  %i.bm = load i8, ptr %i.bh, align 2, !tbaa !254, !noalias !2409
  %i.bn = add i32 %.01819.i.i, -1
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bo
  store i8 %i.bm, ptr %i.bp, align 1, !tbaa !254
  %i.bq = add i32 %.01819.i.i, -2
  %i.br = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.br, label %.lr.ph.i4.i, label %._crit_edge.i.i, !llvm.loop !9

._crit_edge.i.i:                                  ; preds = %.lr.ph.i4.i, %.noexc
  %.0.lcssa.i.i = phi i64 [ %i.al, %.noexc ], [ %i.bg, %.lr.ph.i4.i ] ; 3 uses
  %i.bs = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.bs, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge.i.i
  %i.bt = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.bu = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !254, !noalias !2409
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !254
  %i.by = load i8, ptr %i.bu, align 2, !tbaa !254, !noalias !2409
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i
  %i.bz = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.ca = or disjoint i8 %i.bz, 48
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %storemerge.i.i = phi i8 [ %i.ca, %bb.v ], [ %i.by, %bb.u ]
  store i8 %storemerge.i.i, ptr %i.ay, align 1, !tbaa !254
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.cb, ptr %0, align 8, !tbaa !328
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store i64 0, ptr %i.cc, align 8, !tbaa !300
  store i8 0, ptr %i.cb, align 8, !tbaa !254
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.w
  %i.cd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.41, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.y ; 0 uses

bb.x:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

bb.y:                                             ; preds = %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i78, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.w
end_hunk_0
