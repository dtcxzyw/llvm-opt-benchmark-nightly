Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-quant?download=true
inline.NumInlined: 5842
inline.NumDeleted: 2455
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 21
begin_hunk_0_@llama_model_quantize:bb.a
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i15
  %i.v = load i8, ptr %1, align 1, !tbaa !50
  store i8 %i.v, ptr %i.u, align 1, !tbaa !50
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr nonnull align 1 %1, i64 %i.q, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i15
  %i.w = load i64, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !51
  %i.y = load ptr, ptr %4, align 8, !tbaa !49
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  invoke fastcc void @_ZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_PK27llama_model_quantize_params(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %2)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.aa = load ptr, ptr %4, align 8, !tbaa !49    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.o
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.ac = load i64, ptr %i.o, align 8, !tbaa !50
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.ae = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.c
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = load i64, ptr %i.c, align 8, !tbaa !50
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.s

bb.m:                                             ; preds = %.noexc.i, %bb.b
  %i.ai = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.n:                                             ; preds = %.noexc.i16, %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

bb.o:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.al = load ptr, ptr %4, align 8, !tbaa !49    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.o
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.o
  %i.an = load i64, ptr %i.o, align 8, !tbaa !50
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %bb.n
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.n ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %i.ak, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.ap = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.c
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %i.ar = load i64, ptr %i.c, align 8, !tbaa !50
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.m ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ] ; 3 uses
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.at = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.au = icmp eq i32 %.1, %i.at
  br i1 %i.au, label %bb.p, label %bb.t

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.19 = extractvalue { ptr, i32 } %.pn.pn, 0
  %i.av = call ptr @__cxa_begin_catch(ptr %.19) #31 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !53
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = call noundef ptr %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.av) #31
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 4, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.llama_model_quantize, ptr noundef %i.az)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @__cxa_end_catch()
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %bb.u

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %bb.q
  %.011 = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ], [ 1, %bb.q ]
  ret i32 %.011

bb.t:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.merged = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.ba, %bb.r ]
  resume { ptr, i32 } %.merged

bb.u:                                             ; preds = %bb.r
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #34
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_PK27llama_model_quantize_params(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.std::unique_ptr.402", align 8 ; 6 uses
  %4 = alloca %"class.std::unique_ptr.402", align 8 ; 6 uses
  %5 = alloca %"class.std::mutex", align 8        ; 10 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 9 uses
  %i.d = alloca i8, align 1                       ; 8 uses
  %6 = alloca %"class.std::unique_ptr.402", align 8 ; 6 uses
  %7 = alloca %"class.std::unique_ptr.402", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %10 = alloca %"class.std::__cxx11::match_results", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %i.l = alloca i64, align 8                      ; 6 uses
  %14 = alloca %"class.std::tuple.392", align 8   ; 4 uses
  %15 = alloca %"class.std::tuple.350", align 1   ; 3 uses
  %16 = alloca %"class.std::tuple.392", align 8   ; 4 uses
  %17 = alloca %"class.std::tuple.350", align 1   ; 3 uses
  %18 = alloca %"class.std::tuple.392", align 8   ; 4 uses
  %19 = alloca %"class.std::tuple.350", align 1   ; 3 uses
  %20 = alloca %"class.std::tuple.392", align 8   ; 4 uses
  %21 = alloca %"class.std::tuple.350", align 1   ; 3 uses
  %22 = alloca %"class.std::tuple.392", align 8   ; 4 uses
  %23 = alloca %"class.std::tuple.350", align 1   ; 3 uses
  %24 = alloca %"class.std::tuple.392", align 8   ; 4 uses
  %25 = alloca %"class.std::tuple.350", align 1   ; 3 uses
  %i.m = alloca i64, align 8                      ; 6 uses
  %i.n = alloca ptr, align 8                      ; 5 uses
  %i.o = alloca i64, align 8                      ; 6 uses
  %i.p = alloca i64, align 8                      ; 6 uses
  %26 = alloca %"class.std::__cxx11::match_results", align 8 ; 12 uses
  %i.q = alloca i32, align 4                      ; 22 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.r = alloca ptr, align 8                      ; 19 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %32 = alloca %"class.std::vector.10", align 8   ; 10 uses
  %33 = alloca %struct.llama_model_loader, align 8 ; 23 uses
  %34 = alloca %struct.llama_model_params, align 8 ; 5 uses
  %35 = alloca %struct.quantize_state_impl, align 8 ; 12 uses
  %36 = alloca %"class.std::unordered_map.143", align 8 ; 16 uses
  %37 = alloca %"class.std::vector.157", align 8  ; 10 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %39 = alloca %"class.std::unique_ptr.111", align 8 ; 10 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %45 = alloca %"class.std::map.165", align 8     ; 16 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %48 = alloca %"class.std::vector.67", align 8   ; 16 uses
  %i.s = alloca i16, align 2                      ; 8 uses
  %49 = alloca %"class.std::vector.179", align 8  ; 19 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 23 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %55 = alloca %"class.std::vector.184", align 8  ; 17 uses
  %56 = alloca %"class.std::vector.189", align 8  ; 15 uses
  %i.t = alloca i32, align 4                      ; 10 uses
  %57 = alloca %"class.std::basic_ofstream", align 8 ; 12 uses
  %58 = alloca %class.anon.200, align 8           ; 8 uses
  %59 = alloca %class.anon.201, align 8           ; 11 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %61 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %62 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %63 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  store ptr %2, ptr %i.r, align 8, !tbaa !55
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !64   ; 5 uses
  %i.w = load i32, ptr %2, align 8, !tbaa !621    ; 2 uses
  %i.x = icmp slt i32 %i.w, 1
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = tail call noundef i32 @_ZNSt6thread20hardware_concurrencyEv() #31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0274 = phi i32 [ %i.y, %bb.b ], [ %i.w, %bb.a ] ; 8 uses
  %i.z = icmp ult i32 %i.v, 42
  %switch.maskindex = zext nneg i32 %i.v to i64
  %switch.shifted = lshr i64 3788161154959, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond4403 = select i1 %i.z, i1 %switch.lobit, i1 false
  br i1 %or.cond4403, label %switch.lookup, label %_Z28llama_ftype_get_default_type11llama_ftype.exit

_Z28llama_ftype_get_default_type11llama_ftype.exit: ; preds = %bb.c
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #31
  invoke void (ptr, ptr, ...) @_Z6formatB5cxx11PKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %31, ptr noundef nonnull @.str.4, i32 noundef %i.v)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %_Z28llama_ftype_get_default_type11llama_ftype.exit
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %31)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #32
          to label %bb.tw unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_Z28llama_ftype_get_default_type11llama_ftype.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #31
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0338 = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ad = load ptr, ptr %31, align 8, !tbaa !49   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !50
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #31
  br i1 %.0338, label %bb.g, label %bb.tv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #31
  br i1 %.0338, label %bb.g, label %bb.tv

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn442997 = phi { ptr, i32 } [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.aa) #31
  br label %bb.tv

switch.lookup:                                    ; preds = %bb.c
  %i.ai = zext nneg i32 %i.v to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_PK27llama_model_quantize_params, i64 %i.ai
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !622
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %32, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #31
  invoke void @_ZN18llama_model_loaderC1EP12gguf_contextPFvP11ggml_tensorPvES4_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorISC_SaISC_EEP8_IO_FILE15llama_load_modebbbPK23llama_model_kv_overridePK32llama_model_tensor_buft_override(ptr noundef nonnull align 8 dereferenceable(592) %33, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef null, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %i.ak, ptr noundef null)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %switch.lookup
  invoke void @_ZN18llama_model_loader13init_mappingsEbPSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteIS2_EESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(592) %33, i1 noundef zeroext false, ptr noundef null)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #31
  invoke void @llama_model_default_params(ptr dead_on_unwind nonnull writable sret(%struct.llama_model_params) align 8 %34)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.al = invoke noundef ptr @_Z18llama_model_createR18llama_model_loaderRK18llama_model_params(ptr noundef nonnull align 8 dereferenceable(592) %33, ptr noundef nonnull align 8 dereferenceable(80) %34)
          to label %bb.k unwind label %bb.n       ; 6 uses

bb.k:                                             ; preds = %bb.j
  %i.am = icmp eq ptr %i.al, null                 ; 2 uses
  br i1 %i.am, label %.thread, label %bb.o

bb.l:                                             ; preds = %switch.lookup
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.tu

bb.m:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.tt

bb.n:                                             ; preds = %bb.i, %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrI11llama_modelSt14default_deleteIS0_EED2Ev.exit771

bb.o:                                             ; preds = %bb.k
  %i.aq = call ptr @__dynamic_cast(ptr nonnull %i.al, ptr nonnull @_ZTI11llama_model, ptr nonnull @_ZTI16llama_model_base, i64 0) #31 ; 7 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.thread, label %bb.r

.thread:                                          ; preds = %bb.k, %bb.o
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 946, ptr noundef nonnull @.str.5) #32
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %.thread
  unreachable

bb.q:                                             ; preds = %bb.s, %bb.r, %.thread
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.ts

bb.r:                                             ; preds = %bb.o
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !53
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  invoke void %i.av(ptr noundef nonnull align 8 dereferenceable(36884) %i.aq, ptr noundef nonnull align 8 dereferenceable(592) %33)
          to label %bb.s unwind label %bb.q

bb.s:                                             ; preds = %bb.r
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !53
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  invoke void %i.ay(ptr noundef nonnull align 8 dereferenceable(36884) %i.aq, ptr noundef nonnull align 8 dereferenceable(592) %33)
          to label %bb.t unwind label %bb.q

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #31
  %i.az = load ptr, ptr %i.r, align 8, !tbaa !55
  invoke void @_ZN19quantize_state_implC2ERK11llama_modelPK27llama_model_quantize_params(ptr noundef nonnull align 8 dereferenceable(80) %35, ptr noundef nonnull align 8 dereferenceable(36840) %i.aq, ptr noundef %i.az)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ba = load ptr, ptr %i.r, align 8, !tbaa !55  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 18
  %i.bc = load i8, ptr %i.bb, align 2, !tbaa !65, !range !66, !noundef !67
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = getelementptr inbounds nuw i8, ptr %33, i64 168
  %i.bf = load i32, ptr %i.be, align 8
  %.0271 = select i1 %i.bd, i32 %i.bf, i32 %i.v   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #31
  %i.bg = getelementptr inbounds nuw i8, ptr %36, i64 48 ; 2 uses
  store ptr %i.bg, ptr %36, align 8, !tbaa !75
  %i.bh = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 3 uses
  store i64 1, ptr %i.bh, align 8, !tbaa !76
  %i.bi = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %36, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bj, align 8, !tbaa !623
  %i.bk = getelementptr inbounds nuw i8, ptr %36, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !624 ; 3 uses
  %.not = icmp eq ptr %i.bm, null
  br i1 %.not, label %.loopexit1138, label %.preheader1139

.preheader1139:                                   ; preds = %bb.u
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !626
  %.not3582068 = icmp eq ptr %i.bn, null
  br i1 %.not3582068, label %._crit_edge, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.lr.ph

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.lr.ph: ; preds = %.preheader1139
  %i.bo = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %37, i64 8
  br label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.v:                                             ; preds = %bb.t
  %i.bq = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_PK27llama_model_quantize_params:bb.a
  br i1 %i.yt, label %bb.gc, label %bb.ge

bb.gc:                                            ; preds = %_ZL11remap_layerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIiSaIiEERSt3mapIiS4_St4lessIiESaISt4pairIKiS4_EEERi.exit
  %i.yu = load ptr, ptr %i.jj, align 8, !tbaa !49
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 1, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__._ZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_PK27llama_model_quantize_params, ptr noundef %i.yu)
          to label %_ZNSt6vectorIPKN18llama_model_loader19llama_tensor_weightESaIS3_EE9push_backEOS3_.exit unwind label %.loopexit.split-lp1122.loopexit.split-lp

bb.gd:                                            ; preds = %.noexc.i181.i, %.noexc.i.i
  %i.yv = landingpad { ptr, i32 }
          cleanup
  br label %.body496

bb.ge:                                            ; preds = %_ZL11remap_layerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIiSaIiEERSt3mapIiS4_St4lessIiESaISt4pairIKiS4_EEERi.exit
  %i.yw = getelementptr inbounds nuw i8, ptr %.sroa.0891.02102, i64 40
  %i.yx = load i64, ptr %i.yw, align 8, !tbaa !51
  %i.yy = icmp eq i64 %i.ys, %i.yx
  %.pre2806 = load ptr, ptr %46, align 8, !tbaa !49 ; 2 uses
  br i1 %i.yy, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.ge
  %i.yz = load ptr, ptr %i.jj, align 8, !tbaa !49
  %bcmp.i.i = call i32 @bcmp(ptr %.pre2806, ptr %i.yz, i64 %i.ys)
  %.not1051 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not1051, label %bb.gh, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.ge, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.za = getelementptr inbounds nuw i8, ptr %.sroa.0891.02102, i64 80 ; 2 uses
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !691
  %i.zc = invoke ptr @ggml_set_name(ptr noundef %i.zb, ptr noundef %.pre2806)
          to label %bb.gf unwind label %.loopexit.split-lp1122.loopexit.split-lp ; 0 uses

bb.gf:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.zd = load ptr, ptr %i.jj, align 8, !tbaa !49
  %i.ze = load ptr, ptr %i.za, align 8, !tbaa !691
  %i.zf = invoke ptr @ggml_get_name(ptr noundef %i.ze)
          to label %bb.gg unwind label %.loopexit.split-lp1122.loopexit.split-lp

bb.gg:                                            ; preds = %bb.gf
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__._ZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_PK27llama_model_quantize_params, ptr noundef %i.zd, ptr noundef %i.zf)
          to label %bb.gh unwind label %.loopexit.split-lp1122.loopexit.split-lp

bb.gh:                                            ; preds = %bb.gg, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.zg = getelementptr inbounds nuw i8, ptr %.sroa.0891.02102, i64 64 ; 2 uses
  %.not.i.i498 = icmp eq ptr %.sroa.20.02100, %.sroa.32.02101
  br i1 %.not.i.i498, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  store ptr %i.zg, ptr %.sroa.20.02100, align 8, !tbaa !136
  %i.zh = getelementptr inbounds nuw i8, ptr %.sroa.20.02100, i64 8
  br label %_ZNSt6vectorIPKN18llama_model_loader19llama_tensor_weightESaIS3_EE9push_backEOS3_.exit

bb.gj:                                            ; preds = %bb.gh
  %i.zi = ptrtoint ptr %.sroa.32.02101 to i64
  %i.zj = ptrtoint ptr %.sroa.0894.02099 to i64
  %i.zk = sub i64 %i.zi, %i.zj                    ; 6 uses
  %i.zl = icmp eq i64 %i.zk, 9223372036854775800
  br i1 %i.zl, label %bb.gk, label %_ZNKSt6vectorIPKN18llama_model_loader19llama_tensor_weightESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.gk:                                            ; preds = %bb.gj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #32
          to label %.noexc500 unwind label %.loopexit.split-lp1122.loopexit.split-lp

.noexc500:                                        ; preds = %bb.gk
  unreachable

_ZNKSt6vectorIPKN18llama_model_loader19llama_tensor_weightESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.gj
  %i.zm = ashr exact i64 %i.zk, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.zm, i64 1)
  %i.zn = add nsw i64 %.sroa.speculated.i.i.i.i, %i.zm ; 2 uses
  %i.zo = icmp ult i64 %i.zn, %i.zm
  %i.zp = call i64 @llvm.umin.i64(i64 %i.zn, i64 1152921504606846975)
  %i.zq = select i1 %i.zo, i64 1152921504606846975, i64 %i.zp ; 3 uses
  %.not.i.i.i.i499 = icmp ne i64 %i.zq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i499)
  %i.zr = shl nuw nsw i64 %i.zq, 3
  %i.zs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zr) #35
          to label %.noexc501 unwind label %.loopexit.split-lp1122.loopexit.split-lp ; 4 uses

.noexc501:                                        ; preds = %_ZNKSt6vectorIPKN18llama_model_loader19llama_tensor_weightESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.zt = getelementptr inbounds i8, ptr %i.zs, i64 %i.zk ; 2 uses
  store ptr %i.zg, ptr %i.zt, align 8, !tbaa !136
  %i.zu = icmp sgt i64 %i.zk, 0
  br i1 %i.zu, label %bb.gl, label %_ZNSt6vectorIPKN18llama_model_loader19llama_tensor_weightESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.gl:                                            ; preds = %.noexc501
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.zs, ptr align 8 %.sroa.0894.02099, i64 %i.zk, i1 false)
  br label %_ZNSt6vectorIPKN18llama_model_loader19llama_tensor_weightESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPKN18llama_model_loader19llama_tensor_weightESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.gl, %.noexc501
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zt, i64 8
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0894.02099, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN18llama_model_loader19llama_tensor_weightESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.gm

bb.gm:                                            ; preds = %_ZNSt6vectorIPKN18llama_model_loader19llama_tensor_weightESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0894.02099, i64 noundef %i.zk) #33
  br label %_ZNSt6vectorIPKN18llama_model_loader19llama_tensor_weightESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN18llama_model_loader19llama_tensor_weightESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.gm, %_ZNSt6vectorIPKN18llama_model_loader19llama_tensor_weightESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.zw = getelementptr inbounds nuw [8 x i8], ptr %i.zs, i64 %i.zq
  br label %_ZNSt6vectorIPKN18llama_model_loader19llama_tensor_weightESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPKN18llama_model_loader19llama_tensor_weightESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.gi, %_ZNSt6vectorIPKN18llama_model_loader19llama_tensor_weightESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.gc
  %.sroa.0894.1 = phi ptr [ %.sroa.0894.02099, %bb.gc ], [ %i.zs, %_ZNSt6vectorIPKN18llama_model_loader19llama_tensor_weightESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.0894.02099, %bb.gi ] ; 2 uses
  %.sroa.20.1 = phi ptr [ %.sroa.20.02100, %bb.gc ], [ %i.zv, %_ZNSt6vectorIPKN18llama_model_loader19llama_tensor_weightESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.zh, %bb.gi ] ; 2 uses
  %.sroa.32.1 = phi ptr [ %.sroa.32.02101, %bb.gc ], [ %i.zw, %_ZNSt6vectorIPKN18llama_model_loader19llama_tensor_weightESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.32.02101, %bb.gi ] ; 2 uses
  %i.zx = load ptr, ptr %46, align 8, !tbaa !49   ; 2 uses
  %i.zy = icmp eq ptr %i.zx, %i.je
  br i1 %i.zy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit504, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i502

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i502: ; preds = %_ZNSt6vectorIPKN18llama_model_loader19llama_tensor_weightESaIS3_EE9push_backEOS3_.exit
  %i.zz = load i64, ptr %i.je, align 8, !tbaa !50
  %i.aaa = add i64 %i.zz, 1
  call void @_ZdlPvm(ptr noundef %i.zx, i64 noundef %i.aaa) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit504

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit504: ; preds = %_ZNSt6vectorIPKN18llama_model_loader19llama_tensor_weightESaIS3_EE9push_backEOS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i502
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #31
  %i.aab = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0891.02102) #37 ; 2 uses
  %.not1048 = icmp eq ptr %i.aab, %i.im
  br i1 %.not1048, label %._crit_edge2104, label %bb.bv

.loopexit.split-lp1122.loopexit.split-lp:         ; preds = %bb.gc, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %bb.gf, %bb.gg, %_ZNKSt6vectorIPKN18llama_model_loader19llama_tensor_weightESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.gk
  %lpad.loopexit.split-lp4985 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aac = load ptr, ptr %46, align 8, !tbaa !49  ; 2 uses
  %i.aad = icmp eq ptr %i.aac, %i.je
  br i1 %i.aad, label %.body496, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i505

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i505: ; preds = %.loopexit.split-lp1122.loopexit.split-lp
  %i.aae = load i64, ptr %i.je, align 8, !tbaa !50
  %i.aaf = add i64 %i.aae, 1
  call void @_ZdlPvm(ptr noundef %i.aac, i64 noundef %i.aaf) #33
  br label %.body496

.body496:                                         ; preds = %.loopexit.split-lp1122.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i505, %bb.gd, %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit184.i, %bb.cy
  %.pn423.pn = phi { ptr, i32 } [ %i.mp, %bb.cy ], [ %i.yv, %bb.gd ], [ %.pn31.pn.pn.pn.i, %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit184.i ], [ %lpad.loopexit.split-lp4985, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i505 ], [ %lpad.loopexit.split-lp4985, %.loopexit.split-lp1122.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #31
  br label %bb.tm

bb.gn:                                            ; preds = %._crit_edge2104
  %i.aag = load ptr, ptr %39, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #31
  invoke void @_ZNK6LLM_KVclB5cxx11E6llm_kv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %47, ptr noundef nonnull align 8 dereferenceable(16) %i.en, i32 noundef 31)
          to label %bb.go unwind label %bb.gq

bb.go:                                            ; preds = %bb.gn
  %i.aah = load ptr, ptr %47, align 8, !tbaa !49
  invoke void @gguf_set_val_u32(ptr noundef %i.aag, ptr noundef %i.aah, i32 noundef %.0990.lcssa)
          to label %bb.gp unwind label %bb.gr

bb.gp:                                            ; preds = %bb.go
  %i.aai = load ptr, ptr %47, align 8, !tbaa !49  ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 2 uses
  %i.aak = icmp eq ptr %i.aai, %i.aaj
  br i1 %i.aak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit510, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i508

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i508: ; preds = %bb.gp
  %i.aal = load i64, ptr %i.aaj, align 8, !tbaa !50
  %i.aam = add i64 %i.aal, 1
  call void @_ZdlPvm(ptr noundef %i.aai, i64 noundef %i.aam) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit510

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit510: ; preds = %bb.gp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i508
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #31
  br label %bb.gs

bb.gq:                                            ; preds = %bb.gn
  %i.aan = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit513

bb.gr:                                            ; preds = %bb.go
  %i.aao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aap = load ptr, ptr %47, align 8, !tbaa !49  ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 2 uses
  %i.aar = icmp eq ptr %i.aap, %i.aaq
  br i1 %i.aar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit513, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i511

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i511: ; preds = %bb.gr
  %i.aas = load i64, ptr %i.aaq, align 8, !tbaa !50
  %i.aat = add i64 %i.aas, 1
  call void @_ZdlPvm(ptr noundef %i.aap, i64 noundef %i.aat) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit513

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit513: ; preds = %bb.gr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i511, %bb.gq
  %.pn372 = phi { ptr, i32 } [ %i.aan, %bb.gq ], [ %i.aao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i511 ], [ %i.aao, %bb.gr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #31
  br label %bb.tm

bb.gs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit510, %._crit_edge2104
  %i.aau = load ptr, ptr %i.r, align 8, !tbaa !55
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 20
  %i.aaw = load i8, ptr %i.aav, align 4, !tbaa !137, !range !66, !noundef !67
  %i.aax = trunc nuw i8 %i.aaw to i1
  %.not.i.i514 = icmp ne ptr %.sroa.0894.0.lcssa, %.sroa.20.0.lcssa ; 5 uses
  %or.cond1040.not = select i1 %i.aax, i1 %.not.i.i514, i1 false
  %i.aay = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.aaz = ptrtoint ptr %.sroa.0894.0.lcssa to i64 ; 3 uses
  %i.aba = sub i64 %i.aay, %i.aaz                 ; 2 uses
  %i.abb = ashr exact i64 %i.aba, 3               ; 13 uses
  br i1 %or.cond1040.not, label %bb.gt, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEEZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_PK27llama_model_quantize_paramsE3$_0EvT_SN_T0_.exit"

bb.gt:                                            ; preds = %bb.gs
  %i.abc = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.abb, i1 true)
  %i.abd = shl nuw nsw i64 %i.abc, 1
  %i.abe = xor i64 %i.abd, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_SQ_T0_T1_"(ptr %.sroa.0894.0.lcssa, ptr %.sroa.20.0.lcssa, i64 noundef %i.abe)
  %i.abf = icmp sgt i64 %i.aba, 128
  br i1 %i.abf, label %.lr.ph.i.i.i.i515, label %.preheader.i19.i.i.i

.lr.ph.i.i.i.i515:                                ; preds = %bb.gt
  %.pre20.i.i.i.i = load ptr, ptr %.sroa.0894.0.lcssa, align 8, !tbaa !136
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.0894.0.lcssa, i64 8
  br label %bb.gu

bb.gu:                                            ; preds = %bb.hb, %.lr.ph.i.i.i.i515
  %i.abg = phi ptr [ %.pre20.i.i.i.i, %.lr.ph.i.i.i.i515 ], [ %i.acc, %bb.hb ] ; 3 uses
  %.sroa.0.019.i.idx.i.i.i = phi i64 [ 8, %.lr.ph.i.i.i.i515 ], [ %.sroa.0.019.i.add.i.i.i, %bb.hb ] ; 4 uses
  %.pn18.i.i.i.i = phi ptr [ %.sroa.0894.0.lcssa, %.lr.ph.i.i.i.i515 ], [ %.sroa.0.019.i.ptr.i.i.i, %bb.hb ]
  %.sroa.0.019.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0894.0.lcssa, i64 %.sroa.0.019.i.idx.i.i.i ; 3 uses
  %i.abh = load ptr, ptr %.sroa.0.019.i.ptr.i.i.i, align 8, !tbaa !136 ; 6 uses
  %i.abi = load i16, ptr %i.abh, align 8, !tbaa !138 ; 4 uses
  %i.abj = load i16, ptr %i.abg, align 8, !tbaa !138 ; 2 uses
  %i.abk = icmp eq i16 %i.abi, %i.abj
  br i1 %i.abk, label %.split.i.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit.i.i.i.i"

.split.i.i.i.i:                                   ; preds = %bb.gu
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abh, i64 8
  %i.abm = load i64, ptr %i.abl, align 8, !tbaa !139
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abg, i64 8
  %i.abo = load i64, ptr %i.abn, align 8, !tbaa !139
  %i.abp = icmp ult i64 %i.abm, %i.abo
  br i1 %i.abp, label %bb.gv, label %bb.gy

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit.i.i.i.i": ; preds = %bb.gu
  %i.abq = icmp ult i16 %i.abi, %i.abj
  br i1 %i.abq, label %bb.gv, label %bb.gy

bb.gv:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit.i.i.i.i", %.split.i.i.i.i
  %i.abr = icmp samesign ugt i64 %.sroa.0.019.i.idx.i.i.i, 8
  br i1 %i.abr, label %bb.gw, label %bb.gx, !prof !140

bb.gw:                                            ; preds = %bb.gv
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0894.0.lcssa, i64 %.sroa.0.019.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i

bb.gx:                                            ; preds = %bb.gv
  %i.abs = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i, i64 8
  store ptr %i.abg, ptr %i.abs, align 8, !tbaa !136
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i: ; preds = %bb.gx, %bb.gw
  store ptr %i.abh, ptr %.sroa.0894.0.lcssa, align 8, !tbaa !136
  br label %bb.hb

bb.gy:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit.i.i.i.i", %.split.i.i.i.i
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abh, i64 8
  br label %bb.gz

bb.gz:                                            ; preds = %bb.ha, %bb.gy
  %.sroa.03.0.i.i.i.i.i = phi ptr [ %.sroa.0.019.i.ptr.i.i.i, %bb.gy ], [ %.sroa.0.0.i.i.i.i.i, %bb.ha ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.03.0.i.i.i.i.i, i64 -8 ; 2 uses
  %i.abu = load ptr, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !136 ; 3 uses
  %i.abv = load i16, ptr %i.abu, align 8, !tbaa !138 ; 2 uses
  %i.abw = icmp eq i16 %i.abi, %i.abv
  br i1 %i.abw, label %.split.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclIPKN18llama_model_loader19llama_tensor_weightENS_17__normal_iteratorIPSJ_St6vectorISJ_SaISJ_EEEEEEbRT_T0_.exit.i.i.i.i.i"

.split.i.i.i.i.i:                                 ; preds = %bb.gz
  %i.abx = load i64, ptr %i.abt, align 8, !tbaa !139
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abu, i64 8
  %i.abz = load i64, ptr %i.aby, align 8, !tbaa !139
  %i.aca = icmp ult i64 %i.abx, %i.abz
  br i1 %i.aca, label %bb.ha, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_T0_.exit.i.i.i.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclIPKN18llama_model_loader19llama_tensor_weightENS_17__normal_iteratorIPSJ_St6vectorISJ_SaISJ_EEEEEEbRT_T0_.exit.i.i.i.i.i": ; preds = %bb.gz
  %i.acb = icmp ult i16 %i.abi, %i.abv
  br i1 %i.acb, label %bb.ha, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_T0_.exit.i.i.i.i"

bb.ha:                                            ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclIPKN18llama_model_loader19llama_tensor_weightENS_17__normal_iteratorIPSJ_St6vectorISJ_SaISJ_EEEEEEbRT_T0_.exit.i.i.i.i.i", %.split.i.i.i.i.i
  store ptr %i.abu, ptr %.sroa.03.0.i.i.i.i.i, align 8, !tbaa !136
  br label %bb.gz, !llvm.loop !586

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclIPKN18llama_model_loader19llama_tensor_weightENS_17__normal_iteratorIPSJ_St6vectorISJ_SaISJ_EEEEEEbRT_T0_.exit.i.i.i.i.i", %.split.i.i.i.i.i
  store ptr %i.abh, ptr %.sroa.03.0.i.i.i.i.i, align 8, !tbaa !136
  %.pre.i.i.i.i516 = load ptr, ptr %.sroa.0894.0.lcssa, align 8, !tbaa !136
  br label %bb.hb

bb.hb:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_T0_.exit.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i
  %i.acc = phi ptr [ %i.abh, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i ], [ %.pre.i.i.i.i516, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_T0_.exit.i.i.i.i" ]
  %.sroa.0.019.i.add.i.i.i = add nuw nsw i64 %.sroa.0.019.i.idx.i.i.i, 8 ; 2 uses
  %.not.i.i.i.i517 = icmp eq i64 %.sroa.0.019.i.add.i.i.i, 128
  br i1 %.not.i.i.i.i517, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_SQ_T0_.exit.i.i.i", label %bb.gu, !llvm.loop !587

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_SQ_T0_.exit.i.i.i": ; preds = %bb.hb
  %i.acd = getelementptr inbounds nuw i8, ptr %.sroa.0894.0.lcssa, i64 128 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.acd, %.sroa.20.0.lcssa
  br i1 %.not6.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEEZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_PK27llama_model_quantize_paramsE3$_0EvT_SN_T0_.exit", label %.lr.ph.i12.i.i.i

.lr.ph.i12.i.i.i:                                 ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_SQ_T0_.exit.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_T0_.exit.i16.i.i.i"
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.acp, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_T0_.exit.i16.i.i.i" ], [ %i.acd, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_SQ_T0_.exit.i.i.i" ] ; 3 uses
  %i.ace = load ptr, ptr %.sroa.0.07.i.i.i.i, align 8, !tbaa !136 ; 3 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 8
  %i.acg = load i16, ptr %i.ace, align 8, !tbaa !138 ; 2 uses
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hd, %.lr.ph.i12.i.i.i
  %.sroa.03.0.i.i13.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i, %.lr.ph.i12.i.i.i ], [ %.sroa.0.0.i.i14.i.i.i, %bb.hd ] ; 3 uses
  %.sroa.0.0.i.i14.i.i.i = getelementptr inbounds i8, ptr %.sroa.03.0.i.i13.i.i.i, i64 -8 ; 2 uses
  %i.ach = load ptr, ptr %.sroa.0.0.i.i14.i.i.i, align 8, !tbaa !136 ; 3 uses
  %i.aci = load i16, ptr %i.ach, align 8, !tbaa !138 ; 2 uses
  %i.acj = icmp eq i16 %i.acg, %i.aci
  br i1 %i.acj, label %.split.i.i18.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclIPKN18llama_model_loader19llama_tensor_weightENS_17__normal_iteratorIPSJ_St6vectorISJ_SaISJ_EEEEEEbRT_T0_.exit.i.i15.i.i.i"

.split.i.i18.i.i.i:                               ; preds = %bb.hc
  %i.ack = load i64, ptr %i.acf, align 8, !tbaa !139
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ach, i64 8
  %i.acm = load i64, ptr %i.acl, align 8, !tbaa !139
  %i.acn = icmp ult i64 %i.ack, %i.acm
  br i1 %i.acn, label %bb.hd, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_T0_.exit.i16.i.i.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclIPKN18llama_model_loader19llama_tensor_weightENS_17__normal_iteratorIPSJ_St6vectorISJ_SaISJ_EEEEEEbRT_T0_.exit.i.i15.i.i.i": ; preds = %bb.hc
  %i.aco = icmp ult i16 %i.acg, %i.aci
  br i1 %i.aco, label %bb.hd, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_T0_.exit.i16.i.i.i"

bb.hd:                                            ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclIPKN18llama_model_loader19llama_tensor_weightENS_17__normal_iteratorIPSJ_St6vectorISJ_SaISJ_EEEEEEbRT_T0_.exit.i.i15.i.i.i", %.split.i.i18.i.i.i
  store ptr %i.ach, ptr %.sroa.03.0.i.i13.i.i.i, align 8, !tbaa !136
  br label %bb.hc, !llvm.loop !586

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_T0_.exit.i16.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclIPKN18llama_model_loader19llama_tensor_weightENS_17__normal_iteratorIPSJ_St6vectorISJ_SaISJ_EEEEEEbRT_T0_.exit.i.i15.i.i.i", %.split.i.i18.i.i.i
  store ptr %i.ace, ptr %.sroa.03.0.i.i13.i.i.i, align 8, !tbaa !136
  %i.acp = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 8 ; 2 uses
  %.not.i17.i.i.i518 = icmp eq ptr %i.acp, %.sroa.20.0.lcssa
  br i1 %.not.i17.i.i.i518, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEEZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_PK27llama_model_quantize_paramsE3$_0EvT_SN_T0_.exit", label %.lr.ph.i12.i.i.i, !llvm.loop !588

.preheader.i19.i.i.i:                             ; preds = %bb.gt
  %.sroa.0.016.i20.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0894.0.lcssa, i64 8 ; 2 uses
  %.not17.i21.i.i.i = icmp eq ptr %.sroa.0.016.i20.i.i.i, %.sroa.20.0.lcssa
  br i1 %.not17.i21.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEEZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_PK27llama_model_quantize_paramsE3$_0EvT_SN_T0_.exit.a", label %.lr.ph.i22.i.i.i

.lr.ph.i22.i.i.i:                                 ; preds = %.preheader.i19.i.i.i
  %.pre20.i23.i.i.i = load ptr, ptr %.sroa.0894.0.lcssa, align 8, !tbaa !136
  br label %bb.he

bb.he:                                            ; preds = %bb.hm, %.lr.ph.i22.i.i.i
  %i.acq = phi ptr [ %.pre20.i23.i.i.i, %.lr.ph.i22.i.i.i ], [ %i.adt, %bb.hm ] ; 3 uses
  %.sroa.0.019.i24.i.i.i = phi ptr [ %.sroa.0.016.i20.i.i.i, %.lr.ph.i22.i.i.i ], [ %.sroa.0.0.i32.i.i.i, %bb.hm ] ; 5 uses
  %.pn18.i25.i.i.i = phi ptr [ %.sroa.0894.0.lcssa, %.lr.ph.i22.i.i.i ], [ %.sroa.0.019.i24.i.i.i, %bb.hm ] ; 2 uses
  %i.acr = load ptr, ptr %.sroa.0.019.i24.i.i.i, align 8, !tbaa !136 ; 6 uses
  %i.acs = load i16, ptr %i.acr, align 8, !tbaa !138 ; 4 uses
  %i.act = load i16, ptr %i.acq, align 8, !tbaa !138 ; 2 uses
  %i.acu = icmp eq i16 %i.acs, %i.act
  br i1 %i.acu, label %.split.i36.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit.i26.i.i.i"

.split.i36.i.i.i:                                 ; preds = %bb.he
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acr, i64 8
  %i.acw = load i64, ptr %i.acv, align 8, !tbaa !139
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acq, i64 8
  %i.acy = load i64, ptr %i.acx, align 8, !tbaa !139
  %i.acz = icmp ult i64 %i.acw, %i.acy
  br i1 %i.acz, label %bb.hf, label %bb.hj

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit.i26.i.i.i": ; preds = %bb.he
  %i.ada = icmp ult i16 %i.acs, %i.act
  br i1 %i.ada, label %bb.hf, label %bb.hj

bb.hf:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit.i26.i.i.i", %.split.i36.i.i.i
  %i.adb = ptrtoint ptr %.sroa.0.019.i24.i.i.i to i64
  %i.adc = sub i64 %i.adb, %i.aaz                 ; 3 uses
  %i.add = ashr exact i64 %i.adc, 3               ; 2 uses
  %i.ade = icmp sgt i64 %i.add, 1
  br i1 %i.ade, label %bb.hg, label %bb.hh, !prof !140

bb.hg:                                            ; preds = %bb.hf
  %i.adf = getelementptr inbounds nuw i8, ptr %.pn18.i25.i.i.i, i64 16
  %i.adg = sub nsw i64 0, %i.add
  %i.adh = getelementptr inbounds [8 x i8], ptr %i.adf, i64 %i.adg
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.adh, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0894.0.lcssa, i64 %i.adc, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i35.i.i.i

bb.hh:                                            ; preds = %bb.hf
  %i.adi = icmp eq i64 %i.adc, 8
  br i1 %i.adi, label %bb.hi, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i35.i.i.i

bb.hi:                                            ; preds = %bb.hh
  %i.adj = getelementptr inbounds nuw i8, ptr %.pn18.i25.i.i.i, i64 8
  store ptr %i.acq, ptr %i.adj, align 8, !tbaa !136
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i35.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i35.i.i.i: ; preds = %bb.hi, %bb.hh, %bb.hg
  store ptr %i.acr, ptr %.sroa.0894.0.lcssa, align 8, !tbaa !136
  br label %bb.hm

bb.hj:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclINS_17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorISK_SaISK_EEEESP_EEbT_T0_.exit.i26.i.i.i", %.split.i36.i.i.i
  %i.adk = getelementptr inbounds nuw i8, ptr %i.acr, i64 8
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hl, %bb.hj
  %.sroa.03.0.i.i27.i.i.i = phi ptr [ %.sroa.0.019.i24.i.i.i, %bb.hj ], [ %.sroa.0.0.i.i28.i.i.i, %bb.hl ] ; 3 uses
  %.sroa.0.0.i.i28.i.i.i = getelementptr inbounds i8, ptr %.sroa.03.0.i.i27.i.i.i, i64 -8 ; 2 uses
  %i.adl = load ptr, ptr %.sroa.0.0.i.i28.i.i.i, align 8, !tbaa !136 ; 3 uses
  %i.adm = load i16, ptr %i.adl, align 8, !tbaa !138 ; 2 uses
  %i.adn = icmp eq i16 %i.acs, %i.adm
  br i1 %i.adn, label %.split.i.i34.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclIPKN18llama_model_loader19llama_tensor_weightENS_17__normal_iteratorIPSJ_St6vectorISJ_SaISJ_EEEEEEbRT_T0_.exit.i.i29.i.i.i"

.split.i.i34.i.i.i:                               ; preds = %bb.hk
  %i.ado = load i64, ptr %i.adk, align 8, !tbaa !139
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adl, i64 8
  %i.adq = load i64, ptr %i.adp, align 8, !tbaa !139
  %i.adr = icmp ult i64 %i.ado, %i.adq
  br i1 %i.adr, label %bb.hl, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_T0_.exit.i30.i.i.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclIPKN18llama_model_loader19llama_tensor_weightENS_17__normal_iteratorIPSJ_St6vectorISJ_SaISJ_EEEEEEbRT_T0_.exit.i.i29.i.i.i": ; preds = %bb.hk
  %i.ads = icmp ult i16 %i.acs, %i.adm
  br i1 %i.ads, label %bb.hl, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_T0_.exit.i30.i.i.i"

bb.hl:                                            ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclIPKN18llama_model_loader19llama_tensor_weightENS_17__normal_iteratorIPSJ_St6vectorISJ_SaISJ_EEEEEEbRT_T0_.exit.i.i29.i.i.i", %.split.i.i34.i.i.i
  store ptr %i.adl, ptr %.sroa.03.0.i.i27.i.i.i, align 8, !tbaa !136
  br label %bb.hk, !llvm.loop !586

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_T0_.exit.i30.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PK27llama_model_quantize_paramsE3$_0EclIPKN18llama_model_loader19llama_tensor_weightENS_17__normal_iteratorIPSJ_St6vectorISJ_SaISJ_EEEEEEbRT_T0_.exit.i.i29.i.i.i", %.split.i.i34.i.i.i
  store ptr %i.acr, ptr %.sroa.03.0.i.i27.i.i.i, align 8, !tbaa !136
  %.pre.i31.i.i.i = load ptr, ptr %.sroa.0894.0.lcssa, align 8, !tbaa !136
  br label %bb.hm

bb.hm:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_T0_.exit.i30.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i35.i.i.i
  %i.adt = phi ptr [ %i.acr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i35.i.i.i ], [ %.pre.i31.i.i.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_T0_.exit.i30.i.i.i" ]
  %.sroa.0.0.i32.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i24.i.i.i, i64 8 ; 2 uses
  %.not.i33.i.i.i = icmp eq ptr %.sroa.0.0.i32.i.i.i, %.sroa.20.0.lcssa
  br i1 %.not.i33.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEEZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_PK27llama_model_quantize_paramsE3$_0EvT_SN_T0_.exit", label %bb.he, !llvm.loop !587

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEEZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_PK27llama_model_quantize_paramsE3$_0EvT_SN_T0_.exit": ; preds = %bb.hm, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_T0_.exit.i16.i.i.i", %bb.gs, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_PK27llama_model_quantize_paramsE3$_0EEEvT_SQ_T0_.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #31
  %64 = icmp ugt i64 %i.abb, 115292150460684697
  br i1 %64, label %bb.hn, label %_ZNSt6vectorI15tensor_metadataSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEEZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_PK27llama_model_quantize_paramsE3$_0EvT_SN_T0_.exit.a": ; preds = %.preheader.i19.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #31
  %i.adu = icmp ugt i64 %i.abb, 115292150460684697
  br i1 %i.adu, label %bb.hn, label %_ZNSt12_Vector_baseI15tensor_metadataSaIS0_EEC2EmRKS1_.exit.i

bb.hn:                                            ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEEZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_PK27llama_model_quantize_paramsE3$_0EvT_SN_T0_.exit.a", %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEEZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_PK27llama_model_quantize_paramsE3$_0EvT_SN_T0_.exit"
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #32
          to label %.noexc522 unwind label %bb.ho

.noexc522:                                        ; preds = %bb.hn
  unreachable

_ZNSt6vectorI15tensor_metadataSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i: ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEEZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_PK27llama_model_quantize_paramsE3$_0EvT_SN_T0_.exit"
  br i1 %.not.i.i514, label %_ZNSt12_Vector_baseI15tensor_metadataSaIS0_EEC2EmRKS1_.exit.i, label %.loopexit1114

_ZNSt12_Vector_baseI15tensor_metadataSaIS0_EEC2EmRKS1_.exit.i: ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN18llama_model_loader19llama_tensor_weightESt6vectorIS5_SaIS5_EEEEZL25llama_model_quantize_implRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_PK27llama_model_quantize_paramsE3$_0EvT_SN_T0_.exit.a", %_ZNSt6vectorI15tensor_metadataSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  %i.adv = mul nuw nsw i64 %i.abb, 80
  %i.adw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.adv) #35
          to label %.noexc523 unwind label %bb.ho ; 6 uses

.noexc523:                                        ; preds = %_ZNSt12_Vector_baseI15tensor_metadataSaIS0_EEC2EmRKS1_.exit.i
  store ptr %i.adw, ptr %48, align 8, !tbaa !143
  %i.adx = getelementptr inbounds nuw [80 x i8], ptr %i.adw, i64 %i.abb
  %i.ady = getelementptr inbounds nuw i8, ptr %48, i64 16
  store ptr %i.adx, ptr %i.ady, align 8, !tbaa !144
  %65 = add nsw i64 %i.abb, -1
  %xtraiter = and i64 %i.abb, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i520.prol.loopexit, label %.lr.ph.i.i.i.i.i520.prol

.lr.ph.i.i.i.i.i520.prol:                         ; preds = %.noexc523, %.lr.ph.i.i.i.i.i520.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.aee, %.lr.ph.i.i.i.i.i520.prol ], [ %i.adw, %.noexc523 ] ; 6 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.aed, %.lr.ph.i.i.i.i.i520.prol ], [ %i.abb, %.noexc523 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i520.prol ], [ 0, %.noexc523 ]
  %i.adz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.adz, i8 0, i64 64, i1 false)
  store ptr %i.adz, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !45
  %i.aea = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.aea, align 8, !tbaa !51
  %i.aeb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 40
  %i.aec = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 56
  store ptr %i.aec, ptr %i.aeb, align 8, !tbaa !45
  %i.aed = add nsw i64 %.057.i.i.i.i.i.prol, -1   ; 2 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 80 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i520.prol.loopexit, label %.lr.ph.i.i.i.i.i520.prol, !llvm.loop !589

.lr.ph.i.i.i.i.i520.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i520.prol, %.noexc523
  %.lcssa4979.unr = phi ptr [ poison, %.noexc523 ], [ %i.aee, %.lr.ph.i.i.i.i.i520.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.adw, %.noexc523 ], [ %i.aee, %.lr.ph.i.i.i.i.i520.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.abb, %.noexc523 ], [ %i.aed, %.lr.ph.i.i.i.i.i520.prol ]
  %i.aef = icmp ult i64 %65, 3
  br i1 %i.aef, label %.lr.ph2111.preheader, label %.lr.ph.i.i.i.i.i520

.lr.ph.i.i.i.i.i520:                              ; preds = %.lr.ph.i.i.i.i.i520.prol.loopexit, %.lr.ph.i.i.i.i.i520
  %.08.i.i.i.i.i = phi ptr [ %i.afa, %.lr.ph.i.i.i.i.i520 ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i520.prol.loopexit ] ; 21 uses
  %.057.i.i.i.i.i = phi i64 [ %i.aez, %.lr.ph.i.i.i.i.i520 ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i520.prol.loopexit ]
  %i.aeg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aeg, i8 0, i64 64, i1 false)
  store ptr %i.aeg, ptr %.08.i.i.i.i.i, align 8, !tbaa !45
  %i.aeh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.aeh, align 8, !tbaa !51
  %i.aei = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  %i.aej = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 56
  store ptr %i.aej, ptr %i.aei, align 8, !tbaa !45
  %i.aek = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80
  %i.ael = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ael, i8 0, i64 64, i1 false)
  store ptr %i.ael, ptr %i.aek, align 8, !tbaa !45
  %i.aem = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 88
  store i64 0, ptr %i.aem, align 8, !tbaa !51
  %i.aen = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 120
  %i.aeo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 136
  store ptr %i.aeo, ptr %i.aen, align 8, !tbaa !45
  %i.aep = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 160
  %i.aeq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 176 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aeq, i8 0, i64 64, i1 false)
  store ptr %i.aeq, ptr %i.aep, align 8, !tbaa !45
  %i.aer = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 168
  store i64 0, ptr %i.aer, align 8, !tbaa !51
  %i.aes = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 200
  %i.aet = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 216
  store ptr %i.aet, ptr %i.aes, align 8, !tbaa !45
  %i.aeu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 240
  %i.aev = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 256 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aev, i8 0, i64 64, i1 false)
  store ptr %i.aev, ptr %i.aeu, align 8, !tbaa !45
  %i.aew = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 248
  store i64 0, ptr %i.aew, align 8, !tbaa !51
  %i.aex = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 280
  %i.aey = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 296
  store ptr %i.aey, ptr %i.aex, align 8, !tbaa !45
  %i.aez = add nsw i64 %.057.i.i.i.i.i, -4        ; 2 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 320 ; 2 uses
  %.not.i.i.i.i.i521.3 = icmp eq i64 %i.aez, 0
  br i1 %.not.i.i.i.i.i521.3, label %.lr.ph2111.preheader, label %.lr.ph.i.i.i.i.i520, !llvm.loop !0

.loopexit1114:                                    ; preds = %_ZNSt6vectorI15tensor_metadataSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  %i.afb = getelementptr inbounds nuw i8, ptr %48, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %48, i8 0, i64 24, i1 false)
  br label %._crit_edge2112

.lr.ph2111.preheader:                             ; preds = %.lr.ph.i.i.i.i.i520, %.lr.ph.i.i.i.i.i520.prol.loopexit
  %.lcssa4979 = phi ptr [ %.lcssa4979.unr, %.lr.ph.i.i.i.i.i520.prol.loopexit ], [ %i.afa, %.lr.ph.i.i.i.i.i520 ] ; 2 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 2 uses
  store ptr %.lcssa4979, ptr %i.afc, align 8, !tbaa !146
  %umax = call i64 @llvm.umax.i64(i64 %i.abb, i64 1)
  br label %.lr.ph2111

._crit_edge2112:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %.loopexit1114
  %i.afd = phi ptr [ %i.afb, %.loopexit1114 ], [ %i.afc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ]
  %.val4463147 = phi ptr [ null, %.loopexit1114 ], [ %.lcssa4979, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ]
  %.val3146 = phi ptr [ null, %.loopexit1114 ], [ %i.adw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ]
  call fastcc void @_ZL28init_quantize_state_countersR19quantize_state_implRSt6vectorI15tensor_metadataSaIS2_EE(ptr noundef nonnull align 8 dereferenceable(80) %35, ptr %.val3146, ptr %.val4463147)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #31
  store i16 1, ptr %i.s, align 2, !tbaa !147
  %i.afe = load ptr, ptr %i.r, align 8, !tbaa !55
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 20
  %i.afg = load i8, ptr %i.aff, align 4, !tbaa !137, !range !66, !noundef !67
  %i.afh = trunc nuw i8 %i.afg to i1
  %or.cond2176.not = select i1 %i.afh, i1 %.not.i.i514, i1 false
  br i1 %or.cond2176.not, label %.lr.ph2115, label %.lr.ph.preheader.i.i.i.i.i

bb.ho:                                            ; preds = %_ZNSt12_Vector_baseI15tensor_metadataSaIS0_EEC2EmRKS1_.exit.i, %bb.hn
  %i.afi = landingpad { ptr, i32 }
          cleanup
  br label %bb.tl

.lr.ph2111:                                       ; preds = %.lr.ph2111.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %.02732109 = phi i64 [ %i.aft, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ 0, %.lr.ph2111.preheader ] ; 3 uses
  %i.afj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0894.0.lcssa, i64 %.02732109
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !136
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 16
  %i.afm = load ptr, ptr %i.afl, align 8, !tbaa !692
  %i.afn = invoke ptr @ggml_get_name(ptr noundef %i.afm)
          to label %bb.hp unwind label %bb.hq     ; 2 uses

bb.hp:                                            ; preds = %.lr.ph2111
  %i.afo = getelementptr inbounds nuw [80 x i8], ptr %i.adw, i64 %.02732109 ; 2 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 8
  %i.afq = load i64, ptr %i.afp, align 8, !tbaa !51
  %i.afr = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.afn) #31
  %i.afs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.afo, i64 noundef 0, i64 noundef %i.afq, ptr noundef nonnull %i.afn, i64 noundef %i.afr)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.hq ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.hp
  %i.aft = add nuw i64 %.02732109, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.aft, %umax
  br i1 %exitcond.not, label %._crit_edge2112, label %.lr.ph2111, !llvm.loop !590

bb.hq:                                            ; preds = %bb.hp, %.lr.ph2111
  %i.afu = landingpad { ptr, i32 }
          cleanup
  br label %bb.tk

.lr.ph2115:                                       ; preds = %._crit_edge2112, %.lr.ph2115
  %.sroa.0884.02114 = phi ptr [ %i.afz, %.lr.ph2115 ], [ %.sroa.0894.0.lcssa, %._crit_edge2112 ] ; 2 uses
  %i.afv = phi i16 [ %.sroa.speculated880, %.lr.ph2115 ], [ 1, %._crit_edge2112 ]
  %i.afw = load ptr, ptr %.sroa.0884.02114, align 8, !tbaa !136
  %i.afx = load i16, ptr %i.afw, align 8, !tbaa !138
  %i.afy = add i16 %i.afx, 1
  %.sroa.speculated880 = call i16 @llvm.umax.i16(i16 %i.afy, i16 %i.afv) ; 3 uses
  store i16 %.sroa.speculated880, ptr %i.s, align 2, !tbaa !147
  %i.afz = getelementptr inbounds nuw i8, ptr %.sroa.0884.02114, i64 8 ; 2 uses
  %.not1049 = icmp eq ptr %i.afz, %.sroa.20.0.lcssa
  br i1 %.not1049, label %.loopexit1113.loopexit, label %.lr.ph2115

.loopexit1113.loopexit:                           ; preds = %.lr.ph2115
  %i.aga = zext i16 %.sroa.speculated880 to i64
  br label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %._crit_edge2112, %.loopexit1113.loopexit
  %i.agb = phi i64 [ %i.aga, %.loopexit1113.loopexit ], [ 1, %._crit_edge2112 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #31
  %i.agc = shl nuw nsw i64 %i.agb, 3              ; 3 uses
  %i.agd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.agc) #35
          to label %bb.hr unwind label %bb.hu     ; 6 uses

bb.hr:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.agd, ptr %49, align 8, !tbaa !150
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.agd, i8 0, i64 %i.agc, i1 false), !tbaa !693
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.agd, i64 %i.agc
  %i.age = getelementptr inbounds nuw [8 x i8], ptr %i.agd, i64 %i.agb
  %i.agf = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 4 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 2 uses
  store ptr %i.age, ptr %i.agg, align 8, !tbaa !151
  store ptr %scevgep.i.i.i.i.i, ptr %i.agf, align 8, !tbaa !152
  %i.agh = load ptr, ptr %39, align 8, !tbaa !95
  store ptr null, ptr %39, align 8, !tbaa !95
  %i.agi = load ptr, ptr %i.agd, align 8, !tbaa !95 ; 2 uses
  store ptr %i.agh, ptr %i.agd, align 8, !tbaa !95
  %.not.i.i.i.i529 = icmp eq ptr %i.agi, null
  br i1 %.not.i.i.i.i529, label %_ZNSt10unique_ptrI12gguf_context20gguf_context_deleterEaSEOS2_.exit, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  invoke void @gguf_free(ptr noundef nonnull %i.agi)
          to label %_ZNSt10unique_ptrI12gguf_context20gguf_context_deleterEaSEOS2_.exit unwind label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.agj = landingpad { ptr, i32 }
          catch ptr null
  %i.agk = extractvalue { ptr, i32 } %i.agj, 0
  call void @__clang_call_terminate(ptr %i.agk) #34
  unreachable

_ZNSt10unique_ptrI12gguf_context20gguf_context_deleterEaSEOS2_.exit: ; preds = %bb.hr, %bb.hs
  br i1 %.not.i.i514, label %.lr.ph2123, label %._crit_edge2124

.lr.ph2123:                                       ; preds = %_ZNSt10unique_ptrI12gguf_context20gguf_context_deleterEaSEOS2_.exit
  %i.agl = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.agm = icmp eq i32 %.0271, 21
  %i.agn = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 7 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %51, i64 8 ; 5 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 9 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.agv = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.agx = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 17 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 8 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  br label %bb.hv

._crit_edge2124:                                  ; preds = %bb.kz, %_ZNSt10unique_ptrI12gguf_context20gguf_context_deleterEaSEOS2_.exit
  %.0268.lcssa = phi i8 [ 0, %_ZNSt10unique_ptrI12gguf_context20gguf_context_deleterEaSEOS2_.exit ], [ %.1269, %bb.kz ] ; 2 uses
  %i.aha = load i16, ptr %i.s, align 2, !tbaa !147
  %i.ahb = icmp ugt i16 %i.aha, 1
  br i1 %i.ahb, label %.preheader, label %.loopexit1100

.preheader:                                       ; preds = %._crit_edge2124
  %i.ahc = load ptr, ptr %i.agf, align 8, !tbaa !152
  %i.ahd = load ptr, ptr %49, align 8, !tbaa !150 ; 2 uses
  %.not2180 = icmp eq ptr %i.ahc, %i.ahd
  br i1 %.not2180, label %.loopexit1100, label %.lr.ph2127

.lr.ph2127:                                       ; preds = %.preheader
  %i.ahe = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 4 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 4 uses
  %i.ahg = trunc i64 %i.abb to i32
  %i.ahh = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 4 uses
  br label %bb.la

bb.hu:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.ahi = landingpad { ptr, i32 }
          cleanup
  br label %bb.tj

bb.hv:                                            ; preds = %.lr.ph2123, %bb.kz
  %.02672122 = phi i64 [ 0, %.lr.ph2123 ], [ %i.atb, %bb.kz ] ; 4 uses
  %.02682121 = phi i8 [ 0, %.lr.ph2123 ], [ %.1269, %bb.kz ] ; 2 uses
  %i.ahj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0894.0.lcssa, i64 %.02672122
  %i.ahk = load ptr, ptr %i.ahj, align 8, !tbaa !136 ; 2 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 16
  %i.ahm = load ptr, ptr %i.ahl, align 8, !tbaa !692 ; 5 uses
  %i.ahn = load ptr, ptr %i.r, align 8, !tbaa !55
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 20
  %i.ahp = load i8, ptr %i.aho, align 4, !tbaa !137, !range !66, !noundef !67
  %i.ahq = trunc nuw i8 %i.ahp to i1
  br i1 %i.ahq, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %bb.hv
  %i.ahr = load i16, ptr %i.ahk, align 8, !tbaa !138
  %i.ahs = zext i16 %i.ahr to i64
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hv, %bb.hw
  %i.aht = phi i64 [ %i.ahs, %bb.hw ], [ 0, %bb.hv ] ; 2 uses
  %i.ahu = load ptr, ptr %49, align 8, !tbaa !150
  %i.ahv = getelementptr inbounds nuw [8 x i8], ptr %i.ahu, i64 %i.aht ; 3 uses
  %i.ahw = load ptr, ptr %i.ahv, align 8, !tbaa !95
  %.not1050 = icmp eq ptr %i.ahw, null
  br i1 %.not1050, label %bb.hy, label %_ZNSt10unique_ptrI12gguf_context20gguf_context_deleterE5resetEPS0_.exit

bb.hy:                                            ; preds = %bb.hx
  %i.ahx = invoke ptr @gguf_init_empty()
          to label %bb.hz unwind label %.loopexit.split-lp1102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hz:                                            ; preds = %bb.hy
  %i.ahy = load ptr, ptr %i.ahv, align 8, !tbaa !95 ; 2 uses
  store ptr %i.ahx, ptr %i.ahv, align 8, !tbaa !95
  %.not.i.i530 = icmp eq ptr %i.ahy, null
  br i1 %.not.i.i530, label %_ZNSt10unique_ptrI12gguf_context20gguf_context_deleterE5resetEPS0_.exit, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  invoke void @gguf_free(ptr noundef nonnull %i.ahy)
          to label %_ZNSt10unique_ptrI12gguf_context20gguf_context_deleterE5resetEPS0_.exit unwind label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.ahz = landingpad { ptr, i32 }
          catch ptr null
  %i.aia = extractvalue { ptr, i32 } %i.ahz, 0
  call void @__clang_call_terminate(ptr %i.aia) #34
  unreachable

.loopexit.split-lp1102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ie, %bb.ic, %_ZNSt10unique_ptrI12gguf_context20gguf_context_deleterE5resetEPS0_.exit, %bb.hy, %bb.kx, %bb.kv, %bb.ku
  %lpad.loopexit.split-lp4934 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1102

_ZNSt10unique_ptrI12gguf_context20gguf_context_deleterE5resetEPS0_.exit: ; preds = %bb.ia, %bb.hz, %bb.hx
  %i.aib = load ptr, ptr %49, align 8, !tbaa !150
  %i.aic = getelementptr inbounds nuw [8 x i8], ptr %i.aib, i64 %i.aht
  %i.aid = load ptr, ptr %i.aic, align 8, !tbaa !95
  invoke void @gguf_add_tensor(ptr noundef %i.aid, ptr noundef %i.ahm)
          to label %bb.ic unwind label %.loopexit.split-lp1102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ic:                                            ; preds = %_ZNSt10unique_ptrI12gguf_context20gguf_context_deleterE5resetEPS0_.exit
  %i.aie = load ptr, ptr %i.r, align 8, !tbaa !55
  %i.aif = load i32, ptr %i.agl, align 4, !tbaa !220
  %i.aig = invoke fastcc noundef zeroext i1 @_ZL26tensor_allows_quantizationPK27llama_model_quantize_params8llm_archPK11ggml_tensor(ptr noundef %i.aie, i32 noundef %i.aif, ptr noundef %i.ahm)
          to label %bb.id unwind label %.loopexit.split-lp1102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.id:                                            ; preds = %bb.ic
  %i.aih = load ptr, ptr %48, align 8, !tbaa !143
  %i.aii = getelementptr inbounds nuw [80 x i8], ptr %i.aih, i64 %.02672122 ; 5 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aii, i64 72 ; 2 uses
  %i.aik = zext i1 %i.aig to i8
  store i8 %i.aik, ptr %i.aij, align 8, !tbaa !694
  br i1 %i.aig, label %bb.ie, label %bb.if

bb.ie:                                            ; preds = %bb.id
  %i.ail = load ptr, ptr %i.r, align 8, !tbaa !55
  %i.aim = invoke fastcc noundef i32 @_ZL21llama_tensor_get_typeR19quantize_state_implPK27llama_model_quantize_paramsPK11ggml_tensor9ggml_typeRK15tensor_metadata(ptr noundef nonnull align 8 dereferenceable(80) %35, ptr noundef %i.ail, ptr noundef %i.ahm, i32 noundef %switch.ext, ptr noundef nonnull align 8 dereferenceable(74) %i.aii)
          to label %bb.ig unwind label %.loopexit.split-lp1102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.if:                                            ; preds = %bb.id
  %i.ain = load i32, ptr %i.ahm, align 8, !tbaa !226
  br label %bb.ig

bb.ig:                                            ; preds = %bb.ie, %bb.if
  %.sink = phi i32 [ %i.ain, %bb.if ], [ %i.aim, %bb.ie ] ; 3 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %i.aii, i64 32
  store i32 %.sink, ptr %i.aio, align 8, !tbaa !695
  %i.aip = getelementptr inbounds nuw i8, ptr %i.ahm, i64 256 ; 6 uses
  %i.aiq = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.aip, ptr noundef nonnull dereferenceable(18) @.str.209) #37
  %i.air = icmp eq i32 %i.aiq, 0
  br i1 %i.air, label %_ZL23tensor_requires_imatrixPKc9ggml_type11llama_ftype.exit, label %_ZL28tensor_name_match_token_embdPKc.exit.i

_ZL28tensor_name_match_token_embdPKc.exit.i:      ; preds = %bb.ig
  %i.ais = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.aip, ptr noundef nonnull dereferenceable(28) @.str.210) #37
  %i.ait = icmp eq i32 %i.ais, 0
  br i1 %i.ait, label %_ZL23tensor_requires_imatrixPKc9ggml_type11llama_ftype.exit, label %bb.ih

bb.ih:                                            ; preds = %_ZL28tensor_name_match_token_embdPKc.exit.i
  %i.aiu = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.aip, ptr noundef nonnull dereferenceable(14) @.str.206) #37
end_hunk_1
