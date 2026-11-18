Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/einstein?download=true
inline.NumInlined: 1464
inline.NumDeleted: 489
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6casadi8EinsteinC2ERKNS_2MXES3_S3_RKSt6vectorIxSaIxEES8_S8_S8_S8_S8_:bb.a

_ZNSt6vectorIxSaIxEED2Ev.exit73:                  ; preds = %bb.av, %_ZNSt6vectorIxSaIxEED2Ev.exit71, %bb.an
  %.pn.pn = phi { ptr, i32 } [ %i.en, %bb.an ], [ %.pn, %_ZNSt6vectorIxSaIxEED2Ev.exit71 ], [ %.pn, %bb.av ] ; 2 uses
  %i.fy = load ptr, ptr %i.bo, align 8, !tbaa !18 ; 3 uses
  %.not.i.i.i74 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i74, label %_ZNSt6vectorIxSaIxEED2Ev.exit75, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit73
  %i.fz = load ptr, ptr %i.ca, align 8, !tbaa !19
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = ptrtoint ptr %i.fy to i64
  %i.gc = sub i64 %i.ga, %i.gb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fy, i64 noundef %i.gc) #23
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit75

_ZNSt6vectorIxSaIxEED2Ev.exit75:                  ; preds = %bb.aw, %_ZNSt6vectorIxSaIxEED2Ev.exit73, %bb.am
  %.pn.pn.pn = phi { ptr, i32 } [ %i.em, %bb.am ], [ %.pn.pn, %_ZNSt6vectorIxSaIxEED2Ev.exit73 ], [ %.pn.pn, %bb.aw ] ; 2 uses
  %i.gd = load ptr, ptr %i.as, align 8, !tbaa !18 ; 3 uses
  %.not.i.i.i76 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i76, label %_ZNSt6vectorIxSaIxEED2Ev.exit77, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit75
  %i.ge = load ptr, ptr %i.be, align 8, !tbaa !19
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = ptrtoint ptr %i.gd to i64
  %i.gh = sub i64 %i.gf, %i.gg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gh) #23
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit77

_ZNSt6vectorIxSaIxEED2Ev.exit77:                  ; preds = %bb.ax, %_ZNSt6vectorIxSaIxEED2Ev.exit75, %bb.al
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.el, %bb.al ], [ %.pn.pn.pn, %_ZNSt6vectorIxSaIxEED2Ev.exit75 ], [ %.pn.pn.pn, %bb.ax ] ; 2 uses
  %i.gi = load ptr, ptr %i.w, align 8, !tbaa !18  ; 3 uses
  %.not.i.i.i78 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i78, label %_ZNSt6vectorIxSaIxEED2Ev.exit79, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit77
  %i.gj = load ptr, ptr %i.ai, align 8, !tbaa !19
  %i.gk = ptrtoint ptr %i.gj to i64
  %i.gl = ptrtoint ptr %i.gi to i64
  %i.gm = sub i64 %i.gk, %i.gl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gi, i64 noundef %i.gm) #23
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit79

_ZNSt6vectorIxSaIxEED2Ev.exit79:                  ; preds = %bb.ay, %_ZNSt6vectorIxSaIxEED2Ev.exit77, %bb.ak
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ek, %bb.ak ], [ %.pn.pn.pn.pn, %_ZNSt6vectorIxSaIxEED2Ev.exit77 ], [ %.pn.pn.pn.pn, %bb.ay ] ; 2 uses
  %i.gn = load ptr, ptr %i.a, align 8, !tbaa !18  ; 3 uses
  %.not.i.i.i80 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i.i80, label %_ZNSt6vectorIxSaIxEED2Ev.exit81, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit79
  %i.go = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = ptrtoint ptr %i.gn to i64
  %i.gr = sub i64 %i.gp, %i.gq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gn, i64 noundef %i.gr) #23
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit81

_ZNSt6vectorIxSaIxEED2Ev.exit81:                  ; preds = %bb.az, %_ZNSt6vectorIxSaIxEED2Ev.exit79, %bb.aj
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ej, %bb.aj ], [ %.pn.pn.pn.pn.pn, %_ZNSt6vectorIxSaIxEED2Ev.exit79 ], [ %.pn.pn.pn.pn.pn, %bb.az ]
  tail call void @_ZN6casadi6MXNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #24
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

declare void @_ZN6casadi6MXNodeC2Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN6casadi6MXNode7set_depERKNS_2MXES3_S3_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN6casadi6MXNode12set_sparsityERKNS_8SparsityE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN6casadi16einstein_processINS_2MXEEExRKT_S4_S4_RKSt6vectorIxSaIxEES9_S9_S9_S9_S9_RS7_SA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::allocator.7", align 1 ; 5 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::allocator.7", align 1 ; 3 uses
  %22 = alloca %"class.std::vector.10", align 8   ; 5 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.std::allocator.7", align 1 ; 5 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %31 = alloca %"class.std::allocator.7", align 1 ; 3 uses
  %32 = alloca %"class.std::vector.10", align 8   ; 5 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %37 = alloca %"class.std::allocator.7", align 1 ; 5 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %41 = alloca %"class.std::allocator.7", align 1 ; 3 uses
  %42 = alloca %"class.std::vector.10", align 8   ; 5 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %47 = alloca %"class.std::allocator.7", align 1 ; 5 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %51 = alloca %"class.std::allocator.7", align 1 ; 3 uses
  %52 = alloca %"class.std::vector.10", align 8   ; 5 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %56 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %57 = alloca %"class.std::allocator.7", align 1 ; 5 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %59 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %61 = alloca %"class.std::allocator.7", align 1 ; 3 uses
  %62 = alloca %"class.std::vector.10", align 8   ; 5 uses
  %63 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %64 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %65 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %66 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %67 = alloca %"class.std::allocator.7", align 1 ; 5 uses
  %68 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %69 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %70 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %71 = alloca %"class.std::allocator.7", align 1 ; 3 uses
  %72 = alloca %"class.std::vector.10", align 8   ; 5 uses
  %73 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %74 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %75 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %76 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %77 = alloca %"class.std::allocator.7", align 1 ; 5 uses
  %78 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %79 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %80 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %81 = alloca %"class.std::allocator.7", align 1 ; 3 uses
  %82 = alloca %"class.std::vector.10", align 8   ; 5 uses
  %83 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %84 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %85 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %86 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %87 = alloca %"class.std::allocator.7", align 1 ; 5 uses
  %88 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %89 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %90 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %91 = alloca %"class.std::allocator.7", align 1 ; 3 uses
  %92 = alloca %"class.std::vector.10", align 8   ; 5 uses
  %93 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %94 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %95 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %96 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %97 = alloca %"class.std::allocator.7", align 1 ; 5 uses
  %98 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %99 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %100 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %101 = alloca %"class.std::allocator.7", align 1 ; 3 uses
  %102 = alloca %"class.std::vector.10", align 8  ; 5 uses
  %103 = alloca %"class.std::map.124", align 8    ; 13 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %104 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %105 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %106 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %107 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %108 = alloca %"class.std::allocator.7", align 1 ; 5 uses
  %109 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %110 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %111 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %112 = alloca %"class.std::allocator.7", align 1 ; 3 uses
  %113 = alloca %"class.std::vector.10", align 8  ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %114 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %115 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %116 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %117 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %118 = alloca %"class.std::allocator.7", align 1 ; 5 uses
  %119 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %120 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %121 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %122 = alloca %"class.std::allocator.7", align 1 ; 3 uses
  %123 = alloca %"class.std::vector.10", align 8  ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %124 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %125 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %126 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %127 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %128 = alloca %"class.std::allocator.7", align 1 ; 5 uses
  %129 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %130 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %131 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %132 = alloca %"class.std::allocator.7", align 1 ; 3 uses
  %133 = alloca %"class.std::vector.10", align 8  ; 5 uses
  %134 = alloca %"class.std::vector.0", align 8   ; 16 uses
  %135 = alloca %"class.std::vector.0", align 8   ; 6 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.e = tail call noundef zeroext i1 @_ZNK6casadi8Sparsity9is_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.g = tail call noundef zeroext i1 @_ZNK6casadi8Sparsity8is_denseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  br i1 %i.g, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 40) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.43, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.44)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.46, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull @.str.45, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false), !alias.scope !130
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(24) %22)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #21
          to label %bb.jc unwind label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451.thread: ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.l:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445

bb.m:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442

bb.n:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439

bb.o:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436

bb.p:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.q:                                             ; preds = %bb.k, %bb.j
  %.0318 = phi i1 [ false, %bb.k ], [ true, %bb.j ] ; 2 uses
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %13, align 8, !tbaa !46    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.s = load i64, ptr %i.q, align 8, !tbaa !47
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.p
  %.1319 = phi i1 [ true, %bb.p ], [ %.0318, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.0318, %bb.q ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.n, %bb.p ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.o, %bb.q ] ; 2 uses
  %i.u = load ptr, ptr %18, align 8, !tbaa !46    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i434

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i434: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = load i64, ptr %i.v, align 8, !tbaa !47
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i434, %bb.o
  %.2320 = phi i1 [ true, %bb.o ], [ %.1319, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i434 ], [ %.1319, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %i.m, %bb.o ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i434 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  %i.z = load ptr, ptr %19, align 8, !tbaa !46    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !47
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437, %bb.n
  %.3321 = phi i1 [ true, %bb.n ], [ %.2320, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437 ], [ %.2320, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436 ] ; 2 uses
  %.pn.pn.pn = phi { ptr, i32 } [ %i.l, %bb.n ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436 ] ; 2 uses
  %i.ae = load ptr, ptr %20, align 8, !tbaa !46   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !47
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440, %bb.m
  %.4322 = phi i1 [ true, %bb.m ], [ %.3321, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440 ], [ %.3321, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439 ] ; 2 uses
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.k, %bb.m ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  %i.aj = load ptr, ptr %14, align 8, !tbaa !46   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !47
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443, %bb.l
  %.5323 = phi i1 [ true, %bb.l ], [ %.4322, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443 ], [ %.4322, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442 ] ; 2 uses
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.j, %bb.l ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442 ] ; 4 uses
  %i.ao = load ptr, ptr %15, align 8, !tbaa !46   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i446

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i446: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !47
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i446
  %i.at = load ptr, ptr %16, align 8, !tbaa !46   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i449

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448.thread: ; preds = %bb.d
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %16, align 8, !tbaa !46   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i449.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i449.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448.thread
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !47
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #23
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i449: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448
end_hunk_0
begin_hunk_1_@_ZN6casadi16einstein_processINS_2MXEEExRKT_S4_S4_RKSt6vectorIxSaIxEES9_S9_S9_S9_S9_RS7_SA_SA_SA_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %127) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %126) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #24
  br i1 %.5232, label %bb.hm, label %bb.ho

.sink.split1380:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit721.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit724.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i722.thread
  %.pn402.pn.pn.pn.pn.pn.pn945.ph = phi { ptr, i32 } [ %i.agh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i722.thread ], [ %i.aet, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit724.thread ], [ %i.agh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit721.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %128) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %127) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %126) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #24
  br label %bb.hm

bb.hm:                                            ; preds = %.sink.split1380, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i722, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit724
  %.pn402.pn.pn.pn.pn.pn.pn945 = phi { ptr, i32 } [ %.pn402.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i722 ], [ %.pn402.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit724 ], [ %.pn402.pn.pn.pn.pn.pn.pn945.ph, %.sink.split1380 ]
  call void @__cxa_free_exception(ptr %i.aes) #24
  br label %bb.ho

bb.hn:                                            ; preds = %bb.gu, %bb.gw, %.lr.ph1021
  %i.agp = phi ptr [ %.pre1079, %bb.gu ], [ %i.adv, %bb.gw ], [ %i.adv, %.lr.ph1021 ] ; 2 uses
  %i.agq = phi ptr [ %.pre1078, %bb.gu ], [ %i.adw, %bb.gw ], [ %i.adw, %.lr.ph1021 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.agr = add nuw nsw i64 %.02351020, 1          ; 2 uses
  %i.ags = ptrtoint ptr %i.agq to i64
  %i.agt = ptrtoint ptr %i.agp to i64
  %i.agu = sub i64 %i.ags, %i.agt
  %i.agv = ashr exact i64 %i.agu, 3
  %i.agw = icmp ult i64 %i.agr, %i.agv
  br i1 %i.agw, label %.lr.ph1021, label %._crit_edge, !llvm.loop !122

bb.ho:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i722, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit724, %bb.hm, %bb.gv
  %.pn410 = phi { ptr, i32 } [ %i.ael, %bb.gv ], [ %.pn402.pn.pn.pn.pn.pn.pn945, %bb.hm ], [ %.pn402.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit724 ], [ %.pn402.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i722 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %_ZNSt6vectorISt4pairIxxESaIS1_EED2Ev.exit767

._crit_edge1029:                                  ; preds = %_ZNSt6vectorISt4pairIxxESaIS1_EE9push_backEOS1_.exit
  %.not.i.i = icmp eq ptr %.sroa.0788.1, %.sroa.10.1
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEEZN6casadi16einstein_processINS9_2MXEEExRKT_SE_SE_RKS5_IxSaIxEESI_SI_SI_SI_SI_RSG_SJ_SJ_SJ_EUlRKS3_SL_E_EvSC_SC_T0_.exit.thread, label %bb.hp

bb.hp:                                            ; preds = %._crit_edge1029
  %i.agx = ptrtoint ptr %.sroa.10.1 to i64
  %i.agy = ptrtoint ptr %.sroa.0788.1 to i64
  %i.agz = sub i64 %i.agx, %i.agy
  %i.aha = ashr exact i64 %i.agz, 4
  %i.ahb = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aha, i1 true)
  %i.ahc = shl nuw nsw i64 %i.ahb, 1
  %i.ahd = xor i64 %i.ahc, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEEvSE_SE_T0_T1_(ptr %.sroa.0788.1, ptr nonnull %.sroa.10.1, i64 noundef %i.ahd)
          to label %.noexc unwind label %.loopexit.split-lp983

.noexc:                                           ; preds = %bb.hp
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEEvSE_SE_T0_(ptr %.sroa.0788.1, ptr nonnull %.sroa.10.1)
          to label %.lr.ph1035 unwind label %.loopexit.split-lp983

.lr.ph1028:                                       ; preds = %._crit_edge, %_ZNSt6vectorISt4pairIxxESaIS1_EE9push_backEOS1_.exit
  %.sroa.0785.01026 = phi ptr [ %i.ahx, %_ZNSt6vectorISt4pairIxxESaIS1_EE9push_backEOS1_.exit ], [ %i.adu, %._crit_edge ] ; 3 uses
  %.sroa.16.01025 = phi ptr [ %.sroa.16.1, %_ZNSt6vectorISt4pairIxxESaIS1_EE9push_backEOS1_.exit ], [ null, %._crit_edge ] ; 7 uses
  %.sroa.10.01024 = phi ptr [ %.sroa.10.1, %_ZNSt6vectorISt4pairIxxESaIS1_EE9push_backEOS1_.exit ], [ null, %._crit_edge ] ; 4 uses
  %.sroa.0788.01023 = phi ptr [ %.sroa.0788.1, %_ZNSt6vectorISt4pairIxxESaIS1_EE9push_backEOS1_.exit ], [ null, %._crit_edge ] ; 8 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %.sroa.0785.01026, i64 32
  %i.ahf = load i64, ptr %i.ahe, align 8, !tbaa !62 ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %.sroa.0785.01026, i64 40
  %i.ahh = load i64, ptr %i.ahg, align 8, !tbaa !61 ; 2 uses
  %.not.i.i726 = icmp eq ptr %.sroa.10.01024, %.sroa.16.01025
  br i1 %.not.i.i726, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %.lr.ph1028
  store i64 %i.ahf, ptr %.sroa.10.01024, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.01024, i64 8
  store i64 %i.ahh, ptr %.sroa.6.0..sroa_idx, align 8
  br label %_ZNSt6vectorISt4pairIxxESaIS1_EE9push_backEOS1_.exit

bb.hr:                                            ; preds = %.lr.ph1028
  %i.ahi = ptrtoint ptr %.sroa.16.01025 to i64
  %i.ahj = ptrtoint ptr %.sroa.0788.01023 to i64
  %i.ahk = sub i64 %i.ahi, %i.ahj                 ; 4 uses
  %i.ahl = icmp eq i64 %i.ahk, 9223372036854775792
  br i1 %i.ahl, label %bb.hs, label %_ZNKSt6vectorISt4pairIxxESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.hs:                                            ; preds = %bb.hr
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.75) #21
          to label %.noexc727 unwind label %.loopexit.split-lp983

.noexc727:                                        ; preds = %bb.hs
  unreachable

_ZNKSt6vectorISt4pairIxxESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.hr
  %i.ahm = ashr exact i64 %i.ahk, 4               ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ahm, i64 1)
  %i.ahn = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ahm ; 2 uses
  %i.aho = icmp ult i64 %i.ahn, %i.ahm
  %i.ahp = call i64 @llvm.umin.i64(i64 %i.ahn, i64 576460752303423487)
  %i.ahq = select i1 %i.aho, i64 576460752303423487, i64 %i.ahp ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ahq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ahr = shl nuw nsw i64 %i.ahq, 4
  %i.ahs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ahr) #22
          to label %.noexc728 unwind label %.loopexit982 ; 5 uses

.noexc728:                                        ; preds = %_ZNKSt6vectorISt4pairIxxESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 %i.ahk ; 2 uses
  store i64 %i.ahf, ptr %i.aht, align 8
  %.sroa.6.0..sroa_idx782 = getelementptr inbounds nuw i8, ptr %i.aht, i64 8
  store i64 %i.ahh, ptr %.sroa.6.0..sroa_idx782, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0788.01023, %.sroa.16.01025
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIxxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc728, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ahv, %.lr.ph.i.i.i.i.i.i ], [ %i.ahs, %.noexc728 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ahu, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0788.01023, %.noexc728 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !142
  %i.ahu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ahu, %.sroa.16.01025
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIxxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !126

_ZNSt6vectorISt4pairIxxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc728
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ahs, %.noexc728 ], [ %i.ahv, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0788.01023, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt4pairIxxESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.ht

bb.ht:                                            ; preds = %_ZNSt6vectorISt4pairIxxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0788.01023, i64 noundef %i.ahk) #23
  br label %_ZNSt6vectorISt4pairIxxESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIxxESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.ht, %_ZNSt6vectorISt4pairIxxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.ahw = getelementptr inbounds nuw [16 x i8], ptr %i.ahs, i64 %i.ahq
  br label %_ZNSt6vectorISt4pairIxxESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorISt4pairIxxESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorISt4pairIxxESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.hq
  %.sroa.0788.1 = phi ptr [ %i.ahs, %_ZNSt6vectorISt4pairIxxESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0788.01023, %bb.hq ] ; 12 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorISt4pairIxxESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.10.01024, %bb.hq ] ; 2 uses
  %.sroa.16.1 = phi ptr [ %i.ahw, %_ZNSt6vectorISt4pairIxxESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.16.01025, %bb.hq ] ; 7 uses
  %.sroa.10.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 16 ; 5 uses
  %i.ahx = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0785.01026) #25 ; 2 uses
  %.not979 = icmp eq ptr %i.ahx, %i.xh
  br i1 %.not979, label %._crit_edge1029, label %.lr.ph1028

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEEZN6casadi16einstein_processINS9_2MXEEExRKT_SE_SE_RKS5_IxSaIxEESI_SI_SI_SI_SI_RSG_SJ_SJ_SJ_EUlRKS3_SL_E_EvSC_SC_T0_.exit.thread: ; preds = %._crit_edge1029, %._crit_edge
  %.sroa.16.0.lcssa1342.ph = phi ptr [ %.sroa.16.1, %._crit_edge1029 ], [ null, %._crit_edge ]
  %.sroa.0788.0.lcssa1338.ph = phi ptr [ %.sroa.0788.1, %._crit_edge1029 ], [ null, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %134) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %134, i8 0, i64 24, i1 false)
  br label %._crit_edge1036

.lr.ph1035:                                       ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %134) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %134, i8 0, i64 24, i1 false)
  %i.ahy = getelementptr inbounds nuw i8, ptr %134, i64 8 ; 3 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %134, i64 16 ; 3 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  br label %bb.hv

._crit_edge1036:                                  ; preds = %_ZNSt6vectorIxSaIxEE9push_backERKx.exit, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEEZN6casadi16einstein_processINS9_2MXEEExRKT_SE_SE_RKS5_IxSaIxEESI_SI_SI_SI_SI_RSG_SJ_SJ_SJ_EUlRKS3_SL_E_EvSC_SC_T0_.exit.thread
  %.sroa.0788.0.lcssa13381352 = phi ptr [ %.sroa.0788.0.lcssa1338.ph, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEEZN6casadi16einstein_processINS9_2MXEEExRKT_SE_SE_RKS5_IxSaIxEESI_SI_SI_SI_SI_RSG_SJ_SJ_SJ_EUlRKS3_SL_E_EvSC_SC_T0_.exit.thread ], [ %.sroa.0788.1, %_ZNSt6vectorIxSaIxEE9push_backERKx.exit ] ; 7 uses
  %.sroa.16.0.lcssa13421350 = phi ptr [ %.sroa.16.0.lcssa1342.ph, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEEZN6casadi16einstein_processINS9_2MXEEExRKT_SE_SE_RKS5_IxSaIxEESI_SI_SI_SI_SI_RSG_SJ_SJ_SJ_EUlRKS3_SL_E_EvSC_SC_T0_.exit.thread ], [ %.sroa.16.1, %_ZNSt6vectorIxSaIxEE9push_backERKx.exit ] ; 5 uses
  %.0131.lcssa = phi i64 [ 1, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEEZN6casadi16einstein_processINS9_2MXEEExRKT_SE_SE_RKS5_IxSaIxEESI_SI_SI_SI_SI_RSG_SJ_SJ_SJ_EUlRKS3_SL_E_EvSC_SC_T0_.exit.thread ], [ %i.aip, %_ZNSt6vectorIxSaIxEE9push_backERKx.exit ]
  %i.aic = load ptr, ptr %10, align 8, !tbaa !18  ; 2 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.aie = load ptr, ptr %i.aid, align 8, !tbaa !17
  %.not.i.i729 = icmp eq ptr %i.aie, %i.aic
  br i1 %.not.i.i729, label %_ZNSt6vectorIxSaIxEE5clearEv.exit, label %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %._crit_edge1036
  store ptr %i.aic, ptr %i.aid, align 8, !tbaa !17
  br label %_ZNSt6vectorIxSaIxEE5clearEv.exit

_ZNSt6vectorIxSaIxEE5clearEv.exit:                ; preds = %._crit_edge1036, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i
  %i.aif = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.aig = load ptr, ptr %i.aif, align 8, !tbaa !17
  %i.aih = load ptr, ptr %9, align 8, !tbaa !18
  %i.aii = ptrtoint ptr %i.aig to i64
  %i.aij = ptrtoint ptr %i.aih to i64
  %i.aik = sub i64 %i.aii, %i.aij
  %i.ail = ashr exact i64 %i.aik, 3
  %i.aim = add nsw i64 %i.ail, 1                  ; 2 uses
  %.not1331 = icmp eq i64 %i.aim, 0
  br i1 %.not1331, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit, label %bb.hu

bb.hu:                                            ; preds = %_ZNSt6vectorIxSaIxEE5clearEv.exit
  invoke void @_ZNSt6vectorIxSaIxEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.aim)
          to label %_ZNSt6vectorIxSaIxEE6resizeEm.exit unwind label %.loopexit.split-lp.loopexit.split-lp

.loopexit982:                                     ; preds = %_ZNKSt6vectorISt4pairIxxESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit984 = landingpad { ptr, i32 }
          cleanup
  br label %bb.iz

.loopexit.split-lp983:                            ; preds = %bb.hp, %.noexc, %bb.hs
  %.sroa.0788.01007 = phi ptr [ %.sroa.0788.1, %bb.hp ], [ %.sroa.0788.1, %.noexc ], [ %.sroa.0788.01023, %bb.hs ]
  %.sroa.16.0998 = phi ptr [ %.sroa.16.1, %bb.hp ], [ %.sroa.16.1, %.noexc ], [ %.sroa.16.01025, %bb.hs ]
  %lpad.loopexit.split-lp985 = landingpad { ptr, i32 }
          cleanup
  br label %bb.iz

bb.hv:                                            ; preds = %.lr.ph1035, %_ZNSt6vectorIxSaIxEE9push_backERKx.exit
  %.01311034 = phi i64 [ 1, %.lr.ph1035 ], [ %i.aip, %_ZNSt6vectorIxSaIxEE9push_backERKx.exit ]
  %.sroa.0777.01033 = phi ptr [ %.sroa.0788.1, %.lr.ph1035 ], [ %i.akl, %_ZNSt6vectorIxSaIxEE9push_backERKx.exit ] ; 4 uses
  %.sroa.0777.01033.a = phi ptr [ null, %.lr.ph1035 ], [ %136, %_ZNSt6vectorIxSaIxEE9push_backERKx.exit ] ; 5 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %.sroa.0777.01033, i64 8 ; 3 uses
  %i.aio = load i64, ptr %i.ain, align 8, !tbaa !64
  %i.aip = mul nsw i64 %i.aio, %.01311034         ; 2 uses
  %i.aiq = load i64, ptr %.sroa.0777.01033, align 8, !tbaa !65
  %i.air = sub nsw i64 0, %i.aiq                  ; 2 uses
  %i.ais = load ptr, ptr %i.ahy, align 8, !tbaa !17 ; 4 uses
  %i.ait = load ptr, ptr %i.ahz, align 8, !tbaa !19
  %.not.i.i733 = icmp eq ptr %i.ais, %i.ait
  br i1 %.not.i.i733, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  store i64 %i.air, ptr %i.ais, align 8, !tbaa !23
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ais, i64 8
  store ptr %i.aiu, ptr %i.ahy, align 8, !tbaa !17
  br label %_ZNSt6vectorIxSaIxEE9push_backEOx.exit

bb.hx:                                            ; preds = %bb.hv
  %i.aiv = ptrtoint ptr %i.ais to i64
  %i.aiw = ptrtoint ptr %.sroa.0777.01033.a to i64 ; 2 uses
  %i.aix = sub i64 %i.aiv, %i.aiw                 ; 5 uses
  %i.aiy = icmp eq i64 %i.aix, 9223372036854775800
  br i1 %i.aiy, label %.invoke, label %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.hx
  %i.aiz = ashr exact i64 %i.aix, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i734 = call i64 @llvm.umax.i64(i64 %i.aiz, i64 1)
  %i.aja = add nsw i64 %.sroa.speculated.i.i.i.i734, %i.aiz ; 2 uses
  %i.ajb = icmp ult i64 %i.aja, %i.aiz
  %i.ajc = call i64 @llvm.umin.i64(i64 %i.aja, i64 1152921504606846975)
  %i.ajd = select i1 %i.ajb, i64 1152921504606846975, i64 %i.ajc ; 3 uses
  %.not.i.i.i.i735 = icmp ne i64 %i.ajd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i735)
  %i.aje = shl nuw nsw i64 %i.ajd, 3
  %i.ajf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aje) #22
          to label %.noexc737 unwind label %.loopexit.split-lp.loopexit ; 5 uses

.noexc737:                                        ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ajg = getelementptr inbounds i8, ptr %i.ajf, i64 %i.aix ; 2 uses
  store i64 %i.air, ptr %i.ajg, align 8, !tbaa !23
  %i.ajh = icmp sgt i64 %i.aix, 0
  br i1 %i.ajh, label %bb.hy, label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i.i

bb.hy:                                            ; preds = %.noexc737
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ajf, ptr align 8 %.sroa.0777.01033.a, i64 %i.aix, i1 false)
  br label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.hy, %.noexc737
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajg, i64 8
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0777.01033.a, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i.i, label %bb.hz

bb.hz:                                            ; preds = %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i.i
  %i.ajj = load ptr, ptr %i.ahz, align 8, !tbaa !19
  %i.ajk = ptrtoint ptr %i.ajj to i64
  %i.ajl = sub i64 %i.ajk, %i.aiw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0777.01033.a, i64 noundef %i.ajl) #23
  br label %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i.i

_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i.i: ; preds = %bb.hz, %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ajf, ptr %134, align 8, !tbaa !18
  store ptr %i.aji, ptr %i.ahy, align 8, !tbaa !17
  %i.ajm = getelementptr inbounds nuw [8 x i8], ptr %i.ajf, i64 %i.ajd
  store ptr %i.ajm, ptr %i.ahz, align 8, !tbaa !19
  br label %_ZNSt6vectorIxSaIxEE9push_backEOx.exit

_ZNSt6vectorIxSaIxEE9push_backEOx.exit:           ; preds = %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i.i, %bb.hw
  %136 = phi ptr [ %i.ajf, %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i.i ], [ %.sroa.0777.01033.a, %bb.hw ]
  %i.ajn = load ptr, ptr %i.aia, align 8, !tbaa !17 ; 4 uses
  %i.ajo = load ptr, ptr %i.aib, align 8, !tbaa !19
  %.not.i738 = icmp eq ptr %i.ajn, %i.ajo
  br i1 %.not.i738, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %_ZNSt6vectorIxSaIxEE9push_backEOx.exit
  %i.ajp = load i64, ptr %i.ain, align 8, !tbaa !23
  store i64 %i.ajp, ptr %i.ajn, align 8, !tbaa !23
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajn, i64 8
  store ptr %i.ajq, ptr %i.aia, align 8, !tbaa !17
  br label %_ZNSt6vectorIxSaIxEE9push_backERKx.exit

bb.ib:                                            ; preds = %_ZNSt6vectorIxSaIxEE9push_backEOx.exit
  %i.ajr = load ptr, ptr %9, align 8, !tbaa !18   ; 4 uses
  %i.ajs = ptrtoint ptr %i.ajn to i64
  %i.ajt = ptrtoint ptr %i.ajr to i64             ; 2 uses
  %i.aju = sub i64 %i.ajs, %i.ajt                 ; 5 uses
  %i.ajv = icmp eq i64 %i.aju, 9223372036854775800
  br i1 %i.ajv, label %.invoke, label %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.ib, %bb.hx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.75) #21
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ib
  %i.ajw = ashr exact i64 %i.aju, 3               ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ajw, i64 1)
  %i.ajx = add nsw i64 %.sroa.speculated.i.i.i, %i.ajw ; 2 uses
  %i.ajy = icmp ult i64 %i.ajx, %i.ajw
  %i.ajz = call i64 @llvm.umin.i64(i64 %i.ajx, i64 1152921504606846975)
  %i.aka = select i1 %i.ajy, i64 1152921504606846975, i64 %i.ajz ; 3 uses
  %.not.i.i.i739 = icmp ne i64 %i.aka, 0
  call void @llvm.assume(i1 %.not.i.i.i739)
  %i.akb = shl nuw nsw i64 %i.aka, 3
  %i.akc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.akb) #22
          to label %.noexc741 unwind label %.loopexit.split-lp.loopexit ; 4 uses

.noexc741:                                        ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i
  %i.akd = getelementptr inbounds i8, ptr %i.akc, i64 %i.aju ; 2 uses
  %i.ake = load i64, ptr %i.ain, align 8, !tbaa !23
  store i64 %i.ake, ptr %i.akd, align 8, !tbaa !23
  %i.akf = icmp sgt i64 %i.aju, 0
  br i1 %i.akf, label %bb.ic, label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i

bb.ic:                                            ; preds = %.noexc741
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.akc, ptr align 8 %i.ajr, i64 %i.aju, i1 false)
  br label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i: ; preds = %bb.ic, %.noexc741
  %i.akg = getelementptr inbounds nuw i8, ptr %i.akd, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ajr, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i, label %bb.id

bb.id:                                            ; preds = %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i
  %i.akh = load ptr, ptr %i.aib, align 8, !tbaa !19
  %i.aki = ptrtoint ptr %i.akh to i64
  %i.akj = sub i64 %i.aki, %i.ajt
  call void @_ZdlPvm(ptr noundef nonnull %i.ajr, i64 noundef %i.akj) #23
  br label %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i

_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i: ; preds = %bb.id, %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i
  store ptr %i.akc, ptr %9, align 8, !tbaa !18
  store ptr %i.akg, ptr %i.aia, align 8, !tbaa !17
  %i.akk = getelementptr inbounds nuw [8 x i8], ptr %i.akc, i64 %i.aka
  store ptr %i.akk, ptr %i.aib, align 8, !tbaa !19
  br label %_ZNSt6vectorIxSaIxEE9push_backERKx.exit

_ZNSt6vectorIxSaIxEE9push_backERKx.exit:          ; preds = %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i, %bb.ia
  %i.akl = getelementptr inbounds nuw i8, ptr %.sroa.0777.01033, i64 16
  %.not980 = icmp eq ptr %.sroa.0777.01033, %.0.lcssa.i.i.i.i.i.i.pn
  br i1 %.not980, label %._crit_edge1036, label %bb.hv

_ZNSt6vectorIxSaIxEE6resizeEm.exit:               ; preds = %_ZNSt6vectorIxSaIxEE5clearEv.exit, %bb.hu
  %i.akm = load ptr, ptr %11, align 8, !tbaa !18  ; 2 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ako = load ptr, ptr %i.akn, align 8, !tbaa !17
  %.not.i.i742 = icmp eq ptr %i.ako, %i.akm
  br i1 %.not.i.i742, label %_ZNSt6vectorIxSaIxEE5clearEv.exit744, label %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i743

_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i743:     ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit
  store ptr %i.akm, ptr %i.akn, align 8, !tbaa !17
  br label %_ZNSt6vectorIxSaIxEE5clearEv.exit744

_ZNSt6vectorIxSaIxEE5clearEv.exit744:             ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i743
  %i.akp = load ptr, ptr %i.aif, align 8, !tbaa !17
  %i.akq = load ptr, ptr %9, align 8, !tbaa !18
  %i.akr = ptrtoint ptr %i.akp to i64
  %i.aks = ptrtoint ptr %i.akq to i64
  %i.akt = sub i64 %i.akr, %i.aks
  %i.aku = ashr exact i64 %i.akt, 3
  %i.akv = add nsw i64 %i.aku, 1                  ; 2 uses
  %.not1332 = icmp eq i64 %i.akv, 0
  br i1 %.not1332, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit748, label %bb.ie

bb.ie:                                            ; preds = %_ZNSt6vectorIxSaIxEE5clearEv.exit744
  invoke void @_ZNSt6vectorIxSaIxEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %i.akv)
          to label %_ZNSt6vectorIxSaIxEE6resizeEm.exit748 unwind label %.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIxSaIxEE6resizeEm.exit748:            ; preds = %_ZNSt6vectorIxSaIxEE5clearEv.exit744, %bb.ie
  %i.akw = load ptr, ptr %12, align 8, !tbaa !18  ; 2 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.aky = load ptr, ptr %i.akx, align 8, !tbaa !17
  %.not.i.i749 = icmp eq ptr %i.aky, %i.akw
  br i1 %.not.i.i749, label %_ZNSt6vectorIxSaIxEE5clearEv.exit751, label %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i750

_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i750:     ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit748
  store ptr %i.akw, ptr %i.akx, align 8, !tbaa !17
  br label %_ZNSt6vectorIxSaIxEE5clearEv.exit751

_ZNSt6vectorIxSaIxEE5clearEv.exit751:             ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit748, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i750
  %i.akz = load ptr, ptr %i.aif, align 8, !tbaa !17
  %i.ala = load ptr, ptr %9, align 8, !tbaa !18
  %i.alb = ptrtoint ptr %i.akz to i64
  %i.alc = ptrtoint ptr %i.ala to i64
  %i.ald = sub i64 %i.alb, %i.alc
  %i.ale = ashr exact i64 %i.ald, 3
  %i.alf = add nsw i64 %i.ale, 1                  ; 2 uses
  %.not1333 = icmp eq i64 %i.alf, 0
  br i1 %.not1333, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit755, label %bb.if

bb.if:                                            ; preds = %_ZNSt6vectorIxSaIxEE5clearEv.exit751
  invoke void @_ZNSt6vectorIxSaIxEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef %i.alf)
          to label %_ZNSt6vectorIxSaIxEE6resizeEm.exit755 unwind label %.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIxSaIxEE6resizeEm.exit755:            ; preds = %_ZNSt6vectorIxSaIxEE5clearEv.exit751, %bb.if
  %i.alg = load ptr, ptr %134, align 8, !tbaa !20
  %i.alh = getelementptr inbounds nuw i8, ptr %134, i64 8
  %i.ali = load ptr, ptr %i.alh, align 8, !tbaa !20
  %i.alj = icmp eq ptr %i.alg, %i.ali
  br i1 %i.alj, label %bb.ih, label %bb.ig

bb.ig:                                            ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit755
  call void @llvm.lifetime.start.p0(ptr nonnull %135) #24
  invoke void @_ZN6casadi12lookupvectorERKSt6vectorIxSaIxEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.0") align 8 %135, ptr noundef nonnull align 8 dereferenceable(24) %134)
          to label %_ZNSt6vectorIxSaIxEEaSEOS1_.exit unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit758

_ZNSt6vectorIxSaIxEEaSEOS1_.exit:                 ; preds = %bb.ig
  %i.alk = load ptr, ptr %135, align 8, !tbaa !18
  %i.all = getelementptr inbounds nuw i8, ptr %135, i64 16
  %i.alm = load ptr, ptr %i.all, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #24
  %i.aln = ptrtoint ptr %i.alm to i64
  br label %bb.ih

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke, %bb.if, %bb.ie, %bb.hu
  %.sroa.0788.0.lcssa13381353 = phi ptr [ %.sroa.0788.1, %.invoke ], [ %.sroa.0788.0.lcssa13381352, %bb.hu ], [ %.sroa.0788.0.lcssa13381352, %bb.if ], [ %.sroa.0788.0.lcssa13381352, %bb.ie ]
  %.sroa.16.0.lcssa13421351 = phi ptr [ %.sroa.16.1, %.invoke ], [ %.sroa.16.0.lcssa13421350, %bb.hu ], [ %.sroa.16.0.lcssa13421350, %bb.if ], [ %.sroa.16.0.lcssa13421350, %bb.ie ]
  %lpad.loopexit.split-lp1055 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNSt6vectorIxSaIxEED2Ev.exit758:                 ; preds = %bb.ig
  %i.alo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #24
  br label %.loopexit.split-lp

bb.ih:                                            ; preds = %_ZNSt6vectorIxSaIxEEaSEOS1_.exit, %_ZNSt6vectorIxSaIxEE6resizeEm.exit755
  %.sroa.0.0 = phi ptr [ null, %_ZNSt6vectorIxSaIxEE6resizeEm.exit755 ], [ %i.alk, %_ZNSt6vectorIxSaIxEEaSEOS1_.exit ] ; 6 uses
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIxSaIxEE6resizeEm.exit755 ], [ %i.aln, %_ZNSt6vectorIxSaIxEEaSEOS1_.exit ]
  %i.alp = load ptr, ptr %i.qn, align 8, !tbaa !17 ; 2 uses
  %i.alq = load ptr, ptr %6, align 8, !tbaa !18   ; 3 uses
  %.not1052 = icmp eq ptr %i.alp, %i.alq
  br i1 %.not1052, label %.preheader981, label %.lr.ph1041

.lr.ph1041:                                       ; preds = %bb.ih
  %i.alr = ptrtoint ptr %i.alp to i64
  %i.als = ptrtoint ptr %i.alq to i64
  %i.alt = sub i64 %i.alr, %i.als
  %i.alu = ashr exact i64 %i.alt, 3
  %i.alv = load ptr, ptr %3, align 8, !tbaa !18
  br label %bb.ii

.preheader981:                                    ; preds = %bb.il, %bb.ih
  %i.alw = load ptr, ptr %i.sx, align 8, !tbaa !17 ; 2 uses
  %i.alx = load ptr, ptr %7, align 8, !tbaa !18   ; 3 uses
  %.not1053 = icmp eq ptr %i.alw, %i.alx
  br i1 %.not1053, label %.preheader, label %.lr.ph1044

.lr.ph1044:                                       ; preds = %.preheader981
  %i.aly = ptrtoint ptr %i.alw to i64
  %i.alz = ptrtoint ptr %i.alx to i64
  %i.ama = sub i64 %i.aly, %i.alz
  %i.amb = ashr exact i64 %i.ama, 3
  %i.amc = load ptr, ptr %4, align 8, !tbaa !18
  br label %bb.im

bb.ii:                                            ; preds = %.lr.ph1041, %bb.il
  %.01291039 = phi i64 [ 0, %.lr.ph1041 ], [ %i.amt, %bb.il ] ; 3 uses
  %.01301038 = phi i64 [ 1, %.lr.ph1041 ], [ %i.ams, %bb.il ] ; 3 uses
  %i.amd = getelementptr inbounds nuw [8 x i8], ptr %i.alq, i64 %.01291039
  %i.ame = load i64, ptr %i.amd, align 8, !tbaa !23 ; 3 uses
  %i.amf = icmp slt i64 %i.ame, 0
  br i1 %i.amf, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  %i.amg = sub nsw i64 0, %i.ame
  %i.amh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0, i64 %i.amg
  %i.ami = load i64, ptr %i.amh, align 8, !tbaa !23
  %i.amj = load ptr, ptr %10, align 8, !tbaa !18
  %i.amk = getelementptr [8 x i8], ptr %i.amj, i64 %i.ami
  %i.aml = getelementptr i8, ptr %i.amk, i64 8
  store i64 %.01301038, ptr %i.aml, align 8, !tbaa !23
  br label %bb.il

bb.ik:                                            ; preds = %bb.ii
  %i.amm = mul nsw i64 %i.ame, %.01301038
  %i.amn = load ptr, ptr %10, align 8, !tbaa !18  ; 2 uses
  %i.amo = load i64, ptr %i.amn, align 8, !tbaa !23
  %i.amp = add nsw i64 %i.amo, %i.amm
  store i64 %i.amp, ptr %i.amn, align 8, !tbaa !23
  br label %bb.il

bb.il:                                            ; preds = %bb.ik, %bb.ij
  %i.amq = getelementptr inbounds nuw [8 x i8], ptr %i.alv, i64 %.01291039
  %i.amr = load i64, ptr %i.amq, align 8, !tbaa !23
  %i.ams = mul nsw i64 %i.amr, %.01301038
  %i.amt = add nuw nsw i64 %.01291039, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.amt, %i.alu
  br i1 %exitcond.not, label %.preheader981, label %bb.ii, !llvm.loop !127

.preheader:                                       ; preds = %bb.ip, %.preheader981
  %i.amu = load ptr, ptr %i.vc, align 8, !tbaa !17 ; 2 uses
  %i.amv = load ptr, ptr %8, align 8, !tbaa !18   ; 3 uses
  %.not1054 = icmp eq ptr %i.amu, %i.amv
  br i1 %.not1054, label %._crit_edge1048, label %.lr.ph1047

.lr.ph1047:                                       ; preds = %.preheader
  %i.amw = ptrtoint ptr %i.amu to i64
  %i.amx = ptrtoint ptr %i.amv to i64
  %i.amy = sub i64 %i.amw, %i.amx
  %i.amz = ashr exact i64 %i.amy, 3
  %i.ana = load ptr, ptr %5, align 8, !tbaa !18
  br label %bb.iu

bb.im:                                            ; preds = %.lr.ph1044, %bb.ip
  %.01281043 = phi i64 [ 0, %.lr.ph1044 ], [ %i.anr, %bb.ip ] ; 3 uses
  %.11042 = phi i64 [ 1, %.lr.ph1044 ], [ %i.anq, %bb.ip ] ; 3 uses
  %i.anb = getelementptr inbounds nuw [8 x i8], ptr %i.alx, i64 %.01281043
  %i.anc = load i64, ptr %i.anb, align 8, !tbaa !23 ; 3 uses
  %i.and = icmp slt i64 %i.anc, 0
  br i1 %i.and, label %bb.in, label %bb.io

bb.in:                                            ; preds = %bb.im
  %i.ane = sub nsw i64 0, %i.anc
  %i.anf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0, i64 %i.ane
  %i.ang = load i64, ptr %i.anf, align 8, !tbaa !23
  %i.anh = load ptr, ptr %11, align 8, !tbaa !18
  %i.ani = getelementptr [8 x i8], ptr %i.anh, i64 %i.ang
  %i.anj = getelementptr i8, ptr %i.ani, i64 8
  store i64 %.11042, ptr %i.anj, align 8, !tbaa !23
  br label %bb.ip

bb.io:                                            ; preds = %bb.im
  %i.ank = mul nsw i64 %i.anc, %.11042
  %i.anl = load ptr, ptr %11, align 8, !tbaa !18  ; 2 uses
  %i.anm = load i64, ptr %i.anl, align 8, !tbaa !23
  %i.ann = add nsw i64 %i.anm, %i.ank
  store i64 %i.ann, ptr %i.anl, align 8, !tbaa !23
  br label %bb.ip

bb.ip:                                            ; preds = %bb.io, %bb.in
  %i.ano = getelementptr inbounds nuw [8 x i8], ptr %i.amc, i64 %.01281043
  %i.anp = load i64, ptr %i.ano, align 8, !tbaa !23
  %i.anq = mul nsw i64 %i.anp, %.11042
end_hunk_1
