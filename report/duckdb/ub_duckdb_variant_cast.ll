Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_variant_cast?download=true
inline.NumInlined: 6391
inline.NumDeleted: 1307
loop-unroll.NumCompletelyUnrolled: 99
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 119
begin_hunk_0_@_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_14timestamp_ns_tEEEvRKNS_6VectorE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #24
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1186 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.26", align 1 ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !211
  %i.e = icmp eq i8 %i.d, -56
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 -56, ptr %i.a, align 1, !tbaa !247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.g = load i8, ptr %i.c, align 1, !tbaa !211
  store i8 %i.g, ptr %i.b, align 1, !tbaa !247
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.j = load ptr, ptr %1, align 8, !tbaa !136    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #24
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN6duckdb12VarintDecodeImEET_RPKh(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !guid !1187 {
bb.a:
  %.promoted = load ptr, ptr %0, align 8, !tbaa !230 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.promoted, i64 1 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !230
  %i.b = load i8, ptr %.promoted, align 1, !tbaa !114 ; 2 uses
  %i.c = and i8 %i.b, 127
  %i.d = zext nneg i8 %i.c to i64                 ; 2 uses
  %i.e = icmp sgt i8 %i.b, -1
  br i1 %i.e, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.promoted, i64 2 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !230
  %i.g = load i8, ptr %i.a, align 1, !tbaa !114   ; 2 uses
  %i.h = and i8 %i.g, 127
  %i.i = zext nneg i8 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 7
  %i.k = or disjoint i64 %i.j, %i.d               ; 2 uses
  %i.l = icmp sgt i8 %i.g, -1
  br i1 %i.l, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.promoted, i64 3 ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !230
  %i.n = load i8, ptr %i.f, align 1, !tbaa !114   ; 2 uses
  %i.o = and i8 %i.n, 127
  %i.p = zext nneg i8 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 14
  %i.r = or disjoint i64 %i.q, %i.k               ; 2 uses
  %i.s = icmp sgt i8 %i.n, -1
  br i1 %i.s, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.promoted, i64 4 ; 2 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !230
  %i.u = load i8, ptr %i.m, align 1, !tbaa !114   ; 2 uses
  %i.v = and i8 %i.u, 127
  %i.w = zext nneg i8 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 21
  %i.y = or disjoint i64 %i.x, %i.r               ; 2 uses
  %i.z = icmp sgt i8 %i.u, -1
  br i1 %i.z, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.promoted, i64 5 ; 2 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !230
  %i.ab = load i8, ptr %i.t, align 1, !tbaa !114  ; 2 uses
  %i.ac = and i8 %i.ab, 127
  %i.ad = zext nneg i8 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 28
  %i.af = or disjoint i64 %i.ae, %i.y             ; 2 uses
  %i.ag = icmp sgt i8 %i.ab, -1
  br i1 %i.ag, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.promoted, i64 6 ; 2 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !230
  %i.ai = load i8, ptr %i.aa, align 1, !tbaa !114 ; 2 uses
  %i.aj = and i8 %i.ai, 127
  %i.ak = zext nneg i8 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, 35
  %i.am = or i64 %i.al, %i.af                     ; 2 uses
  %i.an = icmp sgt i8 %i.ai, -1
  br i1 %i.an, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %.promoted, i64 7 ; 2 uses
  store ptr %i.ao, ptr %0, align 8, !tbaa !230
  %i.ap = load i8, ptr %i.ah, align 1, !tbaa !114 ; 2 uses
  %i.aq = and i8 %i.ap, 127
  %i.ar = zext nneg i8 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 42
  %i.at = or i64 %i.as, %i.am                     ; 2 uses
  %i.au = icmp sgt i8 %i.ap, -1
  br i1 %i.au, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %.promoted, i64 8 ; 2 uses
  store ptr %i.av, ptr %0, align 8, !tbaa !230
  %i.aw = load i8, ptr %i.ao, align 1, !tbaa !114 ; 2 uses
  %i.ax = and i8 %i.aw, 127
  %i.ay = zext nneg i8 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.ay, 49
  %i.ba = or i64 %i.az, %i.at                     ; 2 uses
  %i.bb = icmp sgt i8 %i.aw, -1
  br i1 %i.bb, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %.promoted, i64 9 ; 2 uses
  store ptr %i.bc, ptr %0, align 8, !tbaa !230
  %i.bd = load i8, ptr %i.av, align 1, !tbaa !114 ; 2 uses
  %i.be = and i8 %i.bd, 127
  %i.bf = zext nneg i8 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 56
  %i.bh = or i64 %i.bg, %i.ba                     ; 2 uses
  %i.bi = icmp sgt i8 %i.bd, -1
  br i1 %i.bi, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.promoted, i64 10
  store ptr %i.bj, ptr %0, align 8, !tbaa !230
  %i.bk = load i8, ptr %i.bc, align 1, !tbaa !114 ; 2 uses
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = shl i64 %i.bl, 63
  %i.bn = or i64 %i.bm, %i.bh
  %i.bo = icmp sgt i8 %i.bk, -1
  br i1 %i.bo, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull @.str.20)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.bp, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #26
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bq = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bp) #24
  resume { ptr, i32 } %i.bq

bb.n:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa = phi i64 [ %i.d, %bb.a ], [ %i.k, %bb.b ], [ %i.r, %bb.c ], [ %i.y, %bb.d ], [ %i.af, %bb.e ], [ %i.am, %bb.f ], [ %i.at, %bb.g ], [ %i.ba, %bb.h ], [ %i.bh, %bb.i ], [ %i.bn, %bb.j ]
  ret i64 %.lcssa
}

declare { i64, ptr } @_ZN6duckdb12StringVector15AddStringOrBlobERNS_6VectorEPKcm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #10

declare noundef ptr @_ZN13duckdb_yyjson18yyjson_mut_doc_newEPKNS_10yyjson_alcE(ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN13duckdb_yyjson25yyjson_mut_val_write_optsEPKNS_14yyjson_mut_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare { i64, ptr } @_ZN6duckdb12StringVector9AddStringERNS_6VectorENS_8string_tE(ptr noundef nonnull align 8 dereferenceable(104), i64, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb19ConvertedJSONHolderD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1188 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !232    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN13duckdb_yyjson19yyjson_mut_doc_freeEPNS_14yyjson_mut_docE(ptr noundef nonnull %i.a)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !236  ; 2 uses
  %.not2 = icmp eq ptr %i.c, null
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.c) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void

bb.f:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #28
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1189 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.e = icmp ugt i64 %0, 4294967295
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %0, ptr %i.b, align 8, !tbaa !137
  store i32 0, ptr %i.c, align 4, !tbaa !27
  store i32 -1, ptr %i.d, align 4, !tbaa !27
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 75, ptr %i.a, align 8, !tbaa !137
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ; 3 uses

.noexc.i:                                         ; preds = %bb.b
  store ptr %i.h, ptr %1, align 8, !tbaa !136
  %i.i = load i64, ptr %i.a, align 8, !tbaa !137  ; 3 uses
  store i64 %i.i, ptr %i.g, align 8, !tbaa !114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(75) %i.h, ptr noundef nonnull align 1 dereferenceable(75) @.str.23, i64 75, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !113
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  store i8 0, ptr %i.k, align 1, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmRjS3_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc.i
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.g unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %.noexc.i
  %.0.i = phi i1 [ false, %bb.c ], [ true, %.noexc.i ] ; 2 uses
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !136    ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.g
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.n) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0.i, label %bb.e, label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn8.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn7.i = phi { ptr, i32 } [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn8.i, %bb.e ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn7.i

bb.g:                                             ; preds = %bb.c
  unreachable

bb.h:                                             ; preds = %bb.a
  %i.p = trunc nuw i64 %0 to i32
  ret i32 %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17InternalExceptionC2IJRmRjS3_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1192 {
bb.a:
  %5 = alloca %"class.std::vector.95", align 8    ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !1193
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !noalias !1193
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveImJRKjS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %5, align 8, !tbaa !140, !noalias !1193 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !141, !noalias !1193 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !136  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #25
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %5, align 8, !tbaa !140, !noalias !1193
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJmjjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit, label %bb.c
end_hunk_0
