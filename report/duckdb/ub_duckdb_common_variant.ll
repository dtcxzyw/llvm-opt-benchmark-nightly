inline.NumInlined: 1088
inline.NumDeleted: 543
begin_hunk_0_@_ZN6duckdbL12AnalyzeValueERKNS_12VariantValueEmRNS_9DataChunkE:bb.a
  %i.ev = add i32 %i.eu, %i.et
  store i32 %i.ev, ptr %i.r, align 4, !tbaa !3
  br label %.loopexit

bb.az:                                            ; preds = %bb.j
  %i.ew = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.ba unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.thread

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  invoke void @_ZNK6duckdb11LogicalType8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %bb.bb unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143.thread

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZN6duckdb17InternalExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  invoke void @__cxa_throw(ptr nonnull %i.ew, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.bq unwind label %bb.bd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.thread: ; preds = %bb.az
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split239

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.089 = phi i1 [ false, %bb.bc ], [ true, %bb.bb ] ; 2 uses
  %i.ey = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ez = load ptr, ptr %8, align 8, !tbaa !121   ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %bb.bd
  call void @_ZdlPv(ptr noundef %i.ez) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.fc = load ptr, ptr %6, align 8, !tbaa !121   ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143.thread: ; preds = %bb.ba
  %i.ff = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.fg = load ptr, ptr %6, align 8, !tbaa !121   ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fi = icmp eq ptr %i.fg, %i.fh
  br i1 %i.fi, label %.sink.split239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143.thread
  call void @_ZdlPv(ptr noundef %i.fg) #23
  br label %.sink.split239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143
  call void @_ZdlPv(ptr noundef %i.fc) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br i1 %.089, label %bb.be, label %bb.bp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br i1 %.089, label %bb.be, label %bb.bp

.sink.split239:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144.thread
  %.pn109.pn178.ph = phi { ptr, i32 } [ %i.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144.thread ], [ %i.ex, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.thread ], [ %i.ff, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.be

bb.be:                                            ; preds = %.sink.split239, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %.pn109.pn178 = phi { ptr, i32 } [ %i.ey, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144 ], [ %i.ey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ], [ %.pn109.pn178.ph, %.sink.split239 ]
  call void @__cxa_free_exception(ptr %i.ew) #21
  br label %bb.bp

bb.bf:                                            ; preds = %bb.a
  %i.fj = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.bg unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.thread

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.fj, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  invoke void @__cxa_throw(ptr nonnull %i.fj, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.bq unwind label %bb.bi

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.thread: ; preds = %bb.bf
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.087 = phi i1 [ false, %bb.bh ], [ true, %bb.bg ] ; 2 uses
  %i.fl = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fm = load ptr, ptr %9, align 8, !tbaa !121   ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %bb.bi
  call void @_ZdlPv(ptr noundef %i.fm) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br i1 %.087, label %bb.bj, label %bb.bp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br i1 %.087, label %bb.bj, label %bb.bp

bb.bj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %.pn190 = phi { ptr, i32 } [ %i.fk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.thread ], [ %i.fl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ %i.fl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147 ]
  call void @__cxa_free_exception(ptr %i.fj) #21
  br label %bb.bp

bb.bk:                                            ; preds = %bb.a
  %i.fp = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.bl unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152.thread

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.bm unwind label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  invoke void @__cxa_throw(ptr nonnull %i.fp, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.bq unwind label %bb.bn

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152.thread: ; preds = %bb.bk
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.0 = phi i1 [ false, %bb.bm ], [ true, %bb.bl ] ; 2 uses
  %i.fr = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fs = load ptr, ptr %11, align 8, !tbaa !121  ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %bb.bn
  call void @_ZdlPv(ptr noundef %i.fs) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br i1 %.0, label %bb.bo, label %bb.bp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br i1 %.0, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152
  %.pn113193 = phi { ptr, i32 } [ %i.fq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152.thread ], [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152 ], [ %i.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150 ]
  call void @__cxa_free_exception(ptr %i.fp) #21
  br label %bb.bp

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph210, %_ZN6duckdb13GetVarintSizeIjEEhT_.exit, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.au, %_ZN6duckdb13GetVarintSizeImEEhT_.exit140, %bb.j, %bb.j, %_ZN6duckdb13GetVarintSizeImEEhT_.exit122, %_ZN6duckdb13GetVarintSizeImEEhT_.exit
  ret void

bb.bp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144, %bb.at, %bb.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %bb.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %bb.bj
  %.pn113.pn = phi { ptr, i32 } [ %.pn113193, %bb.bo ], [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152 ], [ %i.fl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ %.pn190, %bb.bj ], [ %.pn109.pn178, %bb.be ], [ %i.ey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ], [ %.pn106.pn165, %bb.at ], [ %i.ey, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144 ], [ %i.fl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147 ], [ %i.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150 ]
  resume { ptr, i32 } %.pn113.pn

bb.bq:                                            ; preds = %bb.bm, %bb.bh, %bb.bc, %bb.aq
  unreachable
}

declare noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(144) ptr @_ZN6duckdb12StringVector15GetStringBufferERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #1

declare void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104), i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL12ConvertValueERKNS_12VariantValueERNS_17VariantVectorDataEmRNS_9DataChunkERNS_15SelectionVectorERNS_15OwningStringMapIjSt3mapINS_8string_tEjSt4lessISB_ESaISt4pairIKSB_jEEEEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(60) %5) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.std::pair.41", align 8     ; 6 uses
  %.sroa.4492 = alloca [12 x i8], align 4         ; 7 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::allocator.27", align 1 ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %10 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::allocator.27", align 1 ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::allocator.27", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %2 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !95
  %i.g = icmp ult i32 %i.f, 13
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = select i1 %i.g, ptr %i.h, ptr %i.j       ; 35 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !51
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %2
  %i.o = load i64, ptr %i.n, align 8, !tbaa !177
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %2
  %i.s = load i64, ptr %i.r, align 8, !tbaa !177  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %2
  %i.w = load i64, ptr %i.v, align 8, !tbaa !177  ; 32 uses
  %i.x = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %3, i64 noundef 0) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !12
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %2 ; 4 uses
  %i.ab = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %3, i64 noundef 1) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !12
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %2 ; 8 uses
  %i.af = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %3, i64 noundef 2) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !12
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %2 ; 40 uses
  %i.aj = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %3, i64 noundef 3) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !12
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %2 ; 98 uses
  %i.an = load i8, ptr %0, align 8, !tbaa !97
  switch i8 %i.an, label %bb.bz [
    i8 1, label %bb.b
    i8 2, label %bb.l
    i8 0, label %bb.t
  ]

bb.b:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !42
  %i.aq = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr i8, ptr %i.ap, i64 %i.w
  %i.at = getelementptr i8, ptr %i.as, i64 %i.ar
  store i8 29, ptr %i.at, align 1, !tbaa !95
  %i.au = load i32, ptr %i.am, align 4, !tbaa !3
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !43
  %i.ax = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr [4 x i8], ptr %i.aw, i64 %i.w
  %i.ba = getelementptr [4 x i8], ptr %i.az, i64 %i.ay
  store i32 %i.au, ptr %i.ba, align 4, !tbaa !3
  %i.bb = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ai, align 4, !tbaa !3
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !130
  %i.bf = trunc i64 %i.be to i32
  %i.bg = load i32, ptr %i.am, align 4, !tbaa !3
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bh
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.011.i = phi i32 [ %i.bf, %bb.b ], [ %i.bl, %bb.c ] ; 2 uses
  %.010.i = phi ptr [ %i.bi, %bb.b ], [ %i.bm, %bb.c ] ; 2 uses
  %i.bj = trunc i32 %.011.i to i8
  %i.bk = and i8 %i.bj, 127
  %i.bl = lshr i32 %.011.i, 7                     ; 2 uses
  %.not.i = icmp eq i32 %i.bl, 0                  ; 2 uses
  %masksel.i = select i1 %.not.i, i8 0, i8 -128
  %.0.i = or disjoint i8 %masksel.i, %i.bk
  store i8 %.0.i, ptr %.010.i, align 1, !tbaa !95
  %i.bm = getelementptr inbounds nuw i8, ptr %.010.i, i64 1
  br i1 %.not.i, label %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit, label %bb.c, !llvm.loop !197

_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit:           ; preds = %bb.c
  %i.bn = load i64, ptr %i.bd, align 8, !tbaa !130 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit
  %.04.i = phi i64 [ %i.bn, %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit ], [ %i.bo, %bb.d ]
  %.0.i383 = phi i8 [ 0, %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit ], [ %i.bp, %bb.d ]
  %i.bo = lshr i64 %.04.i, 7                      ; 2 uses
  %i.bp = add nuw nsw i8 %.0.i383, 1              ; 2 uses
  %.not.i384 = icmp eq i64 %i.bo, 0
  br i1 %.not.i384, label %_ZN6duckdb13GetVarintSizeImEEhT_.exit, label %bb.d, !llvm.loop !192

_ZN6duckdb13GetVarintSizeImEEhT_.exit:            ; preds = %bb.d
  %i.bq = zext nneg i8 %i.bp to i32
  %i.br = load i32, ptr %i.am, align 4, !tbaa !3
  %i.bs = add i32 %i.br, %i.bq                    ; 2 uses
  store i32 %i.bs, ptr %i.am, align 4, !tbaa !3
  %i.bt = icmp eq i64 %i.bn, 0
  br i1 %i.bt, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb13GetVarintSizeImEEhT_.exit
  %i.bu = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.bv = zext i32 %i.bs to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bv
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.011.i385 = phi i32 [ %i.bu, %bb.e ], [ %i.bz, %bb.f ] ; 2 uses
  %.010.i386 = phi ptr [ %i.bw, %bb.e ], [ %i.ca, %bb.f ] ; 2 uses
  %i.bx = trunc i32 %.011.i385 to i8
  %i.by = and i8 %i.bx, 127
  %i.bz = lshr i32 %.011.i385, 7                  ; 2 uses
  %.not.i388 = icmp eq i32 %i.bz, 0               ; 2 uses
  %masksel.i389 = select i1 %.not.i388, i8 0, i8 -128
  %.0.i390 = or disjoint i8 %masksel.i389, %i.by
  store i8 %.0.i390, ptr %.010.i386, align 1, !tbaa !95
  %i.ca = getelementptr inbounds nuw i8, ptr %.010.i386, i64 1
  br i1 %.not.i388, label %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit391, label %bb.f, !llvm.loop !197

_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit391:        ; preds = %bb.f
  %i.cb = load i32, ptr %i.ae, align 4, !tbaa !3
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit391
  %.04.i392 = phi i32 [ %i.cb, %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit391 ], [ %i.cc, %bb.g ]
  %.0.i393 = phi i8 [ 0, %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit391 ], [ %i.cd, %bb.g ]
  %i.cc = lshr i32 %.04.i392, 7                   ; 2 uses
  %i.cd = add nuw nsw i8 %.0.i393, 1              ; 2 uses
  %.not.i394 = icmp eq i32 %i.cc, 0
  br i1 %.not.i394, label %_ZN6duckdb13GetVarintSizeIjEEhT_.exit, label %bb.g, !llvm.loop !193

_ZN6duckdb13GetVarintSizeIjEEhT_.exit:            ; preds = %bb.g
  %i.ce = zext nneg i8 %i.cd to i32
  %i.cf = load i32, ptr %i.am, align 4, !tbaa !3
  %i.cg = add i32 %i.cf, %i.ce
  store i32 %i.cg, ptr %i.am, align 4, !tbaa !3
  %i.ch = load i32, ptr %i.ae, align 4, !tbaa !3  ; 2 uses
  %i.ci = load i64, ptr %i.bd, align 8, !tbaa !130 ; 2 uses
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = add i32 %i.ch, %i.cj
  store i32 %i.ck, ptr %i.ae, align 4, !tbaa !3
  %.not537 = icmp eq i64 %i.ci, 0
  br i1 %.not537, label %.loopexit, label %.lr.ph536

.lr.ph536:                                        ; preds = %_ZN6duckdb13GetVarintSizeIjEEhT_.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !131
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.co = zext i32 %i.ch to i64
  %i.cp = add i64 %i.s, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.4492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.4492.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4492, i64 4
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph536, %_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.0358535 = phi i64 [ 0, %.lr.ph536 ], [ %i.dx, %_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 2 uses
  %.sroa.0493.0534 = phi ptr [ %i.cm, %.lr.ph536 ], [ %i.dw, %_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 4 uses
  %i.ct = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.cu = load ptr, ptr %i.cn, align 8, !tbaa !44
  %i.cv = add i64 %i.cp, %.0358535                ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.cv
  store i32 %i.ct, ptr %i.cw, align 4, !tbaa !3
  %i.cx = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.cy = load ptr, ptr %i.cq, align 8, !tbaa !45
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.cv
  store i32 %i.cx, ptr %i.cz, align 4, !tbaa !3
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0493.0534, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4492)
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !121 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0493.0534, i64 40
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !198 ; 2 uses
  %i.de = trunc i64 %i.dd to i32                  ; 3 uses
  %i.df = icmp ult i32 %i.de, 13
  br i1 %i.df, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4492, i8 0, i64 12, i1 false)
  %i.dg = icmp eq i32 %i.de, 0
  br i1 %i.dg, label %_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dh = and i64 %i.dd, 15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.4492, ptr align 1 %i.db, i64 %i.dh, i1 false)
  br label %_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
end_hunk_0
begin_hunk_1_@_ZN6duckdbL12ConvertValueERKNS_12VariantValueERNS_17VariantVectorDataEmRNS_9DataChunkERNS_15SelectionVectorERNS_15OwningStringMapIjSt3mapINS_8string_tEjSt4lessISB_ESaISt4pairIKSB_jEEEEE:bb.a
bb.al:                                            ; preds = %bb.t
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !42
  %i.os = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ot = zext i32 %i.os to i64
  %i.ou = getelementptr i8, ptr %i.or, i64 %i.w
  %i.ov = getelementptr i8, ptr %i.ou, i64 %i.ot
  store i8 27, ptr %i.ov, align 1, !tbaa !95
  %i.ow = tail call i64 @_ZNK6duckdb5Value14GetValueUnsafeINS_14timestamp_tz_tEEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.hq)
  %i.ox = load i32, ptr %i.am, align 4, !tbaa !3
  %i.oy = zext i32 %i.ox to i64
  %i.oz = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.oy
  store i64 %i.ow, ptr %i.oz, align 1
  %i.pa = load i32, ptr %i.am, align 4, !tbaa !3
  %i.pb = add i32 %i.pa, 8
  store i32 %i.pb, ptr %i.am, align 4, !tbaa !3
  br label %bb.by

bb.am:                                            ; preds = %bb.t
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !42
  %i.pe = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.pf = zext i32 %i.pe to i64
  %i.pg = getelementptr i8, ptr %i.pd, i64 %i.w
  %i.ph = getelementptr i8, ptr %i.pg, i64 %i.pf
  store i8 24, ptr %i.ph, align 1, !tbaa !95
  %i.pi = tail call i64 @_ZNK6duckdb5Value14GetValueUnsafeINS_11timestamp_tEEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.hq)
  %i.pj = load i32, ptr %i.am, align 4, !tbaa !3
  %i.pk = zext i32 %i.pj to i64
  %i.pl = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.pk
  store i64 %i.pi, ptr %i.pl, align 1
  %i.pm = load i32, ptr %i.am, align 4, !tbaa !3
  %i.pn = add i32 %i.pm, 8
  store i32 %i.pn, ptr %i.am, align 4, !tbaa !3
  br label %bb.by

bb.an:                                            ; preds = %bb.t
  %i.po = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !42
  %i.pq = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.pr = zext i32 %i.pq to i64
  %i.ps = getelementptr i8, ptr %i.pp, i64 %i.w
  %i.pt = getelementptr i8, ptr %i.ps, i64 %i.pr
  store i8 22, ptr %i.pt, align 1, !tbaa !95
  %i.pu = tail call i64 @_ZNK6duckdb5Value14GetValueUnsafeINS_15timestamp_sec_tEEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.hq)
  %i.pv = load i32, ptr %i.am, align 4, !tbaa !3
  %i.pw = zext i32 %i.pv to i64
  %i.px = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.pw
  store i64 %i.pu, ptr %i.px, align 1
  %i.py = load i32, ptr %i.am, align 4, !tbaa !3
  %i.pz = add i32 %i.py, 8
  store i32 %i.pz, ptr %i.am, align 4, !tbaa !3
  br label %bb.by

bb.ao:                                            ; preds = %bb.t
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !42
  %i.qc = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.qd = zext i32 %i.qc to i64
  %i.qe = getelementptr i8, ptr %i.qb, i64 %i.w
  %i.qf = getelementptr i8, ptr %i.qe, i64 %i.qd
  store i8 23, ptr %i.qf, align 1, !tbaa !95
  %i.qg = tail call i64 @_ZNK6duckdb5Value14GetValueUnsafeINS_14timestamp_ms_tEEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.hq)
  %i.qh = load i32, ptr %i.am, align 4, !tbaa !3
  %i.qi = zext i32 %i.qh to i64
  %i.qj = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.qi
  store i64 %i.qg, ptr %i.qj, align 1
  %i.qk = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ql = add i32 %i.qk, 8
  store i32 %i.ql, ptr %i.am, align 4, !tbaa !3
  br label %bb.by

bb.ap:                                            ; preds = %bb.t
  %i.qm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !42
  %i.qo = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.qp = zext i32 %i.qo to i64
  %i.qq = getelementptr i8, ptr %i.qn, i64 %i.w
  %i.qr = getelementptr i8, ptr %i.qq, i64 %i.qp
  store i8 20, ptr %i.qr, align 1, !tbaa !95
  %i.qs = tail call i64 @_ZNK6duckdb5Value14GetValueUnsafeINS_7dtime_tEEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.hq)
  %i.qt = load i32, ptr %i.am, align 4, !tbaa !3
  %i.qu = zext i32 %i.qt to i64
  %i.qv = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.qu
  store i64 %i.qs, ptr %i.qv, align 1
  %i.qw = load i32, ptr %i.am, align 4, !tbaa !3
  %i.qx = add i32 %i.qw, 8
  store i32 %i.qx, ptr %i.am, align 4, !tbaa !3
  br label %bb.by

bb.aq:                                            ; preds = %bb.t
  %i.qy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !42
  %i.ra = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.rb = zext i32 %i.ra to i64
  %i.rc = getelementptr i8, ptr %i.qz, i64 %i.w
  %i.rd = getelementptr i8, ptr %i.rc, i64 %i.rb
  store i8 21, ptr %i.rd, align 1, !tbaa !95
  %i.re = tail call i64 @_ZNK6duckdb5Value14GetValueUnsafeINS_10dtime_ns_tEEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.hq)
  %i.rf = load i32, ptr %i.am, align 4, !tbaa !3
  %i.rg = zext i32 %i.rf to i64
  %i.rh = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.rg
  store i64 %i.re, ptr %i.rh, align 1
  %i.ri = load i32, ptr %i.am, align 4, !tbaa !3
  %i.rj = add i32 %i.ri, 8
  store i32 %i.rj, ptr %i.am, align 4, !tbaa !3
  br label %bb.by

bb.ar:                                            ; preds = %bb.t
  %i.rk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !42
  %i.rm = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.rn = zext i32 %i.rm to i64
  %i.ro = getelementptr i8, ptr %i.rl, i64 %i.w
  %i.rp = getelementptr i8, ptr %i.ro, i64 %i.rn
  store i8 26, ptr %i.rp, align 1, !tbaa !95
  %i.rq = tail call i64 @_ZNK6duckdb5Value14GetValueUnsafeINS_10dtime_tz_tEEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.hq)
  %i.rr = load i32, ptr %i.am, align 4, !tbaa !3
  %i.rs = zext i32 %i.rr to i64
  %i.rt = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.rs
  store i64 %i.rq, ptr %i.rt, align 1
  %i.ru = load i32, ptr %i.am, align 4, !tbaa !3
  %i.rv = add i32 %i.ru, 8
  store i32 %i.rv, ptr %i.am, align 4, !tbaa !3
  br label %bb.by

bb.as:                                            ; preds = %bb.t
  %i.rw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !42
  %i.ry = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.rz = zext i32 %i.ry to i64
  %i.sa = getelementptr i8, ptr %i.rx, i64 %i.w
  %i.sb = getelementptr i8, ptr %i.sa, i64 %i.rz
  store i8 25, ptr %i.sb, align 1, !tbaa !95
  %i.sc = tail call i64 @_ZNK6duckdb5Value14GetValueUnsafeINS_14timestamp_ns_tEEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.hq)
  %i.sd = load i32, ptr %i.am, align 4, !tbaa !3
  %i.se = zext i32 %i.sd to i64
  %i.sf = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.se
  store i64 %i.sc, ptr %i.sf, align 1
  %i.sg = load i32, ptr %i.am, align 4, !tbaa !3
  %i.sh = add i32 %i.sg, 8
  store i32 %i.sh, ptr %i.am, align 4, !tbaa !3
  br label %bb.by

bb.at:                                            ; preds = %bb.t
  %i.si = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !42
  %i.sk = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.sl = zext i32 %i.sk to i64
  %i.sm = getelementptr i8, ptr %i.sj, i64 %i.w
  %i.sn = getelementptr i8, ptr %i.sm, i64 %i.sl
  store i8 28, ptr %i.sn, align 1, !tbaa !95
  %i.so = tail call { i64, i64 } @_ZNK6duckdb5Value14GetValueUnsafeINS_10interval_tEEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.hq) ; 2 uses
  %i.sp = extractvalue { i64, i64 } %i.so, 0
  %i.sq = extractvalue { i64, i64 } %i.so, 1
  %i.sr = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ss = zext i32 %i.sr to i64
  %i.st = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ss ; 2 uses
  store i64 %i.sp, ptr %i.st, align 1
  %.sroa.4467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  store i64 %i.sq, ptr %.sroa.4467.0..sroa_idx, align 1
  %i.su = load i32, ptr %i.am, align 4, !tbaa !3
  %i.sv = add i32 %i.su, 16
  store i32 %i.sv, ptr %i.am, align 4, !tbaa !3
  br label %bb.by

bb.au:                                            ; preds = %bb.t
  %i.sw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !42
  %i.sy = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.sz = zext i32 %i.sy to i64
  %i.ta = getelementptr i8, ptr %i.sx, i64 %i.w
  %i.tb = getelementptr i8, ptr %i.ta, i64 %i.sz
  store i8 18, ptr %i.tb, align 1, !tbaa !95
  %i.tc = tail call { i64, i64 } @_ZNK6duckdb5Value14GetValueUnsafeINS_9hugeint_tEEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.hq) ; 2 uses
  %i.td = extractvalue { i64, i64 } %i.tc, 0
  %i.te = extractvalue { i64, i64 } %i.tc, 1
  %i.tf = load i32, ptr %i.am, align 4, !tbaa !3
  %i.tg = zext i32 %i.tf to i64
  %i.th = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.tg ; 2 uses
  store i64 %i.td, ptr %i.th, align 1
  %.sroa.4465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  store i64 %i.te, ptr %.sroa.4465.0..sroa_idx, align 1
  %i.ti = load i32, ptr %i.am, align 4, !tbaa !3
  %i.tj = add i32 %i.ti, 16
  store i32 %i.tj, ptr %i.am, align 4, !tbaa !3
  br label %bb.by

bb.av:                                            ; preds = %bb.t
  %i.tk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !42
  %i.tm = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.tn = zext i32 %i.tm to i64
  %i.to = getelementptr i8, ptr %i.tl, i64 %i.w
  %i.tp = getelementptr i8, ptr %i.to, i64 %i.tn
  store i8 15, ptr %i.tp, align 1, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.tq = call noundef zeroext i1 @_ZNK6duckdb11LogicalType20GetDecimalPropertiesERhS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.hq, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b) ; 0 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 81
  %16 = load i8, ptr %i.tr, align 1, !tbaa !195   ; 2 uses
  %i.ts = load i8, ptr %i.a, align 1, !tbaa !95   ; 3 uses
  %i.tt = load i32, ptr %i.am, align 4, !tbaa !3
  %i.tu = zext i32 %i.tt to i64
  %i.tv = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.tu ; 2 uses
  %.not.i421 = icmp sgt i8 %i.ts, -1
  store i8 %i.ts, ptr %i.tv, align 1, !tbaa !95
  br i1 %.not.i421, label %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit424.a, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 1
  store i8 1, ptr %i.tw, align 1, !tbaa !95
  br label %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit424.a

_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit424.a:      ; preds = %bb.aw, %bb.av
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit424.a, %bb.ax
  %.04.i425 = phi i8 [ %i.tx, %bb.ax ], [ %i.ts, %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit424.a ] ; 2 uses
  %.0.i426 = phi i8 [ %i.ty, %bb.ax ], [ 0, %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit424.a ]
  %i.tx = lshr i8 %.04.i425, 7
  %i.ty = add nuw nsw i8 %.0.i426, 1              ; 2 uses
  %.not.i427 = icmp sgt i8 %.04.i425, -1
  br i1 %.not.i427, label %_ZN6duckdb13GetVarintSizeIhEEhT_.exit, label %bb.ax, !llvm.loop !196

_ZN6duckdb13GetVarintSizeIhEEhT_.exit:            ; preds = %bb.ax
  %i.tz = zext nneg i8 %i.ty to i32
  %i.ua = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ub = add i32 %i.ua, %i.tz                    ; 2 uses
  store i32 %i.ub, ptr %i.am, align 4, !tbaa !3
  %17 = load i8, ptr %i.b, align 1, !tbaa !95     ; 3 uses
  %18 = zext i32 %i.ub to i64
  %19 = getelementptr inbounds nuw i8, ptr %i.k, i64 %18 ; 2 uses
  %.not.i431 = icmp sgt i8 %17, -1
  store i8 %17, ptr %19, align 1, !tbaa !95
  br i1 %.not.i431, label %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit434.a, label %bb.ay

bb.ay:                                            ; preds = %_ZN6duckdb13GetVarintSizeIhEEhT_.exit
  %i.uc = getelementptr inbounds nuw i8, ptr %19, i64 1
  store i8 1, ptr %i.uc, align 1, !tbaa !95
  br label %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit434.a

_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit434.a:      ; preds = %bb.ay, %_ZN6duckdb13GetVarintSizeIhEEhT_.exit
  br label %bb.az

bb.az:                                            ; preds = %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit434.a, %bb.az
  %.04.i435 = phi i8 [ %i.ud, %bb.az ], [ %17, %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit434.a ] ; 2 uses
  %.0.i436 = phi i8 [ %i.ue, %bb.az ], [ 0, %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit434.a ]
  %i.ud = lshr i8 %.04.i435, 7
  %i.ue = add nuw nsw i8 %.0.i436, 1              ; 2 uses
  %.not.i437 = icmp sgt i8 %.04.i435, -1
  br i1 %.not.i437, label %_ZN6duckdb13GetVarintSizeIhEEhT_.exit438, label %bb.az, !llvm.loop !196

_ZN6duckdb13GetVarintSizeIhEEhT_.exit438:         ; preds = %bb.az
  %i.uf = zext nneg i8 %i.ue to i32
  %i.ug = load i32, ptr %i.am, align 4, !tbaa !3
  %i.uh = add i32 %i.ug, %i.uf
  store i32 %i.uh, ptr %i.am, align 4, !tbaa !3
  switch i8 %16, label %bb.be [
    i8 5, label %bb.ba
    i8 7, label %bb.bb
    i8 9, label %bb.bc
    i8 -52, label %bb.bd
  ]

bb.ba:                                            ; preds = %_ZN6duckdb13GetVarintSizeIhEEhT_.exit438
  %i.ui = call noundef signext i16 @_ZNK6duckdb5Value14GetValueUnsafeIsEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.hq)
  %i.uj = load i32, ptr %i.am, align 4, !tbaa !3
  %i.uk = zext i32 %i.uj to i64
  %i.ul = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.uk
  store i16 %i.ui, ptr %i.ul, align 1
  br label %bb.bl

bb.bb:                                            ; preds = %_ZN6duckdb13GetVarintSizeIhEEhT_.exit438
  %i.um = call noundef i32 @_ZNK6duckdb5Value14GetValueUnsafeIiEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.hq)
  %i.un = load i32, ptr %i.am, align 4, !tbaa !3
  %i.uo = zext i32 %i.un to i64
  %i.up = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.uo
  store i32 %i.um, ptr %i.up, align 1
  br label %bb.bl

bb.bc:                                            ; preds = %_ZN6duckdb13GetVarintSizeIhEEhT_.exit438
  %i.uq = call noundef i64 @_ZNK6duckdb5Value14GetValueUnsafeIlEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.hq)
  %i.ur = load i32, ptr %i.am, align 4, !tbaa !3
  %i.us = zext i32 %i.ur to i64
  %i.ut = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.us
  store i64 %i.uq, ptr %i.ut, align 1
  br label %bb.bl

bb.bd:                                            ; preds = %_ZN6duckdb13GetVarintSizeIhEEhT_.exit438
  %i.uu = call { i64, i64 } @_ZNK6duckdb5Value14GetValueUnsafeINS_9hugeint_tEEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.hq) ; 2 uses
  %i.uv = extractvalue { i64, i64 } %i.uu, 0
  %i.uw = extractvalue { i64, i64 } %i.uu, 1
  %i.ux = load i32, ptr %i.am, align 4, !tbaa !3
  %i.uy = zext i32 %i.ux to i64
  %i.uz = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.uy ; 2 uses
  store i64 %i.uv, ptr %i.uz, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uz, i64 8
  store i64 %i.uw, ptr %.sroa.4.0..sroa_idx, align 1
  br label %bb.bl

bb.be:                                            ; preds = %_ZN6duckdb13GetVarintSizeIhEEhT_.exit438
  %i.va = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.bf unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441.thread

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  invoke void @_ZN6duckdb8EnumUtil8ToStringINS_12PhysicalTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, i8 noundef zeroext %16)
          to label %bb.bg unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZN6duckdb17InternalExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.va, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  invoke void @__cxa_throw(ptr nonnull %i.va, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.cf unwind label %bb.bi

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441.thread: ; preds = %bb.be
  %i.vb = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.0359 = phi i1 [ false, %bb.bh ], [ true, %bb.bg ] ; 2 uses
  %i.vc = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.vd = load ptr, ptr %9, align 8, !tbaa !121   ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.vf = icmp eq ptr %i.vd, %i.ve
  br i1 %i.vf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bi
  call void @_ZdlPv(ptr noundef %i.vd) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.vg = load ptr, ptr %7, align 8, !tbaa !121   ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.vi = icmp eq ptr %i.vg, %i.vh
  br i1 %i.vi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.bf
  %i.vj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.vk = load ptr, ptr %7, align 8, !tbaa !121   ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.vm = icmp eq ptr %i.vk, %i.vl
  br i1 %i.vm, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  call void @_ZdlPv(ptr noundef %i.vk) #23
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.vg) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br i1 %.0359, label %bb.bj, label %bb.bk

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br i1 %.0359, label %bb.bj, label %bb.bk

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439.thread
  %.pn.pn497.ph = phi { ptr, i32 } [ %i.vj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439.thread ], [ %i.vb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441.thread ], [ %i.vj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.bj

bb.bj:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441
  %.pn.pn497 = phi { ptr, i32 } [ %i.vc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439 ], [ %i.vc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441 ], [ %.pn.pn497.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.va) #21
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439, %bb.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441
  %.pn.pn496 = phi { ptr, i32 } [ %.pn.pn497, %bb.bj ], [ %i.vc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441 ], [ %i.vc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.ce

bb.bl:                                            ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba
  %.sink565 = phi i32 [ 16, %bb.bd ], [ 8, %bb.bc ], [ 4, %bb.bb ], [ 2, %bb.ba ]
  %i.vn = load i32, ptr %i.am, align 4, !tbaa !3
  %i.vo = add i32 %i.vn, %.sink565
  store i32 %i.vo, ptr %i.am, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.by

bb.bm:                                            ; preds = %bb.t
  br label %bb.bq

bb.bn:                                            ; preds = %bb.t
  br label %bb.bq

bb.bo:                                            ; preds = %bb.t
  br label %bb.bq

bb.bp:                                            ; preds = %bb.t
  br label %bb.bq

bb.bq:                                            ; preds = %bb.t, %bb.bm, %bb.bo, %bb.bp, %bb.bn
  %.sink = phi i8 [ 31, %bb.bm ], [ 33, %bb.bo ], [ 16, %bb.bp ], [ 32, %bb.bn ], [ 17, %bb.t ]
  %i.vp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !42
  %i.vr = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.vs = zext i32 %i.vr to i64
  %i.vt = getelementptr i8, ptr %i.vq, i64 %i.w
  %i.vu = getelementptr i8, ptr %i.vt, i64 %i.vs
  store i8 %.sink, ptr %i.vu, align 1, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.vv = tail call { i64, ptr } @_ZNK6duckdb5Value14GetValueUnsafeINS_8string_tEEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.hq) ; 2 uses
  %i.vw = extractvalue { i64, ptr } %i.vv, 0      ; 7 uses
  store i64 %i.vw, ptr %10, align 8
  %i.vx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.vy = extractvalue { i64, ptr } %i.vv, 1      ; 2 uses
  store ptr %i.vy, ptr %i.vx, align 8
  %i.vz = trunc i64 %i.vw to i32                  ; 3 uses
  %i.wa = load i32, ptr %i.am, align 4, !tbaa !3
  %i.wb = zext i32 %i.wa to i64
  %i.wc = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.wb
  br label %bb.br

bb.br:                                            ; preds = %bb.br, %bb.bq
  %.011.i442 = phi i32 [ %i.vz, %bb.bq ], [ %i.wf, %bb.br ] ; 2 uses
  %.010.i443 = phi ptr [ %i.wc, %bb.bq ], [ %i.wg, %bb.br ] ; 2 uses
  %i.wd = trunc i32 %.011.i442 to i8
  %i.we = and i8 %i.wd, 127
  %i.wf = lshr i32 %.011.i442, 7                  ; 2 uses
  %.not.i445 = icmp eq i32 %i.wf, 0               ; 2 uses
  %masksel.i446 = select i1 %.not.i445, i8 0, i8 -128
  %.0.i447 = or disjoint i8 %masksel.i446, %i.we
  store i8 %.0.i447, ptr %.010.i443, align 1, !tbaa !95
  %i.wg = getelementptr inbounds nuw i8, ptr %.010.i443, i64 1
  br i1 %.not.i445, label %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit448.preheader, label %bb.br, !llvm.loop !197

_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit448.preheader: ; preds = %bb.br
  %i.wh = and i64 %i.vw, 4294967295
  %.mask = and i64 %i.vw, 4294967168
  %.not.i451 = icmp eq i64 %.mask, 0
  br i1 %.not.i451, label %_ZN6duckdb13GetVarintSizeImEEhT_.exit452, label %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit448.1

_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit448.1:      ; preds = %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit448.preheader
  %.mask587 = and i64 %i.vw, 4294950912
  %.not.i451.1 = icmp eq i64 %.mask587, 0
  br i1 %.not.i451.1, label %_ZN6duckdb13GetVarintSizeImEEhT_.exit452, label %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit448.2

_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit448.2:      ; preds = %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit448.1
  %.mask588 = and i64 %i.vw, 4292870144
  %.not.i451.2 = icmp eq i64 %.mask588, 0
  br i1 %.not.i451.2, label %_ZN6duckdb13GetVarintSizeImEEhT_.exit452, label %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit448.3

_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit448.3:      ; preds = %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit448.2
  %.mask589 = and i64 %i.vw, 4026531840
  %.not.i451.3 = icmp eq i64 %.mask589, 0
  %spec.select = select i1 %.not.i451.3, i32 4, i32 5
  br label %_ZN6duckdb13GetVarintSizeImEEhT_.exit452

_ZN6duckdb13GetVarintSizeImEEhT_.exit452:         ; preds = %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit448.3, %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit448.2, %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit448.1, %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit448.preheader
  %.lcssa586 = phi i32 [ 1, %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit448.preheader ], [ 2, %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit448.1 ], [ 3, %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit448.2 ], [ %spec.select, %_ZN6duckdb12VarintEncodeIjEEmT_Ph.exit448.3 ]
  %i.wi = load i32, ptr %i.am, align 4, !tbaa !3
  %i.wj = add i32 %i.wi, %.lcssa586               ; 2 uses
  store i32 %i.wj, ptr %i.am, align 4, !tbaa !3
  %i.wk = zext i32 %i.wj to i64
  %i.wl = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.wk
  %i.wm = icmp ult i32 %i.vz, 13
  %i.wn = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.wo = select i1 %i.wm, ptr %i.wn, ptr %i.vy
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.wl, ptr align 1 %i.wo, i64 %i.wh, i1 false)
  %i.wp = load i32, ptr %i.am, align 4, !tbaa !3
  %i.wq = add i32 %i.wp, %i.vz
  store i32 %i.wq, ptr %i.am, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.by

bb.bs:                                            ; preds = %bb.t
  %i.wr = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.bt unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458.thread

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  invoke void @_ZNK6duckdb11LogicalType8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(24) %i.hq)
          to label %bb.bu unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455.thread

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZN6duckdb17InternalExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.wr, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.bv unwind label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  invoke void @__cxa_throw(ptr nonnull %i.wr, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.cf unwind label %bb.bw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458.thread: ; preds = %bb.bs
  %i.ws = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split572

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.0356 = phi i1 [ false, %bb.bv ], [ true, %bb.bu ] ; 2 uses
  %i.wt = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.wu = load ptr, ptr %13, align 8, !tbaa !121  ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ww = icmp eq ptr %i.wu, %i.wv
  br i1 %i.ww, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453: ; preds = %bb.bw
  call void @_ZdlPv(ptr noundef %i.wu) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.wx = load ptr, ptr %11, align 8, !tbaa !121  ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.wz = icmp eq ptr %i.wx, %i.wy
  br i1 %i.wz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455.thread: ; preds = %bb.bt
  %i.xa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.xb = load ptr, ptr %11, align 8, !tbaa !121  ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.xd = icmp eq ptr %i.xb, %i.xc
  br i1 %i.xd, label %.sink.split572, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455.thread
  call void @_ZdlPv(ptr noundef %i.xb) #23
  br label %.sink.split572

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455
  call void @_ZdlPv(ptr noundef %i.wx) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br i1 %.0356, label %bb.bx, label %bb.ce

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br i1 %.0356, label %bb.bx, label %bb.ce

.sink.split572:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456.thread
  %.pn376.pn509.ph = phi { ptr, i32 } [ %i.xa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456.thread ], [ %i.ws, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458.thread ], [ %i.xa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.bx

bb.bx:                                            ; preds = %.sink.split572, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458
  %.pn376.pn509 = phi { ptr, i32 } [ %i.wt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456 ], [ %i.wt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458 ], [ %.pn376.pn509.ph, %.sink.split572 ]
  call void @__cxa_free_exception(ptr %i.wr) #21
  br label %bb.ce

bb.by:                                            ; preds = %bb.v, %bb.w, %_ZN6duckdb13GetVarintSizeImEEhT_.exit452, %bb.bl, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x
  %i.xe = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.xf = add i32 %i.xe, 1
  store i32 %i.xf, ptr %i.ai, align 4, !tbaa !3
  br label %.loopexit

bb.bz:                                            ; preds = %bb.a
  %i.xg = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.ca unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461.thread

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.xg, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.cb unwind label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  invoke void @__cxa_throw(ptr nonnull %i.xg, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.cf unwind label %bb.cc

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461.thread: ; preds = %bb.bz
  %i.xh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.cd

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.0 = phi i1 [ false, %bb.cb ], [ true, %bb.ca ] ; 2 uses
  %i.xi = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.xj = load ptr, ptr %14, align 8, !tbaa !121  ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.xl = icmp eq ptr %i.xj, %i.xk
  br i1 %i.xl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i459

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i459: ; preds = %bb.cc
  call void @_ZdlPv(ptr noundef %i.xj) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br i1 %.0, label %bb.cd, label %bb.ce

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461: ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br i1 %.0, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i459, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461
  %.pn380521 = phi { ptr, i32 } [ %i.xh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461.thread ], [ %i.xi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461 ], [ %i.xi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i459 ]
  call void @__cxa_free_exception(ptr %i.xg) #21
  br label %bb.ce

.loopexit:                                        ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit, %_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN6duckdb13GetVarintSizeIjEEhT_.exit416, %_ZN6duckdb13GetVarintSizeIjEEhT_.exit, %_ZN6duckdb13GetVarintSizeImEEhT_.exit405, %_ZN6duckdb13GetVarintSizeImEEhT_.exit, %bb.by
  ret void

bb.ce:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i459, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456, %bb.bk, %bb.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461, %bb.cd
  %.pn380.pn = phi { ptr, i32 } [ %.pn380521, %bb.cd ], [ %i.xi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461 ], [ %.pn376.pn509, %bb.bx ], [ %i.wt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458 ], [ %.pn.pn496, %bb.bk ], [ %i.wt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456 ], [ %i.xi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i459 ]
  resume { ptr, i32 } %.pn380.pn

bb.cf:                                            ; preds = %bb.cb, %bb.bv, %bb.bh
  unreachable
}

declare void @_ZN6duckdb12VariantUtils19FinalizeVariantKeysERNS_6VectorERNS_15OwningStringMapIjSt3mapINS_8string_tEjSt4lessIS5_ESaISt4pairIKS5_jEEEEERNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(60), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #1

declare void @_ZN6duckdb6Vector5SliceERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #1

declare void @_ZN6duckdb6Vector7FlattenEm(ptr noundef nonnull align 8 dereferenceable(104), i64 noundef) local_unnamed_addr #1

declare void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104), i8 noundef zeroext) local_unnamed_addr #1

declare void @_ZN6duckdb6Vector6VerifyEm(ptr noundef nonnull align 8 dereferenceable(104), i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb15OwningStringMapIjSt3mapINS_8string_tEjSt4lessIS2_ESaISt4pairIKS2_jEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !180
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %.loopexit.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !131  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not7.i = icmp eq ptr %i.e, %i.f
  br i1 %.not7.i, label %.loopexit.i, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.b, %_ZNK6duckdb15OwningStringMapIjSt3mapINS_8string_tEjSt4lessIS2_ESaISt4pairIKS2_jEEEE13DestroyStringERS6_.exit.i
  %.sroa.04.08.i = phi ptr [ %i.o, %_ZNK6duckdb15OwningStringMapIjSt3mapINS_8string_tEjSt4lessIS2_ESaISt4pairIKS2_jEEEE13DestroyStringERS6_.exit.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.g = load i32, ptr %i.a, align 8, !tbaa !180
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %bb.c, label %_ZNK6duckdb15OwningStringMapIjSt3mapINS_8string_tEjSt4lessIS2_ESaISt4pairIKS2_jEEEE13DestroyStringERS6_.exit.i

bb.c:                                             ; preds = %.lr.ph.split.i
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !95   ; 2 uses
  %i.j = icmp ult i32 %i.i, 13
  br i1 %i.j, label %_ZNK6duckdb15OwningStringMapIjSt3mapINS_8string_tEjSt4lessIS2_ESaISt4pairIKS2_jEEEE13DestroyStringERS6_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !137, !nonnull !49, !align !50
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = zext i32 %i.i to i64
  invoke void @_ZN6duckdb9Allocator8FreeDataEPhm(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef %i.m, i64 noundef %i.n)
          to label %_ZNK6duckdb15OwningStringMapIjSt3mapINS_8string_tEjSt4lessIS2_ESaISt4pairIKS2_jEEEE13DestroyStringERS6_.exit.i unwind label %bb.h
end_hunk_1
