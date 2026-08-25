Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/WasmReader?download=true
inline.NumInlined: 149
inline.NumDeleted: 119
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvm::Expected" = type <{ %union.anon, i8, [7 x i8] }>
%union.anon = type { %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.llvm::object::content_iterator" = type { %"class.llvm::object::SectionRef" }
%"class.llvm::object::SectionRef" = type { %"union.llvm::object::DataRefImpl", ptr }
%"union.llvm::object::DataRefImpl" = type { i64 }
%"class.llvm::ArrayRef" = type { ptr, i64 }

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm7objcopy4wasm6Reader6createEv(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::object::content_iterator", align 8 ; 7 uses
  %.sroa.6 = alloca [21 x i8], align 1            ; 5 uses
  %.sroa.7 = alloca %"class.llvm::ArrayRef", align 8 ; 5 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #9, !noalias !8 ; 8 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !11, !nonnull !15, !align !16
  %i.c = tail call noundef nonnull align 8 dereferenceable(20) ptr @_ZNK4llvm6object14WasmObjectFile9getHeaderEv(ptr noundef nonnull align 8 dereferenceable(708) %i.b) #10
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %i.d, i8 0, i64 60, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.a, ptr noundef nonnull align 8 dereferenceable(20) %i.c, i64 20, i1 false), !tbaa.struct !17
  %i.e = load ptr, ptr %1, align 8, !tbaa !11, !nonnull !15, !align !16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 448
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(708) %i.e) #10
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.k = zext i1 %i.i to i8
  store i8 %i.k, ptr %i.j, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !11, !nonnull !15, !align !16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !40
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = sdiv exact i64 %i.t, 80
  %i.v = and i64 %i.u, 4294967295                 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %_ZNSt6vectorIN4llvm7objcopy4wasm7SectionESaIS3_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN4llvm7objcopy4wasm7SectionESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseIN4llvm7objcopy4wasm7SectionESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.y = mul nuw nsw i64 %i.v, 40
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #9 ; 4 uses
  %.pre.pre = load ptr, ptr %1, align 8, !tbaa !11
  store ptr %i.z, ptr %i.l, align 8, !tbaa !44
  store ptr %i.z, ptr %i.x, align 8, !tbaa !45
  %i.aa = getelementptr inbounds nuw [40 x i8], ptr %i.z, i64 %i.v
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !46
  br label %_ZNSt6vectorIN4llvm7objcopy4wasm7SectionESaIS3_EE7reserveEm.exit

_ZNSt6vectorIN4llvm7objcopy4wasm7SectionESaIS3_EE7reserveEm.exit: ; preds = %bb.a, %_ZNSt12_Vector_baseIN4llvm7objcopy4wasm7SectionESaIS3_EE13_M_deallocateEPS3_m.exit.i
  %i.ab = phi ptr [ null, %bb.a ], [ %i.z, %_ZNSt12_Vector_baseIN4llvm7objcopy4wasm7SectionESaIS3_EE13_M_deallocateEPS3_m.exit.i ]
  %3 = phi ptr [ %i.m, %bb.a ], [ %.pre.pre, %_ZNSt12_Vector_baseIN4llvm7objcopy4wasm7SectionESaIS3_EE13_M_deallocateEPS3_m.exit.i ] ; 4 uses
  %i.ac = load ptr, ptr %3, align 8, !tbaa !23, !noalias !47
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 352
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !47
  %i.af = tail call { i64, ptr } %i.ae(ptr noundef nonnull align 8 dereferenceable(48) %3) #10, !noalias !47, !inline_history !50 ; 2 uses
  %i.ag = extractvalue { i64, ptr } %i.af, 0      ; 2 uses
  %i.ah = extractvalue { i64, ptr } %i.af, 1      ; 2 uses
  %i.ai = load ptr, ptr %3, align 8, !tbaa !23, !noalias !47
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 360
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !47
  %i.al = tail call { i64, ptr } %i.ak(ptr noundef nonnull align 8 dereferenceable(48) %3) #10, !noalias !47, !inline_history !50 ; 2 uses
  %i.am = extractvalue { i64, ptr } %i.al, 0      ; 2 uses
  %i.an = extractvalue { i64, ptr } %i.al, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store i64 %i.ag, ptr %2, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store ptr %i.ah, ptr %i.ao, align 8
  %i.ap = icmp ne ptr %i.ah, %i.an
  %.not.i.i.i.i1737 = icmp ne i64 %i.ag, %i.am
  %.not2.i38 = select i1 %i.ap, i1 true, i1 %.not.i.i.i.i1737
  br i1 %.not2.i38, label %.lr.ph, label %_ZNSt10unique_ptrIN4llvm7objcopy4wasm6ObjectESt14default_deleteIS3_EED2Ev.exit

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4llvm7objcopy4wasm7SectionESaIS3_EE7reserveEm.exit
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 5
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  br label %bb.b

_ZNSt10unique_ptrIN4llvm7objcopy4wasm6ObjectESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.h, %_ZNSt6vectorIN4llvm7objcopy4wasm7SectionESaIS3_EE7reserveEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 8
  %i.at = and i8 %i.as, -2
  store i8 %i.at, ptr %i.ar, align 8
  %i.au = ptrtoint ptr %i.a to i64
  store i64 %i.au, ptr %0, align 8, !tbaa !51
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %i.av = phi ptr [ %i.ab, %.lr.ph ], [ %i.by, %bb.h ] ; 8 uses
  %i.aw = load ptr, ptr %1, align 8, !tbaa !11, !nonnull !15, !align !16
  %i.ax = call noundef nonnull align 8 dereferenceable(74) ptr @_ZNK4llvm6object14WasmObjectFile14getWasmSectionERKNS0_10SectionRefE(ptr noundef nonnull align 8 dereferenceable(708) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %2) #10 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !53
  %i.az = trunc i32 %i.ay to i8                   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.bb = load i16, ptr %i.ba, align 8            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.6.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !tbaa.struct !65
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 16, i1 false), !tbaa.struct !65
  %i.be = load ptr, ptr %i.w, align 8, !tbaa !46
  %.not.i.i = icmp eq ptr %i.av, %i.be
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 %i.az, ptr %i.av, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  store i16 %i.bb, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(21) %.sroa.6, i64 21, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %i.bf = load ptr, ptr %i.aq, align 8, !tbaa !45
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40 ; 2 uses
  store ptr %i.bg, ptr %i.aq, align 8, !tbaa !45
  br label %_ZNSt6vectorIN4llvm7objcopy4wasm7SectionESaIS3_EE9push_backEOS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.bh = load ptr, ptr %i.l, align 8, !tbaa !44  ; 5 uses
  %i.bi = ptrtoint ptr %i.av to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 4 uses
  %i.bl = icmp eq i64 %i.bk, 9223372036854775800
  br i1 %i.bl, label %bb.e, label %_ZNKSt6vectorIN4llvm7objcopy4wasm7SectionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #11
  unreachable

_ZNKSt6vectorIN4llvm7objcopy4wasm7SectionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.bm = sdiv exact i64 %i.bk, 40                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bm, i64 1)
  %i.bn = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bm ; 2 uses
  %i.bo = icmp ult i64 %i.bn, %i.bm
  %i.bp = call i64 @llvm.umin.i64(i64 %i.bn, i64 230584300921369395)
  %i.bq = select i1 %i.bo, i64 230584300921369395, i64 %i.bp ; 3 uses
  %.not.i.i.i.i18 = icmp ne i64 %i.bq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i18)
  %i.br = mul nuw nsw i64 %i.bq, 40
  %i.bs = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #9 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bk ; 4 uses
  store i8 %i.az, ptr %i.bt, align 8
  %.sroa.5.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  store i16 %i.bb, ptr %.sroa.5.0..sroa_idx22, align 1
  %.sroa.6.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.bt, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %.sroa.6.0..sroa_idx24, ptr noundef nonnull align 1 dereferenceable(21) %.sroa.6, i64 21, i1 false)
  %.sroa.7.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx25, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bh, %i.av
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm7objcopy4wasm7SectionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i19

.lr.ph.i.i.i.i.i.i19:                             ; preds = %_ZNKSt6vectorIN4llvm7objcopy4wasm7SectionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i19
  %.012.i.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.i19 ], [ %i.bs, %_ZNKSt6vectorIN4llvm7objcopy4wasm7SectionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i19 ], [ %i.bh, %_ZNKSt6vectorIN4llvm7objcopy4wasm7SectionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i.i.i, i64 40, i1 false), !alias.scope !66
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i20 = icmp eq ptr %i.bu, %i.av
  br i1 %.not.i.i.i.i.i.i20, label %_ZNSt6vectorIN4llvm7objcopy4wasm7SectionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i19, !llvm.loop !70

_ZNSt6vectorIN4llvm7objcopy4wasm7SectionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i19, %_ZNKSt6vectorIN4llvm7objcopy4wasm7SectionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bs, %_ZNKSt6vectorIN4llvm7objcopy4wasm7SectionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.bv, %.lr.ph.i.i.i.i.i.i19 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4llvm7objcopy4wasm7SectionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4llvm7objcopy4wasm7SectionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bk) #12
  br label %_ZNSt6vectorIN4llvm7objcopy4wasm7SectionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN4llvm7objcopy4wasm7SectionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIN4llvm7objcopy4wasm7SectionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.bs, ptr %i.l, align 8, !tbaa !44
  store ptr %i.bw, ptr %i.aq, align 8, !tbaa !45
  %i.bx = getelementptr inbounds nuw [40 x i8], ptr %i.bs, i64 %i.bq
  store ptr %i.bx, ptr %i.w, align 8, !tbaa !46
  br label %_ZNSt6vectorIN4llvm7objcopy4wasm7SectionESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN4llvm7objcopy4wasm7SectionESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.c, %_ZNSt6vectorIN4llvm7objcopy4wasm7SectionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.by = phi ptr [ %i.bg, %bb.c ], [ %i.bw, %_ZNSt6vectorIN4llvm7objcopy4wasm7SectionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -40
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !72  ; 2 uses
  %i.cb = add i8 %i.ca, -1
  %or.cond = icmp ult i8 %i.cb, 13
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt6vectorIN4llvm7objcopy4wasm7SectionESaIS3_EE9push_backEOS3_.exit
  %i.cc = zext nneg i8 %i.ca to i32
  %i.cd = call { ptr, i64 } @_ZN4llvm4wasm19sectionTypeToStringEj(i32 noundef %i.cc) #10 ; 2 uses
  %i.ce = extractvalue { ptr, i64 } %i.cd, 0
  %i.cf = extractvalue { ptr, i64 } %i.cd, 1
  %i.cg = getelementptr inbounds i8, ptr %i.by, i64 -32
  store ptr %i.ce, ptr %i.cg, align 8, !tbaa !18
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.by, i64 -24
  store i64 %i.cf, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt6vectorIN4llvm7objcopy4wasm7SectionESaIS3_EE9push_backEOS3_.exit
  %i.ch = load ptr, ptr %i.ao, align 8, !tbaa !74 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !23
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 136
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(48) %i.ch, ptr noundef nonnull align 8 dereferenceable(16) %2) #10, !inline_history !77
  %i.cl = load ptr, ptr %i.ao, align 8, !tbaa !74
  %i.cm = icmp ne ptr %i.cl, %i.an
  %lhsv.i.i.i.i = load i64, ptr %2, align 8
  %.not.i.i.i.i17 = icmp ne i64 %lhsv.i.i.i.i, %i.am
  %.not2.i = select i1 %i.cm, i1 true, i1 %.not.i.i.i.i17
  br i1 %.not2.i, label %bb.b, label %_ZNSt10unique_ptrIN4llvm7objcopy4wasm6ObjectESt14default_deleteIS3_EED2Ev.exit
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(20) ptr @_ZNK4llvm6object14WasmObjectFile9getHeaderEv(ptr noundef nonnull align 8 dereferenceable(708)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef nonnull align 8 dereferenceable(74) ptr @_ZNK4llvm6object14WasmObjectFile14getWasmSectionERKNS0_10SectionRefE(ptr noundef nonnull align 8 dereferenceable(708), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare { ptr, i64 } @_ZN4llvm4wasm19sectionTypeToStringEj(i32 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { builtin nounwind allocsize(0) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
end_hunk_0
