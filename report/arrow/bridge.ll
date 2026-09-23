Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/bridge?download=true
inline.NumInlined: 8866
inline.NumDeleted: 3382
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_113ArrayImporter8DoImportEv:bb.a
  %36 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %37 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %38 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %39 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %40 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %41 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %42 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %43 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %44 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %45 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %46 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %47 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %48 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %49 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %50 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %51 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %52 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %53 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %54 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %55 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %56 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %57 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %58 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %59 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %60 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %61 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %62 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %63 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %64 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %65 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %66 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %67 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %68 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %69 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %70 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %71 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %72 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %73 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %74 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %75 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %76 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %77 = alloca %"class.std::shared_ptr.154", align 8 ; 10 uses
  %78 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %79 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %80 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %81 = alloca %"class.arrow::Status", align 8    ; 54 uses
  %82 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %83 = alloca %"struct.arrow::(anonymous namespace)::ArrayImporter", align 8 ; 11 uses
  %84 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %85 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !554, !nonnull !148, !align !503
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !179  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !232
  %i.h = icmp eq i32 %i.g, 31
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !179
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.041 = phi ptr [ %i.j, %bb.b ], [ %i.e, %bb.a ] ; 31 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.041, i64 48 ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !370    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !312  ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.041, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !352
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !353
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 4                   ; 2 uses
  %.not = icmp eq i64 %i.n, %i.u
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i64 %i.u, ptr %i.b, align 8, !tbaa !277
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #31
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !134
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %79, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #31, !noalias !2905
  invoke void @_ZN5arrow8internal12JoinToStringIJRA23_KcRlRA21_S2_mRA11_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESF_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %78, ptr noundef nonnull align 1 dereferenceable(23) @.str.110, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 1 dereferenceable(21) @.str.111, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(11) @.str.112, ptr noundef nonnull align 8 dereferenceable(32) %79)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %78)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.y = load ptr, ptr %78, align 8, !tbaa !136, !noalias !2905 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %78, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !95, !noalias !2905
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.f:                                             ; preds = %.noexc
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %78, align 8, !tbaa !136, !noalias !2905 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %78, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i: ; preds = %bb.f
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !95, !noalias !2905
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #31, !noalias !2905
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #31, !noalias !2905
  %i.aj = load ptr, ptr %79, align 8, !tbaa !136  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %79, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !95
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %.critedge50

bb.g:                                             ; preds = %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ao, %bb.g ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i ]
  %i.ap = load ptr, ptr %79, align 8, !tbaa !136  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %79, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %.body
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !95
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %common.resume

bb.h:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %i.av = icmp ugt i64 %i.n, 76861433640456465
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #41
  unreachable

bb.j:                                             ; preds = %bb.h
  %.val.i = load ptr, ptr %i.au, align 8, !tbaa !373
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 6 uses
  %.val8.i = load ptr, ptr %i.aw, align 8, !tbaa !375
  %i.ax = ptrtoint ptr %.val8.i to i64
  %i.ay = ptrtoint ptr %.val.i to i64             ; 2 uses
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = sdiv exact i64 %i.az, 120
  %i.bb = icmp ult i64 %i.ba, %i.n
  br i1 %i.bb, label %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE7reserveEm.exit

_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %.val10.i = load ptr, ptr %i.bc, align 8, !tbaa !374
  %i.bd = ptrtoint ptr %.val10.i to i64
  %i.be = sub i64 %i.bd, %i.ay
  %i.bf = mul nuw nsw i64 %i.n, 120
  %i.bg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #38 ; 4 uses
  %i.bh = load ptr, ptr %i.au, align 8, !tbaa !373 ; 3 uses
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !374 ; 2 uses
  %.not1.i.i.i.i = icmp eq ptr %i.bh, %i.bi
  br i1 %.not1.i.i.i.i, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.03.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i ], [ %i.bg, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE11_M_allocateEm.exit.i ] ; 8 uses
  %.092.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i ], [ %i.bh, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE11_M_allocateEm.exit.i ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2907)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(113) %.03.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(113) %.092.i.i.i.i, i64 24, i1 false), !alias.scope !2908
  %i.bj = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i, i64 24 ; 2 uses
  %i.bl = load <2 x ptr>, ptr %i.bk, align 8, !tbaa !272, !alias.scope !2907, !noalias !2906
  store <2 x ptr> %i.bl, ptr %i.bj, align 8, !tbaa !272, !alias.scope !2906, !noalias !2907
  %i.bm = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i, i64 40
  %i.bo = load <2 x ptr>, ptr %i.bn, align 8, !tbaa !272, !alias.scope !2907, !noalias !2906
  store <2 x ptr> %i.bo, ptr %i.bm, align 8, !tbaa !272, !alias.scope !2906, !noalias !2907
  store <4 x ptr> splat (ptr null), ptr %i.bk, align 8, !tbaa !272, !alias.scope !2907, !noalias !2906
  %i.bp = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 56
  %i.bq = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i, i64 56 ; 2 uses
  %i.br = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !555, !alias.scope !2907, !noalias !2906
  store <2 x ptr> %i.br, ptr %i.bp, align 8, !tbaa !555, !alias.scope !2906, !noalias !2907
  %86 = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 72
  %87 = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i, i64 72
  %i.bs = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i, i64 80 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i, i64 88
  %88 = load ptr, ptr %87, align 8, !tbaa !375, !alias.scope !2907, !noalias !2906
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i8 0, i64 24, i1 false), !alias.scope !2907, !noalias !2906
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !236, !alias.scope !2907, !noalias !2906
  %89 = load <2 x ptr>, ptr %i.bt, align 8, !tbaa !272, !alias.scope !2907, !noalias !2906
  %90 = insertelement <4 x ptr> poison, ptr %88, i64 0
  %91 = insertelement <4 x ptr> %90, ptr %i.bu, i64 1
  %92 = shufflevector <2 x ptr> %89, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %93 = shufflevector <4 x ptr> %91, <4 x ptr> %92, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %93, ptr %86, align 8, !tbaa !272, !alias.scope !2906, !noalias !2907
  %i.bv = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 104
  %i.bw = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i, i64 104
  %94 = load ptr, ptr %i.bw, align 8, !tbaa !181, !alias.scope !2907, !noalias !2906
  store ptr %94, ptr %i.bv, align 8, !tbaa !181, !alias.scope !2906, !noalias !2907
  store <4 x ptr> splat (ptr null), ptr %i.bs, align 8, !tbaa !272, !alias.scope !2907, !noalias !2906
  %i.bx = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 112
  %i.by = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i, i64 112
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !367, !alias.scope !2907, !noalias !2906
  store i8 %i.bz, ptr %i.bx, align 8, !tbaa !367, !alias.scope !2906, !noalias !2907
  tail call fastcc void @_ZSt10destroy_atIN5arrow12_GLOBAL__N_113ArrayImporterEEvPT_(ptr noundef nonnull %.092.i.i.i.i), !noalias !2906
  %i.ca = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i, i64 120 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 120
  %.not.i.i.i.i = icmp eq ptr %i.ca, %i.bi
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exitthread-pre-split.i, label %.lr.ph.i.i.i.i, !llvm.loop !2807

_ZNSt6vectorIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i = load ptr, ptr %i.au, align 8, !tbaa !373
  br label %_ZNSt6vectorIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i

_ZNSt6vectorIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %_ZNSt6vectorIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exitthread-pre-split.i, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE11_M_allocateEm.exit.i
  %i.cc = phi ptr [ %.pr.i, %_ZNSt6vectorIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exitthread-pre-split.i ], [ %i.bh, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.not.i11.i = icmp eq ptr %i.cc, null
  br i1 %.not.i11.i, label %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.cd = load ptr, ptr %i.aw, align 8, !tbaa !375
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cc to i64
  %i.cg = sub i64 %i.ce, %i.cf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.cg) #33
  br label %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.k, %_ZNSt6vectorIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.bg, ptr %i.au, align 8, !tbaa !373
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.be
  store ptr %i.ch, ptr %i.bc, align 8, !tbaa !374
  %i.ci = getelementptr inbounds nuw [120 x i8], ptr %i.bg, i64 %i.n
  store ptr %i.ci, ptr %i.aw, align 8, !tbaa !375
  %.pre = load ptr, ptr %1, align 8, !tbaa !370   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %.pre124 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !312
  br label %_ZNSt6vectorIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE7reserveEm.exit: ; preds = %bb.j, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %i.cj = phi i64 [ %i.n, %bb.j ], [ %.pre124, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE13_M_deallocateEPS2_m.exit.i ]
  %i.ck = phi ptr [ %i.l, %bb.j ], [ %.pre, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE13_M_deallocateEPS2_m.exit.i ]
  %.not42120 = icmp sgt i64 %i.cj, 0
  br i1 %.not42120, label %.lr.ph, label %.critedge48

.lr.ph:                                           ; preds = %_ZNSt6vectorIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE7reserveEm.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  br label %bb.m

bb.l:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.cm = add nuw nsw i64 %.033121, 1             ; 2 uses
  %i.cn = load ptr, ptr %1, align 8, !tbaa !370   ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !312
  %.not42 = icmp slt i64 %i.cm, %i.cp
  br i1 %.not42, label %bb.m, label %.critedge48, !llvm.loop !2808

bb.m:                                             ; preds = %.lr.ph, %bb.l
  %.033121 = phi i64 [ 0, %.lr.ph ], [ %i.cm, %bb.l ] ; 3 uses
  %i.cq = load ptr, ptr %i.k, align 8, !tbaa !353
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %.033121
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !351
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 56 ; 2 uses
  %i.cu = load ptr, ptr %i.cl, align 8, !tbaa !374 ; 5 uses
  %i.cv = load ptr, ptr %i.aw, align 8, !tbaa !375
  %.not.i = icmp eq ptr %i.cu, %i.cv
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call fastcc void @_ZN5arrow12_GLOBAL__N_113ArrayImporterC2ERKSt10shared_ptrINS_8DataTypeEE(ptr noundef nonnull align 8 dereferenceable(113) %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %i.ct)
  %i.cw = load ptr, ptr %i.cl, align 8, !tbaa !374 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 120
  store ptr %i.cx, ptr %i.cl, align 8, !tbaa !374
  br label %_ZN5arrow6StatusD2Ev.exit

bb.o:                                             ; preds = %bb.m
  %.val.i.i = load ptr, ptr %i.au, align 8, !tbaa !373 ; 5 uses
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = ptrtoint ptr %.val.i.i to i64           ; 2 uses
  %i.da = sub i64 %i.cy, %i.cz                    ; 3 uses
  %i.db = icmp eq i64 %i.da, 9223372036854775800
  br i1 %i.db, label %bb.p, label %_ZNKSt6vectorIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #41
  unreachable

_ZNKSt6vectorIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %i.dc = sdiv exact i64 %i.da, 120               ; 3 uses
  %i.dd = icmp eq ptr %i.cu, %.val.i.i            ; 2 uses
  %.sroa.speculated.i.i.i = select i1 %i.dd, i64 1, i64 %i.dc
  %i.de = add nsw i64 %.sroa.speculated.i.i.i, %i.dc ; 2 uses
  %i.df = icmp ult i64 %i.de, %i.dc
  %i.dg = call i64 @llvm.umin.i64(i64 %i.de, i64 76861433640456465)
  %i.dh = select i1 %i.df, i64 76861433640456465, i64 %i.dg ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dh, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.di = mul nuw nsw i64 %i.dh, 120              ; 2 uses
  %i.dj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.di) #38 ; 6 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.da
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_113ArrayImporterC2ERKSt10shared_ptrINS_8DataTypeEE(ptr noundef nonnull align 8 dereferenceable(113) %i.dk, ptr noundef nonnull align 8 dereferenceable(16) %i.ct)
          to label %_ZNSt16allocator_traitsISaIN5arrow12_GLOBAL__N_113ArrayImporterEEE9constructIS2_JRKSt10shared_ptrINS0_8DataTypeEEEEEvRS3_PT_DpOT0_.exit.i.i unwind label %bb.s

_ZNSt16allocator_traitsISaIN5arrow12_GLOBAL__N_113ArrayImporterEEE9constructIS2_JRKSt10shared_ptrINS0_8DataTypeEEEEEvRS3_PT_DpOT0_.exit.i.i: ; preds = %_ZNKSt6vectorIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  br i1 %i.dd, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt16allocator_traitsISaIN5arrow12_GLOBAL__N_113ArrayImporterEEE9constructIS2_JRKSt10shared_ptrINS0_8DataTypeEEEEEvRS3_PT_DpOT0_.exit.i.i, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.ed, %.lr.ph.i.i.i.i.i ], [ %i.dj, %_ZNSt16allocator_traitsISaIN5arrow12_GLOBAL__N_113ArrayImporterEEE9constructIS2_JRKSt10shared_ptrINS0_8DataTypeEEEEEvRS3_PT_DpOT0_.exit.i.i ] ; 8 uses
  %.092.i.i.i.i.i = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i ], [ %.val.i.i, %_ZNSt16allocator_traitsISaIN5arrow12_GLOBAL__N_113ArrayImporterEEE9constructIS2_JRKSt10shared_ptrINS0_8DataTypeEEEEEvRS3_PT_DpOT0_.exit.i.i ] ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2909)
  call void @llvm.experimental.noalias.scope.decl(metadata !2910)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(113) %.03.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(113) %.092.i.i.i.i.i, i64 24, i1 false), !alias.scope !2911
  %i.dl = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 24
  %i.dm = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 24 ; 2 uses
  %i.dn = load <2 x ptr>, ptr %i.dm, align 8, !tbaa !272, !alias.scope !2910, !noalias !2909
  store <2 x ptr> %i.dn, ptr %i.dl, align 8, !tbaa !272, !alias.scope !2909, !noalias !2910
  %i.do = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 40
  %i.dp = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 40
  %i.dq = load <2 x ptr>, ptr %i.dp, align 8, !tbaa !272, !alias.scope !2910, !noalias !2909
  store <2 x ptr> %i.dq, ptr %i.do, align 8, !tbaa !272, !alias.scope !2909, !noalias !2910
  store <4 x ptr> splat (ptr null), ptr %i.dm, align 8, !tbaa !272, !alias.scope !2910, !noalias !2909
  %i.dr = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 56
  %i.ds = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 56 ; 2 uses
  %i.dt = load <2 x ptr>, ptr %i.ds, align 8, !tbaa !555, !alias.scope !2910, !noalias !2909
  store <2 x ptr> %i.dt, ptr %i.dr, align 8, !tbaa !555, !alias.scope !2909, !noalias !2910
  %95 = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 72
  %96 = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 72
  %i.du = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 80 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 88
  %97 = load ptr, ptr %96, align 8, !tbaa !375, !alias.scope !2910, !noalias !2909
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, i8 0, i64 24, i1 false), !alias.scope !2910, !noalias !2909
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !236, !alias.scope !2910, !noalias !2909
  %98 = load <2 x ptr>, ptr %i.dv, align 8, !tbaa !272, !alias.scope !2910, !noalias !2909
  %99 = insertelement <4 x ptr> poison, ptr %97, i64 0
  %100 = insertelement <4 x ptr> %99, ptr %i.dw, i64 1
  %101 = shufflevector <2 x ptr> %98, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %102 = shufflevector <4 x ptr> %100, <4 x ptr> %101, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %102, ptr %95, align 8, !tbaa !272, !alias.scope !2909, !noalias !2910
  %i.dx = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 104
  %i.dy = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 104
  %103 = load ptr, ptr %i.dy, align 8, !tbaa !181, !alias.scope !2910, !noalias !2909
  store ptr %103, ptr %i.dx, align 8, !tbaa !181, !alias.scope !2909, !noalias !2910
  store <4 x ptr> splat (ptr null), ptr %i.du, align 8, !tbaa !272, !alias.scope !2910, !noalias !2909
  %i.dz = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 112
  %i.ea = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 112
  %i.eb = load i8, ptr %i.ea, align 8, !tbaa !367, !alias.scope !2910, !noalias !2909
  store i8 %i.eb, ptr %i.dz, align 8, !tbaa !367, !alias.scope !2909, !noalias !2910
  call fastcc void @_ZSt10destroy_atIN5arrow12_GLOBAL__N_113ArrayImporterEEvPT_(ptr noundef nonnull %.092.i.i.i.i.i), !noalias !2909
  %i.ec = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 120 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 120 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ec, %i.cu
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2807

_ZNSt6vectorIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt16allocator_traitsISaIN5arrow12_GLOBAL__N_113ArrayImporterEEE9constructIS2_JRKSt10shared_ptrINS0_8DataTypeEEEEEvRS3_PT_DpOT0_.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dj, %_ZNSt16allocator_traitsISaIN5arrow12_GLOBAL__N_113ArrayImporterEEE9constructIS2_JRKSt10shared_ptrINS0_8DataTypeEEEEEvRS3_PT_DpOT0_.exit.i.i ], [ %i.ed, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 120
  %.not.i37.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i37.i.i, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE17_M_realloc_insertIJRKSt10shared_ptrINS0_8DataTypeEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36.i.i
  %i.ef = load ptr, ptr %i.aw, align 8, !tbaa !375
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = sub i64 %i.eg, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i, i64 noundef %i.eh) #33
  br label %_ZNSt6vectorIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE17_M_realloc_insertIJRKSt10shared_ptrINS0_8DataTypeEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

bb.r:                                             ; preds = %bb.s
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.t

bb.s:                                             ; preds = %_ZNKSt6vectorIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  %i.ek = extractvalue { ptr, i32 } %i.ej, 0
  %i.el = call ptr @__cxa_begin_catch(ptr %i.ek) #31 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef %i.di) #33
  invoke void @__cxa_rethrow() #41
          to label %bb.u unwind label %bb.r

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %bb.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %bb.aj, %bb.cg, %bb.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i ], [ %i.ei, %bb.r ], [ %i.go, %bb.aj ], [ %i.od, %bb.cg ], [ %i.qi, %bb.ct ], [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ], [ %eh.lpad-body108, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ], [ %eh.lpad-body80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ], [ %i.tm, %bb.dk ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.r
  %i.em = landingpad { ptr, i32 }
          catch ptr null
  %i.en = extractvalue { ptr, i32 } %i.em, 0
  call void @__clang_call_terminate(ptr %i.en) #37
  unreachable

bb.u:                                             ; preds = %bb.s
  unreachable

_ZNSt6vectorIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE17_M_realloc_insertIJRKSt10shared_ptrINS0_8DataTypeEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.q, %_ZNSt6vectorIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36.i.i
  store ptr %i.dj, ptr %i.au, align 8, !tbaa !373
  store ptr %i.ee, ptr %i.cl, align 8, !tbaa !374
  %i.eo = getelementptr inbounds nuw [120 x i8], ptr %i.dj, i64 %i.dh
  store ptr %i.eo, ptr %i.aw, align 8, !tbaa !375
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.n, %_ZNSt6vectorIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE17_M_realloc_insertIJRKSt10shared_ptrINS0_8DataTypeEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.ep = phi ptr [ %i.cw, %bb.n ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE17_M_realloc_insertIJRKSt10shared_ptrINS0_8DataTypeEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #31
  %i.eq = load ptr, ptr %1, align 8, !tbaa !370
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 48
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !314
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.033121
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !287
  call fastcc void @_ZN5arrow12_GLOBAL__N_113ArrayImporter11ImportChildEPKS1_P10ArrowArray(ptr dead_on_unwind noalias writable align 8 %80, ptr noundef nonnull align 8 dereferenceable(113) %i.ep, ptr noundef %1, ptr noundef %i.eu)
  %i.ev = load ptr, ptr %80, align 8, !tbaa !132  ; 2 uses
  store ptr %i.ev, ptr %0, align 8, !tbaa !132
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #31
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %bb.l, label %.critedge50

.critedge48:                                      ; preds = %bb.l, %_ZNSt6vectorIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE7reserveEm.exit
  %.val.i.i67 = phi ptr [ %i.ck, %_ZNSt6vectorIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EE7reserveEm.exit ], [ %i.cn, %bb.l ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !2912)
  %i.ex = getelementptr inbounds nuw i8, ptr %.041, i64 40 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !232, !noalias !2912
  switch i32 %i.ey, label %bb.dd [
    i32 0, label %bb.v
    i32 1, label %bb.al
    i32 3, label %bb.am
    i32 2, label %bb.an
    i32 5, label %bb.ao
    i32 4, label %bb.ap
    i32 7, label %bb.aq
    i32 6, label %bb.ar
    i32 9, label %bb.as
    i32 8, label %bb.at
    i32 10, label %bb.au
    i32 11, label %bb.av
    i32 12, label %bb.aw
    i32 13, label %bb.ax
    i32 39, label %bb.ay
    i32 14, label %bb.az
    i32 40, label %bb.ba
    i32 34, label %bb.bb
    i32 35, label %bb.bc
    i32 15, label %bb.bd
    i32 33, label %bb.be
    i32 16, label %bb.bf
    i32 17, label %bb.bg
    i32 18, label %bb.bh
    i32 19, label %bb.bi
    i32 20, label %bb.bj
    i32 37, label %bb.bk
    i32 21, label %bb.bl
    i32 22, label %bb.bm
    i32 43, label %bb.bn
    i32 44, label %bb.bo
    i32 23, label %bb.bp
    i32 24, label %bb.bq
    i32 25, label %bb.br
    i32 36, label %bb.bs
    i32 41, label %bb.bt
    i32 42, label %bb.bu
    i32 30, label %bb.bv
    i32 32, label %bb.bw
    i32 26, label %bb.bx
    i32 27, label %bb.by
    i32 28, label %bb.ch
    i32 29, label %bb.cu
    i32 38, label %bb.cv
    i32 31, label %bb.cz
  ]

bb.v:                                             ; preds = %.critedge48
  call void @llvm.experimental.noalias.scope.decl(metadata !2913)
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #31, !noalias !2914
  call fastcc void @_ZN5arrow12_GLOBAL__N_113ArrayImporter16CheckNumChildrenEl(ptr dead_on_unwind noalias nonnull writable align 8 %73, ptr noundef nonnull readonly align 8 dereferenceable(113) %1, i64 noundef 0), !noalias !2913
  %i.ez = load ptr, ptr %73, align 8, !tbaa !132, !noalias !2914 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #31, !noalias !2914
  %i.fa = icmp eq ptr %i.ez, null
  br i1 %i.fa, label %bb.w, label %_ZN5arrow6StatusD2Ev.exit71.thread

bb.w:                                             ; preds = %bb.v
  %i.fb = load ptr, ptr %1, align 8, !tbaa !370, !noalias !2914
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !310, !noalias !2913
  %i.fe = icmp eq i64 %i.fd, 1
  br i1 %i.fe, label %_ZN5arrow6StatusD2Ev.exit22.i.i, label %_ZN5arrow6StatusD2Ev.exit28.i.i

_ZN5arrow6StatusD2Ev.exit22.i.i:                  ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #31, !noalias !2914
  call fastcc void @_ZN5arrow12_GLOBAL__N_113ArrayImporter17AllocateArrayDataEv(ptr dead_on_unwind noalias writable align 8 %74, ptr noundef nonnull align 8 dereferenceable(113) %1), !noalias !2913
  %i.ff = load ptr, ptr %74, align 8, !tbaa !132, !noalias !2914 ; 3 uses
  store ptr %i.ff, ptr %81, align 8, !tbaa !132, !alias.scope !2914
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #31, !noalias !2914
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %bb.ak, label %_ZN5arrow6StatusD2Ev.exit71.thread

_ZN5arrow6StatusD2Ev.exit28.i.i:                  ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #31, !noalias !2914
  call fastcc void @_ZN5arrow12_GLOBAL__N_113ArrayImporter15CheckNumBuffersEl(ptr dead_on_unwind noalias writable align 8 %75, ptr noundef nonnull align 8 dereferenceable(113) %1, i64 noundef 0), !noalias !2913
  %i.fh = load ptr, ptr %75, align 8, !tbaa !132, !noalias !2914 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #31, !noalias !2914
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %_ZN5arrow6StatusD2Ev.exit34.i.i, label %_ZN5arrow6StatusD2Ev.exit71.thread

_ZN5arrow6StatusD2Ev.exit34.i.i:                  ; preds = %_ZN5arrow6StatusD2Ev.exit28.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #31, !noalias !2914
  call fastcc void @_ZN5arrow12_GLOBAL__N_113ArrayImporter17AllocateArrayDataEv(ptr dead_on_unwind noalias writable align 8 %76, ptr noundef nonnull align 8 dereferenceable(113) %1), !noalias !2913
  %i.fj = load ptr, ptr %76, align 8, !tbaa !132, !noalias !2914 ; 3 uses
  store ptr %i.fj, ptr %81, align 8, !tbaa !132, !alias.scope !2914
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #31, !noalias !2914
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %bb.x, label %_ZN5arrow6StatusD2Ev.exit71.thread

bb.x:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit34.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !191, !noalias !2914 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 40 ; 3 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !233, !noalias !2913 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #31, !noalias !2914
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %77, i8 0, i64 16, i1 false), !noalias !2914
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 48 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !219, !noalias !2913 ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 56
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !556, !noalias !2913
  %.not.i.i.i.i68 = icmp eq ptr %i.fq, %i.fs
  br i1 %.not.i.i.i.i68, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ft = icmp eq ptr %i.fo, %i.fq
  br i1 %i.ft, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %77, i64 8
  store i64 0, ptr %i.fq, align 8, !noalias !2913
  store ptr null, ptr %i.fv, align 8, !tbaa !181, !noalias !2914
  store ptr null, ptr %i.fu, align 8, !tbaa !181, !noalias !2913
  store ptr null, ptr %77, align 8, !tbaa !236, !noalias !2914
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store ptr %i.fw, ptr %i.fp, align 8, !tbaa !219, !noalias !2913
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
end_hunk_0
