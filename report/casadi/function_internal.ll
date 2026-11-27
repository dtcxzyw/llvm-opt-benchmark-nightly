Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/function_internal?download=true
inline.NumInlined: 11181
inline.NumDeleted: 2148
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNK6casadi16FunctionInternal15codegen_releaseERNS_13CodeGeneratorE:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  %i.bg = load ptr, ptr %2, align 8, !tbaa !42    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !43
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  ret void

bb.l:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load ptr, ptr %4, align 8, !tbaa !42    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.g
  br i1 %i.bn, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.l, %bb.c
  %.sink = phi ptr [ %i.s, %bb.c ], [ %i.bm, %bb.l ]
  %.pn.ph = phi { ptr, i32 } [ %i.r, %bb.c ], [ %i.bl, %bb.l ]
  %i.bo = load i64, ptr %i.g, align 8, !tbaa !43
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bp) #39
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.l, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.c ], [ %i.bl, %bb.l ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

bb.m:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit26
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = load ptr, ptr %6, align 8, !tbaa !42    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.aa
  br i1 %i.bs, label %.body24, label %.body24.sink.split

.body24.sink.split:                               ; preds = %bb.m, %bb.f
  %.sink79 = phi ptr [ %i.am, %bb.f ], [ %i.br, %bb.m ]
  %.pn11.ph = phi { ptr, i32 } [ %i.al, %bb.f ], [ %i.bq, %bb.m ]
  %i.bt = load i64, ptr %i.aa, align 8, !tbaa !43
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %.sink79, i64 noundef %i.bu) #39
  br label %.body24

.body24:                                          ; preds = %.body24.sink.split, %bb.m, %bb.f
  %.pn11 = phi { ptr, i32 } [ %i.al, %bb.f ], [ %i.bq, %bb.m ], [ %.pn11.ph, %.body24.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

bb.n:                                             ; preds = %bb.j, %bb.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %5, align 8, !tbaa !42    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.n
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !43
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %.body24
  %.pn13 = phi { ptr, i32 } [ %.pn11, %.body24 ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %i.bv, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  %i.cb = load ptr, ptr %3, align 8, !tbaa !42    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !43
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48, %.body
  %.pn13.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %.pn13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  %i.cg = load ptr, ptr %2, align 8, !tbaa !42    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !43
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  resume { ptr, i32 } %.pn13.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi16FunctionInternal18codegen_sparsitiesERNS_13CodeGeneratorE(ptr noundef nonnull align 8 dereferenceable(1312) %0, ptr noundef nonnull align 8 dereferenceable(3289) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @_ZN6casadi13CodeGenerator17add_io_sparsitiesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_8SparsityESaISA_EESE_(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  ret void
}

declare void @_ZN6casadi13CodeGenerator17add_io_sparsitiesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_8SparsityESaISA_EESE_(ptr noundef nonnull align 8 dereferenceable(3289), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi16FunctionInternal12codegen_metaERNS_13CodeGeneratorE(ptr noundef nonnull align 8 dereferenceable(1312) %0, ptr noundef nonnull align 8 dereferenceable(3289) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %56 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %59 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %61 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %62 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %63 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %64 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %65 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %66 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %67 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %68 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %69 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 13 uses
  %70 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %71 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %72 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %73 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = alloca i64, align 8                      ; 10 uses
  %74 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %75 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %76 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %77 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %78 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %79 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %80 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %81 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %82 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %83 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %84 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %85 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %86 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %87 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %88 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %89 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %90 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %91 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %92 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %93 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %94 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %95 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %96 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %97 = alloca %"class.std::vector", align 8      ; 10 uses
  %98 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %99 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %100 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.e = load ptr, ptr %0, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 624
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(1312) %0)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !44   ; 2 uses
  %i.j = icmp eq i64 %i.i, 0                      ; 6 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !42     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.a
  %i.n = icmp ult i64 %i.i, 16
  call void @llvm.assume(i1 %i.n)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.o = load i64, ptr %i.l, align 8, !tbaa !43
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.p) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 50 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1695)
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !42, !noalias !1695
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 22 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !44, !noalias !1695 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.u, ptr %5, align 8, !tbaa !38, !alias.scope !1696
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 0, ptr %i.v, align 8, !tbaa !44, !alias.scope !1696
  store i8 0, ptr %i.u, align 8, !tbaa !43, !alias.scope !1696
  %i.w = add i64 %i.t, 4
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.w)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = load i64, ptr %i.v, align 8, !tbaa !44, !alias.scope !1696
  %i.y = and i64 %i.x, -4
  %i.z = icmp eq i64 %i.y, 4611686018427387900
  br i1 %i.z, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.aa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.392, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !44, !alias.scope !1696
  %i.ac = sub i64 4611686018427387903, %i.ab
  %i.ad = icmp ult i64 %i.ac, %i.t
  br i1 %i.ad, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.790) #37
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.r, i64 noundef %i.t)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %5, align 8, !tbaa !42, !alias.scope !1696 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.u
  br i1 %i.ah, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.ai = load i64, ptr %i.u, align 8, !tbaa !43, !alias.scope !1696
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #39
  br label %common.resume

common.resume:                                    ; preds = %bb.po, %bb.jc, %bb.io, %bb.hf, %bb.gb, %bb.fo, %bb.ej, %bb.ea, %bb.dg, %bb.cy, %bb.cq, %bb.ce, %bb.bp, %bb.ba, %bb.ak, %bb.t, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit469, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit472, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit509, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit512, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit589, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit592, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit776, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit785, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit803, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit812, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit818, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit852, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit886, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit929, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1006, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1395, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1355, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1361, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1289, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1209, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1095, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1362, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i973, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i939, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i896, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i862, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i828, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i752, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i727, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i677, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i652, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i627, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i593, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i553, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i513, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i473, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i433, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.azq, %bb.jc ], [ %.pn348, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1095 ], [ %i.af, %bb.c ], [ %i.dl, %bb.t ], [ %i.gr, %bb.ak ], [ %i.jv, %bb.ba ], [ %i.na, %bb.bp ], [ %i.qf, %bb.ce ], [ %i.st, %bb.cq ], [ %i.uu, %bb.cy ], [ %i.wv, %bb.dg ], [ %i.aav, %bb.ea ], [ %i.acx, %bb.ej ], [ %i.aix, %bb.fo ], [ %i.amb, %bb.gb ], [ %i.aqc, %bb.hf ], [ %i.awh, %bb.io ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i433 ], [ %i.gr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i473 ], [ %i.jv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i513 ], [ %i.na, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i553 ], [ %i.qf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i593 ], [ %i.st, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i627 ], [ %i.uu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i652 ], [ %i.wv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i677 ], [ %i.aav, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i727 ], [ %i.acx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i752 ], [ %i.aix, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i828 ], [ %i.amb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i862 ], [ %i.aqc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i896 ], [ %i.awh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i939 ], [ %i.azq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i973 ], [ %i.cjf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1362 ], [ %i.ahf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit818 ], [ %.pn369, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1355 ], [ %.pn378.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1395 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429 ], [ %.pn345.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1006 ], [ %.pn342.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %.pn339.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %.pn336.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit929 ], [ %.pn333.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit886 ], [ %.pn330.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit852 ], [ %.pn327.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit812 ], [ %.pn320.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit803 ], [ %.pn317.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit785 ], [ %.pn314.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit776 ], [ %i.pk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit592 ], [ %.pn311.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit589 ], [ %.pn308.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626 ], [ %i.mg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552 ], [ %.pn305.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549 ], [ %i.jb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit512 ], [ %.pn302.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit509 ], [ %i.fw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit472 ], [ %.pn299.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit469 ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432 ], [ %.pn361.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1289 ], [ %.pn373, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1361 ], [ %.pn399.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1209 ], [ %.pn352, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1107 ], [ %i.cjf, %bb.po ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1697)
  %i.ak = load i64, ptr %i.v, align 8, !tbaa !44, !noalias !1697
  %i.al = and i64 %i.ak, -16
  %i.am = icmp eq i64 %i.al, 4611686018427387888
  br i1 %i.am, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.790) #37
          to label %.noexc unwind label %bb.m, !noalias !1697

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.an = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.430, i64 noundef 16)
          to label %.noexc408 unwind label %bb.m, !noalias !1697 ; 6 uses

.noexc408:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.ao, ptr %4, align 8, !tbaa !38, !alias.scope !1697
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !42 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 5 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i407

bb.e:                                             ; preds = %.noexc408
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !44 ; 3 uses
  %i.au = icmp ult i64 %i.at, 16
  call void @llvm.assume(i1 %i.au)
  %i.av = add nuw nsw i64 %i.at, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.av, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i407: ; preds = %.noexc408
  store ptr %i.ap, ptr %4, align 8, !tbaa !42, !alias.scope !1697
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !43
  store i64 %i.aw, ptr %i.ao, align 8, !tbaa !43, !alias.scope !1697
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !44
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i407, %bb.e
  %i.ax = phi i64 [ %i.at, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i407 ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ax, ptr %i.az, align 8, !tbaa !44, !alias.scope !1697
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !42
  store i64 0, ptr %i.ay, align 8, !tbaa !44
  store i8 0, ptr %i.aq, align 8, !tbaa !43
  invoke void @_ZN6casadi13CodeGenerator7declareENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 %4)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.ba = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.bb = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.ba, ptr noundef nonnull @.str.389)
          to label %bb.i unwind label %bb.o       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.bc = load ptr, ptr %3, align 8, !tbaa !42    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409: ; preds = %bb.i
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !43
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409
  %i.bh = load ptr, ptr %4, align 8, !tbaa !42    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.ao
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411
  %i.bj = load i64, ptr %i.ao, align 8, !tbaa !43
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412
  %i.bl = load ptr, ptr %5, align 8, !tbaa !42    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.u
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i415

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i415: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414
  %i.bn = load i64, ptr %i.u, align 8, !tbaa !43
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #39
end_hunk_0
begin_hunk_1_@_ZNK6casadi16FunctionInternal12codegen_metaERNS_13CodeGeneratorE:bb.a
  %i.bhn = getelementptr inbounds nuw i8, ptr %i.bhm, i64 %i.bhk
  store i8 0, ptr %i.bhn, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #38
  %i.bho = getelementptr inbounds nuw i8, ptr %72, i64 16 ; 6 uses
  store ptr %i.bho, ptr %72, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.bho, ptr noundef nonnull align 1 dereferenceable(3) @.str.490, i64 3, i1 false)
  %i.bhp = getelementptr inbounds nuw i8, ptr %72, i64 8
  store i64 3, ptr %i.bhp, align 8, !tbaa !44
  %i.bhq = getelementptr inbounds nuw i8, ptr %72, i64 19
  store i8 0, ptr %i.bhq, align 1, !tbaa !43
  %i.bhr = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.bhs = load i64, ptr %i.bhr, align 8, !tbaa !206
  %i.bht = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.bhu = load i64, ptr %i.bht, align 8, !tbaa !217
  %i.bhv = add i64 %i.bhu, %i.bhs
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #38
  %i.bhw = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 6 uses
  store ptr %i.bhw, ptr %73, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.bhw, ptr noundef nonnull align 1 dereferenceable(3) @.str.491, i64 3, i1 false)
  %i.bhx = getelementptr inbounds nuw i8, ptr %73, i64 8
  store i64 3, ptr %i.bhx, align 8, !tbaa !44
  %i.bhy = getelementptr inbounds nuw i8, ptr %73, i64 19
  store i8 0, ptr %i.bhy, align 1, !tbaa !43
  invoke void @_ZN6casadi13CodeGenerator5arrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_xS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %70, ptr noundef nonnull align 8 dereferenceable(32) %71, ptr noundef nonnull align 8 dereferenceable(32) %72, i64 noundef %i.bhv, ptr noundef nonnull align 8 dereferenceable(32) %73)
          to label %bb.ka unwind label %bb.ll

bb.ka:                                            ; preds = %bb.jz
  %i.bhz = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(32) %70)
          to label %bb.kb unwind label %bb.lm     ; 0 uses

bb.kb:                                            ; preds = %bb.ka
  %i.bia = load ptr, ptr %70, align 8, !tbaa !42  ; 2 uses
  %i.bib = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 2 uses
  %i.bic = icmp eq ptr %i.bia, %i.bib
  br i1 %i.bic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1074, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1072

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1072: ; preds = %bb.kb
  %i.bid = load i64, ptr %i.bib, align 8, !tbaa !43
  %i.bie = add i64 %i.bid, 1
  call void @_ZdlPvm(ptr noundef %i.bia, i64 noundef %i.bie) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1074

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1074: ; preds = %bb.kb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1072
  %i.bif = load ptr, ptr %73, align 8, !tbaa !42  ; 2 uses
  %i.big = icmp eq ptr %i.bif, %i.bhw
  br i1 %i.big, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1077, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1075

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1075: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1074
  %i.bih = load i64, ptr %i.bhw, align 8, !tbaa !43
  %i.bii = add i64 %i.bih, 1
  call void @_ZdlPvm(ptr noundef %i.bif, i64 noundef %i.bii) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1077

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1077: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1074, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1075
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #38
  %i.bij = load ptr, ptr %72, align 8, !tbaa !42  ; 2 uses
  %i.bik = icmp eq ptr %i.bij, %i.bho
  br i1 %i.bik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1080, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1078

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1078: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1077
  %i.bil = load i64, ptr %i.bho, align 8, !tbaa !43
  %i.bim = add i64 %i.bil, 1
  call void @_ZdlPvm(ptr noundef %i.bij, i64 noundef %i.bim) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1080

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1080: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1077, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1078
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #38
  %i.bin = load ptr, ptr %71, align 8, !tbaa !42  ; 2 uses
  %i.bio = icmp eq ptr %i.bin, %i.bhi
  br i1 %i.bio, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1083, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1081

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1081: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1080
  %i.bip = load i64, ptr %i.bhi, align 8, !tbaa !43
  %i.biq = add i64 %i.bip, 1
  call void @_ZdlPvm(ptr noundef %i.bin, i64 noundef %i.biq) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1083

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1083: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1080, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1081
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #38
  %i.bir = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull @.str.492)
          to label %bb.kc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.kc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1083
  %i.bis = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.bit = load i64, ptr %i.bis, align 8, !tbaa !207
  %i.biu = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.biv = load i64, ptr %i.biu, align 8, !tbaa !218
  %i.biw = add i64 %i.biv, %i.bit
  %i.bix = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsImEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.bir, i64 noundef %i.biw)
          to label %bb.kd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.kd:                                            ; preds = %bb.kc
  %i.biy = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.bix, ptr noundef nonnull @.str.493)
          to label %bb.ke unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ke:                                            ; preds = %bb.kd
  %i.biz = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull @.str.494)
          to label %bb.kf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.kf:                                            ; preds = %bb.ke
  %i.bja = load i64, ptr %i.xs, align 8, !tbaa !202
  %i.bjb = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsImEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.biz, i64 noundef %i.bja)
          to label %bb.kg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.kg:                                            ; preds = %bb.kf
  %i.bjc = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.bjb, ptr noundef nonnull @.str.495)
          to label %bb.kh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.kh:                                            ; preds = %bb.kg
  %i.bjd = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.bjc, ptr noundef nonnull @.str.496)
          to label %bb.ki unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ki:                                            ; preds = %bb.kh
  %i.bje = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3289) %i.bjd, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %bb.kj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.kj:                                            ; preds = %bb.ki
  %i.bjf = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.bje, ptr noundef nonnull @.str.497)
          to label %bb.kk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.kk:                                            ; preds = %bb.kj
  %i.bjg = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.bjf, ptr noundef nonnull @.str.498)
          to label %bb.kl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.kl:                                            ; preds = %bb.kk
  %i.bjh = load i64, ptr %i.xs, align 8, !tbaa !202
  %i.bji = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsImEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.bjg, i64 noundef %i.bjh)
          to label %bb.km unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.km:                                            ; preds = %bb.kl
  %i.bjj = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.bji, ptr noundef nonnull @.str.499)
          to label %bb.kn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.kn:                                            ; preds = %bb.km
  %i.bjk = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull @.str.500)
          to label %bb.ko unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ko:                                            ; preds = %bb.kn
  %i.bjl = load i64, ptr %i.ze, align 8, !tbaa !203
  %i.bjm = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsImEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.bjk, i64 noundef %i.bjl)
          to label %bb.kp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.kp:                                            ; preds = %bb.ko
  %i.bjn = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.bjm, ptr noundef nonnull @.str.495)
          to label %bb.kq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.kq:                                            ; preds = %bb.kp
  %i.bjo = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.bjn, ptr noundef nonnull @.str.496)
          to label %bb.kr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.kr:                                            ; preds = %bb.kq
  %i.bjp = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3289) %i.bjo, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %bb.ks unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ks:                                            ; preds = %bb.kr
  %i.bjq = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.bjp, ptr noundef nonnull @.str.501)
          to label %bb.kt unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.kt:                                            ; preds = %bb.ks
  %i.bjr = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.bjq, ptr noundef nonnull @.str.502)
          to label %bb.ku unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ku:                                            ; preds = %bb.kt
  %i.bjs = load i64, ptr %i.ze, align 8, !tbaa !203
  %i.bjt = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsImEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.bjr, i64 noundef %i.bjs)
          to label %bb.kv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.kv:                                            ; preds = %bb.ku
  %i.bju = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.bjt, ptr noundef nonnull @.str.503)
          to label %bb.kw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.kw:                                            ; preds = %bb.kv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #38
  store i64 0, ptr %i.d, align 8, !tbaa !128
  %i.bjv = load i64, ptr %i.xs, align 8, !tbaa !202
  %.not1547 = icmp eq i64 %i.bjv, 0
  br i1 %.not1547, label %._crit_edge1525, label %.lr.ph1524

.lr.ph1524:                                       ; preds = %bb.kw
  %i.bjw = getelementptr inbounds nuw i8, ptr %75, i64 16 ; 7 uses
  %i.bjx = getelementptr inbounds nuw i8, ptr %75, i64 8 ; 2 uses
  %i.bjy = getelementptr inbounds nuw i8, ptr %74, i64 16 ; 7 uses
  %i.bjz = getelementptr inbounds nuw i8, ptr %74, i64 8
  %i.bka = getelementptr inbounds nuw i8, ptr %76, i64 16 ; 4 uses
  %i.bkb = getelementptr inbounds nuw i8, ptr %78, i64 16 ; 6 uses
  %i.bkc = getelementptr inbounds nuw i8, ptr %78, i64 8
  %i.bkd = getelementptr inbounds nuw i8, ptr %78, i64 17
  %i.bke = getelementptr inbounds nuw i8, ptr %77, i64 16 ; 4 uses
  %i.bkf = getelementptr inbounds nuw i8, ptr %0, i64 280
  br label %bb.ln

._crit_edge1525:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1155, %bb.kw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #38
  %i.bkg = load i64, ptr %i.ze, align 8, !tbaa !203
  %.not1548 = icmp eq i64 %i.bkg, 0
  br i1 %.not1548, label %._crit_edge1529, label %bb.kx

bb.kx:                                            ; preds = %._crit_edge1525
  %101 = getelementptr inbounds nuw i8, ptr %80, i64 16 ; 6 uses
  %102 = getelementptr inbounds nuw i8, ptr %80, i64 8
  %i.bkh = getelementptr inbounds nuw i8, ptr %79, i64 16 ; 6 uses
  %i.bki = getelementptr inbounds nuw i8, ptr %79, i64 8
  %i.bkj = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.bkk = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull @.str.507)
          to label %bb.ky unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ky:                                            ; preds = %bb.kx
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #38
  invoke void @_ZNK6casadi13CodeGenerator3resB5cxx11Ex(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %79, ptr noundef nonnull align 8 dereferenceable(3289) %1, i64 noundef 0)
          to label %bb.kz unwind label %.loopexit.split-lp.loopexit.split-lp2224.loopexit.split-lp

bb.kz:                                            ; preds = %bb.ky
  %i.bkl = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(32) %79)
          to label %bb.la unwind label %.loopexit.split-lp1612.loopexit.split-lp.loopexit.split-lp

bb.la:                                            ; preds = %bb.kz
  %i.bkm = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.bkl, ptr noundef nonnull @.str.509)
          to label %bb.lb unwind label %.loopexit.split-lp1612.loopexit.split-lp.loopexit.split-lp

bb.lb:                                            ; preds = %bb.la
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #38
  invoke void @_ZN6casadi3strIxEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %80, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.lc unwind label %.loopexit.split-lp1617.loopexit.split-lp.loopexit.split-lp

bb.lc:                                            ; preds = %bb.lb
  %i.bkn = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3289) %i.bkm, ptr noundef nonnull align 8 dereferenceable(32) %80)
          to label %bb.ld unwind label %.loopexit.split-lp1622.loopexit.split-lp.loopexit.split-lp

bb.ld:                                            ; preds = %bb.lc
  %i.bko = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.bkn, ptr noundef nonnull @.str.453)
          to label %bb.le unwind label %.loopexit.split-lp1622.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.le:                                            ; preds = %bb.ld
  %i.bkp = load ptr, ptr %80, align 8, !tbaa !42  ; 2 uses
  %i.bkq = icmp eq ptr %i.bkp, %101
  br i1 %i.bkq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1172.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1171.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1171.peel: ; preds = %bb.le
  %i.bkr = load i64, ptr %101, align 8, !tbaa !43
  %i.bks = add i64 %i.bkr, 1
  call void @_ZdlPvm(ptr noundef %i.bkp, i64 noundef %i.bks) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1173.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1172.peel: ; preds = %bb.le
  %103 = load i64, ptr %102, align 8, !tbaa !44
  %104 = icmp ult i64 %103, 16
  call void @llvm.assume(i1 %104)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1173.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1173.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1172.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1171.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #38
  %i.bkt = load ptr, ptr %79, align 8, !tbaa !42  ; 2 uses
  %i.bku = icmp eq ptr %i.bkt, %i.bkh
  br i1 %i.bku, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1175.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1174.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1174.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1173.peel
  %i.bkv = load i64, ptr %i.bkh, align 8, !tbaa !43
  %i.bkw = add i64 %i.bkv, 1
  call void @_ZdlPvm(ptr noundef %i.bkt, i64 noundef %i.bkw) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1176.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1175.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1173.peel
  %105 = load i64, ptr %i.bki, align 8, !tbaa !44
  %106 = icmp ult i64 %105, 16
  call void @llvm.assume(i1 %106)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1176.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1176.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1175.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1174.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #38
  %i.bkx = load ptr, ptr %i.bkj, align 8, !tbaa !146
  %i.bky = load ptr, ptr %i.aln, align 8, !tbaa !145 ; 2 uses
  %.not.i.i.i.i1177.peel.not = icmp eq ptr %i.bkx, %i.bky
  br i1 %.not.i.i.i.i1177.peel.not, label %.loopexit1626, label %_ZNK6casadi16FunctionInternal12sparsity_outEx.exit.i.peel

_ZNK6casadi16FunctionInternal12sparsity_outEx.exit.i.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1176.peel
  %i.bkz = invoke noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bky)
          to label %_ZNK6casadi16FunctionInternal7nnz_outEx.exit.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK6casadi16FunctionInternal7nnz_outEx.exit.peel: ; preds = %_ZNK6casadi16FunctionInternal12sparsity_outEx.exit.i.peel
  %i.bla = load i64, ptr %i.c, align 8, !tbaa !128
  %i.blb = add nsw i64 %i.bla, %i.bkz
  store i64 %i.blb, ptr %i.c, align 8, !tbaa !128
  %i.blc = load i64, ptr %i.ze, align 8, !tbaa !203
  %i.bld = icmp ugt i64 %i.blc, 1
  br i1 %i.bld, label %.peel.next, label %._crit_edge1529

bb.lf:                                            ; preds = %._crit_edge1522
  %i.ble = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1086

bb.lg:                                            ; preds = %bb.jt
  %i.blf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.blg = load ptr, ptr %60, align 8, !tbaa !42  ; 2 uses
  %i.blh = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 2 uses
  %i.bli = icmp eq ptr %i.blg, %i.blh
  br i1 %i.bli, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1086, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1084

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1084: ; preds = %bb.lg
  %i.blj = load i64, ptr %i.blh, align 8, !tbaa !43
  %i.blk = add i64 %i.blj, 1
  call void @_ZdlPvm(ptr noundef %i.blg, i64 noundef %i.blk) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1086

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1086: ; preds = %bb.lg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1084, %bb.lf
  %.pn348 = phi { ptr, i32 } [ %i.ble, %bb.lf ], [ %i.blf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1084 ], [ %i.blf, %bb.lg ]
  %i.bll = load ptr, ptr %63, align 8, !tbaa !42  ; 2 uses
  %i.blm = icmp eq ptr %i.bll, %i.ber
  br i1 %i.blm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1089, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1087

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1087: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1086
  %i.bln = load i64, ptr %i.ber, align 8, !tbaa !43
  %i.blo = add i64 %i.bln, 1
  call void @_ZdlPvm(ptr noundef %i.bll, i64 noundef %i.blo) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1089

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1089: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1086, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1087
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #38
  %i.blp = load ptr, ptr %62, align 8, !tbaa !42  ; 2 uses
  %i.blq = icmp eq ptr %i.blp, %i.beo
  br i1 %i.blq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1092, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1090

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1090: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1089
  %i.blr = load i64, ptr %i.beo, align 8, !tbaa !43
  %i.bls = add i64 %i.blr, 1
  call void @_ZdlPvm(ptr noundef %i.blp, i64 noundef %i.bls) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1092

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1092: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1089, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1090
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #38
  %i.blt = load ptr, ptr %61, align 8, !tbaa !42  ; 2 uses
  %i.blu = icmp eq ptr %i.blt, %i.bel
  br i1 %i.blu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1095, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1093

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1093: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1092
  %i.blv = load i64, ptr %i.bel, align 8, !tbaa !43
  %i.blw = add i64 %i.blv, 1
  call void @_ZdlPvm(ptr noundef %i.blt, i64 noundef %i.blw) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1095

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1095: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1092, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1093
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #38
  br label %common.resume

bb.lh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1031
  %i.blx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1098

bb.li:                                            ; preds = %bb.jv
  %i.bly = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.blz = load ptr, ptr %64, align 8, !tbaa !42  ; 2 uses
  %i.bma = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 2 uses
  %i.bmb = icmp eq ptr %i.blz, %i.bma
  br i1 %i.bmb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1098, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1096

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1096: ; preds = %bb.li
  %i.bmc = load i64, ptr %i.bma, align 8, !tbaa !43
  %i.bmd = add i64 %i.bmc, 1
  call void @_ZdlPvm(ptr noundef %i.blz, i64 noundef %i.bmd) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1098

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1098: ; preds = %bb.li, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1096, %bb.lh
  %.pn352 = phi { ptr, i32 } [ %i.blx, %bb.lh ], [ %i.bly, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1096 ], [ %i.bly, %bb.li ]
  %i.bme = load ptr, ptr %67, align 8, !tbaa !42  ; 2 uses
  %i.bmf = icmp eq ptr %i.bme, %i.bfw
  br i1 %i.bmf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1099

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1099: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1098
  %i.bmg = load i64, ptr %i.bfw, align 8, !tbaa !43
  %i.bmh = add i64 %i.bmg, 1
  call void @_ZdlPvm(ptr noundef %i.bme, i64 noundef %i.bmh) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1098, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1099
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #38
  %i.bmi = load ptr, ptr %66, align 8, !tbaa !42  ; 2 uses
  %i.bmj = icmp eq ptr %i.bmi, %i.bfo
  br i1 %i.bmj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1101
  %i.bmk = load i64, ptr %i.bfo, align 8, !tbaa !43
  %i.bml = add i64 %i.bmk, 1
  call void @_ZdlPvm(ptr noundef %i.bmi, i64 noundef %i.bml) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1104: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1101, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1102
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #38
  %i.bmm = load ptr, ptr %65, align 8, !tbaa !42  ; 2 uses
  %i.bmn = icmp eq ptr %i.bmm, %i.bfl
  br i1 %i.bmn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1104
  %i.bmo = load i64, ptr %i.bfl, align 8, !tbaa !43
  %i.bmp = add i64 %i.bmo, 1
  call void @_ZdlPvm(ptr noundef %i.bmm, i64 noundef %i.bmp) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1105
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #38
  br label %common.resume

bb.lj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1052
  %i.bmq = landingpad { ptr, i32 }
          cleanup
  %i.bmr = load ptr, ptr %69, align 8, !tbaa !42  ; 2 uses
  %i.bms = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 2 uses
  %i.bmt = icmp eq ptr %i.bmr, %i.bms
  br i1 %i.bmt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1108: ; preds = %bb.lj
  %i.bmu = load i64, ptr %i.bms, align 8, !tbaa !43
  %i.bmv = add i64 %i.bmu, 1
  call void @_ZdlPvm(ptr noundef %i.bmr, i64 noundef %i.bmv) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1110: ; preds = %bb.lj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1209

bb.lk:                                            ; preds = %.noexc.i1061
  %i.bmw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1122

bb.ll:                                            ; preds = %bb.jz
  %i.bmx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1113

bb.lm:                                            ; preds = %bb.ka
  %i.bmy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bmz = load ptr, ptr %70, align 8, !tbaa !42  ; 2 uses
  %i.bna = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 2 uses
  %i.bnb = icmp eq ptr %i.bmz, %i.bna
  br i1 %i.bnb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1111: ; preds = %bb.lm
  %i.bnc = load i64, ptr %i.bna, align 8, !tbaa !43
  %i.bnd = add i64 %i.bnc, 1
  call void @_ZdlPvm(ptr noundef %i.bmz, i64 noundef %i.bnd) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1113: ; preds = %bb.lm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1111, %bb.ll
  %.pn356 = phi { ptr, i32 } [ %i.bmx, %bb.ll ], [ %i.bmy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1111 ], [ %i.bmy, %bb.lm ] ; 2 uses
  %i.bne = load ptr, ptr %73, align 8, !tbaa !42  ; 2 uses
  %i.bnf = icmp eq ptr %i.bne, %i.bhw
  br i1 %i.bnf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1113
  %i.bng = load i64, ptr %i.bhw, align 8, !tbaa !43
  %i.bnh = add i64 %i.bng, 1
  call void @_ZdlPvm(ptr noundef %i.bne, i64 noundef %i.bnh) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1116: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1114
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #38
  %i.bni = load ptr, ptr %72, align 8, !tbaa !42  ; 2 uses
  %i.bnj = icmp eq ptr %i.bni, %i.bho
  br i1 %i.bnj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1116
end_hunk_1
begin_hunk_2_@_ZNK6casadi16FunctionInternal12codegen_metaERNS_13CodeGeneratorE:bb.a
  %i.bpi = load i64, ptr %i.bke, align 8, !tbaa !43
  %i.bpj = add i64 %i.bpi, 1
  call void @_ZdlPvm(ptr noundef %i.bpg, i64 noundef %i.bpj) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1147: ; preds = %bb.lz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1145
  %i.bpk = load ptr, ptr %78, align 8, !tbaa !42  ; 2 uses
  %i.bpl = icmp eq ptr %i.bpk, %i.bkb
  br i1 %i.bpl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1148: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1147
  %i.bpm = load i64, ptr %i.bkb, align 8, !tbaa !43
  %i.bpn = add i64 %i.bpm, 1
  call void @_ZdlPvm(ptr noundef %i.bpk, i64 noundef %i.bpn) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1147, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1148
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #38
  %i.bpo = load i64, ptr %i.d, align 8, !tbaa !128 ; 3 uses
  %i.bpp = load ptr, ptr %i.bkf, align 8, !tbaa !146
  %i.bpq = load ptr, ptr %i.alm, align 8, !tbaa !145 ; 2 uses
  %i.bpr = ptrtoint ptr %i.bpp to i64
  %i.bps = ptrtoint ptr %i.bpq to i64
  %i.bpt = sub i64 %i.bpr, %i.bps
  %i.bpu = ashr exact i64 %i.bpt, 3               ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.bpo, %i.bpu
  br i1 %.not.i.i.i.i, label %_ZNK6casadi16FunctionInternal11sparsity_inEx.exit.i, label %bb.ma

bb.ma:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1150
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.784, i64 noundef %i.bpo, i64 noundef %i.bpu) #37
          to label %.noexc1151 unwind label %.loopexit.split-lp1434.loopexit.split-lp.loopexit.split-lp

.noexc1151:                                       ; preds = %bb.ma
  unreachable

_ZNK6casadi16FunctionInternal11sparsity_inEx.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1150
  %i.bpv = getelementptr inbounds nuw [8 x i8], ptr %i.bpq, i64 %i.bpo
  %i.bpw = invoke noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bpv)
          to label %_ZNK6casadi16FunctionInternal6nnz_inEx.exit unwind label %.loopexit.split-lp1434.loopexit.split-lp.loopexit.split-lp

_ZNK6casadi16FunctionInternal6nnz_inEx.exit:      ; preds = %_ZNK6casadi16FunctionInternal11sparsity_inEx.exit.i
  %i.bpx = load i64, ptr %i.c, align 8, !tbaa !128
  %i.bpy = add nsw i64 %i.bpx, %i.bpw
  store i64 %i.bpy, ptr %i.c, align 8, !tbaa !128
  %i.bpz = load ptr, ptr %74, align 8, !tbaa !42  ; 2 uses
  %i.bqa = icmp eq ptr %i.bpz, %i.bjy
  br i1 %i.bqa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1153: ; preds = %_ZNK6casadi16FunctionInternal6nnz_inEx.exit
  %i.bqb = load i64, ptr %i.bjy, align 8, !tbaa !43
  %i.bqc = add i64 %i.bqb, 1
  call void @_ZdlPvm(ptr noundef %i.bpz, i64 noundef %i.bqc) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1155: ; preds = %_ZNK6casadi16FunctionInternal6nnz_inEx.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1153
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #38
  %i.bqd = load i64, ptr %i.d, align 8, !tbaa !128
  %i.bqe = add nsw i64 %i.bqd, 1                  ; 2 uses
  store i64 %i.bqe, ptr %i.d, align 8, !tbaa !128
  %i.bqf = load i64, ptr %i.xs, align 8, !tbaa !202
  %i.bqg = icmp ult i64 %i.bqe, %i.bqf
  br i1 %i.bqg, label %bb.ln, label %._crit_edge1525, !llvm.loop !1684

bb.mb:                                            ; preds = %bb.ln
  %i.bqh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1161

bb.mc:                                            ; preds = %bb.lo
  %i.bqi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1158

.loopexit.split-lp1430.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i1128, %bb.lr
  %lpad.loopexit.split-lp2344 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bqj = load ptr, ptr %75, align 8, !tbaa !42  ; 2 uses
  %i.bqk = icmp eq ptr %i.bqj, %i.bjw
  br i1 %i.bqk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1156: ; preds = %.loopexit.split-lp1430.loopexit.split-lp.loopexit.split-lp
  %i.bql = load i64, ptr %i.bjw, align 8, !tbaa !43
  %i.bqm = add i64 %i.bql, 1
  call void @_ZdlPvm(ptr noundef %i.bqj, i64 noundef %i.bqm) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1158: ; preds = %.loopexit.split-lp1430.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1156, %bb.mc
  %.pn393 = phi { ptr, i32 } [ %i.bqi, %bb.mc ], [ %lpad.loopexit.split-lp2344, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1156 ], [ %lpad.loopexit.split-lp2344, %.loopexit.split-lp1430.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.bqn = load ptr, ptr %76, align 8, !tbaa !42  ; 2 uses
  %i.bqo = icmp eq ptr %i.bqn, %i.bka
  br i1 %i.bqo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1159: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1158
  %i.bqp = load i64, ptr %i.bka, align 8, !tbaa !43
  %i.bqq = add i64 %i.bqp, 1
  call void @_ZdlPvm(ptr noundef %i.bqn, i64 noundef %i.bqq) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1161: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1158, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1159, %bb.mb
  %.pn393.pn = phi { ptr, i32 } [ %i.bqh, %bb.mb ], [ %.pn393, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1159 ], [ %.pn393, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1158 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1170

.loopexit.split-lp1434.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK6casadi16FunctionInternal11sparsity_inEx.exit.i, %bb.lv, %bb.lu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1140, %bb.ma
  %lpad.loopexit.split-lp2347 = landingpad { ptr, i32 }
          cleanup
  br label %bb.mf

bb.md:                                            ; preds = %bb.lw
  %i.bqr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1164

bb.me:                                            ; preds = %bb.ly, %bb.lx
  %i.bqs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bqt = load ptr, ptr %77, align 8, !tbaa !42  ; 2 uses
  %i.bqu = icmp eq ptr %i.bqt, %i.bke
  br i1 %i.bqu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1162: ; preds = %bb.me
  %i.bqv = load i64, ptr %i.bke, align 8, !tbaa !43
  %i.bqw = add i64 %i.bqv, 1
  call void @_ZdlPvm(ptr noundef %i.bqt, i64 noundef %i.bqw) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1164: ; preds = %bb.me, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1162, %bb.md
  %.pn396 = phi { ptr, i32 } [ %i.bqr, %bb.md ], [ %i.bqs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1162 ], [ %i.bqs, %bb.me ]
  %i.bqx = load ptr, ptr %78, align 8, !tbaa !42  ; 2 uses
  %i.bqy = icmp eq ptr %i.bqx, %i.bkb
  br i1 %i.bqy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1165: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1164
  %i.bqz = load i64, ptr %i.bkb, align 8, !tbaa !43
  %i.bra = add i64 %i.bqz, 1
  call void @_ZdlPvm(ptr noundef %i.bqx, i64 noundef %i.bra) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1167

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1167: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1164, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1165
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #38
  br label %bb.mf

bb.mf:                                            ; preds = %.loopexit.split-lp1434.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1167
  %.pn399 = phi { ptr, i32 } [ %.pn396, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1167 ], [ %lpad.loopexit.split-lp2347, %.loopexit.split-lp1434.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.brb = load ptr, ptr %74, align 8, !tbaa !42  ; 2 uses
  %i.brc = icmp eq ptr %i.brb, %i.bjy
  br i1 %i.brc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1168: ; preds = %bb.mf
  %i.brd = load i64, ptr %i.bjy, align 8, !tbaa !43
  %i.bre = add i64 %i.brd, 1
  call void @_ZdlPvm(ptr noundef %i.brb, i64 noundef %i.bre) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1170: ; preds = %bb.mf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1168, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1161
  %.pn399.pn = phi { ptr, i32 } [ %.pn393.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1161 ], [ %.pn399, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1168 ], [ %.pn399, %bb.mf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #38
  br label %.loopexit.split-lp.loopexit.split-lp

._crit_edge1529:                                  ; preds = %_ZNK6casadi16FunctionInternal7nnz_outEx.exit, %_ZNK6casadi16FunctionInternal7nnz_outEx.exit.peel, %._crit_edge1525
  %i.brf = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %bb.mo unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.peel.next:                                       ; preds = %_ZNK6casadi16FunctionInternal7nnz_outEx.exit.peel, %_ZNK6casadi16FunctionInternal7nnz_outEx.exit
  %.02061526 = phi i64 [ %i.bsd, %_ZNK6casadi16FunctionInternal7nnz_outEx.exit ], [ 1, %_ZNK6casadi16FunctionInternal7nnz_outEx.exit.peel ] ; 5 uses
  %i.brg = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull @.str.508)
          to label %bb.mg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.mg:                                            ; preds = %.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #38
  invoke void @_ZNK6casadi13CodeGenerator3resB5cxx11Ex(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %79, ptr noundef nonnull align 8 dereferenceable(3289) %1, i64 noundef %.02061526)
          to label %bb.mh unwind label %.loopexit.split-lp.loopexit.split-lp2224.loopexit.split-lp

bb.mh:                                            ; preds = %bb.mg
  %i.brh = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(32) %79)
          to label %bb.mi unwind label %.loopexit.split-lp1612.loopexit.split-lp.loopexit.split-lp

bb.mi:                                            ; preds = %bb.mh
  %i.bri = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.brh, ptr noundef nonnull @.str.509)
          to label %bb.mj unwind label %.loopexit.split-lp1612.loopexit.split-lp.loopexit.split-lp

bb.mj:                                            ; preds = %bb.mi
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #38
  invoke void @_ZN6casadi3strIxEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %80, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.mk unwind label %.loopexit.split-lp1617.loopexit.split-lp.loopexit.split-lp

bb.mk:                                            ; preds = %bb.mj
  %i.brj = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3289) %i.bri, ptr noundef nonnull align 8 dereferenceable(32) %80)
          to label %bb.ml unwind label %.loopexit.split-lp1622.loopexit.split-lp.loopexit.split-lp

bb.ml:                                            ; preds = %bb.mk
  %i.brk = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.brj, ptr noundef nonnull @.str.453)
          to label %bb.mm unwind label %.loopexit.split-lp1622.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.mm:                                            ; preds = %bb.ml
  %i.brl = load ptr, ptr %80, align 8, !tbaa !42  ; 2 uses
  %i.brm = icmp eq ptr %i.brl, %101
  br i1 %i.brm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1171: ; preds = %bb.mm
  %i.brn = load i64, ptr %101, align 8, !tbaa !43
  %i.bro = add i64 %i.brn, 1
  call void @_ZdlPvm(ptr noundef %i.brl, i64 noundef %i.bro) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1173: ; preds = %bb.mm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1171
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #38
  %i.brp = load ptr, ptr %79, align 8, !tbaa !42  ; 2 uses
  %i.brq = icmp eq ptr %i.brp, %i.bkh
  br i1 %i.brq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1174: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1173
  %i.brr = load i64, ptr %i.bkh, align 8, !tbaa !43
  %i.brs = add i64 %i.brr, 1
  call void @_ZdlPvm(ptr noundef %i.brp, i64 noundef %i.brs) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1176: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1173, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1174
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #38
  %i.brt = load ptr, ptr %i.bkj, align 8, !tbaa !146
  %i.bru = load ptr, ptr %i.aln, align 8, !tbaa !145 ; 2 uses
  %i.brv = ptrtoint ptr %i.brt to i64
  %i.brw = ptrtoint ptr %i.bru to i64
  %i.brx = sub i64 %i.brv, %i.brw
  %i.bry = ashr exact i64 %i.brx, 3               ; 2 uses
  %.not.i.i.i.i1177 = icmp ult i64 %.02061526, %i.bry
  br i1 %.not.i.i.i.i1177, label %_ZNK6casadi16FunctionInternal12sparsity_outEx.exit.i, label %.loopexit1626

.loopexit1626:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1176, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1176.peel
  %.lcssa1589 = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1176.peel ], [ %i.bry, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1176 ]
  %.02061526.lcssa1587 = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1176.peel ], [ %.02061526, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1176 ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.784, i64 noundef %.02061526.lcssa1587, i64 noundef %.lcssa1589) #37
          to label %.noexc1178 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1178:                                       ; preds = %.loopexit1626
  unreachable

_ZNK6casadi16FunctionInternal12sparsity_outEx.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1176
  %i.brz = getelementptr inbounds nuw [8 x i8], ptr %i.bru, i64 %.02061526
  %i.bsa = invoke noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.brz)
          to label %_ZNK6casadi16FunctionInternal7nnz_outEx.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK6casadi16FunctionInternal7nnz_outEx.exit:     ; preds = %_ZNK6casadi16FunctionInternal12sparsity_outEx.exit.i
  %i.bsb = load i64, ptr %i.c, align 8, !tbaa !128
  %i.bsc = add nsw i64 %i.bsb, %i.bsa
  store i64 %i.bsc, ptr %i.c, align 8, !tbaa !128
  %i.bsd = add nuw nsw i64 %.02061526, 1          ; 2 uses
  %i.bse = load i64, ptr %i.ze, align 8, !tbaa !203
  %i.bsf = icmp ult i64 %i.bsd, %i.bse
  br i1 %i.bsf, label %.peel.next, label %._crit_edge1529, !llvm.loop !1685

.loopexit.split-lp.loopexit.split-lp2224.loopexit.split-lp: ; preds = %bb.mg, %bb.ky
  %lpad.loopexit.split-lp2324 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1185

.loopexit.split-lp1612.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.mi, %bb.mh, %bb.kz, %bb.la
  %lpad.loopexit.split-lp2327 = landingpad { ptr, i32 }
          cleanup
  br label %bb.mn

.loopexit.split-lp1617.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.mj, %bb.lb
  %lpad.loopexit.split-lp2330 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1182

.loopexit.split-lp1622.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ml, %bb.mk, %bb.lc, %bb.ld
  %lpad.loopexit.split-lp2333 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bsg = load ptr, ptr %80, align 8, !tbaa !42  ; 2 uses
  %i.bsh = icmp eq ptr %i.bsg, %101
  br i1 %i.bsh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1180: ; preds = %.loopexit.split-lp1622.loopexit.split-lp.loopexit.split-lp
  %i.bsi = load i64, ptr %101, align 8, !tbaa !43
  %i.bsj = add i64 %i.bsi, 1
  call void @_ZdlPvm(ptr noundef %i.bsg, i64 noundef %i.bsj) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1182: ; preds = %.loopexit.split-lp1622.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp1617.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1180
  %.pn387 = phi { ptr, i32 } [ %lpad.loopexit.split-lp2333, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1180 ], [ %lpad.loopexit.split-lp2330, %.loopexit.split-lp1617.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp2333, %.loopexit.split-lp1622.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #38
  br label %bb.mn

bb.mn:                                            ; preds = %.loopexit.split-lp1612.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1182
  %.pn387.pn = phi { ptr, i32 } [ %.pn387, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1182 ], [ %lpad.loopexit.split-lp2327, %.loopexit.split-lp1612.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.bsk = load ptr, ptr %79, align 8, !tbaa !42  ; 2 uses
  %i.bsl = icmp eq ptr %i.bsk, %i.bkh
  br i1 %i.bsl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1183: ; preds = %bb.mn
  %i.bsm = load i64, ptr %i.bkh, align 8, !tbaa !43
  %i.bsn = add i64 %i.bsm, 1
  call void @_ZdlPvm(ptr noundef %i.bsk, i64 noundef %i.bsn) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1185

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1185: ; preds = %bb.mn, %.loopexit.split-lp.loopexit.split-lp2224.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1183
  %.pn387.pn.pn = phi { ptr, i32 } [ %.pn387.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1183 ], [ %lpad.loopexit.split-lp2324, %.loopexit.split-lp.loopexit.split-lp2224.loopexit.split-lp ], [ %.pn387.pn, %bb.mn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #38
  br label %.loopexit.split-lp.loopexit.split-lp

bb.mo:                                            ; preds = %._crit_edge1529
  %i.bso = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.brf, ptr noundef nonnull @.str.510)
          to label %bb.mp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.mp:                                            ; preds = %bb.mo
  %i.bsp = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull @.str.511)
          to label %bb.mq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.mq:                                            ; preds = %bb.mp
  %i.bsq = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3289) %i.bsp, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %bb.mr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.mr:                                            ; preds = %bb.mq
  %i.bsr = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.bsq, ptr noundef nonnull @.str.438)
          to label %bb.ms unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ms:                                            ; preds = %bb.mr
  %i.bss = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull @.str.512)
          to label %bb.mt unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.mt:                                            ; preds = %bb.ms
  %i.bst = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3289) %i.bss, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %bb.mu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.mu:                                            ; preds = %bb.mt
  %i.bsu = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.bst, ptr noundef nonnull @.str.513)
          to label %bb.mv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.mv:                                            ; preds = %bb.mu
  %i.bsv = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3289) %i.bsu, ptr noundef nonnull align 8 dereferenceable(32) %68)
          to label %bb.mw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.mw:                                            ; preds = %bb.mv
  %i.bsw = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.bsv, ptr noundef nonnull @.str.514)
          to label %bb.mx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.mx:                                            ; preds = %bb.mw
  %i.bsx = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.bsw, ptr noundef nonnull @.str.515)
          to label %bb.my unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.my:                                            ; preds = %bb.mx
  %i.bsy = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3289) %i.bsx, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %bb.mz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.mz:                                            ; preds = %bb.my
  %i.bsz = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.bsy, ptr noundef nonnull @.str.516)
          to label %bb.na unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.na:                                            ; preds = %bb.mz
  %i.bta = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %bb.nb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.nb:                                            ; preds = %bb.na
  %i.btb = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.bta, ptr noundef nonnull @.str.440)
          to label %bb.nc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.nc:                                            ; preds = %bb.nb
  %i.btc = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %bb.nd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.nd:                                            ; preds = %bb.nc
  %i.btd = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.btc, ptr noundef nonnull @.str.517)
          to label %.preheader1424 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.preheader1424:                                   ; preds = %bb.nd
  %i.bte = load i64, ptr %i.ze, align 8, !tbaa !203
  %.not1549 = icmp eq i64 %i.bte, 0
  br i1 %.not1549, label %._crit_edge1532, label %.lr.ph1531

.lr.ph1531:                                       ; preds = %.preheader1424
  %i.btf = getelementptr inbounds nuw i8, ptr %82, i64 16 ; 4 uses
  %i.btg = getelementptr inbounds nuw i8, ptr %83, i64 16 ; 4 uses
  %i.bth = getelementptr inbounds nuw i8, ptr %81, i64 16 ; 4 uses
  br label %bb.ne

._crit_edge1532:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1194, %.preheader1424
  %i.bti = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull @.str.427)
          to label %bb.nv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ne:                                            ; preds = %.lr.ph1531, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1194
  %.02051530 = phi i64 [ 0, %.lr.ph1531 ], [ %i.bue, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1194 ] ; 5 uses
  %i.btj = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull @.str.416)
          to label %bb.nf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.nf:                                            ; preds = %bb.ne
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #38
  invoke void @_ZNK6casadi13CodeGenerator3resB5cxx11Ex(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %81, ptr noundef nonnull align 8 dereferenceable(3289) %1, i64 noundef %.02051530)
          to label %bb.ng unwind label %bb.np

bb.ng:                                            ; preds = %bb.nf
  %i.btk = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3289) %i.btj, ptr noundef nonnull align 8 dereferenceable(32) %81)
          to label %bb.nh unwind label %bb.nq

bb.nh:                                            ; preds = %bb.ng
  %i.btl = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.btk, ptr noundef nonnull @.str.518)
          to label %bb.ni unwind label %bb.nq

bb.ni:                                            ; preds = %bb.nh
  %i.btm = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIxEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.btl, i64 noundef %.02051530)
          to label %bb.nj unwind label %bb.nq

bb.nj:                                            ; preds = %bb.ni
  %i.btn = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.btm, ptr noundef nonnull @.str.506)
          to label %bb.nk unwind label %bb.nq

bb.nk:                                            ; preds = %bb.nj
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #38
  %i.bto = load ptr, ptr %i.aln, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #38
  invoke void @_ZNK6casadi13CodeGenerator3resB5cxx11Ex(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %83, ptr noundef nonnull align 8 dereferenceable(3289) %1, i64 noundef %.02051530)
          to label %bb.nl unwind label %bb.nr

bb.nl:                                            ; preds = %bb.nk
  %i.btp = getelementptr inbounds nuw [8 x i8], ptr %i.bto, i64 %.02051530
  invoke void @_ZN6casadi13CodeGenerator6to_mexERKNS_8SparsityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %82, ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.btp, ptr noundef nonnull align 8 dereferenceable(32) %83)
          to label %bb.nm unwind label %bb.ns

bb.nm:                                            ; preds = %bb.nl
  %i.btq = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3289) %i.btn, ptr noundef nonnull align 8 dereferenceable(32) %82)
          to label %bb.nn unwind label %bb.nt

bb.nn:                                            ; preds = %bb.nm
  %i.btr = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.btq, ptr noundef nonnull @.str.472)
          to label %bb.no unwind label %bb.nt     ; 0 uses

bb.no:                                            ; preds = %bb.nn
  %i.bts = load ptr, ptr %82, align 8, !tbaa !42  ; 2 uses
  %i.btt = icmp eq ptr %i.bts, %i.btf
  br i1 %i.btt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1188, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1186: ; preds = %bb.no
  %i.btu = load i64, ptr %i.btf, align 8, !tbaa !43
  %i.btv = add i64 %i.btu, 1
  call void @_ZdlPvm(ptr noundef %i.bts, i64 noundef %i.btv) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1188

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1188: ; preds = %bb.no, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1186
  %i.btw = load ptr, ptr %83, align 8, !tbaa !42  ; 2 uses
  %i.btx = icmp eq ptr %i.btw, %i.btg
  br i1 %i.btx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1189

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1189: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1188
  %i.bty = load i64, ptr %i.btg, align 8, !tbaa !43
  %i.btz = add i64 %i.bty, 1
  call void @_ZdlPvm(ptr noundef %i.btw, i64 noundef %i.btz) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1191

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1191: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1188, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1189
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #38
  %i.bua = load ptr, ptr %81, align 8, !tbaa !42  ; 2 uses
  %i.bub = icmp eq ptr %i.bua, %i.bth
  br i1 %i.bub, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1192: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1191
  %i.buc = load i64, ptr %i.bth, align 8, !tbaa !43
  %i.bud = add i64 %i.buc, 1
  call void @_ZdlPvm(ptr noundef %i.bua, i64 noundef %i.bud) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1194

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1194: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1191, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1192
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #38
  %i.bue = add nuw nsw i64 %.02051530, 1          ; 2 uses
  %i.buf = load i64, ptr %i.ze, align 8, !tbaa !203
  %i.bug = icmp ult i64 %i.bue, %i.buf
  br i1 %i.bug, label %bb.ne, label %._crit_edge1532, !llvm.loop !1686

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ne, %_ZNK6casadi16FunctionInternal12sparsity_outEx.exit.i, %.peel.next, %_ZNK6casadi16FunctionInternal12sparsity_outEx.exit.i.peel, %bb.kx, %.loopexit1626, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1083, %bb.kc, %bb.kd, %bb.ke, %bb.kf, %bb.kg, %bb.kh, %bb.ki, %bb.kj, %bb.kk, %bb.kl, %bb.km, %bb.kn, %bb.ko, %bb.kp, %bb.kq, %bb.kr, %bb.ks, %bb.kt, %bb.ku, %bb.kv, %._crit_edge1529, %bb.mo, %bb.mp, %bb.mq, %bb.mr, %bb.ms, %bb.mt, %bb.mu, %bb.mv, %bb.mw, %bb.mx, %bb.my, %bb.mz, %bb.na, %bb.nb, %bb.nc, %bb.nd, %._crit_edge1532, %bb.nv
  %lpad.loopexit.split-lp2321 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

bb.np:                                            ; preds = %bb.nf
  %i.buh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1203

bb.nq:                                            ; preds = %bb.nj, %bb.ni, %bb.nh, %bb.ng
  %i.bui = landingpad { ptr, i32 }
          cleanup
  br label %bb.nu

bb.nr:                                            ; preds = %bb.nk
  %i.buj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1200

bb.ns:                                            ; preds = %bb.nl
  %i.buk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1197
end_hunk_2
