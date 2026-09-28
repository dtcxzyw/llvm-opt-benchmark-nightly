Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InstrProfReader?download=true
inline.NumInlined: 9738
inline.NumDeleted: 4213
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN4llvm15InstrProfReader7successEv:._crit_edge.i.i
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !124
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !91
  store i8 0, ptr %i.a, align 8, !tbaa !93
  call void @llvm.experimental.noalias.scope.decl(metadata !821)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !123, !noalias !821
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %2) #26, !noalias !821
  store ptr null, ptr %0, align 8, !tbaa !96, !alias.scope !821
  %i.e = load ptr, ptr %2, align 8, !tbaa !92     ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.a
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.g = load i64, ptr %i.a, align 8, !tbaa !93
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

declare void @_ZNK4llvm9StringRef5splitERNS_15SmallVectorImplIS0_EES0_ib(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK4llvm9StringRef4trimES0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvm::StringRef", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !239
  %i.c = tail call noundef i64 @_ZNK4llvm9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2, i64 noundef 0) #26
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %i.b)
  %i.d = load i64, ptr %i.a, align 8, !tbaa !239  ; 2 uses
  %.sroa.speculated4.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %.sroa.speculated.i) ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !240
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.speculated4.i.i.i
  %i.g = sub i64 %i.d, %.sroa.speculated4.i.i.i   ; 2 uses
  store ptr %i.f, ptr %3, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.g, ptr %i.h, align 8
  %i.i = call noundef i64 @_ZNK4llvm9StringRef16find_last_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr %1, i64 %2, i64 noundef -1) #26
  %i.j = add i64 %i.i, 1
  %i.k = call i64 @llvm.usub.sat.i64(i64 %i.g, i64 %i.j)
  %i.l = load i64, ptr %i.h, align 8, !tbaa !239  ; 2 uses
  %i.m = sub i64 %i.l, %i.k
  %i.n = load ptr, ptr %3, align 8, !tbaa !240
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.l, i64 %i.m)
  %.fca.0.insert.i.i.i7 = insertvalue { ptr, i64 } poison, ptr %i.n, 0
  %.fca.1.insert.i.i.i8 = insertvalue { ptr, i64 } %.fca.0.insert.i.i.i7, i64 %.sroa.speculated.i.i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret { ptr, i64 } %.fca.1.insert.i.i.i8
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_19TemporalProfTraceTyELb0EE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !127  ; 2 uses
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = add nuw nsw i64 %i.c, 1                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !128
  %.not.i.i.not = icmp ult i32 %i.b, %i.f
  %.pre3 = load ptr, ptr %0, align 8, !tbaa !126  ; 4 uses
  br i1 %.not.i.i.not, label %_ZN4llvm23SmallVectorTemplateBaseINS_19TemporalProfTraceTyELb0EE28reserveForParamAndGetAddressERS1_m.exit, label %bb.b, !prof !256

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %.pre3, i64 %i.c
  %i.h = icmp uge ptr %1, %.pre3
  %i.i = icmp ult ptr %1, %i.g
  %spec.select.i.i.i.i = and i1 %i.h, %i.i
  br i1 %spec.select.i.i.i.i, label %bb.c, label %.critedge.i.i, !prof !257

bb.c:                                             ; preds = %bb.b
  %i.j = ptrtoint ptr %1 to i64
  %i.k = ptrtoint ptr %.pre3 to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_19TemporalProfTraceTyELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.d)
  %i.m = load ptr, ptr %0, align 8, !tbaa !126    ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 %i.l
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_19TemporalProfTraceTyELb0EE28reserveForParamAndGetAddressERS1_m.exit

.critedge.i.i:                                    ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_19TemporalProfTraceTyELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.d)
  %.pre = load ptr, ptr %0, align 8, !tbaa !126
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_19TemporalProfTraceTyELb0EE28reserveForParamAndGetAddressERS1_m.exit

_ZN4llvm23SmallVectorTemplateBaseINS_19TemporalProfTraceTyELb0EE28reserveForParamAndGetAddressERS1_m.exit: ; preds = %bb.a, %bb.c, %.critedge.i.i
  %i.o = phi ptr [ %.pre3, %bb.a ], [ %i.m, %bb.c ], [ %.pre, %.critedge.i.i ]
  %.016.i.i = phi ptr [ %1, %bb.a ], [ %i.n, %bb.c ], [ %1, %.critedge.i.i ] ; 4 uses
  %i.p = load i32, ptr %i.a, align 8, !tbaa !127
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.q ; 3 uses
  %i.s = load <2 x ptr>, ptr %.016.i.i, align 8, !tbaa !258
  store <2 x ptr> %i.s, ptr %i.r, align 8, !tbaa !258
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !259
  store ptr %i.v, ptr %i.t, align 8, !tbaa !259
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.016.i.i, i8 0, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !255
  store i64 %i.y, ptr %i.w, align 8, !tbaa !255
  %i.z = load i32, ptr %i.a, align 8, !tbaa !127
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.a, align 8, !tbaa !127
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm19TextInstrProfReader20readValueProfileDataERNS_15InstrProfRecordE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(188) %1, ptr noundef nonnull align 8 dereferenceable(112) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.llvm::MD5", align 4         ; 5 uses
  %7 = alloca %"struct.llvm::MD5::MD5Result", align 8 ; 4 uses
  %8 = alloca %"class.llvm::MD5", align 4         ; 5 uses
  %9 = alloca %"struct.llvm::MD5::MD5Result", align 8 ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %27 = alloca %"class.std::allocator", align 1   ; 3 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 5 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !243, !range !244, !noundef !245
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !911)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26, !noalias !911
  %i.n = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  store ptr %i.n, ptr %19, align 8, !tbaa !124, !noalias !911
  %i.o = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !91, !noalias !911
  store i8 0, ptr %i.n, align 8, !tbaa !93, !noalias !911
  call void @llvm.experimental.noalias.scope.decl(metadata !912)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.p, align 8, !tbaa !123, !noalias !913
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %19) #26, !noalias !913
  store ptr null, ptr %0, align 8, !tbaa !96, !alias.scope !913
  %i.r = load ptr, ptr %19, align 8, !tbaa !92, !noalias !911 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.n
  br i1 %i.s, label %_ZN4llvm15InstrProfReader7successEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.t = load i64, ptr %i.n, align 8, !tbaa !93, !noalias !911
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #27, !noalias !911
  br label %_ZN4llvm15InstrProfReader7successEv.exit

_ZN4llvm15InstrProfReader7successEv.exit:         ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26, !noalias !911
  br label %.thread215

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  %.sroa.0.0.copyload.i = load ptr, ptr %i.v, align 8, !tbaa !246
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 6 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !192
  %i.w = call noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(8) %i.i) #26
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load i64, ptr %i.i, align 8, !tbaa !248  ; 2 uses
  %.not.i = icmp ult i64 %i.x, 4294967296
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !914)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26, !noalias !914
  %i.y = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  store ptr %i.y, ptr %18, align 8, !tbaa !124, !noalias !914
  %i.z = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !91, !noalias !914
  store i8 0, ptr %i.y, align 8, !tbaa !93, !noalias !914
  call void @llvm.experimental.noalias.scope.decl(metadata !915)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.aa, align 8, !tbaa !123, !noalias !916
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %18) #26, !noalias !916
  store ptr null, ptr %0, align 8, !tbaa !96, !alias.scope !916
  %i.ac = load ptr, ptr %18, align 8, !tbaa !92, !noalias !914 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.y
  br i1 %i.ad, label %_ZN4llvm15InstrProfReader7successEv.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44: ; preds = %bb.e
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !93, !noalias !914
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #27, !noalias !914
  br label %_ZN4llvm15InstrProfReader7successEv.exit46

_ZN4llvm15InstrProfReader7successEv.exit46:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26, !noalias !914
  br label %.thread215

bb.f:                                             ; preds = %bb.d
  %i.ag = trunc nuw i64 %i.x to i32               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  %i.ah = add i32 %i.ag, -4
  %or.cond = icmp ult i32 %i.ah, -3
  br i1 %or.cond, label %._crit_edge.i.i, label %.lr.ph254

._crit_edge.i.i:                                  ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  %i.ai = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  store ptr %i.ai, ptr %20, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  store i64 32, ptr %i.h, align 8, !tbaa !192
  %i.aj = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0) #26 ; 2 uses
  store ptr %i.aj, ptr %20, align 8, !tbaa !92
  %i.ak = load i64, ptr %i.h, align 8, !tbaa !192 ; 3 uses
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.aj, ptr noundef nonnull align 1 dereferenceable(32) @.str.12, i64 32, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !91
  %i.am = load ptr, ptr %20, align 8, !tbaa !92
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  store i8 0, ptr %i.an, align 1, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !917)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 9, ptr %i.ao, align 8, !tbaa !123, !noalias !917
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %20) #26, !noalias !917
  %i.aq = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28, !noalias !918 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26, !noalias !918
  %i.ar = getelementptr inbounds nuw i8, ptr %17, i64 32
  store i8 4, ptr %i.ar, align 8, !tbaa !102, !noalias !918
  %i.as = getelementptr inbounds nuw i8, ptr %17, i64 33
  store i8 1, ptr %i.as, align 1, !tbaa !103, !noalias !918
  store ptr %20, ptr %17, align 8, !tbaa !93, !noalias !918
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm14InstrProfErrorE, i64 16), ptr %i.aq, align 8, !tbaa !86, !noalias !918
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i32 9, ptr %i.at, align 8, !tbaa !108, !noalias !918
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.au, ptr noundef nonnull align 8 dereferenceable(34) %17) #26, !noalias !918
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26, !noalias !918
  store ptr %i.aq, ptr %0, align 8, !tbaa !96, !alias.scope !917
  %i.av = load ptr, ptr %20, align 8, !tbaa !92   ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.ai
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.ax = load i64, ptr %i.ai, align 8, !tbaa !93
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %.thread215

.lr.ph254:                                        ; preds = %bb.f
  call void @_ZN4llvm13line_iterator7advanceEv(ptr noundef nonnull align 8 dereferenceable(64) %i.j) #26, !noalias !919
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 33
  %i.bg = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 33
  %i.bk = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 33
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph254, %.loopexit
  %.033253 = phi i32 [ 0, %.lr.ph254 ], [ %i.ic, %.loopexit ] ; 2 uses
  %i.bo = load i8, ptr %i.k, align 8, !tbaa !243, !range !244, !noundef !245
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.h, label %._crit_edge.i.i47

._crit_edge.i.i47:                                ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  %i.bq = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  store ptr %i.bq, ptr %21, align 8, !tbaa !124
  %i.br = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 0, ptr %i.br, align 8, !tbaa !91
  store i8 0, ptr %i.bq, align 8, !tbaa !93
  call void @llvm.experimental.noalias.scope.decl(metadata !920)
  store i32 8, ptr %i.bc, align 8, !tbaa !123, !noalias !920
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %21) #26, !noalias !920
  %i.bs = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28, !noalias !921 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26, !noalias !921
  %i.bt = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i8 4, ptr %i.bt, align 8, !tbaa !102, !noalias !921
  %i.bu = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 1, ptr %i.bu, align 1, !tbaa !103, !noalias !921
  store ptr %21, ptr %16, align 8, !tbaa !93, !noalias !921
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm14InstrProfErrorE, i64 16), ptr %i.bs, align 8, !tbaa !86, !noalias !921
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i32 8, ptr %i.bv, align 8, !tbaa !108, !noalias !921
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.bw, ptr noundef nonnull align 8 dereferenceable(34) %16) #26, !noalias !921
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26, !noalias !921
  store ptr %i.bs, ptr %0, align 8, !tbaa !96, !alias.scope !920
  %i.bx = load ptr, ptr %21, align 8, !tbaa !92   ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.bq
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %._crit_edge.i.i47
  %i.bz = load i64, ptr %i.bq, align 8, !tbaa !93
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %._crit_edge.i.i47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br label %.thread215

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i52 = load ptr, ptr %i.v, align 8, !tbaa !246
  %.sroa.2.0.copyload.i54 = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  %i.cb = call noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr %.sroa.0.0.copyload.i52, i64 %.sroa.2.0.copyload.i54, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(8) %i.g) #26
  br i1 %i.cb, label %._crit_edge.i.i61, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cc = load i64, ptr %i.g, align 8, !tbaa !248 ; 3 uses
  %.not.i58 = icmp ult i64 %i.cc, 4294967296
  br i1 %.not.i58, label %bb.j, label %._crit_edge.i.i61

._crit_edge.i.i61:                                ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  %i.cd = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
  store ptr %i.cd, ptr %22, align 8, !tbaa !124
  %i.ce = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 0, ptr %i.ce, align 8, !tbaa !91
  store i8 0, ptr %i.cd, align 8, !tbaa !93
  call void @llvm.experimental.noalias.scope.decl(metadata !922)
  store i32 9, ptr %i.bc, align 8, !tbaa !123, !noalias !922
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %22) #26, !noalias !922
  %i.cf = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28, !noalias !923 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26, !noalias !923
  %i.cg = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i8 4, ptr %i.cg, align 8, !tbaa !102, !noalias !923
  %i.ch = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 1, ptr %i.ch, align 1, !tbaa !103, !noalias !923
  store ptr %22, ptr %15, align 8, !tbaa !93, !noalias !923
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm14InstrProfErrorE, i64 16), ptr %i.cf, align 8, !tbaa !86, !noalias !923
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i32 9, ptr %i.ci, align 8, !tbaa !108, !noalias !923
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.cj, ptr noundef nonnull align 8 dereferenceable(34) %15) #26, !noalias !923
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26, !noalias !923
  store ptr %i.cf, ptr %0, align 8, !tbaa !96, !alias.scope !922
  %i.ck = load ptr, ptr %22, align 8, !tbaa !92   ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.cd
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %._crit_edge.i.i61
  %i.cm = load i64, ptr %i.cd, align 8, !tbaa !93
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %._crit_edge.i.i61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  br label %.thread215

bb.j:                                             ; preds = %bb.i
  %i.co = trunc nuw i64 %i.cc to i32              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  call void @_ZN4llvm13line_iterator7advanceEv(ptr noundef nonnull align 8 dereferenceable(64) %i.j) #26, !noalias !924
  %i.cp = icmp samesign ugt i64 %i.cc, 2
  br i1 %i.cp, label %._crit_edge.i.i66, label %bb.k

._crit_edge.i.i66:                                ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  %i.cq = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  store ptr %i.cq, ptr %23, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  store i64 21, ptr %i.f, align 8, !tbaa !192
  %i.cr = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0) #26 ; 2 uses
  store ptr %i.cr, ptr %23, align 8, !tbaa !92
  %i.cs = load i64, ptr %i.f, align 8, !tbaa !192 ; 3 uses
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.cr, ptr noundef nonnull align 1 dereferenceable(21) @.str.13, i64 21, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !91
  %i.cu = load ptr, ptr %23, align 8, !tbaa !92
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cs
  store i8 0, ptr %i.cv, align 1, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !925)
  store i32 9, ptr %i.bc, align 8, !tbaa !123, !noalias !925
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %23) #26, !noalias !925
  %i.cw = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28, !noalias !926 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26, !noalias !926
  %i.cx = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i8 4, ptr %i.cx, align 8, !tbaa !102, !noalias !926
  %i.cy = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 1, ptr %i.cy, align 1, !tbaa !103, !noalias !926
  store ptr %23, ptr %14, align 8, !tbaa !93, !noalias !926
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm14InstrProfErrorE, i64 16), ptr %i.cw, align 8, !tbaa !86, !noalias !926
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i32 9, ptr %i.cz, align 8, !tbaa !108, !noalias !926
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.da, ptr noundef nonnull align 8 dereferenceable(34) %14) #26, !noalias !926
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26, !noalias !926
  store ptr %i.cw, ptr %0, align 8, !tbaa !96, !alias.scope !925
  %i.db = load ptr, ptr %23, align 8, !tbaa !92   ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.cq
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %._crit_edge.i.i66
  %i.dd = load i64, ptr %i.cq, align 8, !tbaa !93
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %._crit_edge.i.i66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  br label %.thread215

bb.k:                                             ; preds = %bb.j
  %i.df = load i8, ptr %i.k, align 8, !tbaa !243, !range !244, !noundef !245
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.l, label %._crit_edge.i.i71

._crit_edge.i.i71:                                ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  %i.dh = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  store ptr %i.dh, ptr %24, align 8, !tbaa !124
  %i.di = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 0, ptr %i.di, align 8, !tbaa !91
  store i8 0, ptr %i.dh, align 8, !tbaa !93
  call void @llvm.experimental.noalias.scope.decl(metadata !927)
  store i32 8, ptr %i.bc, align 8, !tbaa !123, !noalias !927
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %24) #26, !noalias !927
  %i.dj = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28, !noalias !928 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26, !noalias !928
  %i.dk = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i8 4, ptr %i.dk, align 8, !tbaa !102, !noalias !928
  %i.dl = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 1, ptr %i.dl, align 1, !tbaa !103, !noalias !928
  store ptr %24, ptr %13, align 8, !tbaa !93, !noalias !928
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm14InstrProfErrorE, i64 16), ptr %i.dj, align 8, !tbaa !86, !noalias !928
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i32 8, ptr %i.dm, align 8, !tbaa !108, !noalias !928
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.dn, ptr noundef nonnull align 8 dereferenceable(34) %13) #26, !noalias !928
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26, !noalias !928
  store ptr %i.dj, ptr %0, align 8, !tbaa !96, !alias.scope !927
  %i.do = load ptr, ptr %24, align 8, !tbaa !92   ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.dh
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

end_hunk_0
begin_hunk_1_@_ZN4llvm19TextInstrProfReader20readValueProfileDataERNS_15InstrProfRecordE:bb.a
_ZN4llvm5ErrorD2Ev.exit123:                       ; preds = %_ZN4llvm15InstrProfSymtab16isExternalSymbolERKNS_9StringRefE.exit122.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @_ZN4llvm3MD5C1Ev(ptr noundef nonnull align 4 dereferenceable(152) %6) #26
  call void @_ZN4llvm3MD56updateENS_9StringRefE(ptr noundef nonnull align 4 dereferenceable(152) %6, ptr %.sroa.0153.0, i64 %.sroa.12.0) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @_ZN4llvm3MD55finalERNS0_9MD5ResultE(ptr noundef nonnull align 4 dereferenceable(152) %6, ptr noundef nonnull align 1 dereferenceable(16) %7) #26
  %.0.copyload.i.i.i.i.i.i.i.i124 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.ab

bb.aa:                                            ; preds = %_ZNK4llvm9StringRef6rsplitEc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.go = call noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr %.sroa.0153.0, i64 %.sroa.12.0, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #26
  br i1 %i.go, label %._crit_edge.i.i128, label %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit

_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit:  ; preds = %bb.aa
  %i.gp = load i64, ptr %i.b, align 8, !tbaa !248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.ab

._crit_edge.i.i128:                               ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #26
  store ptr %i.bk, ptr %30, align 8, !tbaa !124
  store i64 0, ptr %i.bl, align 8, !tbaa !91
  store i8 0, ptr %i.bk, align 8, !tbaa !93
  call void @llvm.experimental.noalias.scope.decl(metadata !939)
  store i32 9, ptr %i.bc, align 8, !tbaa !123, !noalias !939
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %30) #26, !noalias !939
  %i.gq = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28, !noalias !940 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !940
  store i8 4, ptr %i.bm, align 8, !tbaa !102, !noalias !940
  store i8 1, ptr %i.bn, align 1, !tbaa !103, !noalias !940
  store ptr %30, ptr %5, align 8, !tbaa !93, !noalias !940
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm14InstrProfErrorE, i64 16), ptr %i.gq, align 8, !tbaa !86, !noalias !940
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  store i32 9, ptr %i.gr, align 8, !tbaa !108, !noalias !940
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.gs, ptr noundef nonnull align 8 dereferenceable(34) %5) #26, !noalias !940
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !940
  store ptr %i.gq, ptr %0, align 8, !tbaa !96, !alias.scope !939
  %i.gt = load ptr, ptr %30, align 8, !tbaa !92   ; 2 uses
  %i.gu = icmp eq ptr %i.gt, %i.bk
  br i1 %i.gu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %._crit_edge.i.i128
  %i.gv = load i64, ptr %i.bk, align 8, !tbaa !93
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %._crit_edge.i.i128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  br label %.critedge43.thread

bb.ab:                                            ; preds = %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit, %_ZN4llvm15InstrProfSymtab16isExternalSymbolERKNS_9StringRefE.exit122, %_ZN4llvm15InstrProfSymtab16isExternalSymbolERKNS_9StringRefE.exit, %_ZN4llvm5ErrorD2Ev.exit123, %_ZN4llvm5ErrorD2Ev.exit
  %.0190 = phi i64 [ %i.gp, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit ], [ %.0.copyload.i.i.i.i.i.i.i.i124, %_ZN4llvm5ErrorD2Ev.exit123 ], [ %.0.copyload.i.i.i.i.i.i.i.i, %_ZN4llvm5ErrorD2Ev.exit ], [ 0, %_ZN4llvm15InstrProfSymtab16isExternalSymbolERKNS_9StringRefE.exit ], [ 0, %_ZN4llvm15InstrProfSymtab16isExternalSymbolERKNS_9StringRefE.exit122 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.gx = call noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr %.sroa.20.0, i64 %.sroa.23.0, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #26
  br i1 %i.gx, label %._crit_edge.i.i137, label %.critedge

._crit_edge.i.i137:                               ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #26
  store ptr %i.bg, ptr %31, align 8, !tbaa !124
  store i64 0, ptr %i.bh, align 8, !tbaa !91
  store i8 0, ptr %i.bg, align 8, !tbaa !93
  call void @llvm.experimental.noalias.scope.decl(metadata !941)
  store i32 9, ptr %i.bc, align 8, !tbaa !123, !noalias !941
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %31) #26, !noalias !941
  %i.gy = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28, !noalias !942 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !942
  store i8 4, ptr %i.bi, align 8, !tbaa !102, !noalias !942
  store i8 1, ptr %i.bj, align 1, !tbaa !103, !noalias !942
  store ptr %31, ptr %4, align 8, !tbaa !93, !noalias !942
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm14InstrProfErrorE, i64 16), ptr %i.gy, align 8, !tbaa !86, !noalias !942
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store i32 9, ptr %i.gz, align 8, !tbaa !108, !noalias !942
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.ha, ptr noundef nonnull align 8 dereferenceable(34) %4) #26, !noalias !942
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !942
  store ptr %i.gy, ptr %0, align 8, !tbaa !96, !alias.scope !941
  %i.hb = load ptr, ptr %31, align 8, !tbaa !92   ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.bg
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %._crit_edge.i.i137
  %i.hd = load i64, ptr %i.bg, align 8, !tbaa !93
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.he) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %._crit_edge.i.i137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  br label %.critedge43.thread

.critedge:                                        ; preds = %bb.ab
  %i.hf = load i64, ptr %i.a, align 8, !tbaa !248 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not.i.i142 = icmp eq ptr %.sroa.7.0245, %.sroa.12166.0246
  br i1 %.not.i.i142, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.critedge
  store i64 %.0190, ptr %.sroa.7.0245, align 8, !tbaa !192
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7.0245, i64 8
  store i64 %i.hf, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !192
  br label %_ZNSt6vectorI18InstrProfValueDataSaIS0_EE9push_backEOS0_.exit

bb.ad:                                            ; preds = %.critedge
  %i.hg = ptrtoint ptr %.sroa.12166.0246 to i64
  %i.hh = ptrtoint ptr %.sroa.0161.0244 to i64
  %i.hi = sub i64 %i.hg, %i.hh                    ; 6 uses
  %i.hj = icmp eq i64 %i.hi, 9223372036854775792
  br i1 %i.hj, label %bb.ae, label %_ZNKSt6vectorI18InstrProfValueDataSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ae:                                            ; preds = %bb.ad
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #29
  unreachable

_ZNKSt6vectorI18InstrProfValueDataSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ad
  %i.hk = ashr exact i64 %i.hi, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.hk, i64 1)
  %i.hl = add nsw i64 %.sroa.speculated.i.i.i.i, %i.hk ; 2 uses
  %i.hm = icmp ult i64 %i.hl, %i.hk
  %i.hn = call i64 @llvm.umin.i64(i64 %i.hl, i64 576460752303423487)
  %i.ho = select i1 %i.hm, i64 576460752303423487, i64 %i.hn ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ho, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.hp = shl nuw nsw i64 %i.ho, 4
  %i.hq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hp) #28 ; 4 uses
  %i.hr = getelementptr inbounds i8, ptr %i.hq, i64 %i.hi ; 3 uses
  store i64 %.0190, ptr %i.hr, align 8, !tbaa !192
  %.sroa.5.0..sroa_idx148 = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store i64 %i.hf, ptr %.sroa.5.0..sroa_idx148, align 8, !tbaa !192
  %i.hs = icmp sgt i64 %i.hi, 0
  br i1 %i.hs, label %bb.af, label %_ZNSt6vectorI18InstrProfValueDataSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

bb.af:                                            ; preds = %_ZNKSt6vectorI18InstrProfValueDataSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hq, ptr align 8 %.sroa.0161.0244, i64 %i.hi, i1 false)
  br label %_ZNSt6vectorI18InstrProfValueDataSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

_ZNSt6vectorI18InstrProfValueDataSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i: ; preds = %bb.af, %_ZNKSt6vectorI18InstrProfValueDataSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0161.0244, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorI18InstrProfValueDataSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorI18InstrProfValueDataSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0161.0244, i64 noundef %i.hi) #27
  br label %_ZNSt6vectorI18InstrProfValueDataSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorI18InstrProfValueDataSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %bb.ag, %_ZNSt6vectorI18InstrProfValueDataSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  %i.ht = getelementptr inbounds nuw [16 x i8], ptr %i.hq, i64 %i.ho
  br label %_ZNSt6vectorI18InstrProfValueDataSaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorI18InstrProfValueDataSaIS0_EE9push_backEOS0_.exit: ; preds = %bb.ac, %_ZNSt6vectorI18InstrProfValueDataSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i
  %.sroa.0161.1 = phi ptr [ %i.hq, %_ZNSt6vectorI18InstrProfValueDataSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %.sroa.0161.0244, %bb.ac ] ; 2 uses
  %.pn = phi ptr [ %i.hr, %_ZNSt6vectorI18InstrProfValueDataSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %.sroa.7.0245, %bb.ac ]
  %.sroa.12166.1 = phi ptr [ %i.ht, %_ZNSt6vectorI18InstrProfValueDataSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %.sroa.12166.0246, %bb.ac ] ; 2 uses
  %.sroa.7.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 16 ; 2 uses
  call void @_ZN4llvm13line_iterator7advanceEv(ptr noundef nonnull align 8 dereferenceable(64) %i.j) #26, !noalias !943
  %i.hu = add nuw i32 %.035247, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.hu, %i.fb
  br i1 %exitcond.not, label %.critedge43.loopexit, label %.lr.ph, !llvm.loop !905

.critedge43.loopexit:                             ; preds = %_ZNSt6vectorI18InstrProfValueDataSaIS0_EE9push_backEOS0_.exit
  %i.hv = ptrtoint ptr %.sroa.7.1 to i64
  br label %.critedge43

.critedge43:                                      ; preds = %.critedge43.loopexit, %bb.u
  %.sroa.0161.0.lcssa = phi ptr [ null, %bb.u ], [ %.sroa.0161.1, %.critedge43.loopexit ] ; 3 uses
  %.sroa.7.0.lcssa = phi i64 [ 0, %bb.u ], [ %i.hv, %.critedge43.loopexit ]
  %.sroa.12166.0.lcssa = phi ptr [ null, %bb.u ], [ %.sroa.12166.1, %.critedge43.loopexit ]
  %i.hw = ptrtoint ptr %.sroa.0161.0.lcssa to i64
  %i.hx = sub i64 %.sroa.7.0.lcssa, %i.hw
  %i.hy = ashr exact i64 %i.hx, 4
  call void @_ZN4llvm15InstrProfRecord12addValueDataEjjNS_8ArrayRefI18InstrProfValueDataEEPNS_15InstrProfSymtabE(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %i.co, i32 noundef %.034252, ptr %.sroa.0161.0.lcssa, i64 %i.hy, ptr noundef null) #26
  br label %.critedge43.thread

.critedge43.thread:                               ; preds = %_ZN4llvm15InstrProfSymtab16isExternalSymbolERKNS_9StringRefE.exit122.thread, %_ZN4llvm15InstrProfSymtab16isExternalSymbolERKNS_9StringRefE.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %.critedge43
  %.sroa.0161.0242 = phi ptr [ %.sroa.0161.0.lcssa, %.critedge43 ], [ %.sroa.0161.0244, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115 ], [ %.sroa.0161.0244, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ], [ %.sroa.0161.0244, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ], [ %.sroa.0161.0244, %_ZN4llvm15InstrProfSymtab16isExternalSymbolERKNS_9StringRefE.exit.thread ], [ %.sroa.0161.0244, %_ZN4llvm15InstrProfSymtab16isExternalSymbolERKNS_9StringRefE.exit122.thread ] ; 3 uses
  %.sroa.12166.0231 = phi ptr [ %.sroa.12166.0.lcssa, %.critedge43 ], [ %.sroa.12166.0246, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115 ], [ %.sroa.12166.0246, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ], [ %.sroa.12166.0246, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ], [ %.sroa.12166.0246, %_ZN4llvm15InstrProfSymtab16isExternalSymbolERKNS_9StringRefE.exit.thread ], [ %.sroa.12166.0246, %_ZN4llvm15InstrProfSymtab16isExternalSymbolERKNS_9StringRefE.exit122.thread ]
  %.not40.not225 = phi i1 [ false, %.critedge43 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ], [ true, %_ZN4llvm15InstrProfSymtab16isExternalSymbolERKNS_9StringRefE.exit.thread ], [ true, %_ZN4llvm15InstrProfSymtab16isExternalSymbolERKNS_9StringRefE.exit122.thread ]
  %.not.i.i.i = icmp eq ptr %.sroa.0161.0242, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI18InstrProfValueDataSaIS0_EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %.critedge43.thread
  %i.hz = ptrtoint ptr %.sroa.12166.0231 to i64
  %i.ia = ptrtoint ptr %.sroa.0161.0242 to i64
  %i.ib = sub i64 %i.hz, %i.ia
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0161.0242, i64 noundef %i.ib) #27
  br label %_ZNSt6vectorI18InstrProfValueDataSaIS0_EED2Ev.exit

_ZNSt6vectorI18InstrProfValueDataSaIS0_EED2Ev.exit: ; preds = %bb.ah, %.critedge43.thread
  br i1 %.not40.not225, label %.thread215, label %bb.p

.loopexit:                                        ; preds = %bb.p, %bb.n
  %i.ic = add nuw i32 %.033253, 1                 ; 2 uses
  %exitcond267.not = icmp eq i32 %i.ic, %i.ag
  br i1 %exitcond267.not, label %._crit_edge, label %bb.g, !llvm.loop !906

._crit_edge:                                      ; preds = %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !944)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !944
  %i.id = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.id, ptr %3, align 8, !tbaa !124, !noalias !944
  %i.ie = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ie, align 8, !tbaa !91, !noalias !944
  store i8 0, ptr %i.id, align 8, !tbaa !93, !noalias !944
  call void @llvm.experimental.noalias.scope.decl(metadata !945)
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.if, align 8, !tbaa !123, !noalias !946
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ig, ptr noundef nonnull align 8 dereferenceable(32) %3) #26, !noalias !946
  store ptr null, ptr %0, align 8, !tbaa !96, !alias.scope !946
  %i.ih = load ptr, ptr %3, align 8, !tbaa !92, !noalias !944 ; 2 uses
  %i.ii = icmp eq ptr %i.ih, %i.id
  br i1 %i.ii, label %_ZN4llvm15InstrProfReader7successEv.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143: ; preds = %._crit_edge
  %i.ij = load i64, ptr %i.id, align 8, !tbaa !93, !noalias !944
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.ik) #27, !noalias !944
  br label %_ZN4llvm15InstrProfReader7successEv.exit145

_ZN4llvm15InstrProfReader7successEv.exit145:      ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !944
  br label %.thread215

.thread215:                                       ; preds = %_ZNSt6vectorI18InstrProfValueDataSaIS0_EED2Ev.exit, %_ZNSt6vectorI18InstrProfValueDataSaIS0_EED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %_ZN4llvm15InstrProfReader7successEv.exit46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN4llvm15InstrProfReader7successEv.exit145, %_ZN4llvm15InstrProfReader7successEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm15InstrProfRecord12reserveSitesEjj(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %_ZNSt6vectorIN4llvm24InstrProfValueSiteRecordESaIS1_EE7reserveEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %_ZN4llvm15InstrProfRecord28getOrCreateValueSitesForKindEj.exit

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #28, !noalias !953 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, i8 0, i64 72, i1 false), !noalias !953
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !264  ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !264
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm15InstrProfRecord28getOrCreateValueSitesForKindEj.exit, label %_ZNKSt14default_deleteISt5arrayISt6vectorIN4llvm24InstrProfValueSiteRecordESaIS3_EELm3EEEclEPS6_.exit.i.i.i.i.i

_ZNKSt14default_deleteISt5arrayISt6vectorIN4llvm24InstrProfValueSiteRecordESaIS3_EELm3EEEclEPS6_.exit.i.i.i.i.i: ; preds = %bb.c
  tail call void @_ZNSt5arrayISt6vectorIN4llvm24InstrProfValueSiteRecordESaIS2_EELm3EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.d) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 72) #27
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !264
  br label %_ZN4llvm15InstrProfRecord28getOrCreateValueSitesForKindEj.exit

_ZN4llvm15InstrProfRecord28getOrCreateValueSitesForKindEj.exit: ; preds = %bb.b, %bb.c, %_ZNKSt14default_deleteISt5arrayISt6vectorIN4llvm24InstrProfValueSiteRecordESaIS3_EELm3EEEclEPS6_.exit.i.i.i.i.i
  %i.e = phi ptr [ %i.c, %bb.c ], [ %.pre.i, %_ZNKSt14default_deleteISt5arrayISt6vectorIN4llvm24InstrProfValueSiteRecordESaIS3_EELm3EEEclEPS6_.exit.i.i.i.i.i ], [ %i.b, %bb.b ]
  %i.f = zext i32 %1 to i64
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.f ; 6 uses
  %i.h = zext i32 %2 to i64                       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !267
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !268
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m
  %i.o = sdiv exact i64 %i.n, 24
  %i.p = icmp ult i64 %i.o, %i.h
  br i1 %i.p, label %_ZNSt12_Vector_baseIN4llvm24InstrProfValueSiteRecordESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN4llvm24InstrProfValueSiteRecordESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIN4llvm24InstrProfValueSiteRecordESaIS1_EE11_M_allocateEm.exit.i: ; preds = %_ZN4llvm15InstrProfRecord28getOrCreateValueSitesForKindEj.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !269
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.s, %i.m
  %i.u = mul nuw nsw i64 %i.h, 24
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #28 ; 4 uses
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !268  ; 3 uses
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !269  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN4llvm24InstrProfValueSiteRecordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN4llvm24InstrProfValueSiteRecordESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %i.v, %_ZNSt12_Vector_baseIN4llvm24InstrProfValueSiteRecordESaIS1_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.0911.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i ], [ %i.w, %_ZNSt12_Vector_baseIN4llvm24InstrProfValueSiteRecordESaIS1_EE11_M_allocateEm.exit.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !954)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !955)
  %i.y = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !271, !alias.scope !955, !noalias !954
  store <2 x ptr> %i.y, ptr %.012.i.i.i.i, align 8, !tbaa !271, !alias.scope !954, !noalias !955
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !273, !alias.scope !955, !noalias !954
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !273, !alias.scope !954, !noalias !955
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !955, !noalias !954
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.ac, %i.x
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4llvm24InstrProfValueSiteRecordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split.i, label %.lr.ph.i.i.i.i, !llvm.loop !952

_ZNSt6vectorIN4llvm24InstrProfValueSiteRecordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i = load ptr, ptr %i.g, align 8, !tbaa !268
  br label %_ZNSt6vectorIN4llvm24InstrProfValueSiteRecordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i

_ZNSt6vectorIN4llvm24InstrProfValueSiteRecordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %_ZNSt6vectorIN4llvm24InstrProfValueSiteRecordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split.i, %_ZNSt12_Vector_baseIN4llvm24InstrProfValueSiteRecordESaIS1_EE11_M_allocateEm.exit.i
  %i.ae = phi ptr [ %.pr.i, %_ZNSt6vectorIN4llvm24InstrProfValueSiteRecordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split.i ], [ %i.w, %_ZNSt12_Vector_baseIN4llvm24InstrProfValueSiteRecordESaIS1_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.not.i8.i = icmp eq ptr %i.ae, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN4llvm24InstrProfValueSiteRecordESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4llvm24InstrProfValueSiteRecordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !267
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ai) #27
  br label %_ZNSt12_Vector_baseIN4llvm24InstrProfValueSiteRecordESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN4llvm24InstrProfValueSiteRecordESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorIN4llvm24InstrProfValueSiteRecordESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.v, ptr %i.g, align 8, !tbaa !268
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store ptr %i.aj, ptr %i.q, align 8, !tbaa !269
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.h
  store ptr %i.ak, ptr %i.i, align 8, !tbaa !267
  br label %_ZNSt6vectorIN4llvm24InstrProfValueSiteRecordESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN4llvm24InstrProfValueSiteRecordESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN4llvm24InstrProfValueSiteRecordESaIS1_EE13_M_deallocateEPS1_m.exit.i, %_ZN4llvm15InstrProfRecord28getOrCreateValueSitesForKindEj.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm15InstrProfSymtab13addVTableNameENS_9StringRefE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(369) %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat align 2 {
_ZN4llvm5ErrorD2Ev.exit:
  tail call void @_ZN4llvm15InstrProfSymtab13addSymbolNameENS_9StringRefE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(369) %1, ptr %2, i64 %3)
  %i.a = load ptr, ptr %0, align 8, !tbaa !96
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.a, label %bb.d

bb.a:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.c = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %2, i64 %3) #26
  %i.d = tail call noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.b, ptr %2, i64 %3, i32 noundef %i.c) #26 ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !274
  %i.f = zext i32 %i.d to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !276
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZN4llvm5ErrorD2Ev.exit8

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %3, 9
  %i.j = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.i, i64 noundef 8) #26 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %2, i64 %3, i1 false)
  br label %_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i

_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %3
  store i8 0, ptr %i.l, align 1, !tbaa !93
  store i64 %3, ptr %i.j, align 8, !tbaa !278
  store ptr %i.j, ptr %i.g, align 8, !tbaa !276
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !279
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 4, !tbaa !279
  %i.p = tail call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20) %i.b, i32 noundef %i.d) #26 ; 0 uses
  br label %_ZN4llvm5ErrorD2Ev.exit8

_ZN4llvm5ErrorD2Ev.exit8:                         ; preds = %_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !96
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZN4llvm5ErrorD2Ev.exit8
  ret void
}

declare void @_ZN4llvm15InstrProfRecord12addValueDataEjjNS_8ArrayRefI18InstrProfValueDataEEPNS_15InstrProfSymtabE(ptr noundef nonnull align 8 dereferenceable(112), i32 noundef, i32 noundef, ptr, i64, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm19TextInstrProfReader14readNextRecordERNS_20NamedInstrProfRecordE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(188) %1, ptr noundef nonnull align 8 dereferenceable(136) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
end_hunk_1
